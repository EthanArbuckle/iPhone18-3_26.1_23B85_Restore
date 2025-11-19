const void **SymbolicationSession::forEachSymbolChunk(const void **result, uint64_t a2)
{
  v2 = result[9];
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = v4[1674];
      v6 = v2[4];
      if (v5)
      {
        FBSSignatureWithConfig = SharedLibrary::generateFBSSignatureWithConfig(v6, *v5);
      }

      else
      {
        FBSSignatureWithConfig = SharedLibrary::generateFBSSignature(v6);
      }

      v8 = FBSSignatureWithConfig;
      v9 = 0;
      std::function<void ()(__CFData const*)>::operator()(a2, FBSSignatureWithConfig);
      result = ScopeGuard<void const*,ScopeGuardPolicy<void const*>>::~ScopeGuard(&v8);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t std::function<void ()(__CFData const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t SymbolicationSession::forEachResymbolicatedSymbolChunk(uint64_t result, uint64_t a2)
{
  v3 = result;
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(*(result + 13392) + 32);
  if (v4)
  {
    result = v4("[Symbolication] Symbolicating");
  }

  for (i = v3[9]; i; i = *i)
  {
    v6 = *(v3[1674] + 4);
    if (v6)
    {
      if (v6 == 2)
      {
        result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(v3 + 1692, i + 2);
        if (result)
        {
          v13 = i[4];
          *__str = i + 2;
          v14 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(v3 + 1692, i + 2);
          v15 = (v14 + 4);
          if (*(v14 + 55) < 0)
          {
            v15 = *v15;
          }

          result = SharedLibrary::prepareForResymbolicationWithDsymPath(v13, v15);
          if (result)
          {
            goto LABEL_39;
          }

          if (*(v3[1674] + 32))
          {
            UUID::uuidString((i + 1), __p);
            if ((v22 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if (v21 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            v23 = i + 2;
            v17 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(v3 + 1692, i + 2);
            v18 = (v17 + 4);
            if (*(v17 + 55) < 0)
            {
              v18 = *v18;
            }

            snprintf(__str, 0x400uLL, "[Symbolication] failed to ingest dSYM: %s %s", v16, v18);
            if (v22 == 1 && v21 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
        if (v6 != 1)
        {
          goto LABEL_39;
        }

        result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(v3 + 1692, i + 2);
        if (!result)
        {
          continue;
        }

        result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(v3 + 1687, i + 2);
        if (!result)
        {
          continue;
        }

        v7 = i[4];
        *__str = i + 2;
        v8 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(v3 + 1692, i + 2);
        v9 = (v8 + 4);
        if (*(v8 + 55) < 0)
        {
          v9 = *v9;
        }

        result = SharedLibrary::prepareForResymbolicationWithDsymPath(v7, v9);
        if (result)
        {
LABEL_39:
          *__str = SharedLibrary::generateFBSSignature(i[4]);
          v25 = 0;
          std::function<void ()(__CFData const*)>::operator()(a2, *__str);
          result = ScopeGuard<void const*,ScopeGuardPolicy<void const*>>::~ScopeGuard(__str);
          continue;
        }

        if (*(v3[1674] + 32))
        {
          UUID::uuidString((i + 1), __p);
          if ((v22 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if (v21 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          v23 = i + 2;
          v11 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(v3 + 1692, i + 2);
          v12 = (v11 + 4);
          if (*(v11 + 55) < 0)
          {
            v12 = *v12;
          }

          snprintf(__str, 0x400uLL, "[Symbolication] failed to ingest dSYM: %s %s", v10, v12);
          if (v22 == 1 && v21 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_22:
          result = (*(v3[1674] + 32))(__str);
        }
      }
    }

    else
    {
      result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(v3 + 1687, i + 2);
      if (result)
      {
        goto LABEL_39;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F924A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SymbolicationSession::filterUUIDsNeedingSymbolicationWithFile(void *result)
{
  v1 = result[9];
  if (v1)
  {
    v2 = result;
    do
    {
      result = SharedLibrary::hasAddressesToSymbolicate(v1[4]);
      if (result)
      {
        if (*(v2[1674] + 4) - 1) <= 1 && v2[1685] && (v3 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(v2 + 1682, v1 + 2)) != 0 && (v3[4])
        {
          result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(v2 + 1687, v1 + 2);
          if (result)
          {
            result = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__erase_unique<UUID>(v2 + 1687, v1 + 2);
          }
        }

        else
        {
          SharedLibrary::path(v1[4], v4);
          if ((v4[16] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          result = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,UUID const&,std::string_view>(v2 + 1687, v1 + 2);
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

void SymbolicationSession::collectAvailableDsymPaths(SymbolicationSession *this)
{
  v1 = *(this + 1674);
  if (*(v1 + 4) == 1)
  {
    unfold_dsym_path(*(v1 + 16), &v26);
    v3 = v26;
    v4 = v27;
    if (v26 != v27)
    {
      v5 = MEMORY[0x277D85DD0];
      do
      {
        if (*(v3 + 23) < 0)
        {
          v6 = *v3;
        }

        v20 = v5;
        v21 = 0x40000000;
        v22 = ___ZN20SymbolicationSession25collectAvailableDsymPathsEv_block_invoke;
        v23 = &__block_descriptor_tmp_16;
        v24 = this;
        v25 = v3;
        CSSymbolicatorForeachSymbolicatorWithPath();
        v3 += 3;
      }

      while (v3 != v4);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v19.__pn_, (*(this + 1674) + 16));
    std::__fs::filesystem::__status(&v19, 0);
    if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__pn_.__r_.__value_.__l.__data_);
    }

    if (!*(this + 1695) && p.__r_.__value_.__s.__data_[0] == 2)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, (*(this + 1674) + 16));
      MEMORY[0x245CD57F0](&v19, &__p, 0, 0);
      if (*(&__p.__rec_ + 7) < 0)
      {
        operator delete(__p.__imp_.__ptr_);
      }

      v7 = *&v19.__pn_.__r_.__value_.__l.__data_;
      if (v19.__pn_.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v19.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        size = v19.__pn_.__r_.__value_.__l.__size_;
        __p.__imp_ = v7;
        __p.__rec_ = v19.__pn_.__r_.__value_.__s.__data_[16];
        if (v19.__pn_.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v19.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      else
      {
        __p.__imp_ = *&v19.__pn_.__r_.__value_.__l.__data_;
        __p.__rec_ = v19.__pn_.__r_.__value_.__s.__data_[16];
      }

      while (1)
      {
        if (!__p.__imp_.__ptr_)
        {
          if (__p.__imp_.__cntrl_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p.__imp_.__cntrl_);
          }

          if (v19.__pn_.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19.__pn_.__r_.__value_.__l.__size_);
          }

          break;
        }

        v9 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&__p);
        v10 = v9;
        if (SHIBYTE(v9->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&p, v9->__p_.__pn_.__r_.__value_.__l.__data_, v9->__p_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          p = v9->__p_;
        }

        v11 = std::string::ends_with[abi:ne200100](&p, ".dSYM");
        v12 = v11;
        if (SHIBYTE(p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(p.__r_.__value_.__l.__data_);
          if (!v12)
          {
            goto LABEL_33;
          }
        }

        else if (!v11)
        {
          goto LABEL_33;
        }

        if (v10[23] >= 0)
        {
          v13 = v10;
        }

        else
        {
          v13 = *v10;
        }

        unfold_dsym_path(v13, &p);
        v15 = p.__r_.__value_.__l.__size_;
        for (i = p.__r_.__value_.__r.__words[0]; i != v15; i += 24)
        {
          if (*(i + 23) < 0)
          {
            v16 = *i;
          }

          CSSymbolicatorForeachSymbolicatorWithPath();
        }

        p_p = &p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
LABEL_33:
        std::__fs::filesystem::recursive_directory_iterator::__increment(&__p, 0);
      }
    }

    v19.__pn_.__r_.__value_.__r.__words[0] = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  }
}

void sub_240F928C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  __p = (v29 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void unfold_dsym_path(char *__s@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29, __s);
  if (std::string::ends_with[abi:ne200100](&v29, ".dSYM"))
  {
    v3 = std::string::append(&v29, "/Contents/Resources/DWARF/", 0x1AuLL);
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v3->__r_.__value_.__l.__data_, v3->__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = *&v3->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v4;
    }

    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v30, &v28);
    MEMORY[0x245CD57D0](&v26, &v30, 0, 0);
    if (SHIBYTE(v30.__end_) < 0)
    {
      operator delete(v30.__first_);
    }

    v5 = v26;
    v6 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = v27;
      v25.__imp_.__ptr_ = v5;
      v25.__imp_.__cntrl_ = v6;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      v25.__imp_.__ptr_ = v26;
      v25.__imp_.__cntrl_ = 0;
    }

    while (v25.__imp_.__ptr_)
    {
      v8 = std::__fs::filesystem::directory_iterator::__dereference(&v25);
      if (SHIBYTE(v8->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__pn_, v8->__p_.__pn_.__r_.__value_.__l.__data_, v8->__p_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p.__pn_ = v8->__p_;
      }

      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      if (v10 >= v9)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v30.__end_cap_.__value_ = a2;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v15);
        }

        v16 = 24 * v12;
        v17 = *&__p.__pn_.__r_.__value_.__l.__data_;
        *(v16 + 16) = *(&__p.__pn_.__r_.__value_.__l + 2);
        *v16 = v17;
        memset(&__p, 0, sizeof(__p));
        v18 = 24 * v12 + 24;
        v19 = *(a2 + 8) - *a2;
        v20 = 24 * v12 - v19;
        memcpy((v16 - v19), *a2, v19);
        v21 = *a2;
        *a2 = v20;
        *(a2 + 8) = v18;
        v22 = *(a2 + 16);
        *(a2 + 16) = 0;
        v30.__end_ = v21;
        v30.__end_cap_.__value_ = v22;
        v30.__first_ = v21;
        v30.__begin_ = v21;
        std::__split_buffer<std::string>::~__split_buffer(&v30);
        v23 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
        *(a2 + 8) = v18;
        if (v23 < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v11 = *&__p.__pn_.__r_.__value_.__l.__data_;
        *(v10 + 16) = *(&__p.__pn_.__r_.__value_.__l + 2);
        *v10 = v11;
        *(a2 + 8) = v10 + 24;
      }

      std::__fs::filesystem::directory_iterator::__increment(&v25, 0);
    }

    if (v25.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25.__imp_.__cntrl_);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_240F92BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 81) < 0)
  {
    operator delete(*(v32 - 104));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__int128 *___ZN20SymbolicationSession25collectAvailableDsymPathsEv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  CSSymbolicatorGetSymbolOwner();
  result = CSSymbolOwnerGetCFUUIDBytes();
  if (result)
  {
    v6 = *result;
    v4 = *(a1 + 40);
    result = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,UUID&,std::string&>((v2 + 13536), &v6);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::string::ends_with[abi:ne200100](uint64_t *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return std::string_view::ends_with[abi:ne200100](v8, __s, v4);
}

__int128 *___ZN20SymbolicationSession25collectAvailableDsymPathsEv_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  CSSymbolicatorGetSymbolOwner();
  result = CSSymbolOwnerGetCFUUIDBytes();
  if (result)
  {
    v6 = *result;
    v4 = *(a1 + 40);
    result = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,UUID&,std::string&>((v2 + 13536), &v6);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SymbolicationSession::fillSharedCacheFromChunkSymbolicator()
{
  v5 = *MEMORY[0x277D85DE8];
  SharedCacheBaseAddress = CSSymbolicatorGetSharedCacheBaseAddress();
  SharedCacheUUID = CSSymbolicatorGetSharedCacheUUID();
  if (SharedCacheUUID)
  {
    SharedCacheDescription::SharedCacheDescription(v4, SharedCacheBaseAddress, 0, *SharedCacheUUID, *(SharedCacheUUID + 8));
    std::allocate_shared[abi:ne200100]<SharedCache,std::allocator<SharedCache>,_CSTypeRef &,std::shared_ptr<StringPool> &,0>();
  }

  result = 5;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F92F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN20SymbolicationSession36fillSharedCacheFromChunkSymbolicatorE10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SymbolicationSession::sharedLibraryWithCSSymbolOwner(*(a1 + 32), a2, a3, &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t SymbolicationSession::addProcessFromChunkSymbolicator(uint64_t a1)
{
  v21[8] = *MEMORY[0x277D85DE8];
  IsKernelSymbolicator = CSSymbolicatorIsKernelSymbolicator();
  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  memset(v21, 0, 24);
  v9 = MEMORY[0x277D85DD0];
  v10 = 0x40000000;
  v11 = ___ZN20SymbolicationSession31addProcessFromChunkSymbolicatorE10_CSTypeRef_block_invoke;
  v12 = &unk_278CBFF80;
  v15 = IsKernelSymbolicator;
  v13 = &v16;
  v14 = a1;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  if (v17[6] != v17[5])
  {
    if (IsKernelSymbolicator)
    {
      Pid = 0;
    }

    else
    {
      Pid = CSSymbolicatorGetPid();
    }

    v8 = Pid;
    operator new();
  }

  if (IsKernelSymbolicator)
  {
    v4 = 3;
  }

  else
  {
    v4 = 6;
  }

  _Block_object_dispose(&v16, 8);
  *&v7 = v21;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v7);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_240F93390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v32 - 152) = v30;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100]((v32 - 152));
  _Block_object_dispose(&a19, 8);
  *(v32 - 152) = v29;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100]((v32 - 152));
  std::unique_ptr<Process>::~unique_ptr[abi:ne200100](&a29);
  _Block_object_dispose((v32 - 216), 8);
  *(v32 - 128) = v31;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100]((v32 - 128));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void ___ZN20SymbolicationSession31addProcessFromChunkSymbolicatorE10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  BaseAddress = CSSymbolOwnerGetBaseAddress();
  v15 = BaseAddress;
  if ((CSSymbolOwnerIsKextBundle() & 1) != 0 || *(a1 + 48) == 1)
  {
    KernelLibraryBaseAddress = findKernelLibraryBaseAddress();
    if (v9)
    {
      v10 = KernelLibraryBaseAddress;
    }

    else
    {
      v10 = BaseAddress;
    }

    v15 = v10;
  }

  SymbolicationSession::sharedLibraryWithCSSymbolOwner(v6, a2, a3, &v14);
  v11 = *(*(a1 + 32) + 8);
  v12 = v11[6];
  if (v12 >= v11[7])
  {
    v13 = std::vector<ProcessLibrary>::__emplace_back_slow_path<unsigned long long &,std::shared_ptr<SharedLibrary>>(v11 + 5, &v15, &v14);
  }

  else
  {
    std::construct_at[abi:ne200100]<ProcessLibrary,unsigned long long &,std::shared_ptr<SharedLibrary>,ProcessLibrary*>(v11[6], &v15, &v14);
    v13 = v12 + 32;
    v11[6] = v12 + 32;
  }

  v11[6] = v13;
  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }
}

void sub_240F93578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN20SymbolicationSession31addProcessFromChunkSymbolicatorE10_CSTypeRef_block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  SymbolicationSession::sharedLibraryWithCSSymbolOwner(a1[5], a2, a3, &v8);
  v7 = a1[6] + CSSymbolOwnerGetBaseAddress();
  v4 = *(a1[4] + 8);
  v5 = v4[6];
  if (v5 >= v4[7])
  {
    v6 = std::vector<ProcessLibrary>::__emplace_back_slow_path<unsigned long long &,std::shared_ptr<SharedLibrary>>(v4 + 5, &v7, &v8);
  }

  else
  {
    std::construct_at[abi:ne200100]<ProcessLibrary,unsigned long long &,std::shared_ptr<SharedLibrary>,ProcessLibrary*>(v4[6], &v7, &v8);
    v6 = v5 + 32;
    v4[6] = v5 + 32;
  }

  v4[6] = v6;
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }
}

void sub_240F93648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  *(v13 + 48) = v12;
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::unique_ptr<Process>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<Process>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<Process>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::unique_ptr<Process>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 120);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      *(v2 + 40) = v5;
      operator delete(v5);
    }

    v7 = (v2 + 8);
    std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v7);
    MEMORY[0x245CD5830](v2, 0x10A0C40DD46570ALL);
  }

  return a1;
}

uint64_t SymbolicationSession::verifyKernelFromFileAndSetupLiveKernel(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  CSSymbolicatorGetAOutSymbolOwner();
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    v10 = *CFUUIDBytes;
    memset(v8, 0, sizeof(v8));
    KernelSymbolicator::sharedKernelSymbolicator(CFUUIDBytes);
    CSSymbolicatorGetAOutSymbolOwner();
    v3 = CSSymbolOwnerGetCFUUIDBytes();
    if (v3)
    {
      v9 = *v3;
      if (v10 == v9 && *(&v10 + 1) == *(&v9 + 1))
      {
        v5 = SymbolicationSession::addProcessFromChunkSymbolicator(a1);
      }

      else
      {
        v5 = 7;
      }
    }

    else
    {
      v5 = 4;
    }

    *&v9 = v8;
    std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  else
  {
    v5 = 3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_240F938E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t SymbolicationSession::verifySharedCacheFromFileAndSetupLiveSharedCache(uint64_t a1)
{
  v3 = a1;
  if (atomic_load_explicit(&SymbolicationSession::verifySharedCacheFromFileAndSetupLiveSharedCache(_CSTypeRef)::dscMapFlag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&SymbolicationSession::verifySharedCacheFromFileAndSetupLiveSharedCache(_CSTypeRef)::dscMapFlag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<SymbolicationSession::verifySharedCacheFromFileAndSetupLiveSharedCache(_CSTypeRef)::$_0 &&>>);
  }

  SharedCacheUUID = CSSymbolicatorGetSharedCacheUUID();
  if (!SharedCacheUUID)
  {
    return 5;
  }

  SharedCacheSymbolicators::cachedSharedCacheSymbolicatorByUUID(*SharedCacheUUID, *(SharedCacheUUID + 8));
  if (CSIsNull())
  {
    return 7;
  }

  else
  {
    return SymbolicationSession::fillSharedCacheFromChunkSymbolicator();
  }
}

uint64_t SymbolicationSession::addProcessFromModifiedNonFBSSymbolSource(uint64_t a1)
{
  Signature = CSSymbolicatorCreateSignature();
  if (!Signature)
  {
    return 6;
  }

  v3 = Signature;
  CSSymbolicatorCreateWithSignature();
  if (CSIsNull())
  {
    CFRelease(v3);
    return 6;
  }

  v5 = SymbolicationSession::addProcessFromChunkSymbolicator(a1);
  CFRelease(v3);
  CSRelease();
  return v5;
}

uint64_t SymbolicationSession::extractSymbolicationChunksFromFile(SymbolicationSession *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 1674) + 32);
  if (v2)
  {
    v2("[Symbolication] Extracting symbolication related info and events from file");
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v25 = MEMORY[0x277D85DD0];
  v26 = 0x40000000;
  v27 = ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke;
  v28 = &unk_278CBFFF8;
  v29 = &v45;
  v30 = &v33;
  v31 = &v41;
  v32 = a1;
  ktrace_file_iterate();
  v3 = *(v34 + 6);
  if (!v3)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 0x40000000;
    v20 = ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke_3;
    v21 = &unk_278CC0048;
    v22 = &v37;
    v23 = &v33;
    v24 = a1;
    ktrace_file_iterate();
    v3 = *(v34 + 6);
    if (!v3)
    {
      if (*(v46 + 24) != 1 || *(v42 + 24) != 1 || *(v38 + 24) != 1)
      {
        v3 = 2;
        goto LABEL_61;
      }

      if (*(*(a1 + 1674) + 4) != 1)
      {
        goto LABEL_59;
      }

      SymbolicationSession::collectAvailableDsymPaths(a1);
      v4 = *(a1 + 1694);
      if (!v4)
      {
        goto LABEL_62;
      }

      v5 = 0;
      while (1)
      {
        v6 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 7, v4 + 2);
        v7 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 1682, v4 + 2);
        v8 = (v4 + 4);
        if (v6)
        {
          if (*(a1 + 1685) && v7)
          {
            if (v7[4])
            {
              if (*(*(a1 + 1674) + 32))
              {
                UUID::uuidString((v4 + 1), __p);
                if ((v17 & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if (v16 >= 0)
                {
                  v9 = __p;
                }

                else
                {
                  v9 = __p[0];
                }

                snprintf(__str, 0x400uLL, "[Symbolication] Library with uuid: %s is fully symbolicated. No new symbols will be written for this library", v9);
                if (v17 == 1 && v16 < 0)
                {
                  operator delete(__p[0]);
                }

LABEL_56:
                (*(*(a1 + 1674) + 32))(__str);
              }
            }

            else
            {
              ++v5;
              if (*(*(a1 + 1674) + 32))
              {
                UUID::uuidString((v4 + 1), __p);
                if ((v17 & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if (v16 >= 0)
                {
                  v12 = __p;
                }

                else
                {
                  v12 = __p[0];
                }

                if (*(v4 + 55) < 0)
                {
                  v8 = *v8;
                }

                snprintf(__str, 0x400uLL, "[Symbolication] Current Apple Trace contains incomplete symbols for uuid: %s. New symbols will be written for this library based on %s", v12, v8);
                if (v17 == 1 && v16 < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_56;
              }
            }
          }

          else
          {
            ++v5;
            if (*(*(a1 + 1674) + 32))
            {
              UUID::uuidString((v4 + 1), __p);
              if ((v17 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              if (v16 >= 0)
              {
                v11 = __p;
              }

              else
              {
                v11 = __p[0];
              }

              if (*(v4 + 55) < 0)
              {
                v8 = *v8;
              }

              snprintf(__str, 0x400uLL, "[Symbolication] Current Apple Trace does not contain symbols for uuid: %s. The uuid is relevant for the file, new symbols will be written for this library based on %s", v11, v8);
              if (v17 == 1 && v16 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_56;
            }
          }
        }

        else if (*(*(a1 + 1674) + 32))
        {
          UUID::uuidString((v4 + 1), __p);
          if ((v17 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if (v16 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          if (*(v4 + 55) < 0)
          {
            v8 = *v8;
          }

          snprintf(__str, 0x400uLL, "[Symbolication] UUID: %s in %s is not relevant to current Apple Trace, it does not match any library found in file ", v10, v8);
          if (v17 == 1 && v16 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_56;
        }

        v4 = *v4;
        if (!v4)
        {
          if (v5)
          {
LABEL_59:
            v3 = 0;
            break;
          }

LABEL_62:
          v3 = 8;
          break;
        }
      }
    }
  }

LABEL_61:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_240F93F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  if (ktrace_chunk_tag() == 20585)
  {
    *(*(a1[4] + 8) + 24) = 1;
    ktrace_chunk_size();
    v3 = ktrace_chunk_copy_cfdata();
    if (v3)
    {
      v4 = v3;
      MEMORY[0x245CD55A0](v3, 0);
      if (CSIsNull())
      {
        goto LABEL_24;
      }

      v5 = *(*(v2 + 13392) + 4);
      if ((v5 - 1) >= 2)
      {
        if (v5)
        {
          goto LABEL_24;
        }

        v6 = SymbolicationSession::verifyKernelFromFileAndSetupLiveKernel(v2);
      }

      else
      {
        v6 = SymbolicationSession::addProcessFromChunkSymbolicator(v2);
      }

      *(*(a1[5] + 8) + 24) = v6;
LABEL_24:
      CFRelease(v4);
      if (*(*(a1[5] + 8) + 24))
      {
        goto LABEL_25;
      }

LABEL_29:
      result = 1;
      goto LABEL_30;
    }

    v13 = *(a1[5] + 8);
    v14 = 3;
  }

  else
  {
    if (ktrace_chunk_tag() != 20584)
    {
      if (ktrace_chunk_tag() == 20583)
      {
        if (!*(*(v2 + 13392) + 4))
        {
          result = 0;
          *(*(a1[5] + 8) + 24) = 9;
          goto LABEL_30;
        }

        ktrace_chunk_size();
        v10 = ktrace_chunk_copy_cfdata();
        if (v10)
        {
          v11 = v10;
          MEMORY[0x245CD55A0](v10, 0);
          if ((CSIsNull() & 1) == 0)
          {
            CSSymbolicatorGetSymbolOwner();
            if ((CSIsNull() & 1) == 0)
            {
              CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
              if (CFUUIDBytes)
              {
                v19 = *CFUUIDBytes;
                if (std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>((v2 + 13456), &v19))
                {
                  v18 = &v19;
                  *(std::__hash_table<std::__hash_value_type<UUID,BOOL>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,BOOL>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,BOOL>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,BOOL>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>((v2 + 13456), &v19) + 32) = 1;
                }

                else
                {
                  LOBYTE(v18) = CSSymbolOwnerGetSourceInfoCount() != 0;
                  std::__hash_table<std::__hash_value_type<UUID,BOOL>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,BOOL>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,BOOL>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,BOOL>>>::__emplace_unique_key_args<UUID,UUID&,BOOL>((v2 + 13456), &v19);
                }
              }
            }
          }

          CSRelease();
          CFRelease(v11);
        }
      }

      goto LABEL_29;
    }

    *(*(a1[6] + 8) + 24) = 1;
    ktrace_chunk_size();
    v7 = ktrace_chunk_copy_cfdata();
    if (v7)
    {
      v8 = v7;
      *&v19 = 0;
      *(&v19 + 1) = &v19;
      v20 = 0x2000000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke_2;
      v17[3] = &unk_278CBFFD0;
      v17[5] = &v19;
      v17[6] = v2;
      v17[4] = a1[5];
      MEMORY[0x245CD5610](v7, 0, v17);
      CFRelease(v8);
      v9 = *(*(&v19 + 1) + 24);
      _Block_object_dispose(&v19, 8);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    v13 = *(a1[5] + 8);
    v14 = 5;
  }

  *(v13 + 24) = v14;
LABEL_25:
  result = 0;
LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke_2(void *a1)
{
  result = a1[6];
  v3 = *(*(result + 13392) + 4);
  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      goto LABEL_6;
    }

    result = SymbolicationSession::verifySharedCacheFromFileAndSetupLiveSharedCache(result);
  }

  else
  {
    result = SymbolicationSession::fillSharedCacheFromChunkSymbolicator();
  }

  *(*(a1[4] + 8) + 24) = result;
LABEL_6:
  if (!*(*(a1[4] + 8) + 24))
  {
    ++*(*(a1[5] + 8) + 24);
  }

  return result;
}

uint64_t ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke_3(void *a1)
{
  v2 = a1[6];
  v3 = 1;
  if (ktrace_chunk_tag() == 20586)
  {
    ktrace_chunk_size();
    v4 = ktrace_chunk_copy_cfdata();
    *(*(a1[4] + 8) + 24) = 1;
    if (v4)
    {
      v5 = v4;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 0x40000000;
      v7[2] = ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke_4;
      v7[3] = &unk_278CC0020;
      v7[4] = a1[5];
      v7[5] = v2;
      MEMORY[0x245CD5610](v4, 0, v7);
      CFRelease(v5);
      if (!*(*(a1[5] + 8) + 24))
      {
        return v3;
      }
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 6;
    }

    return 0;
  }

  return v3;
}

uint64_t ___ZN20SymbolicationSession34extractSymbolicationChunksFromFileEP11ktrace_file_block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = *(*(result + 13392) + 4);
  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      return result;
    }

    result = SymbolicationSession::addProcessFromModifiedNonFBSSymbolSource(result);
  }

  else
  {
    result = SymbolicationSession::addProcessFromChunkSymbolicator(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void SymbolicationSession::writeSymbolDataToKtraceFile(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v4 = *(*(a1 + 13392) + 8);
  if (v4 != 1)
  {
    if (!v4)
    {
      if (a2)
      {
        v14[0] = &unk_2852D6618;
        v14[1] = a2;
        v14[2] = &v10;
        v14[3] = v14;
        SymbolicationSession::forEachSymbolChunk(a1, v14);
        std::__function::__value_func<void ()(__CFData const*)>::~__value_func[abi:ne200100](v14);
      }

      ats_symbolication_log_init();
      v5 = ats_symbolication_log;
      if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v13 = v10;
        _os_log_impl(&dword_240F85000, v5, OS_LOG_TYPE_INFO, "Wrote %u symbol chunks", buf, 8u);
      }
    }

    goto LABEL_13;
  }

  SymbolicationSession::filterUUIDsNeedingSymbolicationWithFile(a1);
  v6 = *(a1 + 13392);
  if (*(v6 + 4) != 2)
  {
    v11[0] = &unk_2852D66A8;
    v11[1] = a2;
    v11[2] = &v10;
    v11[3] = v11;
    SymbolicationSession::forEachResymbolicatedSymbolChunk(a1, v11);
    std::__function::__value_func<void ()(__CFData const*)>::~__value_func[abi:ne200100](v11);
    if (*(*(a1 + 13392) + 32))
    {
      snprintf(buf, 0x400uLL, "[Symbolication] Successfully symbolicated %u libraries", v10);
      (*(*(a1 + 13392) + 32))(buf);
    }

    goto LABEL_13;
  }

  v7 = *(v6 + 32);
  if (*(a1 + 13520))
  {
    if (v7)
    {
      snprintf(buf, 0x400uLL, "Symbolication failed. No dSYMs were found by '%s'.", *(v6 + 40));
      (*(*(a1 + 13392) + 32))(buf);
    }

    goto LABEL_13;
  }

  if (!v7)
  {
LABEL_13:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *MEMORY[0x277D85DE8];

  v7("[Symbolication] All libraries are symbolicated.");
}

void sub_240F94750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(__CFData const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SymbolicationSession::createProcessMapsChunk(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v1 = *(a1 + 376);
  FlatbufferSignatureForSymbolicatorsWithBlock = CSSymbolicatorCreateFlatbufferSignatureForSymbolicatorsWithBlock();
  ats_symbolication_log_init();
  v3 = ats_symbolication_log;
  if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
  {
    v4 = v13[3];
    v5 = v9[3];
    *buf = 134218240;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_impl(&dword_240F85000, v3, OS_LOG_TYPE_INFO, "Created %zu process maps, %zu failures", buf, 0x16u);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  v6 = *MEMORY[0x277D85DE8];
  return FlatbufferSignatureForSymbolicatorsWithBlock;
}

void sub_240F948DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN20SymbolicationSession22createProcessMapsChunkEP11ktrace_file_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 288);
  v4 = *(v2 + 296);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      result = Process::pid(*v3);
      if (result)
      {
        TransientProcessSymbolicatorFromDescriptions = Process::createTransientProcessSymbolicatorFromDescriptions(*v3);
        v9 = v8;
        result = CSIsNull();
        if (result)
        {
          ++*(*(*(v6 + 40) + 8) + 24);
        }

        else
        {
          ++*(*(*(v6 + 32) + 8) + 24);
          (*(a2 + 16))(a2, TransientProcessSymbolicatorFromDescriptions, v9);
          result = CSRelease();
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

void SymbolicationSession::writeProcessMapsToKtraceFile(std::once_flag::_State_type *a1)
{
  SymbolicationSession::updateProcessView<DyldKdebugHandler>(a1, (a1 + 52));
  ProcessMapsChunk = SymbolicationSession::createProcessMapsChunk(a1);
  if (ProcessMapsChunk)
  {
    v3 = ProcessMapsChunk;
    CFDataGetBytePtr(ProcessMapsChunk);
    CFDataGetLength(v3);
    if (!ktrace_file_append_chunk())
    {
      ats_symbolication_log_init();
      v4 = ats_symbolication_log;
      if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_ERROR))
      {
        SymbolicationSession::writeProcessMapsToKtraceFile(v4);
      }
    }

    CFRelease(v3);
  }
}

uint64_t SymbolicationSession::setKtraceSession(uint64_t result, uint64_t a2)
{
  *(result + 392) = a2;
  *(result + 408) = 0;
  return result;
}

void sub_240F94C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v21 = v16;
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::~__hash_table(v10 + v17);
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::~__hash_table(v18);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v10 + 13456);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v21);
  DyldKdebugHandler::~DyldKdebugHandler((v10 + 416));
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v10 + 352);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v10 + 312);
  a10 = (v10 + 288);
  std::vector<std::unique_ptr<Process>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<Stackshot>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v15);
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::~__hash_table(v14);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v10 + 144);
  std::__hash_table<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::__unordered_map_hasher<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::hash<AOTSharedCacheDescription>,std::equal_to<AOTSharedCacheDescription>,true>,std::__unordered_map_equal<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::equal_to<AOTSharedCacheDescription>,std::hash<AOTSharedCacheDescription>,true>,std::allocator<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>>>::~__hash_table(v13);
  std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::~__hash_table(v12);
  std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::~__hash_table(v11);
  v20 = *(v10 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void SymbolicationSession::SymbolicationSession(SymbolicationSession *this)
{
  SymbolicationSession::SymbolicationSession();
}

{
  SymbolicationSession::SymbolicationSession();
}

void SymbolicationSession::~SymbolicationSession(SymbolicationSession *this)
{
  if (*(this + 49) && *(this + 408) == 1)
  {
    ktrace_session_destroy();
  }

  v2 = *(this + 50);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 1674);
  if (v3 && (*(v3 + 24) & 1) == 0)
  {
    ats_destroy_symbolication_config(v3);
  }

  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::~__hash_table(this + 13536);
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::~__hash_table(this + 13496);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 13456);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 13400);
  DyldKdebugHandler::~DyldKdebugHandler((this + 416));
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 352);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 312);
  v5 = (this + 288);
  std::vector<std::unique_ptr<Process>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 264);
  std::vector<Stackshot>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 224);
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::~__hash_table(this + 184);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 144);
  std::__hash_table<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::__unordered_map_hasher<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::hash<AOTSharedCacheDescription>,std::equal_to<AOTSharedCacheDescription>,true>,std::__unordered_map_equal<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::equal_to<AOTSharedCacheDescription>,std::hash<AOTSharedCacheDescription>,true>,std::allocator<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::~__hash_table(this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::vector<Stackshot>::__emplace_back_slow_path<kcdata_iter &>(uint64_t *a1, kcdata_iter *a2)
{
  v2 = 0x21CFB2B78C13521DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x9A90E7D95BC609)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  if (0x439F656F1826A43ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x439F656F1826A43ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x21CFB2B78C13521DLL * ((a1[2] - *a1) >> 3)) >= 0x4D4873ECADE304)
  {
    v6 = 0x9A90E7D95BC609;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Stackshot>>(a1, v6);
  }

  v13 = 0;
  v14 = 424 * v2;
  v15 = (424 * v2);
  Stackshot::Stackshot((424 * v2), *a2);
  *&v15 = 424 * v2 + 424;
  v7 = a1[1];
  v8 = 424 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Stackshot>,Stackshot*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<Stackshot>::~__split_buffer(&v13);
  return v12;
}

void sub_240F94F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Stackshot>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Stackshot>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x9A90E7D95BC60ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Stackshot>,Stackshot*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4, v8);
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4 + 40, (v8 + 40));
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4 + 80, (v8 + 80));
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4 + 120, (v8 + 120));
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4 + 160, (v8 + 160));
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4 + 200, (v8 + 200));
      v9 = *(v8 + 240);
      v10 = *(v8 + 272);
      *(v4 + 256) = *(v8 + 256);
      *(v4 + 272) = v10;
      *(v4 + 240) = v9;
      v11 = *(v8 + 288);
      v12 = *(v8 + 304);
      v13 = *(v8 + 320);
      *(v4 + 336) = *(v8 + 336);
      *(v4 + 304) = v12;
      *(v4 + 320) = v13;
      *(v4 + 288) = v11;
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4 + 344, (v8 + 344));
      std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(v4 + 384, (v8 + 384));
      v8 += 424;
      v4 = v18 + 424;
      v18 += 424;
    }

    while (v8 != a3);
    v16 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<Stackshot>>::destroy[abi:ne200100]<Stackshot,void,0>(a1, v6);
      v6 += 424;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Stackshot>,Stackshot*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__hash_table(uint64_t result, uint64_t *a2)
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

