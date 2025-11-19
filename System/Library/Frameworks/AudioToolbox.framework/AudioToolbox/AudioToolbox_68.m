void AutoValue<float,(LogTypes)0>::Set(Trackable *this, float a2)
{
  ++*(this + 2);
  v2 = *(this + 35);
  if (*(this + 36) < v2)
  {
    __assert_rtn("DecrementCirc", "AutoValue.h", 491, "index <= _C");
  }

  if (!v2)
  {
    v2 = *(this + 36);
  }

  v4 = v2 - 1;
  *(this + 35) = v4;
  if (*(this + 39) <= v4)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  *(*(this + 38) + 4 * v4) = a2;
  if (*(this + 2) != 1)
  {
    *(this + 2) = 1;
    Trackable::Uninitialize(this);
  }

  *(this + 32) = 0;
  *(this + 8) = 0;
}

uint64_t AUReverbSuppressor::SetParameter(AUReverbSuppressor *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 132);
  return result;
}

uint64_t AUReverbSuppressor::SetProperty(AUReverbSuppressor *this, int a2, int a3, unsigned int a4, const __CFDictionary **a5, int a6)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 5100)
  {
    if (a2 == 3700)
    {
      result = 0;
      *(this + 376) = *a5;
      return result;
    }

    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 134) = *a5;
      return result;
    }

    return 4294956445;
  }

  if (!a5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AUReverbSuppressor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 503;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.", buf, 0x12u);
    }

    return 4294956445;
  }

  v8 = applesauce::CF::details::at_key<char const(&)[12]>(*a5, "ReverbTails");
  if (v8)
  {
    v9 = v8;
    CFRetain(v8);
    v10 = CFGetTypeID(v9);
    if (v10 == CFDictionaryGetTypeID())
    {
      v44 = v9;
      v45 = 1;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "AUReverbSuppressor.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 520;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d 'ReverbTails' dictionary found in Plist.", buf, 0x12u);
      }

      v11 = (this + 560);
      std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*(this + 70));
      *(this + 69) = this + 560;
      *(this + 35) = 0u;
      applesauce::CF::DictionaryRef_iterator<std::string,applesauce::CF::DataRef>::DictionaryRef_iterator(buf, v9);
      applesauce::CF::DictionaryRef_iterator<std::string,applesauce::CF::DataRef>::DictionaryRef_iterator(&v38, v9);
      v39 = (v41 - v40) >> 3;
      while (1)
      {
        if (*buf && (v12 = *&buf[8], *&buf[8] != (v54 - *&buf[16]) >> 3))
        {
          v13 = v38;
        }

        else
        {
          v13 = v38;
          if (!v38 || v39 == (v41 - v40) >> 3)
          {
            break;
          }

          v12 = *&buf[8];
        }

        if (*buf == v13 && v12 == v39)
        {
          break;
        }

        if ((v12 & 0x8000000000000000) != 0 || v12 >= (v54 - *&buf[16]) >> 3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "DictionaryRef_iterator iterator out of range.");
          exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
        }

        applesauce::CF::convert_to<std::string,0>(__p, *(*&buf[16] + 8 * v12));
        v15 = v55[*&buf[8]];
        if (!v15)
        {
          v36 = *__p;
          cf = 0;
          v32 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v32, "Could not construct");
        }

        CFRetain(v55[*&buf[8]]);
        __str.__r_.__value_.__r.__words[0] = v15;
        v16 = CFGetTypeID(v15);
        if (v16 != CFDataGetTypeID())
        {
          v34 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v34, "Could not construct");
        }

        v36 = *__p;
        cf = v15;
        BytePtr = CFDataGetBytePtr(v15);
        Length = CFDataGetLength(v15);
        if ((Length & 3) != 0)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v33, "de-serialization data size mismatch");
        }

        memset(__p, 0, 24);
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, BytePtr, &BytePtr[Length], Length >> 2);
        v19 = *__p;
        v20 = *&__p[8];
        memset(__p, 0, 24);
        v21 = v20 - v19;
        if (v20 != v19)
        {
          v22 = v21 >> 2;
          if ((v21 >> 2) <= 1)
          {
            v22 = 1;
          }

          v23 = v19;
          do
          {
            *v23 = bswap32(*v23);
            ++v23;
            --v22;
          }

          while (v22);
          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
        }

        else
        {
          __str = v36;
        }

        std::string::basic_string(__p, &__str, 0, 2uLL, &v46);
        if ((__p[23] & 0x80000000) != 0)
        {
          if (*&__p[8] != 2)
          {
            operator delete(*__p);
LABEL_70:
            v30 = __cxa_allocate_exception(8uLL);
            *v30 = MEMORY[0x1E69E55E8] + 16;
          }

          v24 = **__p;
          operator delete(*__p);
          if (v24 != 29542)
          {
            goto LABEL_70;
          }
        }

        else if (__p[23] != 2 || *__p != 29542)
        {
          goto LABEL_70;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(__p, &__str, 2uLL, size, &v47);
        v26 = std::stod(__p, 0);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *__p = 136316162;
          *&__p[4] = "AUReverbSuppressor.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 558;
          *&__p[18] = 2048;
          *&__p[20] = v21 >> 2;
          v49 = 2048;
          v50 = (v21 >> 2) / v26 * 1000.0;
          v51 = 2048;
          v52 = v26;
          _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d Found a %zu-element (%gms) reverb tail for the %gHz sample-rate.", __p, 0x30u);
        }

        v27 = *v11;
        if (!*v11)
        {
LABEL_59:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v28 = v27;
            v29 = *(v27 + 4);
            if (v26 >= v29)
            {
              break;
            }

            v27 = *v27;
            if (!*v28)
            {
              goto LABEL_59;
            }
          }

          if (v29 >= v26)
          {
            break;
          }

          v27 = v27[1];
          if (!v27)
          {
            goto LABEL_59;
          }
        }

        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v27 + 5, v19, v20, v21 >> 2);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v19)
        {
          operator delete(v19);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        ++*&buf[8];
      }

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (*&buf[16])
      {
        v54 = *&buf[16];
        operator delete(*&buf[16]);
      }

      if ((v45 & 1) != 0 && v44)
      {
        CFRelease(v44);
      }

      return 0;
    }

    CFRelease(v9);
  }

  LOBYTE(v44) = 0;
  v45 = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUReverbSuppressor.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 516;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d 'ReverbTails' dictionary is not present in Plist.", buf, 0x12u);
  }

  return 0;
}

void sub_1DE031690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v41)
  {
    operator delete(v41);
  }

  std::pair<std::string,applesauce::CF::DataRef>::~pair(&a20);
  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(&a25);
  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator((v42 - 192));
  std::optional<applesauce::CF::DictionaryRef>::~optional(&a33);
  _Unwind_Resume(a1);
}

void sub_1DE031774(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE03177CLL);
  }

  __clang_call_terminate(a1);
}

uint64_t applesauce::CF::DictionaryRef_iterator<std::string,applesauce::CF::DataRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

uint64_t std::pair<std::string,applesauce::CF::DataRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AUReverbSuppressor::GetProperty(AUReverbSuppressor *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 5101:
      if (!*(this + 68) || *(this + 134) == 1 || *AutoValue<BOOL,(LogTypes)0>::Get(this + 4472) == 1)
      {
        result = AUReverbSuppressor::GetGlobalProperty<($_1)14>(*(this + 1));
        if (!result)
        {
          return result;
        }

        memset_pattern16(a5, &unk_1DE095DF0, 4 * result);
      }

      else
      {
        v9 = AutoValue<std::vector<float>,(LogTypes)0>::Get(*(this + 68), 0);
        v10 = *(v9 + 8);
        if (v10 != *v9)
        {
          memmove(a5, *v9, v10 - *v9);
        }
      }

      return 0;
    case 3700:
      result = 0;
      v8 = *(this + 376);
      goto LABEL_8;
    case 21:
      result = 0;
      v8 = *(this + 134);
LABEL_8:
      *a5 = v8;
      return result;
  }

  return 4294956417;
}

uint64_t AUReverbSuppressor::GetGlobalProperty<($_1)14>(OpaqueAudioComponentInstance *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty(a1, 0xEu, 0, 0, &outData, &ioDataSize))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v6 = "AUReverbSuppressor.cpp";
      v7 = 1024;
      v8 = 467;
      v9 = 2080;
      v10 = "MaximumFramesPerSlice";
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitGetProperty failed for %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x1E69E55E8] + 16;
  }

  return outData;
}

uint64_t AUReverbSuppressor::GetPropertyInfo(OpaqueAudioComponentInstance **this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 5101:
      *a6 = 0;
      v8 = 4 * AUReverbSuppressor::GetGlobalProperty<($_1)14>(this[1]);
      goto LABEL_10;
    case 3700:
      *a6 = 0;
      goto LABEL_8;
    case 21:
      *a6 = 1;
LABEL_8:
      v8 = 4;
LABEL_10:
      result = 0;
      *a5 = v8;
      return result;
  }

  return 4294956417;
}

uint64_t AUReverbSuppressor::Initialize(AUReverbSuppressor *this)
{
  v37 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v3 + 108) == 1 && *(v4 + 108) == 1)
  {
    Global = AUReverbSuppressor::GetGlobalProperty<($_1)14>(*(this + 1));
    outData[0] = 0;
    ioDataSize[0] = 8;
    if (AudioUnitGetProperty(*(this + 1), 2u, 0, 0, outData, ioDataSize))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "AUReverbSuppressor.cpp";
        v30 = 1024;
        *v31 = 467;
        *&v31[4] = 2080;
        *&v31[6] = "SampleRate";
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitGetProperty failed for %s", __p, 0x1Cu);
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = MEMORY[0x1E69E55E8] + 16;
    }

    v8 = outData[0];
    v28 = outData[0];
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio");
    std::string::basic_string[abi:ne200100]<0>(outData, "ReverbSuppressor_disable");
    v9 = GetPreference<BOOL>(__p, outData);
    if (v36 < 0)
    {
      operator delete(outData[0]);
    }

    if ((v31[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v9 <= 0x100u)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    AutoValue<BOOL,(LogTypes)0>::Set((this + 3464), v10);
    if (*(this + 616))
    {
      *(this + 616) = 0;
      Trackable::Uninitialize((this + 2456));
    }

    *(this + 339) = 0;
    *(this + 315) = 0;
    if (*(this + 700))
    {
      *(this + 700) = 0;
      Trackable::Uninitialize((this + 2792));
    }

    *(this + 381) = 0;
    *(this + 357) = 0;
    if (*(this + 784))
    {
      *(this + 784) = 0;
      Trackable::Uninitialize((this + 3128));
    }

    *(this + 423) = 0;
    *(this + 399) = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio");
    std::string::basic_string[abi:ne200100]<0>(outData, "ReverbSuppressor_pass1GainFloor");
    v11 = GetPreference<float>(__p, outData);
    if (v36 < 0)
    {
      operator delete(outData[0]);
    }

    if ((v31[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (HIDWORD(v11))
    {
      AutoValue<float,(LogTypes)0>::Set((this + 2456), *&v11);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio");
    std::string::basic_string[abi:ne200100]<0>(outData, "ReverbSuppressor_pass2GainFloor");
    v12 = GetPreference<float>(__p, outData);
    if (v36 < 0)
    {
      operator delete(outData[0]);
    }

    if ((v31[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (HIDWORD(v12))
    {
      AutoValue<float,(LogTypes)0>::Set((this + 2792), *&v12);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio");
    std::string::basic_string[abi:ne200100]<0>(outData, "ReverbSuppressor_reverbTailGain");
    v13 = GetPreference<float>(__p, outData);
    if (v36 < 0)
    {
      operator delete(outData[0]);
    }

    if ((v31[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (HIDWORD(v13))
    {
      AutoValue<float,(LogTypes)0>::Set((this + 3128), *&v13);
    }

    *ioDataSize = 0;
    v26 = 0;
    v27 = 0;
    v14 = *(this + 70);
    if (!v14)
    {
LABEL_46:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v15 = v14[4];
        if (*&v8 >= v15)
        {
          break;
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_46;
        }
      }

      if (v15 >= *&v8)
      {
        break;
      }

      v14 = *(v14 + 1);
      if (!v14)
      {
        goto LABEL_46;
      }
    }

    if (ioDataSize != (v14 + 5))
    {
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(ioDataSize, *(v14 + 5), *(v14 + 6), (*(v14 + 6) - *(v14 + 5)) >> 2);
    }

    AutoValue<BOOL,(LogTypes)0>::Set((this + 4136), 0);
    *__p = 0;
    std::vector<float>::resize(this + 72, Global, __p, v16);
    DSPSplitComplexV<float>::DSPSplitComplexV(__p, Global);
    v17 = *&v31[2];
    v18 = *(this + 616);
    *(this + 616) = *&v31[2];
    *&v31[2] = v18;
    v19 = *(this + 79);
    *(this + 79) = v32;
    v32 = v19;
    v20 = v33;
    v21 = *(this + 40);
    *(this + 40) = v33;
    v33 = v21;
    v22 = *(this + 82);
    *(this + 82) = v34;
    v34 = v22;
    *(this + 600) = vzip1q_s64(v17, v20);
    if (v21.i64[0])
    {
      v33.i64[1] = v21.i64[0];
      operator delete(v21.i64[0]);
      v23 = *&v31[2];
      if (!*&v31[2])
      {
        goto LABEL_52;
      }
    }

    else
    {
      v23 = v18;
      if (!v18)
      {
LABEL_52:
        AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::PreAllocate<unsigned int const&>(this + 664, Global);
        AUReverbSuppressor::UpdateState(this);
        operator new();
      }
    }

    *&v31[10] = v23;
    operator delete(v23);
    goto LABEL_52;
  }

  return 4294956428;
}

void sub_1DE032578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (a2)
  {
    if (__p)
    {
      a27 = __p;
      operator delete(__p);
    }

    if (a18 < 0)
    {
      operator delete(a13);
    }

    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "AUReverbSuppressor.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 310;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d ReverbSuppressor object failed to instantiate; AU going into soft bypass mode.", &buf, 0x12u);
    }

    AutoValue<BOOL,(LogTypes)0>::Set((v27 + 3800), 1);
    __cxa_end_catch();
    JUMPOUT(0x1DE032414);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE0326EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::~AutoValue(va);
    JUMPOUT(0x1DE0327D8);
  }

  JUMPOUT(0x1DE032980);
}

void sub_1DE032770(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v3 != v2)
    {
      v5 = -v4;
      v6 = (v2 + 24);
      do
      {
        v7 = v6[2];
        if (v7)
        {
          v6[3] = v7;
          operator delete(v7);
        }

        v8 = *(v6 - 1);
        if (v8)
        {
          *v6 = v8;
          operator delete(v8);
        }

        v6 += 8;
        v5 -= 64;
      }

      while (v5);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1DE032980);
}

void sub_1DE0327C4(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x1DE0327D0);
  }

  JUMPOUT(0x1DE032980);
}

void sub_1DE03295C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE032980);
}

void AutoValue<BOOL,(LogTypes)0>::Set(Trackable *this, char a2)
{
  ++*(this + 2);
  v2 = *(this + 35);
  if (*(this + 36) < v2)
  {
    __assert_rtn("DecrementCirc", "AutoValue.h", 491, "index <= _C");
  }

  if (!v2)
  {
    v2 = *(this + 36);
  }

  v4 = v2 - 1;
  *(this + 35) = v4;
  if (*(this + 39) <= v4)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  *(*(this + 38) + v4) = a2;
  if (*(this + 2) != 1)
  {
    *(this + 2) = 1;
    Trackable::Uninitialize(this);
  }

  *(this + 32) = 0;
  *(this + 8) = 0;
}

uint64_t GetPreference<float>(uint64_t *a1, uint64_t *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v5 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    *v26 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *v26 = 0;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v9)
  {
    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
    *cf = v11;
    if (!v11)
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v23, "Could not construct");
    }

    v5 = *v26;
  }

  else
  {
    v11 = 0;
    *cf = 0;
  }

  v12 = CFPreferencesCopyAppValue(v11, v5);
  v25 = v12;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (*v26)
  {
    CFRelease(*v26);
  }

  if (v12)
  {
    v13 = applesauce::CF::convert_to<float,0>(v12);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 23) >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      memset(&v24, 0, sizeof(v24));
      boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::lexical_istream_limited_src(cf);
      v16 = boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::shl_real<float>(cf, v13);
      v17 = v16;
      if (v16)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v24, v44, v45, v45 - v44);
      }

      std::ostream::~ostream();
      *cf = MEMORY[0x1E69E5548] + 16;
      if (v43 < 0)
      {
        operator delete(__p);
      }

      *cf = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&cf[8]);
      if (!v17)
      {
        std::bad_cast::bad_cast(cf);
        *cf = &unk_1F5938F98;
        boost::throw_exception<boost::bad_lexical_cast>();
      }

      v18 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = v24.__r_.__value_.__r.__words[0];
      }

      *v26 = 136316162;
      *&v26[4] = "CFPrefHelper.h";
      v27 = 1024;
      v28 = 124;
      v29 = 2080;
      v30 = v14;
      v31 = 2080;
      v32 = v15;
      v33 = 2080;
      v34 = v18;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference '%s %s' retrieved as %s", v26, 0x30u);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    v19 = 0x100000000;
    CFRelease(v12);
  }

  else
  {
    v13 = 0.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 23) >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      *cf = 136315906;
      *&cf[4] = "CFPrefHelper.h";
      v36 = 1024;
      v37 = 133;
      v38 = 2080;
      v39 = v20;
      v40 = 2080;
      v41 = v21;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Preference: '%s %s' does not exist.", cf, 0x26u);
    }

    v19 = 0;
  }

  return v19 & 0x100000000 | LODWORD(v13);
}

void sub_1DE032E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf, __int128 a23)
{
  if (a2)
  {
    boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::~lexical_istream_limited_src(&buf);
    if (a14 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      if (*(v24 + 23) >= 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = *v24;
      }

      if (*(v23 + 23) >= 0)
      {
        v27 = v23;
      }

      else
      {
        v27 = *v23;
      }

      LODWORD(buf) = 136315906;
      *(&buf + 4) = "CFPrefHelper.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 128;
      WORD1(a23) = 2080;
      *(&a23 + 4) = v26;
      WORD6(a23) = 2080;
      *(&a23 + 14) = v27;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get Preference: '%s %s'. It exists, but is it the right type?", &buf, 0x26u);
    }

    __cxa_end_catch();
    if (!a15)
    {
      JUMPOUT(0x1DE032DACLL);
    }

    JUMPOUT(0x1DE032D00);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE032FD8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20)
{
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(&a13);
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      if (*(v21 + 23) >= 0)
      {
        v23 = v21;
      }

      else
      {
        v23 = *v21;
      }

      if (*(v20 + 23) >= 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = *v20;
      }

      LODWORD(a19) = 136315906;
      *(&a19 + 4) = "CFPrefHelper.h";
      WORD6(a19) = 1024;
      *(&a19 + 14) = 138;
      WORD1(a20) = 2080;
      *(&a20 + 4) = v23;
      WORD6(a20) = 2080;
      *(&a20 + 14) = v24;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get Preference: '%s %s'. An exception was caught.", &a19, 0x26u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE032DB8);
  }

  JUMPOUT(0x1DE032FC8);
}

void sub_1DE032FE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE032FC8);
  }

  JUMPOUT(0x1DE033008);
}

void sub_1DE032FF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(va);
    JUMPOUT(0x1DE033000);
  }

  JUMPOUT(0x1DE032FC8);
}

void *DSPSplitComplexV<float>::DSPSplitComplexV(void *a1, unint64_t a2)
{
  std::vector<float>::vector[abi:ne200100](a1 + 2, a2);
  std::vector<float>::vector[abi:ne200100](a1 + 5, a2);
  v4 = a1[5];
  *a1 = a1[2];
  a1[1] = v4;
  return a1;
}

void sub_1DE03311C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::PreAllocate<unsigned int const&>(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 384);
  DSPSplitComplexV<float>::DSPSplitComplexV(v10, a2);
  AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(v15, v3 + 1, v10);
  v4 = *v16;
  *(a1 + 280) = v15[0];
  v5 = *(a1 + 312);
  v6 = *(a1 + 328);
  *(a1 + 312) = v4;
  v7 = *&__p[8];
  *(a1 + 328) = *__p;
  *v16 = v5;
  *__p = v6;
  v8 = *&__p[24];
  v9 = *(a1 + 344);
  *(a1 + 336) = v7;
  *(a1 + 352) = v8;
  *&__p[16] = v9;
  *(a1 + 296) = vzip1q_s64(v4, v7);
  if (v15 != (a1 + 280))
  {
    boost::container::vector<DSPSplitComplexV<float>,void,void>::priv_move_assign<void>(a1 + 360, v18);
  }

  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector(v18);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_1DE033244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(va);
  _Unwind_Resume(a1);
}

