const void **StringPool::cacheString@<X0>(void *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
  if (result)
  {
    v5 = *(result + 39);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v6 = result[2];
      v5 = result[3];
    }

    else
    {
      v6 = result + 2;
    }

    *a3 = v6;
    *(a3 + 8) = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v7;
  return result;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_240F85BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_240F85D4C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CBFCE0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

void StackshotAotImageDescription::StackshotAotImageDescription(StackshotAotImageDescription *this, user64_dyld_aot_info *a2)
{
  AOTImageDescription::AOTImageDescription(this, a2->x86LoadAddress, a2->aotLoadAddress, a2->aotImageSize, a2->aotImageKey);
}

{
  AOTImageDescription::AOTImageDescription(this, a2->x86LoadAddress, a2->aotLoadAddress, a2->aotImageSize, a2->aotImageKey);
}

void AOTImageDescription::AOTImageDescription(AOTImageDescription *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void AOTImageDescription::AOTImageDescription(AOTImageDescription *this, uint64_t a2, uint64_t a3, uint64_t a4, const unsigned __int8 *a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v5 = *a5;
  *(this + 40) = *(a5 + 1);
  *(this + 24) = v5;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v5 = *a5;
  *(this + 40) = *(a5 + 1);
  *(this + 24) = v5;
}

uint64_t ats_destroy_symbolication_config(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x245CD5830);
  }

  return result;
}

uint64_t AOTImage::AOTImage(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 64) = *(a2 + 6);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 16) = v3;
  *a1 = AOTImageDescription::aotAddress((a1 + 16));
  *(a1 + 8) = AOTImageDescription::aotSize((a1 + 16));
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 64) = *(a2 + 6);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 16) = v3;
  *a1 = AOTImageDescription::aotAddress((a1 + 16));
  *(a1 + 8) = AOTImageDescription::aotSize((a1 + 16));
  return a1;
}

__n128 AOTImage::aotImageInfo@<Q0>(AOTImage *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  *a2 = *(this + 1);
  *(a2 + 16) = v2;
  result = *(this + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = *(this + 8);
  return result;
}

uint64_t Process::Process(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *a3;
  *(a1 + 24) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = 126 - 2 * __clz((v5 - v4) >> 5);
  *(a1 + 32) = 0;
  *(a1 + 104) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(v4, v5, v9, v7, 1);
  return a1;
}

void sub_240F86888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v2 + 136);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  Process::Process(v2, v3);
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Process::setSharedCache(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 136);
  *(a1 + 128) = v3;
  *(a1 + 136) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

__n128 Process::setAOTSharedCache(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 88) = *(a2 + 32);
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  *(a1 + 104) = 1;
  return result;
}

double Process::setAOTImages(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u64[0];
  v5 = a2->n128_u64[1];
  v6 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v5 - v4) >> 3));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(v4, v5, &v9, v7, 1);
  *&result = std::vector<AOTImage>::__move_assign(a1 + 32, a2).n128_u64[0];
  return result;
}

void Process::setAOTSymbolicator(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 120);
  *(a1 + 112) = v3;
  *(a1 + 120) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

__n128 Process::aotSharedCache@<Q0>(Process *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 72);
  *a2 = *(this + 56);
  *(a2 + 16) = v2;
  result = *(this + 88);
  *(a2 + 32) = result;
  *(a2 + 48) = *(this + 13);
  return result;
}

ProcessLibrary *Process::addAddressAndTryTranslation(Process *this, unint64_t a2)
{
  result = Process::findRangeEntryForAddress<std::vector<ProcessLibrary>>(this, this + 1, a2);
  if (*(this + 2) != result)
  {

    return ProcessLibrary::addAddress(result, a2);
  }

  return result;
}

ProcessLibrary *Process::addAddresses(ProcessLibrary *this, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = this;
    do
    {
      v5 = *v2++;
      this = Process::addAddressAndTryTranslation(v4, v5);
    }

    while (v2 != v3);
  }

  return this;
}

ProcessLibrary *Process::addAddressesAndTryTranslation(ProcessLibrary *this, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = this;
    do
    {
      v5 = *v2++;
      this = Process::addAddressAndTryTranslation(v4, v5);
    }

    while (v2 != v3);
  }

  return this;
}

uint64_t Process::addAOTImages(uint64_t result, __int128 **a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v15 = v3[1];
      v16 = v3[2];
      v17 = v3[3];
      v18 = *(v3 + 8);
      v6 = *v3;
      v3 = (v3 + 72);
      v14 = v6;
      v12[2] = v16;
      v12[3] = v17;
      v13 = v18;
      v12[0] = v6;
      v12[1] = v15;
      result = Process::addRangeLibrary<std::vector<AOTImage>,AOTImage>(v4, (v4 + 32), v12);
      v5 |= result;
    }

    while (v3 != v2);
    if (v5)
    {
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v9 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v8 - v7) >> 3));
      if (v8 == v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(v7, v8, &v14, v10, 1);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Process::addRangeLibrary<std::vector<AOTImage>,AOTImage>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = Process::findRangeEntryForAddress<std::vector<AOTImage>>(a1, a2, *a3);
  v6 = a2[1];
  if (v6 != v5)
  {
    v7 = v5;
    if (*v5 == *a3 && *(v5 + 1) == a3[1])
    {
      return 0;
    }

    v9 = v6 - (v5 + 72);
    if (v6 != v5 + 72)
    {
      memmove(v5, v5 + 72, v6 - (v5 + 72));
    }

    a2[1] = v7 + v9;
  }

  std::vector<AOTImage>::push_back[abi:ne200100](a2, a3);
  return 1;
}

void Process::addLibraries(uint64_t a1, __int128 **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v5 = 0;
    do
    {
      v16 = *v3;
      v6 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = v16;
        v14 = v6;
        v15 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = *v3;
        v14 = v6;
        v15 = 0;
      }

      v8 = Process::addRangeLibrary<std::vector<ProcessLibrary>,ProcessLibrary>(a1, (a1 + 8), &v13);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 |= v8;
      v3 += 2;
    }

    while (v3 != v2);
    if (v5)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v11 = 126 - 2 * __clz((v10 - v9) >> 5);
      if (v10 == v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(v9, v10, &v16, v12, 1);
    }
  }
}

void sub_240F86D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Process::addRangeLibrary<std::vector<ProcessLibrary>,ProcessLibrary>(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v5 = Process::findRangeEntryForAddress<std::vector<ProcessLibrary>>(a1, a2, *a3);
  v6 = a2[1];
  if (v6 != v5)
  {
    if (*v5 == *a3 && v5[1] == a3[1])
    {
      return 0;
    }

    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ProcessLibrary *,ProcessLibrary *,ProcessLibrary *>(&v12, (v5 + 4), v6, v5);
    v9 = v8;
    v10 = a2[1];
    if (v10 != v8)
    {
      do
      {
        v11 = *(v10 - 8);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v10 -= 32;
      }

      while (v10 != v9);
    }

    a2[1] = v9;
  }

  std::vector<ProcessLibrary>::push_back[abi:ne200100](a2, a3);
  return 1;
}

void *Process::findRangeEntryForAddress<std::vector<ProcessLibrary>>(uint64_t a1, void *a2, unint64_t a3)
{
  result = a2[1];
  v4 = result;
  if (result != *a2)
  {
    v5 = (result - *a2) >> 5;
    v4 = *a2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[4 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 4;
      v5 += ~(v5 >> 1);
      if (v9 > a3)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  if (v4 != *a2)
  {
    v10 = *(v4 - 4);
    if (v10 <= a3 && *(v4 - 3) + v10 > a3)
    {
      return v4 - 4;
    }
  }

  return result;
}

uint64_t Process::createTransientProcessSymbolicatorFromDescriptions(Process *this)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *(this + 16);
  if (v2 && (*uu = SharedCache::uuid(v2), v49 = v3, !uuid_is_null(uu)))
  {
    __p = 0;
    v46 = 0;
    v47 = 0;
    std::vector<_CSBinaryImageInformation>::reserve(&__p, 0x64uLL);
    memset(v44, 0, sizeof(v44));
    v7 = *(this + 1);
    for (i = *(this + 2); v7 != i; v7 += 2)
    {
      v41 = *v7;
      v9 = *(v7 + 3);
      v42 = *(v7 + 2);
      v43 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((ProcessLibrary::isInSharedCacheCheckAfterPostprocessingDone(&v41) & 1) == 0)
      {
        ProcessLibrary::path(&v41, uu);
        if (v50 == 1)
        {
          *v55 = ProcessLibrary::uuid(&v41);
          v56 = v10;
          if (!uuid_is_null(v55))
          {
            ProcessLibrary::slide(&v41);
            if (v11)
            {
              v12 = ProcessLibrary::uuid(&v41);
              v14 = v13;
              ProcessLibrary::path(&v41, uu);
              if ((v50 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v15 = *uu;
              v16 = ProcessLibrary::architecture(&v41);
              if (ProcessLibrary::isPrimaryExecutableCheckAfterPostprocessingDone(&v41))
              {
                v17 = 16;
              }

              else
              {
                v17 = 0;
              }

              v18 = ProcessLibrary::slide(&v41);
              if ((v19 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v20 = v18;
              v37 = v14;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v21 = ProcessLibrary::segmentCountCheckAfterPostprocessingDone(&v41);
              if (v22)
              {
                std::vector<_CSBinaryRelocationInformation>::reserve(&v38, v21);
              }

              if (v42)
              {
                *v55 = 0;
                v56 = v55;
                v57 = 0x2000000000;
                v58 = 0;
                SharedLibrary::csSymbolOwner(v42);
                *uu = MEMORY[0x277D85DD0];
                v49 = 0x40000000;
                v50 = ___ZNK14ProcessLibrary14forEachSegmentIZN7Process50createTransientProcessSymbolicatorFromDescriptionsEvE3__0EEvT__block_invoke;
                v51 = &unk_278CBFCF8;
                v52 = v55;
                v53 = &v38;
                v54 = v20;
                CSSymbolOwnerForeachSegment();
                _Block_object_dispose(v55, 8);
              }

              v24 = v38;
              v23 = v39;
              std::vector<std::vector<_CSBinaryRelocationInformation>>::push_back[abi:ne200100](v44, &v38);
              v25 = -858993459 * ((v23 - v24) >> 3);
              v26 = v46;
              if (v46 >= v47)
              {
                v28 = (v46 - __p) >> 6;
                v29 = v28 + 1;
                if ((v28 + 1) >> 58)
                {
                  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
                }

                v30 = v47 - __p;
                if ((v47 - __p) >> 5 > v29)
                {
                  v29 = v30 >> 5;
                }

                if (v30 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v31 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v29;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryImageInformation>>(&__p, v31);
                }

                v32 = v28 << 6;
                *(v32 + 16) = v12;
                *(v32 + 24) = v37;
                *(v32 + 32) = v16;
                *(v32 + 40) = v15;
                *(v32 + 48) = v24;
                *(v32 + 56) = v25;
                *(v32 + 60) = v17;
                v27 = (v28 << 6) + 64;
                v33 = ((v28 << 6) - (v46 - __p));
                memcpy(v33, __p, v46 - __p);
                v34 = __p;
                __p = v33;
                v46 = v27;
                v47 = 0;
                if (v34)
                {
                  operator delete(v34);
                }
              }

              else
              {
                *(v46 + 2) = v12;
                *(v26 + 3) = v37;
                *(v26 + 4) = v16;
                *(v26 + 5) = v15;
                *(v26 + 6) = v24;
                v27 = (v26 + 64);
                *(v26 + 14) = v25;
                *(v26 + 15) = v17;
              }

              v46 = v27;
              if (v38)
              {
                v39 = v38;
                operator delete(v38);
              }
            }
          }
        }
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }
    }

    *uu = SharedCache::uuid(*(this + 16));
    v49 = v35;
    SharedCache::loadAddress(*(this + 16));
    v36 = *this;
    v4 = CSSymbolicatorCreateWithBinaryImageListPidAndSharedCacheUUID();
    *uu = v44;
    std::vector<std::vector<_CSBinaryRelocationInformation>>::__destroy_vector::operator()[abi:ne200100](uu);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_240F872C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  *(v24 - 144) = &a20;
  std::vector<std::vector<_CSBinaryRelocationInformation>>::__destroy_vector::operator()[abi:ne200100]((v24 - 144));
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void *std::vector<_CSBinaryImageInformation>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryImageInformation>>(result, a2);
    }

    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<_CSBinaryRelocationInformation>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(result, a2);
    }

    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<_CSBinaryRelocationInformation>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<_CSBinaryRelocationInformation>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v55 = a2;
  v56 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 5;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v47 = *(v7 - 4);
        v55 = v7 - 4;
        if (v47 < *v8)
        {
          v48 = &v56;
          v49 = &v55;
          goto LABEL_96;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v55 = v7 - 4;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(v8, v8 + 2, v8 + 4, v7 - 4);
      return;
    }

    if (v10 == 5)
    {
      v55 = v7 - 4;
      v60 = v8 + 2;
      *&v61 = v8;
      v58 = v8 + 6;
      v59 = v8 + 4;
      v57 = v7 - 4;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(v8, v8 + 2, v8 + 4, v8 + 12);
      if (*(v7 - 4) < *(v8 + 12))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v58, &v57);
        if (*v58 < *(v8 + 8))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v59, &v58);
          if (*v59 < *(v8 + 4))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
            v50 = v60;
            v51 = *v8;
            goto LABEL_94;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v8, v7);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,ProcessLibrary *>(v8, v7, v7, a3);
      }

      return;
    }

    v11 = &v8[2 * (v10 >> 1)];
    v12 = v11;
    v13 = v7 - 4;
    if (v10 < 0x81)
    {
      v60 = v8;
      *&v61 = &v8[2 * (v10 >> 1)];
      v59 = (v7 - 4);
      v18 = *v8;
      v19 = *v13;
      if (*v8 >= *v11)
      {
        if (v19 < v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
          if (*v60 < *v61)
          {
            v20 = &v61;
            v21 = &v60;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = &v61;
        if (v19 < v18)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 < *v60)
        {
          v20 = &v60;
LABEL_22:
          v21 = &v59;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v20, v21);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_65;
    }

    v60 = &v8[2 * (v10 >> 1)];
    *&v61 = v8;
    v59 = (v7 - 4);
    v14 = *v11;
    v15 = *v13;
    if (*v11 < *v8)
    {
      v16 = &v61;
      if (v15 >= v14)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_27;
        }

        v16 = &v60;
      }

      v17 = &v59;
      goto LABEL_26;
    }

    if (v15 < v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v16 = &v61;
        v17 = &v60;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v16, v17);
      }
    }

LABEL_27:
    v23 = v11 - 2;
    v22 = *(v11 - 4);
    v24 = *(v8 + 4);
    v60 = v11 - 2;
    *&v61 = v8 + 2;
    v25 = *(v7 - 8);
    v59 = (v7 - 8);
    if (v22 < v24)
    {
      v26 = &v61;
      if (v25 >= v22)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_42;
        }

        v26 = &v60;
      }

      v27 = &v59;
      goto LABEL_41;
    }

    if (v25 < v22)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v26 = &v61;
        v27 = &v60;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v26, v27);
      }
    }

LABEL_42:
    v30 = *(v11 + 4);
    v29 = v11 + 2;
    v28 = v30;
    v31 = *(v8 + 8);
    v60 = v29;
    *&v61 = v8 + 4;
    v32 = *(v7 - 12);
    v59 = (v7 - 12);
    if (v30 < v31)
    {
      v33 = &v61;
      if (v32 >= v28)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_51;
        }

        v33 = &v60;
      }

      v34 = &v59;
      goto LABEL_50;
    }

    if (v32 < v28)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v33 = &v61;
        v34 = &v60;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v33, v34);
      }
    }

LABEL_51:
    v60 = v12;
    *&v61 = v23;
    v59 = v29;
    v35 = *v12;
    v36 = *v29;
    if (*v12 < *v23)
    {
      v37 = &v61;
      if (v36 >= v35)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_60;
        }

        v37 = &v60;
      }

      v38 = &v59;
      goto LABEL_59;
    }

    if (v36 < v35)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v37 = &v61;
        v38 = &v60;
LABEL_59:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v37, v38);
      }
    }

LABEL_60:
    v39 = v8[1];
    v61 = *v8;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    v40 = *v12;
    v41 = v12[1];
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    v42 = *(v8 + 3);
    *v8 = v40;
    v8[1] = v41;
    if (v42)
    {
      v54 = v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      v39 = v54;
    }

    v43 = *(v12 + 3);
    *v12 = v61;
    v12[1] = v39;
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    v8 = v56;
    if (a5)
    {
LABEL_37:
      v7 = v55;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v55;
    if (*(v8 - 4) >= *v8)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(v8, v55);
      goto LABEL_75;
    }

LABEL_66:
    v44 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(v8, v7);
    if ((v45 & 1) == 0)
    {
      goto LABEL_73;
    }

    v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v8, v44);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v44 + 2, v7))
    {
      if (v46)
      {
        return;
      }

      v55 = v44;
      v7 = v44;
    }

    else
    {
      if (!v46)
      {
LABEL_73:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(v8, v44, a3, -i, a5 & 1);
        v8 = v44 + 2;
LABEL_75:
        a5 = 0;
        v56 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v56 = v44 + 2;
      v8 = v44 + 2;
    }
  }

  v52 = *(v8 + 4);
  v60 = v8 + 2;
  *&v61 = v8;
  v53 = *(v7 - 4);
  v59 = (v7 - 4);
  if (v52 < *v8)
  {
    v48 = &v61;
    if (v53 >= v52)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
      if (*v59 >= *v60)
      {
        return;
      }

      v48 = &v60;
    }

    v49 = &v59;
    goto LABEL_96;
  }

  if (v53 < v52)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
    v50 = v60;
    v51 = *v61;
