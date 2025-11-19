uint64_t __MLEntityClassToTranslator(void)
{
  {
    operator new();
  }

  return __MLEntityClassToTranslator(void)::__MLEntityClassToTranslator;
}

void *std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>>>::__emplace_unique_key_args<mlcore::EntityClass *,std::piecewise_construct_t const&,std::tuple<mlcore::EntityClass * const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void sub_1A2622150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlcore::EntityClass *,MPMediaLibraryEntityTranslator * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

void sub_1A2622788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2622838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2622A84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 - 72);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v9 - 120);
  if (v13)
  {
    *(v9 - 112) = v13;
    operator delete(v13);
  }

  *(v9 - 120) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v9 - 120));
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = MEMORY[0x1E695DF30];
    v16 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v14 + 24))(v14, &a9);
    if (*(v9 - 97) >= 0)
    {
      v17 = v9 - 120;
    }

    else
    {
      v17 = *(v9 - 120);
    }

    v18 = [v16 stringWithUTF8String:v17];
    v19 = [v15 exceptionWithName:@"MediaPlatform" reason:v18 userInfo:0];
    v20 = v19;

    if (*(v9 - 97) < 0)
    {
      operator delete(*(v9 - 120));
    }

    objc_exception_throw(v19);
  }

  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = MEMORY[0x1E695DF30];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v21 + 16))(v21)];
    v24 = [v22 exceptionWithName:*MEMORY[0x1E695D920] reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t MPMediaLibraryGetProperty(ModelPropertyBase *a1, ModelPropertyBase *a2)
{
  v4 = mlcore::ItemPropertyAlbumPersistentID(a1);
  if (v4 == a1 && (v4 = mlcore::AlbumPropertyArtistPersistentID(v4), v4 == a2))
  {

    return mlcore::ItemPropertyAlbumArtistPersistentID(v4);
  }

  else
  {
    HasName = mlcore::ArtistPropertyHasName(v4);
    if (HasName == a2 && ((v8 = mlcore::ItemPropertyAlbumArtistPersistentID(HasName), v8 == a1) || (HasName = mlcore::AlbumPropertyArtistPersistentID(v8), HasName == a1)))
    {

      return MEMORY[0x1EEE1BB68]();
    }

    else
    {
      v6 = mlcore::ArtistPropertyOrder(HasName);
      if (v6 == a2 && ((v9 = mlcore::ItemPropertyAlbumArtistPersistentID(v6), v9 == a1) || mlcore::AlbumPropertyArtistPersistentID(v9) == a1))
      {

        return MEMORY[0x1EEE1BC60]();
      }

      else
      {
        return mlcore::GetForeignPropertyBase();
      }
    }
  }
}

void sub_1A2622F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v24 = *(v21 - 40);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a2 == 2)
  {
    v25 = __cxa_begin_catch(exception_object);
    v26 = MEMORY[0x1E695DF30];
    v27 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v25 + 24))(&__p, v25, &a9);
    if (a21 >= 0)
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

    if (a21 < 0)
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

void sub_1A2623150(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *std::map<unsigned long,std::shared_ptr<mlcore::Predicate>>::map[abi:ne200100](void *result, unint64_t *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (v6[4] < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = v4[4];
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 3;
      if (v3 == &a2[3 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void _MPMLPredicateForVariants(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v9 = v8[4];
      v10 = v8[5];
      v32 = v9;
      *&v33 = v10;
      v11 = v8[6];
      *(&v33 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v9 & ~a4) != 0)
      {
        std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v23, &v33);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != v7);
  }

  if ((a3 & ~a4) != 0)
  {
    v32 = 0;
    v33 = 0uLL;
    v15 = *a2;
    if (*a2 == v7)
    {
      v22 = 0;
      v21 = 0;
    }

    else
    {
      do
      {
        v16 = v15[4];
        v17 = v15[5];
        *&v30 = v16;
        *(&v30 + 1) = v17;
        v18 = v15[6];
        v31 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((v16 & ~a4) == 0)
        {
          std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v32, (&v30 + 8));
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v14 = *v20 == v15;
            v15 = v20;
          }

          while (!v14);
        }

        v15 = v20;
      }

      while (v20 != v7);
      v21 = v32;
      v22 = v33;
    }

    memset(v27, 0, sizeof(v27));
    std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v27, v21, v22, (v22 - v21) >> 4);
    mlcore::CreateAndPredicate();
    mlcore::CreateNotPredicate();
    v30 = v29;
    v29 = 0uLL;
    std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v23, &v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v34 = v27;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v34);
    *&v30 = &v32;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  memset(v26, 0, sizeof(v26));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v26, v23, v24, (v24 - v23) >> 4);
  mlcore::CreateAndPredicate();
  v32 = v26;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = &v23;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_1A2623578(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, void **a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  *(v28 - 88) = &a20;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v28 - 88));
  a27 = (v28 - 112);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a27);
  *(v28 - 112) = &a10;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v28 - 112));
  if (a2 == 2)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a10);
    (*(*v31 + 24))(v31, &a10);
    if (*(v28 - 89) >= 0)
    {
      v34 = v28 - 112;
    }

    else
    {
      v34 = *(v28 - 112);
    }

    v35 = [v33 stringWithUTF8String:v34];
    v36 = [v32 exceptionWithName:@"MediaPlatform" reason:v35 userInfo:0];
    v37 = v36;

    if (*(v28 - 89) < 0)
    {
      operator delete(*(v28 - 112));
    }

    objc_exception_throw(v36);
  }

  if (a2 == 1)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = MEMORY[0x1E695DF30];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v38 + 16))(v38)];
    v41 = [v39 exceptionWithName:*MEMORY[0x1E695D920] reason:v40 userInfo:0];
    v42 = v41;

    objc_exception_throw(v41);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::InPredicate<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A2623A1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v25 = *(v22 - 72);
  if (v25)
  {
    *(v22 - 64) = v25;
    operator delete(v25);
  }

  *(v22 - 72) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  if (a2 == 2)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = MEMORY[0x1E695DF30];
    v28 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v26 + 24))(v26, &a9);
    if (*(v22 - 49) >= 0)
    {
      v29 = v22 - 72;
    }

    else
    {
      v29 = *(v22 - 72);
    }

    v30 = [v28 stringWithUTF8String:v29];
    v31 = [v27 exceptionWithName:@"MediaPlatform" reason:v30 userInfo:0];
    v32 = v31;

    if (*(v22 - 49) < 0)
    {
      operator delete(*(v22 - 72));
    }

    objc_exception_throw(v31);
  }

  if (a2 == 1)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x1E695DF30];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v33 + 16))(v33)];
    v36 = [v34 exceptionWithName:*MEMORY[0x1E695D920] reason:v35 userInfo:0];
    v37 = v36;

    objc_exception_throw(v36);
  }

  _Unwind_Resume(a1);
}

void sub_1A2623E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, char a28, uint64_t a29)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  a27 = &a17;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a27);
  v33 = 24;
  while (1)
  {
    v34 = *(&a28 + v33);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v33 -= 16;
    if (v33 == -8)
    {

      if (a2 == 2)
      {
        v35 = __cxa_begin_catch(a1);
        v36 = MEMORY[0x1E695DF30];
        v37 = MEMORY[0x1E696AEC0];
        mediaplatform::FormatOptions::FormatOptions(&a28);
        (*(*v35 + 24))(&__p, v35, &a28);
        if (a14 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v39 = [v37 stringWithUTF8String:p_p];
        v40 = [v36 exceptionWithName:@"MediaPlatform" reason:v39 userInfo:0];
        v41 = v40;

        if (a14 < 0)
        {
          operator delete(__p);
        }

        objc_exception_throw(v40);
      }

      if (a2 == 1)
      {
        v42 = __cxa_begin_catch(a1);
        v43 = MEMORY[0x1E695DF30];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v42 + 16))(v42)];
        v45 = [v43 exceptionWithName:*MEMORY[0x1E695D920] reason:v44 userInfo:0];
        v46 = v45;

        objc_exception_throw(v45);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1A2624164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2624314(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v25 = *(v22 - 72);
  if (v25)
  {
    *(v22 - 64) = v25;
    operator delete(v25);
  }

  *(v22 - 72) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  if (a2 == 2)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = MEMORY[0x1E695DF30];
    v28 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v26 + 24))(v26, &a9);
    if (*(v22 - 49) >= 0)
    {
      v29 = v22 - 72;
    }

    else
    {
      v29 = *(v22 - 72);
    }

    v30 = [v28 stringWithUTF8String:v29];
    v31 = [v27 exceptionWithName:@"MediaPlatform" reason:v30 userInfo:0];
    v32 = v31;

    if (*(v22 - 49) < 0)
    {
      operator delete(*(v22 - 72));
    }

    objc_exception_throw(v31);
  }

  if (a2 == 1)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x1E695DF30];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v33 + 16))(v33)];
    v36 = [v34 exceptionWithName:*MEMORY[0x1E695D920] reason:v35 userInfo:0];
    v37 = v36;

    objc_exception_throw(v36);
  }

  _Unwind_Resume(a1);
}

void sub_1A2624AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, void **p_p, std::__shared_weak_count *a49)
{
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  p_p = &__p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (a2 == 2)
  {
    v53 = __cxa_begin_catch(a1);
    v54 = MEMORY[0x1E695DF30];
    v55 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&p_p);
    (*(*v53 + 24))(&__p, v53, &p_p);
    if (a45 >= 0)
    {
      v56 = &__p;
    }

    else
    {
      v56 = __p;
    }

    v57 = [v55 stringWithUTF8String:v56];
    v58 = [v54 exceptionWithName:@"MediaPlatform" reason:v57 userInfo:0];
    v59 = v58;

    if (a45 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v58);
  }

  if (a2 == 1)
  {
    v60 = __cxa_begin_catch(a1);
    v61 = MEMORY[0x1E695DF30];
    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v60 + 16))(v60)];
    v63 = [v61 exceptionWithName:*MEMORY[0x1E695D920] reason:v62 userInfo:0];
    v64 = v63;

    objc_exception_throw(v63);
  }

  _Unwind_Resume(a1);
}

void sub_1A2624F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v27 + 24))(&__p, v27, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v31 = [v29 stringWithUTF8String:p_p];
    v32 = [v28 exceptionWithName:@"MediaPlatform" reason:v31 userInfo:0];
    v33 = v32;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v32);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v34 + 16))(v34)];
    v37 = [v35 exceptionWithName:*MEMORY[0x1E695D920] reason:v36 userInfo:0];
    v38 = v37;

    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void sub_1A2625610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void **p_p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  v57 = *(v54 - 248);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  *(v54 - 256) = v54 - 240;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v54 - 256));
  *(v54 - 240) = &p_p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v54 - 240));
  p_p = &__p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  __p = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a2 == 2)
  {
    v58 = __cxa_begin_catch(a1);
    v59 = MEMORY[0x1E695DF30];
    v60 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v58 + 24))(&__p, v58, &a9);
    if (a53 >= 0)
    {
      v61 = &__p;
    }

    else
    {
      v61 = __p;
    }

    v62 = [v60 stringWithUTF8String:v61];
    v63 = [v59 exceptionWithName:@"MediaPlatform" reason:v62 userInfo:0];
    v64 = v63;

    if (a53 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v63);
  }

  if (a2 == 1)
  {
    v65 = __cxa_begin_catch(a1);
    v66 = MEMORY[0x1E695DF30];
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v65 + 16))(v65)];
    v68 = [v66 exceptionWithName:*MEMORY[0x1E695D920] reason:v67 userInfo:0];
    v69 = v68;

    objc_exception_throw(v68);
  }

  _Unwind_Resume(a1);
}

void sub_1A2625B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *(v30 - 112) = v29;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v30 - 112));
  *(v30 - 112) = &__p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v30 - 112));
  if (a2 == 2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x1E695DF30];
    v35 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v30 - 112));
    (*(*v33 + 24))(&__p, v33, v30 - 112);
    if (a29 >= 0)
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

    if (a29 < 0)
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

void sub_1A2626034(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 - 72);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v9 - 120);
  if (v13)
  {
    *(v9 - 112) = v13;
    operator delete(v13);
  }

  *(v9 - 120) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v9 - 120));
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = MEMORY[0x1E695DF30];
    v16 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v14 + 24))(v14, &a9);
    if (*(v9 - 97) >= 0)
    {
      v17 = v9 - 120;
    }

    else
    {
      v17 = *(v9 - 120);
    }

    v18 = [v16 stringWithUTF8String:v17];
    v19 = [v15 exceptionWithName:@"MediaPlatform" reason:v18 userInfo:0];
    v20 = v19;

    if (*(v9 - 97) < 0)
    {
      operator delete(*(v9 - 120));
    }

    objc_exception_throw(v19);
  }

  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = MEMORY[0x1E695DF30];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v21 + 16))(v21)];
    v24 = [v22 exceptionWithName:*MEMORY[0x1E695D920] reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1A2626458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, char *a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  a23 = &a16;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v28 = 24;
  while (1)
  {
    v29 = *(&a24 + v28);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v28 -= 16;
    if (v28 == -8)
    {
      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      if (a11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a11);
      }

      if (a2 == 2)
      {
        v30 = __cxa_begin_catch(a1);
        v31 = MEMORY[0x1E695DF30];
        v32 = MEMORY[0x1E696AEC0];
        mediaplatform::FormatOptions::FormatOptions(&a24);
        (*(*v30 + 24))(&__p, v30, &a24);
        if (a15 >= 0)
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

        if (a15 < 0)
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
  }
}

void sub_1A26267DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2626920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ExistsPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::Query>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B8E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::ComparisonPropertyPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A2627090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2627274(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 - 56);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(v9 - 64) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v9 - 64));
  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = MEMORY[0x1E695DF30];
    v15 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v13 + 24))(v13, &a9);
    if (*(v9 - 41) >= 0)
    {
      v16 = v9 - 64;
    }

    else
    {
      v16 = *(v9 - 64);
    }

    v17 = [v15 stringWithUTF8String:v16];
    v18 = [v14 exceptionWithName:@"MediaPlatform" reason:v17 userInfo:0];
    v19 = v18;

    if (*(v9 - 41) < 0)
    {
      operator delete(*(v9 - 64));
    }

    objc_exception_throw(v18);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = MEMORY[0x1E695DF30];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v20 + 16))(v20)];
    v23 = [v21 exceptionWithName:*MEMORY[0x1E695D920] reason:v22 userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  _Unwind_Resume(a1);
}

void sub_1A2627700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

id MPMediaLibraryPropertyCacheValueForProperty(ModelPropertyBase *a1, int8x8_t *a2)
{
  v4 = (*(*a1 + 80))(a1);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_86;
      }

      v11 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(&a2[21], a1);
      if (v11)
      {
        v12 = v11[3];
      }

      else
      {
        v12 = 0;
      }

      v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    }

    else
    {
      v27 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(&a2[16], a1);
      if (v27)
      {
        v28 = *(v27 + 6);
      }

      else
      {
        v28 = 0;
      }

      v29 = [MEMORY[0x1E696AD98] numberWithInt:v28];
    }

LABEL_79:
    v39 = v29;
    goto LABEL_80;
  }

  if (v4 == 2)
  {
    v13 = a2[12];
    v14 = 0.0;
    if (v13)
    {
      v15 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
      v16 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v15 >> 47) ^ v15);
      v17 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
      v18 = vcnt_s8(v13);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        v19 = v17;
        if (v17 >= *&v13)
        {
          v19 = v17 % *&v13;
        }
      }

      else
      {
        v19 = v17 & (*&v13 - 1);
      }

      v30 = *(*&a2[11] + 8 * v19);
      if (v30)
      {
        for (i = *v30; i; i = *i)
        {
          v32 = *(i + 1);
          if (v17 == v32)
          {
            if (*(i + 2) == a1)
            {
              v14 = i[3];
              break;
            }
          }

          else
          {
            if (v18.u32[0] > 1uLL)
            {
              if (v32 >= *&v13)
              {
                v32 %= *&v13;
              }
            }

            else
            {
              v32 &= *&v13 - 1;
            }

            if (v32 != v19)
            {
              break;
            }
          }
        }
      }
    }

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    goto LABEL_79;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      mediaplatform::Data::Data(v48);
      v5 = a2[2];
      if (v5)
      {
        v6 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
        v7 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v6 >> 47) ^ v6);
        v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
        v9 = vcnt_s8(v5);
        v9.i16[0] = vaddlv_u8(v9);
        if (v9.u32[0] > 1uLL)
        {
          v10 = v8;
          if (v8 >= *&v5)
          {
            v10 = v8 % *&v5;
          }
        }

        else
        {
          v10 = v8 & (*&v5 - 1);
        }

        v40 = *(*&a2[1] + 8 * v10);
        if (v40)
        {
          for (j = *v40; j; j = *j)
          {
            v42 = j[1];
            if (v8 == v42)
            {
              if (j[2] == a1)
              {
                mediaplatform::Data::Data();
                goto LABEL_77;
              }
            }

            else
            {
              if (v9.u32[0] > 1uLL)
              {
                if (v42 >= *&v5)
                {
                  v42 %= *&v5;
                }
              }

              else
              {
                v42 &= *&v5 - 1;
              }

              if (v42 != v10)
              {
                break;
              }
            }
          }
        }
      }

      mediaplatform::Data::Data();
LABEL_77:
      mediaplatform::Data::~Data(v48);
      v43 = MEMORY[0x1E695DEF0];
      v44 = mediaplatform::Data::bytes(__p);
      v39 = [v43 dataWithBytes:v44 length:mediaplatform::Data::length(__p)];
      mediaplatform::Data::~Data(__p);
      goto LABEL_80;
    }

LABEL_86:
    v46 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"unknown property type" userInfo:0];
    objc_exception_throw(v46);
  }

  v20 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(&v49, "");
  v21 = a2[7];
  if (v21)
  {
    v22 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
    v23 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v22 >> 47) ^ v22);
    v24 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
    v25 = vcnt_s8(v21);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v24;
      if (v24 >= *&v21)
      {
        v26 = v24 % *&v21;
      }
    }

    else
    {
      v26 = v24 & (*&v21 - 1);
    }

    v33 = *(*&a2[6] + 8 * v26);
    if (v33)
    {
      for (k = *v33; k; k = *k)
      {
        v35 = k[1];
        if (v24 == v35)
        {
          if (k[2] == a1)
          {
            if (*(k + 47) < 0)
            {
              std::string::__init_copy_ctor_external(__p, k[3], k[4]);
            }

            else
            {
              __p[0] = *(k + 1);
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (v25.u32[0] > 1uLL)
          {
            if (v35 >= *&v21)
            {
              v35 %= *&v21;
            }
          }

          else
          {
            v35 &= *&v21 - 1;
          }

          if (v35 != v26)
          {
            break;
          }
        }
      }
    }
  }

  __p[0] = v49;
  memset(&v49, 0, sizeof(v49));
LABEL_52:
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0].__r_.__value_.__r.__words[0];
  }

  v37 = [v20 stringWithUTF8String:{v36, *&__p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__r.__words[2]}];
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if ([v37 length])
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

LABEL_80:

  return v39;
}