void Dereverb::Dereverb<float,(Dereverb::FirstPassTypes)0,(LogTypes)0>::Dereverb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  *AutoValue<std::vector<float>,(LogTypes)0>::AutoValue(a1, a2) = &unk_1F59383C0;
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = __p;
  std::string::basic_string[abi:ne200100](__p, v11 + 19);
  if (v27 < 0)
  {
    v12 = __p[0];
  }

  if (v11)
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "_gain2SmoothingCoef");
  AutoValue<float,(LogTypes)0>::AutoValue(a1 + 352, __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = __p;
  std::string::basic_string[abi:ne200100](__p, v14 + 15);
  if (v27 < 0)
  {
    v15 = __p[0];
  }

  if (v14)
  {
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, "_reverbTailGain");
  *AutoValue<float,(LogTypes)0>::AutoValue<float const& ()(float &,AutoValue<float,(LogTypes)0>&),float>(a1 + 688, __p, dBToLinear<float,(LogTypes)0>::Compute_dBToLinear, a8) = &unk_1F5938458;
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = __p;
  std::string::basic_string[abi:ne200100](__p, v17 + 10);
  v25 = (a1 + 1024);
  if (v27 < 0)
  {
    v18 = __p[0];
  }

  if (v17)
  {
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    memmove(v18, v19, v17);
  }

  strcpy(v18 + v17, "_psBeta_TC");
  AutoValue<float,(LogTypes)0>::AutoValue(v25, __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  v21 = &v28;
  std::string::basic_string[abi:ne200100](&v28, v20 + 7);
  v22 = a1 + 1360;
  if (v29 < 0)
  {
    v21 = v28;
  }

  if (v20)
  {
    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    memmove(v21, v23, v20);
    v22 = a1 + 1360;
  }

  strcpy(v21 + v20, "_psBeta");
  Trackable::Trackable<AutoValue<float,(LogTypes)0>>(v22, &v28, v25);
  *(a1 + 1360) = &unk_1F5938360;
  *(a1 + 1640) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1648) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = xmmword_1DE09C160;
  v24 = operator new(4uLL);
  *(a1 + 1664) = v24;
  *v24 = 0;
  *(a1 + 1680) = xmmword_1DE09C160;
  operator new();
}

void sub_1DE036760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  v54 = *(v50 + 18976);
  if (v54)
  {
    *(v50 + 18984) = v54;
    operator delete(v54);
  }

  if (*(v52 - 169) < 0)
  {
    operator delete(*(v52 - 192));
  }

  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v51);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v50 + 18240);
  NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(v50 + 16832);
  NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(v50 + 15424);
  NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::~Gain2(a25);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a24);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(v50 + 10176);
  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(v50 + 8768);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(v50 + 8064);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(v50 + 7360);
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(v50 + 6304);
  ReverbEstimator<float,true,(LogTypes)0>::~ReverbEstimator(a18);
  AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::~AutoValue(a28);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v50 + 3456);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v50 + 3104);
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(v50 + 2048);
  SpectralMagnitude<float,(LogTypes)0>::~SpectralMagnitude(v50 + 1696);
  TCToCoef<float,(LogTypes)0>::~TCToCoef(a22);
  AutoValue<float,(LogTypes)0>::~AutoValue(a27);
  dBToLinear<float,(LogTypes)0>::~dBToLinear(a15);
  AutoValue<float,(LogTypes)0>::~AutoValue(v50 + 352);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v50);
  _Unwind_Resume(a1);
}

void sub_1DE036768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  v72 = STACK[0xD80];
  if (STACK[0xD80])
  {
    STACK[0xD88] = v72;
    operator delete(v72);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v68);
  AutoValue<unsigned long,(LogTypes)0>::~AutoValue(v70);
  AutoValue<unsigned long,(LogTypes)0>::~AutoValue(a19);
  AutoValue<unsigned long,(LogTypes)0>::~AutoValue(a9);
  AutoValue<Transformer::windowTypes,(LogTypes)0>::~AutoValue(a16);
  AutoValue<BOOL,(LogTypes)0>::~AutoValue(a13);
  AutoValue<unsigned long,(LogTypes)0>::~AutoValue(a12);
  AutoValue<unsigned long,(LogTypes)0>::~AutoValue(v69);
  AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::~AutoValue(&a67);
  if (a48)
  {
    operator delete(a48);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a23);
  AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::~AutoValue(a24);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a21);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  dBToLinear<float,(LogTypes)0>::~dBToLinear(a14);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a18);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::~AutoValue(a28);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v67 + 3456);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v67 + 3104);
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(v67 + 2048);
  SpectralMagnitude<float,(LogTypes)0>::~SpectralMagnitude(v67 + 1696);
  TCToCoef<float,(LogTypes)0>::~TCToCoef(a22);
  AutoValue<float,(LogTypes)0>::~AutoValue(a27);
  dBToLinear<float,(LogTypes)0>::~dBToLinear(a15);
  AutoValue<float,(LogTypes)0>::~AutoValue(v67 + 352);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v67);
  _Unwind_Resume(a1);
}

void sub_1DE036770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  v57 = STACK[0x980];
  if (STACK[0x980])
  {
    STACK[0x988] = v57;
    operator delete(v57);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  JUMPOUT(0x1DE037474);
}

void sub_1DE03677C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0374A4);
}

void sub_1DE036784()
{
  v1 = *(v0 + 4920);
  if (v1)
  {
    *(v0 + 4928) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x1DE0374DCLL);
}

void sub_1DE03678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void **a50)
{
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&a50);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a26);
  JUMPOUT(0x1DE037450);
}

void sub_1DE0367AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  Filterbank::ToLinear<float,(LogTypes)0>::~ToLinear(v62);
  Filterbank::ToLinear<float,(LogTypes)0>::~ToLinear(v60 + v61);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a26);
  JUMPOUT(0x1DE037208);
}

void sub_1DE0367C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  Filterbank::ToLinear<float,(LogTypes)0>::~ToLinear(v28);
  Filterbank::ToLinear<float,(LogTypes)0>::~ToLinear(v26 + v27);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a26);
  JUMPOUT(0x1DE037208);
}

void sub_1DE0367CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0371F8);
}

void sub_1DE0367EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037200);
}

void sub_1DE03680C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer((v26 + v28));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](v26 + v27);
  Trackable::~Trackable(a26);
  JUMPOUT(0x1DE03713CLL);
}

void sub_1DE036834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v26);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v25 + 18240);
  NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(v25 + 16832);
  NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(v25 + 15424);
  NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::~Gain2(a25);
  JUMPOUT(0x1DE037334);
}

void sub_1DE03683C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037210);
}

void sub_1DE03685C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE03721CLL);
}

void sub_1DE03687C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037228);
}

void sub_1DE03689C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037234);
}

void sub_1DE0368BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v63 + v66);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v63 + v64);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v63 + v65);
  AutoValue<float,(LogTypes)0>::~AutoValue(v63 + 13680);
  AutoValue<float,(LogTypes)0>::~AutoValue(v68);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v67);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v63 + 12640);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v63 + 12288);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a25);
  if (a57 < 0)
  {
    operator delete(a52);
  }

  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a24);
  if (SHIBYTE(a47) < 0)
  {
    operator delete(a45);
  }

  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(v63 + 10176);
  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(v63 + 8768);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(v63 + 8064);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(v63 + 7360);
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(v63 + 6304);
  ReverbEstimator<float,true,(LogTypes)0>::~ReverbEstimator(a18);
  JUMPOUT(0x1DE03750CLL);
}

void sub_1DE0368D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v57 + v60);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v57 + v58);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v57 + v59);
  AutoValue<float,(LogTypes)0>::~AutoValue(v57 + 13680);
  AutoValue<float,(LogTypes)0>::~AutoValue(v62);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v61);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v57 + 12640);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v57 + 12288);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a25);
  if (a57 < 0)
  {
    operator delete(a52);
  }

  JUMPOUT(0x1DE037334);
}

void sub_1DE0368DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0372DCLL);
}

void sub_1DE0368FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0372E4);
}

void sub_1DE03691C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0372ECLL);
}

void sub_1DE03693C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0372F8);
}

void sub_1DE03695C()
{
  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](v0 + v1);
  Trackable::~Trackable(v2);
  if (*(v3 - 169) < 0)
  {
    operator delete(*(v3 - 192));
  }

  JUMPOUT(0x1DE037300);
}

void sub_1DE036994(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037308);
}

void sub_1DE0369B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037314);
}

void sub_1DE0369D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE03731CLL);
}

void sub_1DE0369FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a24);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(v50 + 10176);
  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(v50 + 8768);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(v50 + 8064);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(v50 + 7360);
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(v50 + 6304);
  ReverbEstimator<float,true,(LogTypes)0>::~ReverbEstimator(a18);
  JUMPOUT(0x1DE03750CLL);
}

void sub_1DE036A14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037358);
}

void sub_1DE036A34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037364);
}

void sub_1DE036A54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037370);
}

void sub_1DE036A74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE03737CLL);
}

void sub_1DE036A94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037388);
}

void sub_1DE036AB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  v62 = *(v61 - 192);
  if (v62)
  {
    *(v61 - 184) = v62;
    operator delete(v62);
  }

  SpectralMagnitude<float,(LogTypes)0>::~SpectralMagnitude(v60);
  Convolver<float,true,(LogTypes)0>::~Convolver(a21);
  JUMPOUT(0x1DE0374ECLL);
}

void sub_1DE036B04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, char a55)
{
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  __p = (v55 - 192);
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  Transformer::WholeSignalForward<float>::~WholeSignalForward(&a55);
  JUMPOUT(0x1DE0374C4);
}

void sub_1DE036B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  a52 = v55 - 192;
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&a52);
  Transformer::WholeSignalForward<float>::~WholeSignalForward(&a55);
  JUMPOUT(0x1DE03743CLL);
}

void sub_1DE036B38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer((v26 + 3336));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](v26 + 3280);
  Trackable::~Trackable(a26);
  JUMPOUT(0x1DE03701CLL);
}

void sub_1DE036B68()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE03745CLL);
}

void sub_1DE036B90()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE037468);
}

void sub_1DE036BBC()
{
  if (STACK[0xAA0])
  {
    operator delete(STACK[0xA90]);
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](v0 + 2256);
  Trackable::~Trackable(v1);
  JUMPOUT(0x1DE0371C4);
}

void sub_1DE036BFC()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE03747CLL);
}

void sub_1DE036C28()
{
  std::__function::__value_func<Transformer::windowTypes const& ()(Transformer::windowTypes&)>::~__value_func[abi:ne200100](v0 + 1584);
  Trackable::~Trackable(v1);
  if (*(v2 - 169) < 0)
  {
    operator delete(*(v2 - 192));
  }

  JUMPOUT(0x1DE037484);
}

void sub_1DE036C6C()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE03748CLL);
}

void sub_1DE036C94()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE037494);
}

void sub_1DE036CBC()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE03749CLL);
}

void sub_1DE036CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::CircularBuffer::~CircularBuffer(a11);
  std::__function::__value_func<std::vector<DSPSplitComplexV<float>> const& ()(std::vector<DSPSplitComplexV<float>>&)>::~__value_func[abi:ne200100](v55);
  Trackable::~Trackable(&a55);
  JUMPOUT(0x1DE0372B4);
}

void sub_1DE036D30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0374CCLL);
}

void sub_1DE036D58(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x1DE03755CLL);
}

void sub_1DE036D70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char *a52, uint64_t a53, uint64_t a54, char a55)
{
  __cxa_end_catch();
  if (*(v55 + 5576))
  {
    operator delete(*(v55 + 5560));
  }

  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a52);
  a52 = &a55;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a52);
  std::__function::__value_func<std::vector<std::vector<float>> const& ()(std::vector<std::vector<float>>&)>::~__value_func[abi:ne200100](v55 + 5464);
  Trackable::~Trackable(a24);
  if (*(v56 - 169) < 0)
  {
    operator delete(*(v56 - 192));
  }

  JUMPOUT(0x1DE0374D4);
}

void sub_1DE036DF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer((v21 + v23));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](v21 + v22);
  Trackable::~Trackable(a21);
  JUMPOUT(0x1DE0370ACLL);
}

void sub_1DE036E28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE0374F4);
}

void sub_1DE036E60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037514);
}

void sub_1DE036E70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE03751CLL);
}

void sub_1DE036E90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037524);
}

void sub_1DE036EB0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE03752CLL);
}

void sub_1DE036ED0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037534);
}

void sub_1DE036EF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  if (*(v22 + 1680))
  {
    operator delete(*(v22 + 1664));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](v22 + 1584);
  Trackable::~Trackable(a22);
  if (*(v23 - 169) < 0)
  {
    operator delete(*(v23 - 192));
  }

  JUMPOUT(0x1DE03753CLL);
}

void sub_1DE036F40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037544);
}

void sub_1DE036F60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE03754CLL);
}

void sub_1DE036F80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE037554);
}

void sub_1DE036FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  v57 = STACK[0xE28];
  if (STACK[0xE28])
  {
    STACK[0xE30] = v57;
    operator delete(v57);
  }

  v58 = STACK[0xE10];
  if (STACK[0xE10])
  {
    STACK[0xE18] = v58;
    operator delete(v58);
  }

  v59 = STACK[0xDF8];
  if (STACK[0xDF8])
  {
    STACK[0xE00] = v59;
    operator delete(v59);
  }

  v60 = STACK[0xDE0];
  if (STACK[0xDE0])
  {
    STACK[0xDE8] = v60;
    operator delete(v60);
  }

  v61 = STACK[0xDC8];
  if (STACK[0xDC8])
  {
    STACK[0xDD0] = v61;
    operator delete(v61);
  }

  if (SLOBYTE(STACK[0xDBF]) < 0)
  {
    operator delete(STACK[0xDA8]);
  }

  v62 = STACK[0xD80];
  if (STACK[0xD80])
  {
    STACK[0xD88] = v62;
    operator delete(v62);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  JUMPOUT(0x1DE037450);
}

void sub_1DE037034()
{
  v5 = v0[636];
  if (v5)
  {
    v0[637] = v5;
    operator delete(v5);
  }

  v6 = v0[633];
  if (v6)
  {
    v0[634] = v6;
    operator delete(v6);
  }

  v7 = v0[630];
  if (v7)
  {
    v0[631] = v7;
    operator delete(v7);
  }

  v8 = *(v0 + v3);
  if (v8)
  {
    v0[628] = v8;
    operator delete(v8);
  }

  v9 = *(v0 + v2);
  if (v9)
  {
    v0[625] = v9;
    operator delete(v9);
  }

  if (*(v4 + 3311) < 0)
  {
    operator delete(*v1);
  }

  v10 = v0[615];
  if (v10)
  {
    v0[616] = v10;
    operator delete(v10);
  }

  JUMPOUT(0x1DE0374DCLL);
}

void sub_1DE0370C4()
{
  v6 = v0[2393];
  if (v6)
  {
    v0[2394] = v6;
    operator delete(v6);
  }

  v7 = v0[2390];
  if (v7)
  {
    v0[2391] = v7;
    operator delete(v7);
  }

  v8 = v0[2387];
  if (v8)
  {
    v0[2388] = v8;
    operator delete(v8);
  }

  v9 = *(v0 + v2);
  if (v9)
  {
    v0[2385] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v0[2382] = v10;
    operator delete(v10);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  v11 = v0[2372];
  if (v11)
  {
    v0[2373] = v11;
    operator delete(v11);
  }

  if (*(v5 - 169) < 0)
  {
    operator delete(*(v5 - 192));
  }

  JUMPOUT(0x1DE037208);
}

void sub_1DE037150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  v57 = STACK[0xA28];
  if (STACK[0xA28])
  {
    STACK[0xA30] = v57;
    operator delete(v57);
  }

  v58 = STACK[0xA10];
  if (STACK[0xA10])
  {
    STACK[0xA18] = v58;
    operator delete(v58);
  }

  v59 = STACK[0x9F8];
  if (STACK[0x9F8])
  {
    STACK[0xA00] = v59;
    operator delete(v59);
  }

  v60 = STACK[0x9E0];
  if (STACK[0x9E0])
  {
    STACK[0x9E8] = v60;
    operator delete(v60);
  }

  v61 = STACK[0x9C8];
  if (STACK[0x9C8])
  {
    STACK[0x9D0] = v61;
    operator delete(v61);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  v62 = STACK[0x980];
  if (STACK[0x980])
  {
    STACK[0x988] = v62;
    operator delete(v62);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  JUMPOUT(0x1DE037474);
}

void sub_1DE037240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v75;
    operator delete(v75);
  }

  if (a73)
  {
    operator delete(a73);
  }

  if (a71)
  {
    operator delete(a71);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a59)
  {
    operator delete(a59);
  }

  JUMPOUT(0x1DE0374A4);
}

void sub_1DE037398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  *(v39 - 192) = &a39;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v39 - 192));
  JUMPOUT(0x1DE03743CLL);
}

void sub_1DE0373A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void **a52)
{
  a52 = &a39;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a52);
  JUMPOUT(0x1DE0373BCLL);
}

void sub_1DE0373F8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE03755CLL);
}

uint64_t Trackable::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  if (a1 == a2)
  {
    *(a1 + 56) = *(a2 + 56);
    std::string::operator=((a1 + 72), (a2 + 72));
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    *(a1 + 56) = *(a2 + 56);
    std::string::operator=((a1 + 72), (a2 + 72));
    *(a1 + 96) = *(a2 + 96);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    std::vector<Trackable *>::__assign_with_size[abi:ne200100]<Trackable **,Trackable **>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
    std::vector<Trackable *>::__assign_with_size[abi:ne200100]<Trackable **,Trackable **>((a1 + 152), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 3);
    std::vector<Trackable *>::__assign_with_size[abi:ne200100]<Trackable **,Trackable **>((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 3);
    std::vector<Trackable *>::__assign_with_size[abi:ne200100]<Trackable **,Trackable **>((a1 + 200), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 3);
  }

  return a1;
}

void *boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 24);
    do
    {
      v4 = v3[2];
      if (v4)
      {
        v3[3] = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 1);
      if (v5)
      {
        *v3 = v5;
        operator delete(v5);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void Trackable::~Trackable(void **this)
{
  *this = &unk_1F5938340;
  Trackable::Uninitialize(this);
  v2 = this[25];
  if (v2)
  {
    this[26] = v2;
    operator delete(v2);
  }

  v3 = this[22];
  if (v3)
  {
    this[23] = v3;
    operator delete(v3);
  }

  v4 = this[19];
  if (v4)
  {
    this[20] = v4;
    operator delete(v4);
  }

  v5 = this[16];
  if (v5)
  {
    this[17] = v5;
    operator delete(v5);
  }

  v6 = this[13];
  if (v6)
  {
    this[14] = v6;
    operator delete(v6);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v7 = this[4];
  if (v7)
  {
    this[5] = v7;
    operator delete(v7);
  }
}

{
  Trackable::~Trackable(this);

  JUMPOUT(0x1E12BD160);
}

void AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::~AutoValue(uint64_t a1)
{
  *a1 = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector((a1 + 360));
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector((a1 + 360));
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector((a1 + 360));
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

void boost::container::vector<DSPSplitComplexV<float>,void,void>::priv_destroy_all(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 24);
    do
    {
      v4 = v3[2];
      if (v4)
      {
        v3[3] = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 1);
      if (v5)
      {
        *v3 = v5;
        operator delete(v5);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

uint64_t DSPSplitComplexV<float>::DSPSplitComplexV(uint64_t a1, char **a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (a2 != a1)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 2);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 40), a2[5], a2[6], (a2[6] - a2[5]) >> 2);
    v4 = *(a1 + 40);
    *a1 = *(a1 + 16);
    *(a1 + 8) = v4;
  }

  return a1;
}

void sub_1DE037A40(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE037CC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 61))
      {
        std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v11);
      }
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
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

void *std::vector<Trackable *>::__assign_with_size[abi:ne200100]<Trackable **,Trackable **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 61))
      {
        std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v11);
      }
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
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

void *AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(void *a1, unint64_t a2, char **a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = a2;
  DSPSplitComplexV<float>::DSPSplitComplexV((a1 + 2), a3);
  a1[10] = 0;
  a1[11] = v4;
  a1[12] = 0;
  if (v4)
  {
    if (v4 >> 57)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v6);
    }

    v7 = operator new(v4 << 6);
    v8 = 0;
    a1[10] = v7;
    a1[12] = v4;
    v9 = v7;
    do
    {
      DSPSplitComplexV<float>::DSPSplitComplexV(v9, a3);
      v9 += 64;
      v8 -= 64;
      --v4;
    }

    while (v4);
  }

  return a1;
}

void sub_1DE03804C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (*(v1 + 96))
  {
    operator delete(*(v1 + 80));
  }

  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator((v1 + 16));
  _Unwind_Resume(a1);
}

void *AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer(void *a1)
{
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector(a1 + 10);
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

__n128 std::__function::__func<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<DSPSplitComplexV<float>,(LogTypes)0> &,AutoValue&<std::vector<float>,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<DSPSplitComplexV<float>,(LogTypes)0>>,std::reference_wrapper<std::vector<float>>>,std::vector<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<DSPSplitComplexV<float>,(LogTypes)0> &,AutoValue&<std::vector<float>,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<DSPSplitComplexV<float>,(LogTypes)0>>,std::reference_wrapper<std::vector<float>>>>,DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938FC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::vector<Trackable *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v9);
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