LABEL_94:
    if (*v50 < v51)
    {
      v48 = &v61;
      v49 = &v60;
LABEL_96:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v48, v49);
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)[1];
  v9 = **a1;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *v2 = *v3;
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = *(v2 + 3);
  v2[1] = v5;
  if (v6)
  {
    v8 = v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v4 = v8;
  }

  v7 = *(v3 + 24);
  *v3 = v9;
  *(v3 + 16) = v4;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(__int128 *a1, __int128 *a2, __int128 *a3, void *a4)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v17, &v16);
      if (*v17 < *v18)
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v10, v11);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v18, &v17);
    if (*v16 < *v17)
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v13, &v12);
    if (*v13 < *a2)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v14, &v13);
      if (*v14 < *a1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v15, &v14);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[4];
        if (v8 < *v7)
        {
          v9 = v7[5];
          v10 = v7[6];
          v11 = v7[7];
          v12 = v5;
          v7[6] = 0;
          v7[7] = 0;
          while (1)
          {
            v13 = v12;
            v14 = a1 + v12;
            v15 = *v14;
            v16 = *(v14 + 1);
            *(v14 + 2) = 0;
            *(v14 + 3) = 0;
            v17 = *(v14 + 7);
            *(v14 + 2) = v15;
            *(v14 + 3) = v16;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            if (!v13)
            {
              break;
            }

            v12 = v13 - 32;
            if (v8 >= *(a1 + v13 - 32))
            {
              v18 = (a1 + v13);
              goto LABEL_12;
            }
          }

          v18 = a1;
LABEL_12:
          *v18 = v8;
          v18[1] = v9;
          *(a1 + v13 + 16) = v10;
          v19 = v18[3];
          v18[3] = v11;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }
        }

        v4 = v6 + 4;
        v5 += 32;
      }

      while (v6 + 4 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 32;
    if (a1 + 32 != a2)
    {
      v5 = (a1 + 56);
      do
      {
        v6 = v3;
        v3 = v4;
        v7 = *(v6 + 32);
        if (v7 < *v6)
        {
          v8 = *(v6 + 40);
          v14 = *(v6 + 48);
          v9 = v5;
          *(v6 + 48) = 0;
          *(v6 + 56) = 0;
          do
          {
            *(v9 - 3) = *(v9 - 7);
            v10 = *(v9 - 5);
            *(v9 - 5) = 0;
            *(v9 - 4) = 0;
            v11 = *v9;
            *(v9 - 1) = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v12 = *(v9 - 11);
            v9 -= 4;
          }

          while (v7 < v12);
          *(v9 - 3) = v7;
          *(v9 - 2) = v8;
          v13 = *v9;
          *(v9 - 1) = v14;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }
        }

        v4 = v3 + 32;
        v5 += 4;
      }

      while (v3 + 32 != a2);
    }
  }
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v18 = a2;
  v16 = *a1;
  v3 = *a1;
  v17 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = v3;
  if (v3 >= *(a2 - 32))
  {
    v7 = (a1 + 32);
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v3 >= *v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = *(v5 + 4);
      v5 += 2;
    }

    while (v3 >= v6);
  }

  v19 = v5;
  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 32);
      a2 -= 32;
    }

    while (v3 < v8);
    v18 = a2;
  }

  if (v5 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v19, &v18);
      v5 = v19;
      do
      {
        v9 = *(v5 + 4);
        v5 += 2;
      }

      while (v4 >= v9);
      v19 = v5;
      v10 = v18;
      do
      {
        v11 = *(v10 - 32);
        v10 -= 32;
      }

      while (v4 < v11);
      v18 = v10;
    }

    while (v5 < v10);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 2);
    v12 = *(v5 - 1);
    *(v5 - 2) = 0;
    *(v5 - 1) = 0;
    v13 = *(a1 + 24);
    *(a1 + 16) = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = *(v5 - 1);
  *(v5 - 2) = v16;
  *(v5 - 1) = v17;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v19;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v19 = *a1;
  v5 = *a1;
  v20 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = v5;
  do
  {
    v7 = *(a1 + v4 + 32);
    v4 += 32;
  }

  while (v7 < v5);
  v8 = a1 + v4;
  v22 = (a1 + v4);
  if (v4 == 32)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v10 = *(a2 - 32);
      a2 -= 32;
    }

    while (v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 32);
      a2 -= 32;
    }

    while (v9 >= v5);
  }

  v21 = a2;
  v11 = (a1 + v4);
  if (v8 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v22, &v21);
      v11 = v22;
      do
      {
        v12 = *(v11 + 4);
        v11 += 2;
      }

      while (v12 < v6);
      v22 = v11;
      v13 = v21;
      do
      {
        v14 = *(v13 - 32);
        v13 -= 32;
      }

      while (v14 >= v6);
      v21 = v13;
    }

    while (v11 < v13);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 2);
    v15 = *(v11 - 1);
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
    v16 = *(a1 + 24);
    *(a1 + 16) = v15;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v17 = *(v11 - 1);
  *(v11 - 2) = v19;
  *(v11 - 1) = v20;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return v11 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(__int128 *a1, __int128 *a2)
{
  v37 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *(a1 + 4);
        v41 = a1 + 2;
        v42 = a1;
        v13 = *(a2 - 4);
        v40 = a2 - 2;
        if (v12 < *a1)
        {
          v6 = &v42;
          if (v13 >= v12)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v42, &v41);
            if (*v40 >= *v41)
            {
              return 1;
            }

            v6 = &v41;
          }

          v7 = &v40;
          goto LABEL_28;
        }

        if (v13 >= v12)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v41, &v40);
        v10 = v41;
        v11 = *v42;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(a1, a1 + 2, a1 + 4, a2 - 4);
        return 1;
      case 5:
        v8 = a1 + 2;
        v41 = a1 + 2;
        v42 = a1;
        v9 = a1 + 4;
        v39 = a1 + 6;
        v40 = a1 + 4;
        v38 = a2 - 2;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(a1, a1 + 2, a1 + 4, a1 + 12);
        if (*(a2 - 4) >= *(a1 + 12))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v39, &v38);
        if (*v39 >= *v9)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v40, &v39);
        if (*v40 >= *v8)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v41, &v40);
        v10 = v41;
        v11 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (*v10 < v11)
    {
      v6 = &v42;
      v7 = &v41;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 4);
    v36 = a2 - 2;
    if (v5 < *a1)
    {
      v6 = &v37;
      v7 = &v36;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v15 = a1 + 4;
  v14 = *(a1 + 8);
  v16 = *(a1 + 4);
  v41 = a1 + 2;
  v42 = a1;
  v40 = a1 + 4;
  if (v16 < *a1)
  {
    v17 = &v42;
    if (v14 >= v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v42, &v41);
      if (*v40 >= *v41)
      {
        goto LABEL_33;
      }

      v17 = &v41;
    }

    v18 = &v40;
    goto LABEL_32;
  }

  if (v14 < v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v41, &v40);
    if (*v41 < *v42)
    {
      v17 = &v42;
      v18 = &v41;
LABEL_32:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v17, v18);
    }
  }

LABEL_33:
  v19 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = *v15;
    v23 = *v19;
    if (*v19 < v22)
    {
      v24 = *(v19 + 1);
      v25 = *(v19 + 2);
      v26 = *(v19 + 3);
      v27 = v20;
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      while (1)
      {
        v28 = v27;
        v29 = a1 + v27;
        v30 = *(v29 + 4);
        v31 = *(v29 + 5);
        *(v29 + 10) = 0;
        *(v29 + 11) = 0;
        v32 = *(v29 + 15);
        *(v29 + 6) = v30;
        *(v29 + 7) = v31;
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v28 == -64)
        {
          break;
        }

        v27 = v28 - 32;
        if (v23 >= *(a1 + v28 + 32))
        {
          v33 = (a1 + v27 + 96);
          goto LABEL_43;
        }
      }

      v33 = a1;
LABEL_43:
      *v33 = v23;
      *(v33 + 1) = v24;
      *(a1 + v28 + 80) = v25;
      v34 = *(v33 + 3);
      *(v33 + 3) = v26;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (++v21 == 8)
      {
        return v19 + 2 == a2;
      }
    }

    v15 = v19;
    v20 += 32;
    v19 += 2;
    if (v19 == a2)
    {
      return 1;
    }
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,ProcessLibrary *>(unint64_t *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v17 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v16 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*v12 < *v17)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v16, &v17);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v17, a4, v8, v17);
          v12 = v16;
        }

        v12 += 2;
        v16 = v12;
      }

      while (v12 != a3);
      v7 = v17;
      v8 = (v6 - v17) >> 5;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ProcessLibrary *>(v7, v6, a4, v8);
        v6 -= 2;
        v13 = v8 >= 2;
        v14 = v8-- == 2;
      }

      while (!v14 && v13);
      return v16;
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = a4 - a1;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = v7 >> 4;
      v11 = (v7 >> 4) + 1;
      v12 = (a1 + 32 * v11);
      v13 = v10 + 2;
      if (v10 + 2 >= a3)
      {
        v14 = *v12;
      }

      else
      {
        v14 = v12[4];
        v15 = *v12 >= v14;
        if (*v12 > v14)
        {
          v14 = *v12;
        }

        if (!v15)
        {
          v12 += 4;
          v11 = v13;
        }
      }

      v16 = *a4;
      if (v14 >= *a4)
      {
        v17 = a4[1];
        v24 = *(a4 + 1);
        a4[2] = 0;
        a4[3] = 0;
        do
        {
          v18 = v5;
          v5 = v12;
          *v18 = *v12;
          v19 = *(v12 + 1);
          v12[2] = 0;
          v12[3] = 0;
          v20 = v18[3];
          *(v18 + 1) = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v8 < v11)
          {
            break;
          }

          v12 = (a1 + 32 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v21 = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            v21 = v12[4];
            v22 = *v12 >= v21;
            if (*v12 > v21)
            {
              v21 = *v12;
            }

            if (v22)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 += 4;
              v11 = 2 * v11 + 2;
            }
          }
        }

        while (v21 >= v16);
        *v5 = v16;
        v5[1] = v17;
        v23 = v5[3];
        *(v5 + 1) = v24;
        if (v23)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v17 = *a1;
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(a1, a3, a4);
    v10 = v9;
    v11 = (a2 - 32);
    if (v9 == a2 - 32)
    {
      *v9 = v17;
      v16 = *(v9 + 24);
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    else
    {
      *v9 = *v11;
      v12 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v13 = *(v9 + 24);
      *(v10 + 16) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = v10 + 32;
      *v11 = v17;
      v15 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(a1, v14, a3, (v14 - a1) >> 5);
    }
  }
}

void sub_240F88940(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = a1 + 32 * v4;
    v7 = v6 + 32;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v9 = *(v6 + 64);
      v8 = v6 + 64;
      if (*(v8 - 32) >= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v8;
        v4 = 2 * v4 + 2;
      }
    }

    *a1 = *v7;
    v10 = *(v7 + 16);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v11 = *(a1 + 24);
    *(a1 + 16) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 32 * (v4 >> 1);
    v8 = a2 - 32;
    v9 = *(a2 - 32);
    if (*v7 < v9)
    {
      v10 = *(a2 - 24);
      v15 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v11 = v8;
        v8 = v7;
        *v11 = *v7;
        v12 = *(v7 + 16);
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v13 = *(v11 + 24);
        *(v11 + 16) = v12;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 32 * v6;
      }

      while (*v7 < v9);
      *v8 = v9;
      *(v8 + 8) = v10;
      v14 = *(v8 + 24);
      *(v8 + 16) = v15;
      if (v14)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }
}

void std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ProcessLibrary>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ProcessLibrary>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

__int128 *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(__int128 *result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
  v334 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a2 - 9;
  v9 = a2 - 9;
  v10 = a2 - 27;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0x8E38E38E38E38E39 * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        goto LABEL_109;
      }

      if (v15 == 2)
      {
        v122 = *(a2 - 9);
        v114 = a2 - 72;
        if (v122 >= *v11)
        {
          goto LABEL_109;
        }

        goto LABEL_76;
      }

      goto LABEL_11;
    }

    switch(v15)
    {
      case 3uLL:
        v111 = v11 + 72;
        v112 = *(v11 + 72);
        v115 = *(a2 - 9);
        v114 = a2 - 72;
        v113 = v115;
        if (v112 < *v11)
        {
          if (v113 < v112)
          {
LABEL_76:
            v185 = *v11;
            v325 = *(v11 + 64);
            v255 = *(v11 + 32);
            v290 = *(v11 + 48);
            v220 = *(v11 + 16);
            v124 = *(v114 + 2);
            v123 = *(v114 + 3);
            v125 = *(v114 + 1);
            *(v11 + 64) = *(v114 + 8);
            *(v11 + 32) = v124;
            *(v11 + 48) = v123;
            *(v11 + 16) = v125;
            *v11 = *v114;
            *(v114 + 1) = v220;
            *(v114 + 2) = v255;
            *(v114 + 3) = v290;
            *(v114 + 8) = v325;
            *v114 = v185;
            goto LABEL_109;
          }

          v183 = *v11;
          v323 = *(v11 + 64);
          v253 = *(v11 + 32);
          v288 = *(v11 + 48);
          v218 = *(v11 + 16);
          *(v11 + 64) = *(v11 + 136);
          v116 = *(v11 + 120);
          *(v11 + 32) = *(v11 + 104);
          *(v11 + 48) = v116;
          v117 = *(v11 + 88);
          *v11 = *v111;
          *(v11 + 16) = v117;
          *(v11 + 136) = v323;
          *(v11 + 104) = v253;
          *(v11 + 120) = v288;
          *v111 = v183;
          *(v11 + 88) = v218;
          if (*v114 < *(v11 + 72))
          {
            v254 = *(v11 + 104);
            v289 = *(v11 + 120);
            v324 = *(v11 + 136);
            v184 = *v111;
            v219 = *(v11 + 88);
            *v111 = *v114;
            v119 = *(v114 + 2);
            v118 = *(v114 + 3);
            v120 = *(v114 + 1);
            *(v11 + 136) = *(v114 + 8);
            *(v11 + 104) = v119;
            *(v11 + 120) = v118;
            *(v11 + 88) = v120;
            *v114 = v184;
            *(v114 + 8) = v324;
            *(v114 + 3) = v289;
            *(v114 + 2) = v254;
            *(v114 + 1) = v219;
          }

          goto LABEL_109;
        }

        if (v113 >= v112)
        {
          goto LABEL_109;
        }

        v257 = *(v11 + 104);
        v292 = *(v11 + 120);
        v327 = *(v11 + 136);
        v187 = *v111;
        v222 = *(v11 + 88);
        *v111 = *v114;
        v134 = *(v114 + 2);
        v133 = *(v114 + 3);
        v135 = *(v114 + 1);
        *(v11 + 136) = *(v114 + 8);
        *(v11 + 104) = v134;
        *(v11 + 120) = v133;
        *(v11 + 88) = v135;
        *v114 = v187;
        *(v114 + 8) = v327;
        *(v114 + 3) = v292;
        *(v114 + 2) = v257;
        *(v114 + 1) = v222;
        goto LABEL_107;
      case 4uLL:
        v111 = v11 + 72;
        v126 = *(v11 + 72);
        v127 = (v11 + 144);
        v128 = *(v11 + 144);
        if (v126 >= *v11)
        {
          if (v128 < v126)
          {
            v258 = *(v11 + 104);
            v293 = *(v11 + 120);
            v328 = *(v11 + 136);
            v188 = *v111;
            v223 = *(v11 + 88);
            v136 = *(v11 + 192);
            *(v11 + 104) = *(v11 + 176);
            *(v11 + 120) = v136;
            *(v11 + 136) = *(v11 + 208);
            v137 = *(v11 + 160);
            *v111 = *v127;
            *(v11 + 88) = v137;
            *(v11 + 208) = v328;
            *(v11 + 176) = v258;
            *(v11 + 192) = v293;
            *v127 = v188;
            *(v11 + 160) = v223;
            if (*(v11 + 72) < *v11)
            {
              v189 = *v11;
              v329 = *(v11 + 64);
              v259 = *(v11 + 32);
              v294 = *(v11 + 48);
              v224 = *(v11 + 16);
              *(v11 + 64) = *(v11 + 136);
              v138 = *(v11 + 120);
              *(v11 + 32) = *(v11 + 104);
              *(v11 + 48) = v138;
              v139 = *(v11 + 88);
              *v11 = *v111;
              *(v11 + 16) = v139;
              *(v11 + 136) = v329;
              *(v11 + 104) = v259;
              *(v11 + 120) = v294;
              *v111 = v189;
              *(v11 + 88) = v224;
            }
          }
        }

        else
        {
          if (v128 < v126)
          {
            v186 = *v11;
            v326 = *(v11 + 64);
            v256 = *(v11 + 32);
            v291 = *(v11 + 48);
            v221 = *(v11 + 16);
            *(v11 + 64) = *(v11 + 208);
            v129 = *(v11 + 192);
            *(v11 + 32) = *(v11 + 176);
            *(v11 + 48) = v129;
            v130 = *(v11 + 160);
            *v11 = *v127;
            *(v11 + 16) = v130;
            goto LABEL_103;
          }

          v191 = *v11;
          v330 = *(v11 + 64);
          v261 = *(v11 + 32);
          v296 = *(v11 + 48);
          v226 = *(v11 + 16);
          *(v11 + 64) = *(v11 + 136);
          v147 = *(v11 + 120);
          *(v11 + 32) = *(v11 + 104);
          *(v11 + 48) = v147;
          v148 = *(v11 + 88);
          *v11 = *v111;
          *(v11 + 16) = v148;
          *(v11 + 136) = v330;
          *(v11 + 104) = v261;
          *(v11 + 120) = v296;
          *v111 = v191;
          *(v11 + 88) = v226;
          if (v128 < *(v11 + 72))
          {
            v256 = *(v11 + 104);
            v291 = *(v11 + 120);
            v326 = *(v11 + 136);
            v186 = *v111;
            v221 = *(v11 + 88);
            v149 = *(v11 + 192);
            *(v11 + 104) = *(v11 + 176);
            *(v11 + 120) = v149;
            *(v11 + 136) = *(v11 + 208);
            v150 = *(v11 + 160);
            *v111 = *v127;
            *(v11 + 88) = v150;
LABEL_103:
            *(v11 + 208) = v326;
            *(v11 + 176) = v256;
            *(v11 + 192) = v291;
            *v127 = v186;
            *(v11 + 160) = v221;
          }
        }

        if (*v8 >= *v127)
        {
          goto LABEL_109;
        }

        v262 = *(v11 + 176);
        v297 = *(v11 + 192);
        v331 = *(v11 + 208);
        v192 = *v127;
        v227 = *(v11 + 160);
        *v127 = *v8;
        v152 = *(a2 - 40);
        v151 = *(a2 - 24);
        v153 = *(a2 - 56);
        *(v11 + 208) = *(a2 - 1);
        *(v11 + 176) = v152;
        *(v11 + 192) = v151;
        *(v11 + 160) = v153;
        *v8 = v192;
        *(a2 - 1) = v331;
        *(a2 - 24) = v297;
        *(a2 - 40) = v262;
        *(a2 - 56) = v227;
        if (*v127 >= *v111)
        {
          goto LABEL_109;
        }

        v263 = *(v11 + 104);
        v298 = *(v11 + 120);
        v332 = *(v11 + 136);
        v193 = *v111;
        v228 = *(v11 + 88);
        v154 = *(v11 + 192);
        *(v11 + 104) = *(v11 + 176);
        *(v11 + 120) = v154;
        *(v11 + 136) = *(v11 + 208);
        v155 = *(v11 + 160);
        *v111 = *v127;
        *(v11 + 88) = v155;
        *(v11 + 208) = v332;
        *(v11 + 176) = v263;
        *(v11 + 192) = v298;
        *v127 = v193;
        *(v11 + 160) = v228;
LABEL_107:
        if (*(v11 + 72) < *v11)
        {
          v194 = *v11;
          v333 = *(v11 + 64);
          v264 = *(v11 + 32);
          v299 = *(v11 + 48);
          v229 = *(v11 + 16);
          *(v11 + 64) = *(v111 + 64);
          v156 = *(v111 + 48);
          *(v11 + 32) = *(v111 + 32);
          *(v11 + 48) = v156;
          v157 = *(v111 + 16);
          *v11 = *v111;
          *(v11 + 16) = v157;
          *(v111 + 64) = v333;
          *(v111 + 32) = v264;
          *(v111 + 48) = v299;
          *v111 = v194;
          *(v111 + 16) = v229;
        }

        goto LABEL_109;
      case 5uLL:
        v121 = *MEMORY[0x277D85DE8];

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,0>(v11, (v11 + 72), (v11 + 144), (v11 + 216), (a2 - 72));
    }