void _MPMLInitPropertyMaps(void)
{
  v907 = *MEMORY[0x1E69E9840];
  v0 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [v0 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_38_43833];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v1 = __p[0];
  __p[0] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  [v0 setEntityQueryBlock:{&__block_literal_global_41_43834, __p[0]}];
  v2 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericSong" toModelClass:v2 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v2)];
  v3 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericAlbum" toModelClass:v3 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyPersistentID(v3)];
  v4 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericArtist" toModelClass:v4 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyArtistPersistentID(v4)];
  v5 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPlaylist" toModelClass:v5 transient:1 usingForeignPropertyBase:mlcore::PlaylistPropertyPersistentID(v5)];
  v6 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPlaylistEntry" toModelClass:v6 transient:1 usingForeignPropertyBase:mlcore::PlaylistItemPropertyPersistentID(v6)];
  v7 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVEpisode" toModelClass:v7 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v7)];
  v8 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVSeason" toModelClass:v8 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyPersistentID(v8)];
  v9 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVShow" toModelClass:v9 transient:1 usingForeignPropertyBase:mlcore::ItemArtistPropertyPersistentID(v9)];
  v10 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericMovie" toModelClass:v10 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v10)];
  v11 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPodcast" toModelClass:v11 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyPersistentID(v11)];
  v12 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPodcastEpisode" toModelClass:v12 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v12)];
  v13 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericComposer" toModelClass:v13 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyComposerPersistentID(v13)];
  v14 = objc_opt_class();
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericGenre" toModelClass:v14 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyGenrePersistentID(v14)];

  _MPMLInitPropertySongMap();
  v15 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v16 = mlcore::ItemPropertyPersistentID(v15);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v16;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v15 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_213_43836];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v17 = __p[0];
  __p[0] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v18 = mlcore::ItemPropertyLocation(v17);
  v19 = std::string::basic_string[abi:ne200100]<0>(__p, "location");
  v875[1] = v18;
  v20 = mlcore::ItemPropertyBaseLocationPath(v19);
  std::string::basic_string[abi:ne200100]<0>(v876, "baseLocationPath");
  v877 = v20;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetFilePath" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_217_43839];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v21 = v899[0];
  v899[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  for (i = 0; i != -16; i -= 8)
  {
    if (SHIBYTE(v876[i + 5]) < 0)
    {
      operator delete(*&v876[i]);
    }
  }

  v23 = [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetFileSize" toMLProperty:mlcore::ItemPropertyFileSize(v21)];
  HasStreamingAsset = mlcore::ItemPropertyHasStreamingAsset(v23);
  v25 = std::string::basic_string[abi:ne200100]<0>(__p, "hasStreamingAsset");
  v875[1] = HasStreamingAsset;
  v26 = mlcore::ItemPropertyLocation(v25);
  v27 = std::string::basic_string[abi:ne200100]<0>(v876, "location");
  v877 = v26;
  v28 = mlcore::ItemPropertyBaseLocationPath(v27);
  std::string::basic_string[abi:ne200100]<0>(v878, "baseLocationPath");
  v879 = v28;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 3);
  [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetPurchaseBundleFilePath" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_220];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v29 = v899[0];
  v899[0] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  for (j = 0; j != -96; j -= 32)
  {
    if (v878[j + 23] < 0)
    {
      operator delete(*&v878[j]);
    }
  }

  IsProtected = mlcore::ItemPropertyIsProtected(v29);
  std::string::basic_string[abi:ne200100]<0>(v899, "protected");
  v901 = IsProtected;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetProtectionType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_226];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v32 = __p[0];
  __p[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  HasLoFiStreamingAsset = mlcore::ItemPropertyHasLoFiStreamingAsset(v32);
  std::string::basic_string[abi:ne200100]<0>(v899, "hasLoFiStreamingAsset");
  v901 = HasLoFiStreamingAsset;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetQualityType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_229_43843];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v34 = __p[0];
  __p[0] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  HasNonPurgeableAsset = mlcore::ItemPropertyHasNonPurgeableAsset(v34);
  std::string::basic_string[abi:ne200100]<0>(v899, "hasNonPurgeableAsset");
  v901 = HasNonPurgeableAsset;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetNonPurgeable" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_235];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v36 = __p[0];
  __p[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v37 = [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetHLSKeyServerURL" toMLProperty:mlcore::ItemPropertyHLSKeyServerURL(v36)];
  v38 = [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetHLSKeyServerProtocol" toMLProperty:mlcore::ItemPropertyHLSKeyServerProtocol(v37)];
  v39 = [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetHLSKeyCertificateURL" toMLProperty:mlcore::ItemPropertyHLSKeyCertificateURL(v38)];
  v40 = mlcore::ItemPropertyHLSAssetTraits(v39);
  v41 = std::string::basic_string[abi:ne200100]<0>(__p, "hlsTraits");
  v875[1] = v40;
  IsMasteredForiTunes = mlcore::ItemPropertyIsMasteredForiTunes(v41);
  std::string::basic_string[abi:ne200100]<0>(v876, "masteredForiTunes");
  v877 = IsMasteredForiTunes;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v15 mapPropertyKey:@"MPModelPropertyFileAssetTraits" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_239];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v43 = v899[0];
  v899[0] = 0;
  if (v43)
  {
    operator delete(v43);
  }

  for (k = 0; k != -16; k -= 8)
  {
    if (SHIBYTE(v876[k + 5]) < 0)
    {
      operator delete(*&v876[k]);
    }
  }

  v45 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v46 = mlcore::ItemPropertyPersistentID(v45);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v46;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v45 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_241_43847];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v47 = __p[0];
  __p[0] = 0;
  if (v47)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v45 mapPropertyKey:@"MPModelPropertyHomeSharingAssetProtectedContentSupportStorageFileURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_243_43848];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v48 = __p[0];
  __p[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }

  v49 = mlcore::ItemPropertyLocation(v48);
  v50 = std::string::basic_string[abi:ne200100]<0>(__p, "location");
  v875[1] = v49;
  v51 = mlcore::ItemPropertyHomeSharingID(v50);
  std::string::basic_string[abi:ne200100]<0>(v876, "homeSharingID");
  v877 = v51;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v45 mapPropertyKey:@"MPModelPropertyHomeSharingAssetURL" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_246];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v52 = v899[0];
  v899[0] = 0;
  if (v52)
  {
    operator delete(v52);
  }

  for (m = 0; m != -16; m -= 8)
  {
    if (SHIBYTE(v876[m + 5]) < 0)
    {
      operator delete(*&v876[m]);
    }
  }

  [(mlcore *)v45 mapPropertyKey:@"MPModelPropertyHomeSharingAssetAvailable" toMLProperty:mlcore::ItemPropertyHomeSharingAssetAvailable(v52)];

  v54 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v55 = mlcore::ItemPropertyPersistentID(v54);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v55;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v54 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_254_43850];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v56 = __p[0];
  __p[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v57 = [(mlcore *)v54 mapPropertyKey:@"MPModelPropertyStoreAssetAccountIdentifier" toMLProperty:mlcore::ItemPropertyStoreAccountID(v56)];
  v58 = [(mlcore *)v54 mapPropertyKey:@"MPModelPropertyStoreAssetShouldReportPlayEvents" toMLProperty:mlcore::ItemPropertyStoreNeedsReporting(v57)];
  v59 = [(mlcore *)v54 mapPropertyKey:@"MPModelPropertyStoreAssetRedownloadable" toMLProperty:mlcore::ItemPropertyIsStoreRedownloadable(v58)];
  matched = mlcore::ItemPropertyMatchRedownloadParameters(v59);
  v61 = std::string::basic_string[abi:ne200100]<0>(__p, "matchRedownloadParams");
  v875[1] = matched;
  v62 = mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(v61);
  v63 = std::string::basic_string[abi:ne200100]<0>(v876, "purchaseHistoryRedownloadParams");
  v877 = v62;
  v64 = mlcore::ItemPropertyStoreCloudID(v63);
  v65 = std::string::basic_string[abi:ne200100]<0>(v878, "storeCloudID");
  v879 = v64;
  v66 = mlcore::ItemPropertyPurchaseHistoryID(v65);
  std::string::basic_string[abi:ne200100]<0>(v880, "purchaseHistoryID");
  v881 = v66;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 4);
  [(mlcore *)v54 mapPropertyKey:@"MPModelPropertyStoreAssetRedownloadParameters" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_260];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v67 = v899[0];
  v899[0] = 0;
  if (v67)
  {
    operator delete(v67);
  }

  for (n = 0; n != -128; n -= 32)
  {
    if (v880[n + 23] < 0)
    {
      operator delete(*&v880[n]);
    }
  }

  v69 = MPModelPropertyStoreAssetNeedsUserUpload;
  v70 = mlcore::ItemPropertyCloudAssetAvailable(v67);
  v71 = std::string::basic_string[abi:ne200100]<0>(__p, "cloudAssetAvailable");
  v875[1] = v70;
  v72 = mlcore::ItemPropertyStoreCloudStatus(v71);
  v73 = std::string::basic_string[abi:ne200100]<0>(v876, "cloudStatus");
  v877 = v72;
  v74 = mlcore::ItemPropertyStoreCloudID(v73);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeCloudID");
  v879 = v74;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 3);
  [(mlcore *)v54 mapPropertyKey:v69 withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_264];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v75 = v899[0];
  v899[0] = 0;
  if (v75)
  {
    operator delete(v75);
  }

  for (ii = 0; ii != -96; ii -= 32)
  {
    if (v878[ii + 23] < 0)
    {
      operator delete(*&v878[ii]);
    }
  }

  v77 = mlcore::ItemPropertyStorePlaybackEndpointType(v75);
  v78 = std::string::basic_string[abi:ne200100]<0>(__p, "endpointType");
  v875[1] = v77;
  v79 = mlcore::ItemPropertyMatchRedownloadParameters(v78);
  v80 = std::string::basic_string[abi:ne200100]<0>(v876, "matchRedownloadParams");
  v877 = v79;
  v81 = mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(v80);
  v82 = std::string::basic_string[abi:ne200100]<0>(v878, "purchaseHistoryRedownloadParams");
  v879 = v81;
  v83 = mlcore::ItemPropertyStoreCloudID(v82);
  v84 = std::string::basic_string[abi:ne200100]<0>(v880, "storeCloudID");
  v881 = v83;
  v85 = mlcore::ItemPropertyStoreID(v84);
  v86 = std::string::basic_string[abi:ne200100]<0>(v882, "storeAdamID");
  v883 = v85;
  v87 = mlcore::ItemPropertyCloudAssetAvailable(v86);
  std::string::basic_string[abi:ne200100]<0>(v884, "cloudAssetAvailable");
  v885 = v87;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 6);
  [(mlcore *)v54 mapPropertyKey:@"MPModelPropertyStoreAssetEndpointType" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_268];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v88 = v899[0];
  v899[0] = 0;
  if (v88)
  {
    operator delete(v88);
  }

  for (jj = 0; jj != -192; jj -= 32)
  {
    if (v884[jj + 23] < 0)
    {
      operator delete(*&v884[jj]);
    }
  }

  v90 = mlcore::ItemPropertyStorePlaybackEndpointType(v88);
  v91 = std::string::basic_string[abi:ne200100]<0>(__p, "endpointType");
  v875[1] = v90;
  IsArtistUploadedContent = mlcore::ItemPropertyIsArtistUploadedContent(v91);
  v93 = std::string::basic_string[abi:ne200100]<0>(v876, "isAUC");
  v877 = IsArtistUploadedContent;
  v94 = mlcore::ItemPropertyEpisodeType(v93);
  std::string::basic_string[abi:ne200100]<0>(v878, "episodeType");
  v879 = v94;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 3);
  [(mlcore *)v54 mapPropertyKey:@"MPModelPropertyStoreAssetSubscriptionRequired" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_272];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v95 = v899[0];
  v899[0] = 0;
  if (v95)
  {
    operator delete(v95);
  }

  for (kk = 0; kk != -96; kk -= 32)
  {
    if (v878[kk + 23] < 0)
    {
      operator delete(*&v878[kk]);
    }
  }

  v97 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v98 = mlcore::ItemPropertyPersistentID(v97);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v98;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v97 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_274];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v99 = __p[0];
  __p[0] = 0;
  if (v99)
  {
    operator delete(v99);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v100 = [(mlcore *)v97 mapPropertyKey:@"MPModelPropertyLyricsText" toMLProperty:mlcore::ItemPropertyLyrics(v99)];
  v101 = [(mlcore *)v97 mapPropertyKey:@"MPModelPropertyLyricsHasStoreLyrics" toMLProperty:mlcore::ItemPropertyStoreLyricsAvailable(v100)];
  v102 = [(mlcore *)v97 mapPropertyKey:@"MPModelPropertyLyricsHasTimeSyncedLyrics" toMLProperty:mlcore::ItemPropertyTimeSyncedLyricsAvailable(v101)];
  [(mlcore *)v97 mapPropertyKey:@"MPModelPropertyLyricsHasLibraryLyrics" toMLProperty:mlcore::ItemPropertyLibraryLyricsAvailable(v102)];

  v103 = MEMORY[0x1A58E1180]();
  v104 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v103];
  v105 = mlcore::AlbumPropertyPersistentID(v104);
  v106 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v105;
  v107 = mlcore::AlbumPropertyStoreID(v106);
  v108 = std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v107;
  v109 = mlcore::AlbumPropertySyncID(v108);
  v110 = std::string::basic_string[abi:ne200100]<0>(v878, "syncID");
  v879 = v109;
  v111 = mlcore::AlbumPropertyCloudLibraryID(v110);
  std::string::basic_string[abi:ne200100]<0>(v880, "albumCloudLibraryID");
  v881 = v111;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 4);
  [(mlcore *)v104 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_277];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v112 = v899[0];
  v899[0] = 0;
  if (v112)
  {
    operator delete(v112);
  }

  for (mm = 0; mm != -128; mm -= 32)
  {
    if (v880[mm + 23] < 0)
    {
      operator delete(*&v880[mm]);
    }
  }

  [(mlcore *)v104 setEntityQueryBlock:&__block_literal_global_279];
  v114 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumIsCompilation" toMLProperty:mlcore::AlbumPropertyAllCompilations([(mlcore *)v104 setAllowedItemPredicatesBlock:&__block_literal_global_291])];
  v115 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumIsClassical" toMLProperty:mlcore::AlbumPropertyContainsClassicalWork(v114)];
  v116 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumCopyrightText" toMLProperty:mlcore::AlbumPropertyCopyright(v115)];
  v117 = mlcore::AlbumPropertyTitle(v116);
  std::string::basic_string[abi:ne200100]<0>(v896, "title");
  v898 = v117;
  v118 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  HasTitle = mlcore::AlbumPropertyHasTitle(v118);
  v120 = std::string::basic_string[abi:ne200100]<0>(__p, "hasTitle");
  v875[1] = HasTitle;
  v121 = mlcore::AlbumPropertyOrder(v120);
  std::string::basic_string[abi:ne200100]<0>(v876, "titleOrder");
  v877 = v121;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumTitle" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_294 filterTransformer:&__block_literal_global_296_43867 valueTransformer:&__block_literal_global_301];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v122 = v904[0];
  v904[0] = 0;
  if (v122)
  {
    operator delete(v122);
  }

  for (nn = 0; nn != -16; nn -= 8)
  {
    if (SHIBYTE(v876[nn + 5]) < 0)
    {
      operator delete(*&v876[nn]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v124 = v899[0];
  v899[0] = 0;
  if (v124)
  {
    operator delete(v124);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  IsPreOrder = mlcore::AlbumPropertyIsPreOrder(v124);
  std::string::basic_string[abi:ne200100]<0>(v899, "isPreOrder");
  v901 = IsPreOrder;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumPreorder" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_304];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v126 = __p[0];
  __p[0] = 0;
  if (v126)
  {
    operator delete(v126);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_306];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v127 = __p[0];
  __p[0] = 0;
  if (v127)
  {
    operator delete(v127);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumShortEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_308];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v128 = __p[0];
  __p[0] = 0;
  if (v128)
  {
    operator delete(v128);
  }

  v129 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v128);
  v130 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v129;
  v131 = mlcore::AlbumPropertyRepresentativeItemMediaType(v130);
  v132 = std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v131;
  v133 = mlcore::AlbumPropertyRepresentativeItemAvailableArtworkToken(v132);
  v134 = std::string::basic_string[abi:ne200100]<0>(v878, "availableArtworkToken");
  v879 = v133;
  v135 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkToken(v134);
  v136 = std::string::basic_string[abi:ne200100]<0>(v880, "fetchableArtworkToken");
  v881 = v135;
  v137 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkSourceType(v136);
  std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkSourceType");
  v883 = v137;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 5);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_310_43874, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v138 = v899[0];
  v899[0] = 0;
  if (v138)
  {
    operator delete(v138);
  }

  for (i1 = 0; i1 != -160; i1 -= 32)
  {
    if (v882[i1 + 23] < 0)
    {
      operator delete(*&v882[i1]);
    }
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumStaticTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_312];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v140 = __p[0];
  __p[0] = 0;
  if (v140)
  {
    operator delete(v140);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_314];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v141 = __p[0];
  __p[0] = 0;
  if (v141)
  {
    operator delete(v141);
  }

  v142 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumTrackCount" toMLProperty:mlcore::AlbumPropertyItemCount(v141)];
  v143 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumMaximumItemTrackNumber" toMLProperty:mlcore::AlbumPropertyMaximumItemTrackNumber(v142)];
  v144 = mlcore::AlbumPropertyDateReleased(v143);
  std::string::basic_string[abi:ne200100]<0>(v899, "dateReleased");
  v901 = v144;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumReleaseDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_317];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v145 = __p[0];
  __p[0] = 0;
  if (v145)
  {
    operator delete(v145);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v146 = mlcore::AlbumPropertyLatestItemDateAdded(v145);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryAdded");
  v901 = v146;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_319];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v147 = __p[0];
  __p[0] = 0;
  if (v147)
  {
    operator delete(v147);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v148 = mlcore::AlbumPropertyDateDownloaded(v147);
  std::string::basic_string[abi:ne200100]<0>(v899, "downloadedDate");
  v901 = v148;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumDownloadedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_321];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v149 = __p[0];
  __p[0] = 0;
  if (v149)
  {
    operator delete(v149);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v150 = mlcore::AlbumPropertyVolumeNormalization(v149);
  std::string::basic_string[abi:ne200100]<0>(v899, "volumeNormalization");
  v901 = v150;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumVolumeNormalization" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_323];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v151 = __p[0];
  __p[0] = 0;
  if (v151)
  {
    operator delete(v151);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v152 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumYear" toMLProperty:mlcore::AlbumPropertyYear(v151)];
  v153 = mlcore::AlbumPropertyLibraryTracksItemCount(v152);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryTracksItemCount");
  v901 = v153;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_326];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v154 = __p[0];
  __p[0] = 0;
  if (v154)
  {
    operator delete(v154);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v155 = mlcore::AlbumPropertyExplicitLibraryTracksItemCount(v154);
  std::string::basic_string[abi:ne200100]<0>(v899, "explicitLibraryTracksItemCount");
  v901 = v155;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumHasExplicitContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_329];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v156 = __p[0];
  __p[0] = 0;
  if (v156)
  {
    operator delete(v156);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v157 = mlcore::AlbumPropertyCleanLibraryTracksItemCount(v156);
  std::string::basic_string[abi:ne200100]<0>(v899, "cleanLibraryTracksItemCount");
  v901 = v157;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumCleanSongCount" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_332_43882];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v158 = __p[0];
  __p[0] = 0;
  if (v158)
  {
    operator delete(v158);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddEligible" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_334];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v159 = __p[0];
  __p[0] = 0;
  if (v159)
  {
    operator delete(v159);
  }

  v160 = mlcore::AlbumPropertyDatePlayedLocal(v159);
  std::string::basic_string[abi:ne200100]<0>(v899, "datePlayedLocal");
  v901 = v160;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_337];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v161 = __p[0];
  __p[0] = 0;
  if (v161)
  {
    operator delete(v161);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v162 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v161);
  IsExplicit = mlcore::ItemPropertyIsExplicit(v162);
  Property = MPMediaLibraryGetProperty(v162, IsExplicit);
  std::string::basic_string[abi:ne200100]<0>(v899, "representativeItemExplicit");
  v901 = Property;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumHasCleanContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_340];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v165 = __p[0];
  __p[0] = 0;
  if (v165)
  {
    operator delete(v165);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v166 = mlcore::AlbumPropertyKeepLocal(v165);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocal");
  v901 = v166;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_342_43886];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v167 = __p[0];
  __p[0] = 0;
  if (v167)
  {
    operator delete(v167);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v168 = mlcore::AlbumPropertyKeepLocalStatus(v167);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalStatus");
  v901 = v168;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_344];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v169 = __p[0];
  __p[0] = 0;
  if (v169)
  {
    operator delete(v169);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v170 = mlcore::AlbumPropertyKeepLocalStatusReason(v169);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalStatusReason");
  v901 = v170;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_346];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v171 = __p[0];
  __p[0] = 0;
  if (v171)
  {
    operator delete(v171);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v172 = mlcore::AlbumPropertyKeepLocalConstraints(v171);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalConstraints");
  v901 = v172;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_348];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v173 = __p[0];
  __p[0] = 0;
  if (v173)
  {
    operator delete(v173);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v174 = mlcore::AlbumPropertyAppData(v173);
  std::string::basic_string[abi:ne200100]<0>(v899, "appData");
  v901 = v174;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumSongPopularity" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_351];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v175 = __p[0];
  __p[0] = 0;
  if (v175)
  {
    operator delete(v175);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v176 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v175);
  v177 = mlcore::ItemPropertyHLSAudioCapability(v176);
  v178 = MPMediaLibraryGetProperty(v176, v177);
  v179 = std::string::basic_string[abi:ne200100]<0>(__p, "hlsAudioCapability");
  v875[1] = v178;
  v180 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v179);
  v181 = mlcore::ItemPropertyIsMasteredForiTunes(v180);
  v182 = MPMediaLibraryGetProperty(v180, v181);
  std::string::basic_string[abi:ne200100]<0>(v876, "masteredForiTunes");
  v877 = v182;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumTraits" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_356, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v183 = v899[0];
  v899[0] = 0;
  if (v183)
  {
    operator delete(v183);
  }

  for (i2 = 0; i2 != -16; i2 -= 8)
  {
    if (SHIBYTE(v876[i2 + 5]) < 0)
    {
      operator delete(*&v876[i2]);
    }
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumVersionHash" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_358];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v185 = __p[0];
  __p[0] = 0;
  if (v185)
  {
    operator delete(v185);
  }

  v186 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumClassicalExperienceAvailable" toMLProperty:mlcore::AlbumPropertyClassicalExperienceAvailable(v185)];
  v187 = mlcore::AlbumPropertyLikedState(v186);
  std::string::basic_string[abi:ne200100]<0>(v899, "likedState");
  v901 = v187;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_360_43893];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v188 = __p[0];
  __p[0] = 0;
  if (v188)
  {
    operator delete(v188);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v189 = mlcore::AlbumPropertyLikedState(v188);
  std::string::basic_string[abi:ne200100]<0>(v899, "likedState");
  v901 = v189;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_362_43894];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v190 = __p[0];
  __p[0] = 0;
  if (v190)
  {
    operator delete(v190);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v191 = mlcore::AlbumPropertyLikedStateChangedDate(v190);
  std::string::basic_string[abi:ne200100]<0>(v899, "likedStateChangedDate");
  v901 = v191;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_364];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v192 = __p[0];
  __p[0] = 0;
  if (v192)
  {
    operator delete(v192);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  IsStoreRedownloadable = mlcore::AlbumPropertyIsStoreRedownloadable(v192);
  std::string::basic_string[abi:ne200100]<0>(v899, "isStoreRedownloadable");
  v901 = IsStoreRedownloadable;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumIsStoreRedownloadable" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_366];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v194 = __p[0];
  __p[0] = 0;
  if (v194)
  {
    operator delete(v194);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  IsLibraryPinned = mlcore::AlbumPropertyIsLibraryPinned(v194);
  v196 = [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumDownloadedTrackCount" toMLProperty:mlcore::AlbumPropertyNonPurgeableTracksItemCount([(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumIsPinned" toMLProperty:IsLibraryPinned, __p[0]])];
  [(mlcore *)v104 mapPropertyKey:@"MPModelPropertyAlbumCleanDownloadedTrackCount" toMLProperty:mlcore::AlbumPropertyCleanDownloadedLibraryTracksCount(v196)];
  v197 = objc_opt_class();
  [(mlcore *)v104 mapRelationshipKey:@"MPModelRelationshipAlbumGenre" toModelClass:v197 usingForeignPropertyBase:mlcore::AlbumPropertyGenrePersistentID(v197)];
  v198 = objc_opt_class();
  [(mlcore *)v104 mapRelationshipKey:@"MPModelRelationshipAlbumArtist" toModelClass:v198 usingForeignPropertyBase:mlcore::AlbumPropertyArtistPersistentID(v198)];
  v199 = objc_opt_class();
  [(mlcore *)v104 mapRelationshipKey:@"MPModelRelationshipAlbumRepresentativeSong" toModelClass:v199 usingForeignPropertyBase:mlcore::AlbumPropertyRepresentativeItemPersistentID(v199)];

  _MPMLInitPropertyPlaylistMap();
  v200 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v201 = mlcore::PlaylistPropertyPersistentID(v200);
  v202 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v201;
  v203 = mlcore::PlaylistPropertyCloudAuthorStoreID(v202);
  std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v203;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v200 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_528];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v204 = v899[0];
  v899[0] = 0;
  if (v204)
  {
    operator delete(v204);
  }

  for (i3 = 0; i3 != -16; i3 -= 8)
  {
    if (SHIBYTE(v876[i3 + 5]) < 0)
    {
      operator delete(*&v876[i3]);
    }
  }

  v206 = mlcore::PlaylistPropertyCloudAuthorName(v204);
  v207 = std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v875[1] = v206;
  v208 = mlcore::PlaylistPropertyExternalVendorDisplayName(v207);
  std::string::basic_string[abi:ne200100]<0>(v876, "externalVendorName");
  v877 = v208;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v200 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_531];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v209 = v899[0];
  v899[0] = 0;
  if (v209)
  {
    operator delete(v209);
  }

  for (i4 = 0; i4 != -16; i4 -= 8)
  {
    if (SHIBYTE(v876[i4 + 5]) < 0)
    {
      operator delete(*&v876[i4]);
    }
  }

  [(mlcore *)v200 mapPropertyKey:@"MPModelPropertyCuratorHandle" toMLProperty:mlcore::PlaylistPropertyCloudAuthorHandle(v209)];
  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v200 mapPropertyKey:@"MPModelPropertyCuratorKind" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_533_43899];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v211 = __p[0];
  __p[0] = 0;
  if (v211)
  {
    operator delete(v211);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v200 mapPropertyKey:@"MPModelPropertyCuratorSubKind" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_535];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v212 = __p[0];
  __p[0] = 0;
  if (v212)
  {
    operator delete(v212);
  }

  v213 = MEMORY[0x1A58E11E0]();
  v214 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v213];
  v215 = mlcore::ArtistPropertyPersistentID(v214);
  v216 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v215;
  v217 = mlcore::ArtistPropertyStoreID(v216);
  v218 = std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v217;
  v219 = mlcore::ArtistPropertyCloudUniversalLibraryID(v218);
  std::string::basic_string[abi:ne200100]<0>(v878, "albumArtistCloudUniversalLibraryID");
  v879 = v219;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 3);
  [(mlcore *)v214 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_538];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v220 = v899[0];
  v899[0] = 0;
  if (v220)
  {
    operator delete(v220);
  }

  for (i5 = 0; i5 != -96; i5 -= 32)
  {
    if (v878[i5 + 23] < 0)
    {
      operator delete(*&v878[i5]);
    }
  }

  [(mlcore *)v214 setEntityQueryBlock:&__block_literal_global_540];
  v222 = mlcore::ArtistPropertyName([(mlcore *)v214 setAllowedItemPredicatesBlock:&__block_literal_global_546]);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v222;
  v223 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  HasName = mlcore::ArtistPropertyHasName(v223);
  v225 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = HasName;
  v226 = mlcore::ArtistPropertyOrder(v225);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v226;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_549_43902 filterTransformer:&__block_literal_global_551_43903 valueTransformer:&__block_literal_global_556];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v227 = v904[0];
  v904[0] = 0;
  if (v227)
  {
    operator delete(v227);
  }

  for (i6 = 0; i6 != -16; i6 -= 8)
  {
    if (SHIBYTE(v876[i6 + 5]) < 0)
    {
      operator delete(*&v876[i6]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v229 = v899[0];
  v899[0] = 0;
  if (v229)
  {
    operator delete(v229);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v230 = mlcore::ArtistPropertyPersistentID(v229);
  v231 = std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v875[1] = v230;
  v232 = mlcore::ArtistPropertyAvailableArtworkToken(v231);
  v233 = std::string::basic_string[abi:ne200100]<0>(v876, "artistAvailableArtworkToken");
  v877 = v232;
  v234 = mlcore::ArtistPropertyFetchableArtworkToken(v233);
  v235 = std::string::basic_string[abi:ne200100]<0>(v878, "artistFetchableArtworkToken");
  v879 = v234;
  v236 = mlcore::ArtistPropertyFetchableArtworkSourceType(v235);
  std::string::basic_string[abi:ne200100]<0>(v880, "artistFetchableArtworkSourceType");
  v881 = v236;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 4);
  [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_562];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v237 = v899[0];
  v899[0] = 0;
  if (v237)
  {
    operator delete(v237);
  }

  for (i7 = 0; i7 != -128; i7 -= 32)
  {
    if (v880[i7 + 23] < 0)
    {
      operator delete(*&v880[i7]);
    }
  }

  v239 = [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistCleanSongCount" toMLProperty:mlcore::ArtistPropertyLibraryCleanItemCount(v237)];
  v240 = [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistSongCount" toMLProperty:mlcore::ArtistPropertyLibraryItemCount(v239)];
  v241 = [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistCleanDownloadedSongCount" toMLProperty:mlcore::ArtistPropertyLibraryNonPurgeableCleanItemCount(v240)];
  v242 = [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistDownloadedSongCount" toMLProperty:mlcore::ArtistPropertyLibraryNonPurgeableItemCount(v241)];
  v243 = [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistAlbumCount" toMLProperty:mlcore::ArtistPropertyAlbumCount(v242)];
  v244 = mlcore::ArtistPropertyLatestItemDateAdded(v243);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryAdded");
  v901 = v244;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_564];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v245 = __p[0];
  __p[0] = 0;
  if (v245)
  {
    operator delete(v245);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v246 = [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistClassicalExperienceAvailable" toMLProperty:mlcore::ArtistPropertyClassicalExperienceAvailable(v245)];
  v247 = mlcore::ArtistPropertyLikedState(v246);
  std::string::basic_string[abi:ne200100]<0>(v899, "likedState");
  v901 = v247;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_566];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v248 = __p[0];
  __p[0] = 0;
  if (v248)
  {
    operator delete(v248);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v249 = mlcore::ArtistPropertyLikedState(v248);
  std::string::basic_string[abi:ne200100]<0>(v899, "likedState");
  v901 = v249;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_568];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v250 = __p[0];
  __p[0] = 0;
  if (v250)
  {
    operator delete(v250);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v251 = mlcore::ArtistPropertyLikedStateChangedDate(v250);
  std::string::basic_string[abi:ne200100]<0>(v899, "likedStateChangedDate");
  v901 = v251;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_570];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v252 = __p[0];
  __p[0] = 0;
  if (v252)
  {
    operator delete(v252);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v253 = mlcore::ArtistPropertyIsLibraryPinned(v252);
  v254 = mlcore::ArtistPropertyLikedState([(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistIsPinned" toMLProperty:v253, __p[0]]);
  v255 = std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v875[1] = v254;
  v256 = mlcore::ArtistPropertyLibraryItemCount(v255);
  std::string::basic_string[abi:ne200100]<0>(v876, "libraryItemCount");
  v877 = v256;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v214 mapPropertyKey:@"MPModelPropertyArtistLibraryAdded" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_573_43908];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v257 = v899[0];
  v899[0] = 0;
  if (v257)
  {
    operator delete(v257);
  }

  for (i8 = 0; i8 != -16; i8 -= 8)
  {
    if (SHIBYTE(v876[i8 + 5]) < 0)
    {
      operator delete(*&v876[i8]);
    }
  }

  v259 = objc_opt_class();
  v260 = mlcore::ArtistPropertyRepresentativeItemPersistentID(v259);
  v261 = mlcore::ItemPropertyGenrePersistentID(v260);
  [(mlcore *)v214 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:v259 usingForeignPropertyBase:MPMediaLibraryGetProperty(v260, v261)];

  v262 = MEMORY[0x1A58DF740]();
  v263 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v262];
  v264 = mlcore::ItemArtistPropertyPersistentID(v263);
  v265 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v264;
  v266 = mlcore::ItemArtistPropertyStoreID(v265);
  std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v266;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v263 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_575];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v267 = v899[0];
  v899[0] = 0;
  if (v267)
  {
    operator delete(v267);
  }

  for (i9 = 0; i9 != -16; i9 -= 8)
  {
    if (SHIBYTE(v876[i9 + 5]) < 0)
    {
      operator delete(*&v876[i9]);
    }
  }

  v269 = mlcore::ItemArtistPropertyName(v267);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v269;
  v270 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  v271 = mlcore::ItemArtistPropertyHasName(v270);
  v272 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = v271;
  v273 = mlcore::ItemArtistPropertyOrder(v272);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v273;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v263 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_577 filterTransformer:&__block_literal_global_579 valueTransformer:&__block_literal_global_581];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v274 = v904[0];
  v904[0] = 0;
  if (v274)
  {
    operator delete(v274);
  }

  for (i10 = 0; i10 != -16; i10 -= 8)
  {
    if (SHIBYTE(v876[i10 + 5]) < 0)
    {
      operator delete(*&v876[i10]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v276 = v899[0];
  v899[0] = 0;
  if (v276)
  {
    operator delete(v276);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v277 = mlcore::ItemArtistPropertyPersistentID(v276);
  v278 = std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v875[1] = v277;
  v279 = mlcore::ItemArtistPropertyAvailableArtworkToken(v278);
  v280 = std::string::basic_string[abi:ne200100]<0>(v876, "artistAvailableArtworkToken");
  v877 = v279;
  v281 = mlcore::ItemArtistPropertyFetchableArtworkToken(v280);
  v282 = std::string::basic_string[abi:ne200100]<0>(v878, "artistFetchableArtworkToken");
  v879 = v281;
  v283 = mlcore::ItemArtistPropertyFetchableArtworkSourceType(v282);
  std::string::basic_string[abi:ne200100]<0>(v880, "artistFetchableArtworkSourceType");
  v881 = v283;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 4);
  [(mlcore *)v263 mapPropertyKey:@"MPModelPropertyArtistArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_583];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v284 = v899[0];
  v899[0] = 0;
  if (v284)
  {
    operator delete(v284);
  }

  for (i11 = 0; i11 != -128; i11 -= 32)
  {
    if (v880[i11 + 23] < 0)
    {
      operator delete(*&v880[i11]);
    }
  }

  [(mlcore *)v263 mapPropertyKey:@"MPModelPropertyArtistClassicalExperienceAvailable" toMLProperty:mlcore::ItemArtistPropertyClassicalExperienceAvailable(v284)];
  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v263 mapPropertyKey:@"MPModelPropertyArtistIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_585];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v286 = __p[0];
  __p[0] = 0;
  if (v286)
  {
    operator delete(v286);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v263 mapPropertyKey:@"MPModelPropertyArtistIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_587_43909];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v287 = __p[0];
  __p[0] = 0;
  if (v287)
  {
    operator delete(v287);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v263 mapPropertyKey:@"MPModelPropertyArtistDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_589_43910];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v288 = __p[0];
  __p[0] = 0;
  if (v288)
  {
    operator delete(v288);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v263 mapPropertyKey:@"MPModelPropertyArtistLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_591];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v289 = __p[0];
  __p[0] = 0;
  if (v289)
  {
    operator delete(v289);
  }

  v290 = objc_opt_class();
  v291 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v290);
  v292 = mlcore::ItemPropertyGenrePersistentID(v291);
  [(mlcore *)v263 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:v290 usingForeignPropertyBase:MPMediaLibraryGetProperty(v291, v292)];

  v293 = MEMORY[0x1A58E1270]();
  v294 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v293];
  v295 = mlcore::ComposerPropertyPersistentID(v294);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v295;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v294 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_593];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v296 = __p[0];
  __p[0] = 0;
  if (v296)
  {
    operator delete(v296);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v297 = mlcore::ComposerPropertyName([(mlcore *)v294 setEntityQueryBlock:&__block_literal_global_595, __p[0]]);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v297;
  v298 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  v299 = mlcore::ComposerPropertyHasName(v298);
  v300 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = v299;
  v301 = mlcore::ComposerPropertyOrder(v300);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v301;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v294 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_601_43911 filterTransformer:&__block_literal_global_603 valueTransformer:&__block_literal_global_608];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v302 = v904[0];
  v904[0] = 0;
  if (v302)
  {
    operator delete(v302);
  }

  for (i12 = 0; i12 != -16; i12 -= 8)
  {
    if (SHIBYTE(v876[i12 + 5]) < 0)
    {
      operator delete(*&v876[i12]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v304 = v899[0];
  v899[0] = 0;
  if (v304)
  {
    operator delete(v304);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v305 = mlcore::ComposerPropertyLatestItemDateAdded(v304);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryAdded");
  v901 = v305;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v294 mapPropertyKey:@"MPModelPropertyComposerLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_610];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v306 = __p[0];
  __p[0] = 0;
  if (v306)
  {
    operator delete(v306);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v307 = MEMORY[0x1A58E1190]();
  v308 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v307];
  v309 = mlcore::GenrePropertyPersistentID(v308);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v309;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v308 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_612];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v310 = __p[0];
  __p[0] = 0;
  if (v310)
  {
    operator delete(v310);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  [(mlcore *)v308 setEntityQueryBlock:&__block_literal_global_614, __p[0]];
  v311 = mlcore::GenrePropertyName([(mlcore *)v308 setAllowedItemPredicatesBlock:&__block_literal_global_620]);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v311;
  v312 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  v313 = mlcore::GenrePropertyHasName(v312);
  v314 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = v313;
  v315 = mlcore::GenrePropertyOrder(v314);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v315;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v308 mapPropertyKey:@"MPModelPropertyGenreName" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_622 filterTransformer:&__block_literal_global_624 valueTransformer:&__block_literal_global_629];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v316 = v904[0];
  v904[0] = 0;
  if (v316)
  {
    operator delete(v316);
  }

  for (i13 = 0; i13 != -16; i13 -= 8)
  {
    if (SHIBYTE(v876[i13 + 5]) < 0)
    {
      operator delete(*&v876[i13]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v318 = v899[0];
  v899[0] = 0;
  if (v318)
  {
    operator delete(v318);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v319 = mlcore::GenrePropertyLatestItemDateAdded(v318);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryAdded");
  v901 = v319;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v308 mapPropertyKey:@"MPModelPropertyGenreLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_631];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v320 = __p[0];
  __p[0] = 0;
  if (v320)
  {
    operator delete(v320);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v321 = MEMORY[0x1A58DF9B0]();
  v322 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v321];
  v323 = mlcore::PlaylistItemPropertyPersistentID(v322);
  v324 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v323;
  v325 = mlcore::PlaylistItemPropertyItemPersistentID(v324);
  v326 = std::string::basic_string[abi:ne200100]<0>(v876, "itemPid");
  v877 = v325;
  v327 = mlcore::PlaylistItemPropertyItemPersistentID(v326);
  v328 = mlcore::ItemPropertyExcludeFromShuffle(v327);
  v329 = MPMediaLibraryGetProperty(v327, v328);
  v330 = std::string::basic_string[abi:ne200100]<0>(v878, "excludeFromShuffle");
  v879 = v329;
  v331 = mlcore::PlaylistItemPropertyItemPersistentID(v330);
  v332 = mlcore::ItemPropertyStoreID(v331);
  v333 = MPMediaLibraryGetProperty(v331, v332);
  v334 = std::string::basic_string[abi:ne200100]<0>(v880, "storeID");
  v881 = v333;
  v335 = mlcore::PlaylistItemPropertyItemPersistentID(v334);
  v336 = mlcore::ItemPropertyStoreCloudID(v335);
  v337 = MPMediaLibraryGetProperty(v335, v336);
  v338 = std::string::basic_string[abi:ne200100]<0>(v882, "cloudID");
  v883 = v337;
  v339 = mlcore::PlaylistItemPropertyItemPersistentID(v338);
  v340 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v339);
  v341 = MPMediaLibraryGetProperty(v339, v340);
  v342 = std::string::basic_string[abi:ne200100]<0>(v884, "cloudUniversalLibraryID");
  v885 = v341;
  v343 = mlcore::PlaylistItemPropertyItemPersistentID(v342);
  v344 = mlcore::ItemPropertySubscriptionStoreItemID(v343);
  v345 = MPMediaLibraryGetProperty(v343, v344);
  v346 = std::string::basic_string[abi:ne200100]<0>(v886, "subscriptionStoreID");
  v887 = v345;
  v347 = mlcore::PlaylistItemPropertyItemPersistentID(v346);
  v348 = mlcore::ItemPropertyStoreCloudAlbumID(v347);
  v349 = MPMediaLibraryGetProperty(v347, v348);
  v350 = std::string::basic_string[abi:ne200100]<0>(v888, "storeCloudAlbumID");
  v889 = v349;
  v351 = mlcore::PlaylistItemPropertyItemPersistentID(v350);
  v352 = mlcore::ItemPropertyReportingStoreItemID(v351);
  v353 = MPMediaLibraryGetProperty(v351, v352);
  v354 = std::string::basic_string[abi:ne200100]<0>(v890, "reportingStoreItemID");
  v891 = v353;
  v355 = mlcore::PlaylistItemPropertyItemPersistentID(v354);
  v356 = mlcore::ItemPropertyAssetStoreItemID(v355);
  v357 = MPMediaLibraryGetProperty(v355, v356);
  v358 = std::string::basic_string[abi:ne200100]<0>(v892, "assetStoreItemID");
  v893 = v357;
  v359 = mlcore::PlaylistItemPropertyOccurrenceID(v358);
  std::string::basic_string[abi:ne200100]<0>(v894, "occurrenceID");
  v895 = v359;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 11);
  [(mlcore *)v322 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_635];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v360 = v899[0];
  v899[0] = 0;
  if (v360)
  {
    operator delete(v360);
  }

  v361 = 44;
  do
  {
    if (*(&__p[v361 - 1] - 1) < 0)
    {
      operator delete(__p[v361 - 4]);
    }

    v361 -= 4;
  }

  while (v361 * 8);
  v362 = mlcore::PlaylistItemPropertyItemPersistentID([(mlcore *)v322 setEntityQueryBlock:&__block_literal_global_637]);
  v363 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v362;
  v364 = mlcore::PlaylistItemPropertyItemPersistentID(v363);
  v365 = mlcore::ItemPropertyMediaType(v364);
  v366 = MPMediaLibraryGetProperty(v364, v365);
  v367 = std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v366;
  v368 = mlcore::PlaylistItemPropertyAvailableArtworkToken(v367);
  v369 = std::string::basic_string[abi:ne200100]<0>(v878, "availableArtworkToken");
  v879 = v368;
  v370 = mlcore::PlaylistItemPropertyFetchableArtworkToken(v369);
  v371 = std::string::basic_string[abi:ne200100]<0>(v880, "fetchableArtworkToken");
  v881 = v370;
  v372 = mlcore::PlaylistItemPropertyFetchableArtworkSourceType(v371);
  std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkSourceType");
  v883 = v372;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 5);
  [(mlcore *)v322 mapPropertyKey:@"_MPModelPropertyPlaylistEntryArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_647];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v373 = v899[0];
  v899[0] = 0;
  if (v373)
  {
    operator delete(v373);
  }

  for (i14 = 0; i14 != -160; i14 -= 32)
  {
    if (v882[i14 + 23] < 0)
    {
      operator delete(*&v882[i14]);
    }
  }

  v375 = mlcore::PlaylistItemPropertyPosition(v373);
  std::string::basic_string[abi:ne200100]<0>(v899, "position");
  v901 = v375;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v322 mapPropertyKey:@"MPModelPropertyPlaylistEntryPosition" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_650];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v376 = __p[0];
  __p[0] = 0;
  if (v376)
  {
    operator delete(v376);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v377 = mlcore::PlaylistItemPropertyUUID(v376);
  v378 = std::string::basic_string[abi:ne200100]<0>(__p, "UUID");
  v875[1] = v377;
  v379 = mlcore::PlaylistItemPropertyPersistentID(v378);
  std::string::basic_string[abi:ne200100]<0>(v876, "persistentID");
  v877 = v379;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v322 mapPropertyKey:@"MPModelPropertyPlaylistEntryUniversalIdentifier" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_653_43924];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v380 = v899[0];
  v899[0] = 0;
  if (v380)
  {
    operator delete(v380);
  }

  for (i15 = 0; i15 != -16; i15 -= 8)
  {
    if (SHIBYTE(v876[i15 + 5]) < 0)
    {
      operator delete(*&v876[i15]);
    }
  }

  v382 = mlcore::PlaylistItemPropertyPositionUUID(v380);
  v383 = std::string::basic_string[abi:ne200100]<0>(__p, "positionUUID");
  v875[1] = v382;
  v384 = mlcore::PlaylistItemPropertyPersistentID(v383);
  std::string::basic_string[abi:ne200100]<0>(v876, "persistentID");
  v877 = v384;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v322 mapPropertyKey:@"MPModelPropertyPlaylistEntryPositionUniversalIdentifier" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_659];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v385 = v899[0];
  v899[0] = 0;
  if (v385)
  {
    operator delete(v385);
  }

  for (i16 = 0; i16 != -16; i16 -= 8)
  {
    if (SHIBYTE(v876[i16 + 5]) < 0)
    {
      operator delete(*&v876[i16]);
    }
  }

  v387 = objc_opt_class();
  v388 = mlcore::PlaylistItemPropertyItemPersistentID(v387);
  v389 = mlcore::PlaylistItemPropertyItemPersistentID(v388);
  v390 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v389;
  v391 = mlcore::PlaylistItemPropertyItemPersistentID(v390);
  v392 = mlcore::ItemPropertyMediaType(v391);
  v393 = MPMediaLibraryGetProperty(v391, v392);
  std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v393;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v322 mapRelationshipKey:@"MPModelRelationshipPlaylistEntrySong" toModelClass:v387 transient:0 usingForeignPropertyBase:v388 relationshipValidationProperties:v899 isValidRelationshipHandler:&__block_literal_global_665];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v394 = v899[0];
  v899[0] = 0;
  if (v394)
  {
    operator delete(v394);
  }

  for (i17 = 0; i17 != -16; i17 -= 8)
  {
    if (SHIBYTE(v876[i17 + 5]) < 0)
    {
      operator delete(*&v876[i17]);
    }
  }

  v396 = objc_opt_class();
  v397 = mlcore::PlaylistItemPropertyItemPersistentID(v396);
  v398 = mlcore::PlaylistItemPropertyItemPersistentID(v397);
  v399 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v398;
  v400 = mlcore::PlaylistItemPropertyItemPersistentID(v399);
  v401 = mlcore::ItemPropertyMediaType(v400);
  v402 = MPMediaLibraryGetProperty(v400, v401);
  std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v402;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v322 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryTVEpisode" toModelClass:v396 transient:0 usingForeignPropertyBase:v397 relationshipValidationProperties:v899 isValidRelationshipHandler:&__block_literal_global_667];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v403 = v899[0];
  v899[0] = 0;
  if (v403)
  {
    operator delete(v403);
  }

  for (i18 = 0; i18 != -16; i18 -= 8)
  {
    if (SHIBYTE(v876[i18 + 5]) < 0)
    {
      operator delete(*&v876[i18]);
    }
  }

  v405 = objc_opt_class();
  v406 = mlcore::PlaylistItemPropertyItemPersistentID(v405);
  v407 = mlcore::PlaylistItemPropertyItemPersistentID(v406);
  v408 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v407;
  v409 = mlcore::PlaylistItemPropertyItemPersistentID(v408);
  v410 = mlcore::ItemPropertyMediaType(v409);
  v411 = MPMediaLibraryGetProperty(v409, v410);
  std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v411;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v322 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryMovie" toModelClass:v405 transient:0 usingForeignPropertyBase:v406 relationshipValidationProperties:v899 isValidRelationshipHandler:&__block_literal_global_669];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v412 = v899[0];
  v899[0] = 0;
  if (v412)
  {
    operator delete(v412);
  }

  for (i19 = 0; i19 != -16; i19 -= 8)
  {
    if (SHIBYTE(v876[i19 + 5]) < 0)
    {
      operator delete(*&v876[i19]);
    }
  }

  v414 = objc_opt_class();
  v415 = mlcore::PlaylistItemPropertyPersistentID(v414);
  v416 = mlcore::ContainerItemPersonPropertyPersonPersistentID(v415);
  [(mlcore *)v322 mapRelationshipKey:@"MPModelRelationshipPlaylistEntrySocialContributor" toModelClass:v414 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v415, v416)];

  v417 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v418 = mlcore::ItemPropertyPersistentID(v417);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v418;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v417 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_693_43926];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v419 = __p[0];
  __p[0] = 0;
  if (v419)
  {
    operator delete(v419);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v420 = mlcore::ItemPropertyCloudKVSKey(v419);
  v421 = mlcore::CloudKVSEntityPropertyBookmarkTime(v420);
  v422 = MPMediaLibraryGetProperty(v420, v421);
  std::string::basic_string[abi:ne200100]<0>(v899, "cloudKVSBookmarkTime");
  v901 = v422;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v417 mapPropertyKey:@"MPModelPropertyPlaybackPositionBookmarkTime" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_696_43928];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v423 = __p[0];
  __p[0] = 0;
  if (v423)
  {
    operator delete(v423);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v424 = mlcore::ItemPropertyCloudKVSKey(v423);
  std::string::basic_string[abi:ne200100]<0>(v899, "cloudKVSKey");
  v901 = v424;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v417 mapPropertyKey:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_699];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v425 = __p[0];
  __p[0] = 0;
  if (v425)
  {
    operator delete(v425);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v426 = [(mlcore *)v417 mapPropertyKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime" toMLProperty:mlcore::ItemPropertyRememberBookmarkTime(v425)];
  started = mlcore::ItemPropertyStartTime(v426);
  std::string::basic_string[abi:ne200100]<0>(v899, "startTime");
  v901 = started;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v417 mapPropertyKey:@"MPModelPropertyPlaybackPositionStartTime" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_702];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v428 = __p[0];
  __p[0] = 0;
  if (v428)
  {
    operator delete(v428);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v429 = mlcore::ItemPropertyStopTime(v428);
  std::string::basic_string[abi:ne200100]<0>(v899, "stopTime");
  v901 = v429;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v417 mapPropertyKey:@"MPModelPropertyPlaybackPositionStopTime" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_705_43930];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v430 = __p[0];
  __p[0] = 0;
  if (v430)
  {
    operator delete(v430);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v431 = mlcore::ItemPropertyCloudKVSKey(v430);
  HasBeenPlayed = mlcore::CloudKVSEntityPropertyHasBeenPlayed(v431);
  v433 = MPMediaLibraryGetProperty(v431, HasBeenPlayed);
  std::string::basic_string[abi:ne200100]<0>(v899, "cloudKVSHasBeenPlayed");
  v901 = v433;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v417 mapPropertyKey:@"MPModelPropertyPlaybackPositionHasBeenPlayed" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_708];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v434 = __p[0];
  __p[0] = 0;
  if (v434)
  {
    operator delete(v434);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v435 = mlcore::ItemPropertyCloudKVSKey(v434);
  v436 = mlcore::CloudKVSEntityPropertyPlayCount(v435);
  v437 = MPMediaLibraryGetProperty(v435, v436);
  std::string::basic_string[abi:ne200100]<0>(v899, "cloudKVSPlayCount");
  v901 = v437;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v417 mapPropertyKey:@"MPModelPropertyPlaybackPositionUserPlayCount" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_711_43932];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v438 = __p[0];
  __p[0] = 0;
  if (v438)
  {
    operator delete(v438);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v439 = MEMORY[0x1A58E1250]();
  v440 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v439];
  v441 = mlcore::AlbumPropertyPersistentID(v440);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v441;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v440 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_713];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v442 = __p[0];
  __p[0] = 0;
  if (v442)
  {
    operator delete(v442);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  [(mlcore *)v440 setEntityQueryBlock:&__block_literal_global_715, __p[0]];
  v443 = mlcore::AlbumPropertyTitle([(mlcore *)v440 setAllowedItemPredicatesBlock:&__block_literal_global_721]);
  std::string::basic_string[abi:ne200100]<0>(v896, "title");
  v898 = v443;
  v444 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  v445 = mlcore::AlbumPropertyHasTitle(v444);
  v446 = std::string::basic_string[abi:ne200100]<0>(__p, "hasTitle");
  v875[1] = v445;
  v447 = mlcore::AlbumPropertyOrder(v446);
  std::string::basic_string[abi:ne200100]<0>(v876, "titleOrder");
  v877 = v447;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v440 mapPropertyKey:@"MPModelPropertyPodcastTitle" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_723 valueTransformer:&__block_literal_global_725];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v448 = v904[0];
  v904[0] = 0;
  if (v448)
  {
    operator delete(v448);
  }

  for (i20 = 0; i20 != -16; i20 -= 8)
  {
    if (SHIBYTE(v876[i20 + 5]) < 0)
    {
      operator delete(*&v876[i20]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v450 = v899[0];
  v899[0] = 0;
  if (v450)
  {
    operator delete(v450);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v451 = mlcore::AlbumPropertyFeedURL(v450);
  std::string::basic_string[abi:ne200100]<0>(v899, "feedURL");
  v901 = v451;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v440 mapPropertyKey:@"MPModelPropertyPodcastFeedURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_728];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v452 = __p[0];
  __p[0] = 0;
  if (v452)
  {
    operator delete(v452);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v453 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v452);
  v454 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v453;
  v455 = mlcore::AlbumPropertyRepresentativeItemMediaType(v454);
  v456 = std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v455;
  v457 = mlcore::AlbumPropertyRepresentativeItemAvailableArtworkToken(v456);
  v458 = std::string::basic_string[abi:ne200100]<0>(v878, "availableArtworkToken");
  v879 = v457;
  v459 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkToken(v458);
  v460 = std::string::basic_string[abi:ne200100]<0>(v880, "fetchableArtworkToken");
  v881 = v459;
  v461 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkSourceType(v460);
  std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkSourceType");
  v883 = v461;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 5);
  [(mlcore *)v440 mapPropertyKey:@"MPModelPropertyPodcastArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_730];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v462 = v899[0];
  v899[0] = 0;
  if (v462)
  {
    operator delete(v462);
  }

  for (i21 = 0; i21 != -160; i21 -= 32)
  {
    if (v882[i21 + 23] < 0)
    {
      operator delete(*&v882[i21]);
    }
  }

  v464 = objc_opt_class();
  [(mlcore *)v440 mapRelationshipKey:@"MPModelRelationshipPodcastAuthor" toModelClass:v464 usingForeignPropertyBase:mlcore::AlbumPropertyArtistPersistentID(v464)];

  v465 = MEMORY[0x1A58E11E0]();
  v466 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v465];
  v467 = mlcore::ArtistPropertyPersistentID(v466);
  v468 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v467;
  v469 = mlcore::ArtistPropertyStoreID(v468);
  std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v469;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v466 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_733_43933];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v470 = v899[0];
  v899[0] = 0;
  if (v470)
  {
    operator delete(v470);
  }

  for (i22 = 0; i22 != -16; i22 -= 8)
  {
    if (SHIBYTE(v876[i22 + 5]) < 0)
    {
      operator delete(*&v876[i22]);
    }
  }

  v472 = mlcore::ArtistPropertyName(v470);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v472;
  v473 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  v474 = mlcore::ArtistPropertyHasName(v473);
  v475 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = v474;
  v476 = mlcore::ArtistPropertyOrder(v475);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v476;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v466 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_735 valueTransformer:&__block_literal_global_737];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v477 = v904[0];
  v904[0] = 0;
  if (v477)
  {
    operator delete(v477);
  }

  for (i23 = 0; i23 != -16; i23 -= 8)
  {
    if (SHIBYTE(v876[i23 + 5]) < 0)
    {
      operator delete(*&v876[i23]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v479 = v899[0];
  v899[0] = 0;
  if (v479)
  {
    operator delete(v479);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v480 = MEMORY[0x1A58DFA20]();
  v481 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v480];
  v482 = mlcore::ItemPropertyPersistentID(v481);
  v483 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v482;
  v484 = mlcore::ItemPropertyStoreID(v483);
  v485 = std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v484;
  v486 = mlcore::ItemPropertyPodcastExternalGUID(v485);
  std::string::basic_string[abi:ne200100]<0>(v878, "externalGUID");
  v879 = v486;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 3);
  [(mlcore *)v481 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_740];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v487 = v899[0];
  v899[0] = 0;
  if (v487)
  {
    operator delete(v487);
  }

  for (i24 = 0; i24 != -96; i24 -= 32)
  {
    if (v878[i24 + 23] < 0)
    {
      operator delete(*&v878[i24]);
    }
  }

  [(mlcore *)v481 setEntityQueryBlock:&__block_literal_global_742];
  v489 = mlcore::ItemPropertyTitle([(mlcore *)v481 setAllowedItemPredicatesBlock:&__block_literal_global_748]);
  std::string::basic_string[abi:ne200100]<0>(v904, "title");
  v906 = v489;
  v490 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v904, 1);
  v491 = mlcore::ItemPropertyTitleOrder(v490);
  std::string::basic_string[abi:ne200100]<0>(v896, "titleOrder");
  v898 = v491;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTitle" withPropertiesToFetch:__p propertiesToSort:v899 sortTransformer:&__block_literal_global_750 valueTransformer:&__block_literal_global_752];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v492 = v899[0];
  v899[0] = 0;
  if (v492)
  {
    operator delete(v492);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v493 = __p[0];
  __p[0] = 0;
  if (v493)
  {
    operator delete(v493);
  }

  if (SHIBYTE(v905) < 0)
  {
    operator delete(v904[0]);
  }

  v494 = mlcore::ItemPropertyTotalTime(v493);
  std::string::basic_string[abi:ne200100]<0>(v899, "time");
  v901 = v494;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_754];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v495 = __p[0];
  __p[0] = 0;
  if (v495)
  {
    operator delete(v495);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v496 = mlcore::ItemPropertyDateReleased(v495);
  std::string::basic_string[abi:ne200100]<0>(v899, "dateReleased");
  v901 = v496;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeReleaseDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_756];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v497 = __p[0];
  __p[0] = 0;
  if (v497)
  {
    operator delete(v497);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v498 = mlcore::ItemPropertyUserRating(v497);
  std::string::basic_string[abi:ne200100]<0>(v899, "userRating");
  v901 = v498;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeUserRating" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_758];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v499 = __p[0];
  __p[0] = 0;
  if (v499)
  {
    operator delete(v499);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v500 = [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeExplicit" toMLProperty:mlcore::ItemPropertyIsExplicit(v499)];
  v501 = [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDescriptionText" toMLProperty:mlcore::ItemPropertyLongDescription(v500)];
  v502 = [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeHasVideo" toMLProperty:mlcore::ItemPropertyIsVideo(v501)];
  v503 = mlcore::ItemPropertyDatePlayed(v502);
  std::string::basic_string[abi:ne200100]<0>(v899, "datePlayed");
  v901 = v503;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v481 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDatePlayed" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_760];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v504 = __p[0];
  __p[0] = 0;
  if (v504)
  {
    operator delete(v504);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v505 = objc_opt_class();
  [(mlcore *)v481 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeAuthor" toModelClass:v505 usingForeignPropertyBase:mlcore::ItemPropertyItemArtistPersistentID(v505)];
  v506 = objc_opt_class();
  [(mlcore *)v481 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeLocalFileAsset" toModelClass:v506 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v506)];
  v507 = objc_opt_class();
  [(mlcore *)v481 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePodcast" toModelClass:v507 usingForeignPropertyBase:mlcore::ItemPropertyAlbumPersistentID(v507)];
  v508 = objc_opt_class();
  [(mlcore *)v481 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePlaybackPosition" toModelClass:v508 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v508)];

  v509 = MEMORY[0x1A58DF740]();
  v510 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v509];
  v511 = mlcore::ItemArtistPropertyPersistentID(v510);
  v512 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v511;
  v513 = mlcore::ItemArtistPropertyStoreID(v512);
  std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v513;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v510 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_763_43937];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v514 = v899[0];
  v899[0] = 0;
  if (v514)
  {
    operator delete(v514);
  }

  for (i25 = 0; i25 != -16; i25 -= 8)
  {
    if (SHIBYTE(v876[i25 + 5]) < 0)
    {
      operator delete(*&v876[i25]);
    }
  }

  v516 = mlcore::ItemArtistPropertyName(v514);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v516;
  v517 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  v518 = mlcore::ItemArtistPropertyHasName(v517);
  v519 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = v518;
  v520 = mlcore::ItemArtistPropertyOrder(v519);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v520;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v510 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_765 valueTransformer:&__block_literal_global_767];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v521 = v904[0];
  v904[0] = 0;
  if (v521)
  {
    operator delete(v521);
  }

  for (i26 = 0; i26 != -16; i26 -= 8)
  {
    if (SHIBYTE(v876[i26 + 5]) < 0)
    {
      operator delete(*&v876[i26]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v523 = v899[0];
  v899[0] = 0;
  if (v523)
  {
    operator delete(v523);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v524 = MEMORY[0x1A58E11B0]();
  v525 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v524];
  v526 = mlcore::ItemPropertyStoreID(v525);
  v527 = std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v875[1] = v526;
  v528 = mlcore::ItemPropertyStoreCloudID(v527);
  v529 = std::string::basic_string[abi:ne200100]<0>(v876, "cloudID");
  v877 = v528;
  v530 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v529);
  v531 = std::string::basic_string[abi:ne200100]<0>(v878, "cloudUniversalLibraryID");
  v879 = v530;
  v532 = mlcore::ItemPropertyPersistentID(v531);
  v533 = std::string::basic_string[abi:ne200100]<0>(v880, "pid");
  v881 = v532;
  v534 = mlcore::ItemPropertySubscriptionStoreItemID(v533);
  v535 = std::string::basic_string[abi:ne200100]<0>(v882, "subscriptionStoreID");
  v883 = v534;
  v536 = mlcore::ItemPropertyStoreCloudAlbumID(v535);
  v537 = std::string::basic_string[abi:ne200100]<0>(v884, "storeCloudAlbumID");
  v885 = v536;
  v538 = mlcore::ItemPropertyReportingStoreItemID(v537);
  v539 = std::string::basic_string[abi:ne200100]<0>(v886, "reportingStoreItemID");
  v887 = v538;
  v540 = mlcore::ItemPropertyAssetStoreItemID(v539);
  std::string::basic_string[abi:ne200100]<0>(v888, "assetStoreItemID");
  v889 = v540;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 8);
  [(mlcore *)v525 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_769];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v541 = v899[0];
  v899[0] = 0;
  if (v541)
  {
    operator delete(v541);
  }

  for (i27 = 0; i27 != -256; i27 -= 32)
  {
    if (v888[i27 + 23] < 0)
    {
      operator delete(*&v888[i27]);
    }
  }

  [(mlcore *)v525 setEntityQueryBlock:&__block_literal_global_771];
  v543 = mlcore::ItemPropertyTitle([(mlcore *)v525 setAllowedItemPredicatesBlock:&__block_literal_global_777]);
  std::string::basic_string[abi:ne200100]<0>(v904, "title");
  v906 = v543;
  v544 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v904, 1);
  v545 = mlcore::ItemPropertyTitleOrder(v544);
  std::string::basic_string[abi:ne200100]<0>(v896, "titleOrder");
  v898 = v545;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieTitle" withPropertiesToFetch:__p propertiesToSort:v899 sortTransformer:&__block_literal_global_779 valueTransformer:&__block_literal_global_781_43938];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v546 = v899[0];
  v899[0] = 0;
  if (v546)
  {
    operator delete(v546);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v547 = __p[0];
  __p[0] = 0;
  if (v547)
  {
    operator delete(v547);
  }

  if (SHIBYTE(v905) < 0)
  {
    operator delete(v904[0]);
  }

  v548 = [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieDescriptionText" toMLProperty:mlcore::ItemPropertyLongDescription(v547)];
  v549 = mlcore::MoviePropertyInfo(v548);
  std::string::basic_string[abi:ne200100]<0>(v899, "movieInfoPlist");
  v901 = v549;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieInfoDictionary" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_784];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v550 = __p[0];
  __p[0] = 0;
  if (v550)
  {
    operator delete(v550);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v551 = mlcore::ItemPropertyDateReleased(v550);
  std::string::basic_string[abi:ne200100]<0>(v899, "dateReleased");
  v901 = v551;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieReleaseDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_786_43939];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v552 = __p[0];
  __p[0] = 0;
  if (v552)
  {
    operator delete(v552);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v553 = mlcore::ItemPropertyPersistentID(v552);
  v554 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v553;
  v555 = mlcore::ItemPropertyMediaType(v554);
  v556 = std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v555;
  v557 = mlcore::ItemPropertyAvailableArtworkToken(v556);
  v558 = std::string::basic_string[abi:ne200100]<0>(v878, "availableArtworkToken");
  v879 = v557;
  v559 = mlcore::ItemPropertyFetchableArtworkToken(v558);
  v560 = std::string::basic_string[abi:ne200100]<0>(v880, "fetchableArtworkToken");
  v881 = v559;
  v561 = mlcore::ItemPropertyFetchableArtworkSourceType(v560);
  std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkSourceType");
  v883 = v561;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 5);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_788_43940, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v562 = v899[0];
  v899[0] = 0;
  if (v562)
  {
    operator delete(v562);
  }

  for (i28 = 0; i28 != -160; i28 -= 32)
  {
    if (v882[i28 + 23] < 0)
    {
      operator delete(*&v882[i28]);
    }
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_790];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v564 = __p[0];
  __p[0] = 0;
  if (v564)
  {
    operator delete(v564);
  }

  v565 = mlcore::ItemPropertyTotalTime(v564);
  std::string::basic_string[abi:ne200100]<0>(v899, "time");
  v901 = v565;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_792];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v566 = __p[0];
  __p[0] = 0;
  if (v566)
  {
    operator delete(v566);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieTagline" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_794];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v567 = __p[0];
  __p[0] = 0;
  if (v567)
  {
    operator delete(v567);
  }

  v568 = [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieExplicitRating" toMLProperty:mlcore::ItemPropertyContentRatingLevel(v567)];
  v569 = [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieHasCloudSyncSource" toMLProperty:mlcore::ItemPropertyHasCloudSyncSource(v568)];
  v570 = [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieLibraryAdded" toMLProperty:mlcore::ItemPropertyInMyLibrary(v569)];
  v571 = mlcore::ItemPropertyDateAdded(v570);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryAdded");
  v901 = v571;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_796];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v572 = __p[0];
  __p[0] = 0;
  if (v572)
  {
    operator delete(v572);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v573 = MPModelPropertyMovieDownloadedDate;
  v574 = mlcore::ItemPropertyDateDownloaded(v572);
  std::string::basic_string[abi:ne200100]<0>(v899, "downloadedDate");
  v901 = v574;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:v573 withPropertiesToFetch:__p valueTransformer:&__block_literal_global_798];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v575 = __p[0];
  __p[0] = 0;
  if (v575)
  {
    operator delete(v575);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v576 = mlcore::ItemPropertyDatePlayed(v575);
  std::string::basic_string[abi:ne200100]<0>(v899, "datePlayed");
  v901 = v576;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_800];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v577 = __p[0];
  __p[0] = 0;
  if (v577)
  {
    operator delete(v577);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v578 = mlcore::ItemPropertyHasNonPurgeableAsset(v577);
  v579 = std::string::basic_string[abi:ne200100]<0>(__p, "hasNonPurgeableAsset");
  v875[1] = v578;
  v580 = mlcore::ItemPropertyIsStoreRedownloadable(v579);
  std::string::basic_string[abi:ne200100]<0>(v876, "isStoreRedownloadable");
  v877 = v580;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieLibraryAddEligible" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_802];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v581 = v899[0];
  v899[0] = 0;
  if (v581)
  {
    operator delete(v581);
  }

  for (i29 = 0; i29 != -16; i29 -= 8)
  {
    if (SHIBYTE(v876[i29 + 5]) < 0)
    {
      operator delete(*&v876[i29]);
    }
  }

  v583 = mlcore::ItemPropertyKeepLocal(v581);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocal");
  v901 = v583;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_804];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v584 = __p[0];
  __p[0] = 0;
  if (v584)
  {
    operator delete(v584);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v585 = mlcore::ItemPropertyKeepLocalStatus(v584);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalStatus");
  v901 = v585;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_806];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v586 = __p[0];
  __p[0] = 0;
  if (v586)
  {
    operator delete(v586);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v587 = mlcore::ItemPropertyKeepLocalStatus(v586);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalStatusReason");
  v901 = v587;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_808];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v588 = __p[0];
  __p[0] = 0;
  if (v588)
  {
    operator delete(v588);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v589 = mlcore::ItemPropertyKeepLocalConstraints(v588);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalConstraints");
  v901 = v589;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_810];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v590 = __p[0];
  __p[0] = 0;
  if (v590)
  {
    operator delete(v590);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v591 = mlcore::ItemPropertyStoreCanonicalItemId(v590);
  [(mlcore *)v525 mapPropertyKey:@"MPModelPropertyMovieStoreCanonicalID" toMLProperty:v591, __p[0]];
  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v525 mapPropertyKey:@"MPModelRelationshipMovieClips" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_812];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v592 = __p[0];
  __p[0] = 0;
  if (v592)
  {
    operator delete(v592);
  }

  v593 = objc_opt_class();
  [(mlcore *)v525 mapRelationshipKey:@"MPModelRelationshipMovieLocalFileAsset" toModelClass:v593 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v593)];
  v594 = objc_opt_class();
  [(mlcore *)v525 mapRelationshipKey:@"MPModelRelationshipMovieStoreAsset" toModelClass:v594 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v594)];
  v595 = objc_opt_class();
  [(mlcore *)v525 mapRelationshipKey:@"MPModelRelationshipMoviePlaybackPosition" toModelClass:v595 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v595)];

  v596 = MEMORY[0x1A58E12C0]();
  v597 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v596];
  v598 = mlcore::ItemPropertyStoreID(v597);
  v599 = std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v875[1] = v598;
  v600 = mlcore::ItemPropertyStoreCloudID(v599);
  v601 = std::string::basic_string[abi:ne200100]<0>(v876, "cloudID");
  v877 = v600;
  v602 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v601);
  v603 = std::string::basic_string[abi:ne200100]<0>(v878, "cloudUniversalLibraryID");
  v879 = v602;
  v604 = mlcore::ItemPropertyPersistentID(v603);
  v605 = std::string::basic_string[abi:ne200100]<0>(v880, "pid");
  v881 = v604;
  v606 = mlcore::ItemPropertySubscriptionStoreItemID(v605);
  v607 = std::string::basic_string[abi:ne200100]<0>(v882, "subscriptionStoreID");
  v883 = v606;
  v608 = mlcore::ItemPropertyStoreCloudAlbumID(v607);
  v609 = std::string::basic_string[abi:ne200100]<0>(v884, "storeCloudAlbumID");
  v885 = v608;
  v610 = mlcore::ItemPropertyReportingStoreItemID(v609);
  v611 = std::string::basic_string[abi:ne200100]<0>(v886, "reportingStoreItemID");
  v887 = v610;
  v612 = mlcore::ItemPropertyAssetStoreItemID(v611);
  std::string::basic_string[abi:ne200100]<0>(v888, "assetStoreItemID");
  v889 = v612;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 8);
  [(mlcore *)v597 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_814];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v613 = v899[0];
  v899[0] = 0;
  if (v613)
  {
    operator delete(v613);
  }

  for (i30 = 0; i30 != -256; i30 -= 32)
  {
    if (v888[i30 + 23] < 0)
    {
      operator delete(*&v888[i30]);
    }
  }

  [(mlcore *)v597 setEntityQueryBlock:&__block_literal_global_816];
  v615 = mlcore::ItemPropertyTitle([(mlcore *)v597 setAllowedItemPredicatesBlock:&__block_literal_global_822]);
  std::string::basic_string[abi:ne200100]<0>(v904, "title");
  v906 = v615;
  v616 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v904, 1);
  v617 = mlcore::ItemPropertyTitleOrder(v616);
  std::string::basic_string[abi:ne200100]<0>(v896, "titleOrder");
  v898 = v617;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeTitle" withPropertiesToFetch:__p propertiesToSort:v899 sortTransformer:&__block_literal_global_824 valueTransformer:&__block_literal_global_826];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v618 = v899[0];
  v899[0] = 0;
  if (v618)
  {
    operator delete(v618);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v619 = __p[0];
  __p[0] = 0;
  if (v619)
  {
    operator delete(v619);
  }

  if (SHIBYTE(v905) < 0)
  {
    operator delete(v904[0]);
  }

  v620 = [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeDescriptionText" toMLProperty:mlcore::ItemPropertyLongDescription(v619)];
  v621 = mlcore::ItemPropertyTotalTime(v620);
  std::string::basic_string[abi:ne200100]<0>(v899, "time");
  v901 = v621;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_828];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v622 = __p[0];
  __p[0] = 0;
  if (v622)
  {
    operator delete(v622);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v623 = [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeExplicitRating" toMLProperty:mlcore::ItemPropertyContentRatingLevel(v622)];
  v624 = [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeHasCloudSyncSource" toMLProperty:mlcore::ItemPropertyHasCloudSyncSource(v623)];
  v625 = [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeMusicShow" toMLProperty:mlcore::ItemPropertyIsMusicShow(v624)];
  v626 = mlcore::TVEpisodePropertyEpisodeSortID(v625);
  v627 = std::string::basic_string[abi:ne200100]<0>(v899, "sortID");
  v901 = v626;
  v628 = mlcore::ItemPropertyTrackNumber(v627);
  std::string::basic_string[abi:ne200100]<0>(v902, "trackNumber");
  v903 = v628;
  v629 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, v899, 2);
  v630 = mlcore::ItemPropertyEpisodeSortID(v629);
  v631 = std::string::basic_string[abi:ne200100]<0>(__p, "sortID");
  v875[1] = v630;
  v632 = mlcore::ItemPropertyEpisodeSubSortOrder(v631);
  v633 = std::string::basic_string[abi:ne200100]<0>(v876, "subOrder");
  v877 = v632;
  v634 = mlcore::ItemPropertyTrackNumber(v633);
  std::string::basic_string[abi:ne200100]<0>(v878, "trackNumber");
  v879 = v634;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v896, __p, 3);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeNumber" withPropertiesToFetch:v904 propertiesToSort:v896 sortTransformer:&__block_literal_global_832 valueTransformer:&__block_literal_global_834_43943];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v897);
  v635 = v896[0];
  v896[0] = 0;
  if (v635)
  {
    operator delete(v635);
  }

  for (i31 = 0; i31 != -96; i31 -= 32)
  {
    if (v878[i31 + 23] < 0)
    {
      operator delete(*&v878[i31]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v637 = v904[0];
  v904[0] = 0;
  if (v637)
  {
    operator delete(v637);
  }

  for (i32 = 0; i32 != -64; i32 -= 32)
  {
    if (v902[i32 + 23] < 0)
    {
      operator delete(*&v902[i32]);
    }
  }

  v639 = mlcore::ItemPropertyEpisodeType(v637);
  std::string::basic_string[abi:ne200100]<0>(v899, "episodeType");
  v901 = v639;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_836];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v640 = __p[0];
  __p[0] = 0;
  if (v640)
  {
    operator delete(v640);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v641 = [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeTypeDisplayName" toMLProperty:mlcore::ItemPropertyEpisodeTypeDisplayName(v640)];
  v642 = mlcore::ItemPropertyPersistentID(v641);
  v643 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v642;
  v644 = mlcore::ItemPropertyMediaType(v643);
  v645 = std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v644;
  v646 = mlcore::TVEpisodePropertyAvailableScreenshotToken(v645);
  v647 = std::string::basic_string[abi:ne200100]<0>(v878, "availableArtworkToken");
  v879 = v646;
  v648 = mlcore::TVEpisodePropertyFetchableScreenshotToken(v647);
  v649 = std::string::basic_string[abi:ne200100]<0>(v880, "fetchableArtworkToken");
  v881 = v648;
  v650 = mlcore::TVEpisodePropertyFetchableScreenshotSourceType(v649);
  std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkSourceType");
  v883 = v650;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 5);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_849];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v651 = v899[0];
  v899[0] = 0;
  if (v651)
  {
    operator delete(v651);
  }

  for (i33 = 0; i33 != -160; i33 -= 32)
  {
    if (v882[i33 + 23] < 0)
    {
      operator delete(*&v882[i33]);
    }
  }

  v653 = [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAdded" toMLProperty:mlcore::ItemPropertyInMyLibrary(v651)];
  v654 = mlcore::ItemPropertyDateAdded(v653);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryAdded");
  v901 = v654;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_852];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v655 = __p[0];
  __p[0] = 0;
  if (v655)
  {
    operator delete(v655);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v656 = mlcore::ItemPropertyDatePlayed(v655);
  std::string::basic_string[abi:ne200100]<0>(v899, "datePlayed");
  v901 = v656;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_855];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v657 = __p[0];
  __p[0] = 0;
  if (v657)
  {
    operator delete(v657);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v658 = mlcore::ItemPropertyDateReleased(v657);
  std::string::basic_string[abi:ne200100]<0>(v899, "dateReleased");
  v901 = v658;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeReleaseDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_858_43944];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v659 = __p[0];
  __p[0] = 0;
  if (v659)
  {
    operator delete(v659);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v660 = MPModelPropertyTVEpisodeDownloadedDate;
  v661 = mlcore::ItemPropertyDateDownloaded(v659);
  std::string::basic_string[abi:ne200100]<0>(v899, "downloadedDate");
  v901 = v661;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:v660 withPropertiesToFetch:__p valueTransformer:&__block_literal_global_861];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v662 = __p[0];
  __p[0] = 0;
  if (v662)
  {
    operator delete(v662);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v663 = mlcore::ItemPropertyHasNonPurgeableAsset(v662);
  v664 = std::string::basic_string[abi:ne200100]<0>(__p, "hasNonPurgeableAsset");
  v875[1] = v663;
  v665 = mlcore::ItemPropertyIsStoreRedownloadable(v664);
  std::string::basic_string[abi:ne200100]<0>(v876, "isStoreRedownloadable");
  v877 = v665;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddEligible" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_864];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v666 = v899[0];
  v899[0] = 0;
  if (v666)
  {
    operator delete(v666);
  }

  for (i34 = 0; i34 != -16; i34 -= 8)
  {
    if (SHIBYTE(v876[i34 + 5]) < 0)
    {
      operator delete(*&v876[i34]);
    }
  }

  v668 = mlcore::ItemPropertyKeepLocal(v666);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocal");
  v901 = v668;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_867];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v669 = __p[0];
  __p[0] = 0;
  if (v669)
  {
    operator delete(v669);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v670 = mlcore::ItemPropertyKeepLocalStatus(v669);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalStatus");
  v901 = v670;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_870];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v671 = __p[0];
  __p[0] = 0;
  if (v671)
  {
    operator delete(v671);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v672 = mlcore::ItemPropertyKeepLocalStatus(v671);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalStatusReason");
  v901 = v672;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_873];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v673 = __p[0];
  __p[0] = 0;
  if (v673)
  {
    operator delete(v673);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v674 = mlcore::ItemPropertyKeepLocalConstraints(v673);
  std::string::basic_string[abi:ne200100]<0>(v899, "keepLocalConstraints");
  v901 = v674;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_876_43945];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v675 = __p[0];
  __p[0] = 0;
  if (v675)
  {
    operator delete(v675);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v676 = mlcore::ItemPropertyStoreCanonicalItemId(v675);
  std::string::basic_string[abi:ne200100]<0>(v899, "canonicalID");
  v901 = v676;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v597 mapPropertyKey:@"MPModelPropertyTVEpisodeStoreCanonicalID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_880];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v677 = __p[0];
  __p[0] = 0;
  if (v677)
  {
    operator delete(v677);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v678 = objc_opt_class();
  [(mlcore *)v597 mapRelationshipKey:@"MPModelRelationshipTVEpisodeSeason" toModelClass:v678 usingForeignPropertyBase:mlcore::ItemPropertyAlbumPersistentID(v678)];
  v679 = objc_opt_class();
  [(mlcore *)v597 mapRelationshipKey:@"MPModelRelationshipTVEpisodeShow" toModelClass:v679 usingForeignPropertyBase:mlcore::ItemPropertyItemArtistPersistentID(v679)];
  v680 = objc_opt_class();
  [(mlcore *)v597 mapRelationshipKey:@"MPModelRelationshipTVEpisodeLocalFileAsset" toModelClass:v680 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v680)];
  v681 = objc_opt_class();
  [(mlcore *)v597 mapRelationshipKey:@"MPModelRelationshipTVEpisodePlaybackPosition" toModelClass:v681 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v681)];
  v682 = objc_opt_class();
  [(mlcore *)v597 mapRelationshipKey:@"MPModelRelationshipTVEpisodeStoreAsset" toModelClass:v682 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v682)];

  v683 = MEMORY[0x1A58E12B0]();
  v684 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v683];
  v685 = mlcore::AlbumPropertyPersistentID(v684);
  v686 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v685;
  v687 = mlcore::AlbumPropertyStoreID(v686);
  std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v687;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v684 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_882];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v688 = v899[0];
  v899[0] = 0;
  if (v688)
  {
    operator delete(v688);
  }

  for (i35 = 0; i35 != -16; i35 -= 8)
  {
    if (SHIBYTE(v876[i35 + 5]) < 0)
    {
      operator delete(*&v876[i35]);
    }
  }

  [(mlcore *)v684 setEntityQueryBlock:&__block_literal_global_884];
  v690 = [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonNumber" toMLProperty:mlcore::AlbumPropertySeasonNumber([(mlcore *)v684 setAllowedItemPredicatesBlock:&__block_literal_global_895])];
  v691 = [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonDescriptionText" toMLProperty:mlcore::AlbumPropertyRepresentativeItemCollectionDescription(v690)];
  v692 = [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonYear" toMLProperty:mlcore::AlbumPropertyYear(v691)];
  v693 = mlcore::TVSeasonPropertyLatestItemDateAdded(v692);
  std::string::basic_string[abi:ne200100]<0>(v899, "libraryAdded");
  v901 = v693;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_897];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v694 = __p[0];
  __p[0] = 0;
  if (v694)
  {
    operator delete(v694);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v695 = mlcore::TVSeasonPropertyLatestItemDateDownloaded(v694);
  std::string::basic_string[abi:ne200100]<0>(v899, "downloadedDate");
  v901 = v695;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonDownloadedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_899];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v696 = __p[0];
  __p[0] = 0;
  if (v696)
  {
    operator delete(v696);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_901];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v697 = __p[0];
  __p[0] = 0;
  if (v697)
  {
    operator delete(v697);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonLibraryAddEligible" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_903];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v698 = __p[0];
  __p[0] = 0;
  if (v698)
  {
    operator delete(v698);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonHasExplicitContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_905];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v699 = __p[0];
  __p[0] = 0;
  if (v699)
  {
    operator delete(v699);
  }

  v700 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v699);
  v701 = mlcore::ItemPropertyIsExplicit(v700);
  v702 = MPMediaLibraryGetProperty(v700, v701);
  std::string::basic_string[abi:ne200100]<0>(v899, "representativeItemExplicit");
  v901 = v702;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonHasCleanContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_907];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v703 = __p[0];
  __p[0] = 0;
  if (v703)
  {
    operator delete(v703);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v704 = [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonEpisodesCount" toMLProperty:mlcore::TVSeasonPropertyEpisodeCount(v703)];
  v705 = mlcore::AlbumPropertyRepresentativeItemShowSortType(v704);
  std::string::basic_string[abi:ne200100]<0>(v899, "sortType");
  v901 = v705;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonSortType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_910];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v706 = __p[0];
  __p[0] = 0;
  if (v706)
  {
    operator delete(v706);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v707 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v706);
  v708 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v707;
  v709 = mlcore::AlbumPropertyRepresentativeItemMediaType(v708);
  v710 = std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v709;
  v711 = mlcore::AlbumPropertyRepresentativeItemAvailableArtworkToken(v710);
  v712 = std::string::basic_string[abi:ne200100]<0>(v878, "availableArtworkToken");
  v879 = v711;
  v713 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkToken(v712);
  v714 = std::string::basic_string[abi:ne200100]<0>(v880, "fetchableArtworkToken");
  v881 = v713;
  v715 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkSourceType(v714);
  std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkSourceType");
  v883 = v715;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 5);
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_912];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v716 = v899[0];
  v899[0] = 0;
  if (v716)
  {
    operator delete(v716);
  }

  for (i36 = 0; i36 != -160; i36 -= 32)
  {
    if (v882[i36 + 23] < 0)
    {
      operator delete(*&v882[i36]);
    }
  }

  v718 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v716);
  v719 = mlcore::ItemPropertyStoreTVSeasonCanonicalItemId(v718);
  v720 = MPMediaLibraryGetProperty(v718, v719);
  std::string::basic_string[abi:ne200100]<0>(v899, "storeCanonicalID");
  v901 = v720;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v684 mapPropertyKey:@"MPModelPropertyTVSeasonStoreCanonicalID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_915];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v721 = __p[0];
  __p[0] = 0;
  if (v721)
  {
    operator delete(v721);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v722 = objc_opt_class();
  v723 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v722);
  v724 = mlcore::ItemPropertyItemArtistPersistentID(v723);
  v725 = MPMediaLibraryGetProperty(v723, v724);
  [(mlcore *)v684 mapRelationshipKey:@"MPModelRelationshipTVSeasonShow" toModelClass:v722 usingForeignPropertyBase:v725, __p[0]];
  v726 = objc_opt_class();
  [(mlcore *)v684 mapRelationshipKey:@"MPModelRelationshipTVSeasonRepresentativeEpisode" toModelClass:v726 usingForeignPropertyBase:mlcore::AlbumPropertyRepresentativeItemPersistentID(v726)];

  v727 = MEMORY[0x1A58E1220]();
  v728 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v727];
  v729 = mlcore::ItemArtistPropertyPersistentID(v728);
  v730 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v729;
  v731 = mlcore::ItemArtistPropertyStoreID(v730);
  std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v731;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v728 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_918];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v732 = v899[0];
  v899[0] = 0;
  if (v732)
  {
    operator delete(v732);
  }

  for (i37 = 0; i37 != -16; i37 -= 8)
  {
    if (SHIBYTE(v876[i37 + 5]) < 0)
    {
      operator delete(*&v876[i37]);
    }
  }

  [(mlcore *)v728 setEntityQueryBlock:&__block_literal_global_920];
  v734 = mlcore::ItemArtistPropertySeriesName([(mlcore *)v728 setAllowedItemPredicatesBlock:&__block_literal_global_926]);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v734;
  v735 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  HasSeriesName = mlcore::TVShowPropertyHasSeriesName(v735);
  v737 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = HasSeriesName;
  v738 = mlcore::TVShowPropertySeriesOrder(v737);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v738;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v728 mapPropertyKey:@"MPModelPropertyTVShowTitle" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_928 valueTransformer:&__block_literal_global_930];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v739 = v904[0];
  v904[0] = 0;
  if (v739)
  {
    operator delete(v739);
  }

  for (i38 = 0; i38 != -16; i38 -= 8)
  {
    if (SHIBYTE(v876[i38 + 5]) < 0)
    {
      operator delete(*&v876[i38]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v741 = v899[0];
  v899[0] = 0;
  if (v741)
  {
    operator delete(v741);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v742 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v741);
  v743 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v742;
  v744 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v743);
  v745 = mlcore::ItemPropertyMediaType(v744);
  v746 = MPMediaLibraryGetProperty(v744, v745);
  v747 = std::string::basic_string[abi:ne200100]<0>(v876, "mediaType");
  v877 = v746;
  v748 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v747);
  v749 = mlcore::ItemPropertyAvailableArtworkToken(v748);
  v750 = MPMediaLibraryGetProperty(v748, v749);
  v751 = std::string::basic_string[abi:ne200100]<0>(v878, "availableArtworkToken");
  v879 = v750;
  v752 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v751);
  v753 = mlcore::ItemPropertyFetchableArtworkToken(v752);
  v754 = MPMediaLibraryGetProperty(v752, v753);
  v755 = std::string::basic_string[abi:ne200100]<0>(v880, "fetchableArtworkToken");
  v881 = v754;
  v756 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v755);
  v757 = mlcore::ItemPropertyFetchableArtworkSourceType(v756);
  v758 = MPMediaLibraryGetProperty(v756, v757);
  std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkSourceType");
  v883 = v758;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 5);
  [(mlcore *)v728 mapPropertyKey:@"MPModelPropertyTVShowArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_932];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v759 = v899[0];
  v899[0] = 0;
  if (v759)
  {
    operator delete(v759);
  }

  for (i39 = 0; i39 != -160; i39 -= 32)
  {
    if (v882[i39 + 23] < 0)
    {
      operator delete(*&v882[i39]);
    }
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v728 mapPropertyKey:@"MPModelPropertyTVShowEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_934];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v761 = __p[0];
  __p[0] = 0;
  if (v761)
  {
    operator delete(v761);
  }

  v762 = [(mlcore *)v728 mapPropertyKey:@"MPModelPropertyTVShowEpisodeCount" toMLProperty:mlcore::TVShowPropertyEpisodeCount(v761)];
  v763 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v762);
  v764 = mlcore::ItemPropertyStoreTVShowCanonicalItemId(v763);
  v765 = MPMediaLibraryGetProperty(v763, v764);
  std::string::basic_string[abi:ne200100]<0>(v899, "canonicalID");
  v901 = v765;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v728 mapPropertyKey:@"MPModelPropertyTVShowStoreCanonicalID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_936];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v766 = __p[0];
  __p[0] = 0;
  if (v766)
  {
    operator delete(v766);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v767 = objc_opt_class();
  v768 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v767);
  v769 = mlcore::ItemPropertyAlbumArtistPersistentID(v768);
  v770 = MPMediaLibraryGetProperty(v768, v769);
  [(mlcore *)v728 mapRelationshipKey:@"MPModelRelationshipTVShowCreator" toModelClass:v767 usingForeignPropertyBase:v770, __p[0]];

  v771 = MEMORY[0x1A58E11E0]();
  v772 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v771];
  v773 = mlcore::ArtistPropertyPersistentID(v772);
  v774 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v773;
  v775 = mlcore::ArtistPropertyStoreID(v774);
  std::string::basic_string[abi:ne200100]<0>(v876, "storeID");
  v877 = v775;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v772 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_939];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v776 = v899[0];
  v899[0] = 0;
  if (v776)
  {
    operator delete(v776);
  }

  for (i40 = 0; i40 != -16; i40 -= 8)
  {
    if (SHIBYTE(v876[i40 + 5]) < 0)
    {
      operator delete(*&v876[i40]);
    }
  }

  v778 = mlcore::ArtistPropertyName(v776);
  std::string::basic_string[abi:ne200100]<0>(v896, "name");
  v898 = v778;
  v779 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, v896, 1);
  v780 = mlcore::ArtistPropertyHasName(v779);
  v781 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v875[1] = v780;
  v782 = mlcore::ArtistPropertyOrder(v781);
  std::string::basic_string[abi:ne200100]<0>(v876, "nameOrder");
  v877 = v782;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v904, __p, 2);
  [(mlcore *)v772 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v899 propertiesToSort:v904 sortTransformer:&__block_literal_global_941 valueTransformer:&__block_literal_global_943];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v905);
  v783 = v904[0];
  v904[0] = 0;
  if (v783)
  {
    operator delete(v783);
  }

  for (i41 = 0; i41 != -16; i41 -= 8)
  {
    if (SHIBYTE(v876[i41 + 5]) < 0)
    {
      operator delete(*&v876[i41]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v785 = v899[0];
  v899[0] = 0;
  if (v785)
  {
    operator delete(v785);
  }

  if (SHIBYTE(v897) < 0)
  {
    operator delete(v896[0]);
  }

  v786 = mlcore::ArtistPropertyPersistentID(v785);
  v787 = std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v875[1] = v786;
  v788 = mlcore::ArtistPropertyAvailableArtworkToken(v787);
  v789 = std::string::basic_string[abi:ne200100]<0>(v876, "artistAvailableArtworkToken");
  v877 = v788;
  v790 = mlcore::ArtistPropertyFetchableArtworkToken(v789);
  v791 = std::string::basic_string[abi:ne200100]<0>(v878, "artistFetchableArtworkToken");
  v879 = v790;
  v792 = mlcore::ArtistPropertyFetchableArtworkSourceType(v791);
  std::string::basic_string[abi:ne200100]<0>(v880, "artistFetchableArtworkSourceType");
  v881 = v792;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 4);
  [(mlcore *)v772 mapPropertyKey:@"MPModelPropertyTVShowCreatorArtwork" withPropertiesToFetch:v899 valueTransformer:&__block_literal_global_945];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v793 = v899[0];
  v899[0] = 0;
  if (v793)
  {
    operator delete(v793);
  }

  for (i42 = 0; i42 != -128; i42 -= 32)
  {
    if (v880[i42 + 23] < 0)
    {
      operator delete(*&v880[i42]);
    }
  }

  v795 = MEMORY[0x1A58E1210]();
  v796 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v795];
  v797 = mlcore::PersonPropertyPersistentID(v796);
  v798 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v875[1] = v797;
  v799 = mlcore::PersonPropertyCloudIdentifier(v798);
  std::string::basic_string[abi:ne200100]<0>(v876, "socialProfileID");
  v877 = v799;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v796 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_948];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v800 = v899[0];
  v899[0] = 0;
  if (v800)
  {
    operator delete(v800);
  }

  for (i43 = 0; i43 != -16; i43 -= 8)
  {
    if (SHIBYTE(v876[i43 + 5]) < 0)
    {
      operator delete(*&v876[i43]);
    }
  }

  v802 = [(mlcore *)v796 mapPropertyKey:@"MPModelPropertyPersonName" toMLProperty:mlcore::PersonPropertyName(v800)];
  v803 = [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonUncensoredName" toMLProperty:mlcore::PersonPropertyName(v802)];
  [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonHandle" toMLProperty:mlcore::PersonPropertyHandle(v803)];
  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonBiography" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_950];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v804 = __p[0];
  __p[0] = 0;
  if (v804)
  {
    operator delete(v804);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonPendingRequestsCount" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_952];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v805 = __p[0];
  __p[0] = 0;
  if (v805)
  {
    operator delete(v805);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonIsPrivate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_954];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v806 = __p[0];
  __p[0] = 0;
  if (v806)
  {
    operator delete(v806);
  }

  *__p = 0u;
  *v875 = 0u;
  v876[0] = 1065353216;
  [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonIsVerified" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_956];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v807 = __p[0];
  __p[0] = 0;
  if (v807)
  {
    operator delete(v807);
  }

  v808 = mlcore::PersonPropertyImageURL(v807);
  std::string::basic_string[abi:ne200100]<0>(v899, "imageURL");
  v901 = v808;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_959];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v809 = __p[0];
  __p[0] = 0;
  if (v809)
  {
    operator delete(v809);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  [(mlcore *)v796 mapPropertyKey:@"MPModelPropertySocialPersonHasLightweightProfile" toMLProperty:mlcore::PersonPropertyHasLightweightProfile(v809)];

  v810 = MEMORY[0x1A58DFA10]();
  v811 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v810];
  v812 = mlcore::PlaylistAuthorPropertyPersistentID(v811);
  v813 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v875[1] = v812;
  v814 = mlcore::PlaylistAuthorSocialProfileID(v813);
  std::string::basic_string[abi:ne200100]<0>(v876, "socialProfileID");
  v877 = v814;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v899, __p, 2);
  [(mlcore *)v811 mapIdentifierMLProperties:v899 identifierCreationBlock:&__block_literal_global_976];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v900);
  v815 = v899[0];
  v899[0] = 0;
  if (v815)
  {
    operator delete(v815);
  }

  for (i44 = 0; i44 != -16; i44 -= 8)
  {
    if (SHIBYTE(v876[i44 + 5]) < 0)
    {
      operator delete(*&v876[i44]);
    }
  }

  v817 = [(mlcore *)v811 mapPropertyKey:@"MPModelPropertyPlaylistAuthorRole" toMLProperty:mlcore::PlaylistAuthorPropertyRole([(mlcore *)v811 setEntityQueryBlock:&__block_literal_global_978])];
  v818 = [(mlcore *)v811 mapPropertyKey:@"MPModelPropertyPlaylistAuthorIsPendingApproval" toMLProperty:mlcore::PlaylistAuthorPropertyIsPending(v817)];
  [(mlcore *)v811 mapPropertyKey:@"MPModelPropertyPlaylistAuthorPosition" toMLProperty:mlcore::PlaylistAuthorPropertyPosition(v818)];
  v819 = objc_opt_class();
  v820 = mlcore::PlaylistAuthorPropertyPersistentID(v819);
  v821 = mlcore::PlaylistAuthorPropertyPersonPersistentID(v820);
  [(mlcore *)v811 mapRelationshipKey:@"MPModelRelationshipPlaylistAuthorSocialProfile" toModelClass:v819 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v820, v821)];
  v822 = objc_opt_class();
  v823 = mlcore::PlaylistAuthorPropertyPersistentID(v822);
  v824 = mlcore::PlaylistAuthorPropertyContainerPersistentID(v823);
  [(mlcore *)v811 mapRelationshipKey:@"MPModelRelationshipPlaylistAuthorPlaylist" toModelClass:v822 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v823, v824)];

  v825 = MEMORY[0x1A58DFE70]();
  v826 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v825];
  v827 = mlcore::PlaylistItemReactionPropertyPersistentID(v826);
  std::string::basic_string[abi:ne200100]<0>(v899, "itemPID");
  v901 = v827;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v826 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_988];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v828 = __p[0];
  __p[0] = 0;
  if (v828)
  {
    operator delete(v828);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v829 = [(mlcore *)v826 mapPropertyKey:@"MPModelPropertyPlaylistEntryReactionText" toMLProperty:mlcore::PlaylistItemReactionPropertyReactionText([(mlcore *)v826 setEntityQueryBlock:&__block_literal_global_990, __p[0]])];
  v830 = mlcore::PlaylistItemReactionPropertyDate(v829);
  std::string::basic_string[abi:ne200100]<0>(v899, "date");
  v901 = v830;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v826 mapPropertyKey:@"MPModelPropertyPlaylistEntryReactionDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1000];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v831 = __p[0];
  __p[0] = 0;
  if (v831)
  {
    operator delete(v831);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v832 = objc_opt_class();
  v833 = mlcore::PlaylistItemReactionPropertyPersistentID(v832);
  v834 = mlcore::PlaylistItemReactionPropertyPersonPersistentID(v833);
  [(mlcore *)v826 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryReactionSocialProfile" toModelClass:v832 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v833, v834)];
  v835 = objc_opt_class();
  v836 = mlcore::PlaylistItemReactionPropertyPersistentID(v835);
  v837 = mlcore::PlaylistItemReactionPropertyContainerItemPersistentID(v836);
  [(mlcore *)v826 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryReactionPlaylistEntry" toModelClass:v835 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v836, v837)];

  v838 = MEMORY[0x1A58DF750]();
  v839 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v838];
  v840 = mlcore::LibraryPinPropertyPersistentID(v839);
  std::string::basic_string[abi:ne200100]<0>(v899, "pid");
  v901 = v840;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_1004];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v841 = __p[0];
  __p[0] = 0;
  if (v841)
  {
    operator delete(v841);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v842 = mlcore::LibraryPinPropertyEntityType([(mlcore *)v839 setEntityQueryBlock:&__block_literal_global_1006, __p[0]]);
  std::string::basic_string[abi:ne200100]<0>(v899, "entityType");
  v901 = v842;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapPropertyKey:@"MPModelPropertyLibraryPinEntityType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1013];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v843 = __p[0];
  __p[0] = 0;
  if (v843)
  {
    operator delete(v843);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v844 = mlcore::LibraryPinPropertyPosition(v843);
  std::string::basic_string[abi:ne200100]<0>(v899, "position");
  v901 = v844;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapPropertyKey:@"MPModelPropertyLibraryPinPosition" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1015];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v845 = __p[0];
  __p[0] = 0;
  if (v845)
  {
    operator delete(v845);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v846 = mlcore::LibraryPinPropertyPersistentID(v845);
  std::string::basic_string[abi:ne200100]<0>(v899, "persistentID");
  v901 = v846;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapPropertyKey:@"MPModelPropertyLibraryPinPersistentID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1017];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v847 = __p[0];
  __p[0] = 0;
  if (v847)
  {
    operator delete(v847);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v848 = mlcore::LibraryPinPropertyEntityPersistentID(v847);
  std::string::basic_string[abi:ne200100]<0>(v899, "entityPersistentID");
  v901 = v848;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapPropertyKey:@"MPModelPropertyLibraryPinEntityPersistentID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1020];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v849 = __p[0];
  __p[0] = 0;
  if (v849)
  {
    operator delete(v849);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v850 = mlcore::LibraryPinPropertyDefaultAction(v849);
  std::string::basic_string[abi:ne200100]<0>(v899, "defaultAction");
  v901 = v850;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapPropertyKey:@"MPModelPropertyLibraryPinDefaultAction" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1023];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v851 = __p[0];
  __p[0] = 0;
  if (v851)
  {
    operator delete(v851);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v852 = mlcore::LibraryPinPropertyPositionUUID(v851);
  std::string::basic_string[abi:ne200100]<0>(v899, "positionUUID");
  v901 = v852;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapPropertyKey:@"MPModelPropertyLibraryPinPositionUUID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1025];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v853 = __p[0];
  __p[0] = 0;
  if (v853)
  {
    operator delete(v853);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v854 = MPModelRelationshipLibraryPinPlaylist;
  v855 = objc_opt_class();
  v856 = mlcore::LibraryPinPropertyEntityPersistentID(v855);
  v857 = mlcore::LibraryPinPropertyEntityType(v856);
  std::string::basic_string[abi:ne200100]<0>(v899, "entityType");
  v901 = v857;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapRelationshipKey:v854 toModelClass:v855 transient:1 usingForeignPropertyBase:v856 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1027];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v858 = __p[0];
  __p[0] = 0;
  if (v858)
  {
    operator delete(v858);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v859 = MPModelRelationshipLibraryPinAlbum;
  v860 = objc_opt_class();
  v861 = mlcore::LibraryPinPropertyEntityPersistentID(v860);
  v862 = mlcore::LibraryPinPropertyEntityType(v861);
  std::string::basic_string[abi:ne200100]<0>(v899, "entityType");
  v901 = v862;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapRelationshipKey:v859 toModelClass:v860 transient:1 usingForeignPropertyBase:v861 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1029];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v863 = __p[0];
  __p[0] = 0;
  if (v863)
  {
    operator delete(v863);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v864 = MPModelRelationshipLibraryPinSong;
  v865 = objc_opt_class();
  v866 = mlcore::LibraryPinPropertyEntityPersistentID(v865);
  v867 = mlcore::LibraryPinPropertyEntityType(v866);
  std::string::basic_string[abi:ne200100]<0>(v899, "entityType");
  v901 = v867;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapRelationshipKey:v864 toModelClass:v865 transient:1 usingForeignPropertyBase:v866 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1031];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v868 = __p[0];
  __p[0] = 0;
  if (v868)
  {
    operator delete(v868);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }

  v869 = MPModelRelationshipLibraryPinArtist;
  v870 = objc_opt_class();
  v871 = mlcore::LibraryPinPropertyEntityPersistentID(v870);
  v872 = mlcore::LibraryPinPropertyEntityType(v871);
  std::string::basic_string[abi:ne200100]<0>(v899, "entityType");
  v901 = v872;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v899, 1);
  [(mlcore *)v839 mapRelationshipKey:v869 toModelClass:v870 transient:1 usingForeignPropertyBase:v871 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1033];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v875[0]);
  v873 = __p[0];
  __p[0] = 0;
  if (v873)
  {
    operator delete(v873);
  }

  if (SHIBYTE(v900) < 0)
  {
    operator delete(v899[0]);
  }
}

void sub_1A262F5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(&__p);
  if (*(v15 - 177) < 0)
  {
    operator delete(*(v15 - 200));
  }

  if (a2 == 2)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = MEMORY[0x1E695DF30];
    v20 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v18 + 24))(v18, &__p);
    if (*(v15 - 177) >= 0)
    {
      v21 = v15 - 200;
    }

    else
    {
      v21 = *(v15 - 200);
    }

    v22 = [v20 stringWithUTF8String:v21];
    v23 = [v19 exceptionWithName:@"MediaPlatform" reason:v22 userInfo:0];
    v24 = v23;

    if (*(v15 - 177) < 0)
    {
      operator delete(*(v15 - 200));
    }

    objc_exception_throw(v23);
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = MEMORY[0x1E695DF30];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v25 + 16))(v25)];
    v28 = [v26 exceptionWithName:*MEMORY[0x1E695D920] reason:v27 userInfo:0];
    v29 = v28;

    objc_exception_throw(v28);
  }

  _Unwind_Resume(a1);
}

void _MPMLInitPropertySongMap(void)
{
  v160 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1A58E1100]();
  v1 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v0];
  v2 = mlcore::ItemPropertyStoreID(v1);
  v3 = std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  *(&v138 + 1) = v2;
  v4 = mlcore::ItemPropertyStoreCloudID(v3);
  v5 = std::string::basic_string[abi:ne200100]<0>(v139, "cloudID");
  v140 = v4;
  v6 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v5);
  v7 = std::string::basic_string[abi:ne200100]<0>(v141, "cloudUniversalLibraryID");
  v142 = v6;
  v8 = mlcore::ItemPropertyPersistentID(v7);
  v9 = std::string::basic_string[abi:ne200100]<0>(v143, "pid");
  v144 = v8;
  v10 = mlcore::ItemPropertyExcludeFromShuffle(v9);
  v11 = std::string::basic_string[abi:ne200100]<0>(v145, "excludeFromShuffle");
  v146 = v10;
  v12 = mlcore::ItemPropertySubscriptionStoreItemID(v11);
  v13 = std::string::basic_string[abi:ne200100]<0>(v147, "subscriptionStoreID");
  v148 = v12;
  v14 = mlcore::ItemPropertyStoreCloudAlbumID(v13);
  v15 = std::string::basic_string[abi:ne200100]<0>(v149, "storeCloudAlbumID");
  v150 = v14;
  v16 = mlcore::ItemPropertySyncID(v15);
  v17 = std::string::basic_string[abi:ne200100]<0>(v151, "syncID");
  v152 = v16;
  v18 = mlcore::ItemPropertyReportingStoreItemID(v17);
  v19 = std::string::basic_string[abi:ne200100]<0>(v153, "reportingStoreItemID");
  v154 = v18;
  v20 = mlcore::ItemPropertyAssetStoreItemID(v19);
  std::string::basic_string[abi:ne200100]<0>(v155, "assetStoreItemID");
  v156 = v20;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, __p, 10);
  [(mlcore *)v1 mapIdentifierMLProperties:v157 identifierCreationBlock:&__block_literal_global_69];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v21 = v157[0];
  v157[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = 40;
  do
  {
    if (*(&v135 + v22 * 8) < 0)
    {
      operator delete(v134[v22]);
    }

    v22 -= 4;
  }

  while (v22 * 8);
  [(mlcore *)v1 setEntityQueryBlock:&__block_literal_global_77_44103];
  v23 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDiscNumber" toMLProperty:mlcore::ItemPropertyDiscNumber([(mlcore *)v1 setAllowedItemPredicatesBlock:&__block_literal_global_90])];
  v24 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongExplicit" toMLProperty:mlcore::ItemPropertyIsExplicit(v23)];
  v25 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongHasVideo" toMLProperty:mlcore::ItemPropertyIsVideo(v24)];
  v26 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongCopyrightText" toMLProperty:mlcore::ItemPropertyCopyright(v25)];
  v27 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongHasCloudSyncSource" toMLProperty:mlcore::ItemPropertyHasCloudSyncSource(v26)];
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongYear" toMLProperty:mlcore::ItemPropertyYear(v27)];
  *__p = 0u;
  v138 = 0u;
  v139[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongHasCredits" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_93];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v28 = __p[0];
  __p[0] = 0;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = mlcore::ItemPropertyUserRating(v28);
  std::string::basic_string[abi:ne200100]<0>(v157, "userRating");
  v159 = v29;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongUserRating" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_96];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v30 = __p[0];
  __p[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v31 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongCloudStatus" toMLProperty:mlcore::ItemPropertyStoreCloudStatus(v30)];
  v32 = mlcore::ItemPropertyTitle(v31);
  std::string::basic_string[abi:ne200100]<0>(v134, "title");
  v136 = v32;
  v33 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v134, 1);
  v34 = mlcore::ItemPropertyTitleOrder(v33);
  std::string::basic_string[abi:ne200100]<0>(v131, "titleOrder");
  v133 = v34;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, v131, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongTitle" withPropertiesToFetch:__p propertiesToSort:v157 sortTransformer:&__block_literal_global_101 filterTransformer:&__block_literal_global_104 valueTransformer:&__block_literal_global_109];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v35 = v157[0];
  v157[0] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v36 = __p[0];
  __p[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v37 = [(mlcore *)v1 mapPropertyKey:@"_MPModelPropertySongTrackCount" toMLProperty:mlcore::ItemPropertyAlbumTrackCount(v36)];
  v38 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongPlayCount" toMLProperty:mlcore::ItemPropertyPlayCountUser(v37)];
  v39 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongSkipCount" toMLProperty:mlcore::ItemPropertySkipCountUser(v38)];
  v40 = mlcore::ItemPropertyTrackNumber(v39);
  std::string::basic_string[abi:ne200100]<0>(v134, "trackNumber");
  v136 = v40;
  v41 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v134, 1);
  HasTrackNumber = mlcore::ItemPropertyHasTrackNumber(v41);
  std::string::basic_string[abi:ne200100]<0>(v131, "hasTrackNumber");
  v133 = HasTrackNumber;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, v131, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongTrackNumber" withPropertiesToFetch:__p propertiesToSort:v157 sortTransformer:&__block_literal_global_113 valueTransformer:&__block_literal_global_115];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v43 = v157[0];
  v157[0] = 0;
  if (v43)
  {
    operator delete(v43);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v44 = __p[0];
  __p[0] = 0;
  if (v44)
  {
    operator delete(v44);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v45 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongGrouping" toMLProperty:mlcore::ItemPropertyGrouping(v44)];
  v46 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalWork" toMLProperty:mlcore::ItemPropertyClassicalWork(v45)];
  v47 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalMovementCount" toMLProperty:mlcore::ItemPropertyClassicalMovementCount(v46)];
  v48 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalMovementNumber" toMLProperty:mlcore::ItemPropertyClassicalMovementNumber(v47)];
  v49 = mlcore::ItemPropertyClassicalMovement(v48);
  std::string::basic_string[abi:ne200100]<0>(v134, "classicalMovement");
  v136 = v49;
  v50 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v134, 1);
  v51 = mlcore::ItemPropertyClassicalMovementNumber(v50);
  std::string::basic_string[abi:ne200100]<0>(v131, "classicalMovementNumber");
  v133 = v51;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, v131, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalMovement" withPropertiesToFetch:__p propertiesToSort:v157 sortTransformer:&__block_literal_global_119 valueTransformer:&__block_literal_global_121];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v52 = v157[0];
  v157[0] = 0;
  if (v52)
  {
    operator delete(v52);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v53 = __p[0];
  __p[0] = 0;
  if (v53)
  {
    operator delete(v53);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v54 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongShouldShowComposer" toMLProperty:mlcore::ItemPropertyShowComposerAsArtist(v53)];
  v55 = mlcore::ItemPropertyVolumeNormalization(v54);
  std::string::basic_string[abi:ne200100]<0>(v157, "volumeNormalization");
  v159 = v55;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongVolumeNormalization" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_124];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v56 = __p[0];
  __p[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v57 = mlcore::ItemPropertyDurationInSamples(v56);
  v58 = std::string::basic_string[abi:ne200100]<0>(__p, "durationInSamples");
  *(&v138 + 1) = v57;
  v59 = mlcore::ItemPropertyGaplessHeuristicInfo(v58);
  v60 = std::string::basic_string[abi:ne200100]<0>(v139, "gaplessHeuristicInfo");
  v140 = v59;
  v61 = mlcore::ItemPropertyGaplessEncodingDelay(v60);
  v62 = std::string::basic_string[abi:ne200100]<0>(v141, "gaplessEncodingDelay");
  v142 = v61;
  v63 = mlcore::ItemPropertyGaplessEncodingDrain(v62);
  v64 = std::string::basic_string[abi:ne200100]<0>(v143, "gaplessEncodingDrain");
  v144 = v63;
  FrameResync = mlcore::ItemPropertyGaplessLastFrameResync(v64);
  std::string::basic_string[abi:ne200100]<0>(v145, "gaplessLastFrameResync");
  v146 = FrameResync;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, __p, 5);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongGaplessInfo" withPropertiesToFetch:v157 valueTransformer:&__block_literal_global_131];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v66 = v157[0];
  v157[0] = 0;
  if (v66)
  {
    operator delete(v66);
  }

  for (i = 0; i != -160; i -= 32)
  {
    if (v145[i + 23] < 0)
    {
      operator delete(*&v145[i]);
    }
  }

  v68 = mlcore::ItemPropertyRelativeVolume(v66);
  std::string::basic_string[abi:ne200100]<0>(v157, "relativeVolume");
  v159 = v68;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongVolumeAdjustment" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_135];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v69 = __p[0];
  __p[0] = 0;
  if (v69)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v70 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongBeatsPerMinute" toMLProperty:mlcore::ItemPropertyBPM(v69)];
  v71 = mlcore::ItemPropertyTotalTime(v70);
  std::string::basic_string[abi:ne200100]<0>(v157, "time");
  v159 = v71;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_138];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v72 = __p[0];
  __p[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v73 = mlcore::ItemPropertyPersistentID(v72);
  v74 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  *(&v138 + 1) = v73;
  v75 = mlcore::ItemPropertyMediaType(v74);
  v76 = std::string::basic_string[abi:ne200100]<0>(v139, "mediaType");
  v140 = v75;
  v77 = mlcore::ItemPropertyAvailableArtworkToken(v76);
  v78 = std::string::basic_string[abi:ne200100]<0>(v141, "availableArtworkToken");
  v142 = v77;
  v79 = mlcore::ItemPropertyFetchableArtworkToken(v78);
  v80 = std::string::basic_string[abi:ne200100]<0>(v143, "fetchableArtworkToken");
  v144 = v79;
  v81 = mlcore::ItemPropertyFetchableArtworkSourceType(v80);
  std::string::basic_string[abi:ne200100]<0>(v145, "fetchableArtworkSourceType");
  v146 = v81;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, __p, 5);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongArtwork" withPropertiesToFetch:v157 valueTransformer:&__block_literal_global_145];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v82 = v157[0];
  v157[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  for (j = 0; j != -160; j -= 32)
  {
    if (v145[j + 23] < 0)
    {
      operator delete(*&v145[j]);
    }
  }

  v84 = mlcore::ItemPropertyHLSAudioCapability(v82);
  v85 = std::string::basic_string[abi:ne200100]<0>(__p, "hlsAudioCapability");
  *(&v138 + 1) = v84;
  IsMasteredForiTunes = mlcore::ItemPropertyIsMasteredForiTunes(v85);
  std::string::basic_string[abi:ne200100]<0>(v139, "masteredForiTunes");
  v140 = IsMasteredForiTunes;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, __p, 2);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongTraits" withPropertiesToFetch:v157 valueTransformer:&__block_literal_global_149_44113];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v87 = v157[0];
  v157[0] = 0;
  if (v87)
  {
    operator delete(v87);
  }

  for (k = 0; k != -16; k -= 8)
  {
    if (SHIBYTE(v139[k + 5]) < 0)
    {
      operator delete(*&v139[k]);
    }
  }

  v89 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongArtistUploadedContent" toMLProperty:mlcore::ItemPropertyIsArtistUploadedContent(v87)];
  v90 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLibraryAdded" toMLProperty:mlcore::ItemPropertyInMyLibrary(v89)];
  v91 = mlcore::ItemPropertyDateAdded(v90);
  std::string::basic_string[abi:ne200100]<0>(v157, "libraryAdded");
  v159 = v91;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_153];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v92 = __p[0];
  __p[0] = 0;
  if (v92)
  {
    operator delete(v92);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v93 = mlcore::ItemPropertyDateDownloaded(v92);
  std::string::basic_string[abi:ne200100]<0>(v157, "downloadedDate");
  v159 = v93;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDownloadedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_156];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v94 = __p[0];
  __p[0] = 0;
  if (v94)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v95 = mlcore::ItemPropertyDatePlayed(v94);
  std::string::basic_string[abi:ne200100]<0>(v157, "datePlayed");
  v159 = v95;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_159];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v96 = __p[0];
  __p[0] = 0;
  if (v96)
  {
    operator delete(v96);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  HasNonPurgeableAsset = mlcore::ItemPropertyHasNonPurgeableAsset(v96);
  v98 = std::string::basic_string[abi:ne200100]<0>(__p, "hasNonPurgeableAsset");
  *(&v138 + 1) = HasNonPurgeableAsset;
  IsStoreRedownloadable = mlcore::ItemPropertyIsStoreRedownloadable(v98);
  std::string::basic_string[abi:ne200100]<0>(v139, "isStoreRedownloadable");
  v140 = IsStoreRedownloadable;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v157, __p, 2);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLibraryAddEligible" withPropertiesToFetch:v157 valueTransformer:&__block_literal_global_163];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v158);
  v100 = v157[0];
  v157[0] = 0;
  if (v100)
  {
    operator delete(v100);
  }

  for (m = 0; m != -16; m -= 8)
  {
    if (SHIBYTE(v139[m + 5]) < 0)
    {
      operator delete(*&v139[m]);
    }
  }

  v102 = mlcore::ItemPropertyKeepLocal(v100);
  std::string::basic_string[abi:ne200100]<0>(v157, "keepLocal");
  v159 = v102;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_166];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v103 = __p[0];
  __p[0] = 0;
  if (v103)
  {
    operator delete(v103);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v104 = mlcore::ItemPropertyKeepLocalStatus(v103);
  std::string::basic_string[abi:ne200100]<0>(v157, "keepLocalStatus");
  v159 = v104;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_169_44114];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v105 = __p[0];
  __p[0] = 0;
  if (v105)
  {
    operator delete(v105);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v106 = mlcore::ItemPropertyKeepLocalStatusReason(v105);
  std::string::basic_string[abi:ne200100]<0>(v157, "keepLocalStatusReason");
  v159 = v106;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_172_44115];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v107 = __p[0];
  __p[0] = 0;
  if (v107)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v108 = mlcore::ItemPropertyKeepLocalConstraints(v107);
  std::string::basic_string[abi:ne200100]<0>(v157, "keepLocalConstraints");
  v159 = v108;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_175];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v109 = __p[0];
  __p[0] = 0;
  if (v109)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v110 = mlcore::ItemPropertyLikedState(v109);
  std::string::basic_string[abi:ne200100]<0>(v157, "likedState");
  v159 = v110;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_178_44116];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v111 = __p[0];
  __p[0] = 0;
  if (v111)
  {
    operator delete(v111);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v112 = mlcore::ItemPropertyLikedState(v111);
  std::string::basic_string[abi:ne200100]<0>(v157, "likedState");
  v159 = v112;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_180];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v113 = __p[0];
  __p[0] = 0;
  if (v113)
  {
    operator delete(v113);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v114 = mlcore::ItemPropertyLikedStateChangedDate(v113);
  std::string::basic_string[abi:ne200100]<0>(v157, "likedStateChangedDate");
  v159 = v114;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_183];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v115 = __p[0];
  __p[0] = 0;
  if (v115)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v116 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongSupportsExtendedLyricsAttribute" toMLProperty:mlcore::ItemPropertyStoreExtendedLyricsAttribute(v115)];
  v117 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongIsPinned" toMLProperty:mlcore::ItemPropertyIsLibraryPinned(v116)];
  v118 = mlcore::ItemPropertyImmersiveDeepLinkURL(v117);
  std::string::basic_string[abi:ne200100]<0>(v157, "immersiveURL");
  v159 = v118;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongImmersiveDeeplinkURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_186];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v119 = __p[0];
  __p[0] = 0;
  if (v119)
  {
    operator delete(v119);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v120 = mlcore::ItemPropertyDateReleased(v119);
  std::string::basic_string[abi:ne200100]<0>(v157, "releasedDate");
  v159 = v120;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v157, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDateReleased" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_190];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v121 = __p[0];
  __p[0] = 0;
  if (v121)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  v122 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongArtist" toModelClass:v122 usingForeignPropertyBase:mlcore::ItemPropertyItemArtistPersistentID(v122)];
  v123 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongAlbum" toModelClass:v123 usingForeignPropertyBase:mlcore::ItemPropertyAlbumPersistentID(v123)];
  v124 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongComposer" toModelClass:v124 usingForeignPropertyBase:mlcore::ItemPropertyComposerPersistentID(v124)];
  v125 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongGenre" toModelClass:v125 usingForeignPropertyBase:mlcore::ItemPropertyGenrePersistentID(v125)];
  v126 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongLocalFileAsset" toModelClass:v126 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v126)];
  v127 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongLyrics" toModelClass:v127 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v127)];
  v128 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongHomeSharingAsset" toModelClass:v128 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v128)];
  v129 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongPlaybackPosition" toModelClass:v129 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v129)];
  v130 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongStoreAsset" toModelClass:v130 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v130)];
}

