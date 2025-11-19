void sub_18F754694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        v2[4] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_18F754890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>::operator[](uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_10:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = *(v2 + 16);
      if (v3 >= v6)
      {
        break;
      }

LABEL_4:
      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_10;
      }
    }

    if (v3 <= v6)
    {
      v7 = *(v5 + 17);
      if (v4 < v7)
      {
        goto LABEL_4;
      }

      if (v7 >= v4)
      {
        return (v5 + 5);
      }
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_10;
    }
  }
}

void sub_18F754A0C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x193ADF1F0](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void std::vector<std::shared_ptr<char []>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
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
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
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

uint64_t std::__shared_ptr_pointer<char  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x193ADF1F0);
  }

  return result;
}

void std::__shared_ptr_pointer<char  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataStreamFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataTrackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EB60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F754E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F755030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AudioMetadataBlockFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataChannelFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EAB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F7552E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<anonymous namespace::FormatID>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 2;
    if ((v6 + 1) >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (4 * v6);
    *v10 = *a2;
    v5 = 4 * v6 + 4;
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

void std::__shared_ptr_emplace<AudioMetadataPackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned short,std::vector<unsigned short>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
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

uint64_t anonymous namespace::decode_double(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, double *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 8;
  if (v5 <= a2)
  {
    v6 = 0;
    v8 = this + *a3;
    v9 = ((*v8 << 56) | (v8[1] << 48) | (v8[2] << 40) | (v8[3] << 32) | (v8[4] << 24) | (v8[5] << 16) | (v8[6] << 8)) + v8[7];
    *a3 = v5;
    *a4 = v9;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "AudioMetadataDeserializer.cpp";
      v14 = 1024;
      v15 = 224;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v12, 0x12u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t anonymous namespace::decode_float(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, float *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 4;
  if (v5 <= a2)
  {
    v6 = 0;
    v8 = bswap32(*(this + *a3));
    *a3 = v5;
    *a4 = v8;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "AudioMetadataDeserializer.cpp";
      v13 = 1024;
      v14 = 310;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v11, 0x12u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t anonymous namespace::decode_string(_anonymous_namespace_ *a1, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 375;
      v12 = "%25s:%-5d ...at string length";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    }
  }

  else
  {
    v13 = *a3;
    v14 = v21;
    if (v21 + *a3 <= a2)
    {
      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      buf[23] = v21;
      v15 = buf;
      if (v21)
      {
        v16 = a1 + v13;
        v17 = v21;
        do
        {
          v18 = *v16++;
          *v15++ = v18;
          --v17;
        }

        while (v17);
      }

      *v15 = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v10 = 0;
      *a4 = *buf;
      *(a4 + 16) = *&buf[16];
      *a3 += v14;
    }

    else
    {
      v10 = 4294900721;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AudioMetadataDeserializer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 379;
        v12 = "%25s:%-5d Metadata serialized element truncated at string content";
        goto LABEL_7;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t anonymous namespace::decode_coordinates(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, uint64_t a4, float *a5)
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  LODWORD(v21) = 0;
  if (v10)
  {
    v12 = v10;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v21) = 136315394;
      v22 = "AudioMetadataDeserializer.cpp";
      v23 = 1024;
      v24 = 189;
      v14 = "%25s:%-5d ...at position x/azimuth";
LABEL_10:
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, &v21 + 4, 0x12u);
    }
  }

  else
  {
    HIDWORD(v20) = 0;
    if (v15)
    {
      v12 = v15;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v21) = 136315394;
        v22 = "AudioMetadataDeserializer.cpp";
        v23 = 1024;
        v24 = 195;
        v14 = "%25s:%-5d ...at position y/elevation";
        goto LABEL_10;
      }
    }

    else
    {
      LODWORD(v20) = 0;
      if (!v12)
      {
        *(a4 + 12) = v5;
        v19 = HIDWORD(v20);
        *a4 = v21;
        *(a4 + 4) = v19;
        *(a4 + 8) = v20;
        goto LABEL_11;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v21) = 136315394;
        v22 = "AudioMetadataDeserializer.cpp";
        v23 = 1024;
        v24 = 201;
        v14 = "%25s:%-5d ...at position z/distance";
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t *std::unordered_map<anonymous namespace::BlockFormatID,anonymous namespace::FormatID>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 1);
  v5 = v3 + v2 + v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 + v2 + v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v10 + 9), *(v10 + 8)) != __PAIR64__(v3, v2) || *(v10 + 5) != v4)
  {
    goto LABEL_18;
  }

  return v10 + 3;
}

uint64_t anonymous namespace::decode_jump_position(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *&v17[1] = 136315394;
      *&v17[5] = "AudioMetadataDeserializer.cpp";
      v18 = 1024;
      v19 = 355;
      v13 = "%25s:%-5d ...at jump position flags";
LABEL_4:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, &v17[1], 0x12u);
    }
  }

  else
  {
    v14 = v17[0];
    *(a4 + 4) = v17[0] >> 7;
    if ((v14 & 0x40) == 0)
    {
      v11 = 0;
      goto LABEL_10;
    }

    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *&v17[1] = 136315394;
        *&v17[5] = "AudioMetadataDeserializer.cpp";
        v18 = 1024;
        v19 = 363;
        v13 = "%25s:%-5d ...at jump position interpolation length";
        goto LABEL_4;
      }
    }
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_18F7561EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F7563B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AudioMetadataZone>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E8F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataMatrixCoefficient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t anonymous namespace::decode_format_refs(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  *&v24[4] = 0;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "AudioMetadataDeserializer.cpp";
      v27 = 1024;
      v28 = 329;
      v13 = "%25s:%-5d ...at format refs count";
      v14 = v12;
      v15 = 18;
LABEL_15:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }
  }

  else
  {
    a4[1] = *a4;
    v16 = *&v24[4];
    if (*&v24[4])
    {
      v17 = 0;
      while (1)
      {
        if (v18)
        {
          v11 = v18;
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          *buf = 136315906;
          v26 = "AudioMetadataDeserializer.cpp";
          v27 = 1024;
          v28 = 337;
          v29 = 1024;
          v30 = v17 + 1;
          v31 = 1024;
          v32 = v16;
          v13 = "%25s:%-5d ...at format ref #%d of %d, major";
          goto LABEL_14;
        }

        if (v20)
        {
          break;
        }

        if (v16 == ++v17)
        {
          goto LABEL_9;
        }
      }

      v11 = v20;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 136315906;
      v26 = "AudioMetadataDeserializer.cpp";
      v27 = 1024;
      v28 = 342;
      v29 = 1024;
      v30 = v17 + 1;
      v31 = 1024;
      v32 = v16;
      v13 = "%25s:%-5d ...at format ref #%d of %d, minor";
LABEL_14:
      v14 = v21;
      v15 = 30;
      goto LABEL_15;
    }

LABEL_9:
    v11 = 0;
  }

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 20;
}

void sub_18F756CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<anonymous namespace::FormatID,anonymous namespace::TrackFormatID>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 20;
}

void std::__shared_ptr_emplace<AudioMetadataTrackUID>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F75731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::decode_content_refs(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  *&v32[2] = 0;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "AudioMetadataDeserializer.cpp";
      v35 = 1024;
      v36 = 168;
      v13 = "%25s:%-5d ...at content refs count";
      v14 = v12;
      v15 = 18;
LABEL_4:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }
  }

  else
  {
    a4[1] = *a4;
    v16 = *&v32[2];
    if (!*&v32[2])
    {
LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }

    v17 = 0;
    while (1)
    {
      *v32 = 0;
      if (v18)
      {
        break;
      }

      v20 = a4[1];
      v19 = a4[2];
      if (v20 >= v19)
      {
        v22 = *a4;
        v23 = v20 - *a4;
        v24 = v23 >> 1;
        if (v23 >> 1 <= -2)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v25 = v19 - v22;
        if (v25 <= v24 + 1)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = v25;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v27);
        }

        *(2 * v24) = *v32;
        v21 = 2 * v24 + 2;
        memcpy(0, v22, v23);
        v28 = *a4;
        *a4 = 0;
        a4[1] = v21;
        a4[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = *v32;
        v21 = (v20 + 1);
      }

      a4[1] = v21;
      if (v16 == ++v17)
      {
        goto LABEL_22;
      }
    }

    v11 = v18;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "AudioMetadataDeserializer.cpp";
      v35 = 1024;
      v36 = 176;
      v37 = 1024;
      v38 = v17 + 1;
      v39 = 1024;
      v40 = v16;
      v13 = "%25s:%-5d ...at content ref #%d of %d";
      v14 = v31;
      v15 = 30;
      goto LABEL_4;
    }
  }

LABEL_23:
  v29 = *MEMORY[0x1E69E9840];
  return v11;
}

void std::__shared_ptr_emplace<AudioMetadataObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F7577B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataContent>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataContent>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataContent>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 a2)
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__shared_ptr_emplace<AudioMetadataContent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F757AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AudioMetadataProgramme>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E9D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t AUv3InstanceBase::MIDIEvent(AUv3InstanceBase *this, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  NextMIDIEvent(v6, &v7);
  (*(*(this + 23) + 16))();
  return 0;
}

void sub_18F757D3C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x18F757D2CLL);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Start(void)::{lambda(void)#1}>(uint64_t a1)
{
  v1 = *(**a1 + 72);
  v7 = 0;
  v2 = [v1 startHardwareAndReturnError:&v7];
  v3 = v7;
  v4 = v3;
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 code];
  }

  return v5;
}

uint64_t AUv3InstanceBase::ScheduleParameters(AUv3InstanceBase *this, const AudioUnitParameterEvent *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v4[0] = &v6;
  v4[1] = &v5;
  v4[2] = this;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::ScheduleParameters(AudioUnitParameterEvent const*,unsigned int)::$_0>, v4);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::ScheduleParameters(AudioUnitParameterEvent const*,unsigned int)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  if (**(*a1 + 8))
  {
    v2 = 0;
    v3 = *(v1 + 16);
    v4 = (**v1 + 16);
    do
    {
      v5 = *(v4 - 1);
      v6 = *(v3 + 176);
      if (v5 == 100)
      {
        (*(v6 + 16))(v6, 1589718640, 0, 1589718640, 1589700000.0);
      }

      else
      {
        v7 = *(v4 - 2);
        v8 = (*(v4 - 4) << 61) | ((*(v4 - 3) & 0x1FFFFFFF) << 32);
        if (v5 == 1)
        {
          (*(v6 + 16))(v6, *v4 | 0xFFFFFFFF00000000, 0, v8 | v7, v4[1]);
        }

        else
        {
          (*(v6 + 16))(v6, *v4 | 0xFFFFFFFF00000000, 0, v8 | v7, v4[2]);
          v10 = *v4;
          v9 = *(v4 + 1);
          (*(*(v3 + 176) + 16))(v4[3]);
        }
      }

      ++v2;
      v4 += 8;
    }

    while (v2 < **(v1 + 8));
  }

  return 0;
}

uint64_t AUv3InstanceBase::Render(AUv3InstanceBase *this, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, uint64_t a5, AudioBufferList *a6)
{
  v7 = *(this + 21);
  if (!v7)
  {
    return 4294967292;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN17AUv3RenderAdapter6RenderERjRK14AudioTimeStampjjR15AudioBufferList_block_invoke;
  v9[3] = &__block_descriptor_40_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
  v9[4] = this + 136;
  return (*(v7 + 16))(v7, a2, a3, a5, a4, a6, v9);
}

uint64_t AUv3InstanceBase::SetParameter(AUv3InstanceBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5, int a6)
{
  v15 = a5;
  v14 = a6;
  v8 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID((this + 200), a3, a4, a2);
  v13 = v8;
  if (v8)
  {
    if (*(this + 80) == 1)
    {
      v12[0] = &v13;
      v12[1] = this;
      v12[2] = &v15;
      v12[3] = &v14;
      v10 = AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::$_0>, v12);
    }

    else
    {
      *&v9 = a5;
      [v8 setValue:10 originator:v9];
      v10 = 0;
    }
  }

  else
  {
    v10 = 4294956418;
  }

  return v10;
}

id AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(AUv3InstanceBase::ParameterMap *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(this);
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v8 = *(this + 3);
  v9 = *(this + 4);
  if (v9 == v8)
  {
    goto LABEL_16;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4);
  do
  {
    v11 = v10 >> 1;
    v12 = &v8[6 * (v10 >> 1)];
    v13 = *v12 < a2;
    if (*v12 == a2)
    {
      v14 = v12[1];
      v15 = v14 == a3;
      v13 = v14 < a3;
      if (v15)
      {
        v13 = v12[2] < a4;
      }
    }

    v16 = (v12 + 12);
    v10 += ~v11;
    if (v13)
    {
      v8 = v16;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v8 != v9 && *v8 == a2 && *(v8 + 1) == a3 && *(v8 + 2) == a4)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 2);
  }

  else
  {
LABEL_16:
    WeakRetained = 0;
  }

  objc_destroyWeak(v19 + 1);

  return WeakRetained;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::$_0>(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = AUv3InstanceBase::sAUParameter_address(***a1, AUv3InstanceBase::sSel_address);
  add = atomic_fetch_add(v2 + 94, 1u);
  v5 = add + 1;
  if (add == -1)
  {
    v5 = atomic_fetch_add(v2 + 94, 1u) + 1;
  }

  (*(v2 + 48))(*(v2 + 9), AUv3InstanceBase::sSel_SetV2Parameter, v3, *v1[3], v5, *v1[2]);
  return 0;
}

uint64_t AUv3InstanceBase::ParameterMap::checkCacheParameters(uint64_t this)
{
  v49[16] = *MEMORY[0x1E69E9840];
  v1 = (this + 16);
  v2 = atomic_load((this + 16));
  if ((v2 & 1) == 0)
  {
    v3 = this;
    os_unfair_recursive_lock_lock_with_options();
    v4 = atomic_load(v1);
    if ((v4 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(v3);
      v6 = [WeakRetained parameterTree];

      if (v6)
      {
        v44 = [v6 _autoCreatedForV2AU] != 0;
        memset(v42, 0, sizeof(v42));
        v43 = 1065353216;
        v7 = [v6 allParameters];
        v9 = *(v3 + 24);
        v8 = *(v3 + 32);
        if (v8 != v9)
        {
          do
          {
            v10 = v8 - 48;
            objc_destroyWeak((v8 - 32));
            v8 = v10;
          }

          while (v10 != v9);
        }

        v11 = *(v3 + 48);
        *(v3 + 32) = v9;
        v12 = *(v3 + 56);
        if (v12 != v11)
        {
          do
          {
            v13 = v12 - 48;
            objc_destroyWeak((v12 - 32));
            v12 = v13;
          }

          while (v13 != v11);
        }

        v14 = *(v3 + 104);
        *(v3 + 56) = v11;
        std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(v14);
        *(v3 + 104) = 0;
        *(v3 + 112) = 0;
        *(v3 + 96) = v3 + 104;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve((v3 + 24), [v7 count]);
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve((v3 + 48), [v7 count]);
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve(&v39, [v7 count]);
        v36[4] = &v39;
        v37 = 0;
        v38 = 0;
        v36[0] = &v44;
        v36[1] = v42;
        v36[2] = &v37;
        v36[3] = v3;
        v15 = v6;
        AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0::operator()(v36, 0, v15);
        if ([v15 isGroup])
        {
          v16 = v15;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v17 = [v16 children];
          v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v18)
          {
            v19 = *v46;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v46 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v45 + 1) + 8 * i);
                TraverseParameterTree<AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0 &>(v16, v21, v36);
              }

              v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
            }

            while (v18);
          }
        }

        v22 = *(v3 + 24);
        v23 = *(v3 + 32);
        v24 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 4));
        v49[0] = AUv3InstanceBase::ScopeElementIDObj::lessByID;
        if (v23 == v22)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v22, v23, v49, v25, 1);
        v26 = *(v3 + 48);
        v27 = *(v3 + 56);
        v28 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4));
        v49[0] = AUv3InstanceBase::ScopeElementIDObj::lessByOriginalOrder;
        if (v27 == v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v28;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v26, v27, v49, v29, 1);
        v30 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 4));
        v49[0] = AUv3InstanceBase::ScopeElementIDObj::lessByAddress;
        if (v40 == v39)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v39, v40, v49, v31, 1);
        v32 = *(*(v3 + 8) + 40);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3321888768;
        v34[2] = ___ZN16AUv3InstanceBase12ParameterMap20checkCacheParametersEv_block_invoke;
        v34[3] = &__block_descriptor_64_ea8_32c79_ZTSNSt3__16vectorIN16AUv3InstanceBase17ScopeElementIDObjENS_9allocatorIS2_EEEE_e46_v24__0q8r__AUParameterAutomationEvent_QQfIQ_16l;
        memset(v35, 0, 24);
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::__init_with_size[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj*,AUv3InstanceBase::ScopeElementIDObj*>(v35, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 4));
        v35[3] = v32;
        atomic_store([v15 tokenByAddingParameterAutomationObserver:v34], (v3 + 88));
        objc_storeWeak((v3 + 128), v15);
        atomic_store(1u, (v3 + 16));
        v49[0] = v35;
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](v49);

        v49[0] = &v39;
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](v49);
      }
    }

    this = os_unfair_recursive_lock_unlock();
  }

  v33 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_18F758724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  a19 = &a26;
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&a19);

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

BOOL AUv3InstanceBase::ScopeElementIDObj::lessByID(int *a1, _DWORD *a2)
{
  v3 = *a1;
  result = *a1 < *a2;
  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6;
    if (v5 == v6)
    {
      return a1[2] < a2[2];
    }
  }

  return result;
}

void std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0::operator()(unsigned __int8 **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[3];
  if (([v6 isGroup] & 1) == 0)
  {
    v60 = v7;
    v61 = v5;
    v8 = v6;
    v64 = 0;
    v65 = [v8 _originalOrder];
    if (**a1 == 1)
    {
      v9 = [v8 address];
      LODWORD(v62) = v9 >> 61;
      HIDWORD(v62) = HIDWORD(v9) & 0x1FFFFFFF;
      v63 = v9;
    }

    else
    {
      v10 = [v8 keyPath];
      v11 = [v10 UTF8String];
      v12 = *v11;
      if (*v11)
      {
        v13 = v11 + 1;
        v14 = 5381;
        do
        {
          v14 = 33 * v14 + v12;
          v15 = *v13++;
          v12 = v15;
        }

        while (v15);
      }

      else
      {
        v14 = 5381;
      }

      v16 = a1[1];
      v17 = *(v16 + 1);
      v18 = vcnt_s8(v17);
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v17 - 1;
      v20 = v17 - 1;
      v21 = v14;
LABEL_10:
      if (!v17)
      {
        goto LABEL_40;
      }

      if (v18.u32[0] > 1uLL)
      {
        v22 = v21;
        if (v17 <= v21)
        {
          v22 = v21 % v17;
        }
      }

      else
      {
        v22 = v19 & v21;
      }

      v23 = *(*v16 + 8 * v22);
      if (v23)
      {
        for (i = *v23; i; i = *i)
        {
          v25 = i[1];
          if (v25 == v21)
          {
            if (*(i + 4) == v21)
            {
              ++v21;
              goto LABEL_10;
            }
          }

          else
          {
            if (v18.u32[0] > 1uLL)
            {
              if (v25 >= v17)
              {
                v25 %= v17;
              }
            }

            else
            {
              v25 &= v20;
            }

            if (v25 != v22)
            {
              break;
            }
          }
        }
      }

      if (v18.u32[0] > 1uLL)
      {
        v26 = v21;
        if (v17 <= v21)
        {
          v26 = v21 % v17;
        }
      }

      else
      {
        v26 = v19 & v21;
      }

      v27 = *(*v16 + 8 * v26);
      if (!v27)
      {
LABEL_40:
        operator new();
      }

      do
      {
        while (1)
        {
          v27 = *v27;
          if (!v27)
          {
            goto LABEL_40;
          }

          v28 = v27[1];
          if (v28 == v21)
          {
            break;
          }

          if (v18.u32[0] > 1uLL)
          {
            if (v28 >= v17)
            {
              v28 %= v17;
            }
          }

          else
          {
            v28 &= v20;
          }

          if (v28 != v26)
          {
            goto LABEL_40;
          }
        }
      }

      while (*(v27 + 4) != v21);
      v62 = 0;
      v63 = v21;
    }

    objc_storeWeak(&v64, v8);
    v66 = [v8 address];
    v67 = 0;
    if (v61 && [v61 isGroup])
    {
      v29 = a1[2];
      if (*v29 != v61)
      {
        v30 = **a1;
        v31 = v8;
        v32 = v61;
        v33 = [v32 identifier];
        v34 = [v33 length];

        if (v34)
        {
          v57 = v31;
          v58 = v32;
          if (v30)
          {
            v35 = [v31 _clumpID];
          }

          else
          {
            v37 = [v32 keyPath];
            v38 = [v37 UTF8String];
            v39 = *v38;
            if (*v38)
            {
              v40 = v38 + 1;
              LODWORD(v35) = 5381;
              do
              {
                v35 = (33 * v35 + v39);
                v41 = *v40++;
                v39 = v41;
              }

              while (v41);
            }

            else
            {
              v35 = 5381;
            }
          }

          v43 = v60 + 104;
          v42 = *(v60 + 13);
          v44 = v60 + 104;
          if (!v42)
          {
            goto LABEL_82;
          }

          v45 = v60 + 104;
          do
          {
            v46 = *(v42 + 8);
            v47 = v46 >= v35;
            v48 = v46 < v35;
            if (v47)
            {
              v45 = v42;
            }

            v42 = *&v42[8 * v48];
          }

          while (v42);
          v44 = v60 + 104;
          if (v45 == v43 || (v44 = v60 + 104, v35 < *(v45 + 8)) || (v44 = v45, *(v45 + 5) != v58))
          {
LABEL_82:
            if (!v30)
            {
              goto LABEL_83;
            }

            v49 = [v58 identifier];
            v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clump_%d", v35];
            v51 = [v49 isEqualToString:v50];

            v45 = v44;
            v31 = v57;
            if (v51)
            {
LABEL_83:
              while (1)
              {
                v52 = v58;
                v53 = *v43;
                if (!*v43)
                {
                  break;
                }

                while (1)
                {
                  while (1)
                  {
                    v54 = v53;
                    v55 = *(v53 + 32);
                    if (v35 >= v55)
                    {
                      break;
                    }

                    v53 = *v54;
                    if (!*v54)
                    {
                      goto LABEL_73;
                    }
                  }

                  if (v55 >= v35)
                  {
                    break;
                  }

                  v53 = v54[1];
                  if (!v53)
                  {
                    goto LABEL_73;
                  }
                }

                LODWORD(v35) = v35 + 1;
              }

LABEL_73:
              operator new();
            }
          }

          v36 = *(v45 + 8);
          v32 = v58;
        }

        else
        {
          v36 = 0;
        }

        v56 = a1[2];
        objc_storeStrong(v56, a2);
        *(v56 + 2) = v36;
        v29 = a1[2];
      }

      v67 = *(v29 + 2);
    }

    std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100]((v60 + 24), &v62);
    std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100]((v60 + 48), &v62);
    std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100](a1[4], &v62);
    objc_destroyWeak(&v64);

    v5 = v61;
  }
}