LABEL_11:
    if (v14 <= 1727)
    {
      if (a5)
      {
        v131 = *MEMORY[0x277D85DE8];

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(v11, a2);
      }

      if (v11 != a2)
      {
        v140 = (v11 + 72);
        while (v140 != a2)
        {
          v141 = v140;
          v142 = *(v7 + 9);
          if (v142 < *v7)
          {
            v190 = v7[5];
            v225 = v7[6];
            v260 = v7[7];
            v295 = v7[8];
            v143 = v141;
            do
            {
              v144 = *(v143 - 56);
              v145 = *(v143 - 24);
              v143[2] = *(v143 - 40);
              v143[3] = v145;
              *(v143 + 8) = *(v143 - 1);
              *v143 = *(v143 - 72);
              v143[1] = v144;
              v146 = *(v143 - 18);
              v143 = (v143 - 72);
            }

            while (v142 < v146);
            *v143 = v142;
            *(v143 + 56) = v295;
            *(v143 + 40) = v260;
            *(v143 + 24) = v225;
            *(v143 + 8) = v190;
          }

          v140 = (v141 + 72);
          v7 = v141;
        }
      }

LABEL_109:
      v158 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v13 == 1)
    {
      break;
    }

    v16 = v15 >> 1;
    v17 = v11 + 72 * (v15 >> 1);
    v18 = *v8;
    if (v14 >= 0x2401)
    {
      v19 = *v17;
      if (*v17 >= *v11)
      {
        if (v18 < v19)
        {
          v162 = *v17;
          v302 = *(v17 + 64);
          v232 = *(v17 + 32);
          v267 = *(v17 + 48);
          v197 = *(v17 + 16);
          v28 = *(a2 - 40);
          v27 = *(a2 - 24);
          v29 = *(a2 - 56);
          *(v17 + 64) = *(a2 - 1);
          *(v17 + 32) = v28;
          *(v17 + 48) = v27;
          *(v17 + 16) = v29;
          *v17 = *v8;
          *(a2 - 56) = v197;
          *(a2 - 40) = v232;
          *(a2 - 24) = v267;
          *(a2 - 1) = v302;
          *v8 = v162;
          if (*v17 < *v11)
          {
            v163 = *v11;
            v303 = *(v11 + 64);
            v233 = *(v11 + 32);
            v268 = *(v11 + 48);
            v198 = *(v11 + 16);
            v31 = *(v17 + 32);
            v30 = *(v17 + 48);
            v32 = *(v17 + 16);
            *(v11 + 64) = *(v17 + 64);
            *(v11 + 32) = v31;
            *(v11 + 48) = v30;
            *(v11 + 16) = v32;
            *v11 = *v17;
            *(v17 + 64) = v303;
            *(v17 + 32) = v233;
            *(v17 + 48) = v268;
            *(v17 + 16) = v198;
            *v17 = v163;
          }
        }
      }

      else
      {
        if (v18 < v19)
        {
          v160 = *v11;
          v300 = *(v11 + 64);
          v230 = *(v11 + 32);
          v265 = *(v11 + 48);
          v195 = *(v11 + 16);
          v21 = *(a2 - 40);
          v20 = *(a2 - 24);
          v22 = *(a2 - 56);
          *(v11 + 64) = *(a2 - 1);
          *(v11 + 32) = v21;
          *(v11 + 48) = v20;
          *(v11 + 16) = v22;
          *v11 = *v8;
          goto LABEL_28;
        }

        v166 = *v11;
        v306 = *(v11 + 64);
        v236 = *(v11 + 32);
        v271 = *(v11 + 48);
        v201 = *(v11 + 16);
        v40 = *(v17 + 32);
        v39 = *(v17 + 48);
        v41 = *(v17 + 16);
        *(v11 + 64) = *(v17 + 64);
        *(v11 + 32) = v40;
        *(v11 + 48) = v39;
        *(v11 + 16) = v41;
        *v11 = *v17;
        *(v17 + 64) = v306;
        *(v17 + 32) = v236;
        *(v17 + 48) = v271;
        *(v17 + 16) = v201;
        *v17 = v166;
        if (*v8 < *v17)
        {
          v160 = *v17;
          v300 = *(v17 + 64);
          v230 = *(v17 + 32);
          v265 = *(v17 + 48);
          v195 = *(v17 + 16);
          v43 = *(a2 - 40);
          v42 = *(a2 - 24);
          v44 = *(a2 - 56);
          *(v17 + 64) = *(a2 - 1);
          *(v17 + 32) = v43;
          *(v17 + 48) = v42;
          *(v17 + 16) = v44;
          *v17 = *v8;
LABEL_28:
          *(a2 - 56) = v195;
          *(a2 - 40) = v230;
          *(a2 - 24) = v265;
          *(a2 - 1) = v300;
          *v8 = v160;
        }
      }

      v45 = (v11 + 72);
      v46 = v11 + 72 * v16;
      v49 = *(v46 - 72);
      v47 = v46 - 72;
      v48 = v49;
      v50 = *v9;
      if (v49 >= *(v11 + 72))
      {
        if (v50 < v48)
        {
          v168 = *v47;
          v308 = *(v47 + 64);
          v238 = *(v47 + 32);
          v273 = *(v47 + 48);
          v203 = *(v47 + 16);
          v55 = *(a2 - 7);
          v54 = *(a2 - 6);
          v56 = *(a2 - 8);
          *(v47 + 64) = *(a2 - 10);
          *(v47 + 32) = v55;
          *(v47 + 48) = v54;
          *(v47 + 16) = v56;
          *v47 = *v9;
          *(a2 - 8) = v203;
          *(a2 - 7) = v238;
          *(a2 - 6) = v273;
          *(a2 - 10) = v308;
          *v9 = v168;
          if (*v47 < *v45)
          {
            v239 = *(v11 + 104);
            v274 = *(v11 + 120);
            v309 = *(v11 + 136);
            v169 = *v45;
            v204 = *(v11 + 88);
            v58 = *(v47 + 32);
            v57 = *(v47 + 48);
            v59 = *(v47 + 16);
            *(v11 + 136) = *(v47 + 64);
            *(v11 + 104) = v58;
            *(v11 + 120) = v57;
            *(v11 + 88) = v59;
            *v45 = *v47;
            *v47 = v169;
            *(v47 + 64) = v309;
            *(v47 + 32) = v239;
            *(v47 + 48) = v274;
            *(v47 + 16) = v204;
          }
        }
      }

      else if (v50 >= v48)
      {
        v241 = *(v11 + 104);
        v276 = *(v11 + 120);
        v311 = *(v11 + 136);
        v171 = *v45;
        v206 = *(v11 + 88);
        v67 = *(v47 + 32);
        v66 = *(v47 + 48);
        v68 = *(v47 + 16);
        *(v11 + 136) = *(v47 + 64);
        *(v11 + 104) = v67;
        *(v11 + 120) = v66;
        *(v11 + 88) = v68;
        *v45 = *v47;
        *v47 = v171;
        *(v47 + 64) = v311;
        *(v47 + 32) = v241;
        *(v47 + 48) = v276;
        *(v47 + 16) = v206;
        if (*v9 < *v47)
        {
          v172 = *v47;
          v312 = *(v47 + 64);
          v242 = *(v47 + 32);
          v277 = *(v47 + 48);
          v207 = *(v47 + 16);
          v70 = *(a2 - 7);
          v69 = *(a2 - 6);
          v71 = *(a2 - 8);
          *(v47 + 64) = *(a2 - 10);
          *(v47 + 32) = v70;
          *(v47 + 48) = v69;
          *(v47 + 16) = v71;
          *v47 = *v9;
          *(a2 - 8) = v207;
          *(a2 - 7) = v242;
          *(a2 - 6) = v277;
          *(a2 - 10) = v312;
          *v9 = v172;
        }
      }

      else
      {
        v237 = *(v11 + 104);
        v272 = *(v11 + 120);
        v307 = *(v11 + 136);
        v167 = *v45;
        v202 = *(v11 + 88);
        *v45 = *v9;
        v52 = *(a2 - 7);
        v51 = *(a2 - 6);
        v53 = *(a2 - 8);
        *(v11 + 136) = *(a2 - 10);
        *(v11 + 104) = v52;
        *(v11 + 120) = v51;
        *(v11 + 88) = v53;
        *v9 = v167;
        *(a2 - 10) = v307;
        *(a2 - 6) = v272;
        *(a2 - 7) = v237;
        *(a2 - 8) = v202;
      }

      v72 = (v11 + 144);
      v73 = v11 + 72 * v16;
      v76 = *(v73 + 72);
      v74 = v73 + 72;
      v75 = v76;
      v77 = *v10;
      if (v76 >= *(v11 + 144))
      {
        if (v77 < v75)
        {
          v174 = *v74;
          v314 = *(v74 + 64);
          v244 = *(v74 + 32);
          v279 = *(v74 + 48);
          v209 = *(v74 + 16);
          v82 = *(a2 - 184);
          v81 = *(a2 - 168);
          v83 = *(a2 - 200);
          *(v74 + 64) = *(a2 - 19);
          *(v74 + 32) = v82;
          *(v74 + 48) = v81;
          *(v74 + 16) = v83;
          *v74 = *v10;
          *(a2 - 200) = v209;
          *(a2 - 184) = v244;
          *(a2 - 168) = v279;
          *(a2 - 19) = v314;
          *v10 = v174;
          if (*v74 < *v72)
          {
            v245 = *(v11 + 176);
            v280 = *(v11 + 192);
            v315 = *(v11 + 208);
            v175 = *v72;
            v210 = *(v11 + 160);
            v85 = *(v74 + 32);
            v84 = *(v74 + 48);
            v86 = *(v74 + 16);
            *(v11 + 208) = *(v74 + 64);
            *(v11 + 176) = v85;
            *(v11 + 192) = v84;
            *(v11 + 160) = v86;
            *v72 = *v74;
            *v74 = v175;
            *(v74 + 64) = v315;
            *(v74 + 32) = v245;
            *(v74 + 48) = v280;
            *(v74 + 16) = v210;
          }
        }
      }

      else if (v77 >= v75)
      {
        v246 = *(v11 + 176);
        v281 = *(v11 + 192);
        v316 = *(v11 + 208);
        v176 = *v72;
        v211 = *(v11 + 160);
        v88 = *(v74 + 32);
        v87 = *(v74 + 48);
        v89 = *(v74 + 16);
        *(v11 + 208) = *(v74 + 64);
        *(v11 + 176) = v88;
        *(v11 + 192) = v87;
        *(v11 + 160) = v89;
        *v72 = *v74;
        *v74 = v176;
        *(v74 + 64) = v316;
        *(v74 + 32) = v246;
        *(v74 + 48) = v281;
        *(v74 + 16) = v211;
        if (*v10 < *v74)
        {
          v177 = *v74;
          v317 = *(v74 + 64);
          v247 = *(v74 + 32);
          v282 = *(v74 + 48);
          v212 = *(v74 + 16);
          v91 = *(a2 - 184);
          v90 = *(a2 - 168);
          v92 = *(a2 - 200);
          *(v74 + 64) = *(a2 - 19);
          *(v74 + 32) = v91;
          *(v74 + 48) = v90;
          *(v74 + 16) = v92;
          *v74 = *v10;
          *(a2 - 200) = v212;
          *(a2 - 184) = v247;
          *(a2 - 168) = v282;
          *(a2 - 19) = v317;
          *v10 = v177;
        }
      }

      else
      {
        v243 = *(v11 + 176);
        v278 = *(v11 + 192);
        v313 = *(v11 + 208);
        v173 = *v72;
        v208 = *(v11 + 160);
        *v72 = *v10;
        v79 = *(a2 - 184);
        v78 = *(a2 - 168);
        v80 = *(a2 - 200);
        *(v11 + 208) = *(a2 - 19);
        *(v11 + 176) = v79;
        *(v11 + 192) = v78;
        *(v11 + 160) = v80;
        *v10 = v173;
        *(a2 - 19) = v313;
        *(a2 - 168) = v278;
        *(a2 - 184) = v243;
        *(a2 - 200) = v208;
      }

      v93 = *v17;
      v94 = *v74;
      if (*v17 >= *v47)
      {
        if (v94 < v93)
        {
          v179 = *v17;
          v319 = *(v17 + 64);
          v249 = *(v17 + 32);
          v284 = *(v17 + 48);
          v214 = *(v17 + 16);
          *(v17 + 64) = *(v74 + 64);
          v97 = *(v74 + 48);
          *(v17 + 32) = *(v74 + 32);
          *(v17 + 48) = v97;
          v98 = *(v74 + 16);
          *v17 = *v74;
          *(v17 + 16) = v98;
          *v74 = v179;
          *(v74 + 64) = v319;
          *(v74 + 32) = v249;
          *(v74 + 48) = v284;
          *(v74 + 16) = v214;
          if (*v17 < *v47)
          {
            v180 = *v47;
            v320 = *(v47 + 64);
            v250 = *(v47 + 32);
            v285 = *(v47 + 48);
            v215 = *(v47 + 16);
            *(v47 + 64) = *(v17 + 64);
            v99 = *(v17 + 48);
            *(v47 + 32) = *(v17 + 32);
            *(v47 + 48) = v99;
            v100 = *(v17 + 16);
            *v47 = *v17;
            *(v47 + 16) = v100;
            *v17 = v180;
            *(v17 + 64) = v320;
            *(v17 + 32) = v250;
            *(v17 + 48) = v285;
            *(v17 + 16) = v215;
          }
        }
      }

      else
      {
        if (v94 < v93)
        {
          v178 = *v47;
          v318 = *(v47 + 64);
          v248 = *(v47 + 32);
          v283 = *(v47 + 48);
          v213 = *(v47 + 16);
          *(v47 + 64) = *(v74 + 64);
          v95 = *(v74 + 48);
          *(v47 + 32) = *(v74 + 32);
          *(v47 + 48) = v95;
          v96 = *(v74 + 16);
          *v47 = *v74;
          *(v47 + 16) = v96;
          goto LABEL_56;
        }

        v181 = *v47;
        v321 = *(v47 + 64);
        v251 = *(v47 + 32);
        v286 = *(v47 + 48);
        v216 = *(v47 + 16);
        *(v47 + 64) = *(v17 + 64);
        v101 = *(v17 + 48);
        *(v47 + 32) = *(v17 + 32);
        *(v47 + 48) = v101;
        v102 = *(v17 + 16);
        *v47 = *v17;
        *(v47 + 16) = v102;
        *v17 = v181;
        *(v17 + 64) = v321;
        *(v17 + 32) = v251;
        *(v17 + 48) = v286;
        *(v17 + 16) = v216;
        if (*v74 < *v17)
        {
          v178 = *v17;
          v318 = *(v17 + 64);
          v248 = *(v17 + 32);
          v283 = *(v17 + 48);
          v213 = *(v17 + 16);
          *(v17 + 64) = *(v74 + 64);
          v103 = *(v74 + 48);
          *(v17 + 32) = *(v74 + 32);
          *(v17 + 48) = v103;
          v104 = *(v74 + 16);
          *v17 = *v74;
          *(v17 + 16) = v104;
LABEL_56:
          *v74 = v178;
          *(v74 + 64) = v318;
          *(v74 + 32) = v248;
          *(v74 + 48) = v283;
          *(v74 + 16) = v213;
        }
      }

      v182 = *v11;
      v322 = *(v11 + 64);
      v252 = *(v11 + 32);
      v287 = *(v11 + 48);
      v217 = *(v11 + 16);
      v106 = *(v17 + 32);
      v105 = *(v17 + 48);
      v107 = *(v17 + 16);
      *(v11 + 64) = *(v17 + 64);
      *(v11 + 32) = v106;
      *(v11 + 48) = v105;
      *(v11 + 16) = v107;
      *v11 = *v17;
      *(v17 + 64) = v322;
      *(v17 + 32) = v252;
      *(v17 + 48) = v287;
      *(v17 + 16) = v217;
      *v17 = v182;
      goto LABEL_58;
    }

    v23 = *v11;
    if (*v11 >= *v17)
    {
      if (v18 < v23)
      {
        v164 = *v11;
        v304 = *(v11 + 64);
        v234 = *(v11 + 32);
        v269 = *(v11 + 48);
        v199 = *(v11 + 16);
        v34 = *(a2 - 40);
        v33 = *(a2 - 24);
        v35 = *(a2 - 56);
        *(v11 + 64) = *(a2 - 1);
        *(v11 + 32) = v34;
        *(v11 + 48) = v33;
        *(v11 + 16) = v35;
        *v11 = *v8;
        *(a2 - 56) = v199;
        *(a2 - 40) = v234;
        *(a2 - 24) = v269;
        *(a2 - 1) = v304;
        *v8 = v164;
        if (*v11 < *v17)
        {
          v165 = *v17;
          v305 = *(v17 + 64);
          v235 = *(v17 + 32);
          v270 = *(v17 + 48);
          v200 = *(v17 + 16);
          v37 = *(v11 + 32);
          v36 = *(v11 + 48);
          v38 = *(v11 + 16);
          *(v17 + 64) = *(v11 + 64);
          *(v17 + 32) = v37;
          *(v17 + 48) = v36;
          *(v17 + 16) = v38;
          *v17 = *v11;
          *(v11 + 64) = v305;
          *(v11 + 32) = v235;
          *(v11 + 48) = v270;
          *(v11 + 16) = v200;
          *v11 = v165;
        }
      }
    }

    else
    {
      if (v18 < v23)
      {
        v161 = *v17;
        v301 = *(v17 + 64);
        v231 = *(v17 + 32);
        v266 = *(v17 + 48);
        v196 = *(v17 + 16);
        v25 = *(a2 - 40);
        v24 = *(a2 - 24);
        v26 = *(a2 - 56);
        *(v17 + 64) = *(a2 - 1);
        *(v17 + 32) = v25;
        *(v17 + 48) = v24;
        *(v17 + 16) = v26;
        *v17 = *v8;
LABEL_37:
        *(a2 - 56) = v196;
        *(a2 - 40) = v231;
        *(a2 - 24) = v266;
        *(a2 - 1) = v301;
        *v8 = v161;
        goto LABEL_58;
      }

      v170 = *v17;
      v310 = *(v17 + 64);
      v240 = *(v17 + 32);
      v275 = *(v17 + 48);
      v205 = *(v17 + 16);
      v61 = *(v11 + 32);
      v60 = *(v11 + 48);
      v62 = *(v11 + 16);
      *(v17 + 64) = *(v11 + 64);
      *(v17 + 32) = v61;
      *(v17 + 48) = v60;
      *(v17 + 16) = v62;
      *v17 = *v11;
      *(v11 + 64) = v310;
      *(v11 + 32) = v240;
      *(v11 + 48) = v275;
      *(v11 + 16) = v205;
      *v11 = v170;
      if (*v8 < *v11)
      {
        v161 = *v11;
        v301 = *(v11 + 64);
        v231 = *(v11 + 32);
        v266 = *(v11 + 48);
        v196 = *(v11 + 16);
        v64 = *(a2 - 40);
        v63 = *(a2 - 24);
        v65 = *(a2 - 56);
        *(v11 + 64) = *(a2 - 1);
        *(v11 + 32) = v64;
        *(v11 + 48) = v63;
        *(v11 + 16) = v65;
        *v11 = *v8;
        goto LABEL_37;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && *(v11 - 72) >= *v11)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(v11, a2);
      v11 = result;
      goto LABEL_65;
    }

    v108 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(v11, a2);
    if ((v109 & 1) == 0)
    {
      goto LABEL_63;
    }

    v110 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(v11, v108);
    v11 = (v108 + 9);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>((v108 + 9), a2);
    if (result)
    {
      a4 = -v13;
      a2 = v108;
      if (v110)
      {
        goto LABEL_109;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v110)
    {
LABEL_63:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(v7, v108, a3, -v13, a5 & 1);
      v11 = (v108 + 9);
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v11 == a2)
  {
    goto LABEL_109;
  }

  v132 = *MEMORY[0x277D85DE8];

  return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,AOTImage *>(v11, a2, a2, a3);
}