uint64_t std::allocator_traits<std::allocator<Stackshot>>::destroy[abi:ne200100]<Stackshot,void,0>(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(a2 + 384);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(a2 + 344);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(a2 + 200);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(a2 + 160);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(a2 + 120);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(a2 + 80);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(a2 + 40);

  return std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(a2);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Stackshot>,Stackshot*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Stackshot>,Stackshot*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<Stackshot>,Stackshot*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 424;
      result = std::allocator_traits<std::allocator<Stackshot>>::destroy[abi:ne200100]<Stackshot,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<Stackshot>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Stackshot>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Stackshot>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 424;
    result = std::allocator_traits<std::allocator<Stackshot>>::destroy[abi:ne200100]<Stackshot,void,0>(v5, v4 - 424);
  }

  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

unint64_t ___ZL28findKernelLibraryBaseAddress10_CSTypeRef_block_invoke(uint64_t a1)
{
  Name = CSRegionGetName();
  if (Name)
  {
    v3 = strncmp(Name, "__TEXT_EXEC", 0xBuLL) == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = CSRegionGetName();
  if (v4)
  {
    v5 = strncmp(v4, "__PPLTEXT", 9uLL) == 0;
  }

  else
  {
    v5 = 0;
  }

  result = CSRegionGetName();
  if (result)
  {
    result = strncmp(result, "__PPLTRAMP", 0xAuLL);
    v7 = result == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v3 || v5 || v7)
  {
    result = CSRegionGetRange();
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 48) == 1 && result >= *(v8 + 40))
    {
      result = *(v8 + 40);
    }

    *(v8 + 40) = result;
    *(v8 + 48) = 1;
  }

  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_240F95444(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_240F955BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CBFCE8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
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

uint64_t std::vector<ProcessLibrary>::__emplace_back_slow_path<unsigned long long &,std::shared_ptr<SharedLibrary>>(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ProcessLibrary>>(a1, v8);
  }

  v15 = 0;
  v16 = 32 * v3;
  std::construct_at[abi:ne200100]<ProcessLibrary,unsigned long long &,std::shared_ptr<SharedLibrary>,ProcessLibrary*>(32 * v3, a2, a3);
  v17 = (32 * v3 + 32);
  v9 = a1[1];
  v10 = (32 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProcessLibrary>,ProcessLibrary*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ProcessLibrary>::~__split_buffer(&v15);
  return v14;
}

void sub_240F95A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ProcessLibrary>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<ProcessLibrary,unsigned long long &,std::shared_ptr<SharedLibrary>,ProcessLibrary*>(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  v6 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  ProcessLibrary::ProcessLibrary(a1, v4, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }

  return a1;
}

void sub_240F95AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ProcessLibrary>::__init_with_size[abi:ne200100]<ProcessLibrary*,ProcessLibrary*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ProcessLibrary>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F95B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ProcessLibrary>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ProcessLibrary>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ProcessLibrary>,ProcessLibrary*,ProcessLibrary*,ProcessLibrary*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      *v4 = *a2;
      v5 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<Process>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<Process>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<Process>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void DyldKdebugHandler::~DyldKdebugHandler(DyldKdebugHandler *this)
{
  v2 = *(this + 1619);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 12904);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 12864);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 12824);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 12784);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 12744);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(this + 12704);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(this + 12664);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(this + 12624);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(this + 12584);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(this + 12544);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(this + 12504);
}

