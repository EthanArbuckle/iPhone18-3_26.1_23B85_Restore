void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
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

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
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

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1C0457D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C0457DF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

ANEDebugInfo::DebugInfoParser *ANEDebugInfo::DebugInfoParser::DebugInfoParser(ANEDebugInfo::DebugInfoParser *this, const unsigned __int8 *a2, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  ANEDebugInfo::DebugInfoInMem::DebugInfoInMem((this + 24));
  *(this + 24) = a2;
  *(this + 50) = a3;
  *(this + 26) = a2;
  *(this + 27) = &a2[a3];
  return this;
}

void sub_1C0458128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL ANEDebugInfo::DebugInfoParser::Parse(ANEDebugInfo::DebugInfoParser *this)
{
  v2 = ANEDebugInfo::DebugInfoParser::ParseCU(this);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseCU(ANEDebugInfo::DebugInfoParser *this)
{
  v3 = *(this + 24);
  if (v3 >= *(this + 27))
  {
    return 0;
  }

  v23[5] = v1;
  v23[6] = v2;
  if (*v3)
  {
    return 0;
  }

  *(this + 24) = v3 + 2;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2061))
  {
    goto LABEL_12;
  }

  *&v12[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  *(&v12[0] + 1) = v6;
  if (!HIDWORD(*&v12[0]))
  {
    goto LABEL_12;
  }

  Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v12);
  if (!Scalar)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseCU();
    }

    return 0;
  }

  if (*Scalar >= 2uLL)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ANEDebugInfo::DebugInfoParser::ParseCU();
      return 0;
    }
  }

  else
  {
LABEL_12:
    if (ANEDebugInfo::DebugInfoParser::ParseStringTable(this))
    {
      if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2049))
      {
        *&v12[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
        *(&v12[0] + 1) = v8;
        if (HIDWORD(*&v12[0]))
        {
          v9 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v12);
          if (!v9)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ANEDebugInfo::DebugInfoParser::ParseCU();
            }

            return 0;
          }

          *(this + 22) = *v9;
        }
      }

      if (ANEDebugInfo::DebugInfoParser::ParseProc(this))
      {
        ANEDebugInfo::DebugInfoParser::ParseHwConfigs(this);
        if (ANEDebugInfo::DebugInfoParser::ParseIdentString(this))
        {
          ANEDebugInfo::DebugInfoParser::ParseMaxContextLatencyThreshold(this);
          std::vector<ANEDebugInfo::DebugInfoInMem>::push_back[abi:ne200100](this, (this + 24));
          ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(v12);
          v10 = v12[1];
          *(this + 24) = v12[0];
          *(this + 40) = v10;
          *(this + 7) = v13;
          std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vdeallocate(this + 8);
          *(this + 4) = v14;
          *(this + 10) = v15;
          v15 = 0;
          v14 = 0uLL;
          v11 = v17;
          *(this + 88) = v16;
          *(this + 104) = v11;
          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__move_assign(this + 120, v18);
          std::vector<std::string>::__vdeallocate((this + 160));
          *(this + 10) = v19;
          *(this + 22) = v20;
          v20 = 0;
          v19 = 0uLL;
          *(this + 92) = v21;
          *(this + 186) = v22;
          v23[0] = &v19;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v23);
          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v18);
          v23[0] = &v14;
          std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](v23);
          return 1;
        }

        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ANEDebugInfo::DebugInfoParser::ParseCU();
          return 0;
        }
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ANEDebugInfo::DebugInfoParser::ParseCU();
          return 0;
        }
      }
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
        ANEDebugInfo::DebugInfoParser::ParseCU();
        return 0;
      }
    }
  }

  return result;
}

void ANEDebugInfo::DebugInfoParser::GetCompilationUnit(ANEDebugInfo::DebugInfoParser *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (0xCF3CF3CF3CF3CF3DLL * ((*(this + 1) - *this) >> 3) <= a2)
  {
    v9 = 0;
    ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(v5);
    std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem,0>(a3, &v9, v5);
    v10 = &v8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v7);
    v10 = &v6;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  else
  {
    LOBYTE(v5[0]) = 1;
    std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem&,0>(a3, v5, (v4 + 168 * a2));
  }
}

uint64_t std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem&,0>(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  *a1 = *a2;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 4);
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(a1 + 48, *(a3 + 5), *(a3 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 6) - *(a3 + 5)) >> 4));
  v9 = a3[4];
  *(v8 + 40) = a3[5];
  *(v8 + 24) = v9;
  std::unordered_map<std::string,unsigned int>::unordered_map(v8 + 56, (a3 + 6));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 144, *(a3 + 17), *(a3 + 18), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 18) - *(a3 + 17)) >> 3));
  v10 = *(a3 + 80);
  *(a1 + 170) = *(a3 + 162);
  *(a1 + 168) = v10;
  return a1;
}

void sub_1C0458574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v10 + 7));
  a10 = v10;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem,0>(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  *a1 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  *(a1 + 24) = a3[1];
  *(a1 + 8) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a3 + 40);
  *(a1 + 64) = *(a3 + 7);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  v7 = a3[4];
  *(a1 + 88) = a3[5];
  *(a1 + 72) = v7;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__hash_table(a1 + 104, a3 + 12);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a3 + 136);
  *(a1 + 160) = *(a3 + 19);
  *(a3 + 17) = 0;
  *(a3 + 18) = 0;
  *(a3 + 19) = 0;
  v8 = *(a3 + 80);
  *(a1 + 170) = *(a3 + 162);
  *(a1 + 168) = v8;
  return a1;
}

void ANEDebugInfo::DebugInfoParser::GetCompilationUnit(void *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  if (*a1 != v4)
  {
    v7 = *a1 + 96;
    while (1)
    {
      v8 = *(v7 - 96);
      v9 = *(v7 - 80);
      v25 = *(v7 - 64);
      v24[0] = v8;
      v24[1] = v9;
      memset(v26, 0, sizeof(v26));
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(v26, *(v7 - 56), *(v7 - 48), 0xAAAAAAAAAAAAAAABLL * ((*(v7 - 48) - *(v7 - 56)) >> 4));
      v10 = *(v7 - 16);
      v27 = *(v7 - 32);
      v28 = v10;
      std::unordered_map<std::string,unsigned int>::unordered_map(v29, v7);
      v11 = v7 - 96;
      memset(v30, 0, sizeof(v30));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v30, *(v7 + 40), *(v7 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 48) - *(v7 + 40)) >> 3));
      v12 = *(v7 + 64);
      v32 = *(v7 + 66);
      v31 = v12;
      if (*(a2 + 23) < 0)
      {
        if (*(a2 + 8))
        {
          goto LABEL_24;
        }
      }

      else if (*(a2 + 23))
      {
        goto LABEL_24;
      }

      ANEDebugInfo::DebugInfoInMem::GetString(v24, DWORD1(v27), __p);
      v13 = v23;
      if ((v23 & 0x80u) == 0)
      {
        v14 = v23;
      }

      else
      {
        v14 = __p[1];
      }

      v15 = *(a3 + 23);
      v16 = v15;
      if (v15 < 0)
      {
        v15 = a3[1];
      }

      if (v14 != v15)
      {
        break;
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if (v16 >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      v19 = memcmp(v17, v18, v14) == 0;
      if (v13 < 0)
      {
        goto LABEL_22;
      }

LABEL_23:
      if (v19)
      {
        LOBYTE(__p[0]) = 1;
        std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem&,0>(a4, __p, v24);
        __p[0] = v30;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v29);
        __p[0] = v26;
        goto LABEL_26;
      }

LABEL_24:
      __p[0] = v30;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v29);
      __p[0] = v26;
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](__p);
      v7 += 168;
      if (v11 + 168 == v4)
      {
        goto LABEL_25;
      }
    }

    v19 = 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_22:
    operator delete(__p[0]);
    goto LABEL_23;
  }

LABEL_25:
  v21 = 0;
  ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(v24);
  std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem,0>(a4, &v21, v24);
  __p[0] = v30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v29);
  __p[0] = v26;
LABEL_26:
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1C0458880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ANEDebugInfo::DebugInfoInMem::~DebugInfoInMem(va);
  _Unwind_Resume(a1);
}

BOOL ANEDebugInfo::DebugInfoParser::CheckToken(uint64_t a1, int a2)
{
  v4 = *(a1 + 192);
  v5 = *(a1 + 216);
  if (v4 >= v5)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  if (v4 + v4[1] <= v5)
  {
    return *v4 == a2;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
  if (result)
  {
    *v7 = 0;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Record size is bigger than the buffer size. ", v7, 2u);
    return 0;
  }

  return result;
}

unint64_t ANEDebugInfo::DebugInfoParser::MatchRecord(ANEDebugInfo::DebugInfoParser *this)
{
  v1 = *(this + 24);
  v2 = v1[1];
  *(this + 24) = v1 + v2;
  if (v1 + v2 <= *(this + 27))
  {
    v3 = *v1;
    v4 = (v2 - 8) << 32;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::MatchRecord();
    }

    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t *ANEDebugInfo::DebugInfoParser::Print(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    v3 = MEMORY[0x1E69E5310];
    do
    {
      this = ANEDebugInfo::DebugInfoInMem::Dump(v1, v3);
      v1 += 168;
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t ANEDebugInfo::DebugInfoParser::MatchTag(uint64_t a1, int a2)
{
  v2 = *(a1 + 192);
  if (v2 >= *(a1 + 216) || *v2 != a2)
  {
    return 0;
  }

  *(a1 + 192) = v2 + 2;
  return 1;
}

uint64_t ANEDebugInfo::Record::GetScalarVal<unsigned long long>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::Record::GetScalarVal<unsigned long long>();
  }

  return v1;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseStringTable(ANEDebugInfo::DebugInfoParser *this)
{
  v1 = *(this + 24);
  if (v1 >= *(this + 27) || *v1 != 8)
  {
    return 0;
  }

  *(this + 24) = v1 + 2;
  result = ANEDebugInfo::DebugInfoParser::CheckToken(this, 2051);
  if (!result)
  {
    return result;
  }

  v5 = ANEDebugInfo::DebugInfoParser::MatchRecord(this) >> 32;
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = 0;
  do
  {
    v8 = strlen(v6) + 1;
    if (v8 >= 2)
    {
      v9 = strlen(v6);
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      v12 = v9;
      if (v9)
      {
        memmove(&__dst, v6, v9);
      }

      *(&__dst + v10) = 0;
      ANEDebugInfo::DebugInfoInMem::AddString(this + 24, &__dst);
      if (v12 < 0)
      {
        operator delete(__dst);
      }
    }

    v7 += v8;
    v6 += v8;
  }

  while (v7 < v5);
  return 1;
}

void sub_1C0458BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ANEDebugInfo::DebugInfoParser::ParseProc(ANEDebugInfo::DebugInfoParser *this)
{
  v3 = *(this + 24);
  if (v3 >= *(this + 27))
  {
    return 0;
  }

  v12 = v1;
  v13 = v2;
  if (*v3 != 1)
  {
    return 0;
  }

  *(this + 24) = v3 + 2;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2048))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v11 = v5;
    if (HIDWORD(matched))
    {
      Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (!Scalar)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEDebugInfo::DebugInfoParser::ParseProc();
        }

        return 0;
      }

      *(this + 23) = *Scalar;
    }
  }

  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2056))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v11 = v7;
    if (HIDWORD(matched))
    {
      v8 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (v8)
      {
        *(this + 12) = *v8;
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseProc();
      }

      return 0;
    }
  }

LABEL_11:
  if (!ANEDebugInfo::DebugInfoParser::ParseGroup(this))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ANEDebugInfo::DebugInfoParser::ParseProc();
    return 0;
  }

    ;
  }

  return 1;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseHwConfigs(ANEDebugInfo::DebugInfoParser *this)
{
  v3 = *(this + 24);
  if (v3 >= *(this + 27))
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  result = 1;
  if (*v3 != 10)
  {
    return result;
  }

  *(this + 24) = v3 + 2;
  *(this + 184) = 1;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2057))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v13 = v6;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!Scalar)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseHwConfigs();
      }

      return 0;
    }

    *(this + 3) = *Scalar;
  }

  if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2058))
  {
LABEL_11:
    if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2059))
    {
      return 1;
    }

    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v13 = v10;
    if (HIDWORD(matched))
    {
      v11 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (v11)
      {
        *(this + 6) = *v11;
        return 1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseHwConfigs();
      }
    }

    return 0;
  }

  matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  v13 = v8;
  if (HIDWORD(matched))
  {
    v9 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (v9)
    {
      *(this + 4) = *v9;
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseHwConfigs();
    }
  }

  return 0;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseIdentString(ANEDebugInfo::DebugInfoParser *this)
{
  if (*(this + 24) >= *(this + 27))
  {
    return 0;
  }

  v7[4] = v1;
  v7[5] = v2;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2063))
  {
    return 1;
  }

  v7[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  v7[1] = v4;
  if (HIDWORD(v7[0]))
  {
    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v7);
    if (Scalar)
    {
      *(this + 28) = *Scalar;
      return 1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseIdentString();
    }
  }

  return 0;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseMaxContextLatencyThreshold(ANEDebugInfo::DebugInfoParser *this)
{
  if (*(this + 24) >= *(this + 27))
  {
    return 0;
  }

  v8[4] = v1;
  v8[5] = v2;
  v4 = ANEDebugInfo::DebugInfoParser::CheckToken(this, 2064);
  result = 1;
  if (!v4)
  {
    return result;
  }

  *(this + 185) = 1;
  v8[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  v8[1] = v6;
  if (HIDWORD(v8[0]))
  {
    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v8);
    if (Scalar)
    {
      *(this + 13) = *Scalar;
      return 1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseMaxContextLatencyThreshold();
    }
  }

  return 0;
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ANEDebugInfo::DebugInfoInMem>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem const&>(a1, a2);
  }

  else
  {
    std::vector<ANEDebugInfo::DebugInfoInMem>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem const&>(a1, a2);
    result = v3 + 168;
  }

  a1[1] = result;
  return result;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseGroup(ANEDebugInfo::DebugInfoParser *this)
{
  v1 = *(this + 24);
  if (v1 >= *(this + 27) || *v1 != 9)
  {
    return 0;
  }

  *(this + 24) = v1 + 2;
  *__p = 0u;
  v7 = 0u;
  *v5 = 0u;
  if (ANEDebugInfo::DebugInfoParser::ParseLayer(this, v5))
  {
      ;
    }

    if (ANEDebugInfo::DebugInfoParser::ParseTD(this, v5))
    {
        ;
      }

      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::push_back[abi:ne200100](this + 8, v5);
      v3 = 1;
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseGroup();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::DebugInfoParser::ParseGroup();
  }

  v3 = 0;
LABEL_15:
  if (__p[1])
  {
    *&v7 = __p[1];
    operator delete(__p[1]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  return v3;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseLayer(ANEDebugInfo::DebugInfoParser *this, ANEDebugInfo::DebugInfoInMem::Group *a2)
{
  v2 = *(this + 24);
  if (v2 >= *(this + 27) || *v2 != 3)
  {
    return 0;
  }

  *(this + 24) = v2 + 2;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2048))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v22 = v5;
    if (HIDWORD(matched))
    {
      Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (!Scalar)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEDebugInfo::DebugInfoParser::ParseLayer();
        }

        return 0;
      }

      LODWORD(v23) = *Scalar;
    }
  }

  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2060))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v22 = v7;
    if (!HIDWORD(matched))
    {
      goto LABEL_12;
    }

    v8 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (v8)
    {
      v24 = *v8;
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseLayer();
    }

    return 0;
  }

  v24 = 1065353216;
LABEL_12:
  if (!ANEDebugInfo::DebugInfoParser::ParseOperation(this, &v23))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ANEDebugInfo::DebugInfoParser::ParseLayer();
    return 0;
  }

  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v10 >= v9)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 2);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1555555555555555)
    {
      std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 2);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xAAAAAAAAAAAAAAALL)
    {
      v16 = 0x1555555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(a2, v16);
    }

    v17 = 12 * v13;
    *v17 = v23;
    *(v17 + 8) = v24;
    v11 = 12 * v13 + 12;
    v18 = *(a2 + 1) - *a2;
    v19 = 12 * v13 - v18;
    memcpy((v17 - v18), *a2, v18);
    v20 = *a2;
    *a2 = v19;
    *(a2 + 1) = v11;
    *(a2 + 2) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = v23;
    *(v10 + 8) = v24;
    v11 = v10 + 12;
  }

  *(a2 + 1) = v11;
  return 1;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseTD(ANEDebugInfo::DebugInfoParser *this, ANEDebugInfo::DebugInfoInMem::Group *a2)
{
  v2 = *(this + 24);
  if (v2 >= *(this + 27) || *v2 != 5)
  {
    return 0;
  }

  *(this + 24) = v2 + 2;
  v26[4] = 0;
  memset(&v26[8], 0, 64);
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2050))
  {
    v25[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v25[1] = v5;
    if (HIDWORD(v25[0]))
    {
      Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v25);
      if (Scalar)
      {
        *v26 = *Scalar;
        goto LABEL_7;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseTD();
      }

      return 0;
    }
  }