DSPSplitComplex *AU::ReverbSuppressor::ApplyGainVector<float>(DSPSplitComplex *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::Get(a2);
  v6 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v7 = DSPSplitComplexV<float>::size(a1);
  if (v7 != DSPSplitComplexV<float>::size(v5))
  {
    __assert_rtn("MultiplyCVectorRVector", "VectorUtils.h", 375, "result.size() == a.size()");
  }

  v8 = DSPSplitComplexV<float>::size(a1);
  v10 = v6;
  v9 = *v6;
  if (v8 != v10[1] - v9)
  {
    __assert_rtn("MultiplyCVectorRVector", "VectorUtils.h", 376, "result.size() == b.size()");
  }

  v11 = DSPSplitComplexV<float>::size(a1);
  vDSP_zrvmul(v5, 1, v9, 1, a1, 1, v11);
  return a1;
}

void AU::ReverbSuppressor::Algorithm::~Algorithm(AU::ReverbSuppressor::Algorithm *this)
{
  Dereverb::Dereverb<float,(Dereverb::FirstPassTypes)0,(LogTypes)0>::~Dereverb(this);

  JUMPOUT(0x1E12BD160);
}

void Dereverb::Dereverb<float,(Dereverb::FirstPassTypes)0,(LogTypes)0>::~Dereverb(uint64_t a1)
{
  *a1 = &unk_1F59383C0;
  NoiseSuppression::Gain::GainRule<float,(LogTypes)0>::~GainRule(a1 + 11584);
  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(a1 + 10176);
  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(a1 + 8768);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(a1 + 8064);
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(a1 + 7360);
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(a1 + 6304);
  ReverbEstimator<float,true,(LogTypes)0>::~ReverbEstimator(a1 + 4200);
  *(a1 + 3808) = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector((a1 + 4168));
  v2 = *(a1 + 4144);
  if (v2)
  {
    *(a1 + 4152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 4120);
  if (v3)
  {
    *(a1 + 4128) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](a1 + 4032);
  Trackable::~Trackable((a1 + 3808));
  *(a1 + 3456) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 3776));
  v4 = *(a1 + 3752);
  if (v4)
  {
    *(a1 + 3760) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 3680);
  Trackable::~Trackable((a1 + 3456));
  *(a1 + 3104) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 3424));
  v5 = *(a1 + 3400);
  if (v5)
  {
    *(a1 + 3408) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 3328);
  Trackable::~Trackable((a1 + 3104));
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(a1 + 2048);
  *(a1 + 1696) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 2016));
  v6 = *(a1 + 1992);
  if (v6)
  {
    *(a1 + 2000) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 1920);
  Trackable::~Trackable((a1 + 1696));
  *(a1 + 1360) = &unk_1F5938360;
  if (*(a1 + 1680))
  {
    operator delete(*(a1 + 1664));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 1584);
  Trackable::~Trackable((a1 + 1360));
  *(a1 + 1024) = &unk_1F5938360;
  if (*(a1 + 1344))
  {
    operator delete(*(a1 + 1328));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 1248);
  Trackable::~Trackable((a1 + 1024));
  *(a1 + 688) = &unk_1F5938360;
  if (*(a1 + 1008))
  {
    operator delete(*(a1 + 992));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 912);
  Trackable::~Trackable((a1 + 688));
  *(a1 + 352) = &unk_1F5938360;
  if (*(a1 + 672))
  {
    operator delete(*(a1 + 656));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v7 = *(a1 + 296);
  if (v7)
  {
    *(a1 + 304) = v7;
    operator delete(v7);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  Dereverb::Dereverb<float,(Dereverb::FirstPassTypes)0,(LogTypes)0>::~Dereverb(a1);

  JUMPOUT(0x1E12BD160);
}

void NoiseSuppression::Gain::GainRule<float,(LogTypes)0>::~GainRule(uint64_t a1)
{
  *a1 = &unk_1F5938B48;
  v2 = (a1 + 8416);
  *(a1 + 8416) = &unk_1F5938360;
  if (*(a1 + 8736))
  {
    operator delete(*(a1 + 8720));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 8640);
  Trackable::~Trackable(v2);
  *(a1 + 8064) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 8384));
  v3 = *(a1 + 8360);
  if (v3)
  {
    *(a1 + 8368) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 8288);
  Trackable::~Trackable((a1 + 8064));
  *(a1 + 7712) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 8032));
  v4 = *(a1 + 8008);
  if (v4)
  {
    *(a1 + 8016) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 7936);
  Trackable::~Trackable((a1 + 7712));
  *(a1 + 7360) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 7680));
  v5 = *(a1 + 7656);
  if (v5)
  {
    *(a1 + 7664) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 7584);
  Trackable::~Trackable((a1 + 7360));
  *(a1 + 7008) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 7328));
  v6 = *(a1 + 7304);
  if (v6)
  {
    *(a1 + 7312) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 7232);
  Trackable::~Trackable((a1 + 7008));
  *(a1 + 6656) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 6976));
  v7 = *(a1 + 6952);
  if (v7)
  {
    *(a1 + 6960) = v7;
    operator delete(v7);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 6880);
  Trackable::~Trackable((a1 + 6656));
  NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(a1 + 5248);
  NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(a1 + 3840);
  NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::~Gain2(a1 + 352);
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v8 = *(a1 + 296);
  if (v8)
  {
    *(a1 + 304) = v8;
    operator delete(v8);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  NoiseSuppression::Gain::GainRule<float,(LogTypes)0>::~GainRule(a1);

  JUMPOUT(0x1E12BD160);
}

void NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(uint64_t a1)
{
  *a1 = &unk_1F5938AE0;
  v2 = (a1 + 1056);
  *(a1 + 1056) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1376));
  v3 = *(a1 + 1352);
  if (v3)
  {
    *(a1 + 1360) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 1280);
  Trackable::~Trackable(v2);
  *(a1 + 704) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1024));
  v4 = *(a1 + 1000);
  if (v4)
  {
    *(a1 + 1008) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 928);
  Trackable::~Trackable((a1 + 704));
  *(a1 + 352) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 672));
  v5 = *(a1 + 648);
  if (v5)
  {
    *(a1 + 656) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v6 = *(a1 + 296);
  if (v6)
  {
    *(a1 + 304) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  NoiseSuppression::SNR::Prior<float,(LogTypes)0>::~Prior(a1);

  JUMPOUT(0x1E12BD160);
}

void NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(uint64_t a1)
{
  *a1 = &unk_1F5938A30;
  v2 = (a1 + 352);
  *(a1 + 352) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 672));
  v3 = *(a1 + 648);
  if (v3)
  {
    *(a1 + 656) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable(v2);
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v4 = *(a1 + 296);
  if (v4)
  {
    *(a1 + 304) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  NoiseSuppression::SNR::Post<float,(LogTypes)0>::~Post(a1);

  JUMPOUT(0x1E12BD160);
}

void Filterbank::ToBark<float,(LogTypes)0>::~ToBark(uint64_t a1)
{
  *a1 = &unk_1F5938590;
  v2 = (a1 + 704);
  *(a1 + 704) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1024));
  v3 = *(a1 + 1000);
  if (v3)
  {
    *(a1 + 1008) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 928);
  Trackable::~Trackable(v2);
  *(a1 + 352) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 672));
  v4 = *(a1 + 648);
  if (v4)
  {
    *(a1 + 656) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v5 = *(a1 + 296);
  if (v5)
  {
    *(a1 + 304) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  Filterbank::ToBark<float,(LogTypes)0>::~ToBark(a1);

  JUMPOUT(0x1E12BD160);
}

void ReverbEstimator<float,true,(LogTypes)0>::~ReverbEstimator(uint64_t a1)
{
  *a1 = &unk_1F59386A8;
  v2 = (a1 + 1752);
  *(a1 + 1752) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 2072));
  v3 = *(a1 + 2048);
  if (v3)
  {
    *(a1 + 2056) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 1976);
  Trackable::~Trackable(v2);
  Convolver<float,true,(LogTypes)0>::~Convolver(a1 + 688);
  *(a1 + 352) = &unk_1F5938360;
  if (*(a1 + 672))
  {
    operator delete(*(a1 + 656));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v4 = *(a1 + 296);
  if (v4)
  {
    *(a1 + 304) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  ReverbEstimator<float,true,(LogTypes)0>::~ReverbEstimator(a1);

  JUMPOUT(0x1E12BD160);
}

void *boost::container::vector<std::vector<float>,void,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      v4 = *(v3 - 1);
      if (v4)
      {
        *v3 = v4;
        operator delete(v4);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AutoValue<float,(LogTypes)0>::~AutoValue(uint64_t a1)
{
  *a1 = &unk_1F5938360;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5938360;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

void AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(uint64_t a1)
{
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

void Convolver<float,true,(LogTypes)0>::~Convolver(uint64_t a1)
{
  *a1 = &unk_1F5938710;
  v2 = (a1 + 704);
  *(a1 + 704) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1024));
  v3 = *(a1 + 1000);
  if (v3)
  {
    *(a1 + 1008) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 928);
  Trackable::~Trackable(v2);
  *(a1 + 352) = &unk_1F5938778;
  boost::container::vector<std::vector<std::vector<float>>,void,void>::~vector(a1 + 672);
  v5 = (a1 + 648);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__function::__value_func<std::vector<std::vector<float>> const& ()(std::vector<std::vector<float>>&)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v4 = *(a1 + 296);
  if (v4)
  {
    *(a1 + 304) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);
}

{
  Convolver<float,true,(LogTypes)0>::~Convolver(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t boost::container::vector<std::vector<std::vector<float>>,void,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    do
    {
      --v2;
      v5 = v3;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
      v3 += 3;
    }

    while (v2);
  }

  if (*(a1 + 16))
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::vector<std::vector<float>> const& ()(std::vector<std::vector<float>>&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::~AutoValue(void **a1)
{
  *a1 = &unk_1F5938778;
  v2 = (a1 + 28);
  boost::container::vector<std::vector<std::vector<float>>,void,void>::~vector((a1 + 40));
  v4 = a1 + 37;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<std::vector<std::vector<float>> const& ()(std::vector<std::vector<float>>&)>::~__value_func[abi:ne200100](v2);
  Trackable::~Trackable(a1);
  return MEMORY[0x1E12BD160]();
}

void AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::~AutoValue(void **a1)
{
  *a1 = &unk_1F5938778;
  v2 = (a1 + 28);
  boost::container::vector<std::vector<std::vector<float>>,void,void>::~vector((a1 + 40));
  v3 = a1 + 37;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<std::vector<std::vector<float>> const& ()(std::vector<std::vector<float>>&)>::~__value_func[abi:ne200100](v2);
  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F5938778;
  v2 = (a1 + 28);
  boost::container::vector<std::vector<std::vector<float>>,void,void>::~vector((a1 + 40));
  v3 = a1 + 37;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<std::vector<std::vector<float>> const& ()(std::vector<std::vector<float>>&)>::~__value_func[abi:ne200100](v2);
  Trackable::~Trackable(a1);
}

void NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(uint64_t a1)
{
  *a1 = &unk_1F5938C60;
  v2 = (a1 + 1056);
  *(a1 + 1056) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1376));
  v3 = *(a1 + 1352);
  if (v3)
  {
    *(a1 + 1360) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 1280);
  Trackable::~Trackable(v2);
  *(a1 + 704) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1024));
  v4 = *(a1 + 1000);
  if (v4)
  {
    *(a1 + 1008) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 928);
  Trackable::~Trackable((a1 + 704));
  *(a1 + 352) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 672));
  v5 = *(a1 + 648);
  if (v5)
  {
    *(a1 + 656) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v6 = *(a1 + 296);
  if (v6)
  {
    *(a1 + 304) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  NoiseSuppression::Gain::Gain<float,(LogTypes)0>::~Gain(a1);

  JUMPOUT(0x1E12BD160);
}

void NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::~Gain2(uint64_t a1)
{
  *a1 = &unk_1F5938B68;
  v2 = (a1 + 3136);
  *(a1 + 3136) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 3456));
  v3 = *(a1 + 3432);
  if (v3)
  {
    *(a1 + 3440) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 3360);
  Trackable::~Trackable(v2);
  *(a1 + 2784) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 3104));
  v4 = *(a1 + 3080);
  if (v4)
  {
    *(a1 + 3088) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 3008);
  Trackable::~Trackable((a1 + 2784));
  *(a1 + 2432) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 2752));
  v5 = *(a1 + 2728);
  if (v5)
  {
    *(a1 + 2736) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 2656);
  Trackable::~Trackable((a1 + 2432));
  *(a1 + 2080) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 2400));
  v6 = *(a1 + 2376);
  if (v6)
  {
    *(a1 + 2384) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 2304);
  Trackable::~Trackable((a1 + 2080));
  *(a1 + 1744) = &unk_1F5938360;
  if (*(a1 + 2064))
  {
    operator delete(*(a1 + 2048));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 1968);
  Trackable::~Trackable((a1 + 1744));
  *(a1 + 1408) = &unk_1F5938360;
  if (*(a1 + 1728))
  {
    operator delete(*(a1 + 1712));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 1632);
  Trackable::~Trackable((a1 + 1408));
  *(a1 + 1056) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1376));
  v7 = *(a1 + 1352);
  if (v7)
  {
    *(a1 + 1360) = v7;
    operator delete(v7);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 1280);
  Trackable::~Trackable((a1 + 1056));
  *(a1 + 704) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1024));
  v8 = *(a1 + 1000);
  if (v8)
  {
    *(a1 + 1008) = v8;
    operator delete(v8);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 928);
  Trackable::~Trackable((a1 + 704));
  *(a1 + 352) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 672));
  v9 = *(a1 + 648);
  if (v9)
  {
    *(a1 + 656) = v9;
    operator delete(v9);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v10 = *(a1 + 296);
  if (v10)
  {
    *(a1 + 304) = v10;
    operator delete(v10);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::~Gain2(a1);

  JUMPOUT(0x1E12BD160);
}

void *AutoValue<std::vector<float>,(LogTypes)0>::AutoValue(void *a1, __int128 *a2)
{
  v3 = Trackable::Trackable<>(a1, a2);
  *v3 = &unk_1F59383E0;
  v3[31] = 0;
  v3[32] = 0;
  memset(v5, 0, sizeof(v5));
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(v3 + 35, 1uLL, v5);
  a1[43] = 0;
  a1[2] = 0;
  a1[33] = 0;
  a1[34] = 0;
  return a1;
}

void sub_1DE039B3C(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100]((v1 + 28));
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

uint64_t AutoValue<float,(LogTypes)0>::AutoValue(uint64_t a1, __int128 *a2)
{
  v3 = Trackable::Trackable<>(a1, a2);
  *v3 = &unk_1F5938360;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 1;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = xmmword_1DE09C160;
  v4 = operator new(4uLL);
  *(a1 + 304) = v4;
  *v4 = 0;
  *(a1 + 320) = xmmword_1DE09C160;
  *(a1 + 16) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  return a1;
}

void sub_1DE039BEC(_Unwind_Exception *a1)
{
  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100]((v1 + 28));
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

uint64_t AutoValue<float,(LogTypes)0>::AutoValue<float const& ()(float &,AutoValue<float,(LogTypes)0>&),float>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v7 = Trackable::Trackable<AutoValue<float,(LogTypes)0>>(a1, a2, a4);
  *v7 = &unk_1F5938360;
  *(v7 + 248) = 0;
  *(v7 + 256) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = 1;
  *(v7 + 296) = 0;
  *(v7 + 304) = 0;
  *(v7 + 312) = xmmword_1DE09C160;
  v8 = operator new(4uLL);
  *(a1 + 304) = v8;
  *v8 = 0;
  *(a1 + 320) = xmmword_1DE09C160;
  v10[0] = &unk_1F5938478;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = v10;
  std::__function::__value_func<float const& ()(float &)>::swap[abi:ne200100](v10, (a1 + 224));
  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](v10);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  return a1;
}

void sub_1DE039D18(_Unwind_Exception *a1)
{
  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100]((v1 + 28));
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

uint64_t SpectralMagnitude<float,(LogTypes)0>::SpectralMagnitude(uint64_t a1, __int128 *a2, unint64_t a3, void *a4)
{
  v16[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v7;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *&v13 = a4;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, &v13);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_1F59383E0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v13 = 0uLL;
  __p[0] = 0;
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer((a1 + 280), 1uLL, &v13);
  *(a1 + 344) = 0;
  *&v13 = &unk_1F5938548;
  *(&v13 + 1) = SpectralMagnitude<float,(LogTypes)0>::ComputeMagnitude;
  __p[0] = a4;
  __p[1] = &v13;
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::swap[abi:ne200100](&v13, (a1 + 224));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](&v13);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *a1 = &unk_1F5938528;
  v8 = *(a1 + 344);
  std::vector<float>::vector[abi:ne200100](v12, a3);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(&v13, v8 + 1, v12);
  *(a1 + 280) = v13;
  v9 = (a1 + 296);
  v10 = *(a1 + 296);
  if (v10)
  {
    *(a1 + 304) = v10;
    operator delete(v10);
    *v9 = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  *v9 = *__p;
  *(a1 + 312) = v15;
  __p[1] = 0;
  v15 = 0;
  __p[0] = 0;
  if (&v13 != (a1 + 280))
  {
    boost::container::vector<std::vector<float>,void,void>::priv_move_assign<void>(a1 + 320, v16);
  }

  boost::container::vector<std::vector<float>,void,void>::~vector(v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return a1;
}

void sub_1DE039F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v15 = *v13;
  if (*v13)
  {
    *(v12 + 40) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void Filterbank::ToBark<float,(LogTypes)0>::ToBark(void *a1, __int128 *a2, unint64_t a3, float a4)
{
  v69 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5938590;
  Filterbank::BarkCore<float>::BarkCore(v9, a3, 0x18uLL, a4);
  v24 = *v9;
  v23 = Filterbank::ToBark<float,(LogTypes)0>::ComputeBark_curry;
  v25 = v10;
  v9[0] = 0;
  v9[1] = 0;
  v26 = v11;
  v6 = v12;
  v10 = 0;
  v11 = 0uLL;
  v12 = 0;
  v28 = *v13;
  v27 = v6;
  v29 = v14;
  v13[0] = 0;
  v13[1] = 0;
  v30 = v15;
  v7 = v16;
  v14 = 0;
  v15 = 0uLL;
  v16 = 0;
  v32 = *v17;
  v31 = v7;
  v33 = v18;
  v17[0] = 0;
  v17[1] = 0;
  v34 = v19;
  v8 = v20;
  v18 = 0;
  v19 = 0uLL;
  v20 = 0;
  v36 = *v21;
  v35 = v8;
  v37 = v22;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  Trackable::Trackable<AutoValue<std::vector<float>,(LogTypes)0>,AutoValue<std::vector<float>,(LogTypes)0>>(a1, a2, (a1 + 44), (a1 + 88));
  *a1 = &unk_1F59383E0;
  a1[31] = 0;
  a1[32] = 0;
  v53 = 0uLL;
  *&v54 = 0;
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(a1 + 35, 1uLL, &v53);
  a1[43] = 0;
  v38[0] = Filterbank::ToBark<float,(LogTypes)0>::ComputeBark_curry;
  Filterbank::BarkCore<float>::BarkCore(&v38[1], &v24);
  *&v52 = a1 + 44;
  *(&v52 + 1) = a1 + 88;
  v53 = *v38;
  v54 = *v39;
  v39[0] = 0;
  v39[1] = 0;
  v38[1] = 0;
  v55 = *v40;
  v40[0] = 0;
  v40[1] = 0;
  v57 = *v42;
  v56 = v41;
  v58 = v43;
  v41 = 0;
  *v42 = 0uLL;
  v43 = 0;
  v59 = *v44;
  v44[1] = 0;
  v44[0] = 0;
  v61 = *v46;
  v60 = v45;
  v62 = v47;
  v45 = 0;
  *v46 = 0uLL;
  v47 = 0;
  v63 = *v48;
  v48[1] = 0;
  v48[0] = 0;
  v65 = *__p_8;
  v64 = __p;
  v66 = v51;
  __p = 0;
  *__p_8 = 0uLL;
  v51 = 0;
  v67 = v52;
  v68 = 0;
  operator new();
}

void sub_1DE03AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a43);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(a44);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v44);
  _Unwind_Resume(a1);
}

void AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::vector<float> const& ()(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue&<float,(LogTypes)0>),std::vector<float>,std::vector<float>,std::vector<float>,float>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v11;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v12[0] = a3;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v12);
  v12[0] = a4;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v12);
  v12[0] = a5;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v12);
  v12[0] = a6;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v12);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_1F59383E0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  memset(v12, 0, 24);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer((a1 + 280), 1uLL, v12);
  *(a1 + 344) = 0;
  operator new();
}