void sub_18F759140(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void TraverseParameterTree<AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0 &>(void *a1, void *a2, unsigned __int8 **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0::operator()(a3, v5, v6);
  if ([v6 isGroup])
  {
    v7 = v6;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 children];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          TraverseParameterTree<AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0 &>(v7, v12, a3);

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
  v160 = a1 - 6;
  while (1)
  {
    v10 = a2 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 4);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        if (!(*a3)(a2 - 6, v9))
        {
          return;
        }

        v72 = v9;
        v73 = a2 - 6;
LABEL_181:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v72, v73);
        return;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      v77 = a2 - 6;
      v78 = (*a3)(v9 + 6, v9);
      v79 = (*a3)(v77, v9 + 6);
      if (v78)
      {
        if (v79)
        {
          v72 = v9;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9, v9 + 6);
          if (!(*a3)(v77, v9 + 6))
          {
            return;
          }

          v72 = v9 + 6;
        }

        v73 = v77;
      }

      else
      {
        if (!v79)
        {
          return;
        }

        v75 = v9 + 6;
        v76 = v77;
LABEL_167:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v75, v76);
        if (!(*a3)(v9 + 6, v9))
        {
          return;
        }

        v73 = v9 + 6;
        v72 = v9;
      }

      goto LABEL_181;
    }

    if (v11 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(v9, v9 + 6, v9 + 12, a2 - 6, a3);
      return;
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_9:
    if (v10 <= 1151)
    {
      if (a5)
      {
        if (v9 != a2)
        {
          v80 = v9 + 6;
          if (v9 + 6 != a2)
          {
            v81 = 0;
            v82 = v9;
            do
            {
              v83 = v80;
              if ((*a3)(v80, v82))
              {
                v84 = a2;
                v85 = *v83;
                v171 = *(v83 + 2);
                v170 = v85;
                objc_moveWeak(&v172, v82 + 8);
                v173 = *(v82 + 9);
                v174 = *(v82 + 22);
                v86 = v81;
                while (1)
                {
                  v87 = v86;
                  v88 = v9 + v86;
                  *(v88 + 6) = *(v9 + v86);
                  *(v88 + 14) = *(v9 + v86 + 8);
                  v89 = (v9 + v86 + 16);
                  WeakRetained = objc_loadWeakRetained(v89);
                  objc_storeWeak(v88 + 8, WeakRetained);

                  *(v88 + 72) = *(v88 + 24);
                  *(v88 + 22) = *(v88 + 10);
                  if (!v87)
                  {
                    break;
                  }

                  v91 = (*a3)(&v170, v88 - 6);
                  v86 = v87 - 48;
                  if ((v91 & 1) == 0)
                  {
                    v92 = (v9 + v87);
                    v93 = v9 + v87;
                    v94 = v9 + v87 + 24;
                    v89 = (v93 + 16);
                    goto LABEL_127;
                  }
                }

                v94 = (v88 + 24);
                v92 = v9;
LABEL_127:
                v95 = v170;
                *(v92 + 2) = v171;
                *v92 = v95;
                v96 = objc_loadWeakRetained(&v172);
                objc_storeWeak(v89, v96);

                v97 = v173;
                *(v94 + 16) = v174;
                *v94 = v97;
                objc_destroyWeak(&v172);
                a2 = v84;
              }

              v80 = v83 + 6;
              v81 += 48;
              v82 = v83;
            }

            while (v83 + 6 != a2);
          }
        }
      }

      else if (v9 != a2)
      {
        v146 = v9 + 6;
        if (v9 + 6 != a2)
        {
          v147 = v9 + 9;
          do
          {
            v148 = v146;
            if ((*a3)(v146, v9))
            {
              v149 = a2;
              v150 = *v148;
              v171 = *(v148 + 2);
              v170 = v150;
              objc_moveWeak(&v172, v9 + 8);
              v173 = *(v9 + 9);
              v174 = *(v9 + 22);
              v151 = v147;
              do
              {
                v152 = v151;
                *(v151 - 3) = *(v151 - 9);
                *(v151 - 4) = *(v151 - 16);
                v153 = (v151 - 7);
                v154 = objc_loadWeakRetained(v151 - 7);
                objc_storeWeak(v151 - 1, v154);

                *v151 = *(v151 - 3);
                *(v151 + 4) = *(v151 - 8);
                v155 = (*a3)(&v170, v151 - 15);
                v151 -= 6;
              }

              while ((v155 & 1) != 0);
              v156 = v152 - 9;
              v157 = v170;
              *(v156 + 2) = v171;
              *v156 = v157;
              v158 = objc_loadWeakRetained(&v172);
              objc_storeWeak(v153, v158);

              v159 = v173;
              *(v152 - 8) = v174;
              *v151 = v159;
              objc_destroyWeak(&v172);
              a2 = v149;
            }

            v146 = v148 + 6;
            v147 += 6;
            v9 = v148;
          }

          while (v148 + 6 != a2);
        }
      }

      return;
    }

    if (!a4)
    {
      if (v9 != a2)
      {
        v98 = (v11 - 2) >> 1;
        v161 = a2;
        v164 = v98;
        do
        {
          v99 = v98;
          if (v164 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v9[6 * v100];
            if (2 * v98 + 2 < v11 && (*a3)(&v9[6 * v100], v101 + 6))
            {
              v101 += 6;
              v100 = 2 * v99 + 2;
            }

            v102 = &v9[6 * v99];
            a2 = v161;
            if (((*a3)(v101, v102) & 1) == 0)
            {
              v103 = *v102;
              v171 = *(v102 + 2);
              v170 = v103;
              objc_moveWeak(&v172, v102 + 2);
              v104 = *(v102 + 3);
              v174 = *(v102 + 10);
              v173 = v104;
              do
              {
                v105 = v101;
                v106 = *v101;
                *(v102 + 2) = *(v101 + 2);
                *v102 = v106;
                v107 = objc_loadWeakRetained(v101 + 2);
                objc_storeWeak(v102 + 2, v107);

                v108 = *(v105 + 3);
                *(v102 + 10) = *(v105 + 10);
                *(v102 + 3) = v108;
                if (v164 < v100)
                {
                  break;
                }

                v109 = (2 * v100) | 1;
                v101 = &v9[6 * v109];
                v100 = 2 * v100 + 2;
                if (v100 >= v11)
                {
                  v100 = v109;
                }

                else if ((*a3)(&v9[6 * v109], v101 + 6))
                {
                  v101 += 6;
                }

                else
                {
                  v100 = v109;
                }

                v102 = v105;
              }

              while (!(*a3)(v101, &v170));
              v110 = v170;
              *(v105 + 2) = v171;
              *v105 = v110;
              v111 = objc_loadWeakRetained(&v172);
              objc_storeWeak(v105 + 2, v111);

              v112 = v173;
              *(v105 + 10) = v174;
              *(v105 + 3) = v112;
              objc_destroyWeak(&v172);
              a2 = v161;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        v113 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);
        do
        {
          v162 = a2;
          if (v113 >= 2)
          {
            v166 = *(v9 + 2);
            v165 = *v9;
            objc_moveWeak(&v167, v9 + 2);
            v114 = 0;
            v115 = *(v9 + 3);
            v169 = *(v9 + 10);
            v168 = v115;
            v116 = v9;
            do
            {
              v117 = &v116[6 * v114];
              v118 = v117 + 6;
              v119 = (2 * v114) | 1;
              v120 = 2 * v114 + 2;
              if (v120 < v113)
              {
                v121 = v117 + 12;
                if ((*a3)(v117 + 6, v117 + 12))
                {
                  v118 = v121;
                  v119 = v120;
                }
              }

              v122 = *v118;
              *(v116 + 2) = *(v118 + 2);
              *v116 = v122;
              v123 = objc_loadWeakRetained(v118 + 2);
              objc_storeWeak(v116 + 2, v123);

              v124 = *(v118 + 3);
              *(v116 + 10) = *(v118 + 10);
              *(v116 + 3) = v124;
              v116 = v118;
              v114 = v119;
            }

            while (v119 <= ((v113 - 2) >> 1));
            v125 = a2 - 6;
            if (v118 == v162 - 6)
            {
              *(v118 + 2) = v166;
              *v118 = v165;
              v143 = objc_loadWeakRetained(&v167);
              objc_storeWeak(v118 + 2, v143);

              v144 = v168;
              *(v118 + 10) = v169;
              *(v118 + 3) = v144;
            }

            else
            {
              v126 = *v125;
              *(v118 + 2) = *(v162 - 10);
              *v118 = v126;
              v127 = objc_loadWeakRetained(v162 - 4);
              objc_storeWeak(v118 + 2, v127);

              v128 = *(v162 - 3);
              *(v118 + 10) = *(v162 - 2);
              *(v118 + 3) = v128;
              *(v162 - 10) = v166;
              *v125 = v165;
              v129 = objc_loadWeakRetained(&v167);
              objc_storeWeak(v162 - 4, v129);

              v130 = v168;
              *(v162 - 2) = v169;
              *(v162 - 3) = v130;
              v131 = v118 - v9 + 48;
              if (v131 >= 49)
              {
                v132 = (-2 - 0x5555555555555555 * (v131 >> 4)) >> 1;
                v133 = &v9[6 * v132];
                if ((*a3)(v133, v118))
                {
                  v134 = *v118;
                  v171 = *(v118 + 2);
                  v170 = v134;
                  objc_moveWeak(&v172, v118 + 2);
                  v135 = *(v118 + 3);
                  v174 = *(v118 + 10);
                  v173 = v135;
                  do
                  {
                    v136 = v133;
                    v137 = *v133;
                    *(v118 + 2) = *(v133 + 2);
                    *v118 = v137;
                    v138 = objc_loadWeakRetained(v133 + 2);
                    objc_storeWeak(v118 + 2, v138);

                    v139 = *(v136 + 3);
                    *(v118 + 10) = *(v136 + 10);
                    *(v118 + 3) = v139;
                    if (!v132)
                    {
                      break;
                    }

                    v132 = (v132 - 1) >> 1;
                    v133 = &v9[6 * v132];
                    v118 = v136;
                  }

                  while (((*a3)(v133, &v170) & 1) != 0);
                  v140 = v170;
                  *(v136 + 2) = v171;
                  *v136 = v140;
                  v141 = objc_loadWeakRetained(&v172);
                  objc_storeWeak(v136 + 2, v141);

                  v142 = v173;
                  *(v136 + 10) = v174;
                  *(v136 + 3) = v142;
                  objc_destroyWeak(&v172);
                }
              }
            }

            objc_destroyWeak(&v167);
          }

          a2 = v162 - 6;
        }

        while (v113-- > 2);
      }

      return;
    }

    v12 = &v9[6 * (v11 >> 1)];
    v13 = *a3;
    if (v10 >= 0x1801)
    {
      v14 = a4;
      v15 = v13(v12, v9);
      v16 = (*a3)(a2 - 6, v12);
      if (v15)
      {
        if (v16)
        {
          v17 = v9;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9, v12);
          if (!(*a3)(a2 - 6, v12))
          {
            goto LABEL_28;
          }

          v17 = &v9[6 * (v11 >> 1)];
        }

        v21 = a2 - 6;
      }

      else
      {
        if (!v16 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, a2 - 6), !(*a3)(v12, v9)))
        {
LABEL_28:
          v23 = (*a3)(v12 - 6, v9 + 6);
          v24 = (*a3)(a2 - 12, v12 - 6);
          if (v23)
          {
            if (v24)
            {
              v25 = v9 + 6;
            }

            else
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 6, v12 - 6);
              if (!(*a3)(a2 - 12, v12 - 6))
              {
                goto LABEL_42;
              }

              v25 = v12 - 6;
            }

            v26 = a2 - 12;
          }

          else
          {
            if (!v24 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12 - 6, a2 - 12), !(*a3)(v12 - 6, v9 + 6)))
            {
LABEL_42:
              v27 = (*a3)(v12 + 6, v9 + 12);
              v28 = (*a3)(a2 - 18, v12 + 6);
              if (v27)
              {
                if (v28)
                {
                  v29 = v9 + 12;
                }

                else
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 12, v12 + 6);
                  if (!(*a3)(a2 - 18, v12 + 6))
                  {
                    goto LABEL_52;
                  }

                  v29 = v12 + 6;
                }

                v30 = a2 - 18;
              }

              else
              {
                if (!v28 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12 + 6, a2 - 18), !(*a3)(v12 + 6, v9 + 12)))
                {
LABEL_52:
                  v31 = (*a3)(v12, v12 - 6);
                  v32 = (*a3)(v12 + 6, v12);
                  if (v31)
                  {
                    if (v32)
                    {
                      v33 = v12 + 6;
                      v34 = v12 - 6;
                    }

                    else
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12 - 6, v12);
                      if (!(*a3)(v12 + 6, v12))
                      {
LABEL_61:
                        v35 = *v9;
                        v171 = *(v9 + 2);
                        v170 = v35;
                        objc_moveWeak(&v172, v9 + 2);
                        v36 = *(v9 + 3);
                        v174 = *(v9 + 10);
                        v173 = v36;
                        v37 = *(v12 + 2);
                        *v9 = *v12;
                        *(v9 + 2) = v37;
                        v38 = objc_loadWeakRetained(v12 + 2);
                        objc_storeWeak(v9 + 2, v38);

                        v39 = *(v12 + 3);
                        *(v9 + 10) = *(v12 + 10);
                        *(v9 + 3) = v39;
                        v40 = v170;
                        *(v12 + 2) = v171;
                        *v12 = v40;
                        v41 = objc_loadWeakRetained(&v172);
                        objc_storeWeak(v12 + 2, v41);

                        v42 = v173;
                        *(v12 + 10) = v174;
                        *(v12 + 3) = v42;
                        objc_destroyWeak(&v172);
                        a4 = v14;
                        goto LABEL_62;
                      }

                      v33 = v12 + 6;
                      v34 = &v9[6 * (v11 >> 1)];
                    }
                  }

                  else
                  {
                    if (!v32)
                    {
                      goto LABEL_61;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, v12 + 6);
                    if (!(*a3)(v12, v12 - 6))
                    {
                      goto LABEL_61;
                    }

                    v34 = v12 - 6;
                    v33 = &v9[6 * (v11 >> 1)];
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v34, v33);
                  goto LABEL_61;
                }

                v29 = v9 + 12;
                v30 = v12 + 6;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v29, v30);
              goto LABEL_52;
            }

            v25 = v9 + 6;
            v26 = v12 - 6;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v25, v26);
          goto LABEL_42;
        }

        v17 = v9;
        v21 = &v9[6 * (v11 >> 1)];
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v17, v21);
      goto LABEL_28;
    }

    v18 = v13(v9, v12);
    v19 = (*a3)(a2 - 6, v9);
    if (v18)
    {
      if (v19)
      {
        v20 = &v9[6 * (v11 >> 1)];
LABEL_36:
        v22 = a2 - 6;
        goto LABEL_37;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, v9);
      if ((*a3)(a2 - 6, v9))
      {
        v20 = v9;
        goto LABEL_36;
      }
    }

    else if (v19)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9, a2 - 6);
      if ((*a3)(v9, v12))
      {
        v20 = &v9[6 * (v11 >> 1)];
        v22 = v9;
LABEL_37:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v20, v22);
      }
    }

LABEL_62:
    --a4;
    if ((a5 & 1) == 0 && ((*a3)(v160, v9) & 1) == 0)
    {
      v58 = *v9;
      v171 = *(v9 + 2);
      v170 = v58;
      objc_moveWeak(&v172, v9 + 2);
      v59 = *(v9 + 3);
      v174 = *(v9 + 10);
      v173 = v59;
      if ((*a3)(&v170, a2 - 6))
      {
        a1 = v9;
        do
        {
          a1 += 6;
        }

        while (((*a3)(&v170, a1) & 1) == 0);
      }

      else
      {
        v60 = v9 + 6;
        do
        {
          a1 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v61 = (*a3)(&v170, v60);
          v60 = a1 + 6;
        }

        while (!v61);
      }

      v62 = a2;
      if (a1 < a2)
      {
        v62 = a2;
        do
        {
          v62 -= 6;
        }

        while (((*a3)(&v170, v62) & 1) != 0);
      }

      while (a1 < v62)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, v62);
        do
        {
          a1 += 6;
        }

        while (!(*a3)(&v170, a1));
        do
        {
          v62 -= 6;
        }

        while (((*a3)(&v170, v62) & 1) != 0);
      }

      v63 = a2;
      v64 = a1 - 6;
      if (a1 - 6 != v9)
      {
        v65 = *v64;
        *(v9 + 2) = *(a1 - 10);
        *v9 = v65;
        v66 = objc_loadWeakRetained(a1 - 4);
        objc_storeWeak(v9 + 2, v66);

        v67 = *(a1 - 3);
        *(v9 + 10) = *(a1 - 2);
        *(v9 + 3) = v67;
      }

      v68 = v170;
      *(a1 - 10) = v171;
      *v64 = v68;
      v69 = objc_loadWeakRetained(&v172);
      objc_storeWeak(a1 - 4, v69);

      v70 = v173;
      *(a1 - 2) = v174;
      *(a1 - 3) = v70;
      objc_destroyWeak(&v172);
      a5 = 0;
      a2 = v63;
      goto LABEL_1;
    }

    v43 = *v9;
    v171 = *(v9 + 2);
    v170 = v43;
    objc_moveWeak(&v172, v9 + 2);
    v44 = *(v9 + 3);
    v174 = *(v9 + 10);
    v173 = v44;
    v45 = v9;
    do
    {
      v45 += 6;
    }

    while (((*a3)(v45, &v170) & 1) != 0);
    v46 = a4;
    v47 = a2;
    if (v45 - 6 == v9)
    {
      v47 = a2;
      do
      {
        if (v45 >= v47)
        {
          break;
        }

        v47 -= 6;
      }

      while (((*a3)(v47, &v170) & 1) == 0);
    }

    else
    {
      do
      {
        v47 -= 6;
      }

      while (!(*a3)(v47, &v170));
    }

    if (v45 >= v47)
    {
      a1 = v45;
    }

    else
    {
      v48 = v47;
      a1 = v45;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, v48);
        do
        {
          a1 += 6;
        }

        while (((*a3)(a1, &v170) & 1) != 0);
        do
        {
          v48 -= 6;
        }

        while (!(*a3)(v48, &v170));
      }

      while (a1 < v48);
    }

    v49 = a1 - 6;
    if (a1 - 6 != v9)
    {
      v50 = *v49;
      *(v9 + 2) = *(a1 - 10);
      *v9 = v50;
      v51 = objc_loadWeakRetained(a1 - 4);
      objc_storeWeak(v9 + 2, v51);

      v52 = *(a1 - 3);
      *(v9 + 10) = *(a1 - 2);
      *(v9 + 3) = v52;
    }

    v53 = v170;
    *(a1 - 10) = v171;
    *v49 = v53;
    v54 = objc_loadWeakRetained(&v172);
    objc_storeWeak(a1 - 4, v54);

    v55 = v173;
    *(a1 - 2) = v174;
    *(a1 - 3) = v55;
    objc_destroyWeak(&v172);
    v56 = v45 >= v47;
    a4 = v46;
    if (!v56)
    {
      goto LABEL_88;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*>(v9, a1 - 6, a3);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*>(a1, a2, a3))
    {
      if (v57)
      {
        goto LABEL_1;
      }

LABEL_88:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v9, a1 - 6, a3, v46, a5 & 1);
      a5 = 0;
      goto LABEL_1;
    }

    a2 = a1 - 6;
    if (v57)
    {
      return;
    }
  }

  v74 = a2 - 6;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(v9, v9 + 6, v9 + 12, v9 + 18, a3);
  if ((*a3)(v74, v9 + 18))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 18, v74);
    if ((*a3)(v9 + 18, v9 + 12))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 12, v9 + 18);
      if ((*a3)(v9 + 12, v9 + 6))
      {
        v75 = v9 + 6;
        v76 = v9 + 12;
        goto LABEL_167;
      }
    }
  }
}