void std::vector<std::unique_ptr<Process>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<Process>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<Stackshot>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Stackshot>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<Stackshot>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<Stackshot>>::destroy[abi:ne200100]<Stackshot,void,0>(v3, i))
  {
    i -= 424;
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::__hash_table<std::__hash_value_type<UUID,MergedLibrary>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,MergedLibrary>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,MergedLibrary>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,MergedLibrary>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void *std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(void *a1, LibraryDescription *this)
{
  v4 = LibraryDescription::hash(this);
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

  if (!LibraryDescription::operator==((v11 + 2), this))
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::find<SharedCacheDescription>(void *a1, SharedCacheDescription *this)
{
  v4 = SharedCacheDescription::hash(this);
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
        if (SharedCacheDescription::operator==((v11 + 2), this))
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

void *std::__shared_ptr_emplace<SharedCache>::__shared_ptr_emplace[abi:ne200100]<SharedCacheDescription &,std::shared_ptr<StringPool> &,std::allocator<SharedCache>,0>(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852D6578;
  v3 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v3;
  v7 = *(a2 + 32);
  SharedCache::SharedCache(a1 + 3, v6);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void std::__shared_ptr_emplace<SharedCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852D6578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD5830);
}

void *std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::__emplace_unique_key_args<SharedCacheDescription,SharedCacheDescription&,std::shared_ptr<SharedCache>>(void *a1, SharedCacheDescription *this)
{
  v4 = SharedCacheDescription::hash(this);
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

  if (!SharedCacheDescription::operator==((v11 + 2), this))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[8];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] ^ *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
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

void *std::__shared_ptr_emplace<SharedLibrary>::__shared_ptr_emplace[abi:ne200100]<UUID &,std::string_view &,std::shared_ptr<StringPool> &,std::allocator<SharedLibrary>,0>(void *a1, void *a2, void *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852D65C8;
  SharedLibrary::SharedLibrary(a1 + 3, *a2, a2[1], *a3, a3[1], a4);
  return a1;
}

void std::__shared_ptr_emplace<SharedLibrary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852D65C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD5830);
}

void *std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::__emplace_unique_key_args<UUID,UUID&,std::shared_ptr<SharedLibrary>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__shared_ptr_emplace<SharedLibrary>::__shared_ptr_emplace[abi:ne200100]<_CSTypeRef &,std::shared_ptr<StringPool> &,std::allocator<SharedLibrary>,0>(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852D65C8;
  SharedLibrary::SharedLibrary(a1 + 3, *a2, a2[1], a3);
  return a1;
}

std::once_flag::_State_type *SymbolicationSession::addNewProcessWithDataProvider<Stackshot>(std::once_flag::_State_type *result, int a2, Stackshot *a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    SymbolicationSession::createProcess<Stackshot>(result, a2, a3);
  }

  return result;
}

void SymbolicationSession::updateProcessWithDataProvider<Stackshot>(std::once_flag::_State_type *a1, int a2, Stackshot *a3)
{
  LODWORD(v16) = a2;
  v6 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 39, &v16);
  if (v6)
  {
    v7 = v6[3];
    if (v7)
    {
      SymbolicationSession::createProcessLibrariesForPid<Stackshot>(a1, a2, a3, &v16);
      if (v17 != v16)
      {
        v15[0] = v16;
        v15[1] = v17;
        v15[2] = v18;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        Process::addLibraries(v7, v15);
        v12 = v15;
        std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v12);
      }

      SymbolicationSession::aotImagesForPid<Stackshot>(a3, a2, &v12);
      v8 = v12;
      if (v13 != v12)
      {
        __p = v12;
        v10 = v13;
        v11 = v14;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        Process::addAOTImages(v7, &__p);
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }

        v8 = v12;
      }

      if (v8)
      {
        v13 = v8;
        operator delete(v8);
      }

      v12 = &v16;
      std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v12);
    }
  }
}

void sub_240F97008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char *a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    a13 = a12;
    operator delete(a12);
  }

  a12 = &a18;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SymbolicationSession::createProcess<Stackshot>(std::once_flag::_State_type *a1, int a2, Stackshot *a3)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v7 = a2;
  LODWORD(v8[0]) = a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 44, v8);
  SymbolicationSession::createProcessLibrariesForPid<Stackshot>(a1, a2, a3, &v6);
  operator new();
}

void sub_240F972D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  std::unique_ptr<Process>::~unique_ptr[abi:ne200100](&a14);
  *(v28 - 120) = &a15;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100]((v28 - 120));
  _Unwind_Resume(a1);
}

uint64_t SymbolicationSession::createProcessLibrariesForPid<Stackshot>@<X0>(std::once_flag::_State_type *a1@<X0>, int a2@<W1>, Stackshot *a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  pid = a2;
  if (!std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 18, &pid))
  {
    if (proc_pidpath(pid, buffer, 0x400u) >= 1)
    {
      v47 = MEMORY[0x277D85DD0];
      v48 = 0x40000000;
      v49 = ___ZN20SymbolicationSession28createProcessLibrariesForPidI9StackshotEENSt3__16vectorI14ProcessLibraryNS2_9allocatorIS4_EEEEiRT_b_block_invoke;
      v50 = &__block_descriptor_tmp_56;
      v51 = a1;
      CSSymbolicatorForeachSymbolicatorWithPath();
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 18, &pid);
  }

  SymbolicationSession::collectAllLibraryDescriptionsForPid<Stackshot>(a3, a1, pid, v45);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = v46;
  if (v46)
  {
    while (1)
    {
      Address = LibraryDescription::loadAddress((v7 + 2));
      *v54 = LibraryDescription::uuid((v7 + 2));
      *&v54[8] = v8;
      v9 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 1675, v54);
      if (v9)
      {
        MergedLibrary::path(v9 + 2, &__s1);
        if (v43)
        {
          goto LABEL_8;
        }

        if (!std::__hash_table<UUID,std::hash<UUID>,std::equal_to<UUID>,std::allocator<UUID>>::find<UUID>(a1 + 28, v54))
        {
          break;
        }
      }

LABEL_57:
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_69;
      }
    }

    v40 = 0;
    __s = 0;
    v11 = OSLogLookupPathWithUUID();
    if (__s)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(buffer, &__s);
      std::__fs::filesystem::__status(buffer, 0);
      v13 = v53;
      if ((buffer[23] & 0x80000000) != 0)
      {
        operator delete(*buffer);
      }

      if (v13 && v13 != 255)
      {
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(buffer, &__s);
        std::__fs::filesystem::__status(buffer, 0);
        v14 = LOBYTE(__p[0]);
        if ((buffer[23] & 0x80000000) != 0)
        {
          operator delete(*buffer);
        }

        if (v14 == 2 && std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 23, v54))
        {
          __p[0] = v54;
          v15 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a1 + 23, v54);
          v16 = (v15 + 4);
          if (*(v15 + 55) < 0)
          {
            v16 = *v16;
          }

          __s = v16;
        }

        v17 = *(v7 + 2);
        *buffer = *(v7 + 1);
        *&buffer[16] = v17;
        v56 = *(v7 + 3);
        v18 = strlen(__s);
        *&v56 = __s;
        *(&v56 + 1) = v18;
        SymbolicationSession::updateBestKnownLibraryDescriptions(a1, buffer);
        if (v43 == 1)
        {
          v43 = 0;
        }

        __s1.n128_u64[0] = __s;
        __s1.n128_u64[1] = strlen(__s);
        v43 = 1;
      }
    }

    if ((v43 & 1) == 0)
    {
      if (!std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 23, v54))
      {
        UUID::uuidString(v54, buffer);
        if (buffer[24] == 1)
        {
          *__p = *buffer;
          v39 = *&buffer[16];
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "<NULL_UUID>");
          if ((buffer[24] & 1) != 0 && (buffer[23] & 0x80000000) != 0)
          {
            operator delete(*buffer);
          }
        }

        ats_symbolication_log_init();
        v34 = ats_symbolication_log;
        if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
        {
          v35 = __p;
          if (v39 < 0)
          {
            v35 = __p[0];
          }

          *buffer = 136315650;
          *&buffer[4] = v35;
          *&buffer[12] = 2048;
          *&buffer[14] = Address;
          *&buffer[22] = 1024;
          *&buffer[24] = pid;
          _os_log_impl(&dword_240F85000, v34, OS_LOG_TYPE_INFO, "Failed to find path for %s @ 0x%llx (pid=%d)", buffer, 0x1Cu);
        }

LABEL_55:
        std::__hash_table<UUID,std::hash<UUID>,std::equal_to<UUID>,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID&>(a1 + 28, v54);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_57;
      }

      v19 = *(v7 + 2);
      *buffer = *(v7 + 1);
      *&buffer[16] = v19;
      v56 = *(v7 + 3);
      __p[0] = v54;
      v20 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a1 + 23, v54);
      v23 = v20[4];
      v21 = v20 + 4;
      v22 = v23;
      v24 = *(v21 + 23);
      if ((v24 & 0x80u) != 0)
      {
        v24 = v21[1];
      }

      else
      {
        v22 = v21;
      }

      *&v56 = v22;
      *(&v56 + 1) = v24;
      SymbolicationSession::updateBestKnownLibraryDescriptions(a1, buffer);
      __p[0] = v54;
      v25 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a1 + 23, v54);
      v28 = v25[4];
      v26 = v25 + 4;
      v27 = v28;
      v29 = *(v26 + 23);
      if ((v29 & 0x80u) != 0)
      {
        v29 = v26[1];
      }

      else
      {
        v27 = v26;
      }

      __s1.n128_u64[0] = v27;
      __s1.n128_u64[1] = v29;
      v43 = 1;
    }