void sub_1DE03ADBC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE03AFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v14 + 352);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v14);
  _Unwind_Resume(a1);
}

void NoiseSuppression::SNR::Prior<float,(LogTypes)0>::Prior(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  __p[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v6;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  __p[0] = (a1 + 704);
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, __p);
  __p[0] = (a1 + 1056);
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, __p);
  __p[0] = a4;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, __p);
  __p[0] = (a1 + 352);
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, __p);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_1F59383E0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  memset(__p, 0, 24);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer((a1 + 280), 1uLL, __p);
  *(a1 + 344) = 0;
  operator new();
}

void sub_1DE03B464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v20 = *v18;
  if (*v18)
  {
    *(v17 + 40) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void AutoValue<std::vector<float>,(LogTypes)0>::PreAllocate<unsigned long const&,float>(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 344);
  std::vector<float>::vector[abi:ne200100](v6, a2);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(&v7, v3 + 1, v6);
  *(a1 + 280) = v7;
  v4 = (a1 + 296);
  v5 = *(a1 + 296);
  if (v5)
  {
    *(a1 + 304) = v5;
    operator delete(v5);
    *v4 = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  *v4 = *__p;
  *(a1 + 312) = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  if (&v7 != (a1 + 280))
  {
    boost::container::vector<std::vector<float>,void,void>::priv_move_assign<void>(a1 + 320, v10);
  }

  boost::container::vector<std::vector<float>,void,void>::~vector(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_1DE03B678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AutoValue<std::vector<float>,(LogTypes)0>::PreAllocate<int,float>(uint64_t a1, int a2)
{
  v3 = *(a1 + 344);
  std::vector<float>::vector[abi:ne200100](v6, a2);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(&v7, v3 + 1, v6);
  *(a1 + 280) = v7;
  v4 = (a1 + 296);
  v5 = *(a1 + 296);
  if (v5)
  {
    *(a1 + 304) = v5;
    operator delete(v5);
    *v4 = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  *v4 = *__p;
  *(a1 + 312) = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  if (&v7 != (a1 + 280))
  {
    boost::container::vector<std::vector<float>,void,void>::priv_move_assign<void>(a1 + 320, v10);
  }

  boost::container::vector<std::vector<float>,void,void>::~vector(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_1DE03B76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SpectralMagnitude<float,(LogTypes)0>::~SpectralMagnitude(uint64_t a1)
{
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

void TCToCoef<float,(LogTypes)0>::~TCToCoef(uint64_t a1)
{
  *a1 = &unk_1F5938360;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F5938360;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5938360;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

void dBToLinear<float,(LogTypes)0>::~dBToLinear(uint64_t a1)
{
  *a1 = &unk_1F5938360;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F5938360;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

void *AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(void *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[5] = 0;
  a1[6] = v4;
  a1[7] = 0;
  if (v4)
  {
    if (v4 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v6);
    }

    v7 = operator new(24 * v4);
    v8 = 0;
    a1[5] = v7;
    a1[7] = v4;
    v9 = v7;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v9, *a3, a3[1], (a3[1] - *a3) >> 2);
      v9 += 3;
      v8 -= 24;
      --v4;
    }

    while (v4);
  }

  return a1;
}

void sub_1DE03BA5C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (*(v1 + 56))
  {
    operator delete(*(v1 + 40));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

__n128 boost::container::vector<std::vector<float>,void,void>::priv_move_assign<void>(uint64_t a1, void *a2)
{
  if (a1 == a2 && a2[1])
  {
    __assert_rtn("priv_move_assign", "vector.hpp", 2480, "this != &x || x.size() == 0");
  }

  boost::container::vector<std::vector<float>,void,void>::priv_destroy_all(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 8) = result;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void boost::container::vector<std::vector<float>,void,void>::priv_destroy_all(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      v4 = *(v3 - 1);
      if (v4)
      {
        *v3 = v4;
        operator delete(v4);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

void AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::vector<float> const& ()(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue&<float,(LogTypes)0>),std::vector<float>,float>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v8;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v9[0] = a4;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v9);
  v9[0] = a5;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v9);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_1F59383E0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  memset(v9, 0, 24);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer((a1 + 280), 1uLL, v9);
  *(a1 + 344) = 0;
  operator new();
}

void sub_1DE03BD18(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE03C078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v14 + 704);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v14 + 352);
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(v14);
  _Unwind_Resume(a1);
}

void AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::vector<float> const& ()(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue<std::vector<float>,(LogTypes)0>&),std::vector<float>,std::vector<float>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6 = Trackable::Trackable<AutoValue<std::vector<float>,(LogTypes)0>,AutoValue<std::vector<float>,(LogTypes)0>>(a1, a2, a4, a5);
  *v6 = &unk_1F59383E0;
  v6[31] = 0;
  v6[32] = 0;
  memset(v7, 0, 24);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(v6 + 35, 1uLL, v7);
  *(a1 + 344) = 0;
  operator new();
}

void sub_1DE03C214(_Unwind_Exception *a1)
{
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer((v1 + 280));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](v1 + 224);
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

void Filterbank::ToLinear<float,(LogTypes)0>::ToLinear(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, float a5)
{
  Filterbank::BarkCore<float>::BarkCore(v11, a3, 0x18uLL, a5);
  v26 = *v11;
  v25 = Filterbank::ToLinear<float,(LogTypes)0>::ComputeLinear_curry;
  v27 = v12;
  v11[0] = 0;
  v11[1] = 0;
  v28 = *v13;
  v8 = v14;
  v12 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v30 = *v15;
  v29 = v8;
  v31 = v16;
  v15[0] = 0;
  v15[1] = 0;
  v32 = *v17;
  v9 = v18;
  v16 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v34 = *v19;
  v33 = v9;
  v35 = v20;
  v19[0] = 0;
  v19[1] = 0;
  v36 = *v21;
  v10 = v22;
  v20 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v38 = *__p;
  v37 = v10;
  v39 = v24;
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>>,std::vector<float>>(a1, a2, &v25, a4);
}

void AutoValue<std::vector<float>,(LogTypes)0>::PreAllocate<unsigned long const&>(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 344);
  std::vector<float>::vector[abi:ne200100](v6, a2);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(&v7, v3 + 1, v6);
  *(a1 + 280) = v7;
  v4 = (a1 + 296);
  v5 = *(a1 + 296);
  if (v5)
  {
    *(a1 + 304) = v5;
    operator delete(v5);
    *v4 = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  *v4 = *__p;
  *(a1 + 312) = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  if (&v7 != (a1 + 280))
  {
    boost::container::vector<std::vector<float>,void,void>::priv_move_assign<void>(a1 + 320, v10);
  }

  boost::container::vector<std::vector<float>,void,void>::~vector(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_1DE03C5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Filterbank::ToLinear<float,(LogTypes)0>::~ToLinear(uint64_t a1)
{
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 320));
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t *Filterbank::BarkCore<float>::BarkCore(uint64_t *a1, unint64_t a2, unint64_t a3, float a4)
{
  v8 = std::vector<int>::vector[abi:ne200100](a1, a2);
  std::vector<int>::vector[abi:ne200100](v8 + 3, a2);
  std::vector<float>::vector[abi:ne200100](a1 + 6, a2);
  std::vector<float>::vector[abi:ne200100](a1 + 9, a2);
  std::vector<int>::vector[abi:ne200100](a1 + 12, a3);
  std::vector<int>::vector[abi:ne200100](a1 + 15, a3);
  std::vector<float>::vector[abi:ne200100](a1 + 18, a3);
  v9 = a4 * 0.5;
  v10 = atanf((a4 * 0.5) * 0.00074);
  v11 = atanf((v9 * v9) * 0.0000000185);
  if (a2)
  {
    v12 = 0;
    v39 = a4 / (2 * a2);
    v13 = ((v11 * 2.24) + (v10 * 13.1)) + (v9 * 0.0001);
    v14 = v13 / (a3 - 1);
    v15 = a3 - 2;
    while (1)
    {
      v16 = v39 * v12;
      v17 = atanf(v16 * 0.00074);
      v18 = ((atanf((v16 * v16) * 0.0000000185) * 2.24) + (v17 * 13.1)) + (v16 * 0.0001);
      if (v18 > v13)
      {
        break;
      }

      v19 = vcvtms_s32_f32(v18 / v14);
      v20 = 1.0;
      v21 = v15;
      if (v15 >= v19)
      {
        v20 = (v18 - (v19 * v14)) / v14;
        v21 = v19;
      }

      v22 = *a1;
      *(*a1 + 4 * v12) = v21;
      v23 = v21 + 1;
      v24 = a1[3];
      *(v24 + 4 * v12) = v23;
      v25 = a1[6];
      *(v25 + 4 * v12) = 1.0 - v20;
      v26 = a1[9];
      *(v26 + 4 * v12++) = v20;
      if (a2 == v12)
      {
        goto LABEL_10;
      }
    }

    v22 = *a1;
    v24 = a1[3];
    v25 = a1[6];
    v26 = a1[9];
LABEL_10:
    v28 = 0;
    v27 = a1[18];
    do
    {
      v29 = *(v24 + 4 * v28);
      v27[*(v22 + 4 * v28)] = *(v25 + 4 * v28) + v27[*(v22 + 4 * v28)];
      v27[v29] = *(v26 + 4 * v28++) + v27[v29];
    }

    while (a2 > v28);
  }

  else
  {
    v27 = a1[18];
  }

  DivideScalarVector<float>((a1 + 18), v27, a1[19]);
  if (a2)
  {
    v30 = 0;
    LODWORD(v31) = 0;
    v32 = 0;
    v33 = *a1;
    v34 = (a1[1] - *a1) >> 2;
    while (v34 != v30)
    {
      if (*(v33 + 4 * v30) == v32)
      {
        v35 = a1[15];
        if (v31 >= ((a1[16] - v35) >> 2))
        {
          break;
        }

        ++*(v35 + 4 * v31);
      }

      else
      {
        v31 = (v31 + 1);
        v36 = a1[12];
        if (v31 >= (a1[13] - v36) >> 2)
        {
          break;
        }

        *(v36 + 4 * v31) = v30;
        v37 = a1[15];
        if (v31 >= (a1[16] - v37) >> 2)
        {
          break;
        }

        ++v32;
        *(v37 + 4 * v31) = 1;
      }

      if (a2 == ++v30)
      {
        return a1;
      }
    }

    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return a1;
}

void sub_1DE03C92C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 72);
  if (v6)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>>,std::vector<float>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = Trackable::Trackable<AutoValue<std::vector<float>,(LogTypes)0>>(a1, a2, a4);
  *v7 = &unk_1F59383E0;
  v7[31] = 0;
  v7[32] = 0;
  v24 = 0uLL;
  *&v25 = 0;
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(v7 + 35, 1uLL, &v24);
  v8 = *a3;
  *(a1 + 344) = 0;
  v9[0] = v8;
  Filterbank::BarkCore<float>::BarkCore(&v9[1], (a3 + 8));
  v23 = a4;
  v24 = *v9;
  v25 = v10;
  v10 = 0uLL;
  v9[1] = 0;
  v26 = *v11;
  v11[0] = 0;
  v11[1] = 0;
  v28 = *v13;
  v27 = v12;
  v29 = v14;
  v12 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v30 = *v15;
  v15[0] = 0;
  v15[1] = 0;
  v32 = *v17;
  v31 = v16;
  v33 = v18;
  v16 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v34 = *v19;
  v19[0] = 0;
  v19[1] = 0;
  v36 = __p;
  v35 = v20;
  v37 = v22;
  v38 = a4;
  v20 = 0;
  __p = 0uLL;
  v22 = 0;
  operator new();
}

void sub_1DE03CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  Filterbank::BarkCore<float>::~BarkCore(&a50);
  Filterbank::BarkCore<float>::~BarkCore(v51);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer((v50 + 280));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](v50 + 224);
  Trackable::~Trackable(v50);
  _Unwind_Resume(a1);
}

uint64_t Filterbank::BarkCore<float>::~BarkCore(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t Trackable::Trackable<AutoValue<std::vector<float>,(LogTypes)0>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v5;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v7 = a3;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, &v7);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_1DE03CEB0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *Filterbank::BarkCore<float>::BarkCore(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 2);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 12), a2[12], a2[13], (a2[13] - a2[12]) >> 2);
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 15), a2[15], a2[16], (a2[16] - a2[15]) >> 2);
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 18), a2[18], a2[19], (a2[19] - a2[18]) >> 2);
  return a1;
}

void sub_1DE03D04C(_Unwind_Exception *exception_object)
{
  v8 = *v6;
  if (*v6)
  {
    *(v1 + 128) = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v12;
    operator delete(v12);
  }

  v13 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void *AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer(void *a1)
{
  boost::container::vector<std::vector<float>,void,void>::~vector(a1 + 5);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void *std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE03D374(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::destroy_deallocate(void *a1)
{
  Filterbank::BarkCore<float>::~BarkCore(a1 + 16);

  operator delete(a1);
}

void *std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_1F59385F8;
  a2[1] = v4;
  result = Filterbank::BarkCore<float>::BarkCore(a2 + 2, a1 + 2);
  a2[23] = a1[23];
  return result;
}

void std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F59385F8;
  Filterbank::BarkCore<float>::~BarkCore((a1 + 2));

  JUMPOUT(0x1E12BD160);
}

void *std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F59385F8;
  Filterbank::BarkCore<float>::~BarkCore((a1 + 2));
  return a1;
}

uint64_t *Filterbank::ToLinear<float,(LogTypes)0>::ComputeLinear_curry(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = *a3;
  v7 = a3[1];
  v8 = v7 - *a3;
  v9 = *a1;
  if (a1[1] - *a1 != v8)
  {
    __assert_rtn("ComputeLinear_curry", "BarkFilterbank.h", 138, "result.size() == frameSize");
  }

  v10 = *v5;
  if (v5[1] - *v5 != 96)
  {
    __assert_rtn("ComputeLinear_curry", "BarkFilterbank.h", 139, "barkIn.size() == 24");
  }

  if (v7 != v6)
  {
    v11 = 0;
    v12 = v8 >> 2;
    v13 = a3[3];
    v14 = a3[6];
    v15 = a3[9];
    do
    {
      v16 = *(v13 + 4 * v11);
      v17 = *(v10 + 4 * *(v6 + 4 * v11)) * *(v14 + 4 * v11);
      *(v9 + 4 * v11) = v17;
      *(v9 + 4 * v11) = v17 + (*(v10 + 4 * v16) * *(v15 + 4 * v11));
      ++v11;
    }

    while (v12 > v11);
  }

  return a1;
}

uint64_t DivideScalarVector<float>(uint64_t a1, const float *a2, uint64_t a3)
{
  __A = 1.0;
  v3 = *(a1 + 8) - *a1;
  if (v3 != a3 - a2)
  {
    __assert_rtn("DivideScalarVector", "VectorUtils.h", 536, "result.size() == theVector.size()");
  }

  vDSP_svdiv(&__A, a2, 1, *a1, 1, v3 >> 2);
  return a1;
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<float,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<float,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938C80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *NoiseSuppression::Gain::GainRule<float,(LogTypes)0>::ComputeGain2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v8 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v9 = sqrtf(*AutoValue<float,(LogTypes)0>::Get(a4));
  v10 = AddMultiplyVectorScalarScalar<float>(a1, *v8, v8[1], -v9, v9);
  v11 = AddMultiplyVectorVectorVector<float>(v10, *v8, v8[1], *v7, v7[1], *a1, a1[1]);
  v12 = *a1;
  v13 = a1[1];

  return SquareVector<float>(v11, v12, v13);
}

uint64_t AutoValue<float,(LogTypes)0>::Get(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v3 = *(a1 + 95);
    if (v3 >= 0)
    {
      v4 = a1 + 72;
    }

    else
    {
      v4 = *(a1 + 72);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 95);
    }

    else
    {
      v5 = *(a1 + 80);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    Trackable::GetRevision(a1);
    if (*(a1 + 272) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v12 = *AutoValue<float,(LogTypes)0>::Get(*(a1 + 256));
      *AutoValue<float,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280)) = v12;
      *(a1 + 272) = *(a1 + 16);
    }
  }

  else if (v9 != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    if (*(a1 + 264) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v10 = AutoValue<float,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      v11 = *(a1 + 248);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11, v10);
    }
  }

  return AutoValue<float,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
}

void *AddMultiplyVectorScalarScalar<float>(void *a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v7 = a5;
  v8 = a4;
  if (a1[1] - *a1 != a3 - a2)
  {
    __assert_rtn("AddMultiplyVectorScalarScalar", "VectorUtils.h", 776, "result.size() == theVector.size()");
  }

  MEMORY[0x1E12BE910](a2, 1, &v8, &v7);
  return a1;
}

void *AddMultiplyVectorVectorVector<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1[1] - *a1;
  if (v7 != a3 - a2)
  {
    __assert_rtn("AddMultiplyVectorVectorVector", "VectorUtils.h", 818, "result.size() == a.size()");
  }

  if (v7 != a5 - a4)
  {
    __assert_rtn("AddMultiplyVectorVectorVector", "VectorUtils.h", 819, "result.size() == b.size()");
  }

  if (v7 != a7 - a6)
  {
    __assert_rtn("AddMultiplyVectorVectorVector", "VectorUtils.h", 820, "result.size() == c.size()");
  }

  MEMORY[0x1E12BE780](a2, 1, a4, 1, a6, 1);
  return a1;
}

void *SquareVector<float>(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 - a2 != a1[1] - *a1)
  {
    __assert_rtn("SquareVector", "VectorUtils.h", 467, "a.size() == result.size()");
  }

  MEMORY[0x1E12BE990](a2, 1);
  return a1;
}

uint64_t AutoValue<float,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  v2 = *a1;
  if (*a1 >= v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[4] <= v2)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[3] + 4 * v2;
}

uint64_t *AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong(uint64_t *result)
{
  v1 = *result;
  if (result[1] < *result)
  {
    __assert_rtn("DecrementCirc", "AutoValue.h", 491, "index <= _C");
  }

  if (!v1)
  {
    v1 = result[1];
  }

  *result = v1 - 1;
  return result;
}

float **NoiseSuppression::Gain::GainRule<float,(LogTypes)0>::ComputeSqrtGain(float **a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = AutoValue<float,(LogTypes)0>::Get(a3);
  MaxVectorScalar<float>(a1, *v5, *(v5 + 8), *v6);
  v7 = *a1;
  v9 = (a1[1] - *a1) >> 2;
  vvsqrtf(v7, v7, &v9);
  return a1;
}

uint64_t MaxVectorScalar<float>(uint64_t a1, const float *__A, uint64_t a3, float a4)
{
  __B = a4;
  v4 = *(a1 + 8) - *a1;
  if (v4 != a3 - __A)
  {
    __assert_rtn("MaxVectorScalar", "VectorUtils.h", 635, "result.size() == theVector.size()");
  }

  vDSP_vthr(__A, 1, &__B, *a1, 1, v4 >> 2);
  return a1;
}

uint64_t Trackable::Trackable<AutoValue<std::vector<float>,(LogTypes)0>,AutoValue<std::vector<float>,(LogTypes)0>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v7;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v9 = a3;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, &v9);
  v9 = a4;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, &v9);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_1DE03DEE0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938A50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float **NoiseSuppression::Gain::GainRule<float,(LogTypes)0>::ComputeGainNoClip(float **a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v6 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  MultiplyVectorScalar<float>(a1, *v5, v5[1], 3.0);
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  v10 = *v6;
  if (v9 != v6[1] - *v6)
  {
    __assert_rtn("MinVectorVector", "VectorUtils.h", 666, "result.size() == b.size()");
  }

  if (v8 != v7)
  {
    v11 = v9 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v12 = *v10++;
      *v7 = fminf(*v7, v12);
      ++v7;
      --v11;
    }

    while (v11);
  }

  return a1;
}

void *MultiplyVectorScalar<float>(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a4;
  if (a1[1] - *a1 != a3 - a2)
  {
    __assert_rtn("MultiplyVectorScalar", "VectorUtils.h", 592, "result.size() == theVector.size()");
  }

  MEMORY[0x1E12BE940](a2, 1, &v6);
  return a1;
}

uint64_t AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::vector<float> const& ()(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&),std::vector<float>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = Trackable::Trackable<AutoValue<std::vector<float>,(LogTypes)0>>(a1, a2, a4);
  *v7 = &unk_1F59383E0;
  v7[31] = 0;
  v7[32] = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(v7 + 35, 1uLL, &v9);
  *(a1 + 344) = 0;
  v9 = &unk_1F5938A98;
  v10 = a3;
  v11 = a4;
  v12 = &v9;
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::swap[abi:ne200100](&v9, (a1 + 224));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](&v9);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  return a1;
}

void sub_1DE03E25C(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100]((v1 + 28));
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

uint64_t NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputePriorRatio(uint64_t *a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v4 = v3[1];
  v5 = a1[1];
  if (v4 - *v3 != v5 - *a1)
  {
    __assert_rtn("ComputePriorRatio", "GainRule.h", 374, "prior.size() == result.size()");
  }

  AddVectorScalar<float>(*a1, v5, *v3, v4, 1.0);
  v6 = *v3;
  v7 = v3[1];
  v8 = *a1;
  v9 = a1[1];

  return DivideVectorVector<float>(a1, v6, v7, v8, v9);
}