void ___ZN16AUv3InstanceBase12ParameterMap20checkCacheParametersEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      v7 = a3 + 32 * i;
      if (*(v7 + 24))
      {
        v8 = *(v7 + 8);
        v9 = *(v7 + 20);
        v22[0] = 0u;
        v21 = 0u;
        v22[1] = v8;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        if (v11 != v10)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 4);
          do
          {
            v13 = v12 >> 1;
            v14 = &v10[6 * (v12 >> 1)];
            v15 = v14[4];
            v16 = v14 + 6;
            v12 += ~(v12 >> 1);
            if (v15 < v8)
            {
              v10 = v16;
            }

            else
            {
              v12 = v13;
            }
          }

          while (v12);
          if (v10 != v11 && v10[4] == v8)
          {
            if (v9 == 2)
            {
              v17 = kAudioUnitEvent_EndParameterChangeGesture;
            }

            else
            {
              v17 = v9 == 1;
            }

            v20.mEventType = v17;
            v18 = *(v10 + 2);
            v20.mArgument.mParameter.mAudioUnit = *(a1 + 56);
            v19 = *v10;
            v20.mArgument.mParameter.mParameterID = v18;
            *&v20.mArgument.mProperty.mScope = v19;
            AUEventListenerNotify(0, 0, &v20);
          }
        }

        objc_destroyWeak(v22);
      }
    }
  }
}

void std::vector<AUv3InstanceBase::ScopeElementIDObj>::__init_with_size[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj*,AUv3InstanceBase::ScopeElementIDObj*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 6;
        objc_destroyWeak(v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __copy_helper_block_ea8_32c79_ZTSNSt3__16vectorIN16AUv3InstanceBase17ScopeElementIDObjENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__init_with_size[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj*,AUv3InstanceBase::ScopeElementIDObj*>(v2, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
}

BOOL AUv3InstanceBase::ScopeElementIDObj::lessByOriginalOrder(int *a1, _DWORD *a2)
{
  v3 = *a1;
  result = *a1 < *a2;
  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6;
    if (v5 == v6)
    {
      return a1[6] < a2[6];
    }
  }

  return result;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(uint64_t *a1, uint64_t *a2)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  objc_moveWeak(&v10, a1 + 2);
  v11 = *(a1 + 3);
  v12 = *(a1 + 10);
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  WeakRetained = objc_loadWeakRetained(a2 + 2);
  objc_storeWeak(a1 + 2, WeakRetained);

  v6 = *(a2 + 3);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 3) = v6;
  *a2 = v8;
  *(a2 + 2) = v9;
  v7 = objc_loadWeakRetained(&v10);
  objc_storeWeak(a2 + 2, v7);

  *(a2 + 3) = v11;
  *(a2 + 10) = v12;
  objc_destroyWeak(&v10);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a3, a4);
    if ((*a5)(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a2, a3);
      if ((*a5)(a2, a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a2);
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*a3)(a2 - 6, a1))
      {
        v7 = a1;
        v8 = v4 - 6;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v7, v8);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v15 = a1 + 12;
    v16 = (*a3)(a1 + 6, a1);
    v17 = (*a3)(a1 + 12, a1 + 6);
    if (v16)
    {
      if (v17)
      {
        v18 = a1;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a1 + 6);
        if (!(*a3)(a1 + 12, a1 + 6))
        {
          goto LABEL_35;
        }

        v18 = a1 + 6;
      }

      v19 = a1 + 12;
    }

    else
    {
      if (!v17 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1 + 6, a1 + 12), !(*a3)(a1 + 6, a1)))
      {
LABEL_35:
        v20 = a1 + 18;
        if (a1 + 18 != v4)
        {
          v21 = 0;
          v22 = 0;
          v35 = v4;
          while (1)
          {
            if ((*a3)(v20, v15))
            {
              v36 = *v20;
              v37 = *(v20 + 2);
              objc_moveWeak(&v38, v20 + 2);
              v39 = *(v20 + 3);
              v40 = *(v20 + 10);
              v23 = v21;
              while (1)
              {
                v24 = v23;
                v25 = a1 + v23;
                *(v25 + 18) = *(a1 + v23 + 96);
                *(v25 + 38) = *(a1 + v23 + 104);
                v26 = (a1 + v23 + 112);
                WeakRetained = objc_loadWeakRetained(v26);
                objc_storeWeak(v25 + 20, WeakRetained);

                *(v25 + 168) = *(v25 + 120);
                *(v25 + 46) = *(v25 + 34);
                if (v24 == -96)
                {
                  break;
                }

                v28 = (*a3)(&v36, v25 + 6);
                v23 = v24 - 48;
                if ((v28 & 1) == 0)
                {
                  v29 = a1 + v23 + 144;
                  v30 = a1 + v24;
                  v31 = a1 + v24 + 120;
                  v26 = (v30 + 112);
                  goto LABEL_43;
                }
              }

              v31 = (v25 + 120);
              v29 = a1;
LABEL_43:
              *v29 = v36;
              *(v29 + 8) = v37;
              v32 = objc_loadWeakRetained(&v38);
              objc_storeWeak(v26, v32);

              *v31 = v39;
              *(v31 + 16) = v40;
              if (++v22 == 8)
              {
                v33 = v20 + 6 == v35;
                objc_destroyWeak(&v38);
                return v33;
              }

              objc_destroyWeak(&v38);
              v4 = v35;
            }

            v15 = v20;
            v21 += 48;
            v20 += 6;
            if (v20 == v4)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = a1 + 6;
      v18 = a1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v18, v19);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(a1, a1 + 6, a1 + 12, a2 - 6, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v9 = a2 - 6;
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(a1, a1 + 6, a1 + 12, a1 + 18, a3);
    if (!(*a3)(v9, a1 + 18))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1 + 18, v9);
    if (!(*a3)(a1 + 18, a1 + 12))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1 + 12, a1 + 18);
    if (!(*a3)(a1 + 12, a1 + 6))
    {
      return 1;
    }

    v10 = a1 + 6;
    v11 = a1 + 12;
    goto LABEL_22;
  }

  v12 = a2 - 6;
  v13 = (*a3)(a1 + 6, a1);
  v14 = (*a3)(v12, a1 + 6);
  if (v13)
  {
    if (v14)
    {
      v7 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a1 + 6);
      if (!(*a3)(v12, a1 + 6))
      {
        return 1;
      }

      v7 = a1 + 6;
    }

    v8 = v12;
    goto LABEL_30;
  }

  if (v14)
  {
    v10 = a1 + 6;
    v11 = v12;
LABEL_22:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v10, v11);
    if ((*a3)(a1 + 6, a1))
    {
      v8 = a1 + 6;
      v7 = a1;
      goto LABEL_30;
    }
  }

  return 1;
}

void std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    v23 = a1;
    if (v12)
    {
      std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](v12);
    }

    *(&v22 + 1) = 0;
    v13 = *a2;
    v14 = 48 * v9;
    *(v14 + 8) = *(a2 + 2);
    *v14 = v13;
    objc_copyWeak((v14 + 16), a2 + 2);
    v15 = *(a2 + 3);
    *(v14 + 40) = *(a2 + 10);
    *(v14 + 24) = v15;
    *&v22 = v14 + 48;
    v16 = *(a1 + 8);
    v17 = v14 + *a1 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AUv3InstanceBase::ScopeElementIDObj>,AUv3InstanceBase::ScopeElementIDObj*>(*a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    v19 = *(a1 + 16);
    v20 = v22;
    *(a1 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v21[0] = v18;
    v21[1] = v18;
    std::__split_buffer<AUv3InstanceBase::ScopeElementIDObj>::~__split_buffer(v21);
    v8 = v20;
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    objc_copyWeak((v5 + 16), a2 + 2);
    v7 = *(a2 + 3);
    *(v5 + 40) = *(a2 + 10);
    *(v5 + 24) = v7;
    v8 = v5 + 48;
  }

  *(a1 + 8) = v8;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AUv3InstanceBase::ScopeElementIDObj>,AUv3InstanceBase::ScopeElementIDObj*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      v7 = *v6;
      *(a3 + 8) = *(v6 + 2);
      *a3 = v7;
      objc_moveWeak((a3 + 16), v6 + 2);
      v8 = *(v6 + 3);
      *(a3 + 40) = *(v6 + 10);
      *(a3 + 24) = v8;
      v6 += 6;
      a3 += 48;
    }

    while (v6 != a2);
    do
    {
      objc_destroyWeak(v5 + 2);
      v5 += 6;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<AUv3InstanceBase::ScopeElementIDObj>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    objc_destroyWeak((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AUv3InstanceBase::GetParameter(AUv3InstanceBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  v7 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID((this + 200), a3, a4, a2);
  v13 = v7;
  if (!v7)
  {
    return 4294956418;
  }

  if ((*(this + 80) & 1) != 0 || (v8 = v7, [*(this + 9) isLocalCachingDisabled]))
  {
    v12[0] = &v13;
    v12[1] = this;
    v12[2] = a5;
    v9 = AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetParameter(unsigned int,unsigned int,unsigned int,float &)::$_0>, v12);
    v8 = v13;
  }

  else
  {
    [v8 value];
    v9 = 0;
    *a5 = v10;
  }

  return v9;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetParameter(unsigned int,unsigned int,unsigned int,float &)::$_0>(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = AUv3InstanceBase::sAUParameter_address(***a1, AUv3InstanceBase::sSel_address);
  *v1[2] = (v2[49])(v2[9], AUv3InstanceBase::sSel_GetV2Parameter, v3, *(v2 + 94));
  return 0;
}

uint64_t AUv3InstanceBase::RemovePropertyListener(AUv3InstanceBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4, char a5)
{
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  v6[0] = this;
  v6[1] = &v10;
  v6[2] = &v9;
  v6[3] = &v7;
  v6[4] = &v8;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::RemovePropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *,BOOL)::$_0>, v6);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::RemovePropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *,BOOL)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = (*a1)[2];
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(v1 + 112);
  if (*(v1 + 104) == v6)
  {
    v7 = *(v1 + 104);
  }

  else
  {
    v7 = *(v1 + 104);
    while (1)
    {
      v8 = *v7;
      if (*(*v7 + 24) == *v2 && *(v8 + 32) == *v3 && (*v4 != 1 || *(v8 + 40) == *v5))
      {
        break;
      }

      v7 += 2;
      if (v7 == v6)
      {
        goto LABEL_17;
      }
    }

    if (v7 != v6)
    {
      v11 = v7 + 2;
      if (v7 + 2 != v6)
      {
        do
        {
          v12 = *v11;
          if (*(*v11 + 24) != *v2 || *(v12 + 32) != *v3 || *v4 == 1 && *(v12 + 40) != *v5)
          {
            v13 = v11[1];
            *v11 = 0;
            v11[1] = 0;
            v14 = v7[1];
            *v7 = v12;
            v7[1] = v13;
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            v7 += 2;
          }

          v11 += 2;
        }

        while (v11 != v6);
        v15 = *(v1 + 104);
        v6 = *(v1 + 112);
      }
    }
  }

  if (v7 != v6)
  {
    while (v6 != v7)
    {
      v9 = *(v6 - 1);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v6 -= 2;
    }

    *(v1 + 112) = v7;
  }

LABEL_17:
  os_unfair_recursive_lock_unlock();
  return 0;
}

uint64_t AUv3InstanceBase::AddPropertyListener(AUv3InstanceBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v5[0] = &v8;
  v5[1] = this;
  v5[2] = &v7;
  v5[3] = &v6;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::AddPropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *)::$_0>, v5);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::AddPropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *)::$_0>(unsigned int ***a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = ***a1;
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), v3);
  if (Value)
  {
    v6 = Value;
    if ((Value[2] & 2) == 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      v7 = v6[1];
      v8 = *v1;
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);
      operator new();
    }
  }

  v11 = **v1;
  result = 4294956417;
  if (v11 <= 0x13)
  {
    v13 = 1 << v11;
    if ((v13 & 0x818) != 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      v14 = *v1;
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      operator new();
    }

    if ((v13 & 0x80100) != 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      v17 = *v1;
      v18 = *(v1 + 16);
      v19 = *(v1 + 24);
      operator new();
    }
  }

  return result;
}

void sub_18F75B88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<AUv3InstanceBase::ClientPropertyListener>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
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
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v5;
}

void AUv3InstanceBase::ClientPropertyListener::~ClientPropertyListener(id *this)
{

  JUMPOUT(0x193ADF220);
}

{
}

void std::__shared_ptr_emplace<AUv3InstanceBase::ClientPropertyListener>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032BFC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

id AUv3InstanceBase::Proxy(AUv3InstanceBase *this)
{
  v2 = *(this + 11);
  if (!v2)
  {
    v3 = objc_alloc_init(AUExtensionInstanceProxy);
    v4 = *(this + 11);
    *(this + 11) = v3;

    [*(this + 11) setAuInstance:this];
    v2 = *(this + 11);
  }

  return v2;
}

void AUv3InstanceBase::BusPropertyListener::call(AUv3InstanceBase::BusPropertyListener *this, NSObject *a2, NSString *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [*(*(this + 1) + 72) inputBusses];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v22;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 = (v7 + v6);
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v21 + 1) + 8 * v9) == v4)
        {
          v15 = 1;
LABEL_20:

          (*(this + 4))(*(this + 5), *(*(this + 1) + 40), *(this + 6), v15, v10);
          goto LABEL_21;
        }

        v10 = (v10 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(*(this + 1) + 72) outputBusses];
  v11 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v18;
    while (2)
    {
      v14 = 0;
      v10 = v12;
      v12 = (v12 + v11);
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v17 + 1) + 8 * v14) == v4)
        {
          v15 = 2;
          goto LABEL_20;
        }

        v10 = (v10 + 1);
        ++v14;
      }

      while (v11 != v14);
      v11 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
}

void AUv3InstanceBase::BusPropertyListener::~BusPropertyListener(AUv3InstanceBase::BusPropertyListener *this)
{
  AUv3InstanceBase::BusPropertyListener::~BusPropertyListener(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BF98;
  v2 = [*(*(this + 1) + 72) inputBusses];
  v3 = AUv3InstanceBase::Proxy(*(this + 1));
  [v2 removeObserverFromAllBusses:v3 forKeyPath:*(this + 2) context:this];

  v4 = [*(*(this + 1) + 72) outputBusses];
  v5 = AUv3InstanceBase::Proxy(*(this + 1));
  [v4 removeObserverFromAllBusses:v5 forKeyPath:*(this + 2) context:this];
}

void std::__shared_ptr_emplace<AUv3InstanceBase::BusPropertyListener>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032BF60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void AUv3InstanceBase::GlobalPropertyListener::~GlobalPropertyListener(AUv3InstanceBase::GlobalPropertyListener *this)
{
  AUv3InstanceBase::GlobalPropertyListener::~GlobalPropertyListener(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BF10;
  v2 = *(this + 1);
  v3 = *(v2 + 9);
  v4 = AUv3InstanceBase::Proxy(v2);
  [v3 removeObserver:v4 forKeyPath:*(this + 2) context:this];
}

void std::__shared_ptr_emplace<AUv3InstanceBase::GlobalPropertyListener>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032BED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t AUv3InstanceBase::SetProperty(AUv3InstanceBase *this, int a2, int a3, int a4, const void *a5, int a6)
{
  v11 = a3;
  v12 = a2;
  v10 = a4;
  v9 = a5;
  v8 = a6;
  v7[0] = this;
  v7[1] = &v12;
  v7[2] = &v11;
  v7[3] = &v10;
  v7[4] = &v9;
  v7[5] = &v8;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::{lambda(void)#1}>, v7);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::{lambda(void)#1}>(uint64_t **a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v1 = **a1;
  v2 = *(*a1)[1];
  v3 = *(*a1)[2];
  v4 = *(*a1)[3];
  v5 = *(*a1)[4];
  v6 = *(*a1)[5];
  v74 = 0;
  v7 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v7 + 8), v2);
  if (!Value || (v9 = Value, (v10 = Value[10]) == 0))
  {
    v73[0] = v5;
    v16 = *(v1 + 72);
    v73[1] = v16;
    if (v2 > 26)
    {
      if (v2 <= 55)
      {
        if (v2 <= 47)
        {
          if (v2 != 27)
          {
            if (v2 == 36)
            {
              v17 = objc_opt_new();
              [v17 setNumber:*v5];
              v18 = *(v5 + 1);
              if (v18)
              {
                CFRetain(*(v5 + 1));
                *aBlock = v18;
                v19 = CFGetTypeID(v18);
                if (v19 != CFStringGetTypeID())
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                }

                v20 = *aBlock;
              }

              else
              {
                v20 = 0;
                *aBlock = 0;
              }

              [v17 setName:v20];
              v59 = *(v1 + 72);
              *__dst = 0;
              [v59 _setValue:v17 forKey:@"currentPreset" error:__dst];
              v11 = *__dst;
              if (*aBlock)
              {
                CFRelease(*aBlock);
              }

              goto LABEL_105;
            }

LABEL_71:
            if (!gAudioComponentLogCategory)
            {
              operator new();
            }

            v45 = *gAudioComponentLogCategory;
            if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
            {
              *aBlock = 136316418;
              *&aBlock[4] = "AUv3Instance.mm";
              *&aBlock[12] = 1024;
              *&aBlock[14] = 1435;
              *&aBlock[18] = 1024;
              *&aBlock[20] = v2;
              *&aBlock[24] = 1024;
              *&aBlock[26] = v3;
              *&aBlock[30] = 1024;
              LODWORD(v76) = v4;
              WORD2(v76) = 1024;
              *(&v76 + 6) = v6;
              _os_log_impl(&dword_18F5DF000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid property id %d (scope %d, element %d, size %d)", aBlock, 0x2Au);
            }

            v11 = 0;
            v12 = 4294956417;
            goto LABEL_123;
          }

          *(v1 + 368) = 0;
          *(v1 + 336) = 0u;
          *(v1 + 352) = 0u;
          if (v6 >= 0x28)
          {
            v44 = 40;
          }

          else
          {
            v44 = v6;
          }

          memcpy((v1 + 336), v5, v44);
          if (*(v1 + 344) || *(v1 + 352))
          {
            *aBlock = MEMORY[0x1E69E9820];
            *&aBlock[8] = 3221225472;
            *&aBlock[16] = ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke;
            *&aBlock[24] = &__block_descriptor_40_e29_B56__0_d8_d16_q24_d32_q40_d48l;
            *&v76 = v1 + 336;
            [*(v1 + 72) setMusicalContextBlock:aBlock];
          }

          else
          {
            [*(v1 + 72) setMusicalContextBlock:0];
          }

          if (*(v1 + 360) || *(v1 + 368))
          {
            *__dst = MEMORY[0x1E69E9820];
            *&__dst[8] = 3221225472;
            *&__dst[16] = ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke_2;
            *&__dst[24] = &__block_descriptor_40_e21_B40__0_Q8_d16_d24_d32l;
            v79 = v1 + 336;
            [*(v1 + 72) setTransportStateBlock:__dst];
          }

          else
          {
            [*(v1 + 72) setTransportStateBlock:0];
          }

LABEL_121:
          v11 = 0;
          goto LABEL_122;
        }

        if (v2 != 48)
        {
          if (v2 != 50)
          {
            goto LABEL_71;
          }

          *aBlock = 0;
          AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0::operator()(v73, @"fullStateForDocument", aBlock);
LABEL_74:
          v11 = *aBlock;
          goto LABEL_105;
        }

LABEL_51:
        v36 = [*(v1 + 72) renderResourcesAllocated];
        if (v36)
        {
          v37 = [*(v1 + 72) transportStateBlock];
          v38 = [*(v1 + 72) musicalContextBlock];
          [*(v1 + 72) deallocateRenderResources];
        }

        else
        {
          v38 = 0;
          v37 = 0;
        }

        if (v2 == 63)
        {
          v49 = _Block_copy(*v5);
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 3221225472;
          *&aBlock[16] = ___ZN16AUv3InstanceBase11setPropertyEjjjPKvj_block_invoke_2;
          *&aBlock[24] = &unk_1E72C1268;
          v50 = v49;
          *&v76 = v50;
          v51 = _Block_copy(aBlock);
          [*(v1 + 72) setMIDIOutputEventListBlock:v51];
        }

        else
        {
          *__dst = 0uLL;
          if (v6 >= 0x10)
          {
            v46 = 16;
          }

          else
          {
            v46 = v6;
          }

          memcpy(__dst, v5, v46);
          v47 = (*(*v1 + 216))(v1);
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 3221225472;
          *&aBlock[16] = ___ZN16AUv3InstanceBase11setPropertyEjjjPKvj_block_invoke;
          *&aBlock[24] = &__block_descriptor_49_e18_i36__0q8C16q20r_28l;
          v77 = v47;
          v76 = *__dst;
          v48 = _Block_copy(aBlock);
          [*(v1 + 72) setMIDIOutputEventBlock:v48];
        }

        if (v36)
        {
          [*(v1 + 72) setTransportStateBlock:v37];
          [*(v1 + 72) setMusicalContextBlock:v38];
          v52 = *(v1 + 72);
          v72 = 0;
          [v52 allocateRenderResourcesAndReturnError:&v72];
          v53 = v72;
          if (v53)
          {
            v54 = v53;
            if (!gAudioComponentLogCategory)
            {
              operator new();
            }

            v55 = *gAudioComponentLogCategory;
            if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
            {
              *__dst = 136315650;
              *&__dst[4] = "AUv3Instance.mm";
              *&__dst[12] = 1024;
              *&__dst[14] = 1386;
              *&__dst[18] = 2112;
              *&__dst[20] = v54;
              _os_log_impl(&dword_18F5DF000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d Error occured while trying to reinitialize AU when setting MIDIOutputBlock: %@", __dst, 0x1Cu);
            }

            v11 = 0;
            v12 = 4294956447;
            goto LABEL_123;
          }
        }

        goto LABEL_121;
      }

      if (v2 > 1841)
      {
        if (v2 == 1842)
        {
          v11 = 0;
          [*(v1 + 72) setRequestViewControllerSynchronously:*v5];
          goto LABEL_122;
        }

        if (v2 == 3503)
        {
          v11 = 0;
          [*(v1 + 72) setLocalCachingDisabled:*v5];
          goto LABEL_122;
        }

        goto LABEL_71;
      }

      if (v2 != 56)
      {
        if (v2 != 63)
        {
          goto LABEL_71;
        }

        goto LABEL_51;
      }

      WeakRetained = objc_loadWeakRetained(v5);
      [*(v1 + 72) requestViewControllerWithCompletionHandler:WeakRetained];
LABEL_120:

      goto LABEL_121;
    }

    if (v2 <= 7)
    {
      if (!v2)
      {
        *aBlock = 0;
        AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0::operator()(v73, @"fullState", aBlock);
        goto LABEL_74;
      }

      if (v2 == 1)
      {
        goto LABEL_42;
      }

      if (v2 != 2)
      {
        goto LABEL_71;
      }

      if (v6 < 8)
      {
        goto LABEL_57;
      }

      if (v3)
      {
        v23 = v4;
      }

      else
      {
        v23 = 0;
      }

      if (v3)
      {
        v24 = v3;
      }

      else
      {
        v24 = 2;
      }

      v25 = AUv3InstanceBase::GetBus(v1, v24, v23, &v74);
      v26 = v25;
      v12 = v74;
      if (!v74)
      {
        v11 = [v25 format];
        if (!v11)
        {

          v12 = 4294956445;
          goto LABEL_123;
        }

        v27 = [v26 format];
        v28 = [v27 streamDescription];
        v29 = *v28;
        v30 = *(v28 + 16);
        *&v76 = *(v28 + 32);
        *aBlock = v29;
        *&aBlock[16] = v30;

        *aBlock = *v5;
        v31 = objc_alloc(getAVAudioFormatClass());
        v32 = [v26 format];
        v33 = [v32 channelLayout];
        v34 = [v31 initWithStreamDescription:aBlock channelLayout:v33];

        *__dst = 0;
        [v26 setFormat:v34 error:__dst];
        v11 = *__dst;

        goto LABEL_105;
      }
    }

    else
    {
      if (v2 <= 18)
      {
        if (v2 != 8)
        {
          if (v2 != 11)
          {
            goto LABEL_71;
          }

          if (v6 >= 4)
          {
            v21 = *v5;
            if (v3 == 2)
            {
              v67 = [*(v1 + 72) outputBusses];
              *aBlock = 0;
              [v67 setBusCount:v21 error:aBlock];
              v11 = *aBlock;
            }

            else
            {
              if (v3 != 1)
              {
                v11 = 0;
                v12 = 4294956430;
                goto LABEL_123;
              }

              v22 = [*(v1 + 72) inputBusses];
              *aBlock = 0;
              [v22 setBusCount:v21 error:aBlock];
              v11 = *aBlock;

              std::vector<AUv3RenderAdapter::AUInputElement>::resize((v1 + 144), v21);
            }

LABEL_105:
            if (v11)
            {
              v12 = [v11 code];
              goto LABEL_123;
            }

LABEL_122:
            v12 = 0;
            goto LABEL_123;
          }

          goto LABEL_57;
        }

        if (v6 < 0x28)
        {
LABEL_57:
          v11 = 0;
          v12 = 4294967246;
LABEL_123:

          goto LABEL_124;
        }

        if (v3)
        {
          v56 = v4;
        }

        else
        {
          v56 = 0;
        }

        if (v3)
        {
          v57 = v3;
        }

        else
        {
          v57 = 2;
        }

        v26 = AUv3InstanceBase::GetBus(v1, v57, v56, &v74);
        v12 = v74;
        if (!v74)
        {
          v63 = *(v5 + 7);
          if (v63 < 3)
          {
            v66 = 0;
          }

          else
          {
            AVAudioChannelLayoutClass = getAVAudioChannelLayoutClass();
            v65 = [v26 format];
            v66 = [AVAudioChannelLayoutClass layoutWithLayoutTag:{AUv3InstanceBase::setProperty(unsigned int, unsigned int, unsigned int, void const*, unsigned int)::$_1::operator()(v65, v5, v63 | 0x930000)}];
          }

          v70 = [objc_alloc(getAVAudioFormatClass()) initWithStreamDescription:v5 channelLayout:v66];
          *aBlock = 0;
          [v26 setFormat:v70 error:aBlock];
          v11 = *aBlock;

          goto LABEL_105;
        }

        goto LABEL_95;
      }

      if (v2 != 19)
      {
        if (v2 != 23)
        {
          goto LABEL_71;
        }

LABEL_42:
        WeakRetained = AUv3InstanceBase::GetBus(v1, v3, v4, &v74);
        v12 = v74;
        if (!v74)
        {
          v12 = AUv3RenderAdapter::SetProperty((v1 + 136), v2, v3, v4, v5, v6);
          v74 = v12;
          if (!v12)
          {
            v60 = *(v1 + 144);
            v61 = 0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 152) - v60) >> 3) > v4 && *(v60 + 40 * v4) != 0;
            [WeakRetained setEnabled:v61];
            goto LABEL_120;
          }
        }

        goto LABEL_96;
      }

      v26 = AUv3InstanceBase::GetBus(v1, v3, v4, &v74);
      v12 = v74;
      if (!v74)
      {
        v40 = [getAVAudioChannelLayoutClass() layoutWithLayout:v5];
        v41 = objc_alloc(getAVAudioFormatClass());
        v42 = [v26 format];
        v43 = [v41 initWithStreamDescription:objc_msgSend(v42 channelLayout:{"streamDescription"), v40}];

        *aBlock = 0;
        [v26 setFormat:v43 error:aBlock];
        v11 = *aBlock;

        goto LABEL_105;
      }
    }

LABEL_95:

LABEL_96:
    v11 = 0;
    goto LABEL_123;
  }

  *aBlock = v5;
  *__dst = v6;
  v11 = (*(*v10 + 48))(v10, aBlock, __dst, &v74);
  v12 = v74;
  if (!v74)
  {
    if ((v9[2] & 2) != 0)
    {
      v39 = AUv3InstanceBase::GetBus(v1, v3, v4, &v74);
      v15 = v39;
      v12 = v74;
      if (!v74)
      {
        [v39 setValue:v11 forKey:v9[1]];
        v12 = 0;
      }
    }

    else
    {
      v13 = *(v1 + 72);
      v14 = v9[1];
      *aBlock = 0;
      [v13 _setValue:v11 forKey:v14 error:aBlock];
      v15 = *aBlock;

      if (!v15)
      {
        v12 = 0;
        goto LABEL_124;
      }

      v12 = [v15 code];
    }
  }