LABEL_8:
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      v10 = __s1.n128_u64[0];
LABEL_42:
      SymbolicationSession::sharedLibraryWithUUIDAndPath(a1, *v54, *&v54[8], v10, __s1.n128_i64[1], buffer);
      v30 = a4[1];
      if (v30 >= a4[2])
      {
        v31 = std::vector<ProcessLibrary>::__emplace_back_slow_path<unsigned long long &,std::shared_ptr<SharedLibrary>>(a4, &Address, buffer);
      }

      else
      {
        std::construct_at[abi:ne200100]<ProcessLibrary,unsigned long long &,std::shared_ptr<SharedLibrary>,ProcessLibrary*>(a4[1], &Address, buffer);
        v31 = v30 + 32;
      }

      a4[1] = v31;
      if (*&buffer[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buffer[8]);
      }

      goto LABEL_57;
    }

    if ((v43 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v10 = __s1.n128_u64[0];
    if (!deny_nfs_mount_lookup(__s1.n128_u64[0]))
    {
      goto LABEL_42;
    }

    UUID::uuidString(v54, buffer);
    if (buffer[24] == 1)
    {
      *__p = *buffer;
      v39 = *&buffer[16];
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "<NULL_UUID>");
      if ((buffer[24] & 1) != 0 && (buffer[23] & 0x80000000) != 0)
      {
        operator delete(*buffer);
      }
    }

    ats_symbolication_log_init();
    v32 = ats_symbolication_log;
    if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
    {
      if ((v43 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v33 = __p;
      if (v39 < 0)
      {
        v33 = __p[0];
      }

      *buffer = 136315906;
      *&buffer[4] = __s1.n128_u64[0];
      *&buffer[12] = 2080;
      *&buffer[14] = v33;
      *&buffer[22] = 2048;
      *&buffer[24] = Address;
      LOWORD(v56) = 1024;
      *(&v56 + 2) = pid;
      _os_log_impl(&dword_240F85000, v32, OS_LOG_TYPE_INFO, "NFS paths may cause hangs. Denying to process NFS path %s for %s @ 0x%llx (pid=%d)", buffer, 0x26u);
    }

    goto LABEL_55;
  }

LABEL_69:
  result = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v45);
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F97B34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v52);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(&v51);
  _Unwind_Resume(v50);
}

void SymbolicationSession::sharedCacheDescriptionForPid<Stackshot>(Stackshot *this@<X2>, int a2@<W1>, uint64_t a3@<X8>)
{
  Stackshot::sharedCacheDescriptionsForPid(this, a2, &v6);
  v4 = v6;
  if (v6 == v7)
  {
    *a3 = 0;
    *(a3 + 40) = 0;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v5 = v6[1];
    *a3 = *v6;
    *(a3 + 16) = v5;
    *(a3 + 32) = v4[4];
    *(a3 + 40) = 1;
  }

  v7 = v4;
  operator delete(v4);
}

void SymbolicationSession::aotSharedCacheDescriptionForPid<Stackshot>(Stackshot *this@<X2>, int a2@<W1>, uint64_t a3@<X8>)
{
  Stackshot::aotSharedCacheDescriptionsForPid(this, a2, &v6);
  v4 = v6;
  if (v6 == v7)
  {
    *a3 = 0;
    *(a3 + 48) = 0;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v5 = v6[1];
    *a3 = *v6;
    *(a3 + 16) = v5;
    *(a3 + 32) = v4[2];
    *(a3 + 48) = 1;
  }

  v7 = v4;
  operator delete(v4);
}

void SymbolicationSession::aotImagesForPid<Stackshot>(Stackshot *this@<X2>, int a2@<W1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  Stackshot::aotImageDescriptionsForPid(this, a2, &v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v13 = *(v4 + 6);
      v12[1] = v7;
      v12[2] = v8;
      v12[0] = v6;
      std::vector<AOTImage>::emplace_back<AOTImageDescription &>(a3, v12);
      v4 = (v4 + 56);
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_240F97DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

__int128 *___ZN20SymbolicationSession28createProcessLibrariesForPidI9StackshotEENSt3__16vectorI14ProcessLibraryNS2_9allocatorIS4_EEEEiRT_b_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  CSSymbolicatorGetSymbolOwner();
  result = CSSymbolOwnerGetCFUUIDBytes();
  if (result)
  {
    v6 = *result;
    Path = CSSymbolOwnerGetPath();
    v4 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>((v1 + 184), &v6);
    result = std::string::__assign_external((v4 + 4), Path);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void SymbolicationSession::collectAllLibraryDescriptionsForPid<Stackshot>(Stackshot *this@<X2>, std::once_flag::_State_type *a2@<X0>, int a3@<W1>, uint64_t a4@<X8>)
{
  v10 = a3;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  if (!a3)
  {
    SymbolicationSession::collectLiveLibraryDescriptionsForPid(a2, 0);
  }

  SymbolicationSession::collectProviderLibraryDescriptionsForPid<Stackshot>(a2, a3, this, a4);
  if (*(a2[1674] + 24) == 1)
  {
    v8 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a2 + 39, &v10);
    if (!v8 || (v9 = v8[3]) == 0 || v10 && !*Process::sharedCache(v9))
    {
      SymbolicationSession::collectSharedCacheLibraryDescriptionsForPid<Stackshot>(a2, v10, this, a4);
    }
  }
}

BOOL deny_nfs_mount_lookup(char *__s1)
{
  v2 = &unk_278CC00E0;
  v3 = 64;
  while (strncmp(__s1, *(v2 - 1), *v2))
  {
    v2 += 2;
    v3 -= 16;
    if (!v3)
    {
      return strstr(__s1, "serve-xcode/mount") != 0;
    }
  }

  return 1;
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void SymbolicationSession::collectProviderLibraryDescriptionsForPid<Stackshot>(SymbolicationSession *a1, int a2, Stackshot *this, void *a4)
{
  Stackshot::libraryDescriptionsForPid(this, a2, &v8);
  v6 = v8;
  v7 = v9;
  if (v8 != v9)
  {
    do
    {
      std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(a4, v6);
      SymbolicationSession::updateBestKnownLibraryDescriptions(a1, v6);
      v6 = (v6 + 48);
    }

    while (v6 != v7);
    v6 = v8;
  }

  if (v6)
  {
    v9 = v6;
    operator delete(v6);
  }
}

void sub_240F981BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SymbolicationSession::collectSharedCacheLibraryDescriptionsForPid<Stackshot>(SymbolicationSession *a1, int a2, Stackshot *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  SymbolicationSession::sharedCacheDescriptionForPid<Stackshot>(a3, a2, v15);
  if (v17 == 1)
  {
    v13[0] = v15[0];
    v13[1] = v15[1];
    v14 = v16;
    SymbolicationSession::sharedCacheWithDescription(a1, v13, &v11);
    v6 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v6)
    {
      v7 = SharedCache::libraryDescriptions(v6);
      v8 = *v7;
      v9 = *(v7 + 8);
      while (v8 != v9)
      {
        std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(a4, v8);
        SymbolicationSession::updateBestKnownLibraryDescriptions(a1, v8);
        v8 = (v8 + 48);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void *std::__hash_table<UUID,std::hash<UUID>,std::equal_to<UUID>,std::allocator<UUID>>::find<UUID>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] ^ *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
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

void *std::__hash_table<UUID,std::hash<UUID>,std::equal_to<UUID>,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID&>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t std::vector<AOTImage>::emplace_back<AOTImageDescription &>(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v8 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x1C71C71C71C71C7)
    {
      v11 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AOTImage>>(a1, v11);
    }

    v12 = *(a2 + 16);
    v19 = *a2;
    v20 = v12;
    v21 = *(a2 + 32);
    v22 = *(a2 + 48);
    v13 = AOTImage::AOTImage(72 * v8, &v19);
    v7 = v13 + 72;
    v14 = *(a1 + 8) - *a1;
    v15 = v13 - v14;
    memcpy((v13 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    v19 = *a2;
    v20 = v6;
    v21 = *(a2 + 32);
    v22 = *(a2 + 48);
    AOTImage::AOTImage(v5, &v19);
    v7 = v5 + 72;
    *(a1 + 8) = v7;
  }

  *(a1 + 8) = v7;
  v17 = *MEMORY[0x277D85DE8];
  return v7 - 72;
}

void sub_240F98748(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<SymbolicationSession::collectLiveLibraryDescriptionsForPid(int,std::unordered_set<LibraryDescription> &)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  ats_symbolication_log_init();
  v2 = ats_symbolication_log;
  if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_DEBUG))
  {
    std::__call_once_proxy[abi:ne200100]<std::tuple<SymbolicationSession::collectLiveLibraryDescriptionsForPid(int,std::unordered_set<LibraryDescription> &)::$_0 &&>>(v2);
  }

  v3 = *(v1 + 13440);
  v4 = *(v1 + 13448);
  return CSSymbolicatorForeachSymbolOwnerAtTime();
}

void ___ZZN20SymbolicationSession36collectLiveLibraryDescriptionsForPidEiRNSt3__113unordered_setI18LibraryDescriptionNS0_4hashIS2_EENS0_8equal_toIS2_EENS0_9allocatorIS2_EEEEENK3__0clEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SymbolicationSession::sharedLibraryWithCSSymbolOwner(*(a1 + 32), a2, a3, &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

std::once_flag::_State_type *SymbolicationSession::addNewProcessWithDataProvider<DyldKdebugHandler>(std::once_flag::_State_type *result, int a2, DyldKdebugHandler *a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    SymbolicationSession::createProcess<DyldKdebugHandler>(result, a2, a3);
  }

  return result;
}

void SymbolicationSession::updateProcessWithDataProvider<DyldKdebugHandler>(std::once_flag::_State_type *a1, int a2, DyldKdebugHandler *a3)
{
  LODWORD(v16) = a2;
  v6 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 39, &v16);
  if (v6)
  {
    v7 = v6[3];
    if (v7)
    {
      SymbolicationSession::createProcessLibrariesForPid<DyldKdebugHandler>(a1, a2, a3, &v16);
      if (v17 != v16)
      {
        v15[0] = v16;
        v15[1] = v17;
        v15[2] = v18;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        Process::addLibraries(v7, v15);
        v12 = v15;
        std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v12);
      }

      SymbolicationSession::aotImagesForPid<DyldKdebugHandler>(a3, a2, &v12);
      v8 = v12;
      if (v13 != v12)
      {
        __p = v12;
        v10 = v13;
        v11 = v14;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        Process::addAOTImages(v7, &__p);
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }

        v8 = v12;
      }

      if (v8)
      {
        v13 = v8;
        operator delete(v8);
      }

      v12 = &v16;
      std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v12);
    }
  }
}

void sub_240F989E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char *a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    a13 = a12;
    operator delete(a12);
  }

  a12 = &a18;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SymbolicationSession::createProcess<DyldKdebugHandler>(std::once_flag::_State_type *a1, int a2, DyldKdebugHandler *a3)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v7 = a2;
  LODWORD(v8[0]) = a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 44, v8);
  SymbolicationSession::createProcessLibrariesForPid<DyldKdebugHandler>(a1, a2, a3, &v6);
  operator new();
}

void sub_240F98CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  std::unique_ptr<Process>::~unique_ptr[abi:ne200100](&a14);
  *(v28 - 120) = &a15;
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100]((v28 - 120));
  _Unwind_Resume(a1);
}

uint64_t SymbolicationSession::createProcessLibrariesForPid<DyldKdebugHandler>@<X0>(std::once_flag::_State_type *a1@<X0>, int a2@<W1>, DyldKdebugHandler *a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  pid = a2;
  if (!std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 18, &pid))
  {
    if (proc_pidpath(pid, buffer, 0x400u) >= 1)
    {
      v47 = MEMORY[0x277D85DD0];
      v48 = 0x40000000;
      v49 = ___ZN20SymbolicationSession28createProcessLibrariesForPidI17DyldKdebugHandlerEENSt3__16vectorI14ProcessLibraryNS2_9allocatorIS4_EEEEiRT_b_block_invoke;
      v50 = &__block_descriptor_tmp_65;
      v51 = a1;
      CSSymbolicatorForeachSymbolicatorWithPath();
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 18, &pid);
  }

  SymbolicationSession::collectAllLibraryDescriptionsForPid<DyldKdebugHandler>(a3, a1, pid, v45);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = v46;
  if (v46)
  {
    while (1)
    {
      Address = LibraryDescription::loadAddress((v7 + 2));
      *v54 = LibraryDescription::uuid((v7 + 2));
      *&v54[8] = v8;
      v9 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 1675, v54);
      if (v9)
      {
        MergedLibrary::path(v9 + 2, &__s1);
        if (v43)
        {
          goto LABEL_8;
        }

        if (!std::__hash_table<UUID,std::hash<UUID>,std::equal_to<UUID>,std::allocator<UUID>>::find<UUID>(a1 + 28, v54))
        {
          break;
        }
      }

LABEL_57:
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_69;
      }
    }

    v40 = 0;
    __s = 0;
    v11 = OSLogLookupPathWithUUID();
    if (__s)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(buffer, &__s);
      std::__fs::filesystem::__status(buffer, 0);
      v13 = v53;
      if ((buffer[23] & 0x80000000) != 0)
      {
        operator delete(*buffer);
      }

      if (v13 && v13 != 255)
      {
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(buffer, &__s);
        std::__fs::filesystem::__status(buffer, 0);
        v14 = LOBYTE(__p[0]);
        if ((buffer[23] & 0x80000000) != 0)
        {
          operator delete(*buffer);
        }

        if (v14 == 2 && std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 23, v54))
        {
          __p[0] = v54;
          v15 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a1 + 23, v54);
          v16 = (v15 + 4);
          if (*(v15 + 55) < 0)
          {
            v16 = *v16;
          }

          __s = v16;
        }

        v17 = *(v7 + 2);
        *buffer = *(v7 + 1);
        *&buffer[16] = v17;
        v56 = *(v7 + 3);
        v18 = strlen(__s);
        *&v56 = __s;
        *(&v56 + 1) = v18;
        SymbolicationSession::updateBestKnownLibraryDescriptions(a1, buffer);
        if (v43 == 1)
        {
          v43 = 0;
        }

        __s1.n128_u64[0] = __s;
        __s1.n128_u64[1] = strlen(__s);
        v43 = 1;
      }
    }

    if ((v43 & 1) == 0)
    {
      if (!std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1 + 23, v54))
      {
        UUID::uuidString(v54, buffer);
        if (buffer[24] == 1)
        {
          *__p = *buffer;
          v39 = *&buffer[16];
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "<NULL_UUID>");
          if ((buffer[24] & 1) != 0 && (buffer[23] & 0x80000000) != 0)
          {
            operator delete(*buffer);
          }
        }

        ats_symbolication_log_init();
        v34 = ats_symbolication_log;
        if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
        {
          v35 = __p;
          if (v39 < 0)
          {
            v35 = __p[0];
          }

          *buffer = 136315650;
          *&buffer[4] = v35;
          *&buffer[12] = 2048;
          *&buffer[14] = Address;
          *&buffer[22] = 1024;
          *&buffer[24] = pid;
          _os_log_impl(&dword_240F85000, v34, OS_LOG_TYPE_INFO, "Failed to find path for %s @ 0x%llx (pid=%d)", buffer, 0x1Cu);
        }

LABEL_55:
        std::__hash_table<UUID,std::hash<UUID>,std::equal_to<UUID>,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID&>(a1 + 28, v54);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_57;
      }

      v19 = *(v7 + 2);
      *buffer = *(v7 + 1);
      *&buffer[16] = v19;
      v56 = *(v7 + 3);
      __p[0] = v54;
      v20 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a1 + 23, v54);
      v23 = v20[4];
      v21 = v20 + 4;
      v22 = v23;
      v24 = *(v21 + 23);
      if ((v24 & 0x80u) != 0)
      {
        v24 = v21[1];
      }

      else
      {
        v22 = v21;
      }

      *&v56 = v22;
      *(&v56 + 1) = v24;
      SymbolicationSession::updateBestKnownLibraryDescriptions(a1, buffer);
      __p[0] = v54;
      v25 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a1 + 23, v54);
      v28 = v25[4];
      v26 = v25 + 4;
      v27 = v28;
      v29 = *(v26 + 23);
      if ((v29 & 0x80u) != 0)
      {
        v29 = v26[1];
      }

      else
      {
        v27 = v26;
      }

      __s1.n128_u64[0] = v27;
      __s1.n128_u64[1] = v29;
      v43 = 1;
    }