LABEL_7:
  if ((ANEDebugInfo::DebugInfoParser::ParseViolateMaxContextLatencyFlag(this, v26) & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ANEDebugInfo::DebugInfoParser::ParseTD();
    return 0;
  }

  ANEDebugInfo::DebugInfoParser::ParsePerfStats(this, v26);
  ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo(this, v26);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  if (v7 >= v8)
  {
    v13 = *(a2 + 3);
    v14 = 0x8E38E38E38E38E39 * ((v7 - v13) >> 3);
    v15 = v14 + 1;
    if (v14 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0x8E38E38E38E38E39 * ((v8 - v13) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x1C71C71C71C71C7)
    {
      v17 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::TD>>(a2 + 24, v17);
    }

    v18 = 72 * v14;
    v19 = *&v26[48];
    *(v18 + 32) = *&v26[32];
    *(v18 + 48) = v19;
    *(v18 + 64) = *&v26[64];
    v20 = *&v26[16];
    *v18 = *v26;
    *(v18 + 16) = v20;
    v11 = 72 * v14 + 72;
    v21 = *(a2 + 3);
    v22 = *(a2 + 4) - v21;
    v23 = 72 * v14 - v22;
    memcpy((v18 - v22), v21, v22);
    v24 = *(a2 + 3);
    *(a2 + 3) = v23;
    *(a2 + 4) = v11;
    *(a2 + 5) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v9 = *&v26[48];
    *(v7 + 32) = *&v26[32];
    *(v7 + 48) = v9;
    *(v7 + 64) = *&v26[64];
    v10 = *&v26[16];
    *v7 = *v26;
    *(v7 + 16) = v10;
    v11 = v7 + 72;
  }

  *(a2 + 4) = v11;
  return 1;
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::Group>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem::Group const&>(a1, a2);
  }

  else
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseOperation(ANEDebugInfo::DebugInfoParser *a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 >= *(a1 + 27))
  {
    return 0;
  }

  if (*v2 != 4)
  {
    return 0;
  }

  *(a1 + 24) = v2 + 2;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2048))
  {
    return 0;
  }

  v9[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v9[1] = v5;
  Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v9);
  v7 = Scalar != 0;
  if (Scalar)
  {
    *(a2 + 4) = *Scalar;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::DebugInfoParser::ParseOperation();
  }

  return v7;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseViolateMaxContextLatencyFlag(ANEDebugInfo::DebugInfoParser *a1, uint64_t a2)
{
  if (*(a1 + 24) >= *(a1 + 27))
  {
    return 0;
  }

  v9[4] = v2;
  v9[5] = v3;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2062))
  {
    return 1;
  }

  v9[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v9[1] = v6;
  if (HIDWORD(v9[0]))
  {
    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v9);
    if (Scalar)
    {
      *(a2 + 4) = *Scalar;
      return 1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseViolateMaxContextLatencyFlag();
    }
  }

  return 0;
}

BOOL ANEDebugInfo::DebugInfoParser::ParsePerfStats(uint64_t a1, void *a2)
{
  v4 = *(a1 + 192);
  if (v4 >= *(a1 + 216))
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  if (*v4 != 6)
  {
    return 0;
  }

  *(a1 + 192) = v4 + 2;
  *(a1 + 184) = 1;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2052))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
    v17 = v7;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!Scalar)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParsePerfStats();
      }

      return 0;
    }

    a2[1] = *Scalar;
  }

  if (ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2053))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
    v17 = v9;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    v10 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParsePerfStats();
      }

      return 0;
    }

    a2[2] = *v10;
  }

  if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2054))
  {
    goto LABEL_15;
  }

  matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v17 = v11;
  if (!HIDWORD(matched))
  {
    return 0;
  }

  v12 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParsePerfStats();
    }

    return 0;
  }

  a2[3] = *v12;
LABEL_15:
  result = ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2055);
  if (!result)
  {
    return result;
  }

  matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v17 = v14;
  if (!HIDWORD(matched))
  {
    return 0;
  }

  v15 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
  if (v15)
  {
    a2[4] = *v15;
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ANEDebugInfo::DebugInfoParser::ParsePerfStats();
    return 0;
  }

  return result;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  if (v4 >= *(a1 + 216))
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  result = 1;
  if (*v4 != 11)
  {
    return result;
  }

  *(a1 + 192) = v4 + 2;
  *(a1 + 186) = 1;
  v7 = (a2 + 44);
  v8 = 4;
  while (1)
  {
    if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2066))
    {
      goto LABEL_8;
    }

    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
    v14 = v9;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!Scalar)
    {
      break;
    }

    *(v7 - 1) = *Scalar;
LABEL_8:
    if (ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2067))
    {
      matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
      v14 = v11;
      if (!HIDWORD(matched))
      {
        return 0;
      }

      v12 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (!v12)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo();
        }

        return 0;
      }

      *v7 = *v12;
    }

    v7 += 2;
    if (!--v8)
    {
      return 1;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo();
  }

  return 0;
}

uint64_t ANEDebugInfo::DebugInfoParser::DebugPrint(ANEDebugInfo::DebugInfoParser *this)
{
  v1 = *(this + 26);
  v2 = *(this + 50);
  for (i = &v1[v2]; *(this + 24) < &v1[v2]; i = &v1[v2])
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v12 = matched;
    v13 = v6;
    if (matched >= 0xFF)
    {
      v7 = 255;
    }

    else
    {
      v7 = matched;
    }

    if (matched <= 9 && ((0x36Bu >> v7) & 1) != 0)
    {
      printf(off_1E8117268[v7]);
    }

    if (v12 <= 2049)
    {
      if (v12 == 2048)
      {
        printf("\tNAME");
      }

      else if (v12 == 2049)
      {
        printf("\tFILE_NAME");
      }
    }

    else
    {
      switch(v12)
      {
        case 0x802:
          Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&v12);
          if (Scalar)
          {
            v10 = *Scalar;
            printf("\tID = %d");
          }

          break;
        case 0x803:
          printf("\tDATA");
          break;
        case 0x80E:
          v8 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&v12);
          if (v8)
          {
            *v8;
            printf("\tViolatesMaxLatency = %s");
          }

          break;
      }
    }

    printf("  [sz=%d p=%p]\n", HIDWORD(v12), v13);
    v1 = *(this + 26);
    v2 = *(this + 50);
  }

  return printf("buf=%p buf_sz=%d buf_tail=%p\n", v1, v2, i);
}

void std::vector<ANEDebugInfo::DebugInfoInMem>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a2 + 96);
  v3 = (a2 + 40);
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__hash_table(uint64_t result, uint64_t *a2)
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

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C0459D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>>(a1, a2);
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>,ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(a4, *(a2 + v7), *(a2 + v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 8) - *(a2 + v7)) >> 2));
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>((a4 + 3), *(v8 + 24), *(v8 + 32), 0x8E38E38E38E38E39 * ((*(v8 + 32) - *(v8 + 24)) >> 3));
      a4 += 6;
      v7 += 48;
    }

    while (v8 + 48 != a3);
  }

  return a4;
}

void sub_1C0459EC8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__construct_node_hash<std::pair<std::string const,unsigned int> const&>();
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

void sub_1C045A1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C045A288(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
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

void sub_1C045A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 32) = *(a2 + 4);
  *v4 = v5;
  *(v4 + 16) = v6;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(v4 + 40, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 4));
  v7 = a2[5];
  *(v4 + 64) = a2[4];
  *(v4 + 80) = v7;
  std::unordered_map<std::string,unsigned int>::unordered_map(v4 + 96, (a2 + 6));
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 136, *(a2 + 17), *(a2 + 18), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 18) - *(a2 + 17)) >> 3));
  v9 = *(a2 + 80);
  *(v4 + 162) = *(a2 + 162);
  *(v4 + 160) = v9;
  *(a1 + 8) = v4 + 168;
  return result;
}

void sub_1C045A584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v3 + 96);
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>>(a1, v6);
  }

  v7 = 168 * v2;
  v19 = 0;
  v20 = v7;
  v21 = 168 * v2;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 16) = v9;
  v10 = 168 * v2;
  *(v10 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(v10 + 40, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 4));
  v11 = a2[5];
  *(v7 + 64) = a2[4];
  *(v7 + 80) = v11;
  std::unordered_map<std::string,unsigned int>::unordered_map(v7 + 96, (a2 + 6));
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v7 + 136, *(a2 + 17), *(a2 + 18), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 18) - *(a2 + 17)) >> 3));
  v12 = *(a2 + 80);
  *(v7 + 162) = *(a2 + 162);
  *(v7 + 160) = v12;
  *&v21 = v21 + 168;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::~__split_buffer(&v19);
  return v18;
}

void sub_1C045A768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v4 + 96);
  *(v5 - 40) = v3;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100]((v5 - 40));
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v8 = a2 + 96;
    do
    {
      v9 = *(v8 - 80);
      v10 = *(v8 - 64);
      *v4 = *(v8 - 96);
      *(v4 + 16) = v9;
      *(v4 + 32) = v10;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      *(v4 + 40) = *(v8 - 56);
      *(v4 + 56) = *(v8 - 40);
      *(v8 - 56) = 0;
      *(v8 - 48) = 0;
      *(v8 - 40) = 0;
      v11 = *(v8 - 16);
      *(v4 + 64) = *(v8 - 32);
      *(v4 + 80) = v11;
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__hash_table(v4 + 96, v8);
      *(v4 + 136) = 0;
      *(v4 + 144) = 0;
      *(v4 + 152) = 0;
      *(v4 + 136) = *(v8 + 40);
      *(v4 + 152) = *(v8 + 56);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      v12 = *(v8 + 64);
      *(v4 + 162) = *(v8 + 66);
      *(v4 + 160) = v12;
      v4 = v18 + 168;
      v18 += 168;
      v13 = v8 + 72;
      v8 += 168;
    }

    while (v13 != a3);
    v16 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(a1, v6);
      v6 += 168;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 168;
      std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(v5, v4 - 168);
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  result = std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>((v4 + 3), a2[3], a2[4], 0x8E38E38E38E38E39 * ((a2[4] - a2[3]) >> 3));
  *(a1 + 8) = v4 + 6;
  return result;
}

void sub_1C045AC80(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem::Group const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(v7, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(v7 + 24, a2[3], a2[4], 0x8E38E38E38E38E39 * ((a2[4] - a2[3]) >> 3));
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>,ANEDebugInfo::DebugInfoInMem::Group*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem::Group>::~__split_buffer(&v14);
  return v13;
}

void sub_1C045AE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  std::__split_buffer<ANEDebugInfo::DebugInfoInMem::Group>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>,ANEDebugInfo::DebugInfoInMem::Group*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(v5);
      v5 += 48;
    }
  }
}