__int128 *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,0>(__int128 *result, unint64_t *a2, unint64_t *a3, __int128 *a4, __int128 *a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v67 = *(a2 + 2);
      v78 = *(a2 + 3);
      v89 = a2[8];
      v45 = *a2;
      v56 = *(a2 + 1);
      *a2 = *a3;
      v11 = *(a3 + 2);
      v10 = *(a3 + 3);
      v12 = *(a3 + 1);
      a2[8] = a3[8];
      *(a2 + 2) = v11;
      *(a2 + 3) = v10;
      *(a2 + 1) = v12;
      a3[8] = v89;
      *(a3 + 2) = v67;
      *(a3 + 3) = v78;
      *a3 = v45;
      *(a3 + 1) = v56;
      if (*a2 < *result)
      {
        v68 = result[2];
        v79 = result[3];
        v90 = *(result + 8);
        v46 = *result;
        v57 = result[1];
        *result = *a2;
        v14 = *(a2 + 2);
        v13 = *(a2 + 3);
        v15 = *(a2 + 1);
        *(result + 8) = a2[8];
        result[2] = v14;
        result[3] = v13;
        result[1] = v15;
        a2[8] = v90;
        *(a2 + 2) = v68;
        *(a2 + 3) = v79;
        *a2 = v46;
        *(a2 + 1) = v57;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v66 = result[2];
      v77 = result[3];
      v88 = *(result + 8);
      v44 = *result;
      v55 = result[1];
      *result = *a3;
      v8 = *(a3 + 2);
      v7 = *(a3 + 3);
      v9 = *(a3 + 1);
      *(result + 8) = a3[8];
      result[2] = v8;
      result[3] = v7;
      result[1] = v9;
LABEL_9:
      a3[8] = v88;
      *(a3 + 2) = v66;
      *(a3 + 3) = v77;
      *a3 = v44;
      *(a3 + 1) = v55;
      goto LABEL_10;
    }

    v69 = result[2];
    v80 = result[3];
    v91 = *(result + 8);
    v47 = *result;
    v58 = result[1];
    *result = *a2;
    v17 = *(a2 + 2);
    v16 = *(a2 + 3);
    v18 = *(a2 + 1);
    *(result + 8) = a2[8];
    result[2] = v17;
    result[3] = v16;
    result[1] = v18;
    a2[8] = v91;
    *(a2 + 2) = v69;
    *(a2 + 3) = v80;
    *a2 = v47;
    *(a2 + 1) = v58;
    if (*a3 < *a2)
    {
      v66 = *(a2 + 2);
      v77 = *(a2 + 3);
      v88 = a2[8];
      v44 = *a2;
      v55 = *(a2 + 1);
      *a2 = *a3;
      v20 = *(a3 + 2);
      v19 = *(a3 + 3);
      v21 = *(a3 + 1);
      a2[8] = a3[8];
      *(a2 + 2) = v20;
      *(a2 + 3) = v19;
      *(a2 + 1) = v21;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v70 = *(a3 + 2);
    v81 = *(a3 + 3);
    v92 = a3[8];
    v48 = *a3;
    v59 = *(a3 + 1);
    *a3 = *a4;
    v23 = a4[2];
    v22 = a4[3];
    v24 = a4[1];
    a3[8] = *(a4 + 8);
    *(a3 + 2) = v23;
    *(a3 + 3) = v22;
    *(a3 + 1) = v24;
    *(a4 + 8) = v92;
    a4[2] = v70;
    a4[3] = v81;
    *a4 = v48;
    a4[1] = v59;
    if (*a3 < *a2)
    {
      v71 = *(a2 + 2);
      v82 = *(a2 + 3);
      v93 = a2[8];
      v49 = *a2;
      v60 = *(a2 + 1);
      *a2 = *a3;
      v26 = *(a3 + 2);
      v25 = *(a3 + 3);
      v27 = *(a3 + 1);
      a2[8] = a3[8];
      *(a2 + 2) = v26;
      *(a2 + 3) = v25;
      *(a2 + 1) = v27;
      a3[8] = v93;
      *(a3 + 2) = v71;
      *(a3 + 3) = v82;
      *a3 = v49;
      *(a3 + 1) = v60;
      if (*a2 < *result)
      {
        v72 = result[2];
        v83 = result[3];
        v94 = *(result + 8);
        v50 = *result;
        v61 = result[1];
        *result = *a2;
        v29 = *(a2 + 2);
        v28 = *(a2 + 3);
        v30 = *(a2 + 1);
        *(result + 8) = a2[8];
        result[2] = v29;
        result[3] = v28;
        result[1] = v30;
        a2[8] = v94;
        *(a2 + 2) = v72;
        *(a2 + 3) = v83;
        *a2 = v50;
        *(a2 + 1) = v61;
      }
    }
  }

  if (*a5 < *a4)
  {
    v73 = a4[2];
    v84 = a4[3];
    v95 = *(a4 + 8);
    v51 = *a4;
    v62 = a4[1];
    *a4 = *a5;
    v32 = a5[2];
    v31 = a5[3];
    v33 = a5[1];
    *(a4 + 8) = *(a5 + 8);
    a4[2] = v32;
    a4[3] = v31;
    a4[1] = v33;
    *(a5 + 8) = v95;
    a5[2] = v73;
    a5[3] = v84;
    *a5 = v51;
    a5[1] = v62;
    if (*a4 < *a3)
    {
      v74 = *(a3 + 2);
      v85 = *(a3 + 3);
      v96 = a3[8];
      v52 = *a3;
      v63 = *(a3 + 1);
      *a3 = *a4;
      v35 = a4[2];
      v34 = a4[3];
      v36 = a4[1];
      a3[8] = *(a4 + 8);
      *(a3 + 2) = v35;
      *(a3 + 3) = v34;
      *(a3 + 1) = v36;
      *(a4 + 8) = v96;
      a4[2] = v74;
      a4[3] = v85;
      *a4 = v52;
      a4[1] = v63;
      if (*a3 < *a2)
      {
        v75 = *(a2 + 2);
        v86 = *(a2 + 3);
        v97 = a2[8];
        v53 = *a2;
        v64 = *(a2 + 1);
        *a2 = *a3;
        v38 = *(a3 + 2);
        v37 = *(a3 + 3);
        v39 = *(a3 + 1);
        a2[8] = a3[8];
        *(a2 + 2) = v38;
        *(a2 + 3) = v37;
        *(a2 + 1) = v39;
        a3[8] = v97;
        *(a3 + 2) = v75;
        *(a3 + 3) = v86;
        *a3 = v53;
        *(a3 + 1) = v64;
        if (*a2 < *result)
        {
          v76 = result[2];
          v87 = result[3];
          v98 = *(result + 8);
          v54 = *result;
          v65 = result[1];
          *result = *a2;
          v41 = *(a2 + 2);
          v40 = *(a2 + 3);
          v42 = *(a2 + 1);
          *(result + 8) = a2[8];
          result[2] = v41;
          result[3] = v40;
          result[1] = v42;
          a2[8] = v98;
          *(a2 + 2) = v76;
          *(a2 + 3) = v87;
          *a2 = v54;
          *(a2 + 1) = v65;
        }
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v2 = result + 72;
    if (result + 72 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 72);
        if (v6 < *v4)
        {
          v13 = *(v4 + 80);
          v14 = *(v4 + 96);
          v15 = *(v4 + 112);
          v16 = *(v4 + 128);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7);
            *(v8 + 88) = *(result + v7 + 16);
            v10 = *(result + v7 + 48);
            *(v8 + 104) = *(result + v7 + 32);
            *(v8 + 120) = v10;
            *(v8 + 136) = *(result + v7 + 64);
            *(v8 + 72) = v9;
            if (!v7)
            {
              break;
            }

            v7 -= 72;
            if (v6 >= *(v8 - 72))
            {
              v11 = result + v7 + 72;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v6;
          *(v11 + 8) = v13;
          *(v11 + 24) = v14;
          *(v11 + 40) = v15;
          *(v11 + 56) = v16;
        }

        v2 = v5 + 72;
        v3 += 72;
        v4 = v5;
      }

      while (v5 + 72 != a2);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v18 = *(a1 + 1);
  v19 = *(a1 + 3);
  v3 = *(a1 + 5);
  v20 = v3;
  v21 = *(a1 + 7);
  if (*a1 >= *(a2 - 72))
  {
    v6 = (a1 + 9);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 = (v6 + 72);
    }

    while (v2 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = *(v4 + 9);
      v4 = (v4 + 72);
    }

    while (v2 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 72);
      a2 -= 72;
    }

    while (v2 < v7);
  }

  while (v4 < a2)
  {
    v22 = *v4;
    v26 = *(v4 + 8);
    v24 = v4[2];
    v25 = v4[3];
    v23 = v4[1];
    v9 = *(a2 + 32);
    v8 = *(a2 + 48);
    v10 = *(a2 + 16);
    *(v4 + 8) = *(a2 + 64);
    v4[2] = v9;
    v4[3] = v8;
    v4[1] = v10;
    *v4 = *a2;
    *(a2 + 64) = v26;
    *(a2 + 32) = v24;
    *(a2 + 48) = v25;
    *(a2 + 16) = v23;
    *a2 = v22;
    do
    {
      v11 = *(v4 + 9);
      v4 = (v4 + 72);
    }

    while (v2 >= v11);
    do
    {
      v12 = *(a2 - 72);
      a2 -= 72;
    }

    while (v2 < v12);
  }

  if ((v4 - 72) != a1)
  {
    *a1 = *(v4 - 72);
    v13 = *(v4 - 56);
    v14 = *(v4 - 40);
    v15 = *(v4 - 24);
    a1[8] = *(v4 - 1);
    *(a1 + 2) = v14;
    *(a1 + 3) = v15;
    *(a1 + 1) = v13;
  }

  *(v4 - 9) = v2;
  *(v4 - 2) = v20;
  *(v4 - 1) = v21;
  *(v4 - 4) = v18;
  *(v4 - 3) = v19;
  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v30 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v21 = *(a1 + 1);
  v22 = *(a1 + 3);
  v4 = *(a1 + 5);
  v23 = v4;
  v24 = *(a1 + 7);
  do
  {
    v5 = a1[v2 + 9];
    v2 += 9;
  }

  while (v5 < v3);
  v6 = &a1[v2];
  if (v2 == 9)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 72);
      a2 -= 72;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 72);
      a2 -= 72;
    }

    while (v7 >= v3);
  }

  v9 = &a1[v2];
  if (v6 < a2)
  {
    v10 = a2;
    do
    {
      v27 = *(v9 + 2);
      v28 = *(v9 + 3);
      v29 = v9[8];
      v25 = *v9;
      v26 = *(v9 + 1);
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 16);
      v9[8] = *(v10 + 64);
      *(v9 + 2) = v12;
      *(v9 + 3) = v11;
      *(v9 + 1) = v13;
      *v9 = *v10;
      *v10 = v25;
      *(v10 + 64) = v29;
      *(v10 + 32) = v27;
      *(v10 + 48) = v28;
      *(v10 + 16) = v26;
      do
      {
        v14 = v9[9];
        v9 += 9;
      }

      while (v14 < v3);
      do
      {
        v15 = *(v10 - 72);
        v10 -= 72;
      }

      while (v15 >= v3);
    }

    while (v9 < v10);
  }

  if (v9 - 9 != a1)
  {
    *a1 = *(v9 - 9);
    v16 = *(v9 - 7);
    v17 = *(v9 - 5);
    v18 = *(v9 - 3);
    a1[8] = *(v9 - 1);
    *(a1 + 2) = v17;
    *(a1 + 3) = v18;
    *(a1 + 1) = v16;
  }

  *(v9 - 9) = v3;
  *(v9 - 2) = v23;
  *(v9 - 1) = v24;
  *(v9 - 4) = v21;
  *(v9 - 3) = v22;
  v19 = *MEMORY[0x277D85DE8];
  return v9 - 9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(uint64_t a1, __int128 *a2)
{
  v143 = *MEMORY[0x277D85DE8];
  v2 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1 + 72;
      v6 = *(a1 + 72);
      v8 = *(a2 - 9);
      v3 = a2 - 72;
      v7 = v8;
      if (v6 < *a1)
      {
        if (v7 < v6)
        {
LABEL_12:
          v100 = *(a1 + 32);
          v114 = *(a1 + 48);
          v129 = *(a1 + 64);
          v70 = *a1;
          v85 = *(a1 + 16);
          *a1 = *v3;
          v10 = *(v3 + 32);
          v9 = *(v3 + 48);
          v11 = *(v3 + 16);
          *(a1 + 64) = *(v3 + 64);
          *(a1 + 32) = v10;
          *(a1 + 48) = v9;
          *(a1 + 16) = v11;
LABEL_13:
          *(v3 + 64) = v129;
          *(v3 + 32) = v100;
          *(v3 + 48) = v114;
          result = 1;
          *v3 = v70;
          *(v3 + 16) = v85;
          goto LABEL_53;
        }

        v108 = *(a1 + 32);
        v122 = *(a1 + 48);
        v137 = *(a1 + 64);
        v78 = *a1;
        v93 = *(a1 + 16);
        v38 = *(a1 + 120);
        *(a1 + 32) = *(a1 + 104);
        *(a1 + 48) = v38;
        *(a1 + 64) = *(a1 + 136);
        v39 = *(a1 + 88);
        *a1 = *v5;
        *(a1 + 16) = v39;
        *(a1 + 136) = v137;
        *(a1 + 104) = v108;
        *(a1 + 120) = v122;
        *v5 = v78;
        *(a1 + 88) = v93;
        if (*v3 < *(a1 + 72))
        {
          v100 = *(a1 + 104);
          v114 = *(a1 + 120);
          v129 = *(a1 + 136);
          v70 = *v5;
          v85 = *(a1 + 88);
          *v5 = *v3;
          v41 = *(v3 + 32);
          v40 = *(v3 + 48);
          v42 = *(v3 + 16);
          *(a1 + 136) = *(v3 + 64);
          *(a1 + 104) = v41;
          *(a1 + 120) = v40;
          *(a1 + 88) = v42;
          goto LABEL_13;
        }

        goto LABEL_52;
      }

      if (v7 >= v6)
      {
        goto LABEL_52;
      }

      v103 = *(a1 + 104);
      v117 = *(a1 + 120);
      v132 = *(a1 + 136);
      v73 = *v5;
      v88 = *(a1 + 88);
      *v5 = *v3;
      v28 = *(v3 + 32);
      v27 = *(v3 + 48);
      v29 = *(v3 + 16);
      *(a1 + 136) = *(v3 + 64);
      *(a1 + 104) = v28;
      *(a1 + 120) = v27;
      *(a1 + 88) = v29;
      *(v3 + 64) = v132;
      *(v3 + 32) = v103;
      *(v3 + 48) = v117;
      *v3 = v73;
      *(v3 + 16) = v88;
LABEL_50:
      if (*(a1 + 72) < *a1)
      {
        v113 = *(a1 + 32);
        v128 = *(a1 + 48);
        v142 = *(a1 + 64);
        v84 = *a1;
        v99 = *(a1 + 16);
        v67 = *(v5 + 48);
        *(a1 + 32) = *(v5 + 32);
        *(a1 + 48) = v67;
        *(a1 + 64) = *(v5 + 64);
        v68 = *(v5 + 16);
        *a1 = *v5;
        *(a1 + 16) = v68;
        *(v5 + 64) = v142;
        *(v5 + 32) = v113;
        *(v5 + 48) = v128;
        result = 1;
        *v5 = v84;
        *(v5 + 16) = v99;
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,0>(a1, (a1 + 72), (a1 + 144), (a1 + 216), (a2 - 72));
LABEL_52:
      result = 1;
      goto LABEL_53;
    }

    v5 = a1 + 72;
    v20 = *(a1 + 72);
    v21 = (a1 + 144);
    v22 = *(a1 + 144);
    v23 = a2 - 9;
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v106 = *(a1 + 104);
        v120 = *(a1 + 120);
        v135 = *(a1 + 136);
        v76 = *v5;
        v91 = *(a1 + 88);
        v34 = *(a1 + 192);
        *(a1 + 104) = *(a1 + 176);
        *(a1 + 120) = v34;
        *(a1 + 136) = *(a1 + 208);
        v35 = *(a1 + 160);
        *v5 = *v21;
        *(a1 + 88) = v35;
        *(a1 + 208) = v135;
        *(a1 + 176) = v106;
        *(a1 + 192) = v120;
        *v21 = v76;
        *(a1 + 160) = v91;
        if (*v5 < v24)
        {
          v107 = *(a1 + 32);
          v121 = *(a1 + 48);
          v136 = *(a1 + 64);
          v77 = *a1;
          v92 = *(a1 + 16);
          v36 = *(a1 + 120);
          *(a1 + 32) = *(a1 + 104);
          *(a1 + 48) = v36;
          *(a1 + 64) = *(a1 + 136);
          v37 = *(a1 + 88);
          *a1 = *v5;
          *(a1 + 16) = v37;
          *(a1 + 136) = v136;
          *(a1 + 104) = v107;
          *(a1 + 120) = v121;
          *v5 = v77;
          *(a1 + 88) = v92;
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v110 = *(a1 + 32);
      v125 = *(a1 + 48);
      v139 = *(a1 + 64);
      v81 = *a1;
      v96 = *(a1 + 16);
      v58 = *(a1 + 120);
      *(a1 + 32) = *(a1 + 104);
      *(a1 + 48) = v58;
      *(a1 + 64) = *(a1 + 136);
      v59 = *(a1 + 88);
      *a1 = *v5;
      *(a1 + 16) = v59;
      *(a1 + 136) = v139;
      *(a1 + 104) = v110;
      *(a1 + 120) = v125;
      *v5 = v81;
      *(a1 + 88) = v96;
      if (v22 >= *(a1 + 72))
      {
        goto LABEL_47;
      }

      v102 = *(a1 + 104);
      v116 = *(a1 + 120);
      v131 = *(a1 + 136);
      v72 = *v5;
      v87 = *(a1 + 88);
      v60 = *(a1 + 192);
      *(a1 + 104) = *(a1 + 176);
      *(a1 + 120) = v60;
      *(a1 + 136) = *(a1 + 208);
      v61 = *(a1 + 160);
      *v5 = *v21;
      *(a1 + 88) = v61;
    }

    else
    {
      v102 = *(a1 + 32);
      v116 = *(a1 + 48);
      v131 = *(a1 + 64);
      v72 = *a1;
      v87 = *(a1 + 16);
      v25 = *(a1 + 192);
      *(a1 + 32) = *(a1 + 176);
      *(a1 + 48) = v25;
      *(a1 + 64) = *(a1 + 208);
      v26 = *(a1 + 160);
      *a1 = *v21;
      *(a1 + 16) = v26;
    }

    *(a1 + 208) = v131;
    *(a1 + 176) = v102;
    *(a1 + 192) = v116;
    *v21 = v72;
    *(a1 + 160) = v87;
LABEL_47:
    if (*v23 >= *v21)
    {
      goto LABEL_52;
    }

    v111 = *(a1 + 176);
    v126 = *(a1 + 192);
    v140 = *(a1 + 208);
    v82 = *v21;
    v97 = *(a1 + 160);
    *v21 = *v23;
    v63 = *(a2 - 40);
    v62 = *(a2 - 24);
    v64 = *(a2 - 56);
    *(a1 + 208) = *(a2 - 1);
    *(a1 + 176) = v63;
    *(a1 + 192) = v62;
    *(a1 + 160) = v64;
    *(a2 - 1) = v140;
    *(a2 - 40) = v111;
    *(a2 - 24) = v126;
    *v23 = v82;
    *(a2 - 56) = v97;
    if (*v21 >= *v5)
    {
      goto LABEL_52;
    }

    v112 = *(a1 + 104);
    v127 = *(a1 + 120);
    v141 = *(a1 + 136);
    v83 = *v5;
    v98 = *(a1 + 88);
    v65 = *(a1 + 192);
    *(a1 + 104) = *(a1 + 176);
    *(a1 + 120) = v65;
    *(a1 + 136) = *(a1 + 208);
    v66 = *(a1 + 160);
    *v5 = *v21;
    *(a1 + 88) = v66;
    *(a1 + 208) = v141;
    *(a1 + 176) = v112;
    *(a1 + 192) = v127;
    *v21 = v83;
    *(a1 + 160) = v98;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    goto LABEL_52;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 9);
    v3 = a2 - 72;
    if (v4 >= *a1)
    {
      goto LABEL_52;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 144);
  v14 = *(a1 + 144);
  v15 = (a1 + 72);
  v16 = *(a1 + 72);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v104 = *(a1 + 104);
      v118 = *(a1 + 120);
      v133 = *(a1 + 136);
      v74 = *v15;
      v89 = *(a1 + 88);
      v30 = *(a1 + 192);
      *(a1 + 104) = *(a1 + 176);
      *(a1 + 120) = v30;
      *(a1 + 136) = *(a1 + 208);
      v31 = *(a1 + 160);
      *v15 = *v13;
      *(a1 + 88) = v31;
      *(a1 + 208) = v133;
      *(a1 + 176) = v104;
      *(a1 + 192) = v118;
      *v13 = v74;
      *(a1 + 160) = v89;
      if (*v15 < v17)
      {
        v105 = *(a1 + 32);
        v119 = *(a1 + 48);
        v134 = *(a1 + 64);
        v75 = *a1;
        v90 = *(a1 + 16);
        v32 = *(a1 + 120);
        *(a1 + 32) = *(a1 + 104);
        *(a1 + 48) = v32;
        *(a1 + 64) = *(a1 + 136);
        v33 = *(a1 + 88);
        *a1 = *v15;
        *(a1 + 16) = v33;
        *(a1 + 136) = v134;
        *(a1 + 104) = v105;
        *(a1 + 120) = v119;
        *v15 = v75;
        *(a1 + 88) = v90;
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      v109 = *(a1 + 32);
      v123 = *(a1 + 48);
      v138 = *(a1 + 64);
      v79 = *a1;
      v94 = *(a1 + 16);
      v43 = *(a1 + 120);
      *(a1 + 32) = *(a1 + 104);
      *(a1 + 48) = v43;
      *(a1 + 64) = *(a1 + 136);
      v44 = *(a1 + 88);
      *a1 = *v15;
      *(a1 + 16) = v44;
      *(a1 + 136) = v138;
      *(a1 + 104) = v109;
      *(a1 + 120) = v123;
      *v15 = v79;
      *(a1 + 88) = v94;
      if (v14 >= *(a1 + 72))
      {
        goto LABEL_33;
      }

      v101 = *(a1 + 104);
      v115 = *(a1 + 120);
      v130 = *(a1 + 136);
      v71 = *v15;
      v86 = *(a1 + 88);
      v45 = *(a1 + 192);
      *(a1 + 104) = *(a1 + 176);
      *(a1 + 120) = v45;
      *(a1 + 136) = *(a1 + 208);
      v46 = *(a1 + 160);
      *v15 = *v13;
      *(a1 + 88) = v46;
    }

    else
    {
      v101 = *(a1 + 32);
      v115 = *(a1 + 48);
      v130 = *(a1 + 64);
      v71 = *a1;
      v86 = *(a1 + 16);
      v18 = *(a1 + 192);
      *(a1 + 32) = *(a1 + 176);
      *(a1 + 48) = v18;
      *(a1 + 64) = *(a1 + 208);
      v19 = *(a1 + 160);
      *a1 = *v13;
      *(a1 + 16) = v19;
    }

    *(a1 + 208) = v130;
    *(a1 + 176) = v101;
    *(a1 + 192) = v115;
    *v13 = v71;
    *(a1 + 160) = v86;
  }