LABEL_124:

  v68 = *MEMORY[0x1E69E9840];
  return v12;
}

id AUv3InstanceBase::GetBus(id *this, int a2, unsigned int a3, int *a4)
{
  if (a2 == 2)
  {
    v6 = [this[9] outputBusses];
  }

  else
  {
    if (a2 != 1)
    {
      v8 = 0;
      *a4 = -10866;
      goto LABEL_9;
    }

    v6 = [this[9] inputBusses];
  }

  v7 = v6;
  if ([v6 count] <= a3)
  {
    *a4 = -10877;

    v8 = 0;
  }

  else
  {
    *a4 = 0;
    v8 = [v7 objectAtIndexedSubscript:?];
  }

LABEL_9:

  return v8;
}

uint64_t *std::vector<AUv3RenderAdapter::AUInputElement>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *result) >> 3);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return result;
    }

    v10 = v3 + 40 * a2;
  }

  else
  {
    v6 = result[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v2) >> 3) < v5)
    {
      if (a2 <= 0x666666666666666)
      {
        v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v3) >> 3);
        v8 = 2 * v7;
        if (2 * v7 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x333333333333333)
        {
          v9 = 0x666666666666666;
        }

        else
        {
          v9 = v8;
        }

        if (v9 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0;
    v12 = (40 * v5 - 40) / 0x28;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 + 4) & 0xFFFFFFFFFFFFFFCLL;
    v15 = (v2 + 80);
    do
    {
      v16 = vdupq_n_s64(v11);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_18F9016C0)));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        *(v15 - 20) = 0;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        *(v15 - 10) = 0;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_18F9016B0)))).i32[1])
      {
        *v15 = 0;
        v15[10] = 0;
      }

      v11 += 4;
      v15 += 40;
    }

    while (v14 != v11);
    v10 = v2 + 40 * v5;
  }

  result[1] = v10;
  return result;
}

id getAVAudioChannelLayoutClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F75D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 channelLayout];
  if (v6)
  {
    v7 = [v5 channelLayout];
    v8 = [v7 layout];
    if (!a2 || !v8)
    {

      goto LABEL_7;
    }

    v9 = [v5 channelLayout];
    v10 = [v9 channelCount];
    v11 = *(a2 + 28);

    if (v10 == v11)
    {
      v6 = [v5 channelLayout];
      a3 = *[v6 layout];
LABEL_7:
    }
  }

  return a3;
}

id getAVAudioFormatClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioFormatClass(void)::softClass;
  v7 = getAVAudioFormatClass(void)::softClass;
  if (!getAVAudioFormatClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL21getAVAudioFormatClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL21getAVAudioFormatClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F75D64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN16AUv3InstanceBase11setPropertyEjjjPKvj_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *__src)
{
  v7 = a2;
  v8 = *(a1 + 48) == 0;
  if (*(a1 + 48))
  {
    v7 = 0.0;
  }

  v16 = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  v12 = 1;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v13 = v9;
  v14 = a4;
  if (a4 >= 0x100)
  {
    v10 = 256;
  }

  else
  {
    v10 = a4;
  }

  memcpy(&v15, __src, v10);
  return (*(a1 + 32))(*(a1 + 40), &v16, a3, &v12);
}

void AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0::operator()(CFTypeRef **a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = **a1;
  if (v5)
  {
    CFRetain(**a1);
    cf = v5;
    v6 = CFGetTypeID(v5);
    if (v6 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v7 = cf;
  }

  else
  {
    v7 = 0;
    cf = 0;
  }

  [(CFTypeRef *)a1[1] _setValue:v7 forKey:v9 error:a3, v9];
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_18F75D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);

  _Unwind_Resume(a1);
}

uint64_t ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke(uint64_t a1, void *a2, double *a3, void *a4, void *a5, void *a6, void *a7)
{
  v14 = *(a1 + 32);
  v15 = v14[1];
  if (v15 && !v15(*v14, a5, a2))
  {
    v16 = 1;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    v16 = 0;
    if (a2)
    {
      *a2 = 0x405E000000000000;
    }
  }

  v21 = 4;
  v22 = 0;
  v20 = 4.0;
  v17 = *(a1 + 32);
  v18 = v17[2];
  if (v18 && !v18(*v17, &v22, &v20, &v21, a7))
  {
    if (a6)
    {
      *a6 = v22;
    }

    if (a3)
    {
      *a3 = v20;
    }

    if (a4)
    {
      *a4 = v21;
    }

    return 1;
  }

  else
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (a3)
    {
      *a3 = 4.0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (a7)
    {
      *a7 = 0;
    }
  }

  return v16;
}

uint64_t ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke_2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v11 = 0;
  v6 = *(a1 + 32);
  v7 = v6[4];
  if (v7)
  {
    if (!v7(*v6, &v12 + 1, &v12, &v11 + 1, a3, &v11, a4, a5))
    {
      if (a2)
      {
        v8 = (2 * (HIBYTE(v12) != 0)) | (4 * (v12 != 0));
LABEL_10:
        if (HIBYTE(v11))
        {
          ++v8;
        }

        *a2 = v8 | (8 * (v11 != 0));
        return 1;
      }

      return 1;
    }

    return 0;
  }

  v9 = v6[3];
  if (!v9 || v9(*v6, &v12 + 1, &v11 + 1, a3, &v11, a4, a5))
  {
    return 0;
  }

  if (a2)
  {
    v8 = 2 * (HIBYTE(v12) != 0);
    goto LABEL_10;
  }

  return 1;
}

void ___ZL21getAVAudioFormatClassv_block_invoke(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFormat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFormatClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioFormatClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:64 description:{@"Unable to find class %s", "AVAudioFormat"}];

    __break(1u);
  }
}

void AVFAudioLibrary(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72C0DA0;
    v6 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL28getAVAudioChannelLayoutClassv_block_invoke(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioChannelLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioChannelLayoutClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioChannelLayoutClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:65 description:{@"Unable to find class %s", "AVAudioChannelLayout"}];

    __break(1u);
  }
}

uint64_t AUv3InstanceBase::GetProperty(AUv3InstanceBase *this, int a2, int a3, int a4, void *a5, unsigned int *a6)
{
  v10 = a3;
  v11 = a2;
  v9 = a4;
  v8 = a5;
  v7[0] = this;
  v7[1] = &v11;
  v7[2] = &v10;
  v7[3] = &v9;
  v7[4] = &v8;
  v7[5] = a6;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetProperty(unsigned int,unsigned int,unsigned int,void *,unsigned int &)::{lambda(void)#1}>, v7);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetProperty(unsigned int,unsigned int,unsigned int,void *,unsigned int &)::{lambda(void)#1}>(uint64_t **a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v1 = **a1;
  v2 = *(*a1)[1];
  v3 = *(*a1)[2];
  v4 = *(*a1)[3];
  v5 = (*a1)[5];
  v6 = *(*a1)[4];
  v96 = 0;
  if (*(v1 + 80) == 1 && (v2 == 20 || v2 == 12))
  {
    [*(v1 + 72) flushEventSchedule];
  }

  v8 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v8 + 8), v2);
  if (Value)
  {
    v10 = Value;
    if (*(Value + 6))
    {
      if ((Value[16] & 2) != 0)
      {
        v25 = AUv3InstanceBase::GetBus(v1, v3, v4, &v96);
        v26 = v25;
        v12 = v96;
        if (v96)
        {

          v11 = 0;
          goto LABEL_171;
        }

        v11 = [v25 valueForKey:*(v10 + 1)];
      }

      else
      {
        if (v3)
        {
          v11 = 0;
          v12 = 4294956430;
LABEL_171:

          goto LABEL_175;
        }

        if (v4)
        {
          v11 = 0;
          v12 = 4294956419;
          goto LABEL_171;
        }

        if (v2 == 29 && AUv3InstanceBase::isOutOfProcessAUv2(v1))
        {
          if (*v5 >= 4)
          {
            v11 = 0;
            v12 = 0;
            *v6 = 0;
            goto LABEL_171;
          }

          v11 = 0;
          goto LABEL_146;
        }

        v80 = *(v1 + 72);
        v81 = *(v10 + 1);
        v82 = [AUAudioUnitProperty propertyWithKey:v81 v2propID:*(v10 + 5) scope:0 element:0];
        *__src.name = 0;
        v11 = [v80 _valueForProperty:v82 error:&__src];
        v83 = *__src.name;

        if (v83)
        {
          v12 = [v83 code];

          goto LABEL_171;
        }
      }

      if (v11)
      {
        v12 = std::function<int ()(objc_object *,void *,unsigned int &)>::operator()((v10 + 24), v11, v6, v5);
        goto LABEL_171;
      }

LABEL_146:
      v12 = 4294956445;
      goto LABEL_171;
    }
  }

  if (v2 <= 33)
  {
    if (v2 <= 12)
    {
      if (v2 > 3)
      {
        if (v2 == 4)
        {
          if (*v5 >= 0x64)
          {
            v12 = AUv3InstanceBase::ParameterMap::parameterInfo((v1 + 200), v3, v4, &__src);
            if (!v12)
            {
              v58 = *__src.name;
              v59 = *&__src.name[32];
              *(v6 + 16) = *&__src.name[16];
              *(v6 + 32) = v59;
              *v6 = v58;
              v60 = *&__src.name[48];
              v61 = *&__src.clumpID;
              v62 = *&__src.unit;
              *(v6 + 96) = *&__src.flags;
              *(v6 + 64) = v61;
              *(v6 + 80) = v62;
              *(v6 + 48) = v60;
            }

            goto LABEL_175;
          }

          goto LABEL_135;
        }

        if (v2 != 8)
        {
          if (v2 == 11)
          {
            if (*v5 >= 4)
            {
              if (v3)
              {
                if (v3 == 2)
                {
                  v13 = [*(v1 + 72) outputBusses];
                  v14 = [v13 count];
                }

                else
                {
                  if (v3 != 1)
                  {
                    v12 = 4294956430;
                    goto LABEL_175;
                  }

                  v13 = [*(v1 + 72) inputBusses];
                  v14 = [v13 count];
                }

                *v6 = v14;
              }

              else
              {
                *v6 = 1;
              }

              v12 = 0;
              *v5 = 4;
LABEL_175:
              v91 = *MEMORY[0x1E69E9840];
              return v12;
            }

            goto LABEL_135;
          }

          goto LABEL_140;
        }

        if (*v5 < 0x28)
        {
          goto LABEL_135;
        }

        if (v3)
        {
          v40 = v4;
        }

        else
        {
          v40 = 0;
        }

        if (v3)
        {
          v41 = v3;
        }

        else
        {
          v41 = 2;
        }

        v42 = AUv3InstanceBase::GetBus(v1, v41, v40, &v96);
        v43 = v42;
        v12 = v96;
        if (!v96)
        {
          v44 = [v42 format];
          v45 = [v44 streamDescription];

          if (v45)
          {
            v46 = *v45;
            v47 = *(v45 + 16);
            *(v6 + 32) = *(v45 + 32);
            *v6 = v46;
            *(v6 + 16) = v47;
            v48 = 40;
LABEL_133:
            *v5 = v48;
LABEL_173:

            goto LABEL_174;
          }

LABEL_163:
          v12 = 4294956445;
          goto LABEL_164;
        }

        goto LABEL_164;
      }

      if (v2 == 2)
      {
        if (*v5 < 8)
        {
          goto LABEL_135;
        }

        if (v3)
        {
          v72 = v4;
        }

        else
        {
          v72 = 0;
        }

        if (v3)
        {
          v73 = v3;
        }

        else
        {
          v73 = 2;
        }

        v74 = AUv3InstanceBase::GetBus(v1, v73, v72, &v96);
        v43 = v74;
        v12 = v96;
        if (!v96)
        {
          v75 = [v74 format];
          v76 = [v75 streamDescription];

          if (v76)
          {
            *v6 = *v76;
            v48 = 8;
            goto LABEL_133;
          }

          goto LABEL_163;
        }

LABEL_164:

        goto LABEL_175;
      }

      if (v2 != 3)
      {
        goto LABEL_140;
      }

      AUv3InstanceBase::ParameterMap::paramIDsForScope(&__src, (v1 + 200), v3);
      v31 = *__src.name;
      v32 = (*&__src.name[8] - *__src.name) & 0xFFFFFFFC;
      if (v32 >= *v5)
      {
        v33 = *v5;
      }

      else
      {
        v33 = v32;
      }

      memcpy(v6, *__src.name, v33);
      *v5 = v33;
      if (v31)
      {
        operator delete(v31);
      }

LABEL_174:
      v12 = 0;
      goto LABEL_175;
    }

    if (v2 > 18)
    {
      if (v2 == 19)
      {
        v66 = AUv3InstanceBase::GetBus(v1, v3, v4, &v96);
        v43 = v66;
        v12 = v96;
        if (!v96)
        {
          v67 = [v66 format];
          v68 = [v67 channelLayout];

          if (v68)
          {
            v69 = layoutSize(v68);
            if (v69 <= *v5)
            {
              memcpy(v6, [(AVAudioChannelLayout *)v68 layout], v69);
              *v5 = v69;

              goto LABEL_173;
            }

            v12 = 4294967246;
          }

          else
          {
            v12 = 4294956445;
          }
        }

        goto LABEL_164;
      }

      if (v2 == 27)
      {
        if (*v5 >= 0x28)
        {
          v12 = 0;
          v56 = *(v1 + 336);
          v57 = *(v1 + 352);
          *(v6 + 32) = *(v1 + 368);
          *v6 = v56;
          *(v6 + 16) = v57;
          goto LABEL_175;
        }

        goto LABEL_135;
      }

      if (v2 != 33)
      {
        goto LABEL_140;
      }

      if (*v5 < 0x18)
      {
        goto LABEL_135;
      }

      v27 = *v6;
      v28 = *(v6 + 8);
      v29 = *MEMORY[0x1E69E9840];

      return AUv3InstanceBase::ParameterMap::parameterStringFromValue((v1 + 200), v3, v27, v28, (v6 + 16));
    }

    if (v2 == 13)
    {
      v77 = [*(v1 + 72) channelCapabilities];
      v43 = v77;
      if (v77)
      {
        v78 = [v77 count];
        if (*v5 >= (2 * v78))
        {
          if (v78 >= 1)
          {
            v88 = 0;
            v89 = v78 & 0x7FFFFFFF;
            do
            {
              v90 = [v43 objectAtIndexedSubscript:v88];
              *(v6 + 2 * v88) = [v90 shortValue];

              ++v88;
            }

            while (v89 != v88);
          }

          goto LABEL_173;
        }

        v12 = 4294967246;
      }

      else
      {
        v12 = 4294956417;
      }

      goto LABEL_164;
    }

    if (v2 != 16)
    {
      goto LABEL_140;
    }

    if (*v5 < 8)
    {
      goto LABEL_135;
    }

    *__src.name = 0;
    v12 = AUv3InstanceBase::ParameterMap::parameterValueStrings((v1 + 200), v3, v4, &__src);
    v36 = *__src.name;
    if (v12)
    {

      goto LABEL_175;
    }

LABEL_107:
    *v6 = v36;
    goto LABEL_175;
  }

  if (v2 > 1848)
  {
    if (v2 <= 3500)
    {
      if (v2 == 1849)
      {
        v12 = 0;
        *v6 = *(v1 + 72);
        goto LABEL_175;
      }

      if (v2 != 2015)
      {
        goto LABEL_140;
      }

      v37 = [*(v1 + 72) osWorkgroup];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      *v6 = v38;

      goto LABEL_174;
    }

    if (v2 == 3501)
    {
      if (*v5 < 8)
      {
        goto LABEL_135;
      }

      v70 = [*(v1 + 72) XPCListenerEndpoint];
      v43 = [v70 _endpoint];

      if (v43)
      {
        v71 = v43;
      }

      *v6 = v43;
      goto LABEL_173;
    }

    if (v2 != 3502)
    {
      if (v2 == 3503)
      {
        if (*v5)
        {
          v12 = 0;
          *v6 = [*(v1 + 72) isLocalCachingDisabled];
          goto LABEL_175;
        }

LABEL_135:
        v12 = 4294967246;
        goto LABEL_175;
      }

LABEL_140:
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v79 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        *__src.name = 136316162;
        *&__src.name[4] = "AUv3Instance.mm";
        *&__src.name[12] = 1024;
        *&__src.name[14] = 1196;
        *&__src.name[18] = 1024;
        *&__src.name[20] = v2;
        *&__src.name[24] = 1024;
        *&__src.name[26] = v3;
        *&__src.name[30] = 1024;
        *&__src.name[32] = v4;
        _os_log_impl(&dword_18F5DF000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid property id %d (scope %d, element %d)", &__src, 0x24u);
      }

      v12 = 4294956417;
      goto LABEL_175;
    }

    if (*v5 < 8)
    {
      goto LABEL_135;
    }

    v36 = [*(v1 + 72) audioUnitInstanceUUID];
    v12 = 0;
    goto LABEL_107;
  }

  if (v2 <= 37)
  {
    if (v2 == 34)
    {
      if (*v5 < 0x10)
      {
        goto LABEL_135;
      }

      v84 = *v6;
      v85 = *(v6 + 4);
      v86 = *MEMORY[0x1E69E9840];

      return AUv3InstanceBase::ParameterMap::parameterIDName((v1 + 200), v3, v84, v85, (v6 + 8));
    }

    else
    {
      if (v2 != 35)
      {
        goto LABEL_140;
      }

      if (*v5 < 0x10)
      {
        goto LABEL_135;
      }

      v34 = *v6;
      v35 = *MEMORY[0x1E69E9840];

      return AUv3InstanceBase::ParameterMap::parameterGroupName((v1 + 200), v34, (v6 + 8));
    }
  }

  else
  {
    if (v2 != 38)
    {
      if (v2 == 45)
      {
        v49 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID((v1 + 200), v3, 0, v4);
        v50 = v49;
        if (!v49)
        {
          goto LABEL_135;
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v51 = [v49 dependentParameters];
        v52 = [v51 countByEnumeratingWithState:&v92 objects:&__src count:16];
        if (v52)
        {
          v53 = *v93;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v93 != v53)
              {
                objc_enumerationMutation(v51);
              }

              v55 = [*(*(&v92 + 1) + 8 * i) unsignedLongLongValue];
              *v6 = v55 >> 61;
              *(v6 + 4) = v55;
              v6 += 8;
            }

            v52 = [v51 countByEnumeratingWithState:&v92 objects:&__src count:16];
          }

          while (v52);
        }
      }

      else
      {
        if (v2 != 57)
        {
          goto LABEL_140;
        }

        v15 = *v5 / 0x18uLL;
        v16 = [*(v1 + 72) parametersForOverviewWithCount:v15];
        v17 = [v16 count];
        if (v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        *v5 = 24 * v18;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v19 = v16;
        v20 = [v19 countByEnumeratingWithState:&v92 objects:&__src count:16];
        if (v20)
        {
          v21 = *v93;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v93 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v92 + 1) + 8 * j);
              *v6 = *(v1 + 40);
              v24 = [v23 unsignedLongLongValue];
              *(v6 + 12) = v24 >> 61;
              *(v6 + 16) = HIDWORD(v24) & 0x1FFFFFFF;
              *(v6 + 8) = v24;
              v6 += 24;
            }

            v20 = [v19 countByEnumeratingWithState:&v92 objects:&__src count:16];
          }

          while (v20);
        }
      }

      goto LABEL_174;
    }

    if (*v5 < 0x18)
    {
      goto LABEL_135;
    }

    v63 = *v6;
    v64 = *(v6 + 8);
    v65 = *MEMORY[0x1E69E9840];

    return AUv3InstanceBase::ParameterMap::parameterValueFromString((v1 + 200), v3, v63, v64, (v6 + 16));
  }
}