void sub_1A2635AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(&a23);
  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  if (a2 == 2)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = MEMORY[0x1E695DF30];
    v34 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a23);
    (*(*v32 + 24))(v32, &a23);
    if (*(v29 - 73) >= 0)
    {
      v35 = v29 - 96;
    }

    else
    {
      v35 = *(v29 - 96);
    }

    v36 = [v34 stringWithUTF8String:v35];
    v37 = [v33 exceptionWithName:@"MediaPlatform" reason:v36 userInfo:0];
    v38 = v37;

    if (*(v29 - 73) < 0)
    {
      operator delete(*(v29 - 96));
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

void _MPMLInitPropertyPlaylistMap(void)
{
  v210 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1A58E1290]();
  v1 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v0];
  v2 = mlcore::PlaylistPropertyPersistentID(v1);
  v3 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v178[1] = v2;
  v4 = mlcore::PlaylistPropertyCloudGlobalID(v3);
  v5 = std::string::basic_string[abi:ne200100]<0>(v179, "globalID");
  v180 = v4;
  v6 = mlcore::PlaylistPropertyStoreCloudID(v5);
  v7 = std::string::basic_string[abi:ne200100]<0>(v181, "cloudID");
  v182 = v6;
  v8 = mlcore::PlaylistPropertyCloudUniversalLibraryID(v7);
  v9 = std::string::basic_string[abi:ne200100]<0>(v183, "cloudUniversalLibraryID");
  v184 = v8;
  v10 = mlcore::PlaylistPropertySyncID(v9);
  v11 = std::string::basic_string[abi:ne200100]<0>(v185, "syncID");
  v186 = v10;
  v12 = mlcore::PlaylistPropertyCloudVersionHash(v11);
  v13 = std::string::basic_string[abi:ne200100]<0>(v187, "versionHash");
  v188 = v12;
  IsFolder = mlcore::PlaylistPropertySmartIsFolder(v13);
  std::string::basic_string[abi:ne200100]<0>(v189, "isFolder");
  v190 = IsFolder;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 7);
  [(mlcore *)v1 mapIdentifierMLProperties:v207 identifierCreationBlock:&__block_literal_global_375];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v15 = v207[0];
  v207[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  for (i = 0; i != -224; i -= 32)
  {
    if (v189[i + 23] < 0)
    {
      operator delete(*&v189[i]);
    }
  }

  [(mlcore *)v1 setEntityQueryBlock:&__block_literal_global_378];
  v17 = mlcore::PlaylistPropertyName([(mlcore *)v1 setAllowedItemPredicatesBlock:&__block_literal_global_393]);
  std::string::basic_string[abi:ne200100]<0>(v204, "name");
  v206 = v17;
  v18 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v204, 1);
  v19 = mlcore::PlaylistPropertyNameOrder(v18);
  std::string::basic_string[abi:ne200100]<0>(v201, "nameOrder");
  v203 = v19;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, v201, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistName" withPropertiesToFetch:__p propertiesToSort:v207 sortTransformer:&__block_literal_global_397 filterTransformer:&__block_literal_global_399 valueTransformer:&__block_literal_global_404];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v20 = v207[0];
  v207[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (v202 < 0)
  {
    operator delete(v201[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v21 = __p[0];
  __p[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  if (v205 < 0)
  {
    operator delete(v204[0]);
  }

  v22 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistDescriptionText" toMLProperty:mlcore::PlaylistPropertyDescription(v21)];
  v23 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsOwner" toMLProperty:mlcore::PlaylistPropertyIsOwner(v22)];
  v24 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCuratorPlaylist" toMLProperty:mlcore::PlaylistPropertyIsCuratorOwned(v23)];
  v25 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistPublicPlaylist" toMLProperty:mlcore::PlaylistPropertyCloudIsPublic(v24)];
  v26 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistVisiblePlaylist" toMLProperty:mlcore::PlaylistPropertyCloudIsVisible(v25)];
  v27 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistSubscribed" toMLProperty:mlcore::PlaylistPropertyIsSubscribed(v26)];
  v28 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCloudVersionHash" toMLProperty:mlcore::PlaylistPropertyCloudVersionHash(v27)];
  IsTracklistUserEditable = mlcore::PlaylistPropertyIsTracklistUserEditable(v28);
  v30 = std::string::basic_string[abi:ne200100]<0>(__p, "isTracklistUserEditable");
  v178[1] = IsTracklistUserEditable;
  IsSmart = mlcore::PlaylistPropertyIsSmart(v30);
  v32 = std::string::basic_string[abi:ne200100]<0>(v179, "isSmart");
  v180 = IsSmart;
  v33 = mlcore::PlaylistPropertySmartIsFolder(v32);
  v34 = std::string::basic_string[abi:ne200100]<0>(v181, "isFolder");
  v182 = v33;
  IsGenius = mlcore::PlaylistPropertySmartIsGenius(v34);
  v36 = std::string::basic_string[abi:ne200100]<0>(v183, "isGenius");
  v184 = IsGenius;
  IsSubscribed = mlcore::PlaylistPropertyIsSubscribed(v36);
  v38 = std::string::basic_string[abi:ne200100]<0>(v185, "isSubscribed");
  v186 = IsSubscribed;
  IsFavoritedSongs = mlcore::PlaylistPropertyIsFavoritedSongs(v38);
  v40 = std::string::basic_string[abi:ne200100]<0>(v187, "isFavoriteSongsPlaylist");
  v188 = IsFavoritedSongs;
  IsOwner = mlcore::PlaylistPropertyIsOwner(v40);
  v42 = std::string::basic_string[abi:ne200100]<0>(v189, "isOwner");
  v190 = IsOwner;
  IsCollaborative = mlcore::PlaylistPropertyIsCollaborative(v42);
  std::string::basic_string[abi:ne200100]<0>(v191, "isCollaborative");
  v192 = IsCollaborative;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 8);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistUserEditableComponents" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_413];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v44 = v207[0];
  v207[0] = 0;
  if (v44)
  {
    operator delete(v44);
  }

  for (j = 0; j != -256; j -= 32)
  {
    if (v191[j + 23] < 0)
    {
      operator delete(*&v191[j]);
    }
  }

  v46 = mlcore::PlaylistPropertyCloudShareURL(v44);
  std::string::basic_string[abi:ne200100]<0>(v207, "shareURL");
  v209 = v46;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistShareURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_420_44037];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v47 = __p[0];
  __p[0] = 0;
  if (v47)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistShareShortURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_423];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v48 = __p[0];
  __p[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }

  v49 = mlcore::PlaylistPropertyPersistentID(v48);
  v50 = std::string::basic_string[abi:ne200100]<0>(__p, "playlistPID");
  v178[1] = v49;
  v51 = mlcore::PlaylistPropertyAvailableArtworkToken(v50);
  v52 = std::string::basic_string[abi:ne200100]<0>(v179, "availableArtworkToken");
  v180 = v51;
  v53 = mlcore::PlaylistPropertyFetchableArtworkToken(v52);
  v54 = std::string::basic_string[abi:ne200100]<0>(v181, "fetchableArtworkToken");
  v182 = v53;
  v55 = mlcore::PlaylistPropertyFetchableArtworkSourceType(v54);
  std::string::basic_string[abi:ne200100]<0>(v183, "fetchableArtworkSourceType");
  v184 = v55;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 4);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistArtwork" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_427];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v56 = v207[0];
  v207[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  for (k = 0; k != -128; k -= 32)
  {
    if (v183[k + 23] < 0)
    {
      operator delete(*&v183[k]);
    }
  }

  v58 = mlcore::PlaylistPropertyPersistentID(v56);
  std::string::basic_string[abi:ne200100]<0>(v207, "playlistPID");
  v209 = v58;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistTracksTiledArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_430];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v59 = __p[0];
  __p[0] = 0;
  if (v59)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_435];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v60 = __p[0];
  __p[0] = 0;
  if (v60)
  {
    operator delete(v60);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistStaticTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_438];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v61 = __p[0];
  __p[0] = 0;
  if (v61)
  {
    operator delete(v61);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_441];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v62 = __p[0];
  __p[0] = 0;
  if (v62)
  {
    operator delete(v62);
  }

  v63 = mlcore::PlaylistPropertyPersistentID(v62);
  v64 = std::string::basic_string[abi:ne200100]<0>(__p, "playlistPID");
  v178[1] = v63;
  v65 = mlcore::PlaylistPropertyAvailablePortraitArtworkToken(v64);
  v66 = std::string::basic_string[abi:ne200100]<0>(v179, "availableArtworkToken");
  v180 = v65;
  v67 = mlcore::PlaylistPropertyFetchablePortraitArtworkToken(v66);
  v68 = std::string::basic_string[abi:ne200100]<0>(v181, "fetchableArtworkToken");
  v182 = v67;
  v69 = mlcore::PlaylistPropertyFetchablePortraitArtworkSourceType(v68);
  std::string::basic_string[abi:ne200100]<0>(v183, "fetchableArtworkSourceType");
  v184 = v69;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 4);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistPortraitArtwork" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_444, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v70 = v207[0];
  v207[0] = 0;
  if (v70)
  {
    operator delete(v70);
  }

  for (m = 0; m != -128; m -= 32)
  {
    if (v183[m + 23] < 0)
    {
      operator delete(*&v183[m]);
    }
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistReleaseDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_447];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v72 = __p[0];
  __p[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistShortEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_449];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v73 = __p[0];
  __p[0] = 0;
  if (v73)
  {
    operator delete(v73);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_451];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v74 = __p[0];
  __p[0] = 0;
  if (v74)
  {
    operator delete(v74);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistVersionHash" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_453];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v75 = __p[0];
  __p[0] = 0;
  if (v75)
  {
    operator delete(v75);
  }

  IsHidden = mlcore::PlaylistPropertyIsHidden(v75);
  std::string::basic_string[abi:ne200100]<0>(v207, "isHidden");
  v209 = IsHidden;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_456];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v77 = __p[0];
  __p[0] = 0;
  if (v77)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v78 = mlcore::PlaylistPropertyDateCreated(v77);
  std::string::basic_string[abi:ne200100]<0>(v207, "libraryAdded");
  v209 = v78;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_458_44039];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v79 = __p[0];
  __p[0] = 0;
  if (v79)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v80 = MPModelPropertyPlaylistDownloadedDate;
  v81 = mlcore::PlaylistPropertyDateDownloaded(v79);
  std::string::basic_string[abi:ne200100]<0>(v207, "downloadedDate");
  v209 = v81;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:v80 withPropertiesToFetch:__p valueTransformer:&__block_literal_global_460_44040];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v82 = __p[0];
  __p[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v83 = mlcore::PlaylistPropertyDateModified(v82);
  std::string::basic_string[abi:ne200100]<0>(v207, "dateModified");
  v209 = v83;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLastModifiedDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_463];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v84 = __p[0];
  __p[0] = 0;
  if (v84)
  {
    operator delete(v84);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v85 = mlcore::PlaylistPropertyDatePlayedLocal(v84);
  std::string::basic_string[abi:ne200100]<0>(v207, "datePlayedLocal");
  v209 = v85;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_465_44042];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v86 = __p[0];
  __p[0] = 0;
  if (v86)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasCleanContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_467_44043];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v87 = __p[0];
  __p[0] = 0;
  if (v87)
  {
    operator delete(v87);
  }

  *__p = 0u;
  *v178 = 0u;
  v179[0] = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasExplicitContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_469];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v88 = __p[0];
  __p[0] = 0;
  if (v88)
  {
    operator delete(v88);
  }

  v89 = mlcore::PlaylistPropertyIsSmart(v88);
  v90 = std::string::basic_string[abi:ne200100]<0>(__p, "isSmart");
  v178[1] = v89;
  v91 = mlcore::PlaylistPropertySmartIsGenius(v90);
  v92 = std::string::basic_string[abi:ne200100]<0>(v179, "isGenius");
  v180 = v91;
  v93 = mlcore::PlaylistPropertySmartIsFolder(v92);
  v94 = std::string::basic_string[abi:ne200100]<0>(v181, "isFolder");
  v182 = v93;
  ShouldDisplayIndex = mlcore::PlaylistPropertyShouldDisplayIndex(v94);
  v96 = std::string::basic_string[abi:ne200100]<0>(v183, "shouldDisplayIndex");
  v184 = ShouldDisplayIndex;
  IsPersonalMix = mlcore::PlaylistCategoryTypeIsPersonalMix(v96);
  v98 = std::string::basic_string[abi:ne200100]<0>(v185, "isPersonalMix");
  v186 = IsPersonalMix;
  v99 = mlcore::PlaylistPropertyIsFavoritedSongs(v98);
  v100 = std::string::basic_string[abi:ne200100]<0>(v187, "isFavoriteSongsPlaylist");
  v188 = v99;
  IsExternalVendorPlaylist = mlcore::PlaylistPropertyIsExternalVendorPlaylist(v100);
  v102 = std::string::basic_string[abi:ne200100]<0>(v189, "isExternalVendorPlaylist");
  v190 = IsExternalVendorPlaylist;
  v103 = mlcore::PlaylistPropertyIsOwner(v102);
  v104 = std::string::basic_string[abi:ne200100]<0>(v191, "isOwner");
  v192 = v103;
  IsPublic = mlcore::PlaylistPropertyCloudIsPublic(v104);
  v106 = std::string::basic_string[abi:ne200100]<0>(v193, "isPublic");
  v194 = IsPublic;
  IsEditorial = mlcore::PlaylistCategoryTypeIsEditorial(v106);
  v108 = std::string::basic_string[abi:ne200100]<0>(v195, "isEditorial");
  v196 = IsEditorial;
  IsUserShared = mlcore::PlaylistCategoryTypeIsUserShared(v108);
  v110 = std::string::basic_string[abi:ne200100]<0>(v197, "isUserShared");
  v198 = IsUserShared;
  v111 = mlcore::PlaylistPropertyEditSessionID(v110);
  std::string::basic_string[abi:ne200100]<0>(v199, "editSessionID");
  v200 = v111;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 12);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistType" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_478];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v112 = v207[0];
  v207[0] = 0;
  if (v112)
  {
    operator delete(v112);
  }

  v113 = 48;
  do
  {
    if (*(&__p[v113 - 1] - 1) < 0)
    {
      operator delete(__p[v113 - 4]);
    }

    v113 -= 4;
  }

  while (v113 * 8);
  v114 = mlcore::PlaylistPropertyKeepLocal(v112);
  std::string::basic_string[abi:ne200100]<0>(v207, "keepLocal");
  v209 = v114;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_480];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v115 = __p[0];
  __p[0] = 0;
  if (v115)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v116 = mlcore::PlaylistPropertyKeepLocalStatus(v115);
  std::string::basic_string[abi:ne200100]<0>(v207, "keepLocalStatus");
  v209 = v116;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_482];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v117 = __p[0];
  __p[0] = 0;
  if (v117)
  {
    operator delete(v117);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v118 = mlcore::PlaylistPropertyKeepLocalStatusReason(v117);
  std::string::basic_string[abi:ne200100]<0>(v207, "keepLocalStatusReason");
  v209 = v118;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_484];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v119 = __p[0];
  __p[0] = 0;
  if (v119)
  {
    operator delete(v119);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v120 = mlcore::PlaylistPropertyKeepLocalConstraints(v119);
  std::string::basic_string[abi:ne200100]<0>(v207, "keepLocalConstraints");
  v209 = v120;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_486];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v121 = __p[0];
  __p[0] = 0;
  if (v121)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v122 = mlcore::PlaylistPropertyTraits(v121);
  std::string::basic_string[abi:ne200100]<0>(v207, "traits");
  v209 = v122;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistTraits" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_489];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v123 = __p[0];
  __p[0] = 0;
  if (v123)
  {
    operator delete(v123);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v124 = mlcore::PlaylistPropertyLikedState(v123);
  std::string::basic_string[abi:ne200100]<0>(v207, "likedState");
  v209 = v124;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_491];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v125 = __p[0];
  __p[0] = 0;
  if (v125)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v126 = mlcore::PlaylistPropertyLikedState(v125);
  std::string::basic_string[abi:ne200100]<0>(v207, "likedState");
  v209 = v126;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_493];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v127 = __p[0];
  __p[0] = 0;
  if (v127)
  {
    operator delete(v127);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v128 = mlcore::PlaylistPropertyLikedStateChangedDate(v127);
  std::string::basic_string[abi:ne200100]<0>(v207, "likedStateChangedDate");
  v209 = v128;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_495];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v129 = __p[0];
  __p[0] = 0;
  if (v129)
  {
    operator delete(v129);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v130 = mlcore::PlaylistPropertyIsFavoritedSongs(v129);
  std::string::basic_string[abi:ne200100]<0>(v207, "favoriteSongsPlaylist");
  v209 = v130;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_498];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v131 = __p[0];
  __p[0] = 0;
  if (v131)
  {
    operator delete(v131);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v132 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCoverArtworkRecipe" toMLProperty:mlcore::PlaylistPropertyCoverArtworkRecipe(v131)];
  v133 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsCollaborative" toMLProperty:mlcore::PlaylistPropertyIsCollaborative(v132)];
  v134 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationSharingMode" toMLProperty:mlcore::PlaylistPropertyCollaborationMode(v133)];
  v135 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationMode" toMLProperty:mlcore::PlaylistPropertyCollaborationMode(v134)];
  v136 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaboratorPermissions" toMLProperty:mlcore::PlaylistPropertyCollaboratorPermissions(v135)];
  v137 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURL" toMLProperty:mlcore::PlaylistPropertyCollaborationInvitationURL(v136)];
  v138 = mlcore::PlaylistPropertyCollaborationInvitationURL(v137);
  std::string::basic_string[abi:ne200100]<0>(v207, "invitationURL");
  v209 = v138;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_501];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v139 = __p[0];
  __p[0] = 0;
  if (v139)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v140 = mlcore::PlaylistPropertyCollaborationInvitationURLExpirationDate(v139);
  std::string::basic_string[abi:ne200100]<0>(v207, "collaborationInvitationURLExpirationDate");
  v209 = v140;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v207, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_504];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v141 = __p[0];
  __p[0] = 0;
  if (v141)
  {
    operator delete(v141);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207[0]);
  }

  v142 = mlcore::PlaylistPropertyCollaborationJoinRequestPending(v141);
  v143 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaboratorStatus" toMLProperty:mlcore::PlaylistPropertyCollaboratorStatus([(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationJoinRequestIsPending" toMLProperty:v142, __p[0]])];
  v144 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistParentPersistentID" toMLProperty:mlcore::PlaylistPropertyParentPersistentID(v143)];
  v145 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistEditSessionID" toMLProperty:mlcore::PlaylistPropertyEditSessionID(v144)];
  v146 = mlcore::PlaylistPropertyIsSmart(v145);
  v147 = std::string::basic_string[abi:ne200100]<0>(__p, "isSmart");
  v178[1] = v146;
  IsStoreRedownloadable = mlcore::PlaylistPropertyIsStoreRedownloadable(v147);
  std::string::basic_string[abi:ne200100]<0>(v179, "isStoreRedownloadable");
  v180 = IsStoreRedownloadable;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 2);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsStoreRedownloadable" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_506];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v149 = v207[0];
  v207[0] = 0;
  if (v149)
  {
    operator delete(v149);
  }

  for (n = 0; n != -16; n -= 8)
  {
    if (SHIBYTE(v179[n + 5]) < 0)
    {
      operator delete(*&v179[n]);
    }
  }

  v151 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsPinned" toMLProperty:mlcore::PlaylistPropertyIsLibraryPinned(v149)];
  v152 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistDownloadedTrackCount" toMLProperty:mlcore::PlaylistPropertyNonPurgeableAssetItemCount(v151)];
  v153 = mlcore::PlaylistPropertyPersistentID(v152);
  v154 = std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v178[1] = v153;
  v155 = mlcore::PlaylistPropertyTrackCount(v154);
  v156 = std::string::basic_string[abi:ne200100]<0>(v179, "trackCount");
  v180 = v155;
  v157 = mlcore::PlaylistPropertyIsSmart(v156);
  std::string::basic_string[abi:ne200100]<0>(v181, "isSmartPlaylist");
  v182 = v157;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 3);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistTrackCount" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_511];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v158 = v207[0];
  v207[0] = 0;
  if (v158)
  {
    operator delete(v158);
  }

  for (ii = 0; ii != -96; ii -= 32)
  {
    if (v181[ii + 23] < 0)
    {
      operator delete(*&v181[ii]);
    }
  }

  v160 = mlcore::PlaylistPropertyPersistentID(v158);
  v161 = std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v178[1] = v160;
  v162 = mlcore::PlaylistPropertyTrackCount(v161);
  v163 = std::string::basic_string[abi:ne200100]<0>(v179, "trackCount");
  v180 = v162;
  v164 = mlcore::PlaylistPropertyCleanTracksCount(v163);
  v165 = std::string::basic_string[abi:ne200100]<0>(v181, "cleanTrackCount");
  v182 = v164;
  v166 = mlcore::PlaylistPropertyIsSmart(v165);
  std::string::basic_string[abi:ne200100]<0>(v183, "isSmartPlaylist");
  v184 = v166;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 4);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanTracks" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_519_44055];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v167 = v207[0];
  v207[0] = 0;
  if (v167)
  {
    operator delete(v167);
  }

  for (jj = 0; jj != -128; jj -= 32)
  {
    if (v183[jj + 23] < 0)
    {
      operator delete(*&v183[jj]);
    }
  }

  v169 = mlcore::PlaylistPropertyPersistentID(v167);
  v170 = std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v178[1] = v169;
  v171 = mlcore::PlaylistPropertyCleanDownloadedTracksCount(v170);
  v172 = std::string::basic_string[abi:ne200100]<0>(v179, "cleanDownloadedTrackCount");
  v180 = v171;
  v173 = mlcore::PlaylistPropertyIsSmart(v172);
  std::string::basic_string[abi:ne200100]<0>(v181, "isSmartPlaylist");
  v182 = v173;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v207, __p, 3);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks" withPropertiesToFetch:v207 valueTransformer:&__block_literal_global_523];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v208);
  v174 = v207[0];
  v207[0] = 0;
  if (v174)
  {
    operator delete(v174);
  }

  for (kk = 0; kk != -96; kk -= 32)
  {
    if (v181[kk + 23] < 0)
    {
      operator delete(*&v181[kk]);
    }
  }

  v176 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipPlaylistCurator" toModelClass:v176 transient:1 usingForeignPropertyBase:mlcore::PlaylistPropertyPersistentID(v176)];
}