LABEL_33:
  v47 = (a1 + 216);
  if ((a1 + 216) == a2)
  {
    goto LABEL_52;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v13;
    v51 = *v47;
    if (*v47 < v50)
    {
      v80 = *(v47 + 8);
      v95 = *(v47 + 24);
      v52 = *(v47 + 40);
      v124 = *(v47 + 56);
      v53 = v48;
      while (1)
      {
        v54 = a1 + v53;
        v55 = *(a1 + v53 + 144);
        *(v54 + 232) = *(a1 + v53 + 160);
        v56 = *(a1 + v53 + 192);
        *(v54 + 248) = *(a1 + v53 + 176);
        *(a1 + v53 + 264) = v56;
        *(v54 + 280) = *(a1 + v53 + 208);
        *(v54 + 216) = v55;
        if (v53 == -144)
        {
          break;
        }

        v53 -= 72;
        if (v51 >= *(v54 + 72))
        {
          v57 = a1 + v53 + 216;
          goto LABEL_41;
        }
      }

      v57 = a1;
LABEL_41:
      *v57 = v51;
      *(v57 + 8) = v80;
      *(v57 + 24) = v95;
      *(v57 + 40) = v52;
      *(v57 + 56) = v124;
      if (++v49 == 8)
      {
        break;
      }
    }

    v13 = v47;
    v48 += 72;
    v47 = (v47 + 72);
    if (v47 == a2)
    {
      goto LABEL_52;
    }
  }

  result = (v47 + 72) == a2;
LABEL_53:
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,AOTImage *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 73)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 72 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(a1, a4, v9, v12);
        v12 -= 9;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          v38 = v13[2];
          v40 = v13[3];
          v42 = *(v13 + 8);
          v34 = *v13;
          v36 = v13[1];
          *v13 = *a1;
          v15 = *(a1 + 32);
          v14 = *(a1 + 48);
          v16 = *(a1 + 16);
          *(v13 + 8) = *(a1 + 64);
          v13[2] = v15;
          v13[3] = v14;
          v13[1] = v16;
          *(a1 + 64) = v42;
          *(a1 + 32) = v38;
          *(a1 + 48) = v40;
          *a1 = v34;
          *(a1 + 16) = v36;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 72);
      }

      while (v13 != a3);
    }

    if (v8 >= 73)
    {
      v17 = 0x8E38E38E38E38E39 * (v8 >> 3);
      do
      {
        v18 = 0;
        v39 = *(a1 + 32);
        v41 = *(a1 + 48);
        v43 = *(a1 + 64);
        v35 = *a1;
        v37 = *(a1 + 16);
        v19 = a1;
        do
        {
          v20 = v19 + 72 * v18;
          v21 = v20 + 72;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v24 = *(v20 + 144);
            v23 = v20 + 144;
            if (*(v23 - 72) >= v24)
            {
              v18 = v22;
            }

            else
            {
              v21 = v23;
            }
          }

          *v19 = *v21;
          v25 = *(v21 + 16);
          v26 = *(v21 + 32);
          v27 = *(v21 + 48);
          *(v19 + 64) = *(v21 + 64);
          *(v19 + 32) = v26;
          *(v19 + 48) = v27;
          *(v19 + 16) = v25;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 = (v6 - 72);
        if (v21 == v6)
        {
          *v21 = v35;
          *(v21 + 64) = v43;
          *(v21 + 32) = v39;
          *(v21 + 48) = v41;
          *(v21 + 16) = v37;
        }

        else
        {
          *v21 = *v6;
          v28 = v6[1];
          v29 = v6[2];
          v30 = v6[3];
          *(v21 + 64) = *(v6 + 8);
          *(v21 + 32) = v29;
          *(v21 + 48) = v30;
          *(v21 + 16) = v28;
          v6[2] = v39;
          v6[3] = v41;
          *(v6 + 8) = v43;
          *v6 = v35;
          v6[1] = v37;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(a1, v21 + 72, a4, 0x8E38E38E38E38E39 * ((v21 + 72 - a1) >> 3));
        }
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v32 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0x8E38E38E38E38E39 * ((a4 - result) >> 3)))
    {
      v5 = (0x1C71C71C71C71C72 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 72 * v5);
      if (0x1C71C71C71C71C72 * ((a4 - result) >> 3) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = v6[9];
        v8 = *v6 >= v7;
        if (*v6 > v7)
        {
          v7 = *v6;
        }

        if (!v8)
        {
          v6 += 9;
          v5 = 0x1C71C71C71C71C72 * ((a4 - result) >> 3) + 2;
        }
      }

      v9 = *a4;
      if (v7 >= *a4)
      {
        v19 = *(a4 + 1);
        v20 = *(a4 + 3);
        v10 = *(a4 + 5);
        v21 = v10;
        v22 = *(a4 + 7);
        do
        {
          v11 = a4;
          a4 = v6;
          *v11 = *v6;
          v12 = *(v6 + 1);
          v13 = *(v6 + 2);
          v14 = *(v6 + 3);
          v11[8] = v6[8];
          *(v11 + 2) = v13;
          *(v11 + 3) = v14;
          *(v11 + 1) = v12;
          if (v4 < v5)
          {
            break;
          }

          v15 = (2 * v5) | 1;
          v6 = (result + 72 * v15);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v16 = *v6;
            v5 = v15;
          }

          else
          {
            v16 = v6[9];
            v17 = *v6 >= v16;
            if (*v6 > v16)
            {
              v16 = *v6;
            }

            if (v17)
            {
              v5 = v15;
            }

            else
            {
              v6 += 9;
            }
          }
        }

        while (v16 >= v9);
        *a4 = v9;
        *(a4 + 7) = v22;
        *(a4 + 5) = v21;
        *(a4 + 3) = v20;
        *(a4 + 1) = v19;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 72 * (v4 >> 1);
    v7 = a2 - 72;
    v8 = *(a2 - 72);
    if (*v6 < v8)
    {
      v14 = *(a2 - 64);
      v15 = *(a2 - 48);
      v16 = *(a2 - 32);
      v17 = *(a2 - 16);
      do
      {
        v9 = v7;
        v7 = v6;
        *v9 = *v6;
        v10 = *(v6 + 16);
        v11 = *(v6 + 32);
        v12 = *(v6 + 48);
        *(v9 + 64) = *(v6 + 64);
        *(v9 + 32) = v11;
        *(v9 + 48) = v12;
        *(v9 + 16) = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 72 * v5;
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 8) = v14;
      *(v7 + 24) = v15;
      *(v7 + 40) = v16;
      *(v7 + 56) = v17;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::vector<AOTImage>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryImageInformation>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<_CSBinaryRelocationInformation>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<_CSBinaryRelocationInformation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<_CSBinaryRelocationInformation>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<_CSBinaryRelocationInformation>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *Process::findRangeEntryForAddress<std::vector<AOTImage>>(uint64_t a1, void *a2, unint64_t a3)
{
  result = a2[1];
  v4 = result;
  if (result != *a2)
  {
    v5 = 0x8E38E38E38E38E39 * ((result - *a2) >> 3);
    v4 = *a2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[9 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 9;
      v5 += ~(v5 >> 1);
      if (v9 > a3)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  if (v4 != *a2)
  {
    v10 = *(v4 - 9);
    if (v10 <= a3 && *(v4 - 8) + v10 > a3)
    {
      return v4 - 9;
    }
  }

  return result;
}

void std::vector<AOTImage>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AOTImage>>(a1, v13);
    }

    v14 = 72 * v10;
    *v14 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 32);
    v17 = *(a2 + 48);
    *(v14 + 64) = *(a2 + 64);
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    v9 = 72 * v10 + 72;
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
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = v4 + 72;
  }

  *(a1 + 8) = v9;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AOTImage>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ProcessLibrary>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ProcessLibrary>::__emplace_back_slow_path<ProcessLibrary>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ProcessLibrary>::__emplace_back_slow_path<ProcessLibrary>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ProcessLibrary>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  v8[1] = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = (32 * v2 + *a1 - v9);
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

void sub_240F8BA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ProcessLibrary>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ProcessLibrary>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProcessLibrary>,ProcessLibrary*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = *(v6 + 16);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 2;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 24);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

void **std::__split_buffer<ProcessLibrary>::~__split_buffer(void **a1)
{
  std::__split_buffer<ProcessLibrary>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ProcessLibrary>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ProcessLibrary *,ProcessLibrary *,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v8 = *(a4 + 24);
      *(a4 + 16) = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ___ZNK14ProcessLibrary14forEachSegmentIZN7Process50createTransientProcessSymbolicatorFromDescriptionsEvE3__0EEvT__block_invoke(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    Range = CSRegionGetRange();
    v4 = v3;
    Name = CSRegionGetName();
    if (strncmp(Name, "__PAGEZERO", 0xAuLL))
    {
      Range += a1[6];
    }

    *&v34 = Range;
    *(&v34 + 1) = Range + v4;
    v6 = strlen(Name);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v6;
    if (v6)
    {
      memmove(&__dst, Name, v6);
    }

    __dst.__r_.__value_.__s.__data_[v7] = 0;
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v9 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v10 = __dst.__r_.__value_.__r.__words[0];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size >= 8)
    {
      v12 = p_dst + size;
      v13 = p_dst;
      do
      {
        v14 = memchr(v13, 32, size - 7);
        if (!v14)
        {
          break;
        }

        if (*v14 == 0x544E454D47455320)
        {
          if (v14 != v12 && v14 - p_dst != -1)
          {
            std::string::erase(&__dst, v14 - p_dst, 8uLL);
            v9 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            v10 = __dst.__r_.__value_.__r.__words[0];
          }

          break;
        }

        v13 = (v14 + 1);
        size = v12 - v13;
      }

      while (v12 - v13 >= 8);
    }

    if (v9 >= 0)
    {
      v15 = &__dst;
    }

    else
    {
      v15 = v10;
    }

    strncpy(&v35, v15, 0x11uLL);
    v16 = a1[5];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    if (v17 >= v18)
    {
      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *v16) >> 3);
      v23 = v22 + 1;
      if (v22 + 1 > 0x666666666666666)
      {
        std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
      }

      v24 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *v16) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x333333333333333)
      {
        v25 = 0x666666666666666;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(v16, v25);
      }

      v26 = 40 * v22;
      v27 = v34;
      v28 = v35;
      *(v26 + 32) = v36;
      *v26 = v27;
      *(v26 + 16) = v28;
      v21 = 40 * v22 + 40;
      v29 = *(v16 + 8) - *v16;
      v30 = 40 * v22 - v29;
      memcpy((v26 - v29), *v16, v29);
      v31 = *v16;
      *v16 = v30;
      *(v16 + 8) = v21;
      *(v16 + 16) = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      v19 = v34;
      v20 = v35;
      *(v17 + 32) = v36;
      *v17 = v19;
      *(v17 + 16) = v20;
      v21 = v17 + 40;
    }

    *(v16 + 8) = v21;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_240F8BF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProcessLibrary::ProcessLibrary(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *result = a2;
  v3 = *(result + 16);
  if (v3)
  {
    *(result + 8) = *(v3 + 8);
  }

  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *result = a2;
  v3 = *(result + 16);
  if (v3)
  {
    *(result + 8) = *(v3 + 8);
  }

  return result;
}

SharedLibrary *ProcessLibrary::slide(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    v3 = *this;
    return (v3 - SharedLibrary::baseAddress(result));
  }

  return result;
}

SharedLibrary *ProcessLibrary::architecture(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    return SharedLibrary::architecture(result);
  }

  return result;
}

SharedLibrary *ProcessLibrary::path@<X0>(ProcessLibrary *this@<X0>, _BYTE *a2@<X8>)
{
  result = *(this + 2);
  if (result)
  {
    return SharedLibrary::path(result, a2);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

SharedLibrary *ProcessLibrary::addAddress(ProcessLibrary *this, uint64_t a2)
{
  result = *(this + 2);
  if (result)
  {
    v4 = *this;
    v5 = a2 - v4 + SharedLibrary::baseAddress(result);
    v6 = *(this + 2);

    return SharedLibrary::addAddress(v6, v5);
  }

  return result;
}

SharedLibrary *ProcessLibrary::uuid(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    return SharedLibrary::uuid(result);
  }

  return result;
}

SharedLibrary *ProcessLibrary::isInSharedCacheCheckAfterPostprocessingDone(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    SharedLibrary::csSymbolOwner(result);
    return CSSymbolOwnerIsDyldSharedCache();
  }

  return result;
}