LABEL_8:
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      v10 = __s1.n128_u64[0];
LABEL_42:
      SymbolicationSession::sharedLibraryWithUUIDAndPath(a1, *v54, *&v54[8], v10, __s1.n128_i64[1], buffer);
      v30 = a4[1];
      if (v30 >= a4[2])
      {
        v31 = std::vector<ProcessLibrary>::__emplace_back_slow_path<unsigned long long &,std::shared_ptr<SharedLibrary>>(a4, &Address, buffer);
      }

      else
      {
        std::construct_at[abi:ne200100]<ProcessLibrary,unsigned long long &,std::shared_ptr<SharedLibrary>,ProcessLibrary*>(a4[1], &Address, buffer);
        v31 = v30 + 32;
      }

      a4[1] = v31;
      if (*&buffer[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buffer[8]);
      }

      goto LABEL_57;
    }

    if ((v43 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v10 = __s1.n128_u64[0];
    if (!deny_nfs_mount_lookup(__s1.n128_u64[0]))
    {
      goto LABEL_42;
    }

    UUID::uuidString(v54, buffer);
    if (buffer[24] == 1)
    {
      *__p = *buffer;
      v39 = *&buffer[16];
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "<NULL_UUID>");
      if ((buffer[24] & 1) != 0 && (buffer[23] & 0x80000000) != 0)
      {
        operator delete(*buffer);
      }
    }

    ats_symbolication_log_init();
    v32 = ats_symbolication_log;
    if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
    {
      if ((v43 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v33 = __p;
      if (v39 < 0)
      {
        v33 = __p[0];
      }

      *buffer = 136315906;
      *&buffer[4] = __s1.n128_u64[0];
      *&buffer[12] = 2080;
      *&buffer[14] = v33;
      *&buffer[22] = 2048;
      *&buffer[24] = Address;
      LOWORD(v56) = 1024;
      *(&v56 + 2) = pid;
      _os_log_impl(&dword_240F85000, v32, OS_LOG_TYPE_INFO, "NFS paths may cause hangs. Denying to process NFS path %s for %s @ 0x%llx (pid=%d)", buffer, 0x26u);
    }

    goto LABEL_55;
  }

LABEL_69:
  result = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v45);
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F99514(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](&v52);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(&v51);
  _Unwind_Resume(v50);
}

void SymbolicationSession::sharedCacheDescriptionForPid<DyldKdebugHandler>(DyldKdebugHandler *this@<X2>, int a2@<W1>, uint64_t a3@<X8>)
{
  DyldKdebugHandler::sharedCacheDescriptionsForPid(this, a2, &v6);
  v4 = v6;
  if (v6 == v7)
  {
    *a3 = 0;
    *(a3 + 40) = 0;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v5 = v6[1];
    *a3 = *v6;
    *(a3 + 16) = v5;
    *(a3 + 32) = v4[4];
    *(a3 + 40) = 1;
  }

  v7 = v4;
  operator delete(v4);
}

void SymbolicationSession::aotSharedCacheDescriptionForPid<DyldKdebugHandler>(DyldKdebugHandler *this@<X2>, int a2@<W1>, uint64_t a3@<X8>)
{
  DyldKdebugHandler::aotSharedCacheDescriptionsForPid(this, a2, &v6);
  v4 = v6;
  if (v6 == v7)
  {
    *a3 = 0;
    *(a3 + 48) = 0;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v5 = v6[1];
    *a3 = *v6;
    *(a3 + 16) = v5;
    *(a3 + 32) = v4[2];
    *(a3 + 48) = 1;
  }

  v7 = v4;
  operator delete(v4);
}