uint64_t std::__split_buffer<ANEDebugInfo::DebugInfoInMem::Group>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t ZinIsOutsideBounds(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __CFADD__(a1, a2);
  v6 = a1 < a3 || a1 + a2 > a4;
  if (v4)
  {
    v6 = 1;
  }

  if (!a4)
  {
    v6 = 1;
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (a3 | a4)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

BOOL ZinIsStringOutsideBounds(char *__s1, unint64_t a2, unint64_t a3)
{
  if (!(a2 | a3))
  {
    return 0;
  }

  result = 1;
  if (a2)
  {
    if (a3)
    {
      v6 = a3 - __s1;
      if (a3 >= __s1)
      {
        v7 = strnlen(__s1, a3 - __s1);
        return __s1 < a2 || v7 >= v6;
      }
    }
  }

  return result;
}

uint64_t ZinIrCompilerParamsUtils::PerfTracerCategoryToString@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  GetStringToPerfTracerCategoryMap(v9);
  v4 = v10;
  if (v10)
  {
    while (1)
    {
      if (*(v4 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4[2], v4[3]);
      }

      else
      {
        __p = *(v4 + 2);
      }

      v8 = *(v4 + 10);
      if (v8 == a1)
      {
        break;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      a2[1].__r_.__value_.__s.__data_[0] = 1;
      if (v5 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a2 = __p;
      a2[1].__r_.__value_.__s.__data_[0] = 1;
    }
  }

  else
  {
LABEL_9:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }

  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v9);
}

void sub_1C045B0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

void GetStringToPerfTracerCategoryMap(uint64_t a1@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v4, "none");
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(v6, "l2");
  v7 = 1;
  std::string::basic_string[abi:ne200100]<0>(v8, "dma_read");
  v9 = 2;
  std::string::basic_string[abi:ne200100]<0>(v10, "dma_write");
  v11 = 3;
  std::string::basic_string[abi:ne200100]<0>(v12, "kernel_read");
  v13 = 4;
  std::string::basic_string[abi:ne200100]<0>(v14, "pe");
  v15 = 5;
  std::string::basic_string[abi:ne200100]<0>(v16, "ne_all");
  v17 = 6;
  std::string::basic_string[abi:ne200100]<0>(v18, "ne_0");
  v19 = 7;
  std::string::basic_string[abi:ne200100]<0>(v20, "ne_1");
  v21 = 8;
  std::string::basic_string[abi:ne200100]<0>(v22, "ne_2");
  v23 = 9;
  std::string::basic_string[abi:ne200100]<0>(v24, "ne_3");
  v25 = 10;
  std::string::basic_string[abi:ne200100]<0>(v26, "ne_4");
  v27 = 11;
  std::string::basic_string[abi:ne200100]<0>(v28, "ne_5");
  v29 = 12;
  std::string::basic_string[abi:ne200100]<0>(v30, "ne_6");
  v31 = 13;
  std::string::basic_string[abi:ne200100]<0>(v32, "ne_7");
  v33 = 14;
  std::string::basic_string[abi:ne200100]<0>(v34, "ne_8");
  v35 = 15;
  std::string::basic_string[abi:ne200100]<0>(v36, "ne_9");
  v37 = 16;
  std::string::basic_string[abi:ne200100]<0>(v38, "ne_10");
  v39 = 17;
  std::string::basic_string[abi:ne200100]<0>(v40, "ne_11");
  v41 = 18;
  std::string::basic_string[abi:ne200100]<0>(v42, "ne_12");
  v43 = 19;
  std::string::basic_string[abi:ne200100]<0>(v44, "ne_13");
  v45 = 20;
  std::string::basic_string[abi:ne200100]<0>(v46, "ne_14");
  v47 = 21;
  std::string::basic_string[abi:ne200100]<0>(v48, "ne_15");
  v49 = 22;
  std::unordered_map<std::string,PerfTracerCategory>::unordered_map(a1, v4, 23);
  v2 = 92;
  do
  {
    if (*(&v4[v2 - 1] - 1) < 0)
    {
      operator delete(v4[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
  if (*(a1 + 24) != 23)
  {
    ZinAssertImpl("Assertion: Invalid perf tracer category map.\n");
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t ZinIrCompilerParamsUtils::PerfTracerMetricToString@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  GetStringToPerfTracerMetricMap(v9);
  v4 = v10;
  if (v10)
  {
    while (1)
    {
      if (*(v4 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4[2], v4[3]);
      }

      else
      {
        __p = *(v4 + 2);
      }

      v8 = *(v4 + 10);
      if (v8 == a1)
      {
        break;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      a2[1].__r_.__value_.__s.__data_[0] = 1;
      if (v5 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a2 = __p;
      a2[1].__r_.__value_.__s.__data_[0] = 1;
    }
  }

  else
  {
LABEL_9:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }

  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v9);
}

void sub_1C045B62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

void GetStringToPerfTracerMetricMap(uint64_t a1@<X8>)
{
  v140 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v4, "none");
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(v6, "l2_cycle");
  v7 = 1;
  std::string::basic_string[abi:ne200100]<0>(v8, "l2_src1_read_active_cycle");
  v9 = 2;
  std::string::basic_string[abi:ne200100]<0>(v10, "l2_src1_read_idle_cycle");
  v11 = 3;
  std::string::basic_string[abi:ne200100]<0>(v12, "l2_src2_read_active_cycle");
  v13 = 4;
  std::string::basic_string[abi:ne200100]<0>(v14, "l2_src2_read_idle_cycle");
  v15 = 5;
  std::string::basic_string[abi:ne200100]<0>(v16, "l2_write_active_cycle");
  v17 = 6;
  std::string::basic_string[abi:ne200100]<0>(v18, "l2_write_idle_cycle");
  v19 = 7;
  std::string::basic_string[abi:ne200100]<0>(v20, "l2_read_conflict_cycle");
  v21 = 8;
  std::string::basic_string[abi:ne200100]<0>(v22, "l2_read_intra_conflict_cycle");
  v23 = 9;
  std::string::basic_string[abi:ne200100]<0>(v24, "l2_read_conflict_count");
  v25 = 10;
  std::string::basic_string[abi:ne200100]<0>(v26, "l2_read_intra_conflict_count");
  v27 = 11;
  std::string::basic_string[abi:ne200100]<0>(v28, "l2_write_conflict_cycle");
  v29 = 12;
  std::string::basic_string[abi:ne200100]<0>(v30, "l2_write_intra_conflict_cycle");
  v31 = 13;
  std::string::basic_string[abi:ne200100]<0>(v32, "l2_write_conflict_count");
  v33 = 14;
  std::string::basic_string[abi:ne200100]<0>(v34, "l2_write_intra_conflict_count");
  v35 = 15;
  std::string::basic_string[abi:ne200100]<0>(v36, "dma_src1_read_active_cycle");
  v37 = 16;
  std::string::basic_string[abi:ne200100]<0>(v38, "dma_src1_read_idle_cycle");
  v39 = 17;
  std::string::basic_string[abi:ne200100]<0>(v40, "dma_src1_read_conflict_cycle");
  v41 = 18;
  std::string::basic_string[abi:ne200100]<0>(v42, "dma_src1_read_intra_conflict_cycle");
  v43 = 19;
  std::string::basic_string[abi:ne200100]<0>(v44, "dma_src1_read_conflict_count");
  v45 = 20;
  std::string::basic_string[abi:ne200100]<0>(v46, "dma_src1_read_intra_conflict_count");
  v47 = 21;
  std::string::basic_string[abi:ne200100]<0>(v48, "dma_src2_read_active_cycle");
  v49 = 22;
  std::string::basic_string[abi:ne200100]<0>(v50, "dma_src2_read_idle_cycle");
  v51 = 23;
  std::string::basic_string[abi:ne200100]<0>(v52, "dma_src2_read_conflict_cycle");
  v53 = 24;
  std::string::basic_string[abi:ne200100]<0>(v54, "dma_src2_read_intra_conflict_cycle");
  v55 = 25;
  std::string::basic_string[abi:ne200100]<0>(v56, "dma_src2_read_conflict_count");
  v57 = 26;
  std::string::basic_string[abi:ne200100]<0>(v58, "dma_src2_read_intra_conflict_count");
  v59 = 27;
  std::string::basic_string[abi:ne200100]<0>(v60, "dma_write_active_cycle");
  v61 = 28;
  std::string::basic_string[abi:ne200100]<0>(v62, "dma_write_idle_cycle");
  v63 = 29;
  std::string::basic_string[abi:ne200100]<0>(v64, "dma_write_conflict_cycle");
  v65 = 30;
  std::string::basic_string[abi:ne200100]<0>(v66, "dma_write_intra_conflict_cycle");
  v67 = 31;
  std::string::basic_string[abi:ne200100]<0>(v68, "dma_write_conflict_count");
  v69 = 32;
  std::string::basic_string[abi:ne200100]<0>(v70, "dma_write_intra_conflict_count");
  v71 = 33;
  std::string::basic_string[abi:ne200100]<0>(v72, "idle_cycle");
  v73 = 34;
  std::string::basic_string[abi:ne200100]<0>(v74, "active_cycle");
  v75 = 35;
  std::string::basic_string[abi:ne200100]<0>(v76, "beat_count_in_64B");
  v77 = 36;
  std::string::basic_string[abi:ne200100]<0>(v78, "transaction_count");
  v79 = 37;
  std::string::basic_string[abi:ne200100]<0>(v80, "latency_product");
  v81 = 38;
  std::string::basic_string[abi:ne200100]<0>(v82, "latency_threshold");
  v83 = 39;
  std::string::basic_string[abi:ne200100]<0>(v84, "fabric_stall");
  v85 = 40;
  std::string::basic_string[abi:ne200100]<0>(v86, "mcache_hit_no_dealloc");
  v87 = 41;
  std::string::basic_string[abi:ne200100]<0>(v88, "mcache_non_coh_agent");
  v89 = 43;
  std::string::basic_string[abi:ne200100]<0>(v90, "mcache_coh_agent");
  v91 = 44;
  std::string::basic_string[abi:ne200100]<0>(v92, "mcache_miss_alloc");
  v93 = 42;
  std::string::basic_string[abi:ne200100]<0>(v94, "mcache_miss_no_alloc");
  v95 = 45;
  std::string::basic_string[abi:ne200100]<0>(v96, "mcache_hit_depri");
  v97 = 46;
  std::string::basic_string[abi:ne200100]<0>(v98, "mcache_hit_drop");
  v99 = 47;
  std::string::basic_string[abi:ne200100]<0>(v100, "mcache_hit_no_alloc");
  v101 = 48;
  std::string::basic_string[abi:ne200100]<0>(v102, "l2_stall");
  v103 = 49;
  std::string::basic_string[abi:ne200100]<0>(v104, "tex_filter_cache_miss");
  v105 = 50;
  std::string::basic_string[abi:ne200100]<0>(v106, "tex_filter_cache_total");
  v107 = 51;
  std::string::basic_string[abi:ne200100]<0>(v108, "tex_index_cache_miss");
  v109 = 52;
  std::string::basic_string[abi:ne200100]<0>(v110, "tex_index_cache_total");
  v111 = 53;
  std::string::basic_string[abi:ne200100]<0>(v112, "decomp_metadata_cache_miss");
  v113 = 54;
  std::string::basic_string[abi:ne200100]<0>(v114, "decomp_metadata_cache_hit");
  v115 = 55;
  std::string::basic_string[abi:ne200100]<0>(v116, "decomp_data_cache_miss");
  v117 = 56;
  std::string::basic_string[abi:ne200100]<0>(v118, "decomp_data_cache_hit");
  v119 = 57;
  std::string::basic_string[abi:ne200100]<0>(v120, "ne_stall");
  v121 = 58;
  std::string::basic_string[abi:ne200100]<0>(v122, "kernel_cache_miss");
  v123 = 59;
  std::string::basic_string[abi:ne200100]<0>(v124, "ne_cycle");
  v125 = 60;
  std::string::basic_string[abi:ne200100]<0>(v126, "mac_cycle");
  v127 = 61;
  std::string::basic_string[abi:ne200100]<0>(v128, "nz_count");
  v129 = 62;
  std::string::basic_string[abi:ne200100]<0>(v130, "kernel_stall");
  v131 = 63;
  std::string::basic_string[abi:ne200100]<0>(v132, "acc_stall");
  v133 = 64;
  std::string::basic_string[abi:ne200100]<0>(v134, "pe_cycle");
  v135 = 65;
  std::string::basic_string[abi:ne200100]<0>(v136, "read_stall");
  v137 = 66;
  std::string::basic_string[abi:ne200100]<0>(v138, "write_stall");
  v139 = 67;
  std::unordered_map<std::string,PerfTracerMetric>::unordered_map(a1, v4, 68);
  v2 = 272;
  do
  {
    if (*(&v4[v2 - 1] - 1) < 0)
    {
      operator delete(v4[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
  if (*(a1 + 24) != 68)
  {
    ZinAssertImpl("Assertion: Invalid perf tracer metric map.\n");
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t ZinIrCompilerParamsUtils::StringToPerfTracerConfig(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v6 = p_str + size;
    v7 = p_str;
    while (1)
    {
      v8 = memchr(v7, 58, size);
      if (!v8)
      {
        goto LABEL_15;
      }

      if (*v8 == 58)
      {
        break;
      }

      v7 = (v8 + 1);
      size = v6 - v7;
      if (v6 - v7 < 1)
      {
        goto LABEL_15;
      }
    }

    v9 = 0;
    if (v8 == v6)
    {
      goto LABEL_16;
    }

    v11 = v8 - p_str;
    if (v11 == -1)
    {
      goto LABEL_16;
    }

    std::string::basic_string(&v48, &__str, 0, v11, &__p);
    std::string::basic_string(&__p, &__str, 0, v11, &v50);
    v12 = StringToPerfTracerCategory(&__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v12 & 0x100000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else if ((v12 & 0x100000000) == 0)
    {
      goto LABEL_50;
    }

    v13 = StringToPerfTracerCategory(&v48.__r_.__value_.__l.__data_);
    if ((v13 & 0x100000000) != 0)
    {
      *a2 = v13;
      std::string::erase(&__str, 0, v11 + 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__str;
      }

      else
      {
        v22 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = __str.__r_.__value_.__l.__size_;
      }

      if (v23 >= 1)
      {
        v24 = v22 + v23;
        v25 = v22;
        do
        {
          v26 = memchr(v25, 58, v23);
          if (!v26)
          {
            break;
          }

          if (*v26 == 58)
          {
            if (v26 == v24)
            {
              break;
            }

            v27 = v26 - v22;
            if (v27 == -1)
            {
              break;
            }

            std::string::basic_string(&__p, &__str, 0, v27, &v50);
            v28 = StringToPerfTracerMetric(&__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if ((v28 & 0x100000000) == 0)
            {
              v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              if (!v29)
              {
                goto LABEL_50;
              }

              goto LABEL_49;
            }

            a2[1] = v28;
            std::string::erase(&__str, 0, v27 + 1);
            v38 = StringToPerfTracerMetric(&__str.__r_.__value_.__l.__data_);
            if ((v38 & 0x100000000) != 0)
            {
              a2[2] = v38;
              goto LABEL_55;
            }

            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v39)
            {
              ZinIrCompilerParamsUtils::StringToPerfTracerConfig(v39, v40, v41, v42, v43, v44, v45, v46);
            }

            goto LABEL_50;
          }

          v25 = (v26 + 1);
          v23 = v24 - v25;
        }

        while (v24 - v25 >= 1);
      }

      v37 = StringToPerfTracerMetric(&__str.__r_.__value_.__l.__data_);
      if ((v37 & 0x100000000) != 0)
      {
        a2[1] = v37;
        a2[2] = 0;
LABEL_55:
        v9 = 1;
        goto LABEL_51;
      }

      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v29)
      {
LABEL_49:
        ZinIrCompilerParamsUtils::StringToPerfTracerConfig(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    else
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        ZinIrCompilerParamsUtils::StringToPerfTracerConfig(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

LABEL_50:
    v9 = 0;
LABEL_51:
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  if (v3 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1C045C338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t StringToPerfTracerCategory(const void **a1)
{
  GetStringToPerfTracerCategoryMap(v7);
  v2 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(v7, a1);
  if (v2)
  {
    v3 = v2[5] & 0xFFFFFF00;
    v4 = *(v2 + 10);
    v5 = 0x100000000;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v7);
  return v5 | v3 | v4;
}

void sub_1C045C414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t StringToPerfTracerMetric(const void **a1)
{
  GetStringToPerfTracerMetricMap(v7);
  v2 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(v7, a1);
  if (v2)
  {
    v3 = v2[5] & 0xFFFFFF00;
    v4 = *(v2 + 10);
    v5 = 0x100000000;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v7);
  return v5 | v3 | v4;
}

void sub_1C045C4A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ZinIrCompilerParamsUtils::PerfTracerConfigToString(int *a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, &unk_1C0472CA1);
  ZinIrCompilerParamsUtils::PerfTracerCategoryToString(*a1, &v14);
  ZinIrCompilerParamsUtils::PerfTracerMetricToString(a1[1], &v12);
  ZinIrCompilerParamsUtils::PerfTracerMetricToString(a1[2], &__p);
  if (v15 != 1 || v13 != 1 || (v11 & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid perf tracer config");
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v14;
  }

  else
  {
    v4 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v4, size);
  std::string::append(a2, ":", 1uLL);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = v12.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v6, v7);
  std::string::append(a2, ":", 1uLL);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, v9);
  if (v11 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13 == 1 && SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v15 == 1 && SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1C045C62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 24) == 1 && *(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinIrCompilerParamsUtils::HasValidPerfTracerConfigs(int *a1, int *a2)
{
  result = IsValidPerfTracerConfig(a1);
  if (result)
  {
    result = IsValidPerfTracerConfig(a2);
    if (result)
    {
      if (*a1)
      {
        v5 = *a1 == *a2;
      }

      else
      {
        v5 = 0;
      }

      return !v5;
    }
  }

  return result;
}

BOOL IsValidPerfTracerConfig(int *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1)
  {
    v5 = 1;
    goto LABEL_34;
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = v3 == a1[2];
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 0;
    goto LABEL_34;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      v20 = 0x2100000020;
      v17 = xmmword_1C04727F0;
      v18 = unk_1C0472800;
      v19[0] = xmmword_1C0472810;
      v19[1] = unk_1C0472820;
      __src = xmmword_1C04727B0;
      v14 = unk_1C04727C0;
      v15 = xmmword_1C04727D0;
      v16 = unk_1C04727E0;
      std::vector<PerfTracerMetric>::__assign_with_size[abi:ne200100]<PerfTracerMetric const*,PerfTracerMetric const*>(&v10, &__src, &v21, 0x22uLL);
      goto LABEL_20;
    }

    if (v1 == 2)
    {
      LODWORD(v19[0]) = 57;
      v15 = xmmword_1C0472858;
      v16 = unk_1C0472868;
      v17 = xmmword_1C0472878;
      v18 = unk_1C0472888;
      __src = xmmword_1C0472838;
      v14 = unk_1C0472848;
      std::vector<PerfTracerMetric>::__assign_with_size[abi:ne200100]<PerfTracerMetric const*,PerfTracerMetric const*>(&v10, &__src, v19 + 4, 0x19uLL);
      goto LABEL_20;
    }

LABEL_19:
    __src = xmmword_1C0472928;
    v14 = unk_1C0472938;
    std::vector<PerfTracerMetric>::__assign_with_size[abi:ne200100]<PerfTracerMetric const*,PerfTracerMetric const*>(&v10, &__src, &v15, 8uLL);
    goto LABEL_20;
  }

  if (v1 == 3)
  {
    LODWORD(v17) = 49;
    __src = xmmword_1C047289C;
    v14 = unk_1C04728AC;
    v15 = xmmword_1C04728BC;
    v16 = unk_1C04728CC;
    std::vector<PerfTracerMetric>::__assign_with_size[abi:ne200100]<PerfTracerMetric const*,PerfTracerMetric const*>(&v10, &__src, &v17 + 4, 0x11uLL);
    goto LABEL_20;
  }

  if (v1 == 4)
  {
    *&v17 = 0x3B0000003ALL;
    __src = xmmword_1C04728E0;
    v14 = unk_1C04728F0;
    v15 = xmmword_1C0472900;
    v16 = unk_1C0472910;
    std::vector<PerfTracerMetric>::__assign_with_size[abi:ne200100]<PerfTracerMetric const*,PerfTracerMetric const*>(&v10, &__src, &v17 + 8, 0x12uLL);
    goto LABEL_20;
  }

  if (v1 != 5)
  {
    goto LABEL_19;
  }

  __src = xmmword_1C04727A0;
  std::vector<PerfTracerMetric>::__assign_with_size[abi:ne200100]<PerfTracerMetric const*,PerfTracerMetric const*>(&v10, &__src, &v14, 4uLL);
LABEL_20:
  if (v10 == v11)
  {
    goto LABEL_32;
  }

  v6 = v10;
  while (*v6 != a1[1])
  {
    if (++v6 == v11)
    {
      goto LABEL_32;
    }
  }

  if (v6 == v11)
  {
LABEL_32:
    v5 = 0;
    if (!v10)
    {
      goto LABEL_34;
    }

LABEL_33:
    v11 = v10;
    operator delete(v10);
    goto LABEL_34;
  }

  v7 = v10;
  while (*v7 != a1[2])
  {
    if (++v7 == v11)
    {
      v7 = v11;
      break;
    }
  }

  v5 = v7 != v11;
  if (v10)
  {
    goto LABEL_33;
  }

LABEL_34:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1C045C994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrCompilerParamsUtils::ConvertCsvStringToVector(const std::string *a1, const void **a2, int64_t a3, char a4)
{
  v4 = a4;
  v7 = 0;
  v55 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E9830];
  do
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = a1->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v11 = size - v7;
    if (size >= v7 && v11 >= 1)
    {
      v12 = (v10 + size);
      v13 = (v10 + v7);
      do
      {
        v14 = memchr(v13, 44, v11);
        if (!v14)
        {
          break;
        }

        if (*v14 == 44)
        {
          if (v14 == v12)
          {
            break;
          }

          v15 = &v14[-v10];
          memset(&__p, 0, sizeof(__p));
          if (v15 != -1)
          {
            std::string::basic_string(&v54, a1, v7, &v15[-v7], &v53);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v54;
            v16 = (v15 + 1);
            v17 = 1;
            goto LABEL_23;
          }

          goto LABEL_20;
        }

        v13 = v14 + 1;
        v11 = v12 - v13;
      }

      while (v12 - v13 >= 1);
    }

    memset(&__p, 0, sizeof(__p));
LABEL_20:
    std::string::basic_string(&v54, a1, v7, 0xFFFFFFFFFFFFFFFFLL, &v53);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v17 = 0;
    v16 = 0;
    __p = v54;
LABEL_23:
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = __p.__r_.__value_.__l.__size_;
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_56;
      }

      v20 = __p.__r_.__value_.__r.__words[0];
      v21 = (__p.__r_.__value_.__r.__words[0] + 1);
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        v26 = MEMORY[0x1E69E9C10];
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          goto LABEL_62;
        }

        p_p = &__p;
        goto LABEL_60;
      }

      v20 = &__p;
      v21 = &__p.__r_.__value_.__s.__data_[1];
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    v23 = v20 + v22;
    while (1)
    {
      if (v21 == v23)
      {
        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          v25 = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_)
          {
            v29 = __p.__r_.__value_.__r.__words[0];
            if (*__p.__r_.__value_.__l.__data_ != 45)
            {
              v28 = 0;
              v30 = __p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_;
              goto LABEL_49;
            }

            goto LABEL_43;
          }
        }

        else if (*(&__p.__r_.__value_.__s + 23))
        {
          if (__p.__r_.__value_.__s.__data_[0] != 45)
          {
            v28 = 0;
            goto LABEL_47;
          }

          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_43:
          v28 = v25 > 1;
          if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_44;
          }

LABEL_47:
          v29 = &__p;
          if (!*(&__p.__r_.__value_.__s + 23))
          {
            goto LABEL_54;
          }

          goto LABEL_48;
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v24 = *v21;
      if (v24 < 0 || (*(v8 + 4 * v24 + 60) & 0x400) == 0)
      {
        break;
      }

      ++v21;
    }

    v28 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_47;
    }

LABEL_44:
    v18 = __p.__r_.__value_.__l.__size_;
    v29 = __p.__r_.__value_.__r.__words[0];
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_54;
    }

LABEL_48:
    v30 = v29 + v18;
LABEL_49:
    while (1)
    {
      v31 = v29->__r_.__value_.__s.__data_[0];
      if (v31 < 0 || (*(v8 + 4 * v31 + 60) & 0x400) == 0)
      {
        break;
      }

      v29 = (v29 + 1);
      if (v29 == v30)
      {
        goto LABEL_54;
      }
    }

    if (!v28)
    {
LABEL_56:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_62;
      }

      p_p = &__p;
      if (v19 < 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v26 = MEMORY[0x1E69E9C10];
LABEL_60:
      LODWORD(v54.__r_.__value_.__l.__data_) = 136315138;
      *(v54.__r_.__value_.__r.__words + 4) = p_p;
      v36 = v26;
      v37 = "Cannot convert argument %s to an integer";
      goto LABEL_61;
    }

LABEL_54:
    v32 = std::stoi(&__p, 0, 10);
    v34 = a2[1];
    v33 = a2[2];
    if (v34 >= v33)
    {
      v39 = *a2;
      v40 = v34 - *a2;
      v41 = v40 >> 3;
      v42 = (v40 >> 3) + 1;
      if (v42 >> 61)
      {
        std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
      }

      v43 = v33 - v39;
      if (v43 >> 2 > v42)
      {
        v42 = v43 >> 2;
      }

      v44 = v43 >= 0x7FFFFFFFFFFFFFF8;
      v45 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v44)
      {
        v45 = v42;
      }

      if (v45)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a2, v45);
      }

      *(8 * v41) = v32;
      v35 = 8 * v41 + 8;
      memcpy(0, v39, v40);
      v46 = *a2;
      *a2 = 0;
      a2[1] = v35;
      a2[2] = 0;
      if (v46)
      {
        operator delete(v46);
      }

      v4 = a4;
    }

    else
    {
      *v34 = v32;
      v35 = (v34 + 8);
    }

    a2[1] = v35;
    if ((v4 & 1) != 0 && *(v35 - 8) < a3)
    {
      v47 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LODWORD(v54.__r_.__value_.__l.__data_) = 134217984;
        *(v54.__r_.__value_.__r.__words + 4) = a3;
        v36 = v47;
        v37 = "Argument must be greater than %lld";
LABEL_61:
        _os_log_impl(&dword_1C0446000, v36, OS_LOG_TYPE_INFO, v37, &v54, 0xCu);
      }

LABEL_62:
      v38 = 0;
    }

    else
    {
      v38 = 1;
      v7 = v16;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while ((v17 & v38 & 1) != 0);
  v48 = *MEMORY[0x1E69E9840];
  return v38;
}

void sub_1C045CE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,PerfTracerCategory>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,PerfTracerMetric>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8116EE8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
}

void *std::vector<PerfTracerMetric>::__assign_with_size[abi:ne200100]<PerfTracerMetric const*,PerfTracerMetric const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<PerfTracerMetric>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<PerfTracerMetric>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PerfTracerMetric>>(a1, a2);
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PerfTracerMetric>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

ANE::ANEServicesDevice *ANE::ANEServicesDevice::ANEServicesDevice(ANE::ANEServicesDevice *this, ANE::ANEDeviceController *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = a3;
  *this = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 2);
  pthread_mutex_init((this + 72), &v6);
  pthread_mutexattr_destroy(&v6);
  ANE::ANEServicesDevice::EnableDeviceMessages(this);
  v4 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t ANE::ANEServicesDevice::EnableDeviceMessages(uint64_t this)
{
  if (!*(this + 60))
  {
    return IOServiceAddInterestNotification(*(*(this + 16) + 24), *(this + 56), "IOGeneralInterest", ANE::ANEServicesDeviceServiceInterestCallback, this, (this + 60));
  }

  return this;
}

void *ANE::ANEServicesDevice::RegisterDeviceMessageNotificationProc(void *this, int (*a2)(ANE::ANEServicesDevice *, unsigned int, void *, void *), void *a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

uint64_t ANE::ANEServicesDevice::ANE_GetStatus(uint64_t a1, void *outputStruct)
{
  result = 3758097089;
  outputStructCnt = 32;
  v4 = *(a1 + 64);
  if (!v4)
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    return IOConnectCallStructMethod(v4, 7u, 0, 0, outputStruct, &outputStructCnt);
  }

  return result;
}

uint64_t ANE::ANEServicesDevice::ANE_GetVersion(uint64_t a1, _DWORD *a2)
{
  result = 3758097089;
  v6 = *(a1 + 64);
  if (!v6)
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 136) == 1)
    {
      return 3758097095;
    }

    else
    {
      output[3] = v2;
      output[4] = v3;
      output[0] = 0;
      outputCnt = 1;
      result = IOConnectCallScalarMethod(v6, 0xAu, 0, 0, output, &outputCnt);
      if (!result)
      {
        *a2 = output[0];
      }
    }
  }

  return result;
}

uint64_t ANE::ANEServicesDevice::ANEDeviceOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint32_t a4, __int128 *a5)
{
  v5 = a5;
  v27 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = &v17;
    DWORD2(v18) = -1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v25 = a4;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANEServicesDevice::ANEServicesDeviceOpen, usage type: %d\n", buf, 8u);
  }

  pthread_mutex_lock((a1 + 72));
  if (*(a1 + 64))
  {
    pthread_mutex_unlock((a1 + 72));
    v10 = 3758097093;
  }

  else
  {
    v10 = IOServiceOpen(*(a1 + 56), *MEMORY[0x1E69E9A60], a4, (a1 + 64));
    v11 = *(a1 + 64);
    if (!v11 || v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANE::ANEServicesDevice::ANEDeviceOpen(v10);
      }
    }

    else
    {
      outputStructCnt = 104;
      v10 = IOConnectCallStructMethod(v11, 0, v5, 0x68uLL, v5, &outputStructCnt);
      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANE::ANEServicesDevice::ANEDeviceOpen(v10);
        }
      }

      else
      {
        v14 = *(v5 + 28);
        *(a1 + 24) = v14;
        *a1 = a2;
        *(a1 + 8) = a3;
        if (*(a1 + 136) != 1)
        {
          if (v14)
          {
            ANE::ANEServicesDevice::ANE_GetVersion(a1, (a1 + 28));
            ANE::ANEServicesDevice::ANE_GetStatus(a1, buf);
            v15 = v26;
          }

          else
          {
            *(a1 + 28) = *(v5 + 19);
            v15 = *(v5 + 20);
          }

          *(a1 + 32) = v15;
        }
      }
    }

    pthread_mutex_unlock((a1 + 72));
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ANE::ANEServicesDevice::ANE_LoadFirmware(ANE::ANEServicesDevice *this)
{
  input[3] = *MEMORY[0x1E69E9840];
  v1 = 3758097089;
  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      v1 = 3758097095;
      goto LABEL_50;
    }

    memset(outputStruct, 0, sizeof(outputStruct));
    ANE::ANEServicesDevice::ANE_GetStatus(this, outputStruct);
    if (BYTE12(outputStruct[0]))
    {
      v1 = 0;
      goto LABEL_50;
    }

    v3 = *(this + 7);
    v4 = "/usr/local/share/firmware/ane/ane.bin";
    if (v3 > 143)
    {
      if (v3 > 207)
      {
        if (v3 > 239)
        {
          if (v3 != 240 && v3 != 256)
          {
            goto LABEL_53;
          }
        }

        else if (v3 != 208)
        {
          if (v3 == 224)
          {
            goto LABEL_34;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (v3 <= 175)
        {
          if (v3 != 144 && v3 != 160)
          {
            goto LABEL_53;
          }

          goto LABEL_34;
        }

        if (v3 != 176)
        {
          if (v3 == 192)
          {
            goto LABEL_34;
          }

LABEL_53:
          printf("ERROR:No matching firmware found, aneVersion: %x!\n", *(this + 7));
          v1 = 3758097105;
          goto LABEL_50;
        }
      }
    }

    else
    {
      if (v3 <= 95)
      {
        if ((v3 - 16) > 0x30 || ((1 << (v3 - 16)) & 0x1000100010007) == 0)
        {
          goto LABEL_53;
        }

LABEL_34:
        v7 = fopen(v4, "rb");
        if (v7)
        {
          v8 = v7;
          puts("Using ANECPU firmware override file");
          fseeko(v8, 0, 2);
          ftello(v8);
          fseeko(v8, 0, 0);
          operator new[]();
        }

        perror("error loading ANECPU firmware ");
        memset(input, 0, 24);
        v9 = IOConnectCallScalarMethod(*(this + 16), 0x10u, input, 3u, 0, 0);
        v1 = v9;
        if (v9)
        {
          printf("error: LoadFirmware returned 0x%08x \n", v9);
          if (v1 <= -536870182)
          {
            if (v1 == -536870211)
            {
              v10 = "LoadFirmware: Run out of memory!";
            }

            else
            {
              if (v1 != -536870207)
              {
                goto LABEL_50;
              }

              v10 = "LoadFirmware: Privilege violation,  add boot-args amfi_allow_any_signature=1 for loading customer FW";
            }
          }

          else
          {
            switch(v1)
            {
              case 0xE00002DB:
                v10 = "LoadFirmware: Firmware is too big!";
                break;
              case 0xE00002EB:
                v10 = "LoadFirmware: Firmware is already loaded!";
                break;
              case 0xE00002E2:
                v10 = "LoadFirmware: No firmware changes while the ANE is powered up!";
                break;
              default:
                goto LABEL_50;
            }
          }
        }

        else
        {
          v10 = "Firmware is loaded";
        }

        puts(v10);
        goto LABEL_50;
      }

      if (v3 == 96)
      {
        v13 = *(this + 8);
        if (v13 >= 4)
        {
          printf("Couldn't load firmware for unknow subtype(%d\n", *(this + 8));
          v4 = 0;
        }

        else
        {
          v4 = off_1E8117300[v13];
        }

LABEL_33:
        printf("overrideFirmwareFileName: %s\n", v4);
        goto LABEL_34;
      }

      if (v3 == 112)
      {
        goto LABEL_34;
      }

      if (v3 != 128)
      {
        goto LABEL_53;
      }
    }

    v5 = *(this + 8);
    v6 = "/usr/local/share/firmware/ane/ane1.bin";
    if (v5 != 1)
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = v6;
    }

    goto LABEL_33;
  }