uint64_t AddVectorScalar<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = a5;
  if (a2 - a1 != a4 - a3)
  {
    __assert_rtn("AddVectorScalar", "VectorUtils.h", 557, "result.size() == a.size()");
  }

  return MEMORY[0x1E12BE8A0](a3, 1, &v6, a1, 1, (a2 - a1) >> 2);
}

uint64_t DivideVectorVector<float>(uint64_t a1, const float *__A, uint64_t a3, const float *__B, uint64_t a5)
{
  v5 = *(a1 + 8) - *a1;
  if (v5 != a3 - __A)
  {
    __assert_rtn("DivideVectorVector", "VectorUtils.h", 514, "result.size() == theVector.size()");
  }

  if (v5 != a5 - __B)
  {
    __assert_rtn("DivideVectorVector", "VectorUtils.h", 515, "result.size() == theDivisor.size()");
  }

  vDSP_vdiv(__B, 1, __A, 1, *a1, 1, v5 >> 2);
  return a1;
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938A98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(uint64_t a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v5 - *v3;
  v7 = *a1;
  if (v6 != *(a1 + 8) - *a1)
  {
    __assert_rtn("ComputeHypergeometricGain", "GainRule.h", 310, "x.size() == result.size()");
  }

  if (v5 != v4)
  {
    v8 = v6 >> 2;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v9 = *v4;
      v10 = floorf(v9 + v9);
      v11 = 1.0;
      if (v10 >= 0.0)
      {
        if (v10 <= 19.0)
        {
          v11 = ((-(v10 - (v9 * 2.0)) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v10 + 1)) + ((1.0 - -(v10 - (v9 * 2.0))) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v10))) / sqrtf(v9 + 0.0001);
        }

        else
        {
          v11 = (0.1296 / v9) + 1.0;
        }
      }

      *v7++ = v11;
      ++v4;
      --v8;
    }

    while (v8);
  }

  return a1;
}

void *NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeTheta(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v7 = v5[1] - *v5;
  v8 = v6[1];
  if (v7 != v8 - *v6)
  {
    __assert_rtn("ComputeTheta", "GainRule.h", 358, "priorRatio.size() == post.size()");
  }

  v9 = a1[1];
  if (v7 != v9 - *a1)
  {
    __assert_rtn("ComputeTheta", "GainRule.h", 359, "priorRatio.size() == result.size()");
  }

  AddVectorScalar<float>(*a1, v9, *v6, v8, 1.0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *v5;
  v13 = v5[1];

  return MultiplyVectorVector<float>(a1, v10, v11, v12, v13);
}

void *MultiplyVectorVector<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1] - *a1;
  if (v5 != a3 - a2)
  {
    __assert_rtn("MultiplyVectorVector", "VectorUtils.h", 355, "result.size() == a.size()");
  }

  if (v5 != a5 - a4)
  {
    __assert_rtn("MultiplyVectorVector", "VectorUtils.h", 356, "result.size() == b.size()");
  }

  MEMORY[0x1E12BE7F0](a2, 1, a4, 1);
  return a1;
}

void *NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeEMGain(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v7 = v6[1];
  v8 = v7 - *v6;
  v9 = v5[1];
  if (v8 != v9 - *v5)
  {
    __assert_rtn("ComputeEMGain", "GainRule.h", 339, "MM.size() == priorRatio.size()");
  }

  if (v8 != a1[1] - *a1)
  {
    __assert_rtn("ComputeEMGain", "GainRule.h", 340, "MM.size() == result.size()");
  }

  v10 = MultiplyVectorVector<float>(a1, *v5, v9, *v6, v7);
  v11 = *a1;
  v12 = a1[1];

  return MinVectorScalar<float>(v10, v11, v12, 1.0);
}

void *MinVectorScalar<float>(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = NegateVector<float>(a1, a2, a3);
  v6 = MaxVectorScalar<float>(v5, *v5, v5[1], -a4);
  v7 = *v6;
  v8 = v6[1];

  return NegateVector<float>(v6, v7, v8);
}

void *NegateVector<float>(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 - a2 != a1[1] - *a1)
  {
    __assert_rtn("NegateVector", "VectorUtils.h", 613, "theVector.size() == result.size()");
  }

  MEMORY[0x1E12BE810](a2, 1);
  return a1;
}

void AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::vector<float> const& ()(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue<std::vector<float>,(LogTypes)0>&),std::vector<float>,std::vector<float>,std::vector<float>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v10;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v11[0] = a4;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v11);
  v11[0] = a5;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v11);
  v11[0] = a6;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v11);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_1F59383E0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  memset(v11, 0, 24);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer((a1 + 280), 1uLL, v11);
  *(a1 + 344) = 0;
  operator new();
}

void sub_1DE03EAA4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void AutoValue<std::vector<float>,(LogTypes)0>::AutoValue<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0>&,AutoValue<std::vector<float>,(LogTypes)0>&,float),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,float const&>,std::vector<float>,std::vector<float>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6 = Trackable::Trackable<AutoValue<std::vector<float>,(LogTypes)0>,AutoValue<std::vector<float>,(LogTypes)0>>(a1, a2, a4, a5);
  *v6 = &unk_1F59383E0;
  v6[31] = 0;
  v6[32] = 0;
  memset(v7, 0, 24);
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(v6 + 35, 1uLL, v7);
  *(a1 + 344) = 0;
  operator new();
}

void sub_1DE03EC70(_Unwind_Exception *a1)
{
  AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::~CircularBuffer((v1 + 280));
  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](v1 + 224);
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

uint64_t NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputeExpTheta(uint64_t a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v4 = *a1;
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = v5 - *v3;
  if (*(a1 + 8) - *a1 != v7)
  {
    __assert_rtn("ComputeExpTheta", "GainRule.h", 179, "result.size() == theta.size()");
  }

  if (v5 != v6)
  {
    v8 = v7 >> 2;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = *v6++;
      *v4++ = expf(-v10);
      --v9;
    }

    while (v9);
  }

  return a1;
}

uint64_t NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputeQRatio(const float **a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v4 = v3[1];
  if (a1[1] - *a1 != v4 - *v3)
  {
    __assert_rtn("ComputeQRatio", "GainRule.h", 191, "result.size() == Q.size()");
  }

  v5 = v3;
  v6 = AddMultiplyVectorScalarScalar<float>(a1, *v3, v4, -1.0, 1.0);
  v7 = *v5;
  v8 = v5[1];
  v9 = *a1;
  v10 = a1[1];

  return DivideVectorVector<float>(v6, v7, v8, v9, v10);
}

void *NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputeQ(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = AutoValue<float,(LogTypes)0>::Get(a3);
  v7 = *v5;
  v8 = v5[1];
  if (a1[1] - *a1 != v8 - *v5)
  {
    __assert_rtn("ComputeQ", "GainRule.h", 225, "result.size() == P1.size()");
  }

  v9 = -*v6;

  return AddMultiplyVectorScalarScalar<float>(a1, v7, v8, v9, 1.0);
}

void *NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputeP1(uint64_t *a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v4 = a1[1];
  v5 = v3[1];
  if (v4 - *a1 != v5 - *v3)
  {
    __assert_rtn("ComputeP1", "GainRule.h", 206, "result.size() == zetaBark.size()");
  }

  AddVectorScalar<float>(*a1, v4, *v3, v5, 0.5);
  v6 = DivideVectorVector<float>(a1, *v3, v3[1], *a1, a1[1]);
  v7 = *a1;
  v8 = a1[1];

  return AddMultiplyVectorScalarScalar<float>(v6, v7, v8, 0.899, 0.1);
}

float *NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputePframe(float *a1, uint64_t a2)
{
  v3 = AutoValue<float,(LogTypes)0>::Get(a2);
  *a1 = ((*v3 / (*v3 + 0.5)) * 0.899) + 0.1;
  return a1;
}

void *std::__function::__value_func<float const& ()(float &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE03F1B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::__bind<float const& (&)(float &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<float const& (&)(float &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,float const& ()(float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938C18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float *NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::Compute_snr(float *a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  *a1 = 0.0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = 0.0;
  if (*v3 != v5)
  {
    do
    {
      if (*v4 > 3.0)
      {
        v6 = *v4 + v6;
        *a1 = v6;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  *a1 = v6 / 24.0;
  return a1;
}

void *NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputeZetaBark(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v8 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v9 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a4, 0);
  v10 = a1[1] - *a1;
  if (v10 != v9[1] - *v9)
  {
    __assert_rtn("ComputeZetaBark", "GainRule.h", 91, "result.size() == prior_bark.size()");
  }

  v11 = v7[1];
  if (v10 != v11 - *v7)
  {
    __assert_rtn("ComputeZetaBark", "GainRule.h", 92, "result.size() == zetaBark_maxPart.size()");
  }

  v12 = v8[1];
  if (v10 != v12 - *v8)
  {
    __assert_rtn("ComputeZetaBark", "GainRule.h", 93, "result.size() == zetaBark_minPart.size()");
  }

  v13 = v9;
  v14 = AddVectorVector<float>(a1, *v7, v11, *v8, v12);
  v15 = *a1;
  v16 = a1[1];
  v17 = *v13;
  v18 = v13[1];

  return AddVectorVector<float>(v14, v15, v16, v17, v18);
}

void *AddVectorVector<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1] - *a1;
  if (v5 != a3 - a2)
  {
    __assert_rtn("AddVectorVector", "VectorUtils.h", 696, "result.size() == a.size()");
  }

  if (v5 != a5 - a4)
  {
    __assert_rtn("AddVectorVector", "VectorUtils.h", 697, "result.size() == b.size()");
  }

  MEMORY[0x1E12BE5D0](a2, 1, a4, 1);
  return a1;
}

void *NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputeZetaBarkMinPart(uint64_t *a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 1uLL);
  v8 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v9 = AddMultiplyVectorScalarVector<float>(a1, *v8, v8[1], *v7, v7[1]);
  v10 = MinVectorScalar<float>(v9, *a1, a1[1], 0.0);
  v11 = *a1;
  v12 = a1[1];

  return MultiplyVectorScalar<float>(v10, v11, v12, a4);
}

void *AddMultiplyVectorScalarVector<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = -1082130432;
  v5 = a1[1] - *a1;
  if (v5 != a3 - a2)
  {
    __assert_rtn("AddMultiplyVectorScalarVector", "VectorUtils.h", 798, "result.size() == theVector.size()");
  }

  if (v5 != a5 - a4)
  {
    __assert_rtn("AddMultiplyVectorScalarVector", "VectorUtils.h", 799, "result.size() == theAddand.size()");
  }

  MEMORY[0x1E12BE8F0](a2, 1, &v8);
  return a1;
}

__n128 std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,float),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,float const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,float),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,float const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938BD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::ComputeZetaBarkMaxPart(uint64_t *a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 1uLL);
  v8 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v9 = AddMultiplyVectorScalarVector<float>(a1, *v8, v8[1], *v7, v7[1]);
  v10 = MaxVectorScalar<float>(v9, *a1, a1[1], 0.0);
  v11 = *a1;
  v12 = a1[1];

  return MultiplyVectorScalar<float>(v10, v11, v12, a4);
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938B88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t NoiseSuppression::Gain::Gain2<float,(LogTypes)0>::Compute_gain(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a4, 0);
  v8 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v9 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v10 = v9[1] - *v9;
  v11 = v8[1];
  if (v10 != v11 - *v8)
  {
    __assert_rtn("Compute_gain", "GainRule.h", 154, "expTheta.size() == prior.size()");
  }

  if (v10 != v7[1] - *v7)
  {
    __assert_rtn("Compute_gain", "GainRule.h", 155, "expTheta.size() == QRatio.size()");
  }

  v12 = v9;
  v13 = a1[1];
  if (v10 != v13 - *a1)
  {
    __assert_rtn("Compute_gain", "GainRule.h", 156, "expTheta.size() == result.size()");
  }

  AddVectorScalar<float>(*a1, v13, *v8, v11, 1.0);
  v14 = MultiplyVectorVector<float>(a1, *a1, a1[1], *v7, v7[1]);
  MultiplyVectorVector<float>(v14, *a1, a1[1], *v12, v12[1]);
  AddVectorScalar<float>(*a1, a1[1], *a1, a1[1], 1.0);
  v15 = *a1;
  v16 = a1[1];

  return DivideScalarVector<float>(a1, v15, v16);
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<float,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<float,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59386C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t *NoiseSuppression::Gain::GainRule<float,(LogTypes)0>::SmoothGain2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = *AutoValue<float,(LogTypes)0>::Get(a3);
  v9 = v6;
  v7 = v5[1];
  if (a1[1] - *a1 != v7 - *v5)
  {
    __assert_rtn("SmoothVector", "VectorUtils.h", 912, "result.size() == input.size()");
  }

  if (v5 == a1)
  {
    __assert_rtn("SmoothVector", "VectorUtils.h", 913, "&result != &input");
  }

  MultiplyVectorScalar<float>(a1, *v5, v7, (v6 * -2.0) + 1.0);
  MEMORY[0x1E12BE8F0](*v5 + 4, 1, &v9, *a1, 1, *a1, 1, ((a1[1] - *a1) >> 2) - 1);
  MEMORY[0x1E12BE8F0](*v5, 1, &v9, *a1 + 4, 1, *a1 + 4, 1, ((a1[1] - *a1) >> 2) - 1);
  return a1;
}

uint64_t NoiseSuppression::SNR::Prior<float,(LogTypes)0>::MaxXAgainstZero(uint64_t a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v4 = *v3;
  v5 = *(v3 + 8);

  return MaxVectorScalar<float>(a1, v4, v5, 0.0);
}

uint64_t *NoiseSuppression::SNR::Prior<float,(LogTypes)0>::ComputeGamma(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v7 = AddVectorVector<float>(a1, *v5, v5[1], *v6, v6[1]);
  v8 = DivideVectorVector<float>(v7, *v5, v5[1], *a1, a1[1]);
  v9 = SquareVector<float>(v8, *a1, a1[1]);
  MultiplyVectorScalar<float>(v9, *a1, a1[1], 0.89);
  AddVectorScalar<float>(*a1, a1[1], *a1, a1[1], 0.1);
  return a1;
}

uint64_t *NoiseSuppression::SNR::Prior<float,(LogTypes)0>::ComputeNoiseReg(uint64_t *a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  AddVectorScalar<float>(*a1, a1[1], *v3, v3[1], 1.0e-20);
  return a1;
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938B00;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

const float **NoiseSuppression::SNR::Prior<float,(LogTypes)0>::ComputePrior(const float **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a4, 0);
  v10 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  AddMultiplyVectorScalarScalar<float>(a1, *v10, v10[1], -1.0, 1.0);
  v11 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a5, 0);
  DivideVectorVector<float>(a1, *a1, a1[1], *v11, *(v11 + 8));
  v12 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v13 = a1[1] - *a1;
  if (v13 != v10[1] - *v10)
  {
    __assert_rtn("AddMultiplyVectorVectorMultiplyVectorVector", "VectorUtils.h", 841, "result.size() == a.size()");
  }

  if (v13 != *(v12 + 8) - *v12)
  {
    __assert_rtn("AddMultiplyVectorVectorMultiplyVectorVector", "VectorUtils.h", 842, "result.size() == b.size()");
  }

  if (v13 != *(v9 + 8) - *v9)
  {
    __assert_rtn("AddMultiplyVectorVectorMultiplyVectorVector", "VectorUtils.h", 843, "result.size() == c.size()");
  }

  vDSP_vmma(*v10, 1, *v12, 1, *v9, 1, *a1, 1, *a1, 1, v13 >> 2);
  __B = -1.0e20;
  __C = 100.0;
  vDSP_vclip(*a1, 1, &__B, &__C, *a1, 1, a1[1] - *a1);
  return a1;
}

uint64_t *NoiseSuppression::SNR::Post<float,(LogTypes)0>::ComputeNoiseReg(uint64_t *a1, uint64_t a2)
{
  v3 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  AddVectorScalar<float>(*a1, a1[1], *v3, v3[1], 1.0e-20);
  return a1;
}

void *NoiseSuppression::SNR::Post<float,(LogTypes)0>::ComputePost(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  DivideVectorVector<float>(a1, *v5, *(v5 + 8), *v6, *(v6 + 8));
  AddVectorScalar<float>(*a1, a1[1], *a1, a1[1], -1.0);
  v7 = *a1;
  v8 = a1[1];

  return MinVectorScalar<float>(a1, v7, v8, 100.0);
}

void AutoValue<std::vector<float>,(LogTypes)0>::Set(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    __assert_rtn("Set", "AutoValue.h", 759, "&theAutoValue != this");
  }

  if (*(a1 + 256) != a2)
  {
    *(a1 + 256) = a2;
    *(a1 + 56) = 0;
    *(a1 + 64) = a2;
    if (*(a1 + 8) != 2)
    {
      *(a1 + 8) = 2;

      Trackable::Uninitialize(a1);
    }
  }
}

uint64_t AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::Get(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v3 = *(a1 + 95);
    if (v3 >= 0)
    {
      v4 = a1 + 72;
    }

    else
    {
      v4 = *(a1 + 72);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 95);
    }

    else
    {
      v5 = *(a1 + 80);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v27, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    Trackable::GetRevision(a1);
    if (*(a1 + 272) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v12 = AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::Get(*(a1 + 256));
      v13 = AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      if (v13 != v12)
      {
        v14 = v13;
        v16 = *v12;
        v15 = *(v12 + 8);
        v17 = v15 - v16;
        v18 = *v13;
        if (v13[2] - *v13 < (v15 - v16))
        {
          v19 = v17 >> 6;
          std::vector<DSPSplitComplexV<float>>::__vdeallocate(v13);
          if (!(v19 >> 58))
          {
            v20 = v14[2] - *v14;
            v21 = v20 >> 5;
            if (v20 >> 5 <= v19)
            {
              v21 = v19;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFC0)
            {
              v22 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v21;
            }

            std::vector<DSPSplitComplexV<float>>::__vallocate[abi:ne200100](v14, v22);
          }

          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v23 = v13[1];
        v24 = v23 - v18;
        if (v23 - v18 >= v17)
        {
          if (v16 != v15)
          {
            do
            {
              DSPSplitComplexV<float>::operator=(v18, v16);
              v16 += 8;
              v18 += 8;
            }

            while (v16 != v15);
            v23 = v14[1];
          }

          while (v23 != v18)
          {
            v23 -= 64;
            std::__destroy_at[abi:ne200100]<DSPSplitComplexV<float>,0>(v23);
          }

          v14[1] = v18;
        }

        else
        {
          if (v23 == v18)
          {
            v25 = v16;
          }

          else
          {
            v25 = (v16 + v24);
            do
            {
              DSPSplitComplexV<float>::operator=(v18, v16);
              v16 += 8;
              v18 += 8;
              v24 -= 64;
            }

            while (v24);
            v23 = v14[1];
          }

          v14[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DSPSplitComplexV<float>>,DSPSplitComplexV<float>*,DSPSplitComplexV<float>*,DSPSplitComplexV<float>*>(v25, v15, v23);
        }
      }

      *(a1 + 272) = *(a1 + 16);
    }
  }

  else if (v9 != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    if (*(a1 + 264) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v10 = AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      v11 = *(a1 + 248);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11, v10);
    }
  }

  return AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
}

uint64_t std::vector<DSPSplitComplexV<float>>::__init_with_size[abi:ne200100]<DSPSplitComplexV<float>*,DSPSplitComplexV<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DSPSplitComplexV<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE0403DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

float **SquareMagFreqVector<float>(float **a1, DSPSplitComplex *a2)
{
  v4 = a1[1] - *a1;
  if (DSPSplitComplexV<float>::size(a2) != v4 >> 2)
  {
    __assert_rtn("SquareMagFreqVector", "VectorUtils.h", 412, "result.size() == a.size()");
  }

  v6 = a1[1] - *a1;
  v9 = 0;
  std::vector<float>::assign(a1, v6, &v9, v5);
  v7 = *a2->realp;
  vDSP_zaspec(a2, *a1, a1[1] - *a1);
  **a1 = v7 * v7;
  return a1;
}