void sub_1A26378A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(v23 - 96);
  v26 = &a22;
  v27 = -96;
  v28 = &a22;
  while (1)
  {
    v29 = *v28;
    v28 -= 32;
    if (v29 < 0)
    {
      operator delete(*(v26 - 23));
    }

    v26 = v28;
    v27 += 32;
    if (!v27)
    {

      if (a2 == 2)
      {
        v30 = __cxa_begin_catch(a1);
        v31 = MEMORY[0x1E695DF30];
        v32 = MEMORY[0x1E696AEC0];
        mediaplatform::FormatOptions::FormatOptions(&a9);
        (*(*v30 + 24))(v30, &a9);
        if (*(v23 - 73) >= 0)
        {
          v33 = v23 - 96;
        }

        else
        {
          v33 = *(v23 - 96);
        }

        v34 = [v32 stringWithUTF8String:v33];
        v35 = [v31 exceptionWithName:@"MediaPlatform" reason:v34 userInfo:0];
        v36 = v35;

        if (*(v23 - 73) < 0)
        {
          operator delete(*(v23 - 96));
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
  }
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_13(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 7;
}

void sub_1A2638178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_12(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 0;
}

void sub_1A2638354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 4;
}

void sub_1A2638434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 1;
}

void sub_1A2638514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "positionUUID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 stringValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_1A2638600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "defaultAction");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];

  return v10;
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityPersistentID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];

  return v10;
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];

  return v10;
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "position");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];

  return v10;
}