uint64_t AUv3InstanceBase::isOutOfProcessAUv2(AUv3InstanceBase *this)
{
  if (!*(this + 9))
  {
    return 0;
  }

  result = (*(*this + 216))(this);
  if (result)
  {
    return [*(this + 9) isLoadedInProcess] ^ 1;
  }

  return result;
}

uint64_t std::function<int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v10 = a2;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v7 = (*(*v6 + 48))(v6, &v10, &v9, a4);

  return v7;
}

uint64_t layoutSize(AVAudioChannelLayout *a1)
{
  v1 = a1;
  if ([(AVAudioChannelLayout *)v1 layout])
  {
    if (*[(AVAudioChannelLayout *)v1 layout])
    {
      v2 = 12;
    }

    else
    {
      v2 = 20 * [(AVAudioChannelLayout *)v1 layout][8] + 12;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void AUv3InstanceBase::ParameterMap::paramIDsForScope(AUv3InstanceBase::ParameterMap *this, AUv3InstanceBase::ParameterMap *a2, unsigned int a3)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  memset(v14, 0, sizeof(v14));
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  if (v7 != v6)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[48 * (v8 >> 1)];
      v11 = *v10;
      if (*v10 != a3)
      {
        v12 = v10 + 48;
        v13 = v8 + ~v9;
        if (v11 < a3)
        {
          v9 = v13;
          v6 = v12;
        }
      }

      v8 = v9;
    }

    while (v9);
    if (v6 < v7 && *v6 == a3)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
    }
  }

  objc_destroyWeak(v14);
}

void sub_18F75EDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  objc_destroyWeak(va);
  if (v4)
  {
    *(v3 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t AUv3InstanceBase::ParameterMap::parameterInfo(AUv3InstanceBase::ParameterMap *this, unsigned int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(this);
  *&a4->flags = 0;
  *&a4->clumpID = 0u;
  *&a4->unit = 0u;
  *&a4->name[32] = 0u;
  *&a4->name[48] = 0u;
  *a4->name = 0u;
  *&a4->name[16] = 0u;
  v34 = 0u;
  v36 = 0;
  v35 = 0u;
  LODWORD(v34) = a3;
  v9 = *(this + 3);
  v8 = *(this + 4);
  if (v8 == v9)
  {
    goto LABEL_16;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[6 * (v10 >> 1)];
    v13 = *v12 >= a2;
    if (*v12 == a2)
    {
      if (*(v12 + 1))
      {
        goto LABEL_8;
      }

      v13 = *(v12 + 2) >= a3;
    }

    if (!v13)
    {
      v9 = v12 + 6;
      v11 = v10 + ~v11;
    }

LABEL_8:
    v10 = v11;
  }

  while (v11);
  if (v9 == v8 || *v9 != a2 || *(v9 + 1) || *(v9 + 2) != a3)
  {
LABEL_16:
    objc_destroyWeak(&v34 + 1);
    WeakRetained = 0;
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained(v9 + 2);
  v15 = *(v9 + 10);
  objc_destroyWeak(&v34 + 1);
  if (!WeakRetained)
  {
LABEL_17:
    v23 = 4294956418;
    goto LABEL_18;
  }

  v16 = objc_loadWeakRetained(this);
  v17 = [v16 parameterTree];
  v18 = [v17 _autoCreatedForV2AU];

  v19 = [WeakRetained unitName];
  a4->unitName = v19;

  a4->unit = [WeakRetained unit];
  [WeakRetained minValue];
  a4->minValue = v20;
  [WeakRetained maxValue];
  a4->maxValue = v21;
  if (v18)
  {
    [WeakRetained _defaultValue];
  }

  else
  {
    [WeakRetained value];
  }

  a4->defaultValue = v22;
  v25 = [WeakRetained flags];
  a4->flags = v25 | 0x8000000;
  a4->clumpID = v15;
  v28 = *(this + 13);
  v27 = this + 104;
  v26 = v28;
  if (v28)
  {
    v29 = v27;
    do
    {
      v30 = *(v26 + 8);
      v13 = v30 >= v15;
      v31 = v30 < v15;
      if (v13)
      {
        v29 = v26;
      }

      v26 = *&v26[8 * v31];
    }

    while (v26);
    if (v29 != v27 && v15 >= *(v29 + 8))
    {
      a4->flags = v25 | 0x8100000;
    }
  }

  v32 = [WeakRetained displayName];
  v33 = v32;
  if (v32)
  {
    a4->cfNameString = v32;
    stpncpy(a4->name, [(__CFString *)v32 UTF8String], 0x34uLL);
  }

  else
  {
    a4->cfNameString = &stru_1F0340B48;
  }

  v23 = 0;
LABEL_18:

  return v23;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterValueStrings(AUv3InstanceBase::ParameterMap *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(a1, a2, 0, a3);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 valueStrings];
    *a4 = v7;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 4294956417;
    }
  }

  else
  {
    v8 = 4294956418;
  }

  return v8;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterStringFromValue(AUv3InstanceBase::ParameterMap *this, unsigned int a2, unsigned int a3, const float *a4, const __CFString **a5)
{
  *a5 = 0;
  v7 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this, a2, 0, a3);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringFromValue:a4];
    v10 = v9;
    if (v9)
    {
      *a5 = v9;
    }

    v11 = 0;
  }

  else
  {
    v11 = 4294956418;
  }

  return v11;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterIDName(id *this, unsigned int a2, unsigned int a3, int a4, const __CFString **a5)
{
  WeakRetained = objc_loadWeakRetained(this);
  v11 = [WeakRetained parameterTree];

  *a5 = 0;
  v12 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this, a2, 0, a3);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 displayNameWithLength:a4];
    v15 = v14;
    if (v14)
    {
      v16 = 0;
      *a5 = v14;
    }

    else
    {
      v16 = 4294956417;
    }
  }

  else
  {
    v16 = 4294956418;
  }

  return v16;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterGroupName(AUv3InstanceBase::ParameterMap *this, unsigned int a2, const __CFString **a3)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(this);
  *a3 = 0;
  v8 = *(this + 13);
  v7 = this + 104;
  v6 = v8;
  if (!v8)
  {
    return 4294967246;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 8);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 8) > a2)
  {
    return 4294967246;
  }

  v14 = *(v9 + 5);
  v15 = [v14 displayName];

  if (v15)
  {
    *a3 = [v14 displayName];
  }

  return 0;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterValueFromString(AUv3InstanceBase::ParameterMap *this, unsigned int a2, unsigned int a3, const __CFString *a4, float *a5)
{
  *a5 = 0.0;
  v7 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this, a2, 0, a3);
  v8 = v7;
  if (v7)
  {
    [v7 valueFromString:a4];
    v9 = 0;
    *a5 = v10;
  }

  else
  {
    v9 = 4294956418;
  }

  return v9;
}

uint64_t AUv3InstanceBase::GetPropertyInfo(AUv3InstanceBase *this, int a2, int a3, int a4, unsigned int *a5, unsigned __int8 *a6)
{
  v9 = a3;
  v10 = a2;
  v8 = a4;
  v7[0] = this;
  v7[1] = &v10;
  v7[2] = &v9;
  v7[3] = &v8;
  v7[4] = a5;
  v7[5] = a6;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetPropertyInfo(unsigned int,unsigned int,unsigned int,unsigned int &,unsigned char &)::{lambda(void)#1}>, v7);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetPropertyInfo(unsigned int,unsigned int,unsigned int,unsigned int &,unsigned char &)::{lambda(void)#1}>(uint64_t **a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = **a1;
  v2 = *(*a1)[1];
  v3 = *(*a1)[2];
  v4 = *(*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v46 = 0;
  v7 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v7 + 8), v2);
  if (Value)
  {
    v9 = Value;
    *__p = 0;
    v10 = *(v1 + 72);
    v11 = objc_opt_class();
    v12 = [v9[1] UTF8String];
    AUAudioUnitProperties::accessorsForProperty(v11, v12, 0, __p, v13);
    v14 = *(v1 + 72);
    *v6 = objc_opt_respondsToSelector() & 1;
    v15 = (**v9)(v9, *(v1 + 72), v3, v4);
    v16 = v15;
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_100;
    }

    if (v15)
    {
      *v5 = v15;
      if ((v9[2] & 5) != 0)
      {
LABEL_5:
        v16 = 0;
        goto LABEL_100;
      }

      v16 = 0;
LABEL_47:
      *v6 = 0;
      goto LABEL_100;
    }

    if (v9[6])
    {
      if ((v9[2] & 2) != 0)
      {
        v24 = AUv3InstanceBase::GetBus(v1, v3, v4, &v46);
        v25 = v24;
        v16 = v46;
        if (v46)
        {

          v17 = 0;
          goto LABEL_99;
        }

        v17 = [v24 valueForKey:v9[1]];
      }

      else
      {
        if (v3)
        {
          v17 = 0;
          v16 = 4294956430;
LABEL_99:

          goto LABEL_100;
        }

        if (v4)
        {
          v17 = 0;
          v16 = 4294956419;
          goto LABEL_99;
        }

        v17 = [*(v1 + 72) valueForKey:v9[1]];
      }

      if (v17)
      {
        *v5 = 0;
        v16 = std::function<int ()(objc_object *,void *,unsigned int &)>::operator()((v9 + 3), v17, 0, v5);
      }

      else
      {
        v16 = 4294956445;
      }

      goto LABEL_99;
    }
  }

  if (v2 <= 37)
  {
    switch(v2)
    {
      case 1:
      case 23:
        if (v3 != 1)
        {
          goto LABEL_51;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 152) - *(v1 + 144)) >> 3) <= v4)
        {
          v16 = 4294956419;
          goto LABEL_100;
        }

        if (v2 == 23 || v2 == 1)
        {
          v16 = 0;
          v19 = 16;
          goto LABEL_61;
        }

        goto LABEL_94;
      case 2:
        if (v3)
        {
          v33 = v4;
        }

        else
        {
          v33 = 0;
        }

        if (v3)
        {
          v34 = v3;
        }

        else
        {
          v34 = 2;
        }

        v35 = AUv3InstanceBase::GetBus(v1, v34, v33, &v46);
        v16 = v46;
        if (!v46)
        {
          goto LABEL_42;
        }

        goto LABEL_100;
      case 3:
        AUv3InstanceBase::ParameterMap::paramIDsForScope(__p, (v1 + 200), v3);
        v36 = *__p;
        *v5 = (*&__p[8] - *__p) & 0xFFFFFFFC;
        *v6 = 0;
        if (v36)
        {
          operator delete(v36);
        }

        goto LABEL_5;
      case 4:
        v16 = 0;
        v23 = 104;
        goto LABEL_46;
      case 8:
        if (v3)
        {
          v30 = v4;
        }

        else
        {
          v30 = 0;
        }

        if (v3)
        {
          v31 = v3;
        }

        else
        {
          v31 = 2;
        }

        v32 = AUv3InstanceBase::GetBus(v1, v31, v30, &v46);
        v16 = v46;
        if (!v46)
        {
          goto LABEL_60;
        }

        goto LABEL_100;
      case 11:
        if ((v3 - 3) < 0xFFFFFFFE)
        {
LABEL_51:
          v16 = 4294956430;
          goto LABEL_100;
        }

        v39 = *(v1 + 72);
        if (v3 == 1)
        {
          [v39 inputBusses];
        }

        else
        {
          [v39 outputBusses];
        }
        v45 = ;
        *v5 = 4;
        *v6 = [v45 isCountChangeable];

        goto LABEL_5;
      case 13:
        v28 = [*(v1 + 72) channelCapabilities];
        v29 = v28;
        if (v28)
        {
          *v5 = 2 * [v28 count];
          *v6 = 0;

          goto LABEL_5;
        }

        v38 = *AudioComponentLogCategory();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *__p = 136316162;
        *&__p[4] = "AUv3Instance.mm";
        v48 = 1024;
        v49 = 767;
        v50 = 1024;
        v51 = 13;
        v52 = 1024;
        v53 = v3;
        v54 = 1024;
        v55 = v4;
        goto LABEL_93;
      case 19:
        v26 = AUv3InstanceBase::GetBus(v1, v3, v4, &v46);
        v27 = v26;
        v16 = v46;
        if (v46)
        {

          goto LABEL_100;
        }

        *v6 = 1;
        v40 = [v26 format];
        v41 = [v40 channelLayout];

        if (v41)
        {
          *v5 = layoutSize(v41);

          goto LABEL_5;
        }

        v16 = 4294956445;
        break;
      case 27:
        v16 = 0;
LABEL_60:
        v19 = 40;
        goto LABEL_61;
      case 29:
        *v5 = 4;
        if (*(v1 + 72) && (*(*v1 + 216))(v1))
        {
          v37 = [*(v1 + 72) isLoadedInProcess];
        }

        else
        {
          v37 = 1;
        }

        v16 = 0;
        *v6 = v37;
        goto LABEL_100;
      case 33:
        goto LABEL_40;
      case 34:
      case 35:
        v16 = 0;
        v23 = 16;
        goto LABEL_46;
      default:
        goto LABEL_75;
    }

    goto LABEL_100;
  }

  if (v2 <= 1841)
  {
    if (v2 <= 55)
    {
      if (v2 != 38)
      {
        if (v2 == 45)
        {
          v20 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID((v1 + 200), v3, 0, v4);
          v21 = v20;
          if (!v20)
          {
            v16 = 4294967246;
            goto LABEL_100;
          }

          v22 = [v20 dependentParameters];
          *v5 = 8 * [v22 count];

          *v6 = 0;
          goto LABEL_5;
        }

        goto LABEL_75;
      }

LABEL_40:
      v16 = 0;
      v23 = 24;
LABEL_46:
      *v5 = v23;
      goto LABEL_47;
    }

    if (v2 != 56)
    {
      if (v2 == 57)
      {
        v16 = 0;
        *v5 = 0;
        goto LABEL_47;
      }

      goto LABEL_75;
    }

LABEL_41:
    v16 = 0;
LABEL_42:
    v19 = 8;
LABEL_61:
    *v5 = v19;
    *v6 = 1;
    goto LABEL_100;
  }

  if (v2 > 3500)
  {
    if (v2 != 3501 && v2 != 3502)
    {
      goto LABEL_75;
    }

LABEL_36:
    v16 = 0;
    v23 = 8;
    goto LABEL_46;
  }

  if (v2 == 1842)
  {
    goto LABEL_41;
  }

  if (v2 == 2015)
  {
    goto LABEL_36;
  }

LABEL_75:
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v38 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    *__p = 136316162;
    *&__p[4] = "AUv3Instance.mm";
    v48 = 1024;
    v49 = 910;
    v50 = 1024;
    v51 = v2;
    v52 = 1024;
    v53 = v3;
    v54 = 1024;
    v55 = v4;
LABEL_93:
    _os_log_impl(&dword_18F5DF000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid property id %d (scope %d, element %d)", __p, 0x24u);
  }

LABEL_94:
  v16 = 4294956417;
LABEL_100:
  v43 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t AudioComponentLogCategory(void)
{
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  return gAudioComponentLogCategory;
}