LABEL_50:
  v11 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t ANE::ANEServicesDevice::ANE_RegisterDebugWorkProcessor(uint64_t a1, _DWORD *inputStruct)
{
  v8 = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(a1 + 64);
  if (v4)
  {
    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 136) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v7 = 0u;
        result = IOConnectCallAsyncMethod(v4, 0xBu, inputStruct[4], &reference, 8u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEServicesDevice::ANE_UnregisterDebugWorkProcessor(ANE::ANEServicesDevice *this, mach_port_t wake_port)
{
  v8 = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v7 = 0u;
        result = IOConnectCallAsyncMethod(v4, 0xCu, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEServicesDevice::ANE_GetDebugWorkProcessorItem(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  v4 = 3758097089;
  v5 = *(a1 + 64);
  if (v5)
  {
    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 136) == 1)
      {
        v4 = 3758097095;
      }

      else
      {
        input[0] = a3;
        input[1] = 3080;
        v9 = 0u;
        v4 = IOConnectCallAsyncMethod(v5, 0xDu, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
      }
    }
  }

  else
  {
    v4 = 3758097101;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ANE::ANEServicesDevice::ANE_CompleteDebugWorkProcessorItem(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  v4 = 3758097089;
  v5 = *(a1 + 64);
  if (v5)
  {
    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 136) == 1)
      {
        v4 = 3758097095;
      }

      else
      {
        input[0] = a3;
        input[1] = 3080;
        v9 = 0u;
        v4 = IOConnectCallAsyncMethod(v5, 0xEu, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
      }
    }
  }

  else
  {
    v4 = 3758097101;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ANE::ANEServicesDevice::ANE_ReleaseDebugWorkProcessorBuffers(ANE::ANEServicesDevice *this, mach_port_t wake_port)
{
  v8 = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v7 = 0u;
        result = IOConnectCallAsyncMethod(v4, 0xFu, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramCreateInstance(uint64_t a1, const char **a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = 3758097089;
  if (*(a1 + 64))
  {
    if (*(a1 + 24) == 1)
    {
      v3 = 3758097090;
      if (a2)
      {
        if (a3)
        {
          v7 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2014);
          v8 = +[ANEServicesLog handle];
          if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v9 = v8;
            if (os_signpost_enabled(v8))
            {
              v10 = *a2;
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v10;
              _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ANEServicesDeviceProgramCreateInstance", "progHandle=%llx", &buf, 0xCu);
            }
          }

          *&buf = a2;
          *(&buf + 1) = 220696;
          v22 = a3;
          v23 = 706360;
          v3 = IOConnectCallStructMethod(*(a1 + 64), 8u, &buf, 0x20uLL, 0, 0);
          if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136315394;
            v18 = "ANE_ProgramCreateInstance";
            v19 = 1024;
            LODWORD(v20) = v3;
            _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: ERROR status=%x\n", &v17, 0x12u);
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v11 = *a3;
            v17 = 136315394;
            v18 = "ANE_ProgramCreateInstance";
            v19 = 2048;
            v20 = v11;
            _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: programInstance with programHandle: 0x%llx\n", &v17, 0x16u);
          }

          v12 = +[ANEServicesLog handle];
          if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v13 = v12;
            if (os_signpost_enabled(v12))
            {
              v14 = *a2;
              v17 = 134217984;
              v18 = v14;
              _os_signpost_emit_with_name_impl(&dword_1C0446000, v13, OS_SIGNPOST_INTERVAL_END, v7, "ANEServicesDeviceProgramCreateInstance", "progHandle=%llx", &v17, 0xCu);
            }
          }
        }
      }
    }
  }

  else
  {
    v3 = 3758097101;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramPrepare(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = 3758097089;
  if (*(a1 + 64))
  {
    if (*(a1 + 24) == 1)
    {
      v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2018);
      v6 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v6))
        {
          v8 = *a2;
          *buf = 134217984;
          v16 = v8;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ANEServicesDeviceProgramPrepare", "progHandle=%llx", buf, 0xCu);
        }
      }

      outputStructCnt = 56;
      v2 = IOConnectCallStructMethod(*(a1 + 64), 4u, a2, 0x38uLL, a2, &outputStructCnt);
      v9 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v9))
        {
          v11 = *a2;
          *buf = 134217984;
          v16 = v11;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_END, v5, "ANEServicesDeviceProgramPrepare", "progHandle=%llx", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v2 = 3758097101;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramChainingPrepare(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = 3758097089;
  if (*(a1 + 64))
  {
    if (*(a1 + 24) == 1)
    {
      inputStruct[0] = a2;
      inputStruct[1] = 44592;
      v7 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2018);
      v8 = +[ANEServicesLog handle];
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v8))
        {
          v10 = *(a2 + 16);
          *buf = 134217984;
          v19 = v10;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ANEServicesDeviceProgramPrepare", "progHandle=%llx", buf, 0xCu);
        }
      }

      outputStructCnt = 24;
      v3 = IOConnectCallStructMethod(*(a1 + 64), 9u, inputStruct, 0x10uLL, a3, &outputStructCnt);
      v11 = +[ANEServicesLog handle];
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v11;
        if (os_signpost_enabled(v11))
        {
          v13 = *(a2 + 16);
          *buf = 134217984;
          v19 = v13;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_END, v7, "ANEServicesDeviceProgramPrepare", "progHandle=%llx", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v3 = 3758097101;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramOutputSetEnqueue(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 3u, inputStruct, 0x28uLL, 0, 0);
  }

  else
  {
    return 3758097101;
  }
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramInputsReady(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 4u, inputStruct, 0xC20uLL, 0, 0);
  }

  else
  {
    return 3758097101;
  }
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramChainingSetActiveProcedure(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 8u, inputStruct, 0x20uLL, 0, 0);
  }

  else
  {
    return 3758097101;
  }
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramMemoryMapRequest(uint64_t a1, void *a2, unsigned int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v6 = os_signpost_id_make_with_pointer(+[ANEServicesLog verbose], 0x61B0104);
    v7 = +[ANEServicesLog verbose];
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v7))
      {
        v9 = a2[257];
        *buf = 134217984;
        v20 = v9;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANEDeviceMemoryMapRequest", "progHandle=%llx ", buf, 0xCu);
      }
    }

    output = 0;
    input = a3;
    outputCnt = 1;
    v10 = IOConnectCallMethod(*(a1 + 64), 5u, &input, 1u, a2, 0x820uLL, &output, &outputCnt, 0, 0);
    if (!v10 && a3)
    {
      a2[259] = output;
    }

    v11 = +[ANEServicesLog verbose];
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v11))
      {
        v13 = a2[257];
        *buf = 134217984;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_END, v6, "ANEDeviceMemoryMapRequest", "progHandle=%llx ", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 3758097101;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramMemoryUnMapRequest(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v4 = os_signpost_id_make_with_pointer(+[ANEServicesLog verbose], 0x61B0108);
    v5 = +[ANEServicesLog verbose];
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v5))
      {
        v7 = a2[257];
        v14 = 134217984;
        v15 = v7;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ANEDeviceMemoryUnMapRequest)", "progHandle=%llx ", &v14, 0xCu);
      }
    }

    v8 = IOConnectCallStructMethod(*(a1 + 64), 6u, a2, 0x820uLL, 0, 0);
    v9 = +[ANEServicesLog verbose];
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        v11 = a2[257];
        v14 = 134217984;
        v15 = v11;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_END, v4, "ANEDeviceMemoryUnMapRequest)", "progHandle=%llx ", &v14, 0xCu);
      }
    }
  }

  else
  {
    v8 = 3758097101;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ANE::ANEServicesDevice::ANE_SessionHintRequest(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  if (*(a1 + 64))
  {
    if (a2 && a3)
    {
      v7 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2024);
      v8 = +[ANEServicesLog handle];
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v8))
        {
          v10 = a2[8];
          v11 = *a2;
          LODWORD(v18) = 67109376;
          HIDWORD(v18) = v10;
          v19 = 2048;
          v20 = v11;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ANEServicesDeviceSessionHintRequest", "hint=%u handle=0x%llx", &v18, 0x12u);
        }
      }

      if (*(a1 + 24))
      {
        v3 = 3758097095;
      }

      else
      {
        v18 = 24;
        v3 = IOConnectCallStructMethod(*(a1 + 64), 7u, a2, 0x10uLL, a3, &v18);
      }

      v12 = +[ANEServicesLog handle];
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        if (os_signpost_enabled(v12))
        {
          v14 = a2[8];
          v15 = *a2;
          LODWORD(v18) = 67109376;
          HIDWORD(v18) = v14;
          v19 = 2048;
          v20 = v15;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v13, OS_SIGNPOST_INTERVAL_END, v7, "ANEServicesDeviceSessionHintRequest", "hint=%u handle=0x%llx", &v18, 0x12u);
        }
      }
    }
  }

  else
  {
    v3 = 3758097101;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

void *ANE::ANEDeviceController::ANEDeviceController(void *a1, uint64_t a2, uint64_t a3)
{
  a1[8] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = a2;
  a1[6] = a3;
  a1[9] = pthread_self();
  Current = CFRunLoopGetCurrent();
  a1[7] = CFRetain(Current);
  return a1;
}

uint64_t ANE::ANEDeviceController::SetupDeviceController(ANE::ANEDeviceController *this)
{
  v2 = 3758097084;
  callBacks.version = 0;
  callBacks.retain = 0;
  callBacks.copyDescription = 0;
  callBacks.equal = 0;
  callBacks.release = ANE::ReleaseANEUnitObject;
  v3 = CFArrayCreateMutable(0, 0, &callBacks);
  *this = v3;
  if (!v3)
  {
    return 3758097085;
  }

  v4 = CFArrayCreateMutable(0, 0, &callBacks);
  *(this + 1) = v4;
  if (!v4)
  {
    return 3758097085;
  }

  v5 = MEMORY[0x1C68DA060](*MEMORY[0x1E69E99F8], this + 16);
  if (v5)
  {
    return v5;
  }

  v7 = IONotificationPortCreate(*(this + 4));
  *(this + 3) = v7;
  RunLoopSource = IONotificationPortGetRunLoopSource(v7);
  *(this + 4) = RunLoopSource;
  if (RunLoopSource)
  {
    CFRunLoopAddSource(*(this + 7), RunLoopSource, *MEMORY[0x1E695E8E0]);
    v9 = IOServiceMatching("ANEDriver");
    if (!IOServiceAddMatchingNotification(*(this + 3), "IOServiceMatched", v9, ANE::ANEDriverArrivedCallback, this, this + 16))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Found matching service: ANEDriver\n", v11, 2u);
      }

      ANE::ANEDriverArrivedCallback(this, *(this + 16));
    }

    v10 = IOServiceMatching("H11ANEIn");
    v5 = IOServiceAddMatchingNotification(*(this + 3), "IOServiceMatched", v10, ANE::ANEInstanceArrivedCallback, this, this + 17);
    if (v5)
    {
      return v5;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Found matching service: H11ANEIn\n", v11, 2u);
    }

    ANE::ANEInstanceArrivedCallback(this, *(this + 17));
    return 0;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANE::ANEDeviceController::SetupDeviceController();
  }

  return v2;
}