void *___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 >= 8)
  {
    v10 = &unk_1F1509BF8;
  }

  else
  {
    v10 = qword_1E767E140[v9];
  }

  return v10;
}

void sub_1A2638B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelLibraryPinKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyLibraryPinMap()_block_invoke_3"];
    [v12 handleFailureInFunction:v13 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3864 description:@"Must have LibraryPin kind to generate LibraryPin entity query."];
  }

  v9 = a3[1];
  v16 = *a3;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v16 withContext:v4];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::LibraryPinPropertyPersistentID(v10);
  _MPMLInsertPredicatesForIdentifierSet(&v18, v10, 0, 0, v11, 0, 0, 0, 0, 0);

  memset(v14, 0, sizeof(v14));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v14, v18, v19, (v19 - v18) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::libraryPinsQuery();
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v21 = v14;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v21);

  v21 = &v18;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_1A2638D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 72) = &a19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v23 - 72));

  _Unwind_Resume(a1);
}

void _MPMLInsertPredicatesForIdentifierSet(const void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v99 = *MEMORY[0x1E69E9840];
  v53 = a2;
  if ([v53 count])
  {
    v46 = a7;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v94 = 0;
    v93 = 0;
    v95 = 0;
    v91 = 0;
    v90 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v53;
    v11 = [obj countByEnumeratingWithState:&v68 objects:v98 count:16];
    if (v11)
    {
      v12 = *v69;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v69 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v68 + 1) + 8 * i);
          v15 = [v14 opaqueID];
          if ([v15 length])
          {
            v16 = v15;
            std::string::basic_string[abi:ne200100]<0>(__p, [v15 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
            std::vector<std::string>::push_back[abi:ne200100](&v78, __p);
            std::vector<std::string>::push_back[abi:ne200100](&v75, __p);
            *&v59 = [v15 longLongValue];
            if (v59)
            {
              std::vector<long long>::push_back[abi:ne200100](&v90, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v93, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v55, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v87, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v81, &v59);
            }

            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v17 = [v14 library];
          v18 = [v17 persistentID];

          *&v59 = v18;
          if (v18)
          {
            std::vector<long long>::push_back[abi:ne200100](&v90, &v59);
            goto LABEL_47;
          }

          v19 = [v14 universalStore];
          v20 = [v19 subscriptionAdamID];
          if (v20)
          {

            v96 = v20;
          }

          else
          {
            v21 = [v14 universalStore];
            v22 = [v21 adamID];

            v96 = v22;
            if (!v22)
            {
              goto LABEL_18;
            }
          }

          std::vector<long long>::push_back[abi:ne200100](&v93, &v96);
LABEL_18:
          v23 = [v14 universalStore];
          v24 = [v23 purchasedAdamID];
          if (v24)
          {

            v65 = v24;
LABEL_21:
            std::vector<long long>::push_back[abi:ne200100](&v55, &v65);
            goto LABEL_22;
          }

          v25 = [v14 universalStore];
          v26 = [v25 adamID];

          v65 = v26;
          if (v26)
          {
            goto LABEL_21;
          }

LABEL_22:
          v27 = [v14 universalStore];
          v28 = [v27 formerAdamIDs];

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v29 = v28;
          v30 = [v29 countByEnumeratingWithState:&v61 objects:v97 count:16];
          if (v30)
          {
            v31 = *v62;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v62 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                __p[0] = [*(*(&v61 + 1) + 8 * j) longLongValue];
                if (__p[0])
                {
                  std::vector<long long>::push_back[abi:ne200100](&v55, __p);
                  std::vector<long long>::push_back[abi:ne200100](&v93, __p);
                }
              }

              v30 = [v29 countByEnumeratingWithState:&v61 objects:v97 count:16];
            }

            while (v30);
          }

          v33 = [v14 personalizedStore];
          v34 = [v33 cloudID];

          if (v34)
          {
            __p[0] = v34;
            std::vector<long long>::push_back[abi:ne200100](&v87, __p);
          }

          v35 = [v14 universalStore];
          v36 = [v35 globalPlaylistID];

          if (v36)
          {
            v37 = v36;
            std::string::basic_string[abi:ne200100]<0>(__p, [v36 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v38 = [v14 library];
          v39 = [v38 syncID];

          v60 = v39;
          if (v39)
          {
            std::vector<long long>::push_back[abi:ne200100](&v81, &v60);
          }

          v40 = [v14 personalizedStore];
          v41 = [v40 cloudAlbumID];

          if (v41)
          {
            v42 = v41;
            std::string::basic_string[abi:ne200100]<0>(__p, [v41 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v78, __p);
            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v43 = [v14 universalStore];
          v44 = [v43 universalCloudLibraryID];

          if (v44)
          {
            v45 = v44;
            std::string::basic_string[abi:ne200100]<0>(__p, [v44 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v75, __p);
            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          __p[0] = [v14 musicKit_possibleLibraryPersistentID];
          if (__p[0])
          {
            std::vector<long long>::push_back[abi:ne200100](&v90, __p);
          }

LABEL_47:
        }

        v11 = [obj countByEnumeratingWithState:&v68 objects:v98 count:16];
      }

      while (v11);
    }

    if (a3 && v56 != v55)
    {
      v96 = a3;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    if (a4 && v94 != v93)
    {
      v96 = a4;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    if (a5 && v91 != v90)
    {
      v96 = a5;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    if (a6 && v88 != v87)
    {
      v96 = a6;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    if (v46 && v85 != v84)
    {
      v96 = v46;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
    }

    if (a8 && v82 != v81)
    {
      v96 = a8;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    if (a10 && v79 != v78)
    {
      v96 = a10;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
    }

    if (a9 && v76 != v75)
    {
      v96 = a9;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
    }

    if (v73 == v72 && [obj count])
    {
      v96 = a5;
      LODWORD(v65) = 1;
      std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<long long>,std::allocator<mlcore::UnaryPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::UnaryOperator,0>();
    }

    memset(v58, 0, sizeof(v58));
    std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v58, v72, v73, (v73 - v72) >> 4);
    mlcore::CreateOrPredicate();
    std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](a1, __p);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    *&v59 = v58;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v59);
    __p[0] = &v72;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
    v72 = &v75;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
    v75 = &v78;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v75);
    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    v81 = &v84;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }
}

void sub_1A26396C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  a43 = &a56;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a56 = &a59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a56);
  a59 = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a59);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  __p = &a68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a71)
  {
    a72 = a71;
    operator delete(a71);
  }

  v74 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v75;
    operator delete(v75);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a2 == 2)
  {
    v76 = __cxa_begin_catch(a1);
    v77 = MEMORY[0x1E695DF30];
    v78 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a19);
    (*(*v76 + 24))(&STACK[0x220], v76, &a19);
    if (SLOBYTE(STACK[0x237]) >= 0)
    {
      v79 = &STACK[0x220];
    }

    else
    {
      v79 = STACK[0x220];
    }

    v80 = [v78 stringWithUTF8String:v79];
    v81 = [v77 exceptionWithName:@"MediaPlatform" reason:v80 userInfo:0];
    v82 = v81;

    if (SLOBYTE(STACK[0x237]) < 0)
    {
      operator delete(STACK[0x220]);
    }

    objc_exception_throw(v81);
  }

  if (a2 == 1)
  {
    v83 = __cxa_begin_catch(a1);
    v84 = MEMORY[0x1E695DF30];
    v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v83 + 16))(v83)];
    v86 = [v84 exceptionWithName:*MEMORY[0x1E695D920] reason:v85 userInfo:0];
    v87 = v86;

    objc_exception_throw(v86);
  }

  _Unwind_Resume(a1);
}

void ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "date");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id _MPMLDateFromStoredInt64(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a1];
    v1 = vars8;
  }

  return a1;
}

void ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 scopedContainers];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v10;

          if (v13)
          {
LABEL_12:
            v14 = [v4 modelKind];
            v15 = [v14 identityKind];
            v16 = +[MPModelPlaylistEntryReactionKind identityKind];
            v17 = [v15 isEqual:v16];

            if ((v17 & 1) == 0)
            {
              v24 = [MEMORY[0x1E696AAA8] currentHandler];
              v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistEntryReactionMap()_block_invoke_3"];
              [v24 handleFailureInFunction:v25 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2731 description:@"Must have PlaylistEntryReaction kind to generate PlaylistEntryReaction entity query."];
            }

            v18 = a3[1];
            v30 = *a3;
            v31 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [v14 applyToView:&v30 withContext:v4];
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            v19 = [v4 filterText];
            v20 = [v19 length] == 0;

            if (!v20)
            {
              v21 = [v4 filterText];
              v22 = v21;
              std::string::basic_string[abi:ne200100]<0>(&v26, [v21 UTF8String]);
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v26;
              v29 = v27;
              HIBYTE(v27) = 0;
              LOBYTE(v26) = 0;
            }

            [v13 identifiers];
            v23 = [objc_claimAutoreleasedReturnValue() library];
            [v23 persistentID];

            operator new();
          }