SharedLibrary *ProcessLibrary::isPrimaryExecutableCheckAfterPostprocessingDone(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    SharedLibrary::csSymbolOwner(result);
    return CSSymbolOwnerIsAOut();
  }

  return result;
}

SharedLibrary *ProcessLibrary::segmentCountCheckAfterPostprocessingDone(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    SharedLibrary::csSymbolOwner(result);
    return CSSymbolOwnerForeachSegment();
  }

  return result;
}

double MergedLibrary::mergeWith(MergedLibrary *this, const LibraryDescription *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 6);
  LibraryDescription::libraryRange(a2);
  if ((v5 & 1) == 0 || (v4 <= 1 ? (v7 = v6 >= 2) : (v7 = 0), v7))
  {
    *(this + 2) = v6;
    *(this + 24) = 1;
  }

  v8 = *(this + 48);
  LibraryDescription::path(a2, &v10);
  if ((v8 & 1) == 0 && v11 == 1)
  {
    result = *&v10;
    *(this + 2) = v10;
    *(this + 48) = v11;
  }

  return result;
}

__n128 MergedLibrary::path@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[2];
  *a2 = result;
  a2[1].n128_u64[0] = this[3].n128_u64[0];
  return result;
}

BOOL MergedLibrary::operator==(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  result = *a1 == *a2 && *(a1 + 8) >> 64 == *(a2 + 8) >> 64;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Segment::initializeWithCSSegment(uint64_t *a1)
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

  v5 = strlen(v4);
  a1[2] = v4;
  a1[3] = v5;
  CSSegmentForeachSection();
  return CSRegionForeachSymbol();
}

void ___ZN7Segment23initializeWithCSSegmentE10_CSTypeRef_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = v1[5];
  v2 = v1[6];
  if (v3 >= v2)
  {
    v5 = v1[4];
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (v6 + 1 > 0x555555555555555)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v5) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Section>>((v1 + 4), v9);
    }

    v10 = Section::Section(48 * v6);
    v4 = v10 + 48;
    v11 = v1[4];
    v12 = v1[5] - v11;
    v13 = v10 - v12;
    memcpy((v10 - v12), v11, v12);
    v14 = v1[4];
    v1[4] = v13;
    v1[5] = v4;
    v1[6] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    Section::Section(v1[5]);
    v4 = v3 + 48;
    v1[5] = v3 + 48;
  }

  v1[5] = v4;
}

void sub_240F8C538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN7Segment23initializeWithCSSegmentE10_CSTypeRef_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = v3[8];
  if (v4 >= v3[9])
  {
    result = std::vector<Symbol>::__emplace_back_slow_path<_CSTypeRef &>(v3 + 7, v6);
  }

  else
  {
    Symbol::Symbol(v3[8], a2, a3);
    result = v4 + 128;
    v3[8] = v4 + 128;
  }

  v3[8] = result;
  return result;
}

uint64_t Segment::debug(Segment *this)
{
  printf("Segment @ 0x%llx - 0x%llx: ", *this, *(this + 1) + *this);
  if (*(this + 3))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = "<null>";
  }

  result = puts(v2);
  v4 = *(this + 4);
  v5 = *(this + 5);
  while (v4 != v5)
  {
    result = Section::debug(v4);
    v4 = (v4 + 48);
  }

  v7 = *(this + 7);
  v6 = *(this + 8);
  while (v7 != v6)
  {
    result = Symbol::debug(v7);
    v7 = (v7 + 128);
  }

  return result;
}

uint64_t Segment::Segment(uint64_t a1)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  Segment::initializeWithCSSegment(a1);
  return a1;
}

void sub_240F8C69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 56);
  std::vector<Symbol>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 32);
  if (v12)
  {
    *(v10 + 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Section>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<Symbol>::__emplace_back_slow_path<_CSTypeRef &>(uint64_t *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Symbol>>(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  v16 = (v2 << 7);
  Symbol::Symbol(v2 << 7, *a2, a2[1]);
  *&v16 = (v2 << 7) + 128;
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Symbol>,Symbol*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Symbol>::~__split_buffer(&v14);
  return v13;
}

void sub_240F8C820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Symbol>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Symbol>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Symbol>,Symbol*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      v6 += 128;
      a4 += 128;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<Symbol,0>(v5);
      v5 += 128;
    }
  }
}

void std::__destroy_at[abi:ne200100]<Symbol,0>(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 80);
  std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 160;
        v7 = v4 - 80;
        std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<Symbol>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    std::__destroy_at[abi:ne200100]<Symbol,0>(i - 128);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Symbol>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 128;
        std::__destroy_at[abi:ne200100]<Symbol,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t InlineSymbol::asmName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
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

uint64_t InlineSymbol::name@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 24))
  {
    v2 = *(this + 16);
  }

  else
  {
    v3 = *(this + 40);
    if (!v3)
    {
      *a2 = 0;
      goto LABEL_6;
    }

    v2 = *(this + 32);
  }

  *a2 = v2;
  LOBYTE(v3) = 1;
LABEL_6:
  a2[16] = v3;
  return this;
}

uint64_t InlineSymbol::initializeWithCSSymbolAndCSSourceInfo(uint64_t a1)
{
  *a1 = CSSymbolGetRange();
  *(a1 + 8) = v2;
  MangledName = CSSymbolGetMangledName();
  if (MangledName)
  {
    v4 = MangledName;
  }

  else
  {
    v4 = &unk_240FA3A2E;
  }

  v5 = strlen(v4);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  Name = CSSymbolGetName();
  if (Name)
  {
    v7 = Name;
  }

  else
  {
    v7 = &unk_240FA3A2E;
  }

  v8 = strlen(v7);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 64) = CSSymbolGetFlags();
  SourceInfo::SourceInfo(v11);
  v9 = v11[1];
  *(a1 + 104) = v11[0];
  *(a1 + 120) = v9;
  *(a1 + 136) = v11[2];
  *(a1 + 152) = v12;
  return CSSymbolForeachInlineRangeAtDepth();
}

uint64_t ___ZN12InlineSymbol37initializeWithCSSymbolAndCSSourceInfoE10_CSTypeRefS0__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = *(result + 32);
    v7 = 16 * a6 - 16;
    v8 = *(a4 + v7);
    v10 = *(a5 + v7);
    v11 = v8;
    v9 = *(v6 + 88);
    if (v9 >= *(v6 + 96))
    {
      result = std::vector<InlineSymbol>::__emplace_back_slow_path<_CSTypeRef &,_CSTypeRef &>(v6 + 80, &v11, &v10);
    }

    else
    {
      InlineSymbol::InlineSymbol(*(v6 + 88), v11, *(&v11 + 1), v10, *(&v10 + 1));
      result = v9 + 160;
      *(v6 + 88) = v9 + 160;
    }

    *(v6 + 88) = result;
  }

  return result;
}

uint64_t InlineSymbol::debug(InlineSymbol *this)
{
  printf("\t\tInline Symbol @ 0x%llx - 0x%llx: ", *this, *(this + 1) + *this);
  if (*(this + 3))
  {
    v2 = *(this + 2);
    if (!*(this + 5))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 5))
  {
    v2 = *(this + 4);
LABEL_6:
    v3 = *(this + 4);
    printf("%s | ", v2);
    v2 = v3;
LABEL_7:
    printf("%s | ", v2);
  }

  putchar(10);
  result = SourceInfo::debug((this + 104));
  v6 = *(this + 10);
  v5 = *(this + 11);
  while (v6 != v5)
  {
    result = InlineSymbol::debug(v6);
    v6 = (v6 + 160);
  }

  return result;
}

uint64_t InlineSymbol::InlineSymbol(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  InlineSymbol::initializeWithCSSymbolAndCSSourceInfo(a1);
  return a1;
}

void sub_240F8CE38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<InlineSymbol>::__emplace_back_slow_path<_CSTypeRef &,_CSTypeRef &>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v4 = v3 + 1;
  if (v3 + 1 > 0x199999999999999)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v8 = 0x199999999999999;
  }

  else
  {
    v8 = v4;
  }

  v22 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<InlineSymbol>>(a1, v8);
  }

  v19 = 0;
  v20 = 160 * v3;
  v21 = 160 * v3;
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = a3[1];
  InlineSymbol::InlineSymbol(160 * v3);
  *&v21 = 160 * v3 + 160;
  v13 = a1[1];
  v14 = 160 * v3 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<InlineSymbol>,InlineSymbol*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<InlineSymbol>::~__split_buffer(&v19);
  return v18;
}

void sub_240F8CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<InlineSymbol>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InlineSymbol>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<InlineSymbol>,InlineSymbol*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v16 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  if (a2 == a3)
  {
    v15 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      v10 = *(v6 + 104);
      v11 = *(v6 + 120);
      v12 = *(v6 + 136);
      *(a4 + 152) = *(v6 + 152);
      *(a4 + 136) = v12;
      *(a4 + 120) = v11;
      *(a4 + 104) = v10;
      v6 += 160;
      a4 += 160;
    }

    while (v6 != a3);
    v17 = a4;
    v15 = 1;
    while (v5 != a3)
    {
      v18 = (v5 + 80);
      std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v18);
      v5 += 160;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>>::~__exception_guard_exceptions[abi:ne200100](v14);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 160;
      v4 = (v1 - 80);
      std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<InlineSymbol>::~__split_buffer(void **a1)
{
  std::__split_buffer<InlineSymbol>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<InlineSymbol>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    v4 = (i - 80);
    std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

__n128 DyldKdebugAOTImageDescription::consumeTracepointA(__n128 *a1, uint64_t a2)
{
  result = *(a2 + 8);
  *a1 = result;
  a1[1].n128_u64[0] = *(a2 + 24);
  return result;
}

void *DyldKdebugAOTImageDescription::consumeTracepointB(void *result, void *a2)
{
  result[3] = a2[1];
  result[4] = a2[2];
  result[5] = a2[3];
  result[6] = a2[4];
  return result;
}

uint64_t *KernelSymbolicator::kernelSymbolicatorPtr(KernelSymbolicator *this)
{
  if ((atomic_load_explicit(&qword_27E51E2D8, memory_order_acquire) & 1) == 0)
  {
    KernelSymbolicator::kernelSymbolicatorPtr();
  }

  if (atomic_load_explicit(&KernelSymbolicator::kernelSymbolicatorPtr(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&KernelSymbolicator::kernelSymbolicatorPtr(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<KernelSymbolicator::kernelSymbolicatorPtr(void)::$_0 &&>>);
  }

  return &_MergedGlobals;
}

uint64_t KernelSymbolicator::sharedKernelSymbolicator(KernelSymbolicator *this)
{
  KernelSymbolicator::kernelSymbolicatorPtr(this);
  if (!_MergedGlobals)
  {
    return 0;
  }

  result = *_MergedGlobals;
  v2 = *(_MergedGlobals + 8);
  return result;
}

uint64_t *std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>::reset[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>::~ScopeGuard(result);

    JUMPOUT(0x245CD5830);
  }

  return result;
}

uint64_t *ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>::~ScopeGuard(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((CSIsNull() & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    CSRelease();
  }

  return a1;
}

BOOL should_prewarm_symbolicators(void)
{
  if (should_prewarm_symbolicators(void)::onceToken != -1)
  {
    should_prewarm_symbolicators();
  }

  return (should_prewarm_symbolicators(void)::should_prewarm & 1) == 0;
}

uint64_t ___Z28should_prewarm_symbolicatorsv_block_invoke()
{
  v2 = 8;
  v3 = 0;
  result = sysctlbyname("hw.memsize_physical", &v3, &v2, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = HIDWORD(v3) == 0;
  }

  if (!v1)
  {
    should_prewarm_symbolicators(void)::should_prewarm = 1;
  }

  return result;
}

void ats_will_start_tracing(SharedCacheSymbolicators *a1)
{
  if (should_prewarm_symbolicators(void)::onceToken != -1)
  {
    should_prewarm_symbolicators();
  }

  if ((should_prewarm_symbolicators(void)::should_prewarm & 1) == 0)
  {
    v1 = SharedCacheSymbolicators::initializeSharedCacheSymbolicators(a1);

    KernelSymbolicator::initializeKernelSymbolicator(v1);
  }
}

SharedCacheSymbolicators *ats_configure_postprocessing_with_config(SharedCacheSymbolicators *result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!a2)
  {
    result = get_symbolication_session(0);
    if (!get_symbolication_session(ats_symbolication_config *)::session)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(a2 + 8) == 1)
  {
    ktrace_set_execnames_enabled();
  }

  result = get_symbolication_session(a2);
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    if (*(a2 + 8) == 1)
    {
LABEL_13:
      SymbolicationSession::setKtraceSession(get_symbolication_session(ats_symbolication_config *)::session, v3);
      v5 = get_symbolication_session(ats_symbolication_config *)::session;

      return SymbolicationSession::registerKtraceCallbacks(v5);
    }

LABEL_9:
    if (should_prewarm_symbolicators(void)::onceToken != -1)
    {
      should_prewarm_symbolicators();
    }

    if (should_prewarm_symbolicators(void)::should_prewarm == 1)
    {
      v4 = SharedCacheSymbolicators::initializeSharedCacheSymbolicators(result);
      KernelSymbolicator::initializeKernelSymbolicator(v4);
    }

    goto LABEL_13;
  }

  return result;
}

SymbolicationSession *ats_symbolication_enabled()
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {

    return SymbolicationSession::isConfiguredToSaveSymbols(result);
  }

  return result;
}

uint64_t *ats_configure_postprocessing_with_additional_address(int a1, unint64_t a2)
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {

    return SymbolicationSession::learnAddressForPid(result, a1, a2);
  }

  return result;
}

uint64_t get_symbolication_session(uint64_t a1)
{
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (!get_symbolication_session(ats_symbolication_config *)::session)
  {
    operator new();
  }

  if (a1)
  {

    return SymbolicationSession::updateConfig(result, a1);
  }

  return result;
}

uint64_t ats_postprocessing_complete(uint64_t a1)
{
  get_symbolication_session(0);
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    SymbolicationSession::writeSymbolDataToKtraceFile(get_symbolication_session(ats_symbolication_config *)::session, a1);
  }

  return destroy_symbolication_session();
}

uint64_t destroy_symbolication_session(void)
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    SymbolicationSession::~SymbolicationSession(get_symbolication_session(ats_symbolication_config *)::session);
    result = MEMORY[0x245CD5830]();
    get_symbolication_session(ats_symbolication_config *)::session = 0;
  }

  return result;
}

uint64_t ats_postprocessing_complete_write_processmaps()
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    SymbolicationSession::writeProcessMapsToKtraceFile(get_symbolication_session(ats_symbolication_config *)::session);
    result = SymbolicationSession::isConfiguredToSaveSymbols(get_symbolication_session(ats_symbolication_config *)::session);
    if ((result & 1) == 0)
    {

      return destroy_symbolication_session();
    }
  }

  return result;
}

uint64_t ats_should_amend_with_file(uint64_t a1, uint64_t a2)
{
  get_symbolication_session(a2);
  v2 = get_symbolication_session(ats_symbolication_config *)::session;
  if (!get_symbolication_session(ats_symbolication_config *)::session)
  {
    return 1;
  }

  return SymbolicationSession::extractSymbolicationChunksFromFile(v2);
}

uint64_t DyldKdebugSharedCacheDescription::consumeTracepointA(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 8);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  *(a1 + 16) = v4;
  DyldKdebugFilesystemInfo::setFsid((a1 + 40), v3);
  result = SharedCacheDescription::baseAddressForSharedCacheWithUUID(a1, *a1, *(a1 + 8));
  *(a1 + 24) = result;
  *(a1 + 32) = v6;
  return result;
}

int32x4_t DyldKdebugSharedCacheDescription::consumeTracepoint32A(int32x4_t *a1, uint64_t a2)
{
  result = vuzp1q_s32(*(a2 + 8), *(a2 + 24));
  *a1 = result;
  return result;
}

uint64_t DyldKdebugSharedCacheDescription::consumeTracepoint32B(uint64_t a1, void *a2)
{
  v4 = a2[2];
  *(a1 + 16) = a2[1];
  DyldKdebugFilesystemInfo::setFsid((a1 + 40), v4 | (a2[3] << 32));
  v5 = a2[4];

  return DyldKdebugFilesystemInfo::setFsobjId(a1 + 40, v5);
}

uint64_t DyldKdebugSharedCacheDescription::consumeTracepoint32C(uint64_t a1, uint64_t a2)
{
  v4 = DyldKdebugFilesystemInfo::fsobjId((a1 + 40));
  DyldKdebugFilesystemInfo::setFsid((a1 + 40), v4 | (*(a2 + 8) << 32));
  result = SharedCacheDescription::baseAddressForSharedCacheWithUUID(a1, *a1, *(a1 + 8));
  *(a1 + 24) = result;
  *(a1 + 32) = v6;
  return result;
}

void *DyldKdebugLibraryDescription::consumeTracepointA(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 8);
  LibraryDescription::setLocation(a1, *(a2 + 24));
  v4 = *(a2 + 32);

  return DyldKdebugFilesystemInfo::setFsid((a1 + 48), v4);
}

int32x4_t DyldKdebugLibraryDescription::consumeTracepoint32A(int32x4_t *a1, uint64_t a2)
{
  result = vuzp1q_s32(*(a2 + 8), *(a2 + 24));
  a1[1] = result;
  return result;
}

uint64_t DyldKdebugLibraryDescription::consumeTracepoint32B(void *a1, uint64_t *a2)
{
  LibraryDescription::setLocation(a1, a2[1]);
  DyldKdebugFilesystemInfo::setFsid(a1 + 6, a2[2] | (a2[3] << 32));
  v4 = a2[4];

  return DyldKdebugFilesystemInfo::setFsobjId((a1 + 6), v4);
}

uint64_t DyldKdebugLibraryDescription::consumeTracepoint32C(uint64_t a1, uint64_t a2)
{
  v3 = DyldKdebugFilesystemInfo::fsobjId((a1 + 48)) | (*(a2 + 8) << 32);

  return DyldKdebugFilesystemInfo::setFsobjId(a1 + 48, v3);
}

uint64_t Symbol::asmName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
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

uint64_t Symbol::name@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 24))
  {
    v2 = *(this + 16);
  }

  else
  {
    v3 = *(this + 40);
    if (!v3)
    {
      *a2 = 0;
      goto LABEL_6;
    }

    v2 = *(this + 32);
  }

  *a2 = v2;
  LOBYTE(v3) = 1;
LABEL_6:
  a2[16] = v3;
  return this;
}