uint64_t ANE::ANEDriverArrivedCallback(ANE *this, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t ANE::ANEInstanceArrivedCallback(ANE *this, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t *ANE::ANEClientLogger::ANEClientLogger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v19 = *MEMORY[0x1E69E9840];
  a1[1] = a3;
  v9 = a1 + 1;
  *a1 = a2;
  a1[2] = a4;
  *(a1 + 6) = a6;
  v10 = a1 + 3;
  *(a1 + 7) = a7;
  ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(&v18);
  a1[12] = 0;
  *(a1 + 8) = a5;
  *(a1 + 64) = 0;
  v11 = *a1;
  a1[6] = &v18;
  a1[7] = v11;
  *(a1 + 9) = *v9;
  *(a1 + 22) = *v10;
  a1[5] = a1;
  v12 = pthread_attr_init(&v17);
  if (v12)
  {
    printf("pthread_attr_init() failed. Error: %d\n", v12);
    goto LABEL_13;
  }

  if (*(a1 + 7))
  {
    v16.sched_priority = *(a1 + 7);
    *v16.__opaque = 0;
    if (pthread_attr_setschedparam(&v17, &v16))
    {
      printf("pthread_attr_setschedparam() failed. Error: %d\n");
LABEL_10:
      v13 = 0;
      goto LABEL_11;
    }
  }

  if (pthread_attr_setdetachstate(&v17, 1))
  {
    printf("pthread_attr_setdetachstate() failed. Error: %d\n");
    goto LABEL_10;
  }

  if (pthread_create(a1 + 12, &v17, ANE::ANEClientLoggerThreadStart, a1 + 4))
  {
    printf("pthread_create() failed. Error: %d\n");
    goto LABEL_10;
  }

  v13 = 1;
LABEL_11:
  pthread_attr_destroy(&v17);
  if (v13)
  {
    ANE::ANEThreadReadySyncer::wait(&v18);
  }

LABEL_13:
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v18);
  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1C045F02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(va);
  _Unwind_Resume(a1);
}

uint64_t ANE::ANEClientLoggerThreadStart(uint64_t a1)
{
  pthread_setname_np("ANEClientLoggerThread");
  ANE::ANEThreadReadySyncer::lock(*(a1 + 16));
  v2 = *(a1 + 24);
  ANE::ANEThreadReadySyncer::signalAndUnlock(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    printf("%s: Unable to allocate CFDictionary for IOSurface properties \n", "void *ANE::ANEClientLoggerThreadStart(ANEClientLoggerThreadParams *)");
    goto LABEL_24;
  }

  v5 = Mutable;
  valuePtr = 0x10000;
  v6 = CFNumberCreate(v3, kCFNumberLongType, &valuePtr);
  CFDictionaryAddValue(v5, *MEMORY[0x1E696CE30], v6);
  CFRelease(v6);
  v7 = IOSurfaceCreate(v5);
  if (!v7)
  {
    printf("%s: Unable to create IOSurface for client logging buffer \n", "void *ANE::ANEClientLoggerThreadStart(ANEClientLoggerThreadParams *)");
    CFRelease(v5);
    goto LABEL_24;
  }

  v8 = v7;
  seed = 0;
  IOSurfaceLock(v7, 0, &seed);
  ID = IOSurfaceGetID(v8);
  BaseAddress = IOSurfaceGetBaseAddress(v8);
  if (BaseAddress)
  {
    bzero(BaseAddress, valuePtr);
    ClientLoggingSession = ANE::ANEHWDevice::ANE_CreateClientLoggingSession(*(a1 + 24), ID, *a1);
    v12 = ClientLoggingSession;
    if (ClientLoggingSession)
    {
      printf("%s: ANE_CreateClientLoggingSession returned 0x%08x \n", "void *ANE::ANEClientLoggerThreadStart(ANEClientLoggerThreadParams *)", ClientLoggingSession);
      CFRelease(v8);
      v8 = 0;
      ID = 0;
      LOBYTE(v12) = v12 == -536870201;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  IOSurfaceUnlock(v8, 0, &seed);
  CFRelease(v5);
  if (!v8)
  {
    if (v12)
    {
      return 0;
    }

LABEL_24:
    (*(a1 + 40))(*(a1 + 48), "client logging aborted \n");
    return 0;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    do
    {
      IOSurfaceLock(v8, 0, 0);
      AllocSize = IOSurfaceGetAllocSize(v8);
      v14 = IOSurfaceGetBaseAddress(v8);
      LODWORD(v15) = *(v14 + 1);
      v16 = *(v14 + 16);
      if (v15 != v16)
      {
        v17 = v14;
        do
        {
          v18 = *(a1 + 40);
          if (v18)
          {
            v18(*(a1 + 48), &v17[v15]);
            LODWORD(v15) = *(v17 + 1);
            v16 = *(v17 + 16);
          }

          v15 = (v15 + 128);
          if (AllocSize <= v15)
          {
            LODWORD(v15) = 128;
          }

          *(v17 + 1) = v15;
        }

        while (v15 != v16);
      }

      IOSurfaceUnlock(v8, 0, 0);
      usleep(1000 * *(a1 + 56));
    }

    while (*(a1 + 32) != 1);
  }

  v19 = ANE::ANEHWDevice::ANE_TerminateClientLoggingSession(*(a1 + 24), ID);
  if (v19)
  {
    printf("%s: ANE_TerminateClientLoggingSession returned 0x%08x \n", "void *ANE::ANEClientLoggerThreadStart(ANEClientLoggerThreadParams *)", v19);
  }

  CFRelease(v8);
  return 0;
}

void ANE::ANEClientLogger::~ANEClientLogger(pthread_t *this)
{
  v2 = 0;
  ANE::ANEClientLogger::SetFirmwareLoggerThreadPriority(this, 47);
  *(this + 64) = 1;
  pthread_join(this[12], &v2);
  this[12] = 0;
}

uint64_t ANE::ANEClientLogger::SetFirmwareLoggerThreadPriority(ANE::ANEClientLogger *this, int a2)
{
  v2 = *(this + 12);
  if (!v2)
  {
    return 3758097086;
  }

  v4 = pthread_mach_thread_np(v2);
  ANE::ANESetMachThreadPriority(v4, a2);
  return 0;
}

ANE::ANEHWDevice *ANE::ANEHWDevice::ANEHWDevice(ANE::ANEHWDevice *this, ANE::ANEDeviceController *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = a3;
  *this = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 2);
  pthread_mutex_init((this + 72), &v6);
  pthread_mutexattr_destroy(&v6);
  ANE::ANEHWDevice::EnableDeviceMessages(this);
  v4 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t ANE::ANEHWDevice::EnableDeviceMessages(uint64_t this)
{
  if (!*(this + 60))
  {
    return IOServiceAddInterestNotification(*(*(this + 16) + 24), *(this + 56), "IOGeneralInterest", ANE::ANEServicesDeviceServiceInterestCallback, this, (this + 60));
  }

  return this;
}

void ANE::ANEHWDevice::~ANEHWDevice(ANE::ANEHWDevice *this)
{
  if (*(this + 16))
  {
    ANE::ANEHWDevice::ANEHWDeviceClose(this);
  }

  v2 = *(this + 15);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 15) = 0;
  }

  pthread_mutex_destroy((this + 72));
}

uint64_t ANE::ANEHWDevice::ANEHWDeviceClose(ANE::ANEHWDevice *this)
{
  pthread_mutex_lock((this + 72));
  v2 = IOConnectCallScalarMethod(*(this + 16), 1u, 0, 0, 0, 0);
  v3 = *(this + 16);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 16) = 0;
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock((this + 72));
  return v2;
}

void *ANE::ANEHWDevice::RegisterDeviceMessageNotificationProc(void *this, int (*a2)(ANE::ANEServicesDevice *, unsigned int, void *, void *), void *a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

uint64_t ANE::ANEHWDevice::ANEHWDeviceOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint32_t a4, __int128 *a5)
{
  v5 = a5;
  v48 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = &v38;
    DWORD2(v39) = -1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v46 = a4;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANEHWDeviceOpen::ANEHWDeviceOpen, usage type: %d\n", buf, 8u);
  }

  pthread_mutex_lock((a1 + 72));
  if (*(a1 + 64))
  {
    pthread_mutex_unlock((a1 + 72));
    v10 = 3758097093;
  }

  else
  {
    v10 = IOServiceOpen(*(a1 + 56), *MEMORY[0x1E69E9A60], a4, (a1 + 64));
    v11 = *(a1 + 64);
    if (!v11 || v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANE::ANEHWDevice::ANEHWDeviceOpen(v10, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    else
    {
      outputStructCnt = 104;
      v10 = IOConnectCallStructMethod(v11, 0, v5, 0x68uLL, v5, &outputStructCnt);
      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANE::ANEHWDevice::ANEHWDeviceOpen(v10, v12, v13, v14, v15, v16, v17, v18);
        }
      }

      else
      {
        v28 = *(v5 + 28);
        *(a1 + 24) = v28;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANE::ANEHWDevice::ANEHWDeviceOpen(v28, v29, v30, v31, v32, v33, v34, v35);
        }

        *a1 = a2;
        *(a1 + 8) = a3;
        if (*(a1 + 136) != 1)
        {
          if (*(a1 + 24) == 1)
          {
            ANE::ANEHWDevice::ANE_GetVersion(a1, (a1 + 28));
            ANE::ANEHWDevice::ANE_GetStatus(a1, buf);
            v36 = v47;
          }

          else
          {
            *(a1 + 28) = *(v5 + 19);
            v36 = *(v5 + 20);
          }

          *(a1 + 32) = v36;
        }
      }
    }

    pthread_mutex_unlock((a1 + 72));
  }

  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ANE::ANEHWDevice::ANE_GetVersion(uint64_t a1, _DWORD *a2)
{
  result = 3758097089;
  v6 = *(a1 + 64);
  if (!v6)
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 136) == 1)
    {
      return 3758097095;
    }

    else
    {
      output[3] = v2;
      output[4] = v3;
      output[0] = 0;
      outputCnt = 1;
      result = IOConnectCallScalarMethod(v6, 0x19u, 0, 0, output, &outputCnt);
      if (!result)
      {
        *a2 = output[0];
      }
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_GetStatus(uint64_t a1, void *outputStruct)
{
  result = 3758097089;
  outputStructCnt = 32;
  v4 = *(a1 + 64);
  if (!v4)
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    return IOConnectCallStructMethod(v4, 2u, 0, 0, outputStruct, &outputStructCnt);
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ForgetFirmware(ANE::ANEHWDevice *this)
{
  result = 3758097084;
  v3 = *(this + 16);
  if (v3)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        return 3758097095;
      }

      else
      {
        return IOConnectCallScalarMethod(v3, 7u, 0, 0, 0, 0);
      }
    }

    else
    {
      return 3758097089;
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ReadANERegister(ANE::ANEHWDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        output = 0;
        input[0] = a2;
        outputCnt = 1;
        result = IOConnectCallScalarMethod(v5, 0x1Au, input, 1u, &output, &outputCnt);
        if (!result)
        {
          *a3 = output;
        }
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_WriteANERegister(ANE::ANEHWDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        input[0] = a2;
        input[1] = a3;
        result = IOConnectCallScalarMethod(v5, 0x1Bu, input, 2u, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_SendCommand(ANE::ANEHWDevice *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v10 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2008);
  v11 = +[ANEServicesLog handle];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v11))
    {
      LOWORD(v19[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANEHWDeviceSendCommand", &unk_1C047597E, v19, 2u);
    }
  }

  v13 = 3758097089;
  v14 = *(this + 16);
  if (v14)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        v13 = 3758097095;
      }

      else
      {
        v19[0] = a2;
        v19[1] = a3;
        v19[2] = a4;
        v19[3] = a5;
        v13 = IOConnectCallScalarMethod(v14, 8u, v19, 4u, 0, 0);
      }
    }
  }

  else
  {
    v13 = 3758097101;
  }

  v15 = +[ANEServicesLog handle];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v15))
    {
      LOWORD(v19[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v16, OS_SIGNPOST_INTERVAL_END, v10, "ANEHWDeviceSendCommand", &unk_1C047597E, v19, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t ANE::ANEHWDevice::WritePropertyValue(ANE::ANEHWDevice *this, int a2, int a3, unsigned int a4)
{
  *v5 = 0x1F00000000;
  v6 = 0;
  v7 = a2;
  v8 = a3;
  return ANE::ANEHWDevice::ANE_SendCommand(this, v5, 0x14u, 0, a4);
}

uint64_t ANE::ANEHWDevice::ReadPropertyValue(ANE::ANEHWDevice *this, int a2, unsigned int *a3, unsigned int a4)
{
  *v6 = 0x2000000000;
  v7 = 0;
  v8 = a2;
  v9 = 0;
  result = ANE::ANEHWDevice::ANE_SendCommand(this, v6, 0x14u, 0, a4);
  if (!result)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_FlushInactiveDARTMappings(ANE::ANEHWDevice *this)
{
  result = 3758097089;
  v3 = *(this + 16);
  if (!v3)
  {
    return 3758097101;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      return 3758097095;
    }

    else
    {
      return IOConnectCallScalarMethod(v3, 0x18u, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_LoadFirmware(ANE::ANEHWDevice *this)
{
  input[3] = *MEMORY[0x1E69E9840];
  v1 = 3758097089;
  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      v1 = 3758097095;
      goto LABEL_50;
    }

    memset(outputStruct, 0, sizeof(outputStruct));
    ANE::ANEHWDevice::ANE_GetStatus(this, outputStruct);
    if (BYTE12(outputStruct[0]))
    {
      v1 = 0;
      goto LABEL_50;
    }

    v3 = *(this + 7);
    v4 = "/usr/local/share/firmware/ane/ane.bin";
    if (v3 > 143)
    {
      if (v3 > 207)
      {
        if (v3 > 239)
        {
          if (v3 != 240 && v3 != 256)
          {
            goto LABEL_53;
          }
        }

        else if (v3 != 208)
        {
          if (v3 == 224)
          {
            goto LABEL_34;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (v3 <= 175)
        {
          if (v3 != 144 && v3 != 160)
          {
            goto LABEL_53;
          }

          goto LABEL_34;
        }

        if (v3 != 176)
        {
          if (v3 == 192)
          {
            goto LABEL_34;
          }

LABEL_53:
          printf("ERROR:No matching firmware found, aneVersion: %x!\n", *(this + 7));
          v1 = 3758097105;
          goto LABEL_50;
        }
      }
    }

    else
    {
      if (v3 <= 95)
      {
        if ((v3 - 16) > 0x30 || ((1 << (v3 - 16)) & 0x1000100010007) == 0)
        {
          goto LABEL_53;
        }

LABEL_34:
        v7 = fopen(v4, "rb");
        if (v7)
        {
          v8 = v7;
          puts("Using ANECPU firmware override file");
          fseeko(v8, 0, 2);
          ftello(v8);
          fseeko(v8, 0, 0);
          operator new[]();
        }

        perror("error loading ANECPU firmware ");
        memset(input, 0, 24);
        v9 = IOConnectCallScalarMethod(*(this + 16), 6u, input, 3u, 0, 0);
        v1 = v9;
        if (v9)
        {
          printf("error: LoadFirmware returned 0x%08x \n", v9);
          if (v1 <= -536870182)
          {
            if (v1 == -536870211)
            {
              v10 = "LoadFirmware: Run out of memory!";
            }

            else
            {
              if (v1 != -536870207)
              {
                goto LABEL_50;
              }

              v10 = "LoadFirmware: Privilege violation,  add boot-args amfi_allow_any_signature=1 for loading customer FW";
            }
          }

          else
          {
            switch(v1)
            {
              case 0xE00002DB:
                v10 = "LoadFirmware: Firmware is too big!";
                break;
              case 0xE00002EB:
                v10 = "LoadFirmware: Firmware is already loaded!";
                break;
              case 0xE00002E2:
                v10 = "LoadFirmware: No firmware changes while the ANE is powered up!";
                break;
              default:
                goto LABEL_50;
            }
          }
        }

        else
        {
          v10 = "Firmware is loaded";
        }

        puts(v10);
        goto LABEL_50;
      }

      if (v3 == 96)
      {
        v13 = *(this + 8);
        if (v13 >= 4)
        {
          printf("Couldn't load firmware for unknow subtype(%d\n", *(this + 8));
          v4 = 0;
        }

        else
        {
          v4 = off_1E8117320[v13];
        }

LABEL_33:
        printf("overrideFirmwareFileName: %s\n", v4);
        goto LABEL_34;
      }

      if (v3 == 112)
      {
        goto LABEL_34;
      }

      if (v3 != 128)
      {
        goto LABEL_53;
      }
    }

    v5 = *(this + 8);
    v6 = "/usr/local/share/firmware/ane/ane1.bin";
    if (v5 != 1)
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = v6;
    }

    goto LABEL_33;
  }

LABEL_50:
  v11 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t ANE::ANEHWDevice::ANE_PowerOn(ANE::ANEHWDevice *this)
{
  v2 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2000);
  v3 = +[ANEServicesLog handle];
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANEHWDevicePowerOn", &unk_1C047597E, buf, 2u);
    }
  }

  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        v6 = 3758097095;
      }

      else
      {
        v6 = IOConnectCallScalarMethod(v5, 3u, 0, 0, 0, 0);
        if (v6 == -536870172)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANE_PowerOn: Attempting to load firmware\n", v14, 2u);
          }

          ANE::ANEHWDevice::ANE_LoadFirmware(this);
          v6 = IOConnectCallScalarMethod(*(this + 16), 3u, 0, 0, 0, 0);
        }

        if (!v6)
        {
          if (ANE::ANEHWDevice::ANE_IsPowered(this))
          {
            printf("Power on wait count: %u on connection: 0x%x\n", 0, *(this + 16));
            v6 = 0;
          }

          else
          {
            v7 = 0;
            do
            {
              usleep(0x3E8u);
              v8 = v7 + 1;
              if (ANE::ANEHWDevice::ANE_IsPowered(this))
              {
                break;
              }
            }

            while (v7++ < 0xBB7);
            printf("Power on wait count: %u on connection: 0x%x\n", v8, *(this + 16));
            if (v8 == 3000)
            {
              v6 = 3758097110;
            }

            else
            {
              v6 = 0;
            }
          }
        }
      }
    }

    else
    {
      v6 = 3758097089;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANE_PowerOn: No connection present!\n", v15, 2u);
    }

    v6 = 3758097101;
  }

  v10 = +[ANEServicesLog handle];
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v11, OS_SIGNPOST_INTERVAL_END, v2, "ANEHWDevicePowerOn", &unk_1C047597E, v13, 2u);
    }
  }

  return v6;
}