uint64_t AUv3InstanceBase::Reset(AUv3InstanceBase *this, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v4[0] = &v6;
  v4[1] = &v5;
  v4[2] = this;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Reset(unsigned int,unsigned int)::{lambda(void)#1}>, v4);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Reset(unsigned int,unsigned int)::{lambda(void)#1}>(void *a1)
{
  v3 = *a1;
  if (***a1)
  {
    return 4294956430;
  }

  if (*v3[1])
  {
    return 4294956419;
  }

  [*(v3[2] + 9) reset];
  return 0;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Uninitialize(void)::{lambda(void)#1}>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 80) == 1)
  {
    [*(v1 + 72) deallocateRenderResources];
    *(v1 + 80) = 0;
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Initialize(void)::{lambda(void)#1}>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 80))
  {
    return 0;
  }

  v3 = *(v1 + 72);
  v8 = 0;
  v4 = [v3 allocateRenderResourcesAndReturnError:&v8];
  v5 = v8;
  v6 = v5;
  if (v4)
  {
    AUv3RenderAdapter::initialize((v1 + 136), *(v1 + 72));
    v2 = 0;
    *(v1 + 80) = 1;
  }

  else if (v5)
  {
    v2 = [v5 code];
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t AUv3InstanceBase::Close(AUv3InstanceBase *this)
{
  (*(*this + 64))(this);
  v2 = *(this + 11);
  *(this + 11) = 0;

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 22) = 0;
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 23) = 0;
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 24) = 0;
  }

  AUv3InstanceBase::ParameterMap::setAudioUnit((this + 200), 0, 0);
  v6 = *(this + 9);
  *(this + 9) = 0;

  return 0;
}

void AUv3InstanceBase::ParameterMap::setAudioUnit(AUv3InstanceBase::ParameterMap *this, AUv3InstanceBase *a2, AUAudioUnit *a3)
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(this);

  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(this);
    [v6 removeObserver:*(this + 9) forKeyPath:@"parameterTree" context:0];

    v7 = atomic_exchange(this + 11, 0);
    if (v7)
    {
      v8 = objc_loadWeakRetained(this);
      v9 = [v8 parameterTree];
      [v9 removeParameterObserver:v7];
    }

    atomic_store(0, this + 16);
    v10 = objc_storeWeak(this, obj);
    *(this + 1) = a2;
    v11 = v10;

    if (obj)
    {
      v12 = objc_loadWeakRetained(this);
      [v12 addObserver:*(this + 9) forKeyPath:@"parameterTree" options:3 context:0];

      *(this + 80) = 1;
    }
  }
}

void sub_18F75FFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x18F75FF44);
  }

  _Unwind_Resume(a1);
}

BOOL AUv3InstanceBase::CanDo(AUv3InstanceBase *this, unsigned int a2)
{
  if (a2 <= 0x15)
  {
    result = 1;
    if (((1 << a2) & 0x37CEFE) != 0)
    {
      return result;
    }
  }

  if (a2 - 257 >= 2)
  {
    if (a2 - 513 <= 1)
    {
      return *(this + 12) == 1635086197;
    }

    return 0;
  }

  v4 = *(this + 12);
  result = 1;
  if (v4 > 1635086952)
  {
    if (v4 == 1635086953)
    {
      return result;
    }

    v5 = 29293;
  }

  else
  {
    if (v4 == 1635085673)
    {
      return result;
    }

    v5 = 28021;
  }

  if (v4 != (v5 | 0x61750000))
  {
    return 0;
  }

  return result;
}

void ___ZN16AUv3InstanceBase12ParameterMapC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained((v1 + 128));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (atomic_exchange((v1 + 88), 0))
    {
      [WeakRetained removeParameterObserver:?];
    }

    objc_storeWeak((v1 + 128), 0);
  }

  atomic_store(0, (v1 + 16));
  os_unfair_recursive_lock_unlock();
  v5 = objc_loadWeakRetained(v1);
  v6 = [v5 parameterTree];

  if (v6)
  {
    v7 = v6;
    if ([v7 _autoCreatedForV2AU] >= 2)
    {
      v8 = *(v1 + 8);
      os_unfair_recursive_lock_lock_with_options();
      memset(v12, 0, sizeof(v12));
      v9 = *(v8 + 104);
      v10 = *(v8 + 112);
      v13 = v12;
      v14 = 0;
      v11 = v10 - v9;
      if (v10 != v9)
      {
        if (!((v11 >> 4) >> 60))
        {
          std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v11 >> 4);
        }

        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v13);
      os_unfair_recursive_lock_unlock();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_18F7602B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](va);
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void AUv3InstanceBase::AUv3InstanceBase(AUv3InstanceBase *this, const AudioComponentDescription *a2)
{
  *this = &unk_1F033C758;
  *(this + 5) = 0;
  *(this + 1) = AUIB_Open;
  *(this + 2) = AUIB_Close;
  componentType = a2->componentType;
  v4 = AUInstanceBase::LookupMethod_Music;
  if (a2->componentType <= 1635086196)
  {
    v5 = componentType - 1635085670;
    v6 = v5 > 0xF;
    v7 = (1 << v5) & 0x8009;
    if (!v6 && v7 != 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v4 = AUInstanceBase::LookupMethod;
    goto LABEL_15;
  }

  if (componentType != 1635086957 && componentType != 1635086953)
  {
    if (componentType == 1635086197)
    {
      v4 = AUInstanceBase::LookupMethod_Output;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  *(this + 3) = v4;
  *(this + 4) = 0;
  *this = &unk_1F033C378;
  v10 = *&a2->componentType;
  *(this + 16) = a2->componentFlagsMask;
  *(this + 3) = v10;
  *(this + 9) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 14) = 0u;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 216) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v11 = objc_alloc_init(_AUParameterTreeObserver);
  *(this + 34) = v11;
  *(this + 280) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 36) = 0;
  *(this + 37) = this + 304;
  *(this + 20) = 0u;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN16AUv3InstanceBase12ParameterMapC2Ev_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = this + 200;
  [(_AUParameterTreeObserver *)v11 setCallback:v12];
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 364) = 0u;
  *(this + 48) = 0;
  *(this + 49) = 0;
  if (AUv3InstanceBase::sSelectorsOnce != -1)
  {
    dispatch_once(&AUv3InstanceBase::sSelectorsOnce, &__block_literal_global_4193);
  }
}

void sub_18F760558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  objc_destroyWeak((v14 + 328));
  std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(*(v14 + 304));

  a14 = (v14 + 248);
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&a14);
  objc_destroyWeak(v15);

  AUv3RenderAdapter::~AUv3RenderAdapter((v14 + 136));
  v17 = *(v14 + 128);
  *(v14 + 128) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  a14 = (v14 + 104);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

IMP ___ZN16AUv3InstanceBaseC2ERK25AudioComponentDescription_block_invoke()
{
  AUv3InstanceBase::sSel_SetV2Parameter = sel_setV2Parameter_value_bufferOffset_sequenceNumber_;
  AUv3InstanceBase::sSel_GetV2Parameter = sel_getV2Parameter_sequenceNumber_;
  AUv3InstanceBase::sSel_address = sel_address;
  v0 = objc_opt_class();
  result = class_getMethodImplementation(v0, AUv3InstanceBase::sSel_address);
  AUv3InstanceBase::sAUParameter_address = result;
  return result;
}

void AUv3InstanceBase::DoOpen(AUv3InstanceBase *this, OpaqueAudioComponentInstance *a2, AUAudioUnit *a3)
{
  v28 = a3;
  *(this + 5) = a2;
  objc_storeStrong(this + 9, a3);
  AUv3InstanceBase::ParameterMap::setAudioUnit((this + 200), this, v28);
  v6 = [*(this + 9) renderBlock];

  if (!v6)
  {
    AudioComponentInstanceSetNoCanDo(a2, 14);
  }

  AudioComponentInstanceSetNoCanDo(a2, 20);
  AudioComponentInstanceSetNoCanDo(a2, 21);
  v7 = [(AUAudioUnit *)v28 inputBusses];
  std::vector<AUv3RenderAdapter::AUInputElement>::resize(this + 18, [v7 count]);

  v8 = [*(this + 9) scheduleParameterBlock];
  v9 = *(this + 22);
  *(this + 22) = v8;

  v10 = *(this + 22);
  if (v10)
  {
    v11 = [v10 copy];
    v12 = *(this + 22);
    *(this + 22) = v11;
  }

  v13 = [*(this + 9) scheduleMIDIEventBlock];
  v14 = *(this + 23);
  *(this + 23) = v13;

  v15 = *(this + 23);
  if (v15)
  {
    v16 = [v15 copy];
    v17 = *(this + 23);
    *(this + 23) = v16;
  }

  v18 = [*(this + 9) scheduleMIDIEventListBlock];
  v19 = *(this + 24);
  *(this + 24) = v18;

  v20 = *(this + 24);
  if (v20)
  {
    v21 = [v20 copy];
    v22 = *(this + 24);
    *(this + 24) = v21;
  }

  v23 = *(this + 9);
  v24 = objc_opt_class();
  *(this + 49) = class_getMethodImplementation(v24, AUv3InstanceBase::sSel_GetV2Parameter);
  MethodImplementation = class_getMethodImplementation(v24, AUv3InstanceBase::sSel_SetV2Parameter);
  *(this + 48) = MethodImplementation;
  if (!*(this + 49) || !MethodImplementation)
  {
    std::terminate();
  }

  v26 = *(this + 5);
  if (v26)
  {
    v27 = (*(*v26 + 8))(v26);
    if (v27)
    {
      *(v27 + 80) = [*(this + 9) isLoadedInProcess] ^ 1;
    }
  }
}

uint64_t MP4BoxParser_SampleSize::Init(MP4BoxParser **this)
{
  v13 = *MEMORY[0x1E69E9840];
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    v4 = *(this + 5);
    if (v4 == 1937013298 || v4 == 1937011578)
    {
      v6 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v6, 8uLL, v12);
      if (!result)
      {
        *(this + 16) = bswap32(v12[1]);
        v7 = *(this + 6);
        v8 = (*(*this + 3))(this);
        if (*(this + 5) == 1937011578)
        {
          v9 = v12[0];
          *(this + 15) = bswap32(v12[0]);
          if (v9)
          {
            result = 0;
            goto LABEL_2;
          }

          v11 = 2;
        }

        else
        {
          v10 = HIBYTE(v12[0]);
          *(this + 15) = HIBYTE(v12[0]);
          if (v10 != 16)
          {
            result = 2003334207;
            goto LABEL_2;
          }

          v11 = 1;
        }

        if (*(this + 16) <= (v7 - v8 - 8) >> v11)
        {
          result = 0;
        }

        else
        {
          result = 2003334207;
        }
      }
    }

    else
    {
      result = 4294967294;
    }
  }

LABEL_2:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void MP4BoxParser_SampleSize::~MP4BoxParser_SampleSize(MP4BoxParser_SampleSize *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void MP4BoxParser_SampleSize::MP4BoxParser_SampleSize(MP4BoxParser_SampleSize *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F032BFF8;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

uint64_t MP4BoxParser_SampleSize::GetSampleSize(MP4BoxParser_SampleSize *this, unsigned int a2, unsigned int *a3)
{
  result = 2003334207;
  if (*(this + 16) <= a2)
  {
    return result;
  }

  *a3 = 0;
  v7 = *(this + 15);
  if (*(this + 5) == 1937011578)
  {
    if (v7)
    {
LABEL_4:
      result = 0;
      *a3 = v7;
      return result;
    }
  }

  else if (v7)
  {
    if (v7 != 16)
    {
      return result;
    }

    v8 = 2;
    goto LABEL_9;
  }

  v8 = 4;
LABEL_9:
  v9 = (*(*this + 24))(this);
  result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v8 * a2 + v9 + 8, v8, &v11);
  if (!result)
  {
    v10 = *(this + 15);
    if (v10 == 16)
    {
      v7 = bswap32(v11) >> 16;
      goto LABEL_4;
    }

    result = 2003334207;
    if (!v10)
    {
      v7 = bswap32(v11);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t MP4BoxParser_SampleSize::GetByteCount(MP4BoxParser_SampleSize *this)
{
  if (*(this + 5) == 1937011578)
  {
    v2 = *(this + 15);
    if (v2)
    {
      return (*(this + 16) * v2);
    }
  }

  v6 = 0;
  if (*(this + 16))
  {
    v4 = 0;
    LODWORD(v3) = 0;
    while (!MP4BoxParser_SampleSize::GetSampleSize(this, v4, &v6))
    {
      v3 = v6 + v3;
      if (++v4 >= *(this + 16))
      {
        return v3;
      }
    }
  }

  return 0;
}

void _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, _OWORD *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 5)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 5)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 5;
      v15 = &v8[32 * (a3 - (v14 >> 5))];
      v18 = 32 * a3 - 32 * (v14 >> 5);
      do
      {
        v19 = &v8[v17];
        v20 = a4[1];
        *v19 = *a4;
        *(v19 + 1) = v20;
        v17 += 32;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v21 = &__src[32 * a3];
        v22 = &v15[-32 * a3];
        v23 = v15;
        if (v22 < v8)
        {
          v23 = v15;
          do
          {
            v24 = *v22;
            v25 = *(v22 + 1);
            v22 += 32;
            *v23 = v24;
            *(v23 + 1) = v25;
            v23 += 32;
          }

          while (v22 < v8);
        }

        *(a1 + 8) = v23;
        if (v15 != v21)
        {
          memmove(&__src[32 * a3], __src, v15 - v21);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          v4 += 2 * v26;
        }

        do
        {
          v27 = v4[1];
          *v6 = *v4;
          v6[1] = v27;
          v6 += 2;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 5);
      if (v11 >> 59)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 4 > v11)
      {
        v11 = v12 >> 4;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 32 * ((__src - v10) >> 5);
      v29 = (v28 + 32 * a3);
      v30 = 32 * a3;
      v31 = v28;
      do
      {
        v32 = a4[1];
        *v31 = *a4;
        v31[1] = v32;
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
      v33 = *(a1 + 8) - __src;
      memcpy(v29, __src, v33);
      v34 = &v29[v33];
      *(a1 + 8) = v6;
      v35 = *a1;
      v36 = v6 - *a1;
      v37 = v28 - v36;
      memcpy((v28 - v36), *a1, v36);
      *a1 = v37;
      *(a1 + 8) = v34;
      *(a1 + 16) = 0;
      if (v35)
      {

        operator delete(v35);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<float>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      v17 = (v16 + v16) * cos(v15);
      *a5++ = v17;
      v18 = exp(v14 + v14);
      *a6++ = -v18;
      v19 = v9 * *(v13 - 1);
      v20 = v9 * *v13;
      v21 = hypot(v19, v20);
      *(v10 - 22) = v21 + v21;
      *(v10 - 11) = atan2(v20, v19);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<float>(int a1, uint64_t a2, float *a3, _DWORD *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      v17 = v11 * v14;
      *a3++ = v17;
      *&v16 = v11 * -(v15 * v16);
      *a4++ = LODWORD(v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

void _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, __int128 *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 6)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 6)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 6;
      v15 = &v8[64 * (a3 - (v14 >> 6))];
      v18 = (a3 << 6) - (v14 >> 6 << 6);
      do
      {
        v19 = &v8[v17];
        v21 = *a4;
        v20 = a4[1];
        v22 = a4[3];
        *(v19 + 2) = a4[2];
        *(v19 + 3) = v22;
        *v19 = v21;
        *(v19 + 1) = v20;
        v17 += 64;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v23 = &__src[64 * a3];
        v24 = &v15[-64 * a3];
        v25 = v15;
        if (v24 < v8)
        {
          v25 = v15;
          do
          {
            v27 = *v24;
            v26 = *(v24 + 1);
            v28 = *(v24 + 3);
            *(v25 + 2) = *(v24 + 2);
            *(v25 + 3) = v28;
            *v25 = v27;
            *(v25 + 1) = v26;
            v25 += 64;
            v24 += 64;
          }

          while (v24 < v8);
        }

        *(a1 + 8) = v25;
        if (v15 != v23)
        {
          memmove(&__src[64 * a3], __src, v15 - v23);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v29 = 0;
          }

          else
          {
            v29 = a3;
          }

          v4 += 4 * v29;
        }

        do
        {
          v31 = *v4;
          v30 = v4[1];
          v32 = v4[3];
          v6[2] = v4[2];
          v6[3] = v32;
          *v6 = v31;
          v6[1] = v30;
          v6 += 4;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 6);
      if (v11 >> 58)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
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
        if (!(v13 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = (__src - v10) >> 6 << 6;
      v34 = (v33 + (a3 << 6));
      v35 = a3 << 6;
      v36 = v33;
      do
      {
        v38 = *a4;
        v37 = a4[1];
        v39 = a4[3];
        v36[2] = a4[2];
        v36[3] = v39;
        *v36 = v38;
        v36[1] = v37;
        v36 += 4;
        v35 -= 64;
      }

      while (v35);
      v40 = *(a1 + 8) - __src;
      memcpy(v34, __src, v40);
      v41 = &v34[v40];
      *(a1 + 8) = v6;
      v42 = *a1;
      v43 = v6 - *a1;
      v44 = v33 - v43;
      memcpy((v33 - v43), *a1, v43);
      *a1 = v44;
      *(a1 + 8) = v41;
      *(a1 + 16) = 0;
      if (v42)
      {

        operator delete(v42);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<double>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, long double *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      *a5++ = (v16 + v16) * cos(v15);
      *a6++ = -exp(v14 + v14);
      v17 = v9 * *(v13 - 1);
      v18 = v9 * *v13;
      v19 = hypot(v17, v18);
      *(v10 - 22) = v19 + v19;
      *(v10 - 11) = atan2(v18, v17);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<double>(int a1, uint64_t a2, double *a3, double *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      *a3++ = v11 * v14;
      *a4++ = v11 * -(v15 * v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

_DWORD *RamstadSRC::initFilter(RamstadSRC *this, double a2, int a3)
{
  if (a3 == 34)
  {
    v4 = vcvtpd_s64_f64(*(this + 4) / *(this + 5));
  }

  else
  {
    v4 = 1;
  }

  *(this + 22) = v4;
  v5 = fmin(a2, 1.0) * *(this + 13);
  v6 = *(this + 12);
  if (*(this + 14) == 8)
  {
    v7 = v6;
  }

  else
  {
    v7 = (3 * v6 + 1) >> 1;
  }

  if (*(this + 93) == 1)
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 160, *(this + 20), v7, &v50);
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 184, *(this + 23), v7, &v50);
    {
      GetKernelFactoryD(void)::sFactory.__m_.__sig = 850045863;
      *GetKernelFactoryD(void)::sFactory.__m_.__opaque = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[16] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[32] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[48] = 0u;
      *&qword_1EAD30EB8 = 0u;
    }

    v9 = *(this + 13);
    v8 = *(this + 14);
    v10 = (*(this + 92) & 1) == 0;
    std::mutex::lock(&GetKernelFactoryD(void)::sFactory);
    v12 = qword_1EAD30EB0;
    v11 = qword_1EAD30EB8;
    v13 = qword_1EAD30EB0;
    if (!qword_1EAD30EB0 && qword_1EAD30EB8)
    {
LABEL_29:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v14 = v12 + 40 * v11;
      if (v13 == v14)
      {
        break;
      }

      v15 = *(v13 + 32);
      if (!v15 || *(v15 + 8) == -1)
      {
        if (v12 > v13)
        {
          goto LABEL_67;
        }

        if (!v12 && v11)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v13 >= v14)
        {
LABEL_67:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v13 + 40 != v14)
        {
          v16 = v13;
          do
          {
            v17 = v16 + 40;
            v18 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 + 40) + 80;
            v16 = v17;
          }

          while (v18 != v14);
        }

        v19 = *(v14 - 8);
        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }

        v12 = qword_1EAD30EB0;
        v11 = --qword_1EAD30EB8;
      }

      else
      {
        v13 += 40;
      }

      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v11 == 0;
      }

      if (!v20)
      {
        goto LABEL_29;
      }
    }

    v54 = v8;
    v55 = v9;
    v56 = v5;
    v57 = v10;
    v34 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v54);
    v35 = v34[1];
    if (!v35 || (v36 = std::__shared_weak_count::lock(v35)) == 0 || !*v34)
    {
      operator new();
    }

    *&v37 = *v34;
    *(&v37 + 1) = v36;
    v48 = v37;
    std::mutex::unlock(&GetKernelFactoryD(void)::sFactory);
    v42 = *(this + 3);
    v43 = v48;
    *(this + 1) = v48;
    if (v42)
    {
LABEL_62:
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }

  else
  {
    v50 = 0uLL;
    v51 = 0uLL;
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 112, *(this + 14), v7, &v50);
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 136, *(this + 17), v7, &v50);
    {
      GetKernelFactory(void)::sFactory.__m_.__sig = 850045863;
      *GetKernelFactory(void)::sFactory.__m_.__opaque = 0u;
      *&GetKernelFactory(void)::sFactory.__m_.__opaque[16] = 0u;
      *&GetKernelFactory(void)::sFactory.__m_.__opaque[32] = 0u;
      *&GetKernelFactory(void)::sFactory.__m_.__opaque[48] = 0u;
      *&qword_1EAD0E4D8 = 0u;
    }

    v22 = *(this + 13);
    v21 = *(this + 14);
    v23 = (*(this + 92) & 1) == 0;
    std::mutex::lock(&GetKernelFactory(void)::sFactory);
    v25 = qword_1EAD0E4D0;
    v24 = qword_1EAD0E4D8;
    v26 = qword_1EAD0E4D0;
    if (!qword_1EAD0E4D0 && qword_1EAD0E4D8)
    {
LABEL_51:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v27 = v25 + 40 * v24;
      if (v26 == v27)
      {
        break;
      }

      v28 = *(v26 + 32);
      if (!v28 || *(v28 + 8) == -1)
      {
        if (v25 > v26)
        {
          goto LABEL_68;
        }

        if (!v25 && v24)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v26 >= v27)
        {
LABEL_68:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v26 + 40 != v27)
        {
          v29 = v26;
          do
          {
            v30 = v29 + 40;
            v31 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v29, v29 + 40) + 80;
            v29 = v30;
          }

          while (v31 != v27);
        }

        v32 = *(v27 - 8);
        if (v32)
        {
          std::__shared_weak_count::__release_weak(v32);
        }

        v25 = qword_1EAD0E4D0;
        v24 = --qword_1EAD0E4D8;
      }

      else
      {
        v26 += 40;
      }

      if (v25)
      {
        v33 = 1;
      }

      else
      {
        v33 = v24 == 0;
      }

      if (!v33)
      {
        goto LABEL_51;
      }
    }

    v54 = v21;
    v55 = v22;
    v56 = v5;
    v57 = v23;
    v38 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v54);
    v39 = v38[1];
    if (!v39 || (v40 = std::__shared_weak_count::lock(v39)) == 0 || !*v38)
    {
      operator new();
    }

    *&v41 = *v38;
    *(&v41 + 1) = v40;
    v49 = v41;
    std::mutex::unlock(&GetKernelFactory(void)::sFactory);
    v42 = *(this + 1);
    v43 = v49;
    *this = v49;
    if (v42)
    {
      goto LABEL_62;
    }
  }

  v44 = *(this + 12);
  LODWORD(v58) = 0;
  std::vector<float>::assign(this + 26, v44, &v58, v43);
  v45 = *(this + 12);
  LODWORD(v58) = 0;
  return std::vector<float>::assign(this + 29, v45, &v58, v46);
}