void SymbolicationSession::aotImagesForPid<DyldKdebugHandler>(DyldKdebugHandler *this@<X2>, int a2@<W1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  DyldKdebugHandler::aotImageDescriptionsForPid(this, a2, &v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v13 = *(v4 + 6);
      v12[1] = v7;
      v12[2] = v8;
      v12[0] = v6;
      std::vector<AOTImage>::emplace_back<AOTImageDescription &>(a3, v12);
      v4 = (v4 + 56);
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_240F997D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

__int128 *___ZN20SymbolicationSession28createProcessLibrariesForPidI17DyldKdebugHandlerEENSt3__16vectorI14ProcessLibraryNS2_9allocatorIS4_EEEEiRT_b_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  CSSymbolicatorGetSymbolOwner();
  result = CSSymbolOwnerGetCFUUIDBytes();
  if (result)
  {
    v6 = *result;
    Path = CSSymbolOwnerGetPath();
    v4 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>((v1 + 184), &v6);
    result = std::string::__assign_external((v4 + 4), Path);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void SymbolicationSession::collectAllLibraryDescriptionsForPid<DyldKdebugHandler>(DyldKdebugHandler *this@<X2>, std::once_flag::_State_type *a2@<X0>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v10 = a3;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  if (!a3)
  {
    SymbolicationSession::collectLiveLibraryDescriptionsForPid(a2, 0);
  }

  SymbolicationSession::collectProviderLibraryDescriptionsForPid<DyldKdebugHandler>(a2, a3, this, a4);
  if (*(a2[1674] + 24) == 1)
  {
    v8 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a2 + 39, &v10);
    if (!v8 || (v9 = v8[3]) == 0 || v10 && !*Process::sharedCache(v9))
    {
      SymbolicationSession::collectSharedCacheLibraryDescriptionsForPid<DyldKdebugHandler>(a2, v10, this, a4);
    }
  }
}

void SymbolicationSession::collectProviderLibraryDescriptionsForPid<DyldKdebugHandler>(SymbolicationSession *a1, unsigned int a2, DyldKdebugHandler *this, void *a4)
{
  DyldKdebugHandler::libraryDescriptionsForPid(this, a2, &v8);
  v6 = v8;
  v7 = v9;
  if (v8 != v9)
  {
    do
    {
      std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(a4, v6);
      SymbolicationSession::updateBestKnownLibraryDescriptions(a1, v6);
      v6 = (v6 + 64);
    }

    while (v6 != v7);
    v6 = v8;
  }

  if (v6)
  {
    v9 = v6;
    operator delete(v6);
  }
}

void sub_240F99A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SymbolicationSession::collectSharedCacheLibraryDescriptionsForPid<DyldKdebugHandler>(SymbolicationSession *a1, int a2, DyldKdebugHandler *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  SymbolicationSession::sharedCacheDescriptionForPid<DyldKdebugHandler>(a3, a2, v15);
  if (v17 == 1)
  {
    v13[0] = v15[0];
    v13[1] = v15[1];
    v14 = v16;
    SymbolicationSession::sharedCacheWithDescription(a1, v13, &v11);
    v6 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v6)
    {
      v7 = SharedCache::libraryDescriptions(v6);
      v8 = *v7;
      v9 = *(v7 + 8);
      while (v8 != v9)
      {
        std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(a4, v8);
        SymbolicationSession::updateBestKnownLibraryDescriptions(a1, v8);
        v8 = (v8 + 48);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

const void **ScopeGuard<void const*,ScopeGuardPolicy<void const*>>::~ScopeGuard(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void *std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,UUID const&,std::string_view>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_22:
    v10 = a2[1] ^ *a2;
    std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__construct_node_hash<UUID const&,std::string_view>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  if (result[2] != *a2 || result[3] != a2[1])
  {
    goto LABEL_21;
  }

  return result;
}

void sub_240F9A07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F9A1A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__erase_unique<UUID>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::string>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,UUID&,std::string&>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_22:
    v10 = a2[1] ^ *a2;
    std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__construct_node_hash<UUID&,std::string&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  if (result[2] != *a2 || result[3] != a2[1])
  {
    goto LABEL_21;
  }

  return result;
}

void sub_240F9A598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F9A66C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_240F9A6CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<SharedCache>::__shared_ptr_emplace[abi:ne200100]<_CSTypeRef &,std::shared_ptr<StringPool> &,std::allocator<SharedCache>,0>(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852D6578;
  SharedCache::SharedCache(a1 + 3, *a2, a2[1], a3);
  return a1;
}

void *std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::__emplace_unique_key_args<SharedCacheDescription,SharedCacheDescription&,std::shared_ptr<SharedCache>&>(void *a1, SharedCacheDescription *this)
{
  v4 = SharedCacheDescription::hash(this);
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

  if (!SharedCacheDescription::operator==((v11 + 2), this))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,Process *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Process *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Process *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Process *>>>::__emplace_unique_key_args<int,int &,Process *&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<UUID,BOOL>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,BOOL>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,BOOL>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,BOOL>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<UUID,BOOL>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,BOOL>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,BOOL>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,BOOL>>>::__emplace_unique_key_args<UUID,UUID&,BOOL>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

__n128 std::__function::__func<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_0,std::allocator<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_0>,void ()(__CFData const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852D6618;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_0,std::allocator<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_0>,void ()(__CFData const*)>::operator()(uint64_t result, CFDataRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = *(result + 8);
    CFDataGetBytePtr(*a2);
    CFDataGetLength(v2);
    result = ktrace_file_append_chunk();
    ++**(v3 + 16);
  }

  return result;
}

uint64_t std::__function::__func<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_0,std::allocator<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_0>,void ()(__CFData const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(__CFData const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_1,std::allocator<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_1>,void ()(__CFData const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852D66A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_1,std::allocator<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_1>,void ()(__CFData const*)>::operator()(uint64_t result, CFDataRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = *(result + 8);
    CFDataGetBytePtr(*a2);
    CFDataGetLength(v2);
    result = ktrace_file_append_chunk();
    ++**(v3 + 16);
  }

  return result;
}

uint64_t std::__function::__func<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_1,std::allocator<SymbolicationSession::writeSymbolDataToKtraceFile(ktrace_file *)::$_1>,void ()(__CFData const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<StringPool>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852D6728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD5830);
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
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
}

uint64_t std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[8];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::__unordered_map_hasher<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::hash<AOTSharedCacheDescription>,std::equal_to<AOTSharedCacheDescription>,true>,std::__unordered_map_equal<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::equal_to<AOTSharedCacheDescription>,std::hash<AOTSharedCacheDescription>,true>,std::allocator<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::__unordered_map_hasher<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::hash<AOTSharedCacheDescription>,std::equal_to<AOTSharedCacheDescription>,true>,std::__unordered_map_equal<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::equal_to<AOTSharedCacheDescription>,std::hash<AOTSharedCacheDescription>,true>,std::allocator<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::__unordered_map_hasher<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::hash<AOTSharedCacheDescription>,std::equal_to<AOTSharedCacheDescription>,true>,std::__unordered_map_equal<AOTSharedCacheDescription,std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>,std::equal_to<AOTSharedCacheDescription>,std::hash<AOTSharedCacheDescription>,true>,std::allocator<std::__hash_value_type<AOTSharedCacheDescription,std::shared_ptr<void *>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[9];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *OUTLINED_FUNCTION_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

size_t Section::initializeWithCSSection(uint64_t *a1)
{
  *a1 = CSRegionGetRange();
  a1[1] = v2;
  Name = CSRegionGetName();
  if (Name)
  {
    v4 = Name;
  }

  else
  {
    v4 = &unk_240FA3A2E;
  }

  result = strlen(v4);
  a1[2] = v4;
  a1[3] = result;
  return result;
}

uint64_t Section::debug(Section *this)
{
  printf("\tSection @ 0x%llx - 0x%llx: ", *this, *(this + 1) + *this);
  if (*(this + 3))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = "<null>";
  }

  return puts(v2);
}

uint64_t Section::Section(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  Section::initializeWithCSSection(a1);
  return a1;
}

{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  Section::initializeWithCSSection(a1);
  return a1;
}

__n128 DyldKdebugAOTSharedCacheDescription::consumeTracepointA(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[0] = a2->n128_u64[1];
  result = a2[1];
  *a1 = result;
  return result;
}

__n128 DyldKdebugAOTSharedCacheDescription::consumeTracepointB(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  a1[1] = result;
  return result;
}

void AOTSharedCacheDescription::AOTSharedCacheDescription(AOTSharedCacheDescription *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

void AOTSharedCacheDescription::AOTSharedCacheDescription(AOTSharedCacheDescription *this, UUID a2, UUID a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
}

void SharedLibrary::SharedLibrary(SharedLibrary *this)
{
  *(this + 80) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  operator new();
}

void sub_240F9BAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v13);
  v15 = *(v12 + 96);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  a12 = (v12 + 16);
  std::vector<Segment>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SharedLibrary::initializeWithCSSymbolOwner(SharedLibrary *this)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  *&v51 = *(this + 11);
  *(&v51 + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(this + 7);
  v4 = *(this + 8);
  SharedLibraryMetadata::SharedLibraryMetadata(&v52, &v51);
  v5 = v52;
  v52 = 0uLL;
  v6 = *(this + 19);
  *(this + 9) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v6 = *(&v52 + 1);
  }

  v7 = v54;
  *(this + 10) = v53;
  *(this + 11) = v7;
  v8 = v56;
  *(this + 12) = v55;
  *(this + 13) = v8;
  v9 = v58;
  *(this + 14) = v57;
  *(this + 15) = v9;
  *(this + 16) = v59;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(&v51 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
  }

  v10 = *(this + 7);
  v11 = *(this + 8);
  CSSymbolOwnerGetSymbolicator();
  CSSymbolicatorIsKernelSymbolicator();
  *&v52 = 0;
  *(&v52 + 1) = &v52;
  *&v53 = 0x4002000000;
  *(&v53 + 1) = __Block_byref_object_copy__0;
  *&v54 = __Block_byref_object_dispose__0;
  BYTE8(v54) = 0;
  BYTE8(v55) = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x4002000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v50 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x4002000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v43 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x4002000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v36 = 0;
  v12 = *(this + 7);
  v13 = *(this + 8);
  CSSymbolOwnerForeachSegment();
  v14 = *(&v52 + 1);
  if (*(*(&v52 + 1) + 56))
  {
    v15 = *(*(&v52 + 1) + 40);
    v16 = v45;
    v17 = v45 + 5;
    v18 = v45 + 7;
    if ((v45[7] & 1) == 0)
    {
      v19 = -1;
LABEL_16:
      v20 = v38;
      if (*(v38 + 56) == 1)
      {
        v21 = v38[5];
      }

      else
      {
        v21 = -1;
      }

      if (v19 < v15)
      {
        v15 = v19;
      }

      if (v21 < v15)
      {
        v15 = v21;
      }

      *(this + 9) = v15;
      *(this + 80) = 1;
      if (*(v14 + 56) == 1)
      {
        v22 = *(v14 + 48) + *(v14 + 40);
      }

      else
      {
        v22 = 0;
      }

      if (*v18 == 1)
      {
        v23 = v16[6] + *v17;
      }

      else
      {
        v23 = 0;
      }

      if (*(v20 + 56) == 1)
      {
        v24 = v20[6] + v20[5];
      }

      else
      {
        v24 = 0;
      }

      if (v22 > v23)
      {
        v23 = v22;
      }

      if (v23 <= v24)
      {
        v23 = v24;
      }

      goto LABEL_36;
    }

LABEL_15:
    v19 = v16[5];
    goto LABEL_16;
  }

  v16 = v45;
  v18 = v45 + 7;
  if (v45[7] & 1) != 0 || (v38[7])
  {
    v17 = v45 + 5;
    v15 = -1;
    v19 = -1;
    if ((v45[7] & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v29 = v31;
  if (*(v31 + 56) == 1)
  {
    *(this + 9) = v31[5];
    *(this + 80) = 1;
    v23 = v29[6] + v29[5];
  }

  else
  {
    if ((*(this + 80) & 1) == 0)
    {
      goto LABEL_37;
    }

    v23 = 0;
  }

LABEL_36:
  v25 = *(this + 9);
  v26 = v23 >= v25;
  v27 = v23 - v25;
  if (!v26)
  {
LABEL_37:
    v27 = 0;
    v25 = -1;
  }

  *this = v25;
  *(this + 1) = v27;
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v52, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_240F9BF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN13SharedLibrary27initializeWithCSSymbolOwnerEv_block_invoke(uint64_t a1)
{
  Range = CSRegionGetRange();
  v4 = v3;
  result = CSRegionGetName();
  if (result)
  {
    result = strncmp(result, "__TEXT", 6uLL);
    if (!result)
    {
      v6 = *(*(a1 + 32) + 8);
      *(v6 + 40) = Range;
      *(v6 + 48) = v4;
      *(v6 + 56) = 1;
    }
  }

  if (*(a1 + 64) == 1)
  {
    Name = CSRegionGetName();
    v8 = Name && strncmp(Name, "__TEXT_EXEC", 0xBuLL) == 0;
    v9 = CSRegionGetName();
    v10 = v9 && strncmp(v9, "__PPLTEXT", 9uLL) == 0;
    result = CSRegionGetName();
    if (result)
    {
      result = strncmp(result, "__PPLTRAMP", 0xAuLL);
      v11 = result == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v8 || v10 || v11)
    {
      v12 = 56;
      if (v10)
      {
        v12 = 48;
      }

      if (v8)
      {
        v12 = 40;
      }

      v13 = *(*(a1 + v12) + 8);
      *(v13 + 40) = Range;
      *(v13 + 48) = v4;
      *(v13 + 56) = 1;
    }
  }

  return result;
}

uint64_t SharedLibrary::SharedLibrary(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  CSSymbolOwnerGetSymbolicator();
  *(a1 + 40) = CSRetain();
  *(a1 + 48) = v8;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 = a4[1];
  *(a1 + 88) = *a4;
  *(a1 + 96) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
  }

  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  if ((CSIsNull() & 1) == 0)
  {
    SharedLibrary::initializeWithCSSymbolOwner(a1);
  }

  return a1;
}

void sub_240F9C1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 152);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v11);
  v14 = *(v10 + 96);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  a10 = (v10 + 16);
  std::vector<Segment>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t SharedLibrary::SharedLibrary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *uu = a2;
  *&uu[8] = a3;
  *(a1 + 80) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  v7 = a6[1];
  *(a1 + 88) = *a6;
  *(a1 + 96) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = 0uLL;
  *(a1 + 120) = 0uLL;
  *(a1 + 136) = 1065353216;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  *(a1 + 144) = 0uLL;
  *(a1 + 160) = 0uLL;
  *(a1 + 176) = 0uLL;
  *(a1 + 192) = 0uLL;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0uLL;
  *(a1 + 256) = 0uLL;
  if (!uuid_is_null(uu))
  {
    CSSymbolicatorForeachSymbolicatorWithPath();
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    if ((CSIsNull() & 1) == 0)
    {
      SharedLibrary::initializeWithCSSymbolOwner(a1);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_240F9C358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 152);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v11);
  v14 = *(v10 + 96);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  a10 = (v10 + 16);
  std::vector<Segment>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13SharedLibraryC2E4UUIDNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEERKNS1_10shared_ptrI10StringPoolEE_block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = v2[5];
  v4 = v2[6];
  result = CSIsNull();
  if (result)
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    v8 = v7;
    result = CSIsNull();
    if ((result & 1) == 0)
    {
      result = CSSymbolOwnerGetCFUUIDBytes();
      if (result)
      {
        if (*result == a1[5] && *(result + 8) >> 64 == a1[6])
        {
          result = CSRetain();
          v2[5] = result;
          v2[6] = v10;
          v2[7] = SymbolOwner;
          v2[8] = v8;
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL SharedLibrary::operator==(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = SharedLibraryMetadata::uuid((a1 + 18));
  v10 = v4;
  v6 = v9 == SharedLibraryMetadata::uuid((a2 + 18)) && v10 == v5;
  result = v6 && *a1 == *a2 && a1[1] == a2[1];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SharedLibrary::generateFBSSignatureWithConfig(void *a1, int a2)
{
  v4 = a1[7];
  v5 = a1[8];
  if ((CSIsNull() & 1) != 0 || a2 != 2 && !a1[16])
  {
    return 0;
  }

  CSAddressSetCreate();
  for (i = a1[15]; i; i = *i)
  {
    v8 = i[2];
    v9 = a1[7];
    v10 = a1[8];
    CSSymbolOwnerGetSymbolWithAddress();
    if ((CSIsNull() & 1) == 0)
    {
      CSSymbolGetRange();
      CSAddressSetAddRange();
    }
  }

  v11 = a1[7];
  v12 = a1[8];
  SparseSignatureWithFlags = CSSymbolOwnerCreateSparseSignatureWithFlags();
  CSRelease();
  if (!SparseSignatureWithFlags)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x4002000000;
    v38 = __Block_byref_object_copy__2;
    v39 = __Block_byref_object_dispose__3;
    __p = 0;
    v41 = 0;
    v42 = 0;
    std::vector<_CSTypeRef>::reserve(&__p, a1[16]);
    for (j = a1[15]; j; j = *j)
    {
      v14 = j[2];
      v15 = v36;
      v16 = a1[7];
      v17 = a1[8];
      SymbolWithAddress = CSSymbolOwnerGetSymbolWithAddress();
      v20 = v19;
      v22 = v15[6];
      v21 = v15[7];
      if (v22 >= v21)
      {
        v24 = v15[5];
        v25 = v22 - v24;
        v26 = (v22 - v24) >> 4;
        v27 = v26 + 1;
        if ((v26 + 1) >> 60)
        {
          std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
        }

        v28 = v21 - v24;
        if (v28 >> 3 > v27)
        {
          v27 = v28 >> 3;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF0)
        {
          v29 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_CSTypeRef>>((v15 + 5), v29);
        }

        v30 = (16 * v26);
        *v30 = SymbolWithAddress;
        v30[1] = v20;
        v23 = 16 * v26 + 16;
        memcpy(0, v24, v25);
        v31 = v15[5];
        v15[5] = 0;
        v15[6] = v23;
        v15[7] = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v22 = SymbolWithAddress;
        v22[1] = v19;
        v23 = (v22 + 2);
      }

      v15[6] = v23;
    }

    v32 = a1[7];
    v33 = a1[8];
    CSSymbolOwnerCreateSparseDataWithBlock();
    SparseSignatureWithFlags = CSSymbolOwnerCreateSignature();
    _Block_object_dispose(&v35, 8);
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }
  }

  return SparseSignatureWithFlags;
}

void sub_240F9C828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *std::vector<_CSTypeRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<_CSTypeRef>>(result, a2);
    }

    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL ___ZN13SharedLibrary30generateFBSSignatureWithConfigE48ats_symbolication_instruction_fetching_options_t_block_invoke(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  v5 = (*(v3 + 48) - v4) >> 4;
  if (v5 > a2)
  {
    *a3 = *(v4 + 16 * a2);
  }

  return v5 <= a2;
}

uint64_t SharedLibrary::prepareForResymbolicationWithDsymPath(SharedLibrary *this, const char *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v3 = *(this + 7);
  v4 = *(this + 8);
  CSSymbolOwnerSetPathForSymbolication();
  v5 = *(this + 5);
  v6 = *(this + 6);
  CSSymbolicatorResymbolicateFromDebugSymbolsInfo();
  v7 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v7;
}

void sub_240F9CA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN13SharedLibrary37prepareForResymbolicationWithDsymPathEPKc_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    *v25 = *CFUUIDBytes;
    if (a4)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      ats_symbolication_log_init();
      v7 = ats_symbolication_log;
      if (!os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      UUID::uuidString(v25, __p);
      if (v19 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315138;
      v22 = v8;
      v9 = "Resymbolication: sucessfully ingested symbol data from dSYM for UUID: %s";
      v10 = v7;
      v11 = 12;
    }

    else
    {
      ats_symbolication_log_init();
      v12 = ats_symbolication_log;
      if (!os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      UUID::uuidString(v25, __p);
      v13 = v19;
      v14 = __p[0];
      Path = CSSymbolOwnerGetPath();
      v16 = __p;
      if (v13 < 0)
      {
        v16 = v14;
      }

      *buf = 136315394;
      v22 = v16;
      v23 = 2080;
      v24 = Path;
      v9 = "Resymbolication: failed to ingest symbol data from dSYM for UUID: %s %s";
      v10 = v12;
      v11 = 22;
    }

    _os_log_impl(&dword_240F85000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_240F9CC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SharedLibrary::~SharedLibrary(SharedLibrary *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  CSRelease();
  v4 = *(this + 19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(this + 104);
  v5 = *(this + 12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = (this + 16);
  std::vector<Segment>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void std::vector<Segment>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::__destroy_at[abi:ne200100]<Segment,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<Segment,0>(uint64_t a1)
{
  v3 = (a1 + 56);
  std::vector<Symbol>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_CSTypeRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

__int128 *SharedCacheSymbolicators::sharedCacheSymbolicatorMap(SharedCacheSymbolicators *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    SharedCacheSymbolicators::sharedCacheSymbolicatorMap();
  }

  if (atomic_load_explicit(&SharedCacheSymbolicators::sharedCacheSymbolicatorMap(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&SharedCacheSymbolicators::sharedCacheSymbolicatorMap(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<SharedCacheSymbolicators::sharedCacheSymbolicatorMap(void)::$_0 &&>>);
  }

  return &xmmword_27E51E320;
}

void *SharedCacheSymbolicators::cachedSharedCacheSymbolicatorByUUID(SharedCacheSymbolicators *this, UUID a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = this;
  v6[1] = a2;
  SharedCacheSymbolicators::sharedCacheSymbolicatorMap(this);
  result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>(&xmmword_27E51E320, v6);
  if (result)
  {
    v3 = result[4];
    result = *v3;
    v4 = v3[1];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void SharedCacheSymbolicators::createSharedCacheSymbolicatorByUUID(SharedCacheSymbolicators *this, UUID a2)
{
  v2 = *MEMORY[0x277D85DE8];
  CSSymbolicatorCreateWithSharedCacheUUID();
  operator new();
}

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::__deallocate_node(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>::~unique_ptr[abi:ne200100](v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t ___ZZN24SharedCacheSymbolicators26sharedCacheSymbolicatorMapEvENK3__0clEv_block_invoke()
{
  result = CSSymbolicatorGetSharedCacheUUID();
  v1 = result;
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_240F9D3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2 + 2;
  v5 = a2[3] ^ a2[2];
  *(v4 - 1) = v5;
  v6 = std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v5, v4);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>::~unique_ptr[abi:ne200100](v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3 && i[3] == a3[1])
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v10 = (*(a1 + 24) + 1);
  v11 = *(a1 + 32);
  if (!v3 || (v11 * v3) < v10)
  {
    v12 = 2 * v3;
    v13 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v14 = v13 | v12;
    v15 = vcvtps_u32_f32(v10 / v11);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, v16);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
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

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t *ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>::ScopeGuard(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  *(a1 + 16) = 0;
  if ((CSIsNull() & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    CSRetain();
    *(a1 + 16) = 1;
  }

  return a1;
}

void SharedCacheDescription::SharedCacheDescription(SharedCacheDescription *this)
{
  *(this + 32) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 24) = 0;
}

{
  *(this + 32) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 24) = 0;
}

void SharedCacheDescription::SharedCacheDescription(SharedCacheDescription *this, uint64_t a2, UUID a3, uint8_t *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 3) = SharedCacheDescription::baseAddressForSharedCacheWithUUID(this, a3, a4);
  *(this + 32) = v5;
}

{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 3) = SharedCacheDescription::baseAddressForSharedCacheWithUUID(this, a3, a4);
  *(this + 32) = v5;
}

uint64_t SharedCacheDescription::baseAddressForSharedCacheWithUUID(SharedCacheDescription *this, UUID a2, uint8_t *a3)
{
  SharedCacheSymbolicators::cachedSharedCacheSymbolicatorByUUID(a2, a3);
  if (CSIsNull())
  {
    return 0;
  }

  else
  {
    return CSSymbolicatorGetSharedCacheBaseAddress();
  }
}

void SharedCacheDescription::SharedCacheDescription(SharedCacheDescription *this, uint64_t a2, uint64_t a3, UUID a4, uint64_t a5)
{
  *this = a4;
  *(this + 1) = a5;
  *(this + 2) = a2;
  *(this + 3) = a2 - a3;
  *(this + 32) = 1;
}

{
  *this = a4;
  *(this + 1) = a5;
  *(this + 2) = a2;
  *(this + 3) = a2 - a3;
  *(this + 32) = 1;
}

uint64_t SharedCacheDescription::slide(SharedCacheDescription *this)
{
  if (*(this + 32) == 1)
  {
    return *(this + 2) - *(this + 3);
  }

  else
  {
    return 0;
  }
}

BOOL SharedCacheDescription::operator==(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  result = *a1 == *a2 && *(a1 + 8) >> 64 == *(a2 + 8) >> 64 && *(a1 + 16) == *(a2 + 2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SharedCacheMetadata::SharedCacheMetadata(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  SharedCacheMetadata::populateWithSharedCacheSymbolicator(a1);
  return a1;
}

void sub_240F9D8CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SharedCacheMetadata::populateWithSharedCacheSymbolicator(uint64_t a1)
{
  *a1 = *CSSymbolicatorGetSharedCacheUUID();
  *(a1 + 32) = CSSymbolicatorGetArchitecture();
  result = CSSymbolicatorGetSharedCacheBaseAddress();
  *(a1 + 40) = result;
  return result;
}

uint64_t SharedCacheMetadata::SharedCacheMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  SharedCacheMetadata::SharedCacheMetadata(a1);
  v7 = *a4;
  v6 = a4[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

{
  SharedCacheMetadata::SharedCacheMetadata(a1);
  v7 = *a4;
  v6 = a4[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void SharedCacheMetadata::uuidString(SharedCacheMetadata *this@<X0>, uint64_t a2@<X8>)
{
  if (uuid_is_null(this) || !*(this + 6))
  {
    goto LABEL_2;
  }

  if (*(this + 3))
  {
    *a2 = *(this + 1);
    v4 = 1;
    goto LABEL_3;
  }

  UUID::uuidString(this, __p);
  if (v13)
  {
    StringPool::cacheString(*(this + 6), __p, &v9);
    v5 = v10;
    if (v10 == 1)
    {
      v6 = v9;
      *(this + 1) = v9;
      *a2 = v6;
      *(a2 + 16) = 1;
    }

    v7 = v5 ^ 1;
    v8 = v13;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  if ((v8 & 1) != 0 && v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
LABEL_2:
    v4 = 0;
    *a2 = 0;
LABEL_3:
    *(a2 + 16) = v4;
  }
}

void sub_240F9DAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DyldKdebugHandler::resetInternalLibraryState(DyldKdebugHandler *this)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>>>::clear(this + 12504);
  v2 = this;
  v3 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1563ul,99999ul>>(&v2, 0x1869FuLL);
  std::__hash_table<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>>>::clear(this + 12624);
  std::__hash_table<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>>>::clear(this + 12584);
  std::__hash_table<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>>>::clear(this + 12544);
}

void DyldKdebugHandler::handleLibraryCompletion(DyldKdebugHandler *this, DyldKdebugLibraryDescription *a2)
{
  v4 = DyldKdebugLibraryDescription::fsInfo(a2);
  DyldKdebugFilesystemInfo::path(v4, __p);
  v5 = v10;
  if (v10 == 1)
  {
    StringPool::cacheString(*(this + 1618), __p, &v6);
    if (v7 == 1)
    {
      *(a2 + 2) = v6;
    }

    v5 = v10;
  }

  if ((v5 & 1) != 0 && v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_240F9DC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DyldKdebugHandler::consumeTracepoint(DyldKdebugHandler *this, __n128 *a2)
{
  if (*(this + 12960) == 1)
  {
    DyldKdebugHandler::resetInternalLibraryState(this);
    *(this + 12960) ^= 1u;
  }

  HIDWORD(v4) = a2[3].n128_u32[0] - 520421376;
  LODWORD(v4) = HIDWORD(v4);
  switch((v4 >> 2))
  {
    case 0u:

      DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421376u>>(this, a2);
      break;
    case 1u:

      DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421380u>>(this, a2);
      break;
    case 2u:

      DyldKdebugHandler::handleTracepoint32A<std::integral_constant<unsigned int,520421384u>>(this, a2);
      break;
    case 3u:

      DyldKdebugHandler::handleTracepoint32B<std::integral_constant<unsigned int,520421388u>>(this, a2);
      break;
    case 4u:

      DyldKdebugHandler::handleTracepoint32C<std::integral_constant<unsigned int,520421392u>>(this, a2);
      break;
    case 0xAu:

      DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421416u>>(this, a2);
      break;
    case 0xBu:

      DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421420u>>(this, a2);
      break;
    case 0xCu:

      DyldKdebugHandler::handleTracepoint32A<std::integral_constant<unsigned int,520421424u>>(this, a2);
      break;
    case 0xDu:

      DyldKdebugHandler::handleTracepoint32B<std::integral_constant<unsigned int,520421428u>>(this, a2);
      break;
    case 0xEu:

      DyldKdebugHandler::handleTracepoint32C<std::integral_constant<unsigned int,520421432u>>(this, a2);
      break;
    case 0xFu:

      DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421436u>>(this, a2);
      break;
    case 0x10u:

      DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421440u>>(this, a2);
      break;
    case 0x11u:

      DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421444u>>(this, a2);
      break;
    case 0x12u:

      DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421448u>>(this, a2);
      break;
    default:
      return;
  }
}

void *DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421376u>>(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a2 + 40);
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 12744), v5);
  return DyldKdebugLibraryDescription::consumeTracepointA((v3 + 3), a2);
}

uint64_t *DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421380u>>(DyldKdebugHandler *a1, uint64_t a2)
{
  v8 = *(a2 + 40);
  v7 = *(a2 + 88);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 1613, &v7);
  v9 = &v8;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 1593, &v8);
  DyldKdebugLibraryDescription::consumeTracepointB((v4 + 3), a2);
  DyldKdebugHandler::handleLibraryCompletion(a1, (v4 + 3));
  v9 = &v7;
  v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 1563, &v7);
  std::vector<DyldKdebugLibraryDescription>::push_back[abi:ne200100]((v5 + 3), (v4 + 3));
  result = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__erase_unique<unsigned long long>(a1 + 1593, &v8);
  if (v7 >= 0x1869F)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(a1 + ((v7 >> 3) & 0x1FFFFFF8)) |= 1 << v7;
  return result;
}

double DyldKdebugHandler::handleTracepoint32A<std::integral_constant<unsigned int,520421384u>>(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a2 + 40);
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 12744), v5);
  *&result = DyldKdebugLibraryDescription::consumeTracepoint32A((v3 + 3), a2).u64[0];
  return result;
}

uint64_t DyldKdebugHandler::handleTracepoint32B<std::integral_constant<unsigned int,520421388u>>(uint64_t a1, uint64_t *a2)
{
  v5[0] = a2[5];
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 12744), v5);
  return DyldKdebugLibraryDescription::consumeTracepoint32B(v3 + 3, a2);
}

uint64_t *DyldKdebugHandler::handleTracepoint32C<std::integral_constant<unsigned int,520421392u>>(DyldKdebugHandler *a1, uint64_t a2)
{
  v8 = *(a2 + 40);
  v7 = *(a2 + 88);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 1613, &v7);
  v9 = &v8;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 1593, &v8);
  DyldKdebugLibraryDescription::consumeTracepoint32C((v4 + 3), a2);
  DyldKdebugHandler::handleLibraryCompletion(a1, (v4 + 3));
  v9 = &v7;
  v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 1563, &v7);
  std::vector<DyldKdebugLibraryDescription>::push_back[abi:ne200100]((v5 + 3), (v4 + 3));
  return std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__erase_unique<unsigned long long>(a1 + 1593, &v8);
}

uint64_t DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421416u>>(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a2 + 40);
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 12824), v5);
  return DyldKdebugSharedCacheDescription::consumeTracepointA((v3 + 3), a2);
}

uint64_t *DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421420u>>(void *a1, uint64_t a2)
{
  v8 = *(a2 + 40);
  v7 = *(a2 + 88);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 1613, &v7);
  v9 = &v8;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 1603, &v8);
  DyldKdebugSharedCacheDescription::consumeTracepointB((v4 + 3), a2);
  v9 = &v7;
  v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 1573, &v7);
  std::vector<DyldKdebugSharedCacheDescription>::push_back[abi:ne200100]((v5 + 3), (v4 + 3));
  return std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__erase_unique<unsigned long long>(a1 + 1603, &v8);
}

double DyldKdebugHandler::handleTracepoint32A<std::integral_constant<unsigned int,520421424u>>(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a2 + 40);
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 12824), v5);
  *&result = DyldKdebugSharedCacheDescription::consumeTracepoint32A((v3 + 3), a2).u64[0];
  return result;
}