void std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<DSPSplitComplexV<float>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Transformer::WholeSignalForward<float>::~WholeSignalForward(uint64_t a1)
{
  *a1 = &unk_1F5938798;
  v2 = (a1 + 3056);
  *(a1 + 3056) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 3376));
  v3 = *(a1 + 3352);
  if (v3)
  {
    *(a1 + 3360) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 3280);
  Trackable::~Trackable(v2);
  *(a1 + 2704) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 3024));
  v4 = *(a1 + 3000);
  if (v4)
  {
    *(a1 + 3008) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 2928);
  Trackable::~Trackable((a1 + 2704));
  *(a1 + 2368) = &unk_1F5938918;
  if (*(a1 + 2688))
  {
    operator delete(*(a1 + 2672));
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](a1 + 2592);
  Trackable::~Trackable((a1 + 2368));
  *(a1 + 2032) = &unk_1F5938918;
  if (*(a1 + 2352))
  {
    operator delete(*(a1 + 2336));
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](a1 + 2256);
  Trackable::~Trackable((a1 + 2032));
  *(a1 + 1696) = &unk_1F5938918;
  if (*(a1 + 2016))
  {
    operator delete(*(a1 + 2000));
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](a1 + 1920);
  Trackable::~Trackable((a1 + 1696));
  *(a1 + 1360) = &unk_1F5938938;
  if (*(a1 + 1680))
  {
    operator delete(*(a1 + 1664));
  }

  std::__function::__value_func<Transformer::windowTypes const& ()(Transformer::windowTypes&)>::~__value_func[abi:ne200100](a1 + 1584);
  Trackable::~Trackable((a1 + 1360));
  *(a1 + 1024) = &unk_1F5938320;
  if (*(a1 + 1344))
  {
    operator delete(*(a1 + 1328));
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](a1 + 1248);
  Trackable::~Trackable((a1 + 1024));
  *(a1 + 688) = &unk_1F5938918;
  if (*(a1 + 1008))
  {
    operator delete(*(a1 + 992));
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](a1 + 912);
  Trackable::~Trackable((a1 + 688));
  *(a1 + 352) = &unk_1F5938918;
  if (*(a1 + 672))
  {
    operator delete(*(a1 + 656));
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](a1 + 576);
  Trackable::~Trackable((a1 + 352));
  *a1 = &unk_1F59388B0;
  boost::container::vector<std::vector<DSPSplitComplexV<float>>,void,void>::~vector(a1 + 320);
  v5 = (a1 + 296);
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__function::__value_func<std::vector<DSPSplitComplexV<float>> const& ()(std::vector<DSPSplitComplexV<float>>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  Transformer::WholeSignalForward<float>::~WholeSignalForward(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<Transformer::windowTypes const& ()(Transformer::windowTypes&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t boost::container::vector<std::vector<DSPSplitComplexV<float>>,void,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    do
    {
      --v2;
      v5 = v3;
      std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
      v3 += 3;
    }

    while (v2);
  }

  if (*(a1 + 16))
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::vector<DSPSplitComplexV<float>> const& ()(std::vector<DSPSplitComplexV<float>>&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::~AutoValue(void **a1)
{
  *a1 = &unk_1F59388B0;
  v2 = (a1 + 28);
  boost::container::vector<std::vector<DSPSplitComplexV<float>>,void,void>::~vector((a1 + 40));
  v3 = a1 + 37;
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<std::vector<DSPSplitComplexV<float>> const& ()(std::vector<DSPSplitComplexV<float>>&)>::~__value_func[abi:ne200100](v2);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F59388B0;
  v2 = (a1 + 28);
  boost::container::vector<std::vector<DSPSplitComplexV<float>>,void,void>::~vector((a1 + 40));
  v3 = a1 + 37;
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<std::vector<DSPSplitComplexV<float>> const& ()(std::vector<DSPSplitComplexV<float>>&)>::~__value_func[abi:ne200100](v2);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F59388B0;
  v2 = (a1 + 28);
  boost::container::vector<std::vector<DSPSplitComplexV<float>>,void,void>::~vector((a1 + 40));
  v3 = a1 + 37;
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<std::vector<DSPSplitComplexV<float>> const& ()(std::vector<DSPSplitComplexV<float>>&)>::~__value_func[abi:ne200100](v2);

  Trackable::~Trackable(a1);
}

void AutoValue<BOOL,(LogTypes)0>::~AutoValue(uint64_t a1)
{
  *a1 = &unk_1F5938320;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5938320;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

void AutoValue<Transformer::windowTypes,(LogTypes)0>::~AutoValue(uint64_t a1)
{
  *a1 = &unk_1F5938938;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<Transformer::windowTypes const& ()(Transformer::windowTypes&)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5938938;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<Transformer::windowTypes const& ()(Transformer::windowTypes&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  *a1 = &unk_1F5938938;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<Transformer::windowTypes const& ()(Transformer::windowTypes&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

void AutoValue<unsigned long,(LogTypes)0>::~AutoValue(uint64_t a1)
{
  *a1 = &unk_1F5938918;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5938918;
  if (*(a1 + 320))
  {
    operator delete(*(a1 + 304));
  }

  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

void std::__destroy_at[abi:ne200100]<DSPSplitComplexV<float>,0>(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void std::vector<DSPSplitComplexV<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DSPSplitComplexV<float>>,DSPSplitComplexV<float>*,DSPSplitComplexV<float>*,DSPSplitComplexV<float>*>(char **a1, char **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3;
  do
  {
    DSPSplitComplexV<float>::DSPSplitComplexV(v6, v4);
    v4 += 8;
    v6 += 64;
    v5 -= 64;
  }

  while (v4 != a2);
  return v6;
}

uint64_t AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  v2 = *a1;
  if (*a1 >= v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[6] <= v2)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[5] + 24 * v2;
}

void std::vector<DSPSplitComplexV<float>>::__vdeallocate(void *a1)
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
        v3 -= 8;
        std::__destroy_at[abi:ne200100]<DSPSplitComplexV<float>,0>(v3);
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

uint64_t AutoValue<unsigned long,(LogTypes)0>::AutoValue(uint64_t a1, __int128 *a2)
{
  v3 = Trackable::Trackable<>(a1, a2);
  *v3 = &unk_1F5938918;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 1;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = xmmword_1DE09C160;
  v4 = operator new(8uLL);
  *(a1 + 304) = v4;
  *v4 = 0;
  *(a1 + 320) = xmmword_1DE09C160;
  *(a1 + 16) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  return a1;
}

void sub_1DE0411D4(_Unwind_Exception *a1)
{
  std::__function::__value_func<unsigned long const& ()(unsigned long &)>::~__value_func[abi:ne200100]((v1 + 28));
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

uint64_t AutoValue<BOOL,(LogTypes)0>::AutoValue(uint64_t a1, __int128 *a2)
{
  v3 = Trackable::Trackable<>(a1, a2);
  *v3 = &unk_1F5938320;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 1;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = xmmword_1DE09C160;
  v4 = operator new(1uLL);
  *(a1 + 304) = v4;
  *v4 = 0;
  *(a1 + 320) = xmmword_1DE09C160;
  *(a1 + 16) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  return a1;
}

void sub_1DE041284(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100]((v1 + 28));
  Trackable::~Trackable(v1);
  _Unwind_Resume(a1);
}

void AutoValue<unsigned long,(LogTypes)0>::AutoValue<unsigned long const& ()(unsigned long &,AutoValue<unsigned long,(LogTypes)0>&,AutoValue<unsigned long,(LogTypes)0>&),unsigned long,unsigned long>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v8;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v10[0] = a4;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v10);
  v10[0] = a5;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, v10);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_1F5938918;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = xmmword_1DE09C160;
  v9 = operator new(8uLL);
  *(a1 + 304) = v9;
  *v9 = 0;
  *(a1 + 320) = xmmword_1DE09C160;
  operator new();
}

void sub_1DE04146C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void AutoValue<unsigned long,(LogTypes)0>::Set(Trackable *this, void *a2)
{
  ++*(this + 2);
  v2 = *(this + 35);
  if (*(this + 36) < v2)
  {
    __assert_rtn("DecrementCirc", "AutoValue.h", 491, "index <= _C");
  }

  if (!v2)
  {
    v2 = *(this + 36);
  }

  v4 = v2 - 1;
  *(this + 35) = v4;
  if (*(this + 39) <= v4)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  *(*(this + 38) + 8 * v4) = *a2;
  if (*(this + 2) != 1)
  {
    *(this + 2) = 1;
    Trackable::Uninitialize(this);
  }

  *(this + 32) = 0;
  *(this + 8) = 0;
}

void AutoValue<std::vector<float>,(LogTypes)0>::Set(Trackable *this, char **a2)
{
  ++*(this + 2);
  v2 = *(this + 35);
  if (*(this + 36) < v2)
  {
    __assert_rtn("DecrementCirc", "AutoValue.h", 491, "index <= _C");
  }

  if (!v2)
  {
    v2 = *(this + 36);
  }

  v4 = v2 - 1;
  *(this + 35) = v4;
  if (*(this + 41) <= v4)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  v5 = (*(this + 40) + 24 * v4);
  if (v5 != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (*(this + 2) != 1)
  {
    *(this + 2) = 1;
    Trackable::Uninitialize(this);
  }

  *(this + 32) = 0;
  *(this + 8) = 0;
}

uint64_t AutoValue<unsigned long,(LogTypes)0>::Get(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v3 = *(a1 + 95);
    if (v3 >= 0)
    {
      v4 = a1 + 72;
    }

    else
    {
      v4 = *(a1 + 72);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 95);
    }

    else
    {
      v5 = *(a1 + 80);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    Trackable::GetRevision(a1);
    if (*(a1 + 272) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v12 = *AutoValue<unsigned long,(LogTypes)0>::Get(*(a1 + 256));
      *AutoValue<unsigned long,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280)) = v12;
      *(a1 + 272) = *(a1 + 16);
    }
  }

  else if (v9 != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    if (*(a1 + 264) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v10 = AutoValue<unsigned long,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      v11 = *(a1 + 248);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11, v10);
    }
  }

  return AutoValue<unsigned long,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
}

void *AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::CircularBuffer::CircularBuffer(void *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  std::vector<DSPSplitComplexV<float>>::__init_with_size[abi:ne200100]<DSPSplitComplexV<float>*,DSPSplitComplexV<float>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 6);
  a1[5] = 0;
  a1[6] = v4;
  a1[7] = 0;
  if (v4)
  {
    if (v4 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v6);
    }

    v7 = operator new(24 * v4);
    v8 = 0;
    a1[5] = v7;
    a1[7] = v4;
    v9 = v7;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      std::vector<DSPSplitComplexV<float>>::__init_with_size[abi:ne200100]<DSPSplitComplexV<float>*,DSPSplitComplexV<float>*>(v9, *a3, a3[1], (a3[1] - *a3) >> 6);
      v9 += 3;
      v8 -= 24;
      --v4;
    }

    while (v4);
  }

  return a1;
}

void sub_1DE041A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  if (*(v2 + 56))
  {
    operator delete(*(v2 + 40));
  }

  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t AutoValue<unsigned long,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  v2 = *a1;
  if (*a1 >= v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[4] <= v2)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[3] + 8 * v2;
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<unsigned long,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<unsigned long,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59389E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t Transformer::WholeSignalForward<float>::ExtendWithZeros(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = AutoValue<unsigned long,(LogTypes)0>::Get(a3);
  v7 = *(v5 + 8) - *v5;
  if (*v6 < (v7 >> 2))
  {
    __assert_rtn("ExtendWithZeros", "Transformer.h", 578, "x.size() <= newLength");
  }

  v8 = *(a1 + 8) - *a1;
  if (*v6 != v8 >> 2)
  {
    __assert_rtn("ExtendWithZeros", "Transformer.h", 581, "result.size() == newLength");
  }

  if (v8 < v7)
  {
    __assert_rtn("CopyVector", "VectorUtils.h", 882, "result.size() >= input.size()");
  }

  memcpy(*a1, *v5, v7);
  v9 = *(v5 + 8) - *v5;
  v10 = *(a1 + 8) - *a1;
  if (v10 > v9)
  {
    bzero((*a1 + v9), v10 - v9);
  }

  return a1;
}

void *Transformer::MultiplyAVAV<unsigned long>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *AutoValue<unsigned long,(LogTypes)0>::Get(a2);
  *a1 = *AutoValue<unsigned long,(LogTypes)0>::Get(a3) * v5;
  return a1;
}

void *std::__function::__value_func<unsigned long const& ()(unsigned long &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE041FC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::__bind<unsigned long const& (&)(unsigned long &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<unsigned long,(LogTypes)0>,AutoValue&<unsigned long,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>,std::reference_wrapper<AutoValue&>>,std::allocator<std::__bind<unsigned long const& (&)(unsigned long &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<unsigned long,(LogTypes)0>,AutoValue&<unsigned long,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>,std::reference_wrapper<AutoValue&>>>,unsigned long const& ()(unsigned long &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59389A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *Transformer::WholeSignalForward<float>::ComputeNumberOfWholeFrames(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v8 = AutoValue<unsigned long,(LogTypes)0>::Get(a3);
  *a1 = (ceilf(((v7[1] - *v7) >> 2) / *v8) + (*AutoValue<unsigned long,(LogTypes)0>::Get(a4) - 1));
  return a1;
}

__n128 std::__function::__func<std::__bind<unsigned long const& (&)(unsigned long &,AutoValue<unsigned long,(LogTypes)0> &,AutoValue<unsigned long,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<unsigned long,(LogTypes)0>>,std::reference_wrapper<AutoValue<unsigned long,(LogTypes)0>>>,std::allocator<std::__bind<unsigned long const& (&)(unsigned long &,AutoValue<unsigned long,(LogTypes)0> &,AutoValue<unsigned long,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<unsigned long,(LogTypes)0>>,std::reference_wrapper<AutoValue<unsigned long,(LogTypes)0>>>>,unsigned long const& ()(unsigned long &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938958;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *Transformer::ComputeOverlapXA<unsigned long>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<unsigned long,(LogTypes)0>::Get(a2);
  *a1 = *v5 / *AutoValue<unsigned long,(LogTypes)0>::Get(a3);
  return a1;
}

uint64_t Trackable::Trackable<>(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v3;
  }

  *(a1 + 96) = 0;
  *(a1 + 56) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 8) = 1;
  return a1;
}

void sub_1DE0422F8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AutoValue<std::vector<DSPSplitComplexV<float>>,(LogTypes)0>::CircularBuffer::~CircularBuffer(uint64_t a1)
{
  boost::container::vector<std::vector<DSPSplitComplexV<float>>,void,void>::~vector(a1 + 40);
  v3 = (a1 + 16);
  std::vector<DSPSplitComplexV<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

__n128 std::__function::__func<std::__bind<std::vector<DSPSplitComplexV<float>> const& (&)(std::vector<DSPSplitComplexV<float>>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<unsigned long,(LogTypes)0>,AutoValue&<unsigned long,(LogTypes)0>,AutoValue&<Transformer::windowTypes,(LogTypes)0>,AutoValue&<BOOL,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>,std::reference_wrapper<AutoValue&>,std::reference_wrapper<Transformer::windowTypes>,std::reference_wrapper<AutoValue&>>,std::allocator<std::__bind<std::vector<DSPSplitComplexV<float>> const& (&)(std::vector<DSPSplitComplexV<float>>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<unsigned long,(LogTypes)0>,AutoValue&<unsigned long,(LogTypes)0>,AutoValue&<Transformer::windowTypes,(LogTypes)0>,AutoValue&<BOOL,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>,std::reference_wrapper<AutoValue&>,std::reference_wrapper<Transformer::windowTypes>,std::reference_wrapper<AutoValue&>>>,std::vector<DSPSplitComplexV<float>> const& ()(std::vector<DSPSplitComplexV<float>>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59388D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void Transformer::WholeSignalForward<float>::Transform(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42[8] = *MEMORY[0x1E69E9840];
  v11 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v12 = *AutoValue<unsigned long,(LogTypes)0>::Get(a3);
  v13 = *AutoValue<unsigned long,(LogTypes)0>::Get(a4);
  AutoValue<Transformer::windowTypes,(LogTypes)0>::Get(a5);
  v14 = AutoValue<BOOL,(LogTypes)0>::Get(a6);
  if (((v11[1] - *v11) >> 2) / v12 == (a1[1] - *a1) >> 6)
  {
    v15 = *v14;
    std::string::basic_string[abi:ne200100]<0>(__p, "tempInputBlock");
    AutoValue<std::vector<float>,(LogTypes)0>::AutoValue(v23, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v20, "tempTransformer");
    __p[0] = &unk_1F59387B8;
    v34 = 0;
    if (vDSP_DFT_zrop_CreateSetup(0, v13 << v15, vDSP_DFT_FORWARD))
    {
      DSPSplitComplexV<float>::DSPSplitComplexV(&v35, (v13 << v15) >> 1);
      v38 = FFT_Forward<float>;
      vDSP_DFT_SetupObject<float,(TransformDirections)0>::vDSP_DFT_SetupObject(&v39, v13 << v15);
      v16 = *v36;
      v41 = *v36;
      v42[0] = v37[0];
      v17 = *&v37[1];
      *v36 = 0u;
      memset(v37, 0, sizeof(v37));
      *&v42[1] = v17;
      v42[3] = v37[3];
      v40 = vzip1q_s64(v16, v17);
      *buf = v38;
      vDSP_DFT_SetupObject<float,(TransformDirections)0>::vDSP_DFT_SetupObject(&buf[8], v39);
      v30 = v41;
      v41 = 0u;
      v31 = v42[0];
      v18 = *&v42[1];
      memset(v42, 0, 32);
      *v32 = v18;
      v33 = v42[3];
      v29 = vzip1q_s64(v30, v18);
      v42[7] = 0;
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "VectorUtils.h";
      v25 = 1024;
      v26 = 987;
      __Setup_2 = 1024;
      __Setup_4 = v13 << v15;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d FFT object failed to Initialize() with block-size %u.", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "FFT object failed to initialize.", -1);
  }

  __assert_rtn("Transform", "Transformer.h", 542, "result.size() == numFrames");
}

void sub_1DE043218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  std::__function::__value_func<void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::~__value_func[abi:ne200100](&STACK[0x788]);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE043528);
}

void sub_1DE0433F8(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v4 != v3)
    {
      v5 = (v3 + 8);
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          *v5 = v6;
          operator delete(v6);
        }

        v5 += 3;
        v2 -= 24;
      }

      while (v2);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1DE043530);
}

void sub_1DE043438()
{
  __cxa_end_catch();
  AutoValue<std::vector<float>,(LogTypes)0>::~AutoValue(&STACK[0x620]);
  JUMPOUT(0x1DE0434A0);
}

void sub_1DE043450(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v4 != v3)
    {
      v5 = (v3 + 8);
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          *v5 = v6;
          operator delete(v6);
        }

        v5 += 3;
        v2 -= 24;
      }

      while (v2);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1DE043530);
}

void sub_1DE0434FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AutoValue<Transformer::windowTypes,(LogTypes)0>::Get(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v3 = *(a1 + 95);
    if (v3 >= 0)
    {
      v4 = a1 + 72;
    }

    else
    {
      v4 = *(a1 + 72);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 95);
    }

    else
    {
      v5 = *(a1 + 80);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    Trackable::GetRevision(a1);
    if (*(a1 + 272) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v12 = *AutoValue<Transformer::windowTypes,(LogTypes)0>::Get(*(a1 + 256));
      *AutoValue<Transformer::windowTypes,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280)) = v12;
      *(a1 + 272) = *(a1 + 16);
    }
  }

  else if (v9 != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    if (*(a1 + 264) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v10 = AutoValue<Transformer::windowTypes,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      v11 = *(a1 + 248);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11, v10);
    }
  }

  return AutoValue<Transformer::windowTypes,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
}

void Transformer::Forward<float>::~Forward(uint64_t a1)
{
  *a1 = &unk_1F59387B8;
  v2 = (a1 + 744);
  *(a1 + 744) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 1064));
  v3 = *(a1 + 1040);
  if (v3)
  {
    *(a1 + 1048) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 968);
  Trackable::~Trackable(v2);
  *(a1 + 392) = &unk_1F59383E0;
  boost::container::vector<std::vector<float>,void,void>::~vector((a1 + 712));
  v4 = *(a1 + 688);
  if (v4)
  {
    *(a1 + 696) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<std::vector<float> const& ()(std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 616);
  Trackable::~Trackable((a1 + 392));
  *a1 = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector((a1 + 360));
  v5 = *(a1 + 336);
  if (v5)
  {
    *(a1 + 344) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 312);
  if (v6)
  {
    *(a1 + 320) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

{
  Transformer::Forward<float>::~Forward(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__function::__value_func<void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::PreAllocate<unsigned long const&>(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 384);
  DSPSplitComplexV<float>::DSPSplitComplexV(v10, a2);
  AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(v15, v3 + 1, v10);
  v4 = *v16;
  *(a1 + 280) = v15[0];
  v5 = *(a1 + 312);
  v6 = *(a1 + 328);
  *(a1 + 312) = v4;
  v7 = *&__p[8];
  *(a1 + 328) = *__p;
  *v16 = v5;
  *__p = v6;
  v8 = *&__p[24];
  v9 = *(a1 + 344);
  *(a1 + 336) = v7;
  *(a1 + 352) = v8;
  *&__p[16] = v9;
  *(a1 + 296) = vzip1q_s64(v4, v7);
  if (v15 != (a1 + 280))
  {
    boost::container::vector<DSPSplitComplexV<float>,void,void>::priv_move_assign<void>(a1 + 360, v18);
  }

  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector(v18);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_1DE043ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[6];
  v6 = a1[5];
  return v3(a2, v4, a1 + 2, &v6);
}

void std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5938868;
  a2[1] = v4;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 2), a1[2], a1[3], (a1[3] - a1[2]) >> 2);
  a2[5] = a1[5];
  a2[6] = a1[6];
  return result;
}