void sub_18F761ED4(_Unwind_Exception *a1)
{
  shared_weak_owners = v2[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v2[3].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  v6 = *v3;
  if (*v3)
  {
    v2[2].__vftable = v6;
    operator delete(v6);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::mutex::unlock(&GetKernelFactory(void)::sFactory);
  _Unwind_Resume(a1);
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAD0E4D0;
  v2 = qword_1EAD0E4D8;
  if (qword_1EAD0E4D0)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1EAD0E4D8 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1EAD0E4D0;
  if (qword_1EAD0E4D8)
  {
    v5 = qword_1EAD0E4D0;
    v6 = qword_1EAD0E4D8;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v26 = *a1;
    v9 = *(a1 + 16);
    v28[0] = 0;
    v28[1] = 0;
    v27 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v24 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, v8) != 0xFF)
      {
        v25 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v8, &v25, &v26, &v24))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v24;
        if (qword_1EAD0E4D0 > v24)
        {
          goto LABEL_57;
        }

        if (!qword_1EAD0E4D0 && qword_1EAD0E4D8)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1EAD0E4D0 + 40 * qword_1EAD0E4D8;
        if (v24 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1EAD0E4E0 >= qword_1EAD0E4D8)
          {
            if (qword_1EAD0E4E0 == qword_1EAD0E4D8)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(&v23, v24, &v26);
            }

            else
            {
              if (v15 == v24)
              {
                v20 = v26;
                *(v15 + 16) = v27;
                *v15 = v20;
                *(v15 + 24) = *v28;
                v28[0] = 0;
                v28[1] = 0;
                ++qword_1EAD0E4D8;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1EAD0E4D8;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v26;
                v14[16] = v27;
                v18 = *v28;
                v28[0] = 0;
                v28[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v23 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v24 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v26) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, (v7 - 40)) != 0xFF)
        {
          v24 = (v7 - 40);
          goto LABEL_43;
        }

        v25 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v1, &v25, &v26, &v24))
        {
LABEL_43:
          if (!qword_1EAD0E4D0 && v24)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v23 = v24;
LABEL_48:
          if (v28[1])
          {
            std::__shared_weak_count::__release_weak(v28[1]);
          }

          v5 = v23;
          if (!v23)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          goto LABEL_51;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_51:
  v21 = *MEMORY[0x1E69E9840];
  return v5 + 24;
}

void sub_18F7624A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernel>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032C0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v5 = v3 == v4;
    v2 = v3 < v4 ? 0xFFFFFFFFLL : 1;
    if (v5)
    {
      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      if (v6 == v7)
      {
        LODWORD(v2) = 0;
      }

      else
      {
        LODWORD(v2) = -127;
      }

      if (v6 > v7)
      {
        LODWORD(v2) = 1;
      }

      if (v6 < v7)
      {
        v2 = 0xFFFFFFFFLL;
      }

      else
      {
        v2 = v2;
      }

      if (!v2)
      {
        v8 = *(a1 + 16);
        v9 = *(a2 + 16);
        v10 = v8 == v9;
        if (v8 < v9)
        {
          LODWORD(v2) = -1;
        }

        else
        {
          LODWORD(v2) = 1;
        }

        if (v10)
        {
          return 0;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(boost::container *a1, const char *a2, __int128 *a3)
{
  if (qword_1EAD0E4E0 != qword_1EAD0E4D8)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1EAD0E4E0 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1EAD0E4E0 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1EAD0E4E0;
  }

  if (qword_1EAD0E4E0 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1EAD0E4E0 / 5uLL;
  }

  v5 = qword_1EAD0E4E0 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1EAD0E4E0 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error(a1, a2);
  }

  v10 = qword_1EAD0E4D0;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1EAD0E4D0;
  v14 = qword_1EAD0E4D0 + 40 * qword_1EAD0E4D8;
  v15 = v11;
  if (qword_1EAD0E4D0 != a2)
  {
    v16 = qword_1EAD0E4D0;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1EAD0E4D8;
    if (qword_1EAD0E4D8)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1EAD0E4D0);
  }

  qword_1EAD0E4D0 = v12;
  ++qword_1EAD0E4D8;
  qword_1EAD0E4E0 = v6;
  *a1 = &a2[v12 - v10];
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F032C040;
  exception[1] = "get_next_capacity, allocator's max size reached";
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAD30EB0;
  v2 = qword_1EAD30EB8;
  if (qword_1EAD30EB0)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1EAD30EB8 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1EAD30EB0;
  if (qword_1EAD30EB8)
  {
    v5 = qword_1EAD30EB0;
    v6 = qword_1EAD30EB8;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v26 = *a1;
    v9 = *(a1 + 16);
    v28[0] = 0;
    v28[1] = 0;
    v27 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v24 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, v8) != 0xFF)
      {
        v25 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v8, &v25, &v26, &v24))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v24;
        if (qword_1EAD30EB0 > v24)
        {
          goto LABEL_57;
        }

        if (!qword_1EAD30EB0 && qword_1EAD30EB8)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1EAD30EB0 + 40 * qword_1EAD30EB8;
        if (v24 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1EAD30EC0 >= qword_1EAD30EB8)
          {
            if (qword_1EAD30EC0 == qword_1EAD30EB8)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(&v23, v24, &v26);
            }

            else
            {
              if (v15 == v24)
              {
                v20 = v26;
                *(v15 + 16) = v27;
                *v15 = v20;
                *(v15 + 24) = *v28;
                v28[0] = 0;
                v28[1] = 0;
                ++qword_1EAD30EB8;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1EAD30EB8;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v26;
                v14[16] = v27;
                v18 = *v28;
                v28[0] = 0;
                v28[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v23 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v24 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v26) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, (v7 - 40)) != 0xFF)
        {
          v24 = (v7 - 40);
          goto LABEL_43;
        }

        v25 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v1, &v25, &v26, &v24))
        {
LABEL_43:
          if (!qword_1EAD30EB0 && v24)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v23 = v24;
LABEL_48:
          if (v28[1])
          {
            std::__shared_weak_count::__release_weak(v28[1]);
          }

          v5 = v23;
          if (!v23)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          goto LABEL_51;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_51:
  v21 = *MEMORY[0x1E69E9840];
  return v5 + 24;
}

void sub_18F762ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernelD>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernelD>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032C068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(boost::container *a1, const char *a2, __int128 *a3)
{
  if (qword_1EAD30EC0 != qword_1EAD30EB8)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1EAD30EC0 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1EAD30EC0 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1EAD30EC0;
  }

  if (qword_1EAD30EC0 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1EAD30EC0 / 5uLL;
  }

  v5 = qword_1EAD30EC0 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1EAD30EC0 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error(a1, a2);
  }

  v10 = qword_1EAD30EB0;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1EAD30EB0;
  v14 = qword_1EAD30EB0 + 40 * qword_1EAD30EB8;
  v15 = v11;
  if (qword_1EAD30EB0 != a2)
  {
    v16 = qword_1EAD30EB0;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1EAD30EB8;
    if (qword_1EAD30EB8)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1EAD30EB0);
  }

  qword_1EAD30EB0 = v12;
  ++qword_1EAD30EB8;
  qword_1EAD30EC0 = v6;
  *a1 = &a2[v12 - v10];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

void RamstadSRC::RamstadSRC(RamstadSRC *this, double a2, double a3, int a4, unsigned int a5)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 12) = a4;
  *(this + 18) = 0;
  *(this + 22) = 1;
  *(this + 92) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 32) = -1;
  if (a5 <= 0x3F)
  {
    v5 = 8;
  }

  else
  {
    v5 = 11;
  }

  *(this + 66) = -1;
  *(this + 14) = v5;
  *(this + 93) = a5 > 0x5F;
  v6 = floor(a2);
  v7 = v6 == a2;
  v8 = a2 / a3;
  *(this + 13) = qword_18F901820[a5 - 33 < 2];
  if (!v7 || (v9 = floor(a3), v9 != a3))
  {
    *(this + 12) = 0x3E80000000000000;
    *(this + 92) = 0;
    *(this + 13) = 256;
    v18 = vcvtmd_s64_f64(v8);
    *(this + 15) = v18;
    v19 = vcvtmd_s64_f64((v8 - floor(v8)) * 2147483650.0);
    *(this + 17) = v19;
    *(this + 10) = (v18 << 32 >> 1) + v19;
    *(this + 32) = -1;
LABEL_26:
    *(this + 66) = -1;
    goto LABEL_27;
  }

  v10 = v6;
  v11 = v9;
  if (v6 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = -v10;
  }

  if (v11 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = -v11;
  }

  v14 = 1;
  if (v12 >= 2 && v13 >= 2)
  {
    v14 = v13;
    do
    {
      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      if (v12 < v14)
      {
        v14 = v12;
      }

      v12 = v15 % v14;
    }

    while (v15 % v14);
  }

  v16 = v11 / v14;
  if (v16 > 1280)
  {
    *(this + 12) = 0x3E80000000000000;
    *(this + 92) = 0;
    *(this + 13) = 256;
    v20 = vcvtmd_s64_f64(v8);
    *(this + 15) = v20;
    v21 = vcvtmd_s64_f64((v8 - floor(v8)) * 2147483650.0);
    *(this + 17) = v21;
    *(this + 10) = (v20 << 32 >> 1) + v21;
    *(this + 32) = -1;
    goto LABEL_26;
  }

  *(this + 92) = 1;
  v17 = v10 / v14;
  *(this + 13) = v16;
  *(this + 15) = v17 / v16;
  *(this + 16) = v17;
  *(this + 17) = v17 % v16;
LABEL_27:
  *(this + 18) = 0;
  RamstadSRC::initFilter(this, 1.0 / v8, a5);
}