uint64_t Symbol::initializeWithCSSymbol(uint64_t *a1)
{
  *a1 = CSSymbolGetRange();
  a1[1] = v2;
  MangledName = CSSymbolGetMangledName();
  if (MangledName)
  {
    v4 = MangledName;
  }

  else
  {
    v4 = &unk_240FA3A2E;
  }

  v5 = strlen(v4);
  a1[4] = v4;
  a1[5] = v5;
  Name = CSSymbolGetName();
  if (Name)
  {
    v7 = Name;
  }

  else
  {
    v7 = &unk_240FA3A2E;
  }

  v8 = strlen(v7);
  a1[2] = v7;
  a1[3] = v8;
  a1[8] = CSSymbolGetFlags();
  CSSymbolForeachSourceInfo();
  return CSSymbolForeachInlineRangeAtDepth();
}

void ___ZN6Symbol22initializeWithCSSymbolE10_CSTypeRef_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = v1[14];
  v2 = v1[15];
  if (v3 >= v2)
  {
    v5 = v1[13];
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v5) >> 3);
    if ((v6 + 1) > 0x492492492492492)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v5) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SourceInfo>>((v1 + 13), v9);
    }

    v10 = SourceInfo::SourceInfo((56 * v6));
    v4 = v10 + 56;
    v11 = v1[13];
    v12 = v1[14] - v11;
    v13 = v10 - v12;
    memcpy(v10 - v12, v11, v12);
    v14 = v1[13];
    v1[13] = v13;
    v1[14] = v4;
    v1[15] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    SourceInfo::SourceInfo(v1[14]);
    v4 = (v3 + 56);
    v1[14] = v3 + 56;
  }

  v1[14] = v4;
}

void sub_240F8DDB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6Symbol22initializeWithCSSymbolE10_CSTypeRef_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = *(result + 32);
    v7 = 16 * a6 - 16;
    v8 = *(a4 + v7);
    v10 = *(a5 + v7);
    v11 = v8;
    v9 = v6[11];
    if (v9 >= v6[12])
    {
      result = std::vector<InlineSymbol>::__emplace_back_slow_path<_CSTypeRef &,_CSTypeRef &>(v6 + 10, &v11, &v10);
    }

    else
    {
      InlineSymbol::InlineSymbol(v6[11], v11, *(&v11 + 1), v10, *(&v10 + 1));
      result = v9 + 160;
      v6[11] = v9 + 160;
    }

    v6[11] = result;
  }

  return result;
}

uint64_t Symbol::debug(Symbol *this)
{
  printf("\tSymbol @ 0x%llx - 0x%llx: ", *this, *(this + 1) + *this);
  if (*(this + 3))
  {
    v2 = *(this + 2);
    if (!*(this + 5))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 5))
  {
    v2 = *(this + 4);
LABEL_6:
    v3 = *(this + 4);
    printf("%s | ", v2);
    v2 = v3;
LABEL_7:
    printf("%s | ", v2);
  }

  result = putchar(10);
  v5 = *(this + 13);
  v6 = *(this + 14);
  while (v5 != v6)
  {
    result = SourceInfo::debug(v5);
    v5 = (v5 + 56);
  }

  v8 = *(this + 10);
  v7 = *(this + 11);
  while (v8 != v7)
  {
    result = InlineSymbol::debug(v8);
    v8 = (v8 + 160);
  }

  return result;
}

uint64_t Symbol::Symbol(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  Symbol::initializeWithCSSymbol(a1);
  return a1;
}

void sub_240F8DF80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 104);
  if (v4)
  {
    *(v2 + 112) = v4;
    operator delete(v4);
  }

  std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SourceInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void StackshotLibraryDescription::StackshotLibraryDescription(LibraryDescription *a1, uint64_t a2)
{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 8), *(a2 + 16));
}

{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 8), *(a2 + 16));
}

void StackshotLibraryDescription::StackshotLibraryDescription(LibraryDescription *a1, unsigned int *a2)
{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 1), *(a2 + 3));
}

{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 1), *(a2 + 3));
}

kcdata_item_t Stackshot::consumeTaskContainer(Stackshot *this, kcdata_iter a2)
{
  item = a2.item;
  v118 = *MEMORY[0x277D85DE8];
  if (a2.item->type != 19 || a2.item[1].type != 2307)
  {
    goto LABEL_139;
  }

  v3 = this;
  v4 = 0;
  flags = a2.item->flags;
  v106 = -1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v98 = -1;
  __p = 0;
  v101 = 0;
  v102 = 0;
  LOBYTE(v112) = 0;
  v115 = 0;
  LOBYTE(v108) = 0;
  v111 = 0;
  while (1)
  {
    v5 = (item + item->size);
    type = v5[1].type;
    item = v5 + 1;
    v6 = type;
    v8 = (type & 0xFFFFFFF0) == 0x20 ? 17 : v6;
    if (v8 <= 2308)
    {
      break;
    }

    if (v8 != 2309)
    {
      if (v8 == 2312)
      {
        size = item->size;
        if (size != 32 || (item->flags & 0x8F) != 0)
        {
          v16 = item->flags & 0xF;
          v17 = size >= v16;
          v18 = size - v16;
          if (!v17)
          {
            v18 = 0;
          }

          if (v18 >= 0x20)
          {
            if (v115 == 1)
            {
              v115 = 0;
            }

            StackshotSharedCacheDescription::StackshotSharedCacheDescription(&v112, &item[1]);
            v115 = 1;
            *uu = SharedCacheDescription::uuid(v19);
            v117 = v20;
            p_Address = uu;
            v21 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(v3 + 20, uu);
            Address = SharedCacheDescription::loadAddress(&v112);
            p_Address = &Address;
            v22 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v21 + 4, &Address);
            v23 = v114;
            v24 = v113;
            *(v22 + 3) = v112;
            *(v22 + 5) = v24;
            v22[7] = v23;
          }
        }
      }

      else if (v8 == 2351)
      {
        if (v111 == 1)
        {
          v111 = 0;
        }

        StackshotAOTSharedCacheDescription::StackshotAOTSharedCacheDescription(&v108, &item[1]);
        v111 = 1;
        *uu = AOTSharedCacheDescription::aotUuid(&v108);
        v117 = v9;
        p_Address = uu;
        v10 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(v3 + 25, uu);
        Address = AOTSharedCacheDescription::x86LoadAddress(&v108);
        p_Address = &Address;
        v11 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v10 + 4, &Address);
        v12 = v110;
        v13 = v109;
        *(v11 + 3) = v108;
        *(v11 + 5) = v13;
        *(v11 + 7) = v12;
      }

      goto LABEL_79;
    }

    v106 = item[6].size;
    if ((v106 & 0x80000000) == 0)
    {
      v98 = *&item[1].type;
      if (v98 != -1)
      {
        v4 = item[1].flags;
        goto LABEL_79;
      }
    }

    v4 = 0;
    v106 = -1;
    v98 = -1;
LABEL_134:
    if (v8 == -242132755)
    {
      goto LABEL_135;
    }
  }

  if (v8 == 17)
  {
    v25 = item->flags;
    v26 = v25;
    if (!v25)
    {
      goto LABEL_78;
    }

    v96 = v4;
    v27 = &item[1];
    v28 = HIDWORD(v25);
    p_type = &item[1].type;
    v30 = &item[1];
    v97 = item;
    while (v28 != 48)
    {
      if (v28 == 57)
      {
        v32 = v101;
        if (v101 >= v102)
        {
          v35 = 0x6DB6DB6DB6DB6DB7 * ((v101 - __p) >> 3) + 1;
          if (v35 > 0x492492492492492)
          {
            std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v102 - __p) >> 3) > v35)
          {
            v35 = 0xDB6DB6DB6DB6DB6ELL * ((v102 - __p) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v102 - __p) >> 3)) >= 0x249249249249249)
          {
            v36 = 0x492492492492492;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAotImageDescription>>(&__p, v36);
          }

          StackshotAotImageDescription::StackshotAotImageDescription((8 * ((v101 - __p) >> 3)), v30);
          v33 = (v41 + 56);
          v42 = (v41 - (v101 - __p));
          memcpy(v42, __p, v101 - __p);
          v43 = __p;
          __p = v42;
          v101 = v33;
          v102 = 0;
          if (v43)
          {
            operator delete(v43);
          }

          item = v97;
        }

        else
        {
          StackshotAotImageDescription::StackshotAotImageDescription(v101, v30);
          v33 = (v32 + 56);
        }

        v101 = v33;
        goto LABEL_76;
      }

      if (v28 == 49)
      {
        v31 = v104;
        if (v104 < v105)
        {
          StackshotLibraryDescription::StackshotLibraryDescription(v104, v27);
          goto LABEL_42;
        }

        v39 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v103) >> 4) + 1;
        if (v39 > 0x555555555555555)
        {
          std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v105 - v103) >> 4) > v39)
        {
          v39 = 0x5555555555555556 * ((v105 - v103) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v105 - v103) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v40 = 0x555555555555555;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(&v103, v40);
        }

        StackshotLibraryDescription::StackshotLibraryDescription((16 * ((v104 - v103) >> 4)), v27);
LABEL_73:
        v34 = (v44 + 48);
        v45 = (v44 - (v104 - v103));
        memcpy(v45, v103, v104 - v103);
        v46 = v103;
        v103 = v45;
        v104 = v34;
        v105 = 0;
        if (v46)
        {
          operator delete(v46);
        }

        goto LABEL_75;
      }

LABEL_76:
      ++v30;
      p_type += 5;
      v27 += 24;
      if (!--v26)
      {
        v3 = this;
        v4 = v96;
LABEL_78:
        v8 = 17;
LABEL_79:
        if (v98 != -1 && (v106 & 0x80000000) == 0)
        {
          v48 = v103;
          v47 = v104;
          if (v103 != v104)
          {
            while (1)
            {
              *uu = LibraryDescription::uuid(v48);
              v117 = v49;
              if (uuid_is_null(uu))
              {
                break;
              }

              v48 = (v48 + 48);
              if (v48 == v47)
              {
                v48 = v47;
                goto LABEL_91;
              }
            }

            if (v48 != v47)
            {
              for (i = (v48 + 48); i != v47; i = (i + 48))
              {
                *uu = LibraryDescription::uuid(i);
                v117 = v51;
                if (!uuid_is_null(uu))
                {
                  v52 = *i;
                  v53 = *(i + 2);
                  *(v48 + 1) = *(i + 1);
                  *(v48 + 2) = v53;
                  *v48 = v52;
                  v48 = (v48 + 48);
                }
              }
            }

LABEL_91:
            if (v48 != v104)
            {
              v104 = v48;
            }

            std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__emplace_unique_key_args<int,int &,std::vector<StackshotLibraryDescription>>(v3, &v106);
            v104 = v103;
          }

          if (__p != v101)
          {
            std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__emplace_unique_key_args<int,int &,std::vector<StackshotLibraryDescription>>(v3 + 5, &v106);
            v101 = __p;
          }

          if ((v4 & 0x80000000) != 0 && v115 == 1)
          {
            *uu = &v106;
            v54 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v3 + 10, &v106);
            if ((v115 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v55 = v54;
            v56 = v54[4];
            v57 = v54[5];
            if (v56 >= v57)
            {
              v61 = v54[3];
              v62 = 0xCCCCCCCCCCCCCCCDLL * ((v56 - v61) >> 3);
              v63 = v62 + 1;
              if (v62 + 1 > 0x666666666666666)
              {
                std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
              }

              v64 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - v61) >> 3);
              if (2 * v64 > v63)
              {
                v63 = 2 * v64;
              }

              if (v64 >= 0x333333333333333)
              {
                v65 = 0x666666666666666;
              }

              else
              {
                v65 = v63;
              }

              if (v65)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>((v54 + 3), v65);
              }

              v66 = 40 * v62;
              v67 = v112;
              v68 = v113;
              *(v66 + 32) = v114;
              *v66 = v67;
              *(v66 + 16) = v68;
              v60 = 40 * v62 + 40;
              v69 = v54[3];
              v70 = v54[4] - v69;
              v71 = v66 - v70;
              memcpy((v66 - v70), v69, v70);
              v72 = v55[3];
              v55[3] = v71;
              v55[4] = v60;
              v55[5] = 0;
              if (v72)
              {
                operator delete(v72);
              }
            }

            else
            {
              v58 = v112;
              v59 = v113;
              *(v56 + 32) = v114;
              *v56 = v58;
              *(v56 + 16) = v59;
              v60 = v56 + 40;
            }

            v55[4] = v60;
            if (v115 == 1)
            {
              v115 = 0;
            }
          }

          if ((v4 & 0x10000000) != 0 && v111 == 1)
          {
            *uu = &v106;
            v73 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v3 + 15, &v106);
            if ((v111 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v74 = v73;
            v75 = v73[4];
            v76 = v73[5];
            if (v75 >= v76)
            {
              v80 = v73[3];
              v81 = 0xAAAAAAAAAAAAAAABLL * ((v75 - v80) >> 4);
              v82 = v81 + 1;
              if (v81 + 1 > 0x555555555555555)
              {
                std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
              }

              v83 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v80) >> 4);
              if (2 * v83 > v82)
              {
                v82 = 2 * v83;
              }

              if (v83 >= 0x2AAAAAAAAAAAAAALL)
              {
                v84 = 0x555555555555555;
              }

              else
              {
                v84 = v82;
              }

              if (v84)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAOTSharedCacheDescription>>((v73 + 3), v84);
              }

              v85 = 48 * v81;
              v86 = v108;
              v87 = v110;
              *(v85 + 16) = v109;
              *(v85 + 32) = v87;
              *v85 = v86;
              v79 = 48 * v81 + 48;
              v88 = v73[3];
              v89 = v73[4] - v88;
              v90 = v85 - v89;
              memcpy((v85 - v89), v88, v89);
              v91 = v74[3];
              v74[3] = v90;
              v74[4] = v79;
              v74[5] = 0;
              if (v91)
              {
                operator delete(v91);
              }
            }

            else
            {
              v77 = v108;
              v78 = v110;
              v75[1] = v109;
              v75[2] = v78;
              *v75 = v77;
              v79 = (v75 + 3);
            }

            v74[4] = v79;
            if (v111 == 1)
            {
              v111 = 0;
            }
          }

          if ((v4 & 0x40000000) != 0)
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v3 + 48, &v106);
          }

          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v3 + 43, &v106);
        }

        goto LABEL_134;
      }
    }

    v31 = v104;
    if (v104 >= v105)
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v103) >> 4) + 1;
      if (v37 > 0x555555555555555)
      {
        std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v105 - v103) >> 4) > v37)
      {
        v37 = 0x5555555555555556 * ((v105 - v103) >> 4);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v105 - v103) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v38 = 0x555555555555555;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(&v103, v38);
      }

      StackshotLibraryDescription::StackshotLibraryDescription((16 * ((v104 - v103) >> 4)), p_type);
      goto LABEL_73;
    }

    StackshotLibraryDescription::StackshotLibraryDescription(v104, p_type);
LABEL_42:
    v34 = (v31 + 48);
LABEL_75:
    v104 = v34;
    goto LABEL_76;
  }

  if (v8 != 20 || item->flags != flags)
  {
    goto LABEL_79;
  }

LABEL_135:
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

LABEL_139:
  v92 = *MEMORY[0x277D85DE8];
  return item;
}

void sub_240F8EA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void Stackshot::consumeStackshot(Stackshot *this)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(this + 30);
  v3 = *(this + 31);
  v4 = (this + 296);
  do
  {
    v5 = (v2 + v2->size);
    type = v5[1].type;
    v2 = v5 + 1;
    v6 = type;
    if ((type & 0xFFFFFFF0) == 0x20)
    {
      v8 = 17;
    }

    else
    {
      v8 = v6;
    }

    if (v8 == 2351)
    {
      StackshotAOTSharedCacheDescription::StackshotAOTSharedCacheDescription(&v48, &v2[1]);
      v51 = AOTSharedCacheDescription::aotUuid(&v48);
      v52 = v17;
      p_Address = &v51;
      v18 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(this + 25, &v51);
      Address = AOTSharedCacheDescription::aotLoadAddress(&v48);
      p_Address = &Address;
      v19 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v18 + 4, &Address);
      v20 = v50;
      v21 = v49;
      v22 = v48;
      *(v19 + 3) = v48;
      *(v19 + 5) = v21;
      *(v19 + 7) = v20;
      v23 = v49;
      v24 = v50;
      *v4 = v22;
      v4[1] = v23;
      v4[2] = v24;
    }

    else if (v8 == 2312)
    {
      StackshotSharedCacheDescription::StackshotSharedCacheDescription(&v48, &v2[1]);
      v51 = SharedCacheDescription::uuid(&v48);
      v52 = v10;
      p_Address = &v51;
      v11 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(this + 20, &v51);
      Address = SharedCacheDescription::loadAddress(&v48);
      p_Address = &Address;
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v11 + 4, &Address);
      v13 = v50;
      v14 = v49;
      v15 = v48;
      *(v12 + 3) = v48;
      *(v12 + 5) = v14;
      v12[7] = v13;
      v16 = v49;
      *(this + 16) = v15;
      *(this + 17) = v16;
      *(this + 36) = v50;
    }

    else if (v8 == 19 && v2[1].type == 2307)
    {
      v54.item = v2;
      v54.end = v3;
      v2 = Stackshot::consumeTaskContainer(this, v54);
      v3 = v9;
    }
  }

  while (v8 != -242132755);
  for (i = *(this + 50); i; i = *i)
  {
    LODWORD(v51) = *(i + 4);
    *&v48 = &v51;
    v26 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 10, &v51);
    v27 = v26;
    v28 = v26[4];
    v29 = v26[5];
    if (v28 >= v29)
    {
      v33 = v26[3];
      v34 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - v33) >> 3);
      v35 = v34 + 1;
      if (v34 + 1 > 0x666666666666666)
      {
        std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
      }

      v36 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v33) >> 3);
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x333333333333333)
      {
        v37 = 0x666666666666666;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>((v26 + 3), v37);
      }

      v38 = 40 * v34;
      v39 = *(this + 16);
      v40 = *(this + 17);
      *(v38 + 32) = *(this + 36);
      *v38 = v39;
      *(v38 + 16) = v40;
      v32 = 40 * v34 + 40;
      v41 = v26[3];
      v42 = v26[4] - v41;
      v43 = 40 * v34 - v42;
      memcpy((v38 - v42), v41, v42);
      v44 = v27[3];
      v27[3] = v43;
      v27[4] = v32;
      v27[5] = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      v30 = *(this + 16);
      v31 = *(this + 17);
      *(v28 + 32) = *(this + 36);
      *v28 = v30;
      *(v28 + 16) = v31;
      v32 = v28 + 40;
    }

    v27[4] = v32;
  }

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t *Stackshot::libraryDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotLibraryDescription>::__init_with_size[abi:ne200100]<StackshotLibraryDescription*,StackshotLibraryDescription*>(a3, result[3], result[4], 0xAAAAAAAAAAAAAAABLL * ((result[4] - result[3]) >> 4));
  }

  return result;
}