uint64_t ANE::ANEHWDevice::ANE_IsPowered(ANE::ANEHWDevice *this)
{
  output = 0;
  outputCnt = 1;
  result = *(this + 16);
  if (result)
  {
    if (*(this + 24) == 1 && *(this + 34) != 1)
    {
      return !IOConnectCallScalarMethod(result, 5u, 0, 0, &output, &outputCnt) && output == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_PowerOff(ANE::ANEHWDevice *this)
{
  v2 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2004);
  v3 = +[ANEServicesLog handle];
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANEHWDevicePowerOff", &unk_1C047597E, buf, 2u);
    }
  }

  v5 = 3758097089;
  v6 = *(this + 16);
  if (v6)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        v5 = 3758097095;
      }

      else
      {
        v5 = IOConnectCallScalarMethod(v6, 4u, 0, 0, 0, 0);
      }
    }
  }

  else
  {
    v5 = 3758097101;
  }

  v7 = +[ANEServicesLog handle];
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v8, OS_SIGNPOST_INTERVAL_END, v2, "ANEHWDevicePowerOff", &unk_1C047597E, v10, 2u);
    }
  }

  return v5;
}

uint64_t ANE::ANEHWDevice::ANE_SetPowerManagement(ANE::ANEHWDevice *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v6[0] = a2;
        result = IOConnectCallScalarMethod(v4, 9u, v6, 1u, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_SetDynamicPowerGating(ANE::ANEHWDevice *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v6[0] = a2;
        result = IOConnectCallScalarMethod(v4, 0xAu, v6, 1u, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_SetPowerGatingHysteresisTime(ANE::ANEHWDevice *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v6[0] = a2;
        result = IOConnectCallScalarMethod(v4, 0xBu, v6, 1u, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_GetTime(uint64_t a1, void *outputStruct)
{
  result = 3758097089;
  outputStructCnt = 24;
  v4 = *(a1 + 64);
  if (!v4)
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 136) == 1)
    {
      return 3758097095;
    }

    else
    {
      return IOConnectCallStructMethod(v4, 0xCu, 0, 0, outputStruct, &outputStructCnt);
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_GetClientsInfo(uint64_t a1, void *outputStruct)
{
  result = 3758097089;
  outputStructCnt = 132;
  v4 = *(a1 + 64);
  if (!v4)
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    return IOConnectCallStructMethod(v4, 0x1Eu, 0, 0, outputStruct, &outputStructCnt);
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_SetDriverProperty(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v5 = *(a1 + 64);
  if (v5)
  {
    if (*(a1 + 24) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      result = IOConnectCallScalarMethod(v5, 0xDu, input, 2u, 0, 0);
    }
  }

  else
  {
    result = 3758097101;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_GetDriverProperty(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v5 = *(a1 + 64);
  if (v5)
  {
    if (*(a1 + 24) == 1)
    {
      output = 0;
      input[0] = a2;
      outputCnt = 1;
      result = IOConnectCallScalarMethod(v5, 0x17u, input, 1u, &output, &outputCnt);
      if (!result)
      {
        *a3 = output;
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_CreateClientLoggingSession(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097084;
  v5 = *(a1 + 64);
  if (v5)
  {
    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 136) == 1)
      {
        result = 3758097095;
      }

      else
      {
        input[0] = a2;
        input[1] = a3;
        result = IOConnectCallScalarMethod(v5, 0x15u, input, 2u, 0, 0);
      }
    }

    else
    {
      result = 3758097089;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_TerminateClientLoggingSession(ANE::ANEHWDevice *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 3758097084;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v6[0] = a2;
        result = IOConnectCallScalarMethod(v4, 0x16u, v6, 1u, 0, 0);
      }
    }

    else
    {
      result = 3758097089;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_AddPersistentClient(ANE::ANEHWDevice *this)
{
  result = 3758097089;
  v3 = *(this + 16);
  if (!v3)
  {
    return 3758097101;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      return 3758097095;
    }

    else
    {
      return IOConnectCallScalarMethod(v3, 0x13u, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_RemovePersistentClient(ANE::ANEHWDevice *this)
{
  result = 3758097089;
  v3 = *(this + 16);
  if (!v3)
  {
    return 3758097101;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      return 3758097095;
    }

    else
    {
      return IOConnectCallScalarMethod(v3, 0x14u, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ShowSharedMemoryAllocations(ANE::ANEHWDevice *this)
{
  result = 3758097089;
  v3 = *(this + 16);
  if (!v3)
  {
    return 3758097101;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      return 3758097095;
    }

    else
    {
      return IOConnectCallScalarMethod(v3, 0xEu, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ShowModelMemoryStatus(ANE::ANEHWDevice *this)
{
  result = 3758097089;
  v3 = *(this + 16);
  if (!v3)
  {
    return 3758097101;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      return 3758097095;
    }

    else
    {
      return IOConnectCallScalarMethod(v3, 0xFu, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_SetDARTCacheTTL(ANE::ANEHWDevice *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v6[0] = a2;
        result = IOConnectCallScalarMethod(v4, 0x10u, v6, 1u, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_SetThrottlingPercentage(ANE::ANEHWDevice *this, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      input[0] = a2;
      result = IOConnectCallScalarMethod(v4, 0x12u, input, 1u, 0, 0);
    }
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_SetFirmwareBootArg(ANE::ANEHWDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      result = IOConnectCallScalarMethod(v5, 0x11u, input, 2u, 0, 0);
    }
  }

  else
  {
    result = 3758097101;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_MPMMemoryMapRequest(ANE::ANEHWDevice *this, uint64_t a2, uint64_t a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  v3 = *(this + 16);
  if (v3)
  {
    input[0] = a2;
    input[1] = a3;
    result = IOConnectCallScalarMethod(v3, 0x1Fu, input, 2u, 0, 0);
  }

  else
  {
    result = 3758097101;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_MPMMemoryUnmapRequest(ANE::ANEHWDevice *this, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 16);
  if (v2)
  {
    v5[0] = a2;
    result = IOConnectCallScalarMethod(v2, 0x20u, v5, 1u, 0, 0);
  }

  else
  {
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_FWSharedEventDoorbellRing(ANE::ANEHWDevice *this)
{
  result = 3758097089;
  v3 = *(this + 16);
  if (!v3)
  {
    return 3758097101;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 34) == 1)
    {
      return 3758097095;
    }

    else
    {
      return IOConnectCallScalarMethod(v3, 0x1Cu, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_UnmapDartBuffers(ANE::ANEHWDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097089;
  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        input[0] = a2;
        input[1] = a3;
        result = IOConnectCallScalarMethod(v5, 0x1Du, input, 2u, 0, 0);
      }
    }
  }

  else
  {
    result = 3758097101;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ExclaveCycle(ANE::ANEHWDevice *this)
{
  result = 3758097084;
  v3 = *(this + 16);
  if (v3)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        return 3758097095;
      }

      else
      {
        return IOConnectCallScalarMethod(v3, 0x21u, 0, 0, 0, 0);
      }
    }

    else
    {
      return 3758097089;
    }
  }

  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ExclaveLoad(ANE::ANEHWDevice *this, unsigned int a2, unint64_t *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  result = 3758097084;
  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        output = 0;
        input[0] = a2;
        outputCnt = 1;
        result = IOConnectCallScalarMethod(v5, 0x22u, input, 1u, &output, &outputCnt);
        if (!result)
        {
          *a3 = output;
        }
      }
    }

    else
    {
      result = 3758097089;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ExclaveEvaluate(ANE::ANEHWDevice *this, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 3758097084;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v6[0] = a2;
        result = IOConnectCallScalarMethod(v4, 0x23u, v6, 1u, 0, 0);
      }
    }

    else
    {
      result = 3758097089;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ExclaveUnload(ANE::ANEHWDevice *this, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 3758097084;
  v4 = *(this + 16);
  if (v4)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        v6[0] = a2;
        result = IOConnectCallScalarMethod(v4, 0x24u, v6, 1u, 0, 0);
      }
    }

    else
    {
      result = 3758097089;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ExclaveReadPropertyValue(ANE::ANEHWDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  result = 3758097084;
  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        output = 0;
        input[0] = a2;
        outputCnt = 1;
        result = IOConnectCallScalarMethod(v5, 0x25u, input, 1u, &output, &outputCnt);
        if (!result)
        {
          *a3 = output;
        }
      }
    }

    else
    {
      result = 3758097089;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANE::ANEHWDevice::ANE_ExclaveWritePropertyValue(ANE::ANEHWDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097084;
  v5 = *(this + 16);
  if (v5)
  {
    if (*(this + 24) == 1)
    {
      if (*(this + 34) == 1)
      {
        result = 3758097095;
      }

      else
      {
        input[0] = a2;
        input[1] = a3;
        result = IOConnectCallScalarMethod(v5, 0x26u, input, 2u, 0, 0);
      }
    }

    else
    {
      result = 3758097089;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

ANE::ANERequestReceiver *ANE::ANERequestReceiver::ANERequestReceiver(ANE::ANERequestReceiver *this, ANE::ANEServicesDevice *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 248) = 0;
  *(this + 41) = 0;
  *(this + 84) = 0;
  *(this + 43) = 0;
  *(this + 44) = a2;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  pthread_mutex_init((this + 112), 0);
  pthread_mutex_init(this + 4, 0);
  *(this + 14) = 0;
  pthread_cond_init((this + 64), 0);
  *(this + 40) = 0;
  *(this + 52) = 0;
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_settype(&v5, 2);
  pthread_mutex_init((this + 176), &v5);
  pthread_mutexattr_destroy(&v5);
  *(this + 30) = dispatch_semaphore_create(0);
  v3 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t ANE::ANERequestReceiver::setupRequestReceiver(CFTypeRef *this)
{
  CFRetain(this[1]);

  return ANE::ANERequestReceiver::addIODispatcherToRunLoop(this);
}

uint64_t ANE::ANERequestReceiver::addIODispatcherToRunLoop(ANE::ANERequestReceiver *this)
{
  v2 = IOCreateReceivePort(0x39u, this + 84);
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v4 = *MEMORY[0x1E695E480];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x1E695E480], *(this + 84), MEMORY[0x1E696CCD0], &context, &shouldFreeInfo);
    *(this + 41) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 43) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(this + 1), RunLoopSource, *MEMORY[0x1E695E8E0]);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t ANE::ANERequestReceiver::registerMessageCallback(ANE::ANERequestReceiver *this, void (*a2)(unsigned int, unsigned int, unsigned int, void *, void *, void *), void *a3)
{
  *(this + 5) = a2;
  *(this + 6) = a3;
  return 0;
}

uint64_t ANE::ANERequestReceiver::startReceive(ANE::ANERequestReceiver *this)
{
  v2 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2200);
  v3 = +[ANEServicesLog handle];
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANERequestReceiverStart", &unk_1C047597E, buf, 2u);
    }
  }

  pthread_mutex_lock((this + 112));
  if (*this == 1)
  {
    v5 = 3758097122;
  }

  else
  {
    v5 = 0;
    *(this + 408) = 0;
    *this = 1;
  }

  pthread_mutex_unlock((this + 112));
  v6 = +[ANEServicesLog handle];
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_END, v2, "ANERequestReceiverStart", &unk_1C047597E, v9, 2u);
    }
  }

  return v5;
}

uint64_t ANE::ANERequestReceiver::registerFrameReceiveCallback(ANE::ANERequestReceiver *this, void (*a2)(void *, ANE::ANERequestReceiverRequest *), void *a3)
{
  *(this + 3) = a3;
  *(this + 4) = a2;
  return 0;
}

void *std::deque<ANE::ANERequestReceiverRequest *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<ANE::ANERequestReceiverRequest *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t ANE::ANERequestReceiver::startNoDataTimer(ANE::ANERequestReceiver *this)
{
  pthread_mutex_lock(this + 4);
  v2 = *(this + 40);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 40));
    *(this + 40) = 0;
  }

  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  if (*(this + 4))
  {
    Current = CFAbsoluteTimeGetCurrent();
    LODWORD(v4) = *(this + 4);
    v5 = CFRunLoopTimerCreate(0, Current + v4 / 1000.0 + 30.0, 0.0, 0, 0, ANE::ANERequestReceiver::NoDataTimeout, &context);
    *(this + 40) = v5;
    if (v5)
    {
      CFRunLoopAddTimer(*(this + 1), v5, *MEMORY[0x1E695E8E0]);
    }
  }

  return pthread_mutex_unlock(this + 4);
}

uint64_t *std::deque<ANE::ANERequestReceiverRequest *>::erase(int64x2_t *a1, char *a2, char *a3)
{
  v4 = a1->i64[1];
  v5 = (v4 + 8 * (a1[2].i64[0] >> 9));
  if (a1[1].i64[0] == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*v5 + 8 * (a1[2].i64[0] & 0x1FF));
  }

  v30 = (v4 + 8 * (a1[2].i64[0] >> 9));
  v31 = v6;
  if (a3 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&a3[-*a2] >> 3) + ((a2 - v5) << 6) - (&v6[-*v5] >> 3);
  }

  v8 = std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>::operator+[abi:ne200100](&v30, v7);
  v10 = v8;
  v11 = v9;
  v12 = a1[2].i64[1];
  if (v7 <= (v12 - 1) >> 1)
  {
    v17 = (v9 - *v8) >> 3;
    if (v17 < 0)
    {
      v26 = 510 - v17;
      v19 = &v8[-(v26 >> 9)];
      v20 = &(*v19)[8 * (~v26 & 0x1FF)];
    }

    else
    {
      v18 = v17 + 1;
      v19 = &v8[v18 >> 9];
      v20 = &(*v19)[8 * (v18 & 0x1FF)];
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>(v30, v31, v8, v9, v19, v20, v32);
    a1[2] = vaddq_s64(a1[2], xmmword_1C0472980);
    std::deque<ANE::ANERequestReceiverRequest *>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
  }

  else
  {
    v13 = (v9 - *v8) >> 3;
    if (v13 < 0)
    {
      v21 = 510 - v13;
      v15 = &v8[-(v21 >> 9)];
      v16 = &(*v15)[8 * (~v21 & 0x1FF)];
    }

    else
    {
      v14 = v13 + 1;
      v15 = &v8[v14 >> 9];
      v16 = &(*v15)[8 * (v14 & 0x1FF)];
    }

    v22 = a1[2].i64[0] + v12;
    v23 = a1->i64[1];
    v24 = (v23 + 8 * (v22 >> 9));
    if (a1[1].i64[0] == v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = &(*v24)[8 * (v22 & 0x1FF)];
    }

    v32[0].n128_u64[0] = v10;
    v32[0].n128_u64[1] = v11;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>>>(v15, v16, v24, v25, v32);
    --a1[2].i64[1];
    std::deque<ANE::ANERequestReceiverRequest *>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
  }

  v27 = a1->i64[1];
  if (a1[1].i64[0] == v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v27 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v32[0].n128_u64[0] = v27 + 8 * (a1[2].i64[0] >> 9);
  v32[0].n128_u64[1] = v28;
  return std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>::operator+[abi:ne200100](v32, v7);
}

unsigned __int16 *ANE::dumpFwStatsData(unsigned __int16 *result)
{
  if (result)
  {
    v1 = result;
    printf("%s Stats Buffer content:\n", "dumpFwStatsData");
    printf("%s   Version: %d\n", "dumpFwStatsData", *v1);
    printf("%s   programId: %d\n", "dumpFwStatsData", *(v1 + 1));
    printf("%s   processId:%d\n", "dumpFwStatsData", *(v1 + 2));
    printf("%s   procedureId:%d\n", "dumpFwStatsData", *(v1 + 3));
    printf("%s   uuid:0x%llx\n", "dumpFwStatsData", *(v1 + 2));
    printf("%s   priority:%d\n", "dumpFwStatsData", *(v1 + 6));
    result = printf("%s   totDescriptors:%d\n", "dumpFwStatsData", *(v1 + 7));
    if (*(v1 + 7))
    {
      v2 = 0;
      v13 = v1 + 12;
      v14 = v1 + 16;
      v15 = v1;
      do
      {
        v3 = &v14[4 * v2];
        v16 = v2;
        printf("%s descr%d: offset: %x, size: %x\n", "dumpFwStatsData", v2, *v3, v3[1]);
        v4 = *v1;
        if (v4 == 513)
        {
          v10 = (v1 + *v3);
          printf("%s totalEventsSpace: %x \n", "dumpFwDramLogStatsData", *v10);
          printf("%s totEventsReceived: %d \n", "dumpFwDramLogStatsData", v10[1]);
          result = printf("%s totEventsRecorded: %d \n", "dumpFwDramLogStatsData", v10[1]);
          if (v10[1])
          {
            v11 = 0;
            v12 = (v10 + 38);
            do
            {
              printf("%s tid: %d \n", "dumpFwDramLogStatsData", *v12);
              printf("%s nid: %d \n", "dumpFwDramLogStatsData", *v12);
              printf("%s event: %x \n", "dumpFwDramLogStatsData", *(v12 + 3));
              printf("%s aux: %x \n", "dumpFwDramLogStatsData", *(v12 + 1) & 0x1F);
              result = printf("%s timeStamp: %llx \n", "dumpFwDramLogStatsData", *(v12 + 1));
              ++v11;
              v12 += 8;
            }

            while (v11 < v10[1]);
          }
        }

        else if (v4 == 257)
        {
          v5 = *v3;
          v6 = (v1 + v5);
          printf("%s totalEventsSpace: %x \n", "dumpFwDebugLogStatsData", *v6);
          printf("%s totEventsReceived: %d \n", "dumpFwDebugLogStatsData", v6[1]);
          result = printf("%s totEventsRecorded: %d \n", "dumpFwDebugLogStatsData", v6[2]);
          if (v6[2])
          {
            v7 = 0;
            v8 = (v13 + v5);
            do
            {
              printf("%s tid: %d \n", "dumpFwDebugLogStatsData", *(v8 - 3));
              printf("%s nid: %d \n", "dumpFwDebugLogStatsData", *(v8 - 2));
              printf("%s event: %x \n", "dumpFwDebugLogStatsData", *(v8 - 2));
              printf("%s aux: %x \n", "dumpFwDebugLogStatsData", *(v8 - 2));
              v9 = *v8;
              v8 = (v8 + 20);
              result = printf("%s timeStamp: %llx \n", "dumpFwDebugLogStatsData", v9);
              ++v7;
            }

            while (v7 < v6[2]);
          }
        }

        else
        {
          result = printf("%s ERROR: Invalid stats version %u\n", "dumpFwStatsData", *v1);
        }

        v1 = v15;
        v2 = v16 + 1;
      }

      while (v16 + 1 < *(v15 + 7));
    }
  }

  return result;
}

uint64_t ANE::ANERequestReceiver::FrameDone(uint64_t this, void *a2, void *a3, unint64_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    goto LABEL_34;
  }

  if (a4 != 8)
  {
    this = printf("ANERequestReceiver::FrameDone, numArgs=%d doesn't match kernel side size: %d, No action\n", a4, 8);
    goto LABEL_34;
  }

  v5 = a2;
  v6 = this;
  v7 = a3[4] | (a3[3] << 32);
  v8 = a3[1] | (a3[2] << 32);
  v9 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B220C);
  v10 = +[ANEServicesLog handle];
  spid = v9;
  v31 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v10))
    {
      *buf = 134218752;
      v33 = v7;
      v34 = 1024;
      *v35 = 0;
      *&v35[4] = 2048;
      *&v35[6] = v8;
      *&v35[14] = 2048;
      *&v35[16] = a3;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ANERequestReceiverFrameDone", "progHandle=%llx procid=%x transid=%llx args=%llx", buf, 0x26u);
    }
  }

  pthread_mutex_lock((v6 + 176));
  v12 = *(v6 + 368);
  v13 = *(v6 + 376);
  v14 = v12 + 8 * (*(v6 + 392) >> 9);
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = (*v14 + 8 * (*(v6 + 392) & 0x1FFLL));
  }

  v16 = MEMORY[0x1E69E9C10];
  while (1)
  {
    if (v13 == v12)
    {
      v18 = 0;
    }

    else
    {
      v17 = *(v6 + 400) + *(v6 + 392);
      v18 = *(v12 + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF);
    }

    if (v15 == v18)
    {
      v22 = 0;
      goto LABEL_24;
    }

    v19 = *v15;
    if (*v15)
    {
      if (*(v19 + 8256) == v8)
      {
        break;
      }
    }

LABEL_20:
    v15 += 8;
    if (&v15[-*v14] == 4096)
    {
      v21 = *(v14 + 8);
      v14 += 8;
      v15 = v21;
    }

    v12 = *(v6 + 368);
    v13 = *(v6 + 376);
  }

  v20 = *(v19 + 8232);
  if (v20 != v7)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v33 = v8;
      v34 = 2048;
      *v35 = v20;
      *&v35[8] = 2048;
      *&v35[10] = v7;
      _os_log_error_impl(&dword_1C0446000, v16, OS_LOG_TYPE_ERROR, "Request received for different program!! transactionId=0x%llx, req->programHandle=0x%llx, programHandle=0x%llx\n", buf, 0x20u);
    }

    goto LABEL_20;
  }

  *(v19 + 8288) = a3[6];
  if (*a3 == 768 && (a3[7] - 1) <= 1)
  {
    std::deque<ANE::ANERequestReceiverRequest *>::erase((v6 + 360), v14, v15);
  }

  v7 = *(v19 + 8232);
  v22 = *(v19 + 8240);
  v8 = *(v19 + 8256);
  *(v19 + 8224) = v5;
  if (*(v6 + 32))
  {
    if (*a3 == 770)
    {
      *(v19 + 8264) = a3[7] | 0x1000;
    }

    else
    {
      *(v19 + 8264) = 0;
      if (debugFwStatsData == 1)
      {
        v26 = *(v19 + 8200);
        if (v26)
        {
          if ((*(v19 + 8196) & 0xB) != 0)
          {
            CVPixelBufferLockBaseAddress(v26, 0);
            BaseAddress = CVPixelBufferGetBaseAddress(*(v19 + 8200));
            ANE::dumpFwStatsData(BaseAddress);
            CVPixelBufferUnlockBaseAddress(*(v19 + 8200), 0);
          }
        }
      }
    }

    v28 = objc_autoreleasePoolPush();
    (*(v6 + 32))(*(v6 + 24), v19);
    objc_autoreleasePoolPop(v28);
    if (*a3 == 768 && a3[7] == 1)
    {
      ANE::ANERequestReceiver::releaseRequestBuffers(v29, v19);
      ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(v19);
      MEMORY[0x1C68DA430]();
    }
  }

LABEL_24:
  if (*(v6 + 400))
  {
    ANE::ANERequestReceiver::tickleNoDataTimer(v6);
  }

  else
  {
    ANE::ANERequestReceiver::stopNoDataTimer(v6);
  }

  if (*(v6 + 248) == 1 && !*(v6 + 400))
  {
    dispatch_semaphore_signal(*(v6 + 240));
  }

  pthread_mutex_unlock((v6 + 176));
  v23 = +[ANEServicesLog handle];
  if (v31 < 0xFFFFFFFFFFFFFFFELL)
  {
    v24 = v23;
    v23 = os_signpost_enabled(v23);
    if (v23)
    {
      *buf = 134218752;
      v33 = v7;
      v34 = 1024;
      *v35 = v22;
      *&v35[4] = 2048;
      *&v35[6] = v8;
      *&v35[14] = 2048;
      *&v35[16] = a3;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v24, OS_SIGNPOST_INTERVAL_END, spid, "ANERequestReceiverFrameDone", "progHandle=%llx procid=%x transid=%llx args=%llx", buf, 0x26u);
    }
  }

  this = ANE::ANECheckForPendingClose(v23);
LABEL_34:
  v25 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t ANE::ANERequestReceiver::tickleNoDataTimer(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 4);
  sig = this[5].__sig;
  if (sig)
  {
    Current = CFAbsoluteTimeGetCurrent();
    LODWORD(v4) = *&this->__opaque[8];
    CFRunLoopTimerSetNextFireDate(sig, Current + v4 / 1000.0 + 30.0);
  }

  return pthread_mutex_unlock(this + 4);
}

uint64_t ANE::ANERequestReceiver::NoDataTimeout(ANE::ANERequestReceiver *this, __CFRunLoopTimer *a2, void *a3)
{
  pthread_mutex_lock((a2 + 176));
  v4 = *(a2 + 46);
  v5 = *(a2 + 47);
  v6 = &v4[*(a2 + 49) >> 9];
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 8 * (*(a2 + 49) & 0x1FFLL));
  }

  while (1)
  {
    if (v5 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(a2 + 50) + *(a2 + 49);
      v9 = *(v4 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF);
    }

    if (v7 == v9)
    {
      break;
    }

    v10 = *v7;
    if (*v7)
    {
      *(v10 + 8224) = -536870186;
      *(v10 + 8264) = 0;
      (*(a2 + 4))(*(a2 + 3), v10);
      v11 = *(v10 + 4080);
      if (v11)
      {
        for (i = 0; i < v11; ++i)
        {
          v13 = *(v10 + 8 * i);
          if (v13)
          {
            CFRelease(v13);
            v11 = *(v10 + 4080);
          }
        }
      }

      *(v10 + 4080) = 0;
      v14 = *(v10 + 8168);
      if (v14)
      {
        for (j = 0; j < v14; ++j)
        {
          v16 = *(v10 + 4088 + 8 * j);
          if (v16)
          {
            CFRelease(v16);
            v14 = *(v10 + 8168);
          }
        }
      }

      *(v10 + 8168) = 0;
      v17 = *(v10 + 0x2000);
      if (v17)
      {
        for (k = 0; k < v17; ++k)
        {
          v19 = *(v10 + 8176 + 8 * k);
          if (v19)
          {
            CFRelease(v19);
            v17 = *(v10 + 0x2000);
          }
        }
      }

      *(v10 + 0x2000) = 0;
      v20 = *(v10 + 8200);
      if (v20)
      {
        CVPixelBufferRelease(v20);
      }

      v21 = *(v10 + 8216);
      if (v21)
      {
        CFRelease(v21);
      }

      *(v10 + 8196) = 0;
      v22 = *(v10 + 8208);
      if (v22)
      {
        CFRelease(v22);
      }

      ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(v10);
      MEMORY[0x1C68DA430]();
    }

    if (++v7 - *v6 == 4096)
    {
      v23 = v6[1];
      ++v6;
      v7 = v23;
    }

    v4 = *(a2 + 46);
    v5 = *(a2 + 47);
  }

  v24 = *(a2 + 5);
  if (v24)
  {
    v24(0, 0, 0, 0, 0, *(a2 + 6));
    v4 = *(a2 + 46);
    v5 = *(a2 + 47);
  }

  *(a2 + 50) = 0;
  v25 = v5 - v4;
  if (v25 >= 3)
  {
    do
    {
      operator delete(*v4);
      v26 = *(a2 + 47);
      v4 = (*(a2 + 46) + 8);
      *(a2 + 46) = v4;
      v25 = (v26 - v4) >> 3;
    }

    while (v25 > 2);
  }

  if (v25 == 1)
  {
    v27 = 256;
  }

  else
  {
    if (v25 != 2)
    {
      goto LABEL_43;
    }

    v27 = 512;
  }

  *(a2 + 49) = v27;
LABEL_43:

  return pthread_mutex_unlock((a2 + 176));
}

void *std::deque<ANE::ANERequestReceiverRequest *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANE::ANERequestReceiverRequest **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<ANE::ANERequestReceiverRequest **>::emplace_back<ANE::ANERequestReceiverRequest **&>(a1, &v10);
}

void sub_1C0462704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<ANE::ANERequestReceiverRequest **>::emplace_back<ANE::ANERequestReceiverRequest **&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<ANE::ANERequestReceiverRequest **>>(result, v11);
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

const void **std::__split_buffer<ANE::ANERequestReceiverRequest **>::emplace_front<ANE::ANERequestReceiverRequest **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<ANE::ANERequestReceiverRequest **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<ANE::ANERequestReceiverRequest **>::emplace_back<ANE::ANERequestReceiverRequest **>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<ANE::ANERequestReceiverRequest **>>(result[4], v11);
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

const void **std::__split_buffer<ANE::ANERequestReceiverRequest **>::emplace_front<ANE::ANERequestReceiverRequest **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<ANE::ANERequestReceiverRequest **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANE::ANERequestReceiverRequest **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

uint64_t std::deque<ANE::ANERequestReceiverRequest *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<ANE::ANERequestReceiverRequest *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ANE::ANERequestReceiverRequest **,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ANE::ANERequestReceiverRequest **,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ANE::ANERequestReceiverRequest **,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest **,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest **,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest **,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest **,std::__deque_iterator<ANE::ANERequestReceiverRequest *,ANE::ANERequestReceiverRequest **,ANE::ANERequestReceiverRequest *&,ANE::ANERequestReceiverRequest ***,long,512l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

void ANE::ANERequestReceiverBufferPool::ANERequestReceiverBufferPool(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, int a10, int a11, int a12, uint64_t a13, int a14)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *(a1 + 24) = a8;
  *(a1 + 28) = a9;
  *(a1 + 32) = a10;
  *(a1 + 36) = a11;
  *(a1 + 40) = a12;
  v15 = (a1 + 40);
  *(a1 + 44) = a13;
  *(a1 + 52) = a14;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v16 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 72) = Mutable;
  if (Mutable)
  {
    v18 = CFNumberCreate(v16, kCFNumberSInt32Type, v15);
    CFDictionarySetValue(*(a1 + 72), *MEMORY[0x1E6966148], v18);
    CFRelease(v18);
  }

  operator new[]();
}

{
  ANE::ANERequestReceiverBufferPool::ANERequestReceiverBufferPool(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void ANE::ANERequestReceiverBufferPool::~ANERequestReceiverBufferPool(ANE::ANERequestReceiverBufferPool *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    CVPixelBufferPoolRelease(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x1C68DA410](v4, 0x1000C8052888210);
  }
}

uint64_t ANE::ANERequestReceiverBufferPool::activatePool(ANE::ANERequestReceiverBufferPool *this)
{
  v1 = 3758097084;
  if (*(this + 8))
  {
    return 3758097122;
  }

  v3 = ANE::ANECreateCVBufferPool(*(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 6), *(this + 10), *(this + 28), *(this + 8), *(this + 9), *(this + 11), *this < 2u, v7, *(this + 13));
  *(this + 8) = v3;
  if (v3)
  {
    CVPixelBufferPoolScanIOSurfaces();
    v4 = *MEMORY[0x1E695E480];
    v5 = *(this + 8);
    CVPixelBufferPoolPreAllocate();
    return 0;
  }

  return v1;
}

uint64_t ANE::MyCVPixelBufferPoolScanIOSurfacesCallback(ANE *this, __IOSurface *a2, ANE::ANERequestReceiverBufferPool *a3)
{
  if (this && a2)
  {
    if (*(a2 + 22) >= *(a2 + 10))
    {
      printf("%s: ERROR: all surfaceIds are populated\n", "void *ANE::MyCVPixelBufferPoolScanIOSurfacesCallback(IOSurfaceRef, ANERequestReceiverBufferPool *)");
    }

    else
    {
      *(*(a2 + 10) + 4 * (*(a2 + 22))++) = IOSurfaceGetID(this);
    }
  }

  return 0;
}

uint64_t ANE::ANERequestReceiverBufferPool::deactivatePool(ANE::ANERequestReceiverBufferPool *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    return 3758097122;
  }

  CVPixelBufferPoolRelease(v2);
  result = 0;
  *(this + 8) = 0;
  return result;
}

uint64_t ANE::ANERequestReceiverBufferPool::allocateBuffer(ANE::ANERequestReceiverBufferPool *this, __CVBuffer **a2)
{
  v2 = 3758097085;
  if (!a2)
  {
    return 3758097090;
  }

  *a2 = 0;
  pixelBufferOut = 0;
  v5 = *(this + 8);
  if (!v5)
  {
    return 3758097086;
  }

  v6 = MEMORY[0x1E695E480];
  if (*(this + 60) == 1)
  {
    if (*(this + 9))
    {
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, this + 40);
      CFDictionarySetValue(*(this + 9), *MEMORY[0x1E6966148], v7);
      CFRelease(v7);
      v5 = *(this + 8);
    }

    *(this + 60) = 0;
  }

  CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*v6, v5, *(this + 9), &pixelBufferOut);
  if (pixelBufferOut)
  {
    v2 = 0;
    *a2 = pixelBufferOut;
  }

  return v2;
}

uint64_t ANE::ANERequestReceiverBufferPool::ModifyBufferCount(ANE::ANERequestReceiverBufferPool *this, int a2)
{
  v3 = 3758097085;
  if (!*(this + 8))
  {
    return 3758097086;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(this + 10) + a2;
  if (!v4)
  {
    return 3758097090;
  }

  v5 = *MEMORY[0x1E695E480];
  if (!CVPixelBufferPoolSetMinBufferCount())
  {
    v3 = 0;
    *(this + 10) = v4;
    *(this + 60) = 1;
  }

  return v3;
}

uint64_t ANEDebugWork::RPCFileInfo(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 == 1 && a2[1] == 140)
  {
    v3 = *a2;
    operator new[]();
  }

  return 3;
}

uint64_t ANEDebugWork::RPCFileRead(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3 == 2 && a2[1] == 140)
  {
    v3 = *a2;
    operator new[]();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 3;
}

uint64_t ANEDebugWork::RPCFileWrite(uint64_t a1, uint64_t *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v3 = a2[1];
    if (v3 == 140)
    {
      v4 = *a2;
      operator new[]();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "RPCFileWrite";
      v13 = 2048;
      v14 = 140;
      v15 = 2048;
      v16 = v3;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "ANE %s: Buffer size does not match expected value (expected %ld, recv %lld)\n";
      v8 = 32;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "RPCFileWrite";
    v13 = 1024;
    LODWORD(v14) = a3;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "ANE %s: Number of buffers is not 2 (%d)\n";
    v8 = 18;
LABEL_8:
    _os_log_impl(&dword_1C0446000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 3;
}

uint64_t ANEDebugWork::FirmwareRPC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = a1;
    v4 = 0;
    v5 = (a2 + 680);
    v6 = (a2 + 96);
    do
    {
      v7 = *(v6 - 15);
      switch(v7)
      {
        case 6:
          a1 = ANEDebugWork::RPCFileWrite(a1, v5, *v6);
          break;
        case 5:
          a1 = ANEDebugWork::RPCFileRead(a1, v5, *v6);
          break;
        case 4:
          a1 = ANEDebugWork::RPCFileInfo(a1, v5, *v6);
          break;
        default:
          a1 = 5;
          break;
      }

      *(v6 - 12) = a1;
      ++*(v3 + 56);
      ++v4;
      v5 += 30;
      v6 += 16;
    }

    while (v4 < *(a2 + 32));
  }

  return 0;
}

void ANEDebugWork::ANEDebugWork(ANEDebugWork *this)
{
  *(this + 14) = 0;
}

{
  *(this + 14) = 0;
}

void ANE::ANEDebugWorkProcessor::ANEDebugWorkProcessor(ANE::ANEDebugWorkProcessor *this, ANE::ANEServicesDevice *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 29) = 0;
  *(this + 30) = a2;
  *(this + 33) = 0;
  *(this + 34) = 0x4000000000000000;
  pthread_mutex_init((this + 16), 0);
  pthread_mutex_init((this + 144), 0);
  *(this + 26) = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init((this + 80), &v3);
  pthread_mutexattr_destroy(&v3);
  mach_timebase_info((this + 252));
  operator new();
}

void ANE::ANEDebugWorkProcessor::~ANEDebugWorkProcessor(ANE::ANEDebugWorkProcessor *this)
{
  if (*this)
  {
    ANE::ANEDebugWorkProcessor::stopReceive(this);
  }

  if (*(this + 29))
  {
    ANE::ANEDebugWorkProcessor::removeIODispatcherFromRunLoop(this);
  }

  v2 = *(this + 33);
  if (v2)
  {
    v3 = *(this + 1);
    RunLoopSource = ANE::ANECFLocalMessagePort::GetRunLoopSource(v2);
    CFRunLoopRemoveSource(v3, RunLoopSource, *MEMORY[0x1E695E8E0]);
    v5 = *(this + 33);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 33) = 0;
  }

  v6 = *(this + 35);
  if (v6)
  {
    ANEDebugWork::~ANEDebugWork(v6);
    MEMORY[0x1C68DA430]();
  }

  pthread_mutex_destroy((this + 16));
  pthread_mutex_destroy((this + 80));
  pthread_mutex_destroy((this + 144));
}

uint64_t ANE::ANEDebugWorkProcessor::stopReceive(ANE::ANEDebugWorkProcessor *this)
{
  pthread_mutex_lock((this + 16));
  if (*this)
  {
    ANE::ANEDebugWorkProcessor::stopNoDataTimer(this);
    pthread_mutex_lock((this + 80));
    *(this + 248) = 1;
    pthread_mutex_unlock((this + 80));
    v2 = ANE::ANEServicesDevice::ANE_UnregisterDebugWorkProcessor(*(this + 30), *(this + 56));
    *(this + 248) = 0;
    *this = 0;
  }

  else
  {
    v2 = 3758097122;
  }

  pthread_mutex_unlock((this + 16));
  return v2;
}

void ANE::ANEDebugWorkProcessor::removeIODispatcherFromRunLoop(ANE::ANEDebugWorkProcessor *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x1E695E8E0]);
    CFRelease(*(this + 29));
    *(this + 29) = 0;
  }

  v3 = *(this + 27);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 27));
    *(this + 27) = 0;
  }

  v4 = *(this + 56);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 1u, -1);
    *(this + 56) = 0;
  }
}