uint64_t DyldKdebugHandler::handleTracepoint32B<std::integral_constant<unsigned int,520421428u>>(uint64_t a1, void *a2)
{
  v5[0] = a2[5];
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 12824), v5);
  return DyldKdebugSharedCacheDescription::consumeTracepoint32B((v3 + 3), a2);
}

uint64_t *DyldKdebugHandler::handleTracepoint32C<std::integral_constant<unsigned int,520421432u>>(void *a1, uint64_t a2)
{
  v8 = *(a2 + 40);
  v7 = *(a2 + 88);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 1613, &v7);
  v9 = &v8;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 1603, &v8);
  DyldKdebugSharedCacheDescription::consumeTracepoint32C((v4 + 3), a2);
  v9 = &v7;
  v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 1573, &v7);
  std::vector<DyldKdebugSharedCacheDescription>::push_back[abi:ne200100]((v5 + 3), (v4 + 3));
  return std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__erase_unique<unsigned long long>(a1 + 1603, &v8);
}

double DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421444u>>(uint64_t a1, __n128 *a2)
{
  v5[0] = a2[2].n128_u64[1];
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 12864), v5);
  *&result = DyldKdebugAOTSharedCacheDescription::consumeTracepointA((v3 + 3), a2).n128_u64[0];
  return result;
}

uint64_t *DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421448u>>(void *a1, __n128 *a2)
{
  v26 = a2[2].n128_u64[1];
  v25 = a2[5].n128_i32[2];
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 1613, &v25);
  v27 = &v26;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 1608, &v26);
  DyldKdebugAOTSharedCacheDescription::consumeTracepointB((v4 + 3), a2);
  v27 = &v25;
  v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 1578, &v25);
  v6 = v5;
  v7 = v5[4];
  v8 = v5[5];
  if (v7 >= v8)
  {
    v12 = v5[3];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 4);
    v14 = v13 + 1;
    if (v13 + 1 > 0x555555555555555)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v12) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x2AAAAAAAAAAAAAALL)
    {
      v16 = 0x555555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAOTSharedCacheDescription>>((v5 + 3), v16);
    }

    v17 = 48 * v13;
    v18 = *(v4 + 3);
    v19 = *(v4 + 7);
    *(v17 + 16) = *(v4 + 5);
    *(v17 + 32) = v19;
    *v17 = v18;
    v11 = 48 * v13 + 48;
    v20 = v5[3];
    v21 = v5[4] - v20;
    v22 = v17 - v21;
    memcpy((v17 - v21), v20, v21);
    v23 = v6[3];
    v6[3] = v22;
    v6[4] = v11;
    v6[5] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v9 = *(v4 + 3);
    v10 = *(v4 + 7);
    v7[1] = *(v4 + 5);
    v7[2] = v10;
    *v7 = v9;
    v11 = (v7 + 3);
  }

  v6[4] = v11;
  return std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__erase_unique<unsigned long long>(a1 + 1608, &v26);
}

double DyldKdebugHandler::handleTracepointA<std::integral_constant<unsigned int,520421436u>>(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a2 + 40);
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 12784), v5);
  *&result = DyldKdebugAOTImageDescription::consumeTracepointA((v3 + 3), a2).n128_u64[0];
  return result;
}

uint64_t *DyldKdebugHandler::handleTracepointB<std::integral_constant<unsigned int,520421440u>>(void *a1, uint64_t a2)
{
  v28 = *(a2 + 40);
  v27 = *(a2 + 88);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 1613, &v27);
  v29 = &v28;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 1598, &v28);
  DyldKdebugAOTImageDescription::consumeTracepointB(v4 + 3, a2);
  v29 = &v27;
  v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 1568, &v27);
  v6 = v5;
  v7 = v5[4];
  v8 = v5[5];
  if (v7 >= v8)
  {
    v13 = v5[3];
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v13) >> 3);
    v15 = v14 + 1;
    if ((v14 + 1) > 0x492492492492492)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v13) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x249249249249249)
    {
      v17 = 0x492492492492492;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAotImageDescription>>((v5 + 3), v17);
    }

    v18 = 56 * v14;
    v19 = *(v4 + 3);
    v20 = *(v4 + 5);
    v21 = *(v4 + 7);
    *(v18 + 48) = v4[9];
    *(v18 + 16) = v20;
    *(v18 + 32) = v21;
    *v18 = v19;
    v12 = 56 * v14 + 56;
    v22 = v5[3];
    v23 = v5[4] - v22;
    v24 = v18 - v23;
    memcpy((v18 - v23), v22, v23);
    v25 = v6[3];
    v6[3] = v24;
    v6[4] = v12;
    v6[5] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    v9 = *(v4 + 3);
    v10 = *(v4 + 5);
    v11 = *(v4 + 7);
    *(v7 + 48) = v4[9];
    *(v7 + 16) = v10;
    *(v7 + 32) = v11;
    *v7 = v9;
    v12 = v7 + 56;
  }

  v6[4] = v12;
  return std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__erase_unique<unsigned long long>(a1 + 1598, &v28);
}

void DyldKdebugHandler::DyldKdebugHandler(DyldKdebugHandler *this)
{
  bzero(this, 0x30F8uLL);
  *(this + 3134) = 1065353216;
  *(this + 784) = 0u;
  *(this + 785) = 0u;
  *(this + 3144) = 1065353216;
  *(this + 12584) = 0u;
  *(this + 12600) = 0u;
  *(this + 3154) = 1065353216;
  *(this + 789) = 0u;
  *(this + 790) = 0u;
  *(this + 3164) = 1065353216;
  *(this + 12664) = 0u;
  *(this + 12680) = 0u;
  *(this + 3174) = 1065353216;
  *(this + 794) = 0u;
  *(this + 795) = 0u;
  *(this + 3184) = 1065353216;
  *(this + 12744) = 0u;
  *(this + 12760) = 0u;
  *(this + 3194) = 1065353216;
  *(this + 799) = 0u;
  *(this + 800) = 0u;
  *(this + 3204) = 1065353216;
  *(this + 12824) = 0u;
  *(this + 12840) = 0u;
  *(this + 3214) = 1065353216;
  *(this + 804) = 0u;
  *(this + 805) = 0u;
  *(this + 3224) = 1065353216;
  *(this + 12904) = 0u;
  *(this + 12920) = 0u;
  *(this + 3234) = 1065353216;
  operator new();
}

void sub_240F9EB18(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v6);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v1 + v9);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v1 + v8);
  std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(v1 + v7);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v1 + 12624);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v1 + 12544);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v1 + 12504);
  _Unwind_Resume(a1);
}

uint64_t DyldKdebugHandler::DyldKdebugHandler(uint64_t a1, void *a2)
{
  bzero(a1, 0x30F8uLL);
  *(a1 + 12536) = 1065353216;
  *(a1 + 12544) = 0u;
  *(a1 + 12560) = 0u;
  *(a1 + 12576) = 1065353216;
  *(a1 + 12584) = 0u;
  *(a1 + 12600) = 0u;
  *(a1 + 12616) = 1065353216;
  *(a1 + 12624) = 0u;
  *(a1 + 12640) = 0u;
  *(a1 + 12656) = 1065353216;
  *(a1 + 12664) = 0u;
  *(a1 + 12680) = 0u;
  *(a1 + 12696) = 1065353216;
  *(a1 + 12704) = 0u;
  *(a1 + 12720) = 0u;
  *(a1 + 12736) = 1065353216;
  *(a1 + 12744) = 0u;
  *(a1 + 12760) = 0u;
  *(a1 + 12776) = 1065353216;
  *(a1 + 12784) = 0u;
  *(a1 + 12800) = 0u;
  *(a1 + 12816) = 1065353216;
  *(a1 + 12824) = 0u;
  *(a1 + 12840) = 0u;
  *(a1 + 12856) = 1065353216;
  *(a1 + 12864) = 0u;
  *(a1 + 12880) = 0u;
  *(a1 + 12896) = 1065353216;
  *(a1 + 12904) = 0u;
  *(a1 + 12920) = 0u;
  *(a1 + 12936) = 1065353216;
  v4 = a2[1];
  *(a1 + 12944) = *a2;
  *(a1 + 12952) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 12960) = 0;
  return a1;
}

uint64_t DyldKdebugHandler::libraryDescriptionsForPid@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  if (a2 >= 0x1869F)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if ((*(this + ((a2 >> 3) & 0x1FFFFFF8)) >> a2))
  {
    v6 = &v5;
    v4 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((this + 12504), &v5);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return std::vector<DyldKdebugLibraryDescription>::__init_with_size[abi:ne200100]<DyldKdebugLibraryDescription*,DyldKdebugLibraryDescription*>(a3, v4[3], v4[4], (v4[4] - v4[3]) >> 6);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return this;
}

uint64_t DyldKdebugHandler::sharedCacheDescriptionsForPid@<X0>(DyldKdebugHandler *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 1573, &v6);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return std::vector<DyldKdebugSharedCacheDescription>::__init_with_size[abi:ne200100]<DyldKdebugSharedCacheDescription*,DyldKdebugSharedCacheDescription*>(a3, v4[3], v4[4], 0x6DB6DB6DB6DB6DB7 * ((v4[4] - v4[3]) >> 3));
}

uint64_t DyldKdebugHandler::aotSharedCacheDescriptionsForPid@<X0>(DyldKdebugHandler *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 1578, &v6);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return std::vector<DyldKdebugAOTSharedCacheDescription>::__init_with_size[abi:ne200100]<DyldKdebugAOTSharedCacheDescription*,DyldKdebugAOTSharedCacheDescription*>(a3, v4[3], v4[4], 0xAAAAAAAAAAAAAAABLL * ((v4[4] - v4[3]) >> 4));
}

uint64_t *DyldKdebugHandler::aotImageDescriptionsForPid@<X0>(uint64_t *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  if (this[1571] && (v4 = this, (this = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 1568, &v6)) != 0))
  {
    v7 = &v6;
    v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v4 + 12544), &v6);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return std::vector<DyldKdebugAOTImageDescription>::__init_with_size[abi:ne200100]<DyldKdebugAOTImageDescription*,DyldKdebugAOTImageDescription*>(a3, v5[3], v5[4], 0x6DB6DB6DB6DB6DB7 * ((v5[4] - v5[3]) >> 3));
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return this;
}

uint64_t std::vector<DyldKdebugLibraryDescription>::__init_with_size[abi:ne200100]<DyldKdebugLibraryDescription*,DyldKdebugLibraryDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DyldKdebugLibraryDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F9EF64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DyldKdebugLibraryDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DyldKdebugLibraryDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DyldKdebugLibraryDescription>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<DyldKdebugSharedCacheDescription>::__init_with_size[abi:ne200100]<DyldKdebugSharedCacheDescription*,DyldKdebugSharedCacheDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DyldKdebugSharedCacheDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F9F064(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DyldKdebugSharedCacheDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DyldKdebugSharedCacheDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DyldKdebugSharedCacheDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<DyldKdebugAOTSharedCacheDescription>::__init_with_size[abi:ne200100]<DyldKdebugAOTSharedCacheDescription*,DyldKdebugAOTSharedCacheDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotAOTSharedCacheDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F9F18C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<DyldKdebugAOTImageDescription>::__init_with_size[abi:ne200100]<DyldKdebugAOTImageDescription*,DyldKdebugAOTImageDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotAotImageDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F9F208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<DyldKdebugLibraryDescription>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1563ul,99999ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_240F9F538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F9F5E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::vector<DyldKdebugLibraryDescription>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DyldKdebugLibraryDescription>>(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugLibraryDescription>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugSharedCacheDescription>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_240F9FA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F9FAC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::vector<DyldKdebugSharedCacheDescription>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DyldKdebugSharedCacheDescription>>(a1, v13);
    }

    v14 = 56 * v10;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v9 = 56 * v10 + 56;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = v4 + 56;
  }

  *(a1 + 8) = v9;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DyldKdebugAOTImageDescription>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_240F9FE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F9FEC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void StackshotAOTSharedCacheDescription::StackshotAOTSharedCacheDescription(StackshotAOTSharedCacheDescription *this, dyld_aot_cache_uuid_info *a2)
{
  AOTSharedCacheDescription::AOTSharedCacheDescription(this, *a2->x86UUID, *&a2->x86UUID[8], *a2->aotUUID, *&a2->aotUUID[8], a2->x86SlidBaseAddress, a2->aotSlidBaseAddress);
}

{
  AOTSharedCacheDescription::AOTSharedCacheDescription(this, *a2->x86UUID, *&a2->x86UUID[8], *a2->aotUUID, *&a2->aotUUID[8], a2->x86SlidBaseAddress, a2->aotSlidBaseAddress);
}

void DyldKdebugFilesystemInfo::DyldKdebugFilesystemInfo(DyldKdebugFilesystemInfo *this, fsid a2, fsobj_id a3)
{
  *this = a2;
  *(this + 1) = a3;
}