LABEL_10:
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistEntryReactionMap()_block_invoke_3"];
          [v11 handleFailureInFunction:v12 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2728 description:@"Attempted to query playlist reactions without scoping to a playlist entry."];

          v13 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);
  }

  goto LABEL_10;
}

void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::__value_func[abi:ne200100](v10, a4);
  v8 = a2;
  v9 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = 0;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::__value_func[abi:ne200100](v11, v10);
  v12 = 0;
  operator new();
}

void sub_1A263A88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1A263AA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore11LibraryView12performQueryINS_11EntityQueryEEEvNSt3__110shared_ptrIT_EENS4_INS_11TransactionEEENS3_8functionIFvNS4_INS5_6ResultEEEEEEEUlNS4_INS_11QueryResultEEEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1A263ABC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F149A628;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1A58E14E0);
}

void *std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F149A628;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3__2NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3__2NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEEclEOS8_(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (mlcore::EntityQueryResult::entityCount(v4))
  {
    mlcore::EntityQueryResult::entityAtIndex(v4);
    if (lpsrc && (v5 = __dynamic_cast(lpsrc, MEMORY[0x1E69B07F0], MEMORY[0x1E69B07D8], 0)) != 0)
    {
      *buf = v5;
      *&buf[8] = v12;
      p_lpsrc = &lpsrc;
    }

    else
    {
      p_lpsrc = buf;
    }

    *p_lpsrc = 0;
    p_lpsrc[1] = 0;
    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    *v7 = *buf;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = **(a1 + 8);
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Did not find playlist entry for identifiers: %{public}@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(**(a1 + 24));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 _ZNKSt3__110__function6__funcIZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3__2NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F149B5A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mlcore::PlaylistItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_4(uint64_t a1, void *a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 scopedContainers];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v10;

          if (v13)
          {
LABEL_12:
            v14 = [v4 modelKind];
            v15 = [v14 identityKind];
            v16 = +[MPModelPlaylistAuthorKind identityKind];
            v17 = [v15 isEqual:v16];

            if ((v17 & 1) == 0)
            {
              v24 = [MEMORY[0x1E696AAA8] currentHandler];
              v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistAuthorMap()_block_invoke_4"];
              [v24 handleFailureInFunction:v25 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2650 description:@"Must have PlaylistAuthor kind to generate PlaylistAuthor entity query."];
            }

            v18 = a3[1];
            v28 = *a3;
            v29 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [v14 applyToView:&v28 withContext:v4];
            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            v19 = [v4 filterText];
            v20 = [v19 length] == 0;

            if (!v20)
            {
              v21 = [v4 filterText];
              v22 = v21;
              std::string::basic_string[abi:ne200100]<0>(&v34, [v21 UTF8String]);
              if (SHIBYTE(v27) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v34;
              v27 = v35;
              HIBYTE(v35) = 0;
              LOBYTE(v34) = 0;
            }

            [v13 identifiers];
            v23 = [objc_claimAutoreleasedReturnValue() library];
            [v23 persistentID];

            std::allocate_shared[abi:ne200100]<mlcore::Playlist,std::allocator<mlcore::Playlist>,long long &,0>();
          }

LABEL_10:
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistAuthorMap()_block_invoke_4"];
          [v11 handleFailureInFunction:v12 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2647 description:@"Attempted to query playlist authors without scoping to a playlist."];

          v13 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  goto LABEL_10;
}

void sub_1A263BB24(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3__1NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3__1NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEEclEOS8_(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (mlcore::EntityQueryResult::entityCount(v4))
  {
    mlcore::EntityQueryResult::entityAtIndex(v4);
    std::dynamic_pointer_cast[abi:ne200100]<mlcore::Playlist,mlcore::Entity>(buf, &v9);
    v5 = *(a1 + 16);
    v6 = *(v5 + 8);
    *v5 = *buf;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = **(a1 + 8);
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Did not find playlist for identifiers: %{public}@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(**(a1 + 24));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::dynamic_pointer_cast[abi:ne200100]<mlcore::Playlist,mlcore::Entity>(void **a1, void **a2)
{
  result = *a2;
  if (*a2 && (v4 = a2, (result = __dynamic_cast(result, MEMORY[0x1E69B07F0], MEMORY[0x1E69B07F8], 0)) != 0))
  {
    v5 = v4[1];
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3__1NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F149B478;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mlcore::Playlist>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1499FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "socialProfileID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setSocialProfileID:v6];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A263C180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "imageURL");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v8 length])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_9;
    v12[3] = &unk_1E767E078;
    v13 = v8;
    v9 = _Block_copy(v12);
    v10 = _Block_copy(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

MPArtworkCatalog *___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_9(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v9[0] = @"url";
  v9[1] = @"width";
  v10[0] = v1;
  v10[1] = &unk_1F1509C10;
  v9[2] = @"height";
  v10[2] = &unk_1F1509C10;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v3 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v2];
  v4 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v3];

  v5 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
  v6 = [[MPArtworkCatalog alloc] initWithToken:v4 dataSource:v5];
  if ([v5 areRepresentationsAvailableForCatalog:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "socialProfileID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setSocialProfileID:v6];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A263C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistAvailableArtworkToken");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkToken");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkSourceType");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [v6 mediaLibrary];
  v17 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, 0, 7, 4, 0, v11, v13, v15, v16);

  return v17;
}

void sub_1A263CA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v17;

  _Unwind_Resume(a1);
}

id _MPMLTranslatorCreateArtworkCatalogBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [[MPMediaLibraryArtworkRequest alloc] initWithLibrary:v19 identifier:a1 entityType:a3 artworkType:a4 mediaType:a2 variantType:a5];
  if ([v19 isHomeSharingLibrary])
  {
LABEL_11:
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___ZL40_MPMLTranslatorCreateArtworkCatalogBlockxm17MPMediaEntityType25MPMediaLibraryArtworkType32MPMediaLibraryArtworkVariantTypebP8NSStringS3_P8NSNumberP14MPMediaLibrary_block_invoke;
    v26[3] = &unk_1E767DE00;
    v27 = v19;
    v28 = v20;
    v23 = _Block_copy(v26);
    v24 = _Block_copy(v23);

    goto LABEL_12;
  }

  if ([(__CFString *)v16 length]|| [(__CFString *)v17 length])
  {
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = &stru_1F149ECA8;
    }

    [(MPMediaLibraryArtworkRequest *)v20 setAvailableArtworkToken:v21];
    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = &stru_1F149ECA8;
    }

    [(MPMediaLibraryArtworkRequest *)v20 setFetchableArtworkToken:v22];
    [(MPMediaLibraryArtworkRequest *)v20 setFetchableArtworkSource:v18];
    goto LABEL_11;
  }

  v24 = 0;
LABEL_12:

  return v24;
}

MPArtworkCatalog *___ZL40_MPMLTranslatorCreateArtworkCatalogBlockxm17MPMediaEntityType25MPMediaLibraryArtworkType32MPMediaLibraryArtworkVariantTypebP8NSStringS3_P8NSNumberP14MPMediaLibrary_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkDataSource];
  v3 = [[MPArtworkCatalog alloc] initWithToken:*(a1 + 40) dataSource:v2];
  if ([v2 areRepresentationsAvailableForCatalog:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_4(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A263CF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "canonicalID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 1, 0, v16, v18, v20, v21);

  return v23;
}

id ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_6(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A263D910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_5(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::ItemArtistPropertyStoreID(v5);
  v4 = mlcore::ItemArtistPropertyPersistentID(v3);
  _MPMLInsertPredicatesForIdentifierSet(a2, v5, v3, 0, v4, 0, 0, 0, 0, 0);
}

void sub_1A263D9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_4(uint64_t a1, void *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelTVShowKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyTVShowMap()_block_invoke_4"];
    [v17 handleFailureInFunction:v18 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3433 description:@"Must have TV Show kind to generate TV Show entity query."];
  }

  v9 = a3[1];
  v23 = *a3;
  v24 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v23 withContext:v4];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::ItemArtistPropertyStoreID(v10);
  v12 = mlcore::ItemArtistPropertyPersistentID(v11);
  _MPMLInsertPredicatesForIdentifierSet(&v25, v10, v11, 0, v12, 0, 0, 0, 0, 0);

  v13 = [v4 filterText];
  LOBYTE(v11) = [v13 length] == 0;

  if ((v11 & 1) == 0)
  {
    v14 = [v4 filterText];
    v15 = v14;
    std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);

    v21 = mlcore::ItemArtistPropertyName(v16);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>();
  }

  memset(v19, 0, sizeof(v19));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v19, v25, v26, (v26 - v25) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::tvShowsQuery();
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  __p[0] = v19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);

  __p[0] = &v25;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1A263DCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  __p = (v35 - 128);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1A263DEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::SearchPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1499228;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_16(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "storeCanonicalID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_15(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 1, 0, v16, v18, v20, v21);

  return v23;
}