uint64_t ANE::ANEDebugWorkProcessor::setupDebugWorkProcessor(ANE::ANEDebugWorkProcessor *this)
{
  *(this + 1) = CFRunLoopGetCurrent();

  return ANE::ANEDebugWorkProcessor::addIODispatcherToRunLoop(this);
}

uint64_t ANE::ANEDebugWorkProcessor::addIODispatcherToRunLoop(ANE::ANEDebugWorkProcessor *this)
{
  v2 = IOCreateReceivePort(0x39u, this + 56);
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v4 = *MEMORY[0x1E695E480];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x1E695E480], *(this + 56), MEMORY[0x1E696CCD0], &context, &shouldFreeInfo);
    *(this + 27) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 29) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(this + 1), RunLoopSource, *MEMORY[0x1E695E8E0]);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t ANE::ANEDebugWorkProcessor::startReceive(ANE::ANEDebugWorkProcessor *this)
{
  puts("ANEDebugWorkProcessor::startReceive");
  pthread_mutex_lock((this + 16));
  if (*this == 1)
  {
    pthread_mutex_unlock((this + 16));
    return 3758097122;
  }

  else
  {
    *(this + 248) = 0;
    *this = 1;
    inputStruct[0] = ANE::ANEDebugWorkProcessor::WorkReady;
    inputStruct[1] = this;
    v5 = *(this + 56);
    v2 = ANE::ANEServicesDevice::ANE_RegisterDebugWorkProcessor(*(this + 30), inputStruct);
    pthread_mutex_unlock((this + 16));
  }

  return v2;
}