{
  *this = a2;
  *(this + 1) = a3;
}

unint64_t DyldKdebugFilesystemInfo::path@<X0>(fsid_t *this@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = this;
  if (atomic_load_explicit(&DyldKdebugFilesystemInfo::path(void)::rootFsidOnce, memory_order_acquire) != -1)
  {
    *__s = &v8;
    v9 = __s;
    std::__call_once(&DyldKdebugFilesystemInfo::path(void)::rootFsidOnce, &v9, std::__call_once_proxy[abi:ne200100]<std::tuple<DyldKdebugFilesystemInfo::path(void)::$_0 &&>>);
  }

  if (!this->val[0] && !this->val[1])
  {
    *this = DyldKdebugFilesystemInfo::path(void)::root_fsid;
  }

  result = fsgetpath(__s, 0x401uLL, this, *&this[1]);
  if (result == -1)
  {
    v6 = 0;
    *a2 = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a2[23] = result;
    if (result)
    {
      result = memcpy(a2, __s, result);
    }

    a2[v5] = 0;
    v6 = 1;
  }

  a2[24] = v6;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<DyldKdebugFilesystemInfo::path(void)::$_0 &&>>()
{
  v3 = *MEMORY[0x277D85DE8];
  result = statfs("/", &v2);
  DyldKdebugFilesystemInfo::path(void)::root_fsid = v2.f_fsid;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void LibraryDescription::LibraryDescription(LibraryDescription *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

void LibraryDescription::LibraryDescription(LibraryDescription *this, uint64_t a2, UUID a3, uint64_t a4)
{
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = a2;
  *(this + 1) = 0;
}

{
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = a2;
  *(this + 1) = 0;
}

uint64_t LibraryDescription::path@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 40);
  if (v2)
  {
    *a2 = *(this + 32);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return this;
}

BOOL LibraryDescription::operator==(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v6 = *(a2 + 16);
  result = v2 == v6 && *(&v2 + 1) == *(&v6 + 1);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void ats_symbolication_log_init(void)
{
  if (atomic_load_explicit(&ats_symbolication_log_init(void)::initOnce, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&ats_symbolication_log_init(void)::initOnce, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<ats_symbolication_log_init(void)::$_0 &&>>);
  }
}

os_log_t std::__call_once_proxy[abi:ne200100]<std::tuple<ats_symbolication_log_init(void)::$_0 &&>>()
{
  result = os_log_create("com.apple.appletracingsupport", "symbolication");
  ats_symbolication_log = result;
  return result;
}

void StackshotSharedCacheDescription::StackshotSharedCacheDescription(StackshotSharedCacheDescription *this, dyld_uuid_info_64_v2 *a2)
{
  SharedCacheDescription::SharedCacheDescription(this, a2->imageSlidBaseAddress, a2->imageLoadAddress, *a2->imageUUID, *&a2->imageUUID[8]);
}

{
  SharedCacheDescription::SharedCacheDescription(this, a2->imageSlidBaseAddress, a2->imageLoadAddress, *a2->imageUUID, *&a2->imageUUID[8]);
}

uint64_t SourceInfo::path@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 24);
  if (v2)
  {
    *a2 = *(this + 16);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return this;
}

uint64_t SourceInfo::initializeWithCSSourceInfo(uint64_t a1)
{
  *a1 = CSSourceInfoGetRange();
  *(a1 + 8) = v2;
  Path = CSSourceInfoGetPath();
  if (Path)
  {
    v4 = Path;
  }

  else
  {
    v4 = &unk_240FA3A2E;
  }

  v5 = strlen(v4);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  Filename = CSSourceInfoGetFilename();
  if (Filename)
  {
    v7 = Filename;
  }

  else
  {
    v7 = &unk_240FA3A2E;
  }

  v8 = strlen(v7);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = CSSourceInfoGetLineNumber();
  result = CSSourceInfoGetColumn();
  *(a1 + 52) = result;
  return result;
}

uint64_t SourceInfo::debug(SourceInfo *this)
{
  printf("\t\tSource Info: ");
  if (*(this + 3))
  {
    v2 = *(this + 2);
    printf("%s");
  }

  else
  {
    printf("<null>");
  }

  return printf(":%d\n", *(this + 12));
}

_OWORD *SourceInfo::SourceInfo(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if ((CSIsNull() & 1) == 0)
  {
    SourceInfo::initializeWithCSSourceInfo(a1);
  }

  return a1;
}

{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if ((CSIsNull() & 1) == 0)
  {
    SourceInfo::initializeWithCSSourceInfo(a1);
  }

  return a1;
}

__n128 AOTSharedCache::AOTSharedCache(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 AOTSharedCache::aotSharedCacheInfo@<Q0>(AOTSharedCache *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  *a2 = *this;
  *(a2 + 16) = v2;
  result = *(this + 2);
  *(a2 + 32) = result;
  return result;
}

void SharedCache::SharedCache(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  v5 = *(a2 + 4);
  operator new();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  v5 = *(a2 + 4);
  operator new();
}

void SharedCache::SharedCache(uint64_t a1, SharedCache *this, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  *a1 = *a3;
  *(a1 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v6 = *this;
  v7 = *(this + 1);
  *(a1 + 152) = *(this + 4);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  v8 = SharedCacheDescription::uuid(this);
  v10 = v9;
  *(a1 + 16) = SharedCacheSymbolicators::cachedSharedCacheSymbolicatorByUUID(v8, v9);
  *(a1 + 24) = v11;
  if (CSIsNull())
  {
    SharedCacheSymbolicators::createSharedCacheSymbolicatorByUUID(v8, v10);
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  CSRetain();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  if ((CSIsNull() & 1) == 0)
  {
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    SharedCacheMetadata::populateWithSharedCacheSymbolicator(a1 + 32);
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = *this;
    v22 = *(this + 1);
    v23 = *(this + 4);
    CSSymbolicatorForeachSymbolOwnerAtTime();
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_240FA07C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>::~unique_ptr[abi:ne200100](&a9);
  v11 = v9[12];
  if (v11)
  {
    v9[13] = v11;
    operator delete(v11);
  }

  v12 = v9[11];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v9[1];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

uint64_t ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>::release(uint64_t *a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    v3 = a1[1];
    CSRelease();
  }

  result = *a1;
  v5 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  return result;
}

void ___ZN11SharedCacheC2E22SharedCacheDescriptionRKNSt3__110shared_ptrI10StringPoolEE_block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  BaseAddress = CSSymbolOwnerGetBaseAddress();
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    v5 = CFUUIDBytes;
    v6 = SharedCacheDescription::slide((a1 + 40));
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    LibraryDescription::LibraryDescription(&v45, v8 + BaseAddress, *v5, *(v5 + 8));
    v41 = 0;
    v42 = &v41;
    v43 = 0x2000000000;
    v44 = 0;
    v36 = MEMORY[0x277D85DD0];
    v37 = 0x40000000;
    v38 = ___ZN11SharedCacheC2E22SharedCacheDescriptionRKNSt3__110shared_ptrI10StringPoolEE_block_invoke_2;
    v39 = &unk_278CC0218;
    v40 = &v41;
    CSSymbolOwnerForeachSegment();
    LibraryDescription::setLength(&v45, v42[3] - BaseAddress);
    Path = CSSymbolOwnerGetPath();
    v10 = Path;
    if (Path)
    {
      v11 = *v2;
      v12 = strlen(Path);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v33 = v12;
      if (v12)
      {
        memmove(&__p, v10, v12);
      }

      *(&__p + v13) = 0;
      StringPool::cacheString(v11, &__p, &v34);
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if (v35 == 1)
      {
        v47 = v34;
      }

      v14 = *(v2 + 104);
      v15 = *(v2 + 112);
      if (v14 >= v15)
      {
        v19 = *(v2 + 96);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v19) >> 4);
        v21 = v20 + 1;
        if (v20 + 1 > 0x555555555555555)
        {
          std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 4);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x2AAAAAAAAAAAAAALL)
        {
          v23 = 0x555555555555555;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(v2 + 96, v23);
        }

        v24 = 48 * v20;
        v25 = v45;
        v26 = v47;
        *(v24 + 16) = v46;
        *(v24 + 32) = v26;
        *v24 = v25;
        v18 = 48 * v20 + 48;
        v27 = *(v2 + 96);
        v28 = *(v2 + 104) - v27;
        v29 = v24 - v28;
        memcpy((v24 - v28), v27, v28);
        v30 = *(v2 + 96);
        *(v2 + 96) = v29;
        *(v2 + 104) = v18;
        *(v2 + 112) = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        v16 = v45;
        v17 = v47;
        v14[1] = v46;
        v14[2] = v17;
        *v14 = v16;
        v18 = (v14 + 3);
      }

      *(v2 + 104) = v18;
    }

    _Block_object_dispose(&v41, 8);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_240FA0C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN11SharedCacheC2E22SharedCacheDescriptionRKNSt3__110shared_ptrI10StringPoolEE_block_invoke_2(uint64_t a1)
{
  result = CSRegionGetRange();
  v3 = *(*(a1 + 32) + 8);
  v5 = result + v4;
  if (*(v3 + 24) > (result + v4))
  {
    v5 = *(v3 + 24);
  }

  *(v3 + 24) = v5;
  return result;
}

uint64_t SharedCache::SharedCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  v6 = a1 + 32;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  SharedCacheDescription::SharedCacheDescription((a1 + 120));
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  if ((CSIsNull() & 1) == 0)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    CSRetain();
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    SharedCacheMetadata::populateWithSharedCacheSymbolicator(v6);
  }

  return a1;
}

void sub_240FA0D3C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    *(v1 + 104) = v3;
    operator delete(v3);
  }

  SharedCache::SharedCache(v1);
  _Unwind_Resume(a1);
}

uint64_t SharedCache::SharedCache(uint64_t a1, __n128 *a2)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  SharedCacheDescription::SharedCacheDescription((a1 + 120));

  return SharedCache::operator=(a1, a2);
}

void sub_240FA0DBC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    *(v1 + 104) = v3;
    operator delete(v3);
  }

  SharedCache::SharedCache(v1);
  _Unwind_Resume(a1);
}

uint64_t SharedCache::operator=(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    SharedCacheMetadata::operator=(a1 + 32, &a2[2]);
    std::vector<AOTImage>::__move_assign(a1 + 96, a2 + 6);
    *(a1 + 16) = a2[1];
    v4 = *a2;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    v5 = *(a1 + 8);
    *a1 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    a2[1].n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
  }

  return a1;
}

void SharedCache::SharedCache(SharedCache *this, const SharedCache *a2)
{
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  SharedCacheDescription::SharedCacheDescription((this + 120));
  SharedCache::operator=(this, a2);
}

void sub_240FA0EA0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    *(v1 + 104) = v3;
    operator delete(v3);
  }

  SharedCache::SharedCache(v1);
  _Unwind_Resume(a1);
}

__int128 *SharedCache::operator=(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    SharedCacheMetadata::operator=((a1 + 2), a2 + 2);
    std::vector<LibraryDescription>::__assign_with_size[abi:ne200100]<LibraryDescription*,LibraryDescription*>(a1 + 12, *(a2 + 12), *(a2 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 4));
    v5 = *a2;
    v4 = *(a2 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 1);
    *a1 = v5;
    *(a1 + 1) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    *(a1 + 2) = CSRetain();
    *(a1 + 3) = v9;
  }

  return a1;
}

uint64_t SharedCacheMetadata::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t SharedCacheMetadata::operator=(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v4;
  *a1 = v3;
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 56);
  *(a1 + 48) = v6;
  *(a1 + 56) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void SharedCache::~SharedCache(SharedCache *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  CSRelease();
  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void *std::vector<LibraryDescription>::__assign_with_size[abi:ne200100]<LibraryDescription*,LibraryDescription*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<StackshotLibraryDescription>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

double SharedLibraryMetadata::SharedLibraryMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 84) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 84) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t SharedLibraryMetadata::SharedLibraryMetadata(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 84) = 0;
  *a1 = v3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  SharedLibraryMetadata::initializeWithCSSymbolOwner(a1);
  return a1;
}

{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 84) = 0;
  *a1 = v3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  SharedLibraryMetadata::initializeWithCSSymbolOwner(a1);
  return a1;
}

void sub_240FA12B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

size_t SharedLibraryMetadata::initializeWithCSSymbolOwner(uint64_t a1)
{
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    *(a1 + 16) = *CFUUIDBytes;
  }

  *(a1 + 88) = CSSymbolOwnerGetArchitecture();
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v4 = Path;
  }

  else
  {
    v4 = &unk_240FA3A2E;
  }

  result = strlen(v4);
  *(a1 + 48) = v4;
  *(a1 + 56) = result;
  return result;
}

void sub_240FA13A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SharedLibraryMetadata::debug(SharedLibraryMetadata *this)
{
  puts("Shared Library Metadata:");
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(this + 6);
  }

  else
  {
    v3 = 0;
  }

  SharedLibraryMetadata::uuidString(this, &v8);
  v4 = *(this + 11);
  printf("\tPath: ");
  if (v2)
  {
    printf("%s", v3);
  }

  else
  {
    printf("%s", "<null>");
  }

  printf("\tUUID: ");
  if (v9 == 1)
  {
    v5 = v8;
  }

  else
  {
    v5 = "<null>";
  }

  printf("%s", v5);
  FamilyName = CSArchitectureGetFamilyName();
  return printf("\tArch: %s\n", FamilyName);
}

uint64_t SharedLibraryMetadata::path@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 56);
  if (v2)
  {
    *a2 = *(this + 48);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return this;
}

void SharedLibraryMetadata::uuidString(SharedLibraryMetadata *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 5))
  {
    *a2 = *(this + 2);
    v4 = 1;
LABEL_13:
    *(a2 + 16) = v4;
    return;
  }

  UUID::uuidString((this + 1), __p);
  if (v12)
  {
    StringPool::cacheString(*this, __p, &v8);
    v5 = v9;
    if (v9 == 1)
    {
      v6 = v8;
      *(this + 2) = v8;
      *a2 = v6;
      *(a2 + 16) = 1;
    }

    v7 = v5 ^ 1;
    if ((v12 & 1) != 0 && v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = 0;
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  if (v7)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_13;
  }
}

void sub_240FA1590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SharedLibraryMetadata::bundleID@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 104);
  if (v2)
  {
    *a2 = *(this + 96);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return this;
}

uint64_t SharedLibraryMetadata::dsymPath@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 120);
  if (v2)
  {
    *a2 = *(this + 112);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return this;
}

void Process::Process(uint64_t a1, void **a2)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a1 + 40) = v5;
    operator delete(v5);
  }
}

void KernelSymbolicator::kernelSymbolicatorPtr()
{
  if (__cxa_guard_acquire(&qword_27E51E2D8))
  {
    __cxa_atexit(std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>::~unique_ptr[abi:ne200100], &_MergedGlobals, &dword_240F85000);

    __cxa_guard_release(&qword_27E51E2D8);
  }
}

void SymbolicationSession::sharedLibraryWithCSSymbolOwner(uint64_t *a1)
{
  OUTLINED_FUNCTION_0(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315138;
  v5 = v1;
  _os_log_debug_impl(&dword_240F85000, v2, OS_LOG_TYPE_DEBUG, "Failed to store shared library with UUID %s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void SymbolicationSession::sharedLibraryWithUUIDAndPath(uint64_t *a1)
{
  OUTLINED_FUNCTION_0(a1, *MEMORY[0x277D85DE8]);
  v5 = 136315394;
  v6 = v1;
  v7 = 2080;
  v8 = v2;
  _os_log_debug_impl(&dword_240F85000, v3, OS_LOG_TYPE_DEBUG, "Failed to store shared library with UUID %s, path %s", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void SymbolicationSession::collectLiveLibraryDescriptionsForPid(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_240F85000, a2, OS_LOG_TYPE_DEBUG, "Failed to acquire live library info for pid %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void SymbolicationSession::addNewProcessWithDataProvider<Stackshot>(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_240F85000, a2, OS_LOG_TYPE_ERROR, "Failed to create Process representation for pid %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void SharedCacheSymbolicators::sharedCacheSymbolicatorMap()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    *algn_27E51E330 = 0u;
    xmmword_27E51E320 = 0u;
    dword_27E51E340 = 1065353216;
    __cxa_atexit(std::unordered_map<UUID,std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>>::~unordered_map[abi:ne200100], &xmmword_27E51E320, &dword_240F85000);

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

void SharedCache::SharedCache(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}