void std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F5938868;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void *std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,std::vector<float> const&,unsigned int const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::vector<float>&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F5938868;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void *Transformer::Forward<float>::PrepareForwardTransformBuffer_curry(uint64_t *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v6 = *a4;
  if (v6)
  {
    v8 = 0;
    v9 = -v6;
    v10 = v6 - 1;
    do
    {
      v11 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, v10);
      v12 = *(v11 + 8) - *v11;
      v13 = (a1[1] - *a1) >> 2;
      v14 = (v12 >> 2) * v6;
      if (v13 != v14 && v13 != 2 * v14)
      {
        __assert_rtn("LayFlat_curry", "Transformer.h", 234, "(result.size() == numItems * itemSize) || (result.size() == numItems * itemSize * 2)");
      }

      memcpy((*a1 + 4 * (v12 >> 2) * v8++), *v11, v12);
      --v10;
    }

    while (!__CFADD__(v9++, 1));
  }

  v17 = *a1;
  v18 = a1[1];
  v19 = *a3;
  v20 = a3[1];

  return MultiplyVectorVector<float>(a1, v17, v18, v19, v20);
}

__n128 boost::container::vector<DSPSplitComplexV<float>,void,void>::priv_move_assign<void>(uint64_t a1, void *a2)
{
  if (a1 == a2 && a2[1])
  {
    __assert_rtn("priv_move_assign", "vector.hpp", 2480, "this != &x || x.size() == 0");
  }

  boost::container::vector<DSPSplitComplexV<float>,void,void>::priv_destroy_all(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 8) = result;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void std::__function::__func<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5938820;
  a2[1] = v4;
  result = std::__function::__value_func<void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
  a2[6] = *(a1 + 48);
  return result;
}

void std::__function::__func<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F5938820;
  std::__function::__value_func<void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x1E12BD160);
}

void *std::__function::__func<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<DSPSplitComplexV<float> const& (&)(DSPSplitComplexV<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,Transformer::MultiRadixRealTransformer<float,(TransformDirections)0>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F5938820;
  std::__function::__value_func<void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t Transformer::Forward<float>::ComputeForwardOneFrame_curry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, a1, v5);
  return a1;
}

vDSP_Length *vDSP_DFT_SetupObject<float,(TransformDirections)0>::vDSP_DFT_SetupObject(vDSP_Length *a1, vDSP_Length a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  Setup = vDSP_DFT_zrop_CreateSetup(0, a2, vDSP_DFT_FORWARD);
  a1[1] = Setup;
  if (!Setup)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      v7 = 136315650;
      v8 = "VectorUtils.h";
      v9 = 1024;
      v10 = 1000;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d FFT object failed to Initialize() with block-size %u.", &v7, 0x18u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "FFT object failed to initialize.", -1);
  }

  return a1;
}

uint64_t std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>::~__bind(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  vDSP_DFT_DestroySetup(*(a1 + 16));
  return a1;
}

void std::__function::__func<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>,std::allocator<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>>,void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>,std::allocator<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>>,void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>,std::allocator<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>>,void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  vDSP_DFT_DestroySetup(*(a1 + 16));
}

vDSP_Length *std::__function::__func<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>,std::allocator<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>>,void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F59387D8;
  a2[1] = v2;
  return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1>,std::placeholders::__ph<2>,DSPSplitComplexV<float>>::__tuple_impl(a2 + 2, (a1 + 16));
}

vDSP_Length *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1>,std::placeholders::__ph<2>,DSPSplitComplexV<float>>::__tuple_impl(vDSP_Length *a1, vDSP_Length *a2)
{
  v3 = (a2 + 2);
  v4 = vDSP_DFT_SetupObject<float,(TransformDirections)0>::vDSP_DFT_SetupObject(a1, *a2);
  DSPSplitComplexV<float>::DSPSplitComplexV((v4 + 2), v3);
  return a1;
}

void std::__function::__func<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>,std::allocator<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>>,void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59387D8;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  vDSP_DFT_DestroySetup(*(a1 + 24));

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__function::__func<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>,std::allocator<std::__bind<void (&)(vDSP_DFT_SetupObject<float,(TransformDirections)0> &,DSPSplitComplexV<float> &,std::vector<float> const&,DSPSplitComplexV<float> &),vDSP_DFT_SetupObject<float,(TransformDirections)0>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,DSPSplitComplexV<float>>>,void ()(DSPSplitComplexV<float> &,std::vector<float> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59387D8;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  vDSP_DFT_DestroySetup(*(a1 + 24));
  return a1;
}

void FFT_Forward<float>(uint64_t a1, DSPSplitComplex *a2, uint64_t a3)
{
  v6 = DSPSplitComplexV<float>::size(a2);
  v7 = (*(a3 + 8) - *a3) >> 2;
  if (v6 != v7 >> 1)
  {
    __assert_rtn("FFT_Forward", "VectorUtils.h", 1053, "result.size() == (input.size() / 2)");
  }

  if (*a1 != v7)
  {
    __assert_rtn("FFT_Forward", "VectorUtils.h", 1054, "setup.size() == input.size()");
  }

  vDSP_ctoz(*a3, 2, a2, 1, v6);
  vDSP_DFT_Execute(*(a1 + 8), a2->realp, a2->imagp, a2->realp, a2->imagp);
  __B = 0.5;
  v8 = DSPSplitComplexV<float>::size(a2);
  if (v8 != DSPSplitComplexV<float>::size(a2))
  {
    __assert_rtn("MultiplyCVectorRScalar", "VectorUtils.h", 391, "result.size() == a.size()");
  }

  v9 = DSPSplitComplexV<float>::size(a2);
  vDSP_zrvmul(a2, 1, &__B, 0, a2, 1, v9);
}

uint64_t AutoValue<Transformer::windowTypes,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  v2 = *a1;
  if (*a1 >= v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[4] <= v2)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[3] + 4 * v2;
}

__n128 std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<std::vector<float>>,(LogTypes)0> &,AutoValue&<std::vector<float>,(LogTypes)0>,unsigned long),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::reference_wrapper<unsigned long>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<std::vector<float>>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<std::vector<float>>,(LogTypes)0> &,AutoValue&<std::vector<float>,(LogTypes)0>,unsigned long),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::reference_wrapper<unsigned long>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<std::vector<float>>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938730;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t *Convolver<float,true,(LogTypes)0>::Convolve(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::Get(a2);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3);
  v9 = (a1[1] - *a1) >> 2;
  v19 = 0;
  std::vector<float>::assign(a1, v9, &v19, v10);
  AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  if (v8 > a4)
  {
    v11 = 24 * a4;
    do
    {
      v12 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, a4);
      v13 = a1[1];
      v14 = v13 - *a1;
      v15 = (*v7 + v11);
      v16 = v15[1];
      if (v14 != v16 - *v15)
      {
        __assert_rtn("Convolve", "Convolver.h", 168, "result.size() == H[a].size()");
      }

      v17 = v12[1];
      if (v14 != v17 - *v12)
      {
        __assert_rtn("Convolve", "Convolver.h", 169, "result.size() == X.size()");
      }

      AddMultiplyVectorVectorVector<float>(a1, *v15, v16, *v12, v17, *a1, v13);
      ++a4;
      v11 += 24;
    }

    while (v8 != a4);
  }

  return a1;
}

uint64_t AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::Get(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v3 = *(a1 + 95);
    if (v3 >= 0)
    {
      v4 = a1 + 72;
    }

    else
    {
      v4 = *(a1 + 72);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 95);
    }

    else
    {
      v5 = *(a1 + 80);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v15, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    Trackable::GetRevision(a1);
    if (*(a1 + 272) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v12 = AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::Get(*(a1 + 256));
      v13 = AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      if (v13 != v12)
      {
        std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, *v12, v12[1], 0xAAAAAAAAAAAAAAABLL * (v12[1] - *v12));
      }

      *(a1 + 272) = *(a1 + 16);
    }
  }

  else if (v9 != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    if (*(a1 + 264) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v10 = AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      v11 = *(a1 + 248);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11, v10);
    }
  }

  return AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
}

uint64_t AutoValue<std::vector<std::vector<float>>,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  v2 = *a1;
  if (*a1 >= v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[6] <= v2)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[5] + 24 * v2;
}

void *ReverbEstimator<float,true,(LogTypes)0>::ApplyGainScalar(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = *AutoValue<float,(LogTypes)0>::Get(a3);
  v7 = *v5;
  v8 = v5[1];

  return MultiplyVectorScalar<float>(a1, v7, v8, v6);
}

void *AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::AutoValue(void *a1, __int128 *a2)
{
  v3 = Trackable::Trackable<>(a1, a2);
  *v3 = &unk_1F5938380;
  v3[31] = 0;
  v3[32] = 0;
  DSPSplitComplexV<float>::DSPSplitComplexV(v5, 0);
  AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::CircularBuffer(a1 + 35, 1uLL, v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  a1[48] = 0;
  a1[2] = 0;
  a1[33] = 0;
  a1[34] = 0;
  return a1;
}

void sub_1DE044DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(&a9);
  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100]((v9 + 28));
  Trackable::~Trackable(v9);
  _Unwind_Resume(a1);
}

void Dereverb::FirstPass<float,(Dereverb::FirstPassTypes)0,(LogTypes)0>::~FirstPass(uint64_t a1)
{
  *a1 = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector((a1 + 360));
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](a1 + 224);
  Trackable::~Trackable(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector((a1 + 360));
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](a1 + 224);

  Trackable::~Trackable(a1);
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<float,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue&<float,(LogTypes)0>),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue&>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938640;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t *Dereverb::Dereverb<float,(Dereverb::FirstPassTypes)0,(LogTypes)0>::ComputeInpPsPrev(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 1uLL);
  v10 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 1uLL);
  v11 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a4, 1uLL);
  AutoValue<float,(LogTypes)0>::Get(a5);
  v12 = SquareVector<float>(a1, *v11, v11[1]);
  MultiplyVectorVector<float>(v12, *a1, a1[1], *v9, v9[1]);
  if (a1[1] - *a1 != v10[1] - *v10)
  {
    __assert_rtn("AddMultiplyVectorScalarMultiplyVectorScalar", "VectorUtils.h", 896, "result.size() == A.size()");
  }

  MEMORY[0x1E12BE930](*v10, 1);
  return a1;
}

void *Filterbank::ToBark<float,(LogTypes)0>::ComputeFilterRightTimesPS_curry(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = *v5;
  v7 = v5[1];
  if (a1[1] - *a1 != v7 - *v5)
  {
    __assert_rtn("ComputeFilterRightTimesPS_curry", "BarkFilterbank.h", 235, "result.size() == ps.size()");
  }

  v8 = *(a3 + 72);
  v9 = *(a3 + 80);

  return MultiplyVectorVector<float>(a1, v6, v7, v8, v9);
}

void *Filterbank::ToBark<float,(LogTypes)0>::ComputeFilterLeftTimesPS_curry(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v6 = *v5;
  v7 = v5[1];
  if (a1[1] - *a1 != v7 - *v5)
  {
    __assert_rtn("ComputeFilterLeftTimesPS_curry", "BarkFilterbank.h", 223, "result.size() == ps.size()");
  }

  v8 = *(a3 + 48);
  v9 = *(a3 + 56);

  return MultiplyVectorVector<float>(a1, v6, v7, v8, v9);
}

void std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::destroy_deallocate(void *a1)
{
  Filterbank::BarkCore<float>::~BarkCore(a1 + 16);

  operator delete(a1);
}

__n128 std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F59385B0;
  *(a2 + 8) = v4;
  Filterbank::BarkCore<float>::BarkCore((a2 + 16), (a1 + 16));
  result = *(a1 + 184);
  *(a2 + 184) = result;
  return result;
}

void std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F59385B0;
  Filterbank::BarkCore<float>::~BarkCore((a1 + 2));

  JUMPOUT(0x1E12BD160);
}

void *std::__function::__func<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<std::vector<float>,(LogTypes)0> &,AutoValue<std::vector<float>,(LogTypes)0> &,Filterbank::BarkCore<float> const&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,Filterbank::BarkCore<float>> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>,std::reference_wrapper<AutoValue<std::vector<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::~__func(void *a1)
{
  *a1 = &unk_1F59385B0;
  Filterbank::BarkCore<float>::~BarkCore((a1 + 2));
  return a1;
}

uint64_t *Filterbank::ToBark<float,(LogTypes)0>::ComputeBark_curry(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a2, 0);
  v8 = AutoValue<std::vector<float>,(LogTypes)0>::Get(a3, 0);
  v9 = a4[12];
  v10 = (a4[13] - v9) >> 2;
  if (a4[13] != v9)
  {
    v11 = 0;
    v12 = *a1;
    v13 = a4[15];
    v14 = *v7;
    do
    {
      *(v12 + 4 * v11) = 0;
      v15 = *(v9 + 4 * v11);
      v16 = (*(v13 + 4 * v11) + v15);
      if (v15 < v16)
      {
        v17 = v16 - v15;
        v18 = (v14 + 4 * v15);
        v19 = 0.0;
        do
        {
          v20 = *v18++;
          v19 = v20 + v19;
          *(v12 + 4 * v11) = v19;
          --v17;
        }

        while (v17);
      }

      ++v11;
    }

    while (v10 > v11);
  }

  v21 = v10 - 1;
  if (v21)
  {
    v22 = 0;
    v23 = a4[15];
    v24 = *v8;
    v25 = *a1;
    do
    {
      v26 = *(v9 + 4 * v22);
      v27 = (*(v23 + 4 * v22++) + v26);
      if (v26 < v27)
      {
        v28 = *(v25 + 4 * v22);
        v29 = v27 - v26;
        v30 = (v24 + 4 * v26);
        do
        {
          v31 = *v30++;
          v28 = v31 + v28;
          *(v25 + 4 * v22) = v28;
          --v29;
        }

        while (v29);
      }
    }

    while (v21 > v22);
  }

  return a1;
}