void sub_18F763574(_Unwind_Exception *exception_object)
{
  v4 = v1[29];
  if (v4)
  {
    v1[30] = v4;
    operator delete(v4);
  }

  v5 = v1[26];
  if (v5)
  {
    v1[27] = v5;
    operator delete(v5);
  }

  v6 = v1[23];
  if (v6)
  {
    v1[24] = v6;
    operator delete(v6);
  }

  v7 = v1[20];
  if (v7)
  {
    v1[21] = v7;
    operator delete(v7);
  }

  v8 = v1[17];
  if (v8)
  {
    v1[18] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[15] = v9;
    operator delete(v9);
  }

  v10 = v1[3];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = v1[1];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void RamstadSRC::~RamstadSRC(RamstadSRC *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    *(this + 21) = v5;
    operator delete(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void RamstadSRC::reset(RamstadSRC *this)
{
  *(this + 18) = 0;
  *(this + 22) = 1;
  if (*(this + 93) == 1)
  {
    v2 = *(this + 20);
    v3 = *(this + 21) - v2;
    if (v3 >= 1)
    {
      bzero(v2, v3);
    }

    v4 = *(this + 23);
    v5 = *(this + 24);
  }

  else
  {
    v6 = *(this + 14);
    v7 = *(this + 15) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v4 = *(this + 17);
    v5 = *(this + 18);
  }

  if (v5 - v4 >= 1)
  {

    bzero(v4, v5 - v4);
  }
}

double RamstadSRC::processMono(RamstadSRC *this, RamstadSRC *a2, const float *a3, float *a4, int a5, int a6, int a7, int a8)
{
  if (*(a2 + 12) == 1)
  {
    RamstadSRC::checkPreflight(&v307, a2, a5, a6);
    if ((v308 & 1) == 0)
    {
      v46 = 0;
      v27 = v307;
LABEL_161:
      *this = v27;
      *(this + 4) = v46;
      goto LABEL_162;
    }

    v16 = *(a2 + 92);
    if (*(a2 + 93) == 1)
    {
      if (*(a2 + 92))
      {
        v18 = *(a2 + 17);
        v17 = *(a2 + 18);
        v19 = *(a2 + 22);
        v20 = *(a2 + 2);
        v21 = *(v20 + 16);
        v22 = *(v20 + 40);
        v23 = *(a2 + 20);
        v24 = *(a2 + 23);
        v25 = *(a2 + 13);
        v26 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v28 = 0;
            do
            {
              v30 = v23[2];
              v29 = v23[3];
              v31 = v19;
              v33 = *v23;
              v32 = v23[1];
              if (v19 >= 1)
              {
                do
                {
                  v34 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v35 = vmlaq_f64(v34, v30, v21[2]);
                  v36 = vmlaq_f64(v34, v29, v21[3]);
                  v37 = vmlaq_f64(v34, v33, *v21);
                  v38 = vmlaq_f64(vmlaq_f64(v34, v32, v21[1]), v24[1], v21[5]);
                  v39 = vmlaq_f64(v37, *v24, v21[4]);
                  v40 = vmlaq_f64(v36, v24[3], v21[7]);
                  v41 = vmlaq_f64(v35, v24[2], v21[6]);
                  *v24 = v33;
                  v24[1] = v32;
                  v24[2] = v30;
                  v24[3] = v29;
                  v23[2] = v41;
                  v23[3] = v40;
                  a3 += a7;
                  v33 = v39;
                  *v23 = v39;
                  v23[1] = v38;
                  v32 = v38;
                  v30 = v41;
                  v29 = v40;
                  --v31;
                }

                while (v31);
              }

              v27 += v19;
              v42 = (v22 + ((2 * v17) << 6));
              v43 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v42[4], *v24), v33, *v42), vmlaq_f64(vmulq_f64(v42[6], v24[2]), v30, v42[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v42[5], v24[1]), v32, v42[1]), vmlaq_f64(vmulq_f64(v42[7], v24[3]), v29, v42[3]))));
              *a4 = v43;
              a4 += a8;
              v44 = v17 + v18;
              if (v44 < v25)
              {
                v19 = v26;
              }

              else
              {
                v19 = v26 + 1;
              }

              if (v44 < v25)
              {
                v45 = 0;
              }

              else
              {
                v45 = v25;
              }

              v17 = v44 - v45;
              ++v28;
            }

            while (v28 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v207 = v23[2];
            v206 = v23[3];
            v208 = *v23;
            v209 = v23[1];
            v210 = v205;
            do
            {
              v211 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v212 = vmlaq_f64(v211, v207, v21[2]);
              v213 = vmlaq_f64(v211, v206, v21[3]);
              v214 = vmlaq_f64(v211, v208, *v21);
              v215 = vmlaq_f64(vmlaq_f64(v211, v209, v21[1]), v24[1], v21[5]);
              v216 = vmlaq_f64(v214, *v24, v21[4]);
              v217 = vmlaq_f64(v213, v24[3], v21[7]);
              v218 = vmlaq_f64(v212, v24[2], v21[6]);
              *v24 = v208;
              v24[1] = v209;
              v24[2] = v207;
              v24[3] = v206;
              v23[2] = v218;
              v23[3] = v217;
              a3 += a7;
              v208 = v216;
              *v23 = v216;
              v23[1] = v215;
              v209 = v215;
              v207 = v218;
              v206 = v217;
              --v210;
            }

            while (v210);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v111 = 0;
            v27 = 0;
            do
            {
              if (v19 < 1)
              {
                v128 = v23[6];
                v127 = v23[7];
                v130 = v23[4];
                v129 = v23[5];
              }

              else
              {
                v112 = v19;
                do
                {
                  v113 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v114 = *v23;
                  v115 = v23[1];
                  v116 = v23[2];
                  v117 = v23[3];
                  v118 = vmlaq_f64(vmlaq_f64(v113, *v23, *v21), *v24, v21[8]);
                  v119 = vmlaq_f64(vmlaq_f64(v113, v115, v21[1]), v24[1], v21[9]);
                  v120 = vmlaq_f64(vmlaq_f64(v113, v116, v21[2]), v24[2], v21[10]);
                  v121 = vmlaq_f64(vmlaq_f64(v113, v117, v21[3]), v24[3], v21[11]);
                  v24[2] = v116;
                  v24[3] = v117;
                  *v24 = v114;
                  v24[1] = v115;
                  v23[2] = v120;
                  v23[3] = v121;
                  *v23 = v118;
                  v23[1] = v119;
                  v123 = v23[4];
                  v122 = v23[5];
                  v125 = v23[6];
                  v124 = v23[7];
                  v126 = vmlaq_f64(v113, v123, v21[4]);
                  v127 = vmlaq_f64(vmlaq_f64(0, v124, v21[7]), v24[7], v21[15]);
                  v128 = vmlaq_f64(vmlaq_f64(0, v125, v21[6]), v24[6], v21[14]);
                  v129 = vmlaq_f64(vmlaq_f64(v113, v122, v21[5]), v24[5], v21[13]);
                  v130 = vmlaq_f64(v126, v24[4], v21[12]);
                  v24[4] = v123;
                  v24[5] = v122;
                  v24[6] = v125;
                  v24[7] = v124;
                  v23[6] = v128;
                  v23[7] = v127;
                  v23[4] = v130;
                  v23[5] = v129;
                  a3 += a7;
                  --v112;
                }

                while (v112);
              }

              v27 += v19;
              v131 = (v22 + ((4 * v17) << 6));
              v132 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v131[8], *v24), *v23, *v131), vmlaq_f64(vmulq_f64(v131[10], v24[2]), v23[2], v131[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v131[9], v24[1]), v23[1], v131[1]), vmlaq_f64(vmulq_f64(v131[11], v24[3]), v23[3], v131[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v131[12], v24[4]), v130, v131[4]), vmlaq_f64(vmulq_f64(v131[14], v24[6]), v128, v131[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v131[13], v24[5]), v129, v131[5]), vmlaq_f64(vmulq_f64(v131[15], v24[7]), v127, v131[7])))));
              *a4 = v132;
              a4 += a8;
              v133 = v17 + v18;
              if (v133 < v25)
              {
                v19 = v26;
              }

              else
              {
                v19 = v26 + 1;
              }

              if (v133 < v25)
              {
                v134 = 0;
              }

              else
              {
                v134 = v25;
              }

              v17 = v133 - v134;
              ++v111;
            }

            while (v111 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v248 = v205;
            do
            {
              v249 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v250 = *v23;
              v251 = v23[1];
              v252 = v23[2];
              v253 = v23[3];
              v254 = vmlaq_f64(vmlaq_f64(v249, *v23, *v21), *v24, v21[8]);
              v255 = vmlaq_f64(vmlaq_f64(v249, v251, v21[1]), v24[1], v21[9]);
              v256 = vmlaq_f64(vmlaq_f64(v249, v252, v21[2]), v24[2], v21[10]);
              v257 = vmlaq_f64(vmlaq_f64(v249, v253, v21[3]), v24[3], v21[11]);
              v24[2] = v252;
              v24[3] = v253;
              *v24 = v250;
              v24[1] = v251;
              v23[2] = v256;
              v23[3] = v257;
              *v23 = v254;
              v23[1] = v255;
              v259 = v23[4];
              v258 = v23[5];
              v261 = v23[6];
              v260 = v23[7];
              v262 = vmlaq_f64(v249, v259, v21[4]);
              v263 = vmlaq_f64(vmlaq_f64(0, v260, v21[7]), v24[7], v21[15]);
              v264 = vmlaq_f64(vmlaq_f64(0, v261, v21[6]), v24[6], v21[14]);
              v265 = vmlaq_f64(vmlaq_f64(v249, v258, v21[5]), v24[5], v21[13]);
              v266 = vmlaq_f64(v262, v24[4], v21[12]);
              v24[4] = v259;
              v24[5] = v258;
              v24[6] = v261;
              v24[7] = v260;
              v23[6] = v264;
              v23[7] = v263;
              v23[4] = v266;
              v23[5] = v265;
              a3 += a7;
              --v248;
            }

            while (v248);
          }
        }
      }

      else
      {
        v66 = *(a2 + 17);
        v17 = *(a2 + 18);
        v19 = *(a2 + 22);
        v67 = *(a2 + 2);
        v68 = *(v67 + 16);
        v69 = *(v67 + 40);
        v70 = *(a2 + 20);
        v71 = *(a2 + 23);
        v72 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v73 = 0;
            do
            {
              v75 = v70[2];
              v74 = v70[3];
              v76 = v19;
              v78 = *v70;
              v77 = v70[1];
              if (v19 >= 1)
              {
                do
                {
                  v79 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v80 = vmlaq_f64(v79, v75, v68[2]);
                  v81 = vmlaq_f64(v79, v74, v68[3]);
                  v82 = vmlaq_f64(v79, v78, *v68);
                  v83 = vmlaq_f64(vmlaq_f64(v79, v77, v68[1]), v71[1], v68[5]);
                  v84 = vmlaq_f64(v82, *v71, v68[4]);
                  v85 = vmlaq_f64(v81, v71[3], v68[7]);
                  v86 = vmlaq_f64(v80, v71[2], v68[6]);
                  *v71 = v78;
                  v71[1] = v77;
                  v71[2] = v75;
                  v71[3] = v74;
                  v70[2] = v86;
                  v70[3] = v85;
                  a3 += a7;
                  v78 = v84;
                  *v70 = v84;
                  v70[1] = v83;
                  v77 = v83;
                  v75 = v86;
                  v74 = v85;
                  --v76;
                }

                while (v76);
              }

              v27 += v19;
              v87 = (v69 + (((v17 >> 22) & 0x1FE) << 6));
              v88 = v71[2];
              v89 = v71[3];
              v90 = vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v71, v87[12]), v78, v87[8]), vmlaq_f64(vmulq_f64(v88, v87[14]), v75, v87[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v71[1], v87[13]), v77, v87[9]), vmlaq_f64(vmulq_f64(v89, v87[15]), v74, v87[11]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v87[4], *v71), v78, *v87), vmlaq_f64(vmulq_f64(v87[6], v88), v75, v87[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v87[5], v71[1]), v77, v87[1]), vmlaq_f64(vmulq_f64(v87[7], v89), v74, v87[3]))));
              *v90.f64 = v90.f64[1] + *(a2 + 12) * (v17 & 0x7FFFFF) * (v90.f64[0] - v90.f64[1]);
              *a4 = *v90.f64;
              a4 += a8;
              LODWORD(v87) = v17 + v66;
              v17 = (v17 + v66) & 0x7FFFFFFF;
              v19 = v72 + (v87 >> 31);
              ++v73;
            }

            while (v73 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v228 = v70[2];
            v227 = v70[3];
            v229 = *v70;
            v230 = v70[1];
            v231 = v205;
            do
            {
              v232 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v233 = vmlaq_f64(v232, v228, v68[2]);
              v234 = vmlaq_f64(v232, v227, v68[3]);
              v235 = vmlaq_f64(v232, v229, *v68);
              v236 = vmlaq_f64(vmlaq_f64(v232, v230, v68[1]), v71[1], v68[5]);
              v237 = vmlaq_f64(v235, *v71, v68[4]);
              v238 = vmlaq_f64(v234, v71[3], v68[7]);
              v239 = vmlaq_f64(v233, v71[2], v68[6]);
              *v71 = v229;
              v71[1] = v230;
              v71[2] = v228;
              v71[3] = v227;
              v70[2] = v239;
              v70[3] = v238;
              a3 += a7;
              v229 = v237;
              *v70 = v237;
              v70[1] = v236;
              v230 = v236;
              v228 = v239;
              v227 = v238;
              --v231;
            }

            while (v231);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v152 = 0;
            do
            {
              if (v19 < 1)
              {
                v169 = v70[6];
                v168 = v70[7];
                v171 = v70[4];
                v170 = v70[5];
              }

              else
              {
                v153 = v19;
                do
                {
                  v154 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v155 = *v70;
                  v156 = v70[1];
                  v157 = v70[2];
                  v158 = v70[3];
                  v159 = vmlaq_f64(vmlaq_f64(v154, *v70, *v68), *v71, v68[8]);
                  v160 = vmlaq_f64(vmlaq_f64(v154, v156, v68[1]), v71[1], v68[9]);
                  v161 = vmlaq_f64(vmlaq_f64(v154, v157, v68[2]), v71[2], v68[10]);
                  v162 = vmlaq_f64(vmlaq_f64(v154, v158, v68[3]), v71[3], v68[11]);
                  v71[2] = v157;
                  v71[3] = v158;
                  *v71 = v155;
                  v71[1] = v156;
                  v70[2] = v161;
                  v70[3] = v162;
                  *v70 = v159;
                  v70[1] = v160;
                  v164 = v70[4];
                  v163 = v70[5];
                  v166 = v70[6];
                  v165 = v70[7];
                  v167 = vmlaq_f64(v154, v164, v68[4]);
                  v168 = vmlaq_f64(vmlaq_f64(0, v165, v68[7]), v71[7], v68[15]);
                  v169 = vmlaq_f64(vmlaq_f64(0, v166, v68[6]), v71[6], v68[14]);
                  v170 = vmlaq_f64(vmlaq_f64(v154, v163, v68[5]), v71[5], v68[13]);
                  v171 = vmlaq_f64(v167, v71[4], v68[12]);
                  v71[4] = v164;
                  v71[5] = v163;
                  v71[6] = v166;
                  v71[7] = v165;
                  v70[6] = v169;
                  v70[7] = v168;
                  v70[4] = v171;
                  v70[5] = v170;
                  a3 += a7;
                  --v153;
                }

                while (v153);
              }

              v27 += v19;
              v172 = (v69 + (((v17 >> 21) & 0x3FC) << 6));
              v173 = v70[1];
              v175 = v70[2];
              v174 = v70[3];
              v176 = v71[2];
              v177 = v71[3];
              v178 = v71[6];
              v179 = v71[7];
              v180 = v71[4];
              v181 = v71[5];
              v182 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v71, v172[24]), *v70, v172[16]), vmlaq_f64(vmulq_f64(v176, v172[26]), v175, v172[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v71[1], v172[25]), v173, v172[17]), vmlaq_f64(vmulq_f64(v177, v172[27]), v174, v172[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v172[8], *v71), *v70, *v172), vmlaq_f64(vmulq_f64(v172[10], v176), v175, v172[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v172[9], v71[1]), v173, v172[1]), vmlaq_f64(vmulq_f64(v172[11], v177), v174, v172[3])))), vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v180, v172[28]), v171, v172[20]), vmlaq_f64(vmulq_f64(v178, v172[30]), v169, v172[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v181, v172[29]), v170, v172[21]), vmlaq_f64(vmulq_f64(v179, v172[31]), v168, v172[23]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v172[12], v180), v171, v172[4]), vmlaq_f64(vmulq_f64(v172[14], v178), v169, v172[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v172[13], v181), v170, v172[5]), vmlaq_f64(vmulq_f64(v172[15], v179), v168, v172[7])))));
              *v182.f64 = v182.f64[1] + *(a2 + 12) * (v17 & 0x7FFFFF) * (v182.f64[0] - v182.f64[1]);
              *a4 = *v182.f64;
              a4 += a8;
              LODWORD(v172) = v17 + v66;
              v17 = (v17 + v66) & 0x7FFFFFFF;
              v19 = v72 + (v172 >> 31);
              ++v152;
            }

            while (v152 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v277 = v205;
            do
            {
              v278 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v279 = *v70;
              v280 = v70[1];
              v281 = v70[2];
              v282 = v70[3];
              v283 = vmlaq_f64(vmlaq_f64(v278, *v70, *v68), *v71, v68[8]);
              v284 = vmlaq_f64(vmlaq_f64(v278, v280, v68[1]), v71[1], v68[9]);
              v285 = vmlaq_f64(vmlaq_f64(v278, v281, v68[2]), v71[2], v68[10]);
              v286 = vmlaq_f64(vmlaq_f64(v278, v282, v68[3]), v71[3], v68[11]);
              v71[2] = v281;
              v71[3] = v282;
              *v71 = v279;
              v71[1] = v280;
              v70[2] = v285;
              v70[3] = v286;
              *v70 = v283;
              v70[1] = v284;
              v288 = v70[4];
              v287 = v70[5];
              v290 = v70[6];
              v289 = v70[7];
              v291 = vmlaq_f64(v278, v288, v68[4]);
              v292 = vmlaq_f64(vmlaq_f64(0, v289, v68[7]), v71[7], v68[15]);
              v293 = vmlaq_f64(vmlaq_f64(0, v290, v68[6]), v71[6], v68[14]);
              v294 = vmlaq_f64(vmlaq_f64(v278, v287, v68[5]), v71[5], v68[13]);
              v295 = vmlaq_f64(v291, v71[4], v68[12]);
              v71[4] = v288;
              v71[5] = v287;
              v71[6] = v290;
              v71[7] = v289;
              v70[6] = v293;
              v70[7] = v292;
              v70[4] = v295;
              v70[5] = v294;
              a3 += a7;
              --v277;
            }

            while (v277);
          }
        }
      }
    }

    else if (*(a2 + 92))
    {
      v47 = *(a2 + 17);
      v17 = *(a2 + 18);
      v19 = *(a2 + 22);
      v48 = *(*a2 + 16);
      v49 = *(*a2 + 40);
      v50 = *(a2 + 14);
      v51 = *(a2 + 17);
      v52 = *(a2 + 13);
      v53 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v54 = 0;
          do
          {
            v56 = *v50;
            v57 = v50[1];
            v58 = v19;
            if (v19 >= 1)
            {
              do
              {
                v59 = vld1q_dup_f32(a3);
                v55 = 4 * a7;
                a3 = (a3 + v55);
                v60 = vmlaq_f32(v59, v57, v48[1]);
                v61 = vmlaq_f32(vmlaq_f32(v59, v56, *v48), *v51, v48[2]);
                v62 = vmlaq_f32(v60, v51[1], v48[3]);
                *v51 = v56;
                v51[1] = v57;
                *v50 = v61;
                v50[1] = v62;
                v56 = v61;
                v57 = v62;
                --v58;
              }

              while (v58);
            }

            v27 += v19;
            v63 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v49 + 32 * (2 * v17) + 32), *v51), v56, *(v49 + 32 * (2 * v17))), vmlaq_f32(vmulq_f32(*(v49 + 32 * (2 * v17) + 48), v51[1]), v57, *(v49 + 32 * (2 * v17) + 16)));
            *a4 = vaddv_f32(vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)));
            a4 += a8;
            v64 = v17 + v47;
            if (v64 < v52)
            {
              v19 = v53;
            }

            else
            {
              v19 = v53 + 1;
            }

            if (v64 < v52)
            {
              v65 = 0;
            }

            else
            {
              v65 = v52;
            }

            v17 = v64 - v65;
            ++v54;
          }

          while (v54 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v220 = *v50;
          v219 = v50[1];
          v222 = v205;
          do
          {
            v223 = vld1q_dup_f32(a3);
            v221 = 4 * a7;
            a3 = (a3 + v221);
            v224 = vmlaq_f32(v223, v219, v48[1]);
            v225 = vmlaq_f32(vmlaq_f32(v223, v220, *v48), *v51, v48[2]);
            v226 = vmlaq_f32(v224, v51[1], v48[3]);
            *v51 = v220;
            v51[1] = v219;
            *v50 = v225;
            v50[1] = v226;
            v220 = v225;
            v219 = v226;
            --v222;
          }

          while (v222);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v135 = 0;
          v27 = 0;
          do
          {
            if (v19 < 1)
            {
              v145 = v50[2];
              v144 = v50[3];
            }

            else
            {
              v137 = v19;
              do
              {
                v138 = vld1q_dup_f32(a3);
                v136 = 4 * a7;
                a3 = (a3 + v136);
                v139 = v50[1];
                v140 = vmlaq_f32(vmlaq_f32(v138, *v50, *v48), *v51, v48[4]);
                v141 = vmlaq_f32(vmlaq_f32(v138, v139, v48[1]), v51[1], v48[5]);
                *v51 = *v50;
                v51[1] = v139;
                *v50 = v140;
                v50[1] = v141;
                v142 = v50[2];
                v143 = v50[3];
                v144 = vmlaq_f32(vmlaq_f32(0, v143, v48[3]), v51[3], v48[7]);
                v145 = vmlaq_f32(vmlaq_f32(v138, v142, v48[2]), v51[2], v48[6]);
                v51[2] = v142;
                v51[3] = v143;
                v50[2] = v145;
                v50[3] = v144;
                --v137;
              }

              while (v137);
            }

            v27 += v19;
            v146 = (v49 + 32 * (4 * v17));
            v147 = vmlaq_f32(vmulq_f32(v146[6], v51[2]), v145, v146[2]);
            v148 = vaddq_f32(vmlaq_f32(vmulq_f32(v146[4], *v51), *v50, *v146), vmlaq_f32(vmulq_f32(v146[5], v51[1]), v50[1], v146[1]));
            *v148.i8 = vadd_f32(*v148.i8, *&vextq_s8(v148, v148, 8uLL));
            v149 = vaddq_f32(v147, vmlaq_f32(vmulq_f32(v146[7], v51[3]), v144, v146[3]));
            *v149.i8 = vadd_f32(*v149.i8, *&vextq_s8(v149, v149, 8uLL));
            *a4 = vaddv_f32(vadd_f32(vzip1_s32(*v148.i8, *v149.i8), vzip2_s32(*v148.i8, *v149.i8)));
            a4 += a8;
            v150 = v17 + v47;
            if (v150 < v52)
            {
              v19 = v53;
            }

            else
            {
              v19 = v53 + 1;
            }

            if (v150 < v52)
            {
              v151 = 0;
            }

            else
            {
              v151 = v52;
            }

            v17 = v150 - v151;
            ++v135;
          }

          while (v135 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v268 = v205;
          do
          {
            v269 = vld1q_dup_f32(a3);
            v267 = 4 * a7;
            a3 = (a3 + v267);
            v270 = v50[1];
            v271 = vmlaq_f32(vmlaq_f32(v269, *v50, *v48), *v51, v48[4]);
            v272 = vmlaq_f32(vmlaq_f32(v269, v270, v48[1]), v51[1], v48[5]);
            *v51 = *v50;
            v51[1] = v270;
            *v50 = v271;
            v50[1] = v272;
            v273 = v50[2];
            v274 = v50[3];
            v275 = vmlaq_f32(vmlaq_f32(0, v274, v48[3]), v51[3], v48[7]);
            v276 = vmlaq_f32(vmlaq_f32(v269, v273, v48[2]), v51[2], v48[6]);
            v51[2] = v273;
            v51[3] = v274;
            v50[2] = v276;
            v50[3] = v275;
            --v268;
          }

          while (v268);
        }
      }
    }

    else
    {
      v91 = *(a2 + 17);
      v17 = *(a2 + 18);
      v19 = *(a2 + 22);
      v92 = *(*a2 + 16);
      v93 = *(*a2 + 40);
      v94 = *(a2 + 14);
      v95 = *(a2 + 17);
      v96 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v97 = 0;
          do
          {
            v99 = *v94;
            v100 = v94[1];
            v101 = v19;
            if (v19 >= 1)
            {
              do
              {
                v102 = vld1q_dup_f32(a3);
                v98 = 4 * a7;
                a3 = (a3 + v98);
                v103 = vmlaq_f32(v102, v100, v92[1]);
                v104 = vmlaq_f32(vmlaq_f32(v102, v99, *v92), *v95, v92[2]);
                v105 = vmlaq_f32(v103, v95[1], v92[3]);
                *v95 = v99;
                v95[1] = v100;
                *v94 = v104;
                v94[1] = v105;
                v99 = v104;
                v100 = v105;
                --v101;
              }

              while (v101);
            }

            v27 += v19;
            v106 = *(a2 + 12) * (v17 & 0x7FFFFF);
            v107 = (v93 + 32 * ((v17 >> 22) & 0x1FE));
            v108 = v95[1];
            v109 = vaddq_f32(vmlaq_f32(vmulq_f32(v107[2], *v95), v99, *v107), vmlaq_f32(vmulq_f32(v107[3], v108), v100, v107[1]));
            *v109.i8 = vadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
            v110 = vaddq_f32(vmlaq_f32(vmulq_f32(*v95, v107[6]), v99, v107[4]), vmlaq_f32(vmulq_f32(v108, v107[7]), v100, v107[5]));
            *v110.i8 = vadd_f32(*v110.i8, *&vextq_s8(v110, v110, 8uLL));
            *v110.i8 = vadd_f32(vzip1_s32(*v110.i8, *v109.i8), vzip2_s32(*v110.i8, *v109.i8));
            *a4 = *&v110.i32[1] + (v106 * (*v110.i32 - *&v110.i32[1]));
            a4 += a8;
            LODWORD(v107) = v17 + v91;
            v17 = (v17 + v91) & 0x7FFFFFFF;
            v19 = v96 + (v107 >> 31);
            ++v97;
          }

          while (v97 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v241 = *v94;
          v240 = v94[1];
          v243 = v205;
          do
          {
            v244 = vld1q_dup_f32(a3);
            v242 = 4 * a7;
            a3 = (a3 + v242);
            v245 = vmlaq_f32(v244, v240, v92[1]);
            v246 = vmlaq_f32(vmlaq_f32(v244, v241, *v92), *v95, v92[2]);
            v247 = vmlaq_f32(v245, v95[1], v92[3]);
            *v95 = v241;
            v95[1] = v240;
            *v94 = v246;
            v94[1] = v247;
            v241 = v246;
            v240 = v247;
            --v243;
          }

          while (v243);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v183 = 0;
          do
          {
            if (v19 < 1)
            {
              v193 = v94[2];
              v192 = v94[3];
            }

            else
            {
              v185 = v19;
              do
              {
                v186 = vld1q_dup_f32(a3);
                v184 = 4 * a7;
                a3 = (a3 + v184);
                v187 = v94[1];
                v188 = vmlaq_f32(vmlaq_f32(v186, *v94, *v92), *v95, v92[4]);
                v189 = vmlaq_f32(vmlaq_f32(v186, v187, v92[1]), v95[1], v92[5]);
                *v95 = *v94;
                v95[1] = v187;
                *v94 = v188;
                v94[1] = v189;
                v190 = v94[2];
                v191 = v94[3];
                v192 = vmlaq_f32(vmlaq_f32(0, v191, v92[3]), v95[3], v92[7]);
                v193 = vmlaq_f32(vmlaq_f32(v186, v190, v92[2]), v95[2], v92[6]);
                v95[2] = v190;
                v95[3] = v191;
                v94[2] = v193;
                v94[3] = v192;
                --v185;
              }

              while (v185);
            }

            v27 += v19;
            v194 = *(a2 + 12) * (v17 & 0x7FFFFF);
            v195 = (v93 + 32 * ((v17 >> 21) & 0x3FC));
            v196 = v94[1];
            v197 = v95[1];
            v199 = v95[2];
            v198 = v95[3];
            v200 = vaddq_f32(vmlaq_f32(vmulq_f32(v195[4], *v95), *v94, *v195), vmlaq_f32(vmulq_f32(v195[5], v197), v196, v195[1]));
            *v200.i8 = vadd_f32(*v200.i8, *&vextq_s8(v200, v200, 8uLL));
            v201 = vaddq_f32(vmlaq_f32(vmulq_f32(v195[6], v199), v193, v195[2]), vmlaq_f32(vmulq_f32(v195[7], v198), v192, v195[3]));
            *v201.i8 = vadd_f32(*v201.i8, *&vextq_s8(v201, v201, 8uLL));
            v202 = vmlaq_f32(vmulq_f32(v199, v195[14]), v193, v195[10]);
            v203 = vaddq_f32(vmlaq_f32(vmulq_f32(*v95, v195[12]), *v94, v195[8]), vmlaq_f32(vmulq_f32(v197, v195[13]), v196, v195[9]));
            *v203.i8 = vadd_f32(*v203.i8, *&vextq_s8(v203, v203, 8uLL));
            v204 = vaddq_f32(v202, vmlaq_f32(vmulq_f32(v198, v195[15]), v192, v195[11]));
            *v204.i8 = vadd_f32(*v204.i8, *&vextq_s8(v204, v204, 8uLL));
            *v203.i8 = vadd_f32(vadd_f32(vzip1_s32(*v203.i8, *v200.i8), vzip2_s32(*v203.i8, *v200.i8)), vadd_f32(vzip1_s32(*v204.i8, *v201.i8), vzip2_s32(*v204.i8, *v201.i8)));
            *a4 = *&v203.i32[1] + (v194 * (*v203.i32 - *&v203.i32[1]));
            a4 += a8;
            LODWORD(v195) = v17 + v91;
            v17 = (v17 + v91) & 0x7FFFFFFF;
            v19 = v96 + (v195 >> 31);
            ++v183;
          }

          while (v183 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v297 = v205;
          do
          {
            v298 = vld1q_dup_f32(a3);
            v296 = 4 * a7;
            a3 = (a3 + v296);
            v299 = v94[1];
            v300 = vmlaq_f32(vmlaq_f32(v298, *v94, *v92), *v95, v92[4]);
            v301 = vmlaq_f32(vmlaq_f32(v298, v299, v92[1]), v95[1], v92[5]);
            *v95 = *v94;
            v95[1] = v299;
            *v94 = v300;
            v94[1] = v301;
            v302 = v94[2];
            v303 = v94[3];
            v304 = vmlaq_f32(vmlaq_f32(0, v303, v92[3]), v95[3], v92[7]);
            v305 = vmlaq_f32(vmlaq_f32(v298, v302, v92[2]), v95[2], v92[6]);
            v95[2] = v302;
            v95[3] = v303;
            v94[2] = v305;
            v94[3] = v304;
            --v297;
          }

          while (v297);
        }
      }
    }

    v19 -= v205;
    v27 += v205;
LABEL_160:
    *(a2 + 18) = v17;
    *(a2 + 22) = v19;
    v46 = 1;
    goto LABEL_161;
  }

  *this = 1919747238;
  *(this + 4) = 0;
LABEL_162:
  result = NAN;
  *(a2 + 32) = -1;
  *(a2 + 66) = -1;
  return result;
}