uint64_t *Stackshot::aotImageDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 5, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotAotImageDescription>::__init_with_size[abi:ne200100]<StackshotAotImageDescription*,StackshotAotImageDescription*>(a3, result[3], result[4], 0x6DB6DB6DB6DB6DB7 * ((result[4] - result[3]) >> 3));
  }

  return result;
}

uint64_t *Stackshot::sharedCacheDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 10, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotSharedCacheDescription*,StackshotSharedCacheDescription*>(a3, result[3], result[4], 0xCCCCCCCCCCCCCCCDLL * ((result[4] - result[3]) >> 3));
  }

  return result;
}

uint64_t *Stackshot::aotSharedCacheDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 15, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotAOTSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotAOTSharedCacheDescription*,StackshotAOTSharedCacheDescription*>(a3, result[3], result[4], 0xAAAAAAAAAAAAAAABLL * ((result[4] - result[3]) >> 4));
  }

  return result;
}

__n128 Stackshot::defaultAOTSharedCacheDescription@<Q0>(Stackshot *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 312);
  *a2 = *(this + 296);
  *(a2 + 16) = v2;
  result = *(this + 328);
  *(a2 + 32) = result;
  return result;
}

__n128 Stackshot::defaultSharedCacheDescription@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[16];
  v3 = this[17];
  *a2 = result;
  a2[1] = v3;
  a2[2].n128_u64[0] = this[18].n128_u64[0];
  return result;
}

void Stackshot::Stackshot(Stackshot *this, kcdata_iter a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  *(this + 15) = a2;
  SharedCacheDescription::SharedCacheDescription((this + 256));
  AOTSharedCacheDescription::AOTSharedCacheDescription((this + 296));
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 1065353216;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 104) = 1065353216;
}

void sub_240F8F124(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(v6);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAotImageDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAOTSharedCacheDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<StackshotLibraryDescription>::__init_with_size[abi:ne200100]<StackshotLibraryDescription*,StackshotLibraryDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotLibraryDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F2D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotLibraryDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<StackshotAotImageDescription>::__init_with_size[abi:ne200100]<StackshotAotImageDescription*,StackshotAotImageDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotAotImageDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotAotImageDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAotImageDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<StackshotSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotSharedCacheDescription*,StackshotSharedCacheDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotSharedCacheDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F464(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotSharedCacheDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<StackshotAOTSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotAOTSharedCacheDescription*,StackshotAOTSharedCacheDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotAOTSharedCacheDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F52C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotAOTSharedCacheDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAOTSharedCacheDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(void *a1, void *a2)
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

void sub_240F8F7F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>();
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

void sub_240F8FAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F8FB54(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>();
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

void sub_240F8FD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F8FE1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__emplace_unique_key_args<int,int &,std::vector<StackshotLibraryDescription>>(void *a1, int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(void *a1, int *a2)
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
    if (*&v2 <= v3)
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

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
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
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
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
}

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void SymbolicationSession::updateBestKnownLibraryDescriptions(SymbolicationSession *this, const LibraryDescription *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = LibraryDescription::uuid(a2);
  v7[1] = v4;
  v5 = std::__hash_table<std::__hash_value_type<UUID,MergedLibrary>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,MergedLibrary>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,MergedLibrary>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,MergedLibrary>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(this + 1675, v7);
  MergedLibrary::mergeWith((v5 + 4), a2);
  v6 = *MEMORY[0x277D85DE8];
}

void SymbolicationSession::learnPidLibrary(SymbolicationSession *a1, int a2, LibraryDescription *this, void *a4)
{
  std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(a4, this);

  SymbolicationSession::updateBestKnownLibraryDescriptions(a1, this);
}

uint64_t *SymbolicationSession::learnAddressForPid(SymbolicationSession *this, int a2, unint64_t a3)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 39, &v5);
  if (result)
  {
    result = result[3];
    if (result)
    {
      return Process::addAddress(result, a3);
    }
  }

  return result;
}

uint64_t *SymbolicationSession::processPointerForPid(SymbolicationSession *this, int a2)
{
  v3 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 39, &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

void *SymbolicationSession::sharedCacheWithDescription@<X0>(uint64_t a1@<X0>, SharedCacheDescription *a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::find<SharedCacheDescription>((a1 + 16), a2);
  if (!result)
  {
    std::allocate_shared[abi:ne200100]<SharedCache,std::allocator<SharedCache>,SharedCacheDescription &,std::shared_ptr<StringPool> &,0>();
  }

  v5 = result[8];
  *a3 = result[7];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_240F909F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN20SymbolicationSession26sharedCacheWithDescriptionE22SharedCacheDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SymbolicationSession::sharedLibraryWithCSSymbolOwner(*(a1 + 32), a2, a3, &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t SymbolicationSession::sharedLibraryWithCSSymbolOwner@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  result = CSSymbolOwnerGetCFUUIDBytes();
  if (result)
  {
    *v11 = *result;
    result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>((a1 + 56), v11);
    if (!result)
    {
      std::allocate_shared[abi:ne200100]<SharedLibrary,std::allocator<SharedLibrary>,_CSTypeRef &,std::shared_ptr<StringPool> &,0>();
    }

    v7 = *(result + 40);
    *a4 = *(result + 32);
    a4[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F90BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SymbolicationSession::sharedLibraryWithUUIDAndPath@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *uu = a2;
  v15 = a3;
  v12 = a4;
  v13 = a5;
  result = uuid_is_null(uu);
  if (result || !a5)
  {
    *a6 = 0;
    a6[1] = 0;
  }

  else
  {
    result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>((a1 + 56), uu);
    if (!result)
    {
      std::allocate_shared[abi:ne200100]<SharedLibrary,std::allocator<SharedLibrary>,UUID &,std::string_view &,std::shared_ptr<StringPool> &,0>();
    }

    v10 = result[5];
    *a6 = result[4];
    a6[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F90DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UUID::uuidString@<X0>(UUID *this@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = uuid_is_null(this);
  if (result)
  {
    v5 = 0;
    *a2 = 0;
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    uuid_unparse(this, v7);
    result = std::string::basic_string[abi:ne200100]<0>(a2, v7);
    v5 = 1;
  }

  a2[24] = v5;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F90EDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SymbolicationSession::parseStackshot(SymbolicationSession *this, kcdata_iter a2)
{
  v6 = a2;
  v3 = *(this + 34);
  if (v3 >= *(this + 35))
  {
    v4 = std::vector<Stackshot>::__emplace_back_slow_path<kcdata_iter &>(this + 33, &v6);
  }

  else
  {
    Stackshot::Stackshot(*(this + 34), a2);
    v4 = v3 + 424;
    *(this + 34) = v3 + 424;
  }

  *(this + 34) = v4;
  v5 = (v4 - 424);
  Stackshot::consumeStackshot((v4 - 424));
  SymbolicationSession::updateProcessView<Stackshot>(this, v5);
}

void SymbolicationSession::updateProcessView<Stackshot>(std::once_flag::_State_type *a1, Stackshot *this)
{
  if (*(a1[1674] + 8) != 1)
  {
    for (i = *(Stackshot::allPids(this) + 16); i; i = *i)
    {
      v5 = *(i + 4);
      if (std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 44, &v5))
      {
        SymbolicationSession::updateProcessWithDataProvider<Stackshot>(a1, v5, this);
      }

      else
      {
        SymbolicationSession::addNewProcessWithDataProvider<Stackshot>(a1, v5, this);
      }
    }
  }
}

uint64_t SymbolicationSession::parseDyldKdebugEntries(std::once_flag::_State_type *this, __n128 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    DyldKdebugHandler::consumeTracepoint((this + 52), v3);
    v3 += 6;
  }

  return SymbolicationSession::updateKdebugLibraryView(this);
}

uint64_t SymbolicationSession::updateKdebugLibraryView(std::once_flag::_State_type *this)
{
  result = DyldKdebugHandler::shouldResetLibraryState((this + 52));
  if ((result & 1) == 0)
  {
    SymbolicationSession::updateProcessView<DyldKdebugHandler>(this, (this + 52));

    return DyldKdebugHandler::toggleResetLibraryState((this + 52));
  }

  return result;
}

void SymbolicationSession::collectLiveLibraryDescriptionsForPid(std::once_flag::_State_type *a1, int a2)
{
  a1[1680] = KernelSymbolicator::sharedKernelSymbolicator(a1);
  a1[1681] = v4;
  v8 = a1;
  if (atomic_load_explicit(a1 + 17, memory_order_acquire) != -1)
  {
    v10 = &v8;
    v9 = &v10;
    std::__call_once(a1 + 17, &v9, std::__call_once_proxy[abi:ne200100]<std::tuple<SymbolicationSession::collectLiveLibraryDescriptionsForPid(int,std::unordered_set<LibraryDescription> &)::$_0 &&>>);
  }

  if (a2)
  {
    CSSymbolicatorCreateWithPid();
  }

  else
  {
    v5 = a1[1680];
    v6 = a1[1681];
    CSRetain();
  }

  if (CSIsNull())
  {
    ats_symbolication_log_init();
    v7 = ats_symbolication_log;
    if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_DEBUG))
    {
      SymbolicationSession::collectLiveLibraryDescriptionsForPid(a2, v7);
    }
  }

  else
  {
    CSSymbolicatorIsKernelSymbolicator();
    CSSymbolicatorForeachSymbolOwnerAtTime();
    CSRelease();
  }
}

void ___ZN20SymbolicationSession36collectLiveLibraryDescriptionsForPidEiRNSt3__113unordered_setI18LibraryDescriptionNS0_4hashIS2_EENS0_8equal_toIS2_EENS0_9allocatorIS2_EEEE_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((CSSymbolOwnerIsDyldSharedCache() & 1) == 0)
  {
    BaseAddress = CSSymbolOwnerGetBaseAddress();
    if (*(a1 + 52) == 1)
    {
      KernelLibraryBaseAddress = findKernelLibraryBaseAddress();
      if (v5)
      {
        BaseAddress = KernelLibraryBaseAddress;
      }
    }

    CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
    if (CFUUIDBytes)
    {
      LibraryDescription::LibraryDescription(v14, BaseAddress, *CFUUIDBytes, *(CFUUIDBytes + 8));
      Path = CSSymbolOwnerGetPath();
      if (Path)
      {
        v8 = *v2;
        std::string::basic_string[abi:ne200100]<0>(__p, Path);
        StringPool::cacheString(v8, __p, &v12);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        if (v13 == 1)
        {
          v15 = v12;
        }
      }

      std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(*(a1 + 40), v14);
      SymbolicationSession::updateBestKnownLibraryDescriptions(v2, v14);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_240F91354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t findKernelLibraryBaseAddress()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3802000000;
  v6 = __Block_byref_object_copy__40;
  v7 = __Block_byref_object_dispose__41;
  v8 = 0;
  v9 = 0;
  CSSymbolOwnerForeachSegment();
  v0 = v4[5];
  v1 = v4[6];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_240F9144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
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

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t SymbolicationSession::registerKtraceCallbacks(SymbolicationSession *this)
{
  result = *(this + 49);
  if (result)
  {
    if (*(this + 13384) & 1) != 0 || (ktrace_stackshot(), v3 = *(this + 49), result = ktrace_events_range(), (*(this + 13384)))
    {
      v4 = *(this + 1674);
    }

    else
    {
      v4 = *(this + 1674);
      if (*(v4 + 8) != 1)
      {
LABEL_8:
        *(this + 13384) = 1;
        return result;
      }
    }

    if (*(v4 + 24) == 1)
    {
      v5 = *(this + 49);
      ktrace_events_single();
      v6 = *(this + 49);
      ktrace_events_single();
      v7 = *(this + 49);
      ktrace_events_single();
      v8 = *(this + 49);
      ktrace_events_range();
      v9 = *(this + 49);
      ktrace_events_single();
      v10 = *(this + 49);
      result = ktrace_events_single();
    }

    goto LABEL_8;
  }

  return result;
}

void ___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke(uint64_t a1, kcdata_iter a2)
{
  v6 = a2;
  v2 = *(a1 + 32);
  v3 = v2[34];
  if (v3 >= v2[35])
  {
    v4 = std::vector<Stackshot>::__emplace_back_slow_path<kcdata_iter &>(v2 + 33, &v6);
  }

  else
  {
    Stackshot::Stackshot(v2[34], a2);
    v4 = v3 + 424;
    v2[34] = v3 + 424;
  }

  v2[34] = v4;
  v5 = (v4 - 424);
  Stackshot::consumeStackshot((v4 - 424));
  SymbolicationSession::updateProcessView<Stackshot>(v2, v5);
}

void ___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_2(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 32);
  if (*(*(v2 + 13392) + 8) != 1)
  {
    DyldKdebugHandler::consumeTracepoint((v2 + 416), a2);
  }
}

uint64_t ___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleKernelStack(v3, a2);
}

uint64_t SymbolicationSession::handleKernelStack(uint64_t a1, uint64_t a2)
{
  v4 = SymbolicationSession::handleKernelStack(trace_point const*)::kernelProc;
  if (!SymbolicationSession::handleKernelStack(trace_point const*)::kernelProc)
  {
    v7 = 0;
    v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>((a1 + 312), &v7);
    if (v5)
    {
      v4 = v5[3];
    }

    else
    {
      v4 = 0;
    }

    SymbolicationSession::handleKernelStack(trace_point const*)::kernelProc = v4;
  }

  return SymbolicationSession::handleKernelStack(a1, v4, a2);
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleInterrupt(v3, a2);
}

uint64_t *SymbolicationSession::handleInterrupt(uint64_t a1, uint64_t a2)
{
  result = SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc;
  if (SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc)
  {
    goto LABEL_2;
  }

  v5 = 0;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>((a1 + 312), &v5);
  if (!result)
  {
    SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc = 0;
    return result;
  }

  result = result[3];
  SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc = result;
  if (result)
  {
LABEL_2:
    if (*(*(a1 + 13392) + 24) == 1)
    {
      return Process::addAddress(result, *(a2 + 16));
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleUserStack(v3, a2);
}

uint64_t *SymbolicationSession::handleUserStack(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    v7 = *(a2 + 88);
    result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v7);
    if (result)
    {
      v3 = result[3];
      if (v3)
      {
        v4 = 0;
        v5 = a2 + 8;
        do
        {
          v6 = *(v5 + v4);
          if (v6)
          {
            result = Process::addAddress(v3, v6);
          }

          v4 += 8;
        }

        while (v4 != 32);
      }
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleRealFault(v3, a2);
}

uint64_t *SymbolicationSession::handleRealFault(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    HIDWORD(v2) = *(a2 + 48) - 20054024;
    LODWORD(v2) = HIDWORD(v2);
    if ((v2 >> 2) <= 3)
    {
      v3 = *(a2 + 8);
      v4 = *(a2 + 88);
      result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v4);
      if (result)
      {
        result = result[3];
        if (result)
        {
          return Process::addAddress(result, v3);
        }
      }
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleKPCHandler(v3, a2);
}

uint64_t *SymbolicationSession::handleKPCHandler(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    v2 = *(a2 + 24);
    v3 = *(a2 + 88);
    result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v3);
    if (result)
    {
      result = result[3];
      if (result)
      {
        return Process::addAddress(result, v2);
      }
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleDTraceProbe(v3, a2);
}

uint64_t *SymbolicationSession::handleDTraceProbe(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 24);
    result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v3);
    if (result)
    {
      result = result[3];
      if (result)
      {
        return Process::addAddress(result, v2);
      }
    }
  }

  return result;
}

void SymbolicationSession::updateProcessView<DyldKdebugHandler>(std::once_flag::_State_type *a1, DyldKdebugHandler *this)
{
  if (*(a1[1674] + 8) != 1)
  {
    for (i = *(DyldKdebugHandler::allPids(this) + 16); i; i = *i)
    {
      v5 = *(i + 4);
      if (std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 44, &v5))
      {
        SymbolicationSession::updateProcessWithDataProvider<DyldKdebugHandler>(a1, v5, this);
      }

      else
      {
        SymbolicationSession::addNewProcessWithDataProvider<DyldKdebugHandler>(a1, v5, this);
      }
    }
  }
}

uint64_t SymbolicationSession::handleKernelStack(uint64_t result, Process *this, uint64_t a3)
{
  if (this && *(*(result + 13392) + 24) == 1)
  {
    v4 = 0;
    v5 = a3 + 8;
    do
    {
      v6 = *(v5 + v4);
      if (v6)
      {
        result = Process::addAddress(this, v6);
      }

      v4 += 8;
    }

    while (v4 != 32);
  }

  return result;
}

uint64_t SymbolicationSession::handleInterrupt(uint64_t result, Process *this, uint64_t a3)
{
  if (this)
  {
    if (*(*(result + 13392) + 24) == 1)
    {
      return Process::addAddress(this, *(a3 + 16));
    }
  }

  return result;
}

void SymbolicationSession::addNeededAddresses(std::once_flag::_State_type *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((DyldKdebugHandler::shouldResetLibraryState((a1 + 52)) & 1) == 0)
  {
    SymbolicationSession::updateProcessView<DyldKdebugHandler>(a1, (a1 + 52));
    DyldKdebugHandler::toggleResetLibraryState((a1 + 52));
  }

  *buf = 0;
  v4 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 39, buf);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = *(v6 + 48);
      if (v8 > 620888075)
      {
        if (v8 > 721486252)
        {
          if ((v8 - 721486253) >= 2)
          {
            goto LABEL_32;
          }

          SymbolicationSession::handleDTraceProbe(a1, v6);
        }

        else
        {
          switch(v8)
          {
            case 620888076:
              if (v5 && *(a1[1674] + 24) == 1)
              {
                for (i = 8; i != 40; i += 8)
                {
                  v11 = *(v6 + i);
                  if (v11)
                  {
                    Process::addAddress(v5, v11);
                  }
                }
              }

              break;
            case 620888080:
              SymbolicationSession::handleUserStack(a1, v6);
              break;
            case 621150209:
              SymbolicationSession::handleKPCHandler(a1, v6);
              break;
            default:
              goto LABEL_32;
          }
        }
      }

      else if ((v8 - 20054024) > 0xC || ((1 << (v8 - 8)) & 0x1111) == 0)
      {
        if (v8 != 83886085)
        {
LABEL_32:
          ats_symbolication_log_init();
          v12 = ats_symbolication_log;
          if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v15 = v8;
            _os_log_error_impl(&dword_240F85000, v12, OS_LOG_TYPE_ERROR, "Unhandled tracepoint with debugid %u", buf, 8u);
          }

          goto LABEL_34;
        }

        if (v5 && *(a1[1674] + 24) == 1)
        {
          Process::addAddress(v5, *(v6 + 16));
        }
      }

      else
      {
        SymbolicationSession::handleRealFault(a1, v6);
      }

LABEL_34:
      v6 += 96;
    }

    while (v6 != v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}