__n128 std::__function::__func<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<DSPSplitComplexV<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<DSPSplitComplexV<float>,(LogTypes)0>>>,std::allocator<std::__bind<std::vector<float> const& (&)(std::vector<float>&,AutoValue<DSPSplitComplexV<float>,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<DSPSplitComplexV<float>,(LogTypes)0>>>>,std::vector<float> const& ()(std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float **SpectralMagnitude<float,(LogTypes)0>::ComputeMagnitude(uint64_t a1, uint64_t a2)
{
  v3 = AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::Get(a2);
  v4 = *(a1 + 8) - *a1;
  if (DSPSplitComplexV<float>::size(v3) != v4 >> 2)
  {
    __assert_rtn("ComputeMagnitude", "SpectralMagnitude.h", 35, "result.size() == input.size()");
  }

  return SquareMagFreqVector<float>(a1, v3);
}

uint64_t Trackable::Trackable<AutoValue<float,(LogTypes)0>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_1F5938340;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v5;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v7 = a3;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 128, &v7);
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_1DE045870(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<std::__bind<std::__bind<float const& (&)(float &,AutoValue<float,(LogTypes)0> &,double,unsigned long),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,double const&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>,std::allocator<std::__bind<std::__bind<float const& (&)(float &,AutoValue<float,(LogTypes)0> &,double,unsigned long),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,double const&,unsigned long const&> const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>>,float const& ()(float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59384E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float *TCToCoef<float,(LogTypes)0>::Compute_CoefFromTC_curry(float *a1, uint64_t a2, unint64_t a3, double a4)
{
  v5 = a4 / a3;
  v6 = AutoValue<float,(LogTypes)0>::Get(a2);
  *a1 = expf(-1.0 / (*v6 * v5));
  return a1;
}

__n128 std::__function::__func<std::__bind<float const& (&)(float &,AutoValue<float,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>,std::allocator<std::__bind<float const& (&)(float &,AutoValue<float,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>>,float const& ()(float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938478;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float *dBToLinear<float,(LogTypes)0>::Compute_dBToLinear(float *a1, uint64_t a2)
{
  v3 = AutoValue<float,(LogTypes)0>::Get(a2);
  *a1 = __exp10f(*v3 / 20.0);
  return a1;
}

void AUReverbSuppressor::~AUReverbSuppressor(AUReverbSuppressor *this)
{
  AUReverbSuppressor::~AUReverbSuppressor(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59380D0;
  v2 = (this + 4472);
  *(this + 559) = &unk_1F5938320;
  if (*(this + 599))
  {
    operator delete(*(this + 597));
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](this + 4696);
  Trackable::~Trackable(v2);
  *(this + 517) = &unk_1F5938320;
  if (*(this + 557))
  {
    operator delete(*(this + 555));
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](this + 4360);
  Trackable::~Trackable(this + 517);
  *(this + 475) = &unk_1F5938320;
  if (*(this + 515))
  {
    operator delete(*(this + 513));
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](this + 4024);
  Trackable::~Trackable(this + 475);
  *(this + 433) = &unk_1F5938320;
  if (*(this + 473))
  {
    operator delete(*(this + 471));
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100](this + 3688);
  Trackable::~Trackable(this + 433);
  *(this + 391) = &unk_1F5938360;
  if (*(this + 431))
  {
    operator delete(*(this + 429));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](this + 3352);
  Trackable::~Trackable(this + 391);
  *(this + 349) = &unk_1F5938360;
  if (*(this + 389))
  {
    operator delete(*(this + 387));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](this + 3016);
  Trackable::~Trackable(this + 349);
  *(this + 307) = &unk_1F5938360;
  if (*(this + 347))
  {
    operator delete(*(this + 345));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](this + 2680);
  Trackable::~Trackable(this + 307);
  *(this + 265) = &unk_1F5938360;
  if (*(this + 305))
  {
    operator delete(*(this + 303));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](this + 2344);
  Trackable::~Trackable(this + 265);
  *(this + 223) = &unk_1F5938360;
  if (*(this + 263))
  {
    operator delete(*(this + 261));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](this + 2008);
  Trackable::~Trackable(this + 223);
  *(this + 181) = &unk_1F5938360;
  if (*(this + 221))
  {
    operator delete(*(this + 219));
  }

  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](this + 1672);
  Trackable::~Trackable(this + 181);
  *(this + 132) = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector(this + 177);
  v3 = *(this + 174);
  if (v3)
  {
    *(this + 175) = v3;
    operator delete(v3);
  }

  v4 = *(this + 171);
  if (v4)
  {
    *(this + 172) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](this + 1280);
  Trackable::~Trackable(this + 132);
  *(this + 83) = &unk_1F5938380;
  boost::container::vector<DSPSplitComplexV<float>,void,void>::~vector(this + 128);
  v5 = *(this + 125);
  if (v5)
  {
    *(this + 126) = v5;
    operator delete(v5);
  }

  v6 = *(this + 122);
  if (v6)
  {
    *(this + 123) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<DSPSplitComplexV<float> const& ()(DSPSplitComplexV<float>&)>::~__value_func[abi:ne200100](this + 888);
  Trackable::~Trackable(this + 83);
  v7 = *(this + 80);
  if (v7)
  {
    *(this + 81) = v7;
    operator delete(v7);
  }

  v8 = *(this + 77);
  if (v8)
  {
    *(this + 78) = v8;
    operator delete(v8);
  }

  v9 = *(this + 72);
  if (v9)
  {
    *(this + 73) = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*(this + 70));
  v10 = *(this + 68);
  *(this + 68) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ausdk::AUBase::~AUBase(this);
}

void IfAnyNode::~IfAnyNode(void **this)
{
  *this = &unk_1F5938320;
  if (this[40])
  {
    operator delete(this[38]);
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100]((this + 28));

  Trackable::~Trackable(this);
}

{
  *this = &unk_1F5938320;
  if (this[40])
  {
    operator delete(this[38]);
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100]((this + 28));
  Trackable::~Trackable(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5938320;
  if (this[40])
  {
    operator delete(this[38]);
  }

  std::__function::__value_func<BOOL const& ()(BOOL &)>::~__value_func[abi:ne200100]((this + 28));

  Trackable::~Trackable(this);
}

__n128 std::__function::__func<std::__bind<BOOL const& (&)(BOOL &,AutoValue<BOOL,(LogTypes)0> &,AutoValue<BOOL,(LogTypes)0> &,AutoValue<BOOL,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<BOOL,(LogTypes)0>>,std::reference_wrapper<AutoValue<BOOL,(LogTypes)0>>,std::reference_wrapper<AutoValue<BOOL,(LogTypes)0>>>,std::allocator<std::__bind<BOOL const& (&)(BOOL &,AutoValue<BOOL,(LogTypes)0> &,AutoValue<BOOL,(LogTypes)0> &,AutoValue<BOOL,(LogTypes)0> &),std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<BOOL,(LogTypes)0>>,std::reference_wrapper<AutoValue<BOOL,(LogTypes)0>>,std::reference_wrapper<AutoValue<BOOL,(LogTypes)0>>>>,BOOL const& ()(BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938DE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

_BYTE *IfAnyNode::IfAnyFun<AutoValue<BOOL,(LogTypes)0> &,AutoValue<BOOL,(LogTypes)0> &,AutoValue<BOOL,(LogTypes)0> &>(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = *AutoValue<BOOL,(LogTypes)0>::Get(a4);
  *a1 = (*AutoValue<BOOL,(LogTypes)0>::Get(a3) | *a1) & 1;
  *a1 = (*AutoValue<BOOL,(LogTypes)0>::Get(a2) | *a1) & 1;
  return a1;
}

__n128 std::__function::__func<std::__bind<AUReverbSuppressor::AUReverbSuppressor(OpaqueAudioComponentInstance *)::$_2 const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>,std::allocator<std::__bind<AUReverbSuppressor::AUReverbSuppressor(OpaqueAudioComponentInstance *)::$_2 const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>>,float const& ()(float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938D78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<std::__bind<AUReverbSuppressor::AUReverbSuppressor(OpaqueAudioComponentInstance *)::$_1 const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>,std::allocator<std::__bind<AUReverbSuppressor::AUReverbSuppressor(OpaqueAudioComponentInstance *)::$_1 const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>>,float const& ()(float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938D30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<std::__bind<AUReverbSuppressor::AUReverbSuppressor(OpaqueAudioComponentInstance *)::$_0 const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>,std::allocator<std::__bind<AUReverbSuppressor::AUReverbSuppressor(OpaqueAudioComponentInstance *)::$_0 const&,std::placeholders::__ph<1> const&,std::reference_wrapper<AutoValue<float,(LogTypes)0>>>>,float const& ()(float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5938CE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t CmhMicCheck::initialize(CmhMicCheck *this, int a2, int a3, int a4, float **a5, float **a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a2 / a3;
  v9 = 2 * a4 - 2;
  *(this + 3) = v9;
  *(this + 4) = a4;
  v10 = ((2500.0 / a2) * v9);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  *(this + 5) = v10;
  CmhMicCheck::deallocate_memory(this);
  if (*(this + 8))
  {
    LODWORD(v11) = *(this + 5);
  }

  else
  {
    *(this + 8) = 1;
    v26 = operator new[](8uLL, MEMORY[0x1E69E5398]);
    *(this + 20) = v26;
    if (!v26)
    {
      return 4294967294;
    }

    *v26 = 0;
    v27 = operator new[](8uLL, MEMORY[0x1E69E5398]);
    *(this + 21) = v27;
    if (!v27)
    {
      return 4294967294;
    }

    *v27 = 0;
    v28 = operator new[](0x20uLL, MEMORY[0x1E69E5398]);
    *(this + 14) = v28;
    if (!v28)
    {
      return 4294967294;
    }

    v29 = 0;
    v11 = *(this + 5);
    v30 = v11 < 0 ? -1 : 4 * v11;
    v31 = MEMORY[0x1E69E5398];
    do
    {
      *(*(this + 14) + v29) = operator new[](v30, v31);
      if (v11 >= 1)
      {
        memset_pattern16(*(*(this + 14) + v29), &unk_1DE09EA40, 4 * v11);
      }

      v29 += 8;
    }

    while (v29 != 32);
    v32 = operator new[](v30, MEMORY[0x1E69E5398]);
    *(this + 15) = v32;
    if (!v32)
    {
      return 4294967294;
    }

    v33 = v11 < 0 ? -1 : 8 * v11;
    v34 = operator new[](v33, MEMORY[0x1E69E5398]);
    *(this + 16) = v34;
    if (!v34)
    {
      return 4294967294;
    }

    *(this + 17) = &v34[4 * v11];
    bzero(v34, 8 * v11);
  }

  if (v11 >= 1)
  {
    v12 = *a5;
    v13 = a5[1];
    v14 = *a6;
    v15 = a6[1];
    v16 = v11;
    v17 = *(this + 15);
    do
    {
      v18 = *v12++;
      v19 = v18;
      v20 = *v13++;
      v21 = v20;
      v22 = *v14++;
      v23 = v22;
      v24 = *v15++;
      *v17++ = 1.0 / sqrtf((((v21 * v23) + (v19 * v24)) * ((v21 * v23) + (v19 * v24))) + ((1.0 - ((v19 * v21) - (v23 * v24))) * (1.0 - ((v19 * v21) - (v23 * v24)))));
      --v16;
    }

    while (v16);
  }

  CmhMicCheck::init_check_mics(this);
  return 0;
}

uint64_t CmhMicCheck::deallocate_memory(uint64_t this)
{
  if (*(this + 32))
  {
    v1 = this;
    *(this + 32) = 0;
    v2 = *(this + 160);
    if (v2)
    {
      MEMORY[0x1E12BD130](v2, 0x1000C8052888210);
    }

    v3 = v1[21];
    if (v3)
    {
      MEMORY[0x1E12BD130](v3, 0x1000C8052888210);
    }

    for (i = 0; i != 32; i += 8)
    {
      v5 = *(v1[14] + i);
      if (v5)
      {
        MEMORY[0x1E12BD130](v5, 0x1000C8052888210);
      }
    }

    v6 = v1[14];
    if (v6)
    {
      MEMORY[0x1E12BD130](v6, 0x80C80B8603338);
    }

    v1[14] = 0;
    v7 = v1[15];
    if (v7)
    {
      MEMORY[0x1E12BD130](v7, 0x1000C8052888210);
    }

    v9 = v1[16];
    v8 = v1 + 16;
    this = v9;
    *(v8 - 1) = 0;
    if (v9)
    {
      this = MEMORY[0x1E12BD130](this, 0x1000C8052888210);
      *v8 = 0;
      v8[1] = 0;
    }
  }

  return this;
}

int32x2_t CmhMicCheck::init_check_mics(CmhMicCheck *this)
{
  v2 = *(this + 9);
  v3 = *(this + 10);
  *(this + 57) = v2;
  *(this + 58) = v3;
  v4 = v3 - v2;
  *(this + 36) = v3 - v2;
  v5 = vcvt_s32_f32(*(this + 44));
  *(this + 59) = v5.i32[0];
  *(this + 30) = v5;
  v6 = v5.i32[0];
  v7 = *(this + 13);
  v8 = 0.0;
  if (v7 > 0.0)
  {
    v8 = exp(-1.0 / (v7 * *(this + 2)));
  }

  v9 = *(this + 14) - v4;
  *(this + 62) = v8;
  *(this + 63) = v9;
  *(this + 16) = *(this + 60);
  v10 = *(this + 20);
  *(this + 68) = *(this + 19);
  *(this + 69) = v10 + (v4 * -256.0);
  v11 = *(this + 84);
  *(this + 280) = v11;
  v12 = *(this + 100);
  *(this + 37) = v12;
  *(this + 50) = 5;
  v13.i32[1] = 5;
  *(this + 24) = 0x500000005;
  *v13.i32 = *this;
  v14 = *(this + 3);
  v15 = ((*(&v11 + 2) / *v13.i32) * v14);
  if (v15 <= 1)
  {
    v15 = 1;
  }

  *(this + 53) = v15;
  *(this + 54) = ((*(&v11 + 3) / *v13.i32) * v14);
  *(this + 37) = v6;
  *(this + 38) = 0;
  result = vmin_s32(vdup_n_s32(*(this + 5) - 1), vcvt_s32_f32(vmul_n_f32(vdiv_f32(v12, vdup_lane_s32(v13, 0)), v14)));
  *(this + 220) = result;
  return result;
}

void CmhMicCheck::process(CmhMicCheck *this, const DSPSplitComplex *a2, const DSPSplitComplex *a3, const DSPSplitComplex *a4, const DSPSplitComplex *a5, void *a6, void *a7)
{
  v7 = a7;
  v10 = *(this + 5);
  if (v10 >= 1)
  {
    v15 = *(this + 14);
    v16 = *v15;
    v17 = *(this + 62);
    v18 = *(this + 5);
    do
    {
      v19 = *&a2->realp;
      a2 = (a2 + 4);
      v20 = v19;
      v21 = *&a3->realp;
      a3 = (a3 + 4);
      v22 = log10f(*(this + 67) + ((v21 * v21) + (v20 * v20)));
      *v16 = (v22 * 10.0) + (v17 * (*v16 - (v22 * 10.0)));
      ++v16;
      --v18;
    }

    while (v18);
    v23 = v15[1];
    v24 = *(this + 62);
    v25 = v10;
    v7 = a7;
    do
    {
      v26 = *&a4->realp;
      a4 = (a4 + 4);
      v27 = v26;
      v28 = *&a5->realp;
      a5 = (a5 + 4);
      v29 = log10f(*(this + 67) + ((v28 * v28) + (v27 * v27)));
      *v23 = (v29 * 10.0) + (v24 * (*v23 - (v29 * 10.0)));
      ++v23;
      --v25;
    }

    while (v25);
  }

  MEMORY[0x1E12BE7F0](*(this + 15), 1, *a6, 1, *(this + 16), 1, v10);
  MEMORY[0x1E12BE7F0](*(this + 15), 1, a6[1], 1, *(this + 17), 1, *(this + 5));
  v30 = *(this + 5);
  if (v30 >= 1)
  {
    v31 = *(*(this + 14) + 16);
    v32 = *(this + 62);
    v33 = *(this + 16);
    v34 = *(this + 17);
    v35 = *(this + 5);
    do
    {
      v36 = *v33++;
      v37 = v36;
      v38 = *v34++;
      v39 = log10f(*(this + 67) + ((v38 * v38) + (v37 * v37)));
      *v31 = (v39 * 10.0) + (v32 * (*v31 - (v39 * 10.0)));
      ++v31;
      --v35;
    }

    while (v35);
  }

  MEMORY[0x1E12BE7F0](*(this + 15), 1, *v7, 1, *(this + 16), 1, v30);
  MEMORY[0x1E12BE7F0](*(this + 15), 1, v7[1], 1, *(this + 17), 1, *(this + 5));
  v40 = *(this + 14);
  v41 = v40[3];
  v42 = *(this + 5);
  if (v42 >= 1)
  {
    v43 = *(this + 62);
    v44 = v40[3];
    v45 = *(this + 5);
    v46 = *(this + 16);
    v47 = *(this + 17);
    do
    {
      v48 = *v46++;
      v49 = v48;
      v50 = *v47++;
      v51 = log10f(*(this + 67) + ((v50 * v50) + (v49 * v49)));
      *v44 = (v51 * 10.0) + (v43 * (*v44 - (v51 * 10.0)));
      ++v44;
      --v45;
    }

    while (v45);
  }

  v52 = *v40;
  v53 = v40[1];
  v54 = *(this + 53);
  v55 = *(this + 54);
  v56 = *(*v40 + 4 * v54) + 90.31;
  v58 = *(this + 20);
  v57 = *(this + 21);
  *v58 = v56;
  v59 = *(v53 + 4 * v54) + 90.31;
  v58[1] = v59;
  v60 = *(v52 + 4 * v55) + 90.31;
  *v57 = v60;
  v61 = *(v53 + 4 * v55) + 90.31;
  v57[1] = v61;
  v63 = *(this + 55);
  v62 = *(this + 56);
  v64 = (*(v52 + 4 * v62) + *(v52 + 4 * v42 - 4)) * 0.5;
  *(this + 44) = v64;
  v65 = (*(v53 + 4 * v62) + *(v53 + 4 * v42 - 4)) * 0.5;
  *(this + 45) = v65;
  v66 = (*(v40[2] + 4 * v62) + *(v40[2] + 4 * v42 - 4)) * 0.5;
  *(this + 46) = v66;
  v67 = (*(v41 + 4 * v62) + *(v41 + 4 * v42 - 4)) * 0.5;
  *(this + 47) = v67;
  v68 = *(v52 + 4 * v63);
  v69 = *(v53 + 4 * v63);
  v70 = *(this + 76);
  if (v70 == 1)
  {
    v71 = v64;
  }

  else
  {
    v71 = v65;
  }

  if (v70)
  {
    v72 = v71;
  }

  else
  {
    v72 = v65;
  }

  if (v70)
  {
    v73 = v71;
  }

  else
  {
    v73 = v64;
  }

  v74 = *(this + 39);
  v75 = 0.0;
  if (v74 > 1.0)
  {
    v75 = (log10f(v74) * 20.0) * 256.0;
  }

  v76 = *v58;
  v77 = *(this + 63);
  v78 = *v58 <= v77 || v58[1] >= v77;
  v79 = v76 >= v77 || v58[1] <= v77;
  v80 = v76 <= v77 || v58[1] <= v77;
  v81 = (v68 + 90.31) * 256.0;
  v82 = *v57;
  v83 = v57[1];
  v84 = vabds_f32(*v57, v83) > *(this + 64);
  v85 = (v78 && v79 || v84) && v80;
  if (*v57 >= v83)
  {
    v82 = v57[1];
  }

  v86 = v82 < 5.0 && v84;
  v87 = (v69 + 90.31) * 256.0;
  v88 = 4;
  v89 = 1;
  v90 = 168;
  v91 = 260;
  if (v85)
  {
    v92 = 4;
  }

  else
  {
    v92 = 4;
    if (!v86)
    {
      if (*(this + 38) <= 0)
      {
        v89 = 0;
        v92 = 3;
        v88 = 2;
        v90 = 160;
        v91 = 264;
      }

      else
      {
        v89 = 1;
        v90 = 168;
        v91 = 260;
      }
    }
  }

  v93 = *(this + v91);
  *(this + 52) = v93;
  v94 = *(this + v90);
  *(this + 51) = v89;
  v95 = *v94;
  v96 = v94[1];
  v97 = *(this + 68);
  if ((v81 - v87) <= v97 || *(this + 69) <= v87)
  {
    if ((v87 - v81) > v97 && *(this + 69) > v81)
    {
      v88 = 0;
      *(this + 49) = 0;
      goto LABEL_60;
    }

    if (v75 < (*(this + 70) + 23040.0))
    {
      if (((v95 - v96) * 256.0) > v93)
      {
        goto LABEL_59;
      }

      if (((v96 - v95) * 256.0) > v93)
      {
        *(this + 49) = v92;
        v88 = v92;
        goto LABEL_60;
      }
    }

    v98 = *(this + 71);
    if (((v66 - v73) * 256.0) <= v98 && ((v67 - v72) * 256.0) <= v98)
    {
      v88 = 5;
    }

    goto LABEL_59;
  }

  v88 = 1;
LABEL_59:
  *(this + 49) = v88;
LABEL_60:
  if (v88 == *(this + 50))
  {
    v100 = *(this + 37);
    if (v100 >= 2)
    {
      v101 = v100 - 1;
    }

    else
    {
      v101 = 0;
    }

    *(this + 37) = v101;
    if (v101)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v102 = *(this + 59);
    *(this + 37) = v102;
    *(this + 50) = v88;
    if (v102)
    {
LABEL_65:
      v88 = *(this + 48);
      goto LABEL_68;
    }
  }

  *(this + 48) = v88;
LABEL_68:
  if (v88 >= 5)
  {
    v89 = 0;
  }

  if (v89 == 1)
  {
    v103 = *(this + 60);
  }

  else
  {
    if (v88 != 5)
    {
      return;
    }

    v104 = *(this + 38);
    if (v104 >= 2)
    {
      v103 = v104 - 1;
    }

    else
    {
      v103 = 0;
    }
  }

  *(this + 38) = v103;
}

void HRTFConvolution::Reset(void **this)
{
  bzero(this[3], *(this + 12));
  bzero(this[4], *(this + 12));
  bzero(this[5], *(this + 12));
  bzero(this[8], *(this + 22));
  bzero(this[9], *(this + 22));
  v2 = this[10];
  v3 = *(this + 22);

  bzero(v2, v3);
}

void HRTFConvolution::Process(HRTFConvolution *this, float *a2, float **a3, unsigned int a4, int a5, float a6, float a7, float a8)
{
  if (HRTFConvolution::sIsInitialized == 1)
  {
    v56 = v11;
    v57 = v10;
    v58 = v8;
    v59 = v9;
    v17 = a6 * 0.0174532925;
    v18 = *(this + 12);
    v19 = v17 - v18;
    if (v17 - v18 <= 3.14159265)
    {
      if (v19 < -3.14159265)
      {
        v18 = v18 + -6.28318531;
        v19 = v17 - v18;
        if (v17 - v18 < -3.14159265)
        {
          v21 = *(this + 17);
          do
          {
            v18 = v18 + -6.28318531;
            v21 = v21 + -6.28318531;
            v19 = v17 - v18;
          }

          while (v17 - v18 < -3.14159265);
          *(this + 17) = v21;
        }
      }
    }

    else
    {
      v18 = v18 + 6.28318531;
      v19 = v17 - v18;
      if (v17 - v18 > 3.14159265)
      {
        v20 = *(this + 17);
        do
        {
          v18 = v18 + 6.28318531;
          v20 = v20 + 6.28318531;
          v19 = v17 - v18;
        }

        while (v17 - v18 > 3.14159265);
        *(this + 17) = v20;
      }
    }

    v22 = v18 + v19 * 0.1;
    *(this + 12) = v22;
    v23 = a7;
    if (*(this + 38) || ((v24 = vabdd_f64(*(this + 18), v23), vabdd_f64(*(this + 17), v22) <= 0.0174532925) ? (v25 = v24 <= 1.0) : (v25 = 0), !v25))
    {
      *(this + 38) = 0;
      *(this + 17) = v22;
      *(this + 18) = v23;
        ;
      }

        ;
      }

      v27 = i * 0.0174532925;
      if (v23 * 0.0174532925 == 0.0)
      {
        v28 = 3.14159265 - v27;
        if (v27 <= 1.57079633)
        {
          v28 = v27;
        }

        v29 = 0.0;
        if (v28 < -1.57079633)
        {
          v28 = -3.14159265 - v28;
        }
      }

      else
      {
        v30 = ((v23 * 0.0174532925 + 1.57079633) * 100.0 / 3.14159265) & ~(((v23 * 0.0174532925 + 1.57079633) * 100.0 / 3.14159265) >> 31);
        if (v30 >= 99)
        {
          v30 = 99;
        }

        v31 = (&azimuthCoeffs + 16 * v30);
        v32 = (&elevationCoeffs + 16 * v30);
        if (v27 <= 1.57079633)
        {
          v33 = v27;
          if (v27 < -1.57079633)
          {
            v33 = -3.14159265 - v27;
          }
        }

        else
        {
          v33 = 3.14159265 - v27;
        }

        v34 = v33 * v33;
        v35 = v33 * (v33 * v33);
        v36 = v33 * v35;
        v37 = v33 * (v33 * v35);
        v38 = v33 * v37;
        v28 = v35 * v31[1] + *v31 * v33 + v31[2] * v37 + v31[3] * (v33 * (v33 * v37));
        v29 = *v32 + v32[1] * v34 + v32[2] * v36 + v32[3] * v38;
      }

      if (fabs(v27) <= 1.57079633)
      {
        v39 = v29;
      }

      else
      {
        v39 = 3.14159265 - v29;
      }

      v40 = ((v39 * 57.2957795 + 45.0) * 0.177777778) & ~(((v39 * 57.2957795 + 45.0) * 0.177777778) >> 31);
      if (v40 >= 49)
      {
        v40 = 49;
      }

      v41 = HRTFConvolution::sHRTF[v40];
      v42 = v28;
      v43 = v42 / 3.14159265 + 0.5;
      v44 = (v43 * 37.0) & ~((v43 * 37.0) >> 31);
      if (v44 >= 36)
      {
        v44 = 36;
      }

      v45 = v41 + 16 * HRTFElevation::GetHRTF(float,ConvolutionKernel *&,ConvolutionKernel *&,float &,float &)::transform[v44];
      *(this + 15) = v45 + 3208;
      *(this + 16) = v45 + 8328;
    }

    v46 = *a3;
    if (a5 == 1)
    {
      v47 = a3[1];
    }

    else
    {
      v47 = v46 + 1;
    }

    v48 = *(this + 13);
    v49 = *(this + 15);
    if (!v48 || v48 == v49)
    {
      FIRFilter::Process(this + 16, a2, *a3, a4, *(this + 15));
    }

    else
    {
      FIRFilter::Process2(this + 2, a2, *a3, a4, v48, v49);
    }

    v50 = *(this + 14);
    v51 = *(this + 16);
    if (!v50 || v50 == v51)
    {
      FIRFilter::Process(this + 56, a2, v47, a4, *(this + 16));
    }

    else
    {
      FIRFilter::Process2(this + 7, a2, v47, a4, v50, v51);
    }

    *(this + 104) = *(this + 120);
    if (a4)
    {
      v52 = a8 * 10.0;
      v53 = *(this + 39);
      __Step = fminf(1.0 / a4, 0.001) * (v52 - v53);
      __Start = v53;
      vDSP_vrampmul(v46, a5, &__Start, &__Step, v46, a5, a4);
      __Start = v53;
      vDSP_vrampmul(v47, a5, &__Start, &__Step, v47, a5, a4);
      *(this + 39) = __Start;
    }
  }
}