uint64_t ANE::ANEDebugWorkProcessor::stopNoDataTimer(ANE::ANEDebugWorkProcessor *this)
{
  pthread_mutex_lock((this + 144));
  v2 = *(this + 26);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 26));
    *(this + 26) = 0;
  }

  return pthread_mutex_unlock((this + 144));
}

uint64_t ANE::ANEDebugWorkProcessor::tickleNoDataTimer(ANE::ANEDebugWorkProcessor *this)
{
  pthread_mutex_lock((this + 144));
  v2 = *(this + 26);
  if (v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v2, Current + *(this + 34));
  }

  return pthread_mutex_unlock((this + 144));
}

uint64_t ANE::ANEDebugWorkProcessor::startNoDataTimer(ANE::ANEDebugWorkProcessor *this)
{
  pthread_mutex_lock((this + 144));
  v2 = *(this + 26);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 26));
    *(this + 26) = 0;
  }

  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = CFRunLoopTimerCreate(0, Current + *(this + 34), 0.0, 0, 0, ANE::ANEDebugWorkProcessor::NoDataTimeout, &context);
  *(this + 26) = v4;
  if (v4)
  {
    CFRunLoopAddTimer(*(this + 1), v4, *MEMORY[0x1E695E8E0]);
  }

  return pthread_mutex_unlock((this + 144));
}

uint64_t ANE::ANEDebugWorkProcessor::SetFrameDoneTimeoutDuration(ANE::ANEDebugWorkProcessor *this, double a2)
{
  if (a2 < 2.0)
  {
    a2 = 2.0;
  }

  *(this + 34) = a2;
  ANE::ANEDebugWorkProcessor::tickleNoDataTimer(this);
  return 0;
}

uint64_t ANE::ANEDebugWorkProcessor::FlushSurfaceCache(ANE::ANEDebugWorkProcessor *this)
{
  pthread_mutex_lock((this + 16));
  ANE::ANEServicesDevice::ANE_ReleaseDebugWorkProcessorBuffers(*(this + 30), *(this + 56));
  pthread_mutex_unlock((this + 16));
  return 0;
}

uint64_t ANE::CreateANEDebugWorkProcessor(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(&v13);
  v2 = *(a1 + 8);
  v12[0] = 0;
  v12[1] = v2;
  v12[2] = &v13;
  v3 = pthread_attr_init(&v14);
  if (v3)
  {
    printf("pthread_attr_init() failed. Error: %d\n", v3);
    goto LABEL_12;
  }

  v10 = 47;
  if (pthread_attr_setschedparam(&v14, &v10))
  {
    printf("pthread_attr_setschedparam() failed. Error: %d\n");
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (pthread_attr_setdetachstate(&v14, 2))
  {
    printf("pthread_attr_setdetachstate() failed. Error: %d\n");
    goto LABEL_9;
  }

  if (pthread_create(&v11, &v14, ANE::ANEDebugWorkProcessorThreadStart, v12))
  {
    printf("pthread_create() failed. Error: %d\n");
    goto LABEL_9;
  }

  v4 = 1;
LABEL_10:
  pthread_attr_destroy(&v14);
  if (v4)
  {
    ANE::ANEThreadReadySyncer::wait(&v13);
    v5 = 1;
    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
LABEL_13:
  v6 = v12[0];
  **a1 = v12[0];
  if ((v5 & (v6 != 0)) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3758097084;
  }

  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v13);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1C04644D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(va);
  _Unwind_Resume(a1);
}

void ANE::ANEDebugWorkProcessorThreadStart(uint64_t a1)
{
  pthread_setname_np("ANEDebugWorkProcessorThread");
  ANE::ANEThreadReadySyncer::lock(*(a1 + 16));
  operator new();
}

uint64_t ANE::DestroyANEDebugWorkProcessor(ANE *this, ANE::ANEDebugWorkProcessor *a2)
{
  v3 = *(this + 1);
  CFRetain(v3);
  ANE::ANEDebugWorkProcessor::~ANEDebugWorkProcessor(this);
  MEMORY[0x1C68DA430]();
  CFRunLoopStop(v3);
  CFRelease(v3);
  return 0;
}

double ANEMetrics::AddSample(ANEMetrics *this, uint64_t a2, unint64_t a3)
{
  v3 = *this;
  result = 0.0;
  if (a2 - 1 < a3 && v3 != 0)
  {
    v6 = *(this + 4);
    *(v3 + 8 * v6) = a3 - a2;
    v8 = *(this + 2);
    v7 = *(this + 3);
    *(this + 4) = (v6 + 1) % v8;
    if (v7 < v8)
    {
      *(this + 3) = v7 + 1;
    }

    return ((a3 - a2) * *(this + 8) / *(this + 9)) / 1000000.0;
  }

  return result;
}

void *ANEMetrics::StartTimer(void *this)
{
  if (*this)
  {
    v1 = this;
    if (!this[3])
    {
      this = mach_absolute_time();
      v1[3] = this;
    }
  }

  return this;
}

double ANEMetrics::StopTimer(ANEMetrics *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0.0;
  }

  v3 = mach_absolute_time();
  result = ANEMetrics::AddSample(this, v1, v3);
  *(this + 3) = 0;
  return result;
}

double ANEMetrics::GetMetricsSummary(_DWORD *a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v4 = a1[2];
    v3 = a1[3];
    *a2 = v3;
    *(a2 + 4) = v4;
    *(a2 + 8) = a1[4];
    if (v3)
    {
      operator new[]();
    }
  }

  return result;
}

void ANEMetrics::PrintMetricsSummary(ANEMetrics *this)
{
  v10 = *MEMORY[0x1E69E9840];
  ANEMetrics::GetMetricsSummary(this, v2);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v9) = v2[0];
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, " Number of samples: %d", buf, 8u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v9) = v2[1];
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, " Maximum samples:   %d", buf, 8u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, " Minimum time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v4;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, " Maximum time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, " Average time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v6;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, " Median time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v7;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, " Standard deviation (ms): %.3f", buf, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t ANEMetrics::ClearSamples(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 16) = 0;
  return this;
}

void ANEMetrics::ANEMetrics(ANEMetrics *this, int a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = a2;
  *(this + 3) = 0;
  operator new[]();
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = a2;
  *(this + 3) = 0;
  operator new[]();
}

void ANEMetrics::~ANEMetrics(ANEMetrics *this)
{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x1C68DA410](v1, 0x1000C8000313F17);
  }
}

{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x1C68DA410](v1, 0x1000C8000313F17);
  }
}

uint64_t ANEServicesDeviceUpdateParameters(uint64_t a1, int *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceUpdateParameters_cold_3();
    }

    return 2;
  }

  if (*(v2 + 32) != 1)
  {
    if (!a2)
    {
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceUpdateParameters_cold_1();
    }

    return 2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEServicesDeviceUpdateParameters_cold_2(a2);
  }

  return 20;
}

uint64_t ANEServicesProgramPrepare(uint64_t a1, int *a2, char a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = 2;
  if (!a1 || !a2)
  {
    goto LABEL_43;
  }

  if (a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = *(*v6 + 16);
      v8 = *(v7 + 8);
      if (v8)
      {
        if (*(v7 + 32) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ANEServicesProgramPrepare_cold_4();
          }

          v3 = 20;
          goto LABEL_43;
        }

        v9 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2410);
        v10 = +[ANEServicesLog handle];
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = v10;
          if (os_signpost_enabled(v10))
          {
            v12 = *(a1 + 112);
            v13 = *a2;
            *v25 = 134218240;
            *&v25[4] = v12;
            v26 = 1024;
            *v27 = v13;
            _os_signpost_emit_with_name_impl(&dword_1C0446000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ServicesProgramPrepare", "progHandle=%llx priority=%x", v25, 0x12u);
          }
        }

        v14 = *a2;
        *(v6 + 3552) = *a2;
        if ((v14 & 0xFE) != 0)
        {
          if (v14 < 8u)
          {
            goto LABEL_29;
          }

          v15 = 7;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ANEServicesProgramPrepare_cold_2();
          }

          v15 = 2;
        }

        *(v6 + 3552) = v15;
LABEL_29:
        v16 = a2[2];
        *(v6 + 3556) = v16;
        *v25 = *(v6 + 3496);
        v25[8] = *(a2 + 12);
        v17 = *(a1 + 168);
        v29 = v16;
        v30 = v17;
        v25[9] = (a2[1] & 4) != 0;
        *&v27[2] = *(a2 + 2);
        v25[10] = 1;
        v3 = ANE::ANEServicesDevice::ANE_ProgramPrepare(v8, v25);
        if (v3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ANEServicesProgramPrepare_cold_3();
          }

          if (v3 <= -536870187)
          {
            if (v3 <= -536870207)
            {
              if (v3 > -536870211)
              {
                if (v3 == -536870210)
                {
                  v3 = 5;
                  goto LABEL_40;
                }

                if (v3 == -536870207)
                {
                  v3 = 20;
                  goto LABEL_40;
                }
              }

              else
              {
                if (v3 == -536870911)
                {
                  v3 = 31;
                  goto LABEL_40;
                }

                if (v3 == -536870211)
                {
                  v3 = 1;
                  goto LABEL_40;
                }
              }
            }

            else if (v3 <= -536870202)
            {
              if (v3 == -536870206)
              {
                v3 = 2;
                goto LABEL_40;
              }

              if (v3 == -536870203)
              {
                v3 = 30;
                goto LABEL_40;
              }
            }

            else
            {
              switch(v3)
              {
                case 0xE00002C7:
                  v3 = 24;
                  goto LABEL_40;
                case 0xE00002D1:
                  v3 = 19;
                  goto LABEL_40;
                case 0xE00002D2:
                  v3 = 32;
                  goto LABEL_40;
              }
            }
          }

          else if (v3 > -536870170)
          {
            if (v3 <= -536870164)
            {
              if (v3 == -536870169)
              {
                v3 = 29;
                goto LABEL_40;
              }

              if (v3 == -536870165)
              {
                v3 = 21;
                goto LABEL_40;
              }
            }

            else
            {
              switch(v3)
              {
                case 0xE00002ED:
                  v3 = 27;
                  goto LABEL_40;
                case 0xE00002EE:
                  v3 = 28;
                  goto LABEL_40;
                case 0xE00002F0:
                  v3 = 4;
                  goto LABEL_40;
              }
            }
          }

          else if (v3 <= -536870177)
          {
            if (v3 == -536870186)
            {
              v3 = 15;
              goto LABEL_40;
            }

            if (v3 == -536870184)
            {
              v3 = 22;
              goto LABEL_40;
            }
          }

          else
          {
            switch(v3)
            {
              case 0xE00002E0:
                v3 = 26;
                goto LABEL_40;
              case 0xE00002E2:
                v3 = 23;
                goto LABEL_40;
              case 0xE00002E3:
                v3 = 10;
LABEL_40:
                v19 = +[ANEServicesLog handle];
                if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v20 = v19;
                  if (os_signpost_enabled(v19))
                  {
                    v21 = *(a1 + 112);
                    v22 = *a2;
                    *v25 = 134218240;
                    *&v25[4] = v21;
                    v26 = 1024;
                    *v27 = v22;
                    _os_signpost_emit_with_name_impl(&dword_1C0446000, v20, OS_SIGNPOST_INTERVAL_END, v9, "ServicesProgramPrepare", "progHandle=%llx priority=%x", v25, 0x12u);
                  }
                }

                goto LABEL_43;
            }
          }

          v3 = 18;
          goto LABEL_40;
        }

        *(a1 + 152) = v28;
        *(v6 + 3480) = 0;
        v18 = *(a2 + 1);
        *(v6 + 3448) = *a2;
        *(v6 + 3464) = v18;
        goto LABEL_40;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramPrepare_cold_5();
      }

      v3 = 8;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramPrepare_cold_6();
      }

      v3 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramPrepare_cold_1();
    }

    v3 = 3;
  }

LABEL_43:
  v23 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANE::IOReturnToANEReturn(uint64_t this)
{
  if (this <= -536870185)
  {
    if (this > -536870204)
    {
      if (this <= -536870192)
      {
        if (this == -536870203)
        {
          return 30;
        }

        if (this == -536870201)
        {
          return 24;
        }
      }

      else
      {
        switch(this)
        {
          case 0xE00002D1:
            return 19;
          case 0xE00002D2:
            return 32;
          case 0xE00002D6:
            return 15;
        }
      }
    }

    else if (this <= -536870211)
    {
      if (this == -536870911)
      {
        return 31;
      }

      if (this == -536870211)
      {
        return 1;
      }
    }

    else
    {
      switch(this)
      {
        case 0xE00002BE:
          return 5;
        case 0xE00002C1:
          return 20;
        case 0xE00002C2:
          return 2;
      }
    }

    return 18;
  }

  if (this <= -536870166)
  {
    if (this <= -536870175)
    {
      if (this == -536870184)
      {
        return 22;
      }

      if (this == -536870176)
      {
        return 26;
      }
    }

    else
    {
      switch(this)
      {
        case 0xE00002E2:
          return 23;
        case 0xE00002E3:
          return 10;
        case 0xE00002E7:
          return 29;
      }
    }

    return 18;
  }

  if (this <= -536870163)
  {
    if (this == -536870165)
    {
      return 21;
    }

    if (this == -536870163)
    {
      return 27;
    }

    return 18;
  }

  if (this == -536870162)
  {
    return 28;
  }

  if (this == -536870160)
  {
    return 4;
  }

  if (this)
  {
    return 18;
  }

  return this;
}