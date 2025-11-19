pthread_t AUSpatialMixerV2InputElement::SetDecorrFilterLengthsOnReverbSend(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1 + 800);
  if ((a3 & 0x80000000) != 0)
  {
    v8 = *(a1 + 248);
    v9 = *(a1 + 256);
    while (v8 != v9)
    {
      AUSpatialMixerV2ChannelProcessor::setDecorrFilterLengthsOnReverbSend(*v8++, a2);
    }
  }

  else
  {
    v6 = *(a1 + 248);
    if (a3 < ((*(a1 + 256) - v6) >> 3))
    {
      AUSpatialMixerV2ChannelProcessor::setDecorrFilterLengthsOnReverbSend(*(v6 + 8 * a3), a2);
    }
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 800);
}

pthread_t AUSpatialMixerV2InputElement::SetDecorrFilterCoeffsOnReverbSend(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1 + 800);
  if ((a3 & 0x80000000) != 0)
  {
    v8 = *(a1 + 248);
    v9 = *(a1 + 256);
    while (v8 != v9)
    {
      AUSpatialMixerV2ChannelProcessor::setDecorrFilterCoeffsOnReverbSend(*v8++, a2);
    }
  }

  else
  {
    v6 = *(a1 + 248);
    if (a3 < ((*(a1 + 256) - v6) >> 3))
    {
      AUSpatialMixerV2ChannelProcessor::setDecorrFilterCoeffsOnReverbSend(*(v6 + 8 * a3), a2);
    }
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 800);
}

void applesauce::CF::DictionaryRef::from_get_noexcept(applesauce::CF::DictionaryRef *this, CFTypeRef cf)
{
  if (cf && (CFRetain(cf), v4 = CFGetTypeID(cf), v4 != CFDictionaryGetTypeID()))
  {
    *this = 0;
    CFRelease(cf);
  }

  else
  {
    *this = cf;
  }
}

void AUSM::ExclusionZone::exclusionZonesFromDictionary(AUSM::ExclusionZone *this, const __CFDictionary **a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (!*a2)
  {
    goto LABEL_56;
  }

  v4 = applesauce::CF::details::has_key<char const(&)[15]>(*a2, "ExclusionZones");
  v5 = 0uLL;
  if (!v4)
  {
    goto LABEL_51;
  }

  if (!*a2)
  {
LABEL_56:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_57;
  }

  v6 = applesauce::CF::details::at_key<char const(&)[15]>(*a2, "ExclusionZones");
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFArrayGetTypeID())
    {
      CFRetain(v7);
      Count = CFArrayGetCount(v7);
      v10 = Count;
      if (Count)
      {
        v11 = 0;
        while (1)
        {
          *&cf = 0;
          applesauce::CF::at_or<applesauce::CF::DictionaryRef>(v50, v7, v11, &cf);
          if (cf)
          {
            CFRelease(cf);
          }

          v12 = *v50;
          if (!*v50)
          {
            break;
          }

          v13 = applesauce::CF::details::at_key<char const(&)[16]>(*v50, "coordinatesType");
          if (v13)
          {
            v14 = applesauce::CF::convert_as<unsigned int,0>(v13);
            if ((v14 & 0x100000000) != 0)
            {
              if (v14 == 1)
              {
                v26 = applesauce::CF::details::at_key<char const(&)[5]>(v12, "minX");
                if (!v26 || (v27 = applesauce::CF::convert_as<float,0>(v26), v28 = v27, !HIDWORD(v27)))
                {
                  v28 = 0;
                }

                v29 = applesauce::CF::details::at_key<char const(&)[5]>(v12, "maxX");
                if (!v29 || (v30 = applesauce::CF::convert_as<float,0>(v29), v31 = v30, !HIDWORD(v30)))
                {
                  v31 = 0;
                }

                v32 = applesauce::CF::details::at_key<char const(&)[5]>(v12, "minY");
                if (!v32 || (v33 = applesauce::CF::convert_as<float,0>(v32), v34 = v33, !HIDWORD(v33)))
                {
                  v34 = 0;
                }

                v35 = applesauce::CF::details::at_key<char const(&)[5]>(v12, "maxY");
                if (!v35 || (v36 = applesauce::CF::convert_as<float,0>(v35), v37 = v36, !HIDWORD(v36)))
                {
                  v37 = 0;
                }

                v38 = applesauce::CF::details::at_key<char const(&)[5]>(v12, "minZ");
                if (!v38 || (v39 = applesauce::CF::convert_as<float,0>(v38), v40 = v39, !HIDWORD(v39)))
                {
                  v40 = 0;
                }

                v41 = applesauce::CF::details::at_key<char const(&)[5]>(v12, "maxZ");
                if (!v41 || (v42 = applesauce::CF::convert_as<float,0>(v41), !HIDWORD(v42)))
                {
                  LODWORD(v42) = 0;
                }

                LODWORD(cf) = 1;
                *(&cf + 4) = __PAIR64__(v31, v28);
                HIDWORD(cf) = v34;
                v47 = v37;
                v48 = v40;
                v49 = v42;
                std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](this, &cf);
              }

              else if (!v14)
              {
                v15 = applesauce::CF::details::at_key<char const(&)[13]>(v12, "minElevation");
                if (!v15 || (v16 = applesauce::CF::convert_as<float,0>(v15), v17 = v16, !HIDWORD(v16)))
                {
                  v17 = 0;
                }

                v18 = applesauce::CF::details::at_key<char const(&)[13]>(v12, "maxElevation");
                if (!v18 || (v19 = applesauce::CF::convert_as<float,0>(v18), v20 = v19, !HIDWORD(v19)))
                {
                  v20 = 0;
                }

                v21 = applesauce::CF::details::at_key<char const(&)[11]>(v12, "minAzimuth");
                if (!v21 || (v22 = applesauce::CF::convert_as<float,0>(v21), v23 = v22, !HIDWORD(v22)))
                {
                  v23 = 0;
                }

                v24 = applesauce::CF::details::at_key<char const(&)[11]>(v12, "maxAzimuth");
                if (!v24 || (v25 = applesauce::CF::convert_as<float,0>(v24), !HIDWORD(v25)))
                {
                  LODWORD(v25) = 0;
                }

                LODWORD(cf) = 0;
                *(&cf + 4) = __PAIR64__(v20, v17);
                HIDWORD(cf) = v23;
                v47 = v25;
                std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](this, &cf);
              }
            }
          }

          CFRelease(v12);
          if (v10 == ++v11)
          {
            goto LABEL_48;
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_57:
      }

LABEL_48:
      CFRelease(v7);
      CFRelease(v7);
    }

    else
    {
      CFRelease(v7);
    }
  }

  v5 = *this;
LABEL_51:
  v44 = *(&v5 + 1);
  for (i = v5; i != v44; i += 28)
  {
    AUSM::ExclusionZone::clampValues(i);
  }
}

uint64_t AUSpatialMixerV2InputElement::SetExclusionZones(void *a1, uint64_t *a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock((a1 + 100));
  v4 = a1[31];
  v5 = a1[32];
  while (1)
  {
    if (v4 == v5)
    {
      memset(v8, 0, sizeof(v8));
      std::vector<AUSM::ExclusionZone>::__init_with_size[abi:ne200100]<AUSM::ExclusionZone*,AUSM::ExclusionZone*>(v8, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 2));
      caulk::pooled_semaphore_mutex::_lock((a1 + 181));
      operator new();
    }

    v6 = AUSpatialMixerV2ChannelProcessor::setExclusionZones(*v4, a2);
    if (v6)
    {
      break;
    }

    ++v4;
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((a1 + 100));
  return v6;
}

void sub_1DDCF87A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  MEMORY[0x1E12BD160](v11, 0x20C40960023A9);
  caulk::pooled_semaphore_mutex::_unlock((v10 + 1448));
  if (__p)
  {
    operator delete(__p);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v10 + 800);
  _Unwind_Resume(a1);
}

void AUSM::ExclusionZone::exclusionZonesFromArray(AUSM::ExclusionZone *this, const float *a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = a2[v6];
      if (a3 - v6 >= 5 && v7 == 0.0)
      {
        v8 = a2[v6 + 1];
        v9 = a2[v6 + 2];
        v10 = a2[v6 + 3];
        v11 = a2[v6 + 4];
        LODWORD(v21) = 0;
        *(&v21 + 4) = __PAIR64__(LODWORD(v9), LODWORD(v8));
        *(&v21 + 3) = v10;
        v22 = v11;
        std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](this, &v21);
        v12 = 5;
      }

      else
      {
        if (a3 - v6 < 7 || v7 != 1.0)
        {
LABEL_10:
          v20 = *this;
          v19 = *(this + 1);
          while (v20 != v19)
          {
            AUSM::ExclusionZone::clampValues(v20);
            v20 += 28;
          }

          return;
        }

        v13 = a2[v6 + 1];
        v14 = a2[v6 + 2];
        v15 = a2[v6 + 3];
        v16 = a2[v6 + 4];
        v17 = a2[v6 + 5];
        v18 = a2[v6 + 6];
        LODWORD(v21) = 1;
        *(&v21 + 4) = __PAIR64__(LODWORD(v14), LODWORD(v13));
        *(&v21 + 3) = v15;
        v22 = v16;
        v23 = v17;
        v24 = v18;
        std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](this, &v21);
        v12 = 7;
      }

      v6 += v12;
      if (v6 >= a3)
      {
        goto LABEL_10;
      }
    }
  }
}

void applesauce::CF::ArrayRef::from_get_noexcept(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  if (cf && (CFRetain(cf), v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()))
  {
    *this = 0;
    CFRelease(cf);
  }

  else
  {
    *this = cf;
  }
}

void applesauce::CF::details::pretty_print(applesauce::CF::details *this, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFCopyDescription(cf);
    applesauce::CF::details::CFString_get_value<true>(this, v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(this, "(null)");
  }
}

void sub_1DDCF8A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void *applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(void *a1, CFArrayRef theArray)
{
  *a1 = theArray;
  a1[1] = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  a1[2] = Count;
  return a1;
}

pthread_t AUSpatialMixerV2::UpdateTuningWarper(AUSpatialMixerV2 *this)
{
  v1 = this;
  v25 = *MEMORY[0x1E69E9840];
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v2 = *(v1 + 429);
  if (v2)
  {
    if (!(v2 >> 59))
    {
      std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](v2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v3 = *(v1 + 427);
  v4 = (v1 + 3424);
  if (v3 != (v1 + 3424))
  {
    v18 = v1;
    v5 = v20;
    do
    {
      v6 = v2 >> 5;
      if (((v2 >> 5) + 1) >> 59)
      {
        v19 = 0;
        v20 = v5;
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      if (v2 >> 5 != -1)
      {
        std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100]((v2 >> 5) + 1);
      }

      v7 = (32 * v6);
      v8 = *(v3 + 3);
      *v7 = *(v3 + 2);
      v7[1] = v8;
      v5 = 32 * v6 + 32;
      memcpy(0, 0, v2);
      v21 = 0;
      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v2 = 32 * v6 + 32;
      v3 = v10;
    }

    while (v10 != v4);
    v19 = 0;
    v20 = 32 * v6 + 32;
    v1 = v18;
  }

  applesauce::CF::StringRef::from_get(&cf, @"Large");
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(&__p, cf);
  v22.n128_u64[0] = 0x10000010101;
  v22.n128_u64[1] = 1065353216;
  AUSM::SoundStage::setParameters(v1 + 9312, 3, &v19, &__p, &v22);
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    atomic_store(3u, v1 + 2428);
    atomic_store(1u, v1 + 9785);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v14 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = (v1 + 3752);
      if (*(v1 + 3775) < 0)
      {
        v16 = *v16;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v16;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = "UpdateTuningWarper";
      _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "[%s|%s] failed to set tuning warper parameters", &__p, 0x16u);
    }
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 3472);
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(const __CFDictionary *a1, const void *a2)
{
  result = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<unsigned int,0>(result);
  }

  return result;
}

const void *applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(const __CFDictionary *a1, const void *a2)
{
  result = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,AUSMChannelParameters>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUSMChannelParameters>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUSMChannelParameters>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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

void *std::vector<AUSMChannelParameters>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<AUSMChannelParameters>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDCF9068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,applesauce::CF::StringRef>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<float>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v12, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = v13;
    v6 = 4 * v3;
    do
    {
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>((8 * v7), *v4);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>(v5++, *v4);
      }

      v13 = v5;
      ++v4;
      v6 -= 4;
    }

    while (v6);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_1DDCF92F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<unsigned int>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v12, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = v13;
    v6 = 4 * v3;
    do
    {
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int const&,void,0>((8 * v7), *v4);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int const&,void,0>(v5++, *v4);
      }

      v13 = v5;
      ++v4;
      v6 -= 4;
    }

    while (v6);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_1DDCF9478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>(CFNumberRef *a1, float a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void std::vector<AUSMChannelParameters>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<AUSM::ExclusionZone>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 28 * v7;
    v12 = *a2;
    *(v11 + 12) = *(a2 + 12);
    *v11 = v12;
    v6 = 28 * v7 + 28;
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
    *(v4 + 12) = *(a2 + 12);
    *v4 = v5;
    v6 = v4 + 28;
  }

  *(a1 + 8) = v6;
}

uint64_t AUSM::ExclusionZone::clampValues(uint64_t this)
{
  if (*this == 1)
  {
    v9 = -1.0;
    v10 = *(this + 4);
    v11 = *(this + 8);
    if (v10 <= 1.0)
    {
      v12 = *(this + 4);
    }

    else
    {
      v12 = 1.0;
    }

    if (v10 >= -1.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -1.0;
    }

    if (v11 <= 1.0)
    {
      v14 = *(this + 8);
    }

    else
    {
      v14 = 1.0;
    }

    if (v11 >= -1.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = -1.0;
    }

    *(this + 4) = v13;
    *(this + 8) = v15;
    v16 = *(this + 12);
    v17 = *(this + 16);
    if (v16 <= 1.0)
    {
      v18 = *(this + 12);
    }

    else
    {
      v18 = 1.0;
    }

    if (v16 >= -1.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = -1.0;
    }

    if (v17 <= 1.0)
    {
      v20 = *(this + 16);
    }

    else
    {
      v20 = 1.0;
    }

    if (v17 >= -1.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = -1.0;
    }

    *(this + 12) = v19;
    *(this + 16) = v21;
    v23 = *(this + 20);
    v22 = *(this + 24);
    if (v23 <= 1.0)
    {
      v24 = *(this + 20);
    }

    else
    {
      v24 = 1.0;
    }

    if (v23 >= -1.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = -1.0;
    }

    *(this + 20) = v25;
    if (v22 >= -1.0)
    {
      v9 = 1.0;
      if (v22 <= 1.0)
      {
        v9 = v22;
      }
    }

    *(this + 24) = v9;
  }

  else if (!*this)
  {
    v1 = -90.0;
    v2 = 90.0;
    v3 = *(this + 4);
    v4 = *(this + 8);
    if (v3 <= 90.0)
    {
      v2 = *(this + 4);
    }

    if (v3 >= -90.0)
    {
      v1 = v2;
    }

    v5 = -90.0;
    v6 = 90.0;
    if (v4 <= 90.0)
    {
      v6 = *(this + 8);
    }

    if (v4 >= -90.0)
    {
      v5 = v6;
    }

    *(this + 4) = v1;
    *(this + 8) = v5;
    v7 = *(this + 12);
    if (v7 < -180.0)
    {
      do
      {
        v7 = v7 + 360.0;
      }

      while (v7 < -180.0);
      *(this + 12) = v7;
    }

    if (v7 > 180.0)
    {
      do
      {
        v7 = v7 + -360.0;
      }

      while (v7 > 180.0);
      *(this + 12) = v7;
    }

    v8 = *(this + 16);
    if (v8 < -180.0)
    {
      do
      {
        v8 = v8 + 360.0;
      }

      while (v8 < -180.0);
      *(this + 16) = v8;
    }

    if (v8 > 180.0)
    {
      do
      {
        v8 = v8 + -360.0;
      }

      while (v8 > 180.0);
      *(this + 16) = v8;
    }
  }

  return this;
}

void std::allocator<AUSM::ExclusionZone>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<AUSM::ExclusionZone>::__init_with_size[abi:ne200100]<AUSM::ExclusionZone*,AUSM::ExclusionZone*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AUSM::ExclusionZone>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDCF9930(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::ExclusionZone::getPresetFromExclusionZones(float **a1)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  AUSM::ExclusionZone::getPreset(1, &v43);
  v2 = *a1;
  v3 = a1[1];
  v4 = v43;
  if (v3 - *a1 != v44 - v43)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v2 != v3)
  {
    v5 = v43;
    do
    {
      v6 = AUSM::ExclusionZone::operator==(v2, v5);
      v7 = v6;
      if (!v6)
      {
        break;
      }

      v2 += 7;
      v5 += 28;
    }

    while (v2 != v3);
LABEL_10:
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v7 = 1;
  if (v43)
  {
LABEL_11:
    operator delete(v4);
  }

LABEL_12:
  if (v7)
  {
    return 1;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  AUSM::ExclusionZone::getPreset(2, &v43);
  v9 = *a1;
  v10 = a1[1];
  v11 = v43;
  if (v10 - *a1 == v44 - v43)
  {
    if (v9 == v10)
    {
LABEL_19:
      v13 = 1;
      goto LABEL_31;
    }

    v12 = v43;
    while (AUSM::ExclusionZone::operator==(v9, v12))
    {
      v9 += 7;
      v12 += 28;
      if (v9 == v10)
      {
        goto LABEL_19;
      }
    }
  }

  AUSM::ExclusionZone::getPresetReversed(&v41, 2);
  v14 = *a1;
  v15 = a1[1];
  v16 = v41;
  if (v15 - *a1 != v42 - v41)
  {
    v13 = 0;
    goto LABEL_29;
  }

  if (v14 != v15)
  {
    v17 = v41;
    do
    {
      v18 = AUSM::ExclusionZone::operator==(v14, v17);
      v13 = v18;
      if (!v18)
      {
        break;
      }

      v14 += 7;
      v17 += 28;
    }

    while (v14 != v15);
LABEL_29:
    if (!v16)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v13 = 1;
  if (v41)
  {
LABEL_30:
    operator delete(v16);
  }

LABEL_31:
  if (v11)
  {
    operator delete(v11);
  }

  if (v13)
  {
    return 2;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  AUSM::ExclusionZone::getPreset(3, &v43);
  v19 = *a1;
  v20 = a1[1];
  v21 = v43;
  if (v20 - *a1 == v44 - v43)
  {
    if (v19 == v20)
    {
LABEL_40:
      v23 = 1;
      goto LABEL_50;
    }

    v22 = v43;
    while (AUSM::ExclusionZone::operator==(v19, v22))
    {
      v19 += 7;
      v22 += 28;
      if (v19 == v20)
      {
        goto LABEL_40;
      }
    }
  }

  AUSM::ExclusionZone::getPresetReversed(&v41, 3);
  v24 = *a1;
  v25 = a1[1];
  v26 = v41;
  if (v25 - *a1 != v42 - v41)
  {
    v23 = 0;
    goto LABEL_48;
  }

  if (v24 != v25)
  {
    v27 = v41;
    do
    {
      v28 = AUSM::ExclusionZone::operator==(v24, v27);
      v23 = v28;
      if (!v28)
      {
        break;
      }

      v24 += 7;
      v27 += 28;
    }

    while (v24 != v25);
LABEL_48:
    if (!v26)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v23 = 1;
  if (v41)
  {
LABEL_49:
    operator delete(v26);
  }

LABEL_50:
  if (v21)
  {
    operator delete(v21);
  }

  if (v23)
  {
    return 3;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  AUSM::ExclusionZone::getPreset(4, &v43);
  v29 = *a1;
  v30 = a1[1];
  v31 = v43;
  if (v30 - *a1 != v44 - v43)
  {
    v34 = 0;
    goto LABEL_61;
  }

  if (v29 != v30)
  {
    v32 = v43;
    do
    {
      v33 = AUSM::ExclusionZone::operator==(v29, v32);
      v34 = v33;
      if (!v33)
      {
        break;
      }

      v29 += 7;
      v32 += 28;
    }

    while (v29 != v30);
LABEL_61:
    if (!v31)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v34 = 1;
  if (v43)
  {
LABEL_62:
    operator delete(v31);
  }

LABEL_63:
  if (v34)
  {
    return 4;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  AUSM::ExclusionZone::getPreset(5, &v43);
  v35 = *a1;
  v36 = a1[1];
  v37 = v36 - *a1;
  v38 = v43;
  if (v37 == v44 - v43)
  {
    if (v35 == v36)
    {
LABEL_70:
      v8 = 5;
      goto LABEL_74;
    }

    v39 = v43;
    while (AUSM::ExclusionZone::operator==(v35, v39))
    {
      v35 += 7;
      v39 += 28;
      if (v35 == v36)
      {
        goto LABEL_70;
      }
    }
  }

  v8 = 0xFFFFFFFFLL;
LABEL_74:
  if (v38)
  {
    operator delete(v38);
  }

  return v8;
}

void AUSM::ExclusionZone::getPreset(int a1, uint64_t a2)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v3 = 0;
      v4 = xmmword_1DE09C350;
      std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](a2, &v3);
    }

    else if (a1 == 2)
    {
      v3 = 0;
      v4 = xmmword_1DE09C330;
      std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](a2, &v3);
      v3 = 0;
      v4 = xmmword_1DE09C340;
      std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](a2, &v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v3 = 0;
        v4 = xmmword_1DE09C310;
        std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](a2, &v3);
        v3 = 0;
        v4 = xmmword_1DE09C320;
        std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](a2, &v3);
        break;
      case 4:
        v3 = 0;
        v4 = xmmword_1DE09C300;
        std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](a2, &v3);
        break;
      case 5:
        v3 = 0;
        v4 = xmmword_1DE09C360;
        std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](a2, &v3);
        break;
    }
  }
}

BOOL AUSM::ExclusionZone::operator==(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    if (LODWORD(v2) == 1)
    {
      if (a1[1] == *(a2 + 4) && a1[2] == *(a2 + 8) && a1[3] == *(a2 + 12) && a1[4] == *(a2 + 16) && a1[5] == *(a2 + 20))
      {
        v3 = 6;
        return a1[v3] == *(a2 + v3 * 4);
      }
    }

    else if (v2 == 0.0 && a1[1] == *(a2 + 4) && a1[2] == *(a2 + 8) && a1[3] == *(a2 + 12))
    {
      v3 = 4;
      return a1[v3] == *(a2 + v3 * 4);
    }
  }

  return 0;
}

__n128 AUSM::ExclusionZone::getPresetReversed(unint64_t *a1, int a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  AUSM::ExclusionZone::getPreset(a2, a1);
  v4 = *a1;
  v5 = a1[1];
  v6 = (v5 - 28);
  if (*a1 != v5 && v6 > v4)
  {
    v8 = v4 + 28;
    do
    {
      *v11 = *(v8 - 28);
      *&v11[12] = *(v8 - 16);
      v9 = *(v6 + 12);
      *(v8 - 28) = *v6;
      *(v8 - 16) = v9;
      *(v6 + 12) = *&v11[12];
      result = *v11;
      *v6 = *v11;
      v6 = (v6 - 28);
      v10 = v8 >= v6;
      v8 += 28;
    }

    while (!v10);
  }

  return result;
}

void std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void std::vector<AUSM::ExclusionZone>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    std::allocator<AUSM::ExclusionZone>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[13]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[13]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

const void *applesauce::CF::details::at_key<char const(&)[16]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1DDCFA11C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDCFA0CCLL);
}

uint64_t AUSpatialMixerV2::GetProperty(AUSpatialMixerV2 *this, signed int a2, unsigned int a3, unsigned int a4, void *a5)
{
  v7 = a3;
  v272[2] = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    if (a4)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v13 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v26 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v26 = *v26;
        }

        LODWORD(buf.__begin_) = 136315906;
        *(&buf.__begin_ + 4) = v26;
        WORD2(buf.__end_) = 2080;
        *(&buf.__end_ + 6) = "GetProperty";
        HIWORD(buf.__end_cap_.__value_) = 1024;
        LODWORD(v263) = a4;
        WORD2(v263) = 1024;
        *(&v263 + 6) = a2;
        _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid output scope element = %u (property = %u)", &buf, 0x22u);
      }

      goto LABEL_20;
    }

    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v10 = (Element + 248);
LABEL_24:
    Property = AUSM::Properties::getProperty(v10, a2, a5);
    goto LABEL_25;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return 4294956417;
    }

    v10 = (this + 3744);
    goto LABEL_24;
  }

  v11 = *(this + 15);
  if (v11)
  {
    LODWORD(v12) = (*(*v11 + 24))(v11);
  }

  else
  {
    v12 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v12 <= a4)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v13 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v27 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v27 = *v27;
      }

      LODWORD(buf.__begin_) = 136315906;
      *(&buf.__begin_ + 4) = v27;
      WORD2(buf.__end_) = 2080;
      *(&buf.__end_ + 6) = "GetProperty";
      HIWORD(buf.__end_cap_.__value_) = 1024;
      LODWORD(v263) = a4;
      WORD2(v263) = 1024;
      *(&v263 + 6) = a2;
      _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid input scope element = %u (property = %u)", &buf, 0x22u);
    }

    goto LABEL_20;
  }

  buf.__begin_ = (this + 3504);
  LOBYTE(buf.__end_) = 1;
  std::__shared_mutex_base::lock_shared((this + 3504));
  v15 = ausdk::AUScope::GetElement((this + 80), a4);
  if (!v15)
  {
    ausdk::Throw(0xFFFFD583);
  }

  Property = AUSM::Properties::getProperty((v15 + 832), a2, a5);
  std::__shared_mutex_base::unlock_shared((this + 3504));
LABEL_25:
  if (Property != -10879)
  {
    return Property;
  }

  Property = 4294956417;
  if (a2 <= 5003)
  {
    if (a2 > 3225)
    {
      if (a2 <= 3269)
      {
        if (a2 != 3226)
        {
          if (a2 != 3268)
          {
            return Property;
          }

          if (v7)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v19 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v225 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v225 = *v225;
              }

              LODWORD(buf.__begin_) = 136315906;
              *(&buf.__begin_ + 4) = v225;
              WORD2(buf.__end_) = 2080;
              *(&buf.__end_ + 6) = "GetProperty";
              HIWORD(buf.__end_cap_.__value_) = 1024;
              LODWORD(v263) = v7;
              WORD2(v263) = 1024;
              *(&v263 + 6) = 3268;
              _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
            }

            goto LABEL_169;
          }

          AUSM::GlobalGeometry::getTuningParameters(&buf, this + 8720);
          begin = buf.__begin_;
          buf.__begin_ = 0;
          *a5 = begin;
          std::pair<applesauce::CF::ArrayRef,AUSM::GlobalGeometry::DataType>::~pair(&buf.__begin_);
          return 0;
        }

        if (v7 != 1)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v230 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v230 = *v230;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v230;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = v7;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 3226;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", &buf, 0x22u);
          }

          goto LABEL_169;
        }

        v24 = *(this + 15);
        if (v24)
        {
          LODWORD(v25) = (*(*v24 + 24))(v24);
        }

        else
        {
          v25 = (*(this + 13) - *(this + 12)) >> 3;
        }

        if (v25 > a4)
        {
          v126 = ausdk::AUBase::Input(this, a4);
          AUSM::InputGeometry::getExclusionZones(&buf, v126 + 1408);
          v31 = buf.__begin_;
          AUSM::ExclusionZone::arrayFromZones(buf.__begin_, buf.__end_, a5);
          if (!v31)
          {
            return 0;
          }

          goto LABEL_312;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v13 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v235 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v235 = *v235;
          }

          LODWORD(buf.__begin_) = 136315906;
          *(&buf.__begin_ + 4) = v235;
          WORD2(buf.__end_) = 2080;
          *(&buf.__end_ + 6) = "GetProperty";
          HIWORD(buf.__end_cap_.__value_) = 1024;
          LODWORD(v263) = a4;
          WORD2(v263) = 1024;
          *(&v263 + 6) = 3226;
          _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &buf, 0x22u);
        }
      }

      else
      {
        if (a2 == 3270)
        {
          if (!v7)
          {
            std::mutex::lock((this + 8648));
            v49 = *(this + 7608);
            std::mutex::unlock((this + 8648));
            Property = 0;
            *a5 = v49;
            return Property;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v221 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v221 = *v221;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v221;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = v7;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 3270;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
          }

          goto LABEL_169;
        }

        if (a2 == 5001)
        {
          if (!v7)
          {
            AUSpatialMixerV2::GetFileNamesDictionary(this);
            *a5 = Property = 0;
            return Property;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v219 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v219 = *v219;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v219;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = v7;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 5001;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
          }

          goto LABEL_169;
        }

        if (a2 != 5002)
        {
          return Property;
        }

        if (v7 >= 2)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v231 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v231 = *v231;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v231;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = v7;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 5002;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", &buf, 0x22u);
          }

          goto LABEL_169;
        }

        if (v7 != 1 || ((v39 = *(this + 15)) == 0 ? (v40 = (*(this + 13) - *(this + 12)) >> 3) : (LODWORD(v40) = (*(*v39 + 24))(v39)), v40 > a4))
        {
          v175 = [MEMORY[0x1E695DF70] array];
          if (v7)
          {
            v176 = *(this + 15);
            if (v176)
            {
              LODWORD(v177) = (*(*v176 + 24))(v176);
            }

            else
            {
              v177 = (*(this + 13) - *(this + 12)) >> 3;
            }

            if (v177 <= a4)
            {

              return 4294956419;
            }

            v189 = ausdk::AUBase::Input(this, a4);
            AUSpatialMixerV2InputElement::GetChannelParameters(&buf, v189);
            v190 = buf.__begin_;
            end = buf.__end_;
            if (buf.__begin_ != buf.__end_)
            {
              v192 = buf.__begin_;
              do
              {
                v193 = [MEMORY[0x1E695DEF0] dataWithBytes:v192 length:32];
                [v175 addObject:v193];

                v192 += 8;
              }

              while (v192 != end);
            }

            if (v190)
            {
              operator delete(v190);
            }
          }

          else
          {
            v178 = *(this + 427);
            v179 = this + 3424;
            if (v178 != this + 3424)
            {
              do
              {
                v180 = [MEMORY[0x1E695DEF0] dataWithBytes:v178 + 32 length:32];
                [v175 addObject:v180];

                v181 = *(v178 + 1);
                if (v181)
                {
                  do
                  {
                    v182 = v181;
                    v181 = *v181;
                  }

                  while (v181);
                }

                else
                {
                  do
                  {
                    v182 = *(v178 + 2);
                    _ZF = *v182 == v178;
                    v178 = v182;
                  }

                  while (!_ZF);
                }

                v178 = v182;
              }

              while (v182 != v179);
            }
          }

          Property = 0;
          *a5 = v175;
          return Property;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v13 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v240 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v240 = *v240;
          }

          LODWORD(buf.__begin_) = 136315906;
          *(&buf.__begin_ + 4) = v240;
          WORD2(buf.__end_) = 2080;
          *(&buf.__end_ + 6) = "GetProperty";
          HIWORD(buf.__end_cap_.__value_) = 1024;
          LODWORD(v263) = a4;
          WORD2(v263) = 1024;
          *(&v263 + 6) = 5002;
          _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &buf, 0x22u);
        }
      }

      goto LABEL_20;
    }

    if (a2 > 3214)
    {
      switch(a2)
      {
        case 3215:
          if (v7 >= 2)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v19 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v229 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v229 = *v229;
              }

              LODWORD(buf.__begin_) = 136315906;
              *(&buf.__begin_ + 4) = v229;
              WORD2(buf.__end_) = 2080;
              *(&buf.__end_ + 6) = "GetProperty";
              HIWORD(buf.__end_cap_.__value_) = 1024;
              LODWORD(v263) = v7;
              WORD2(v263) = 1024;
              *(&v263 + 6) = 3215;
              _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", &buf, 0x22u);
            }

            goto LABEL_169;
          }

          if (v7 != 1)
          {
            v124 = ausdk::AUBase::Input(this, 0);
            v125 = *(v124 + 248);
            if (a4 >= ((*(v124 + 256) - v125) >> 3))
            {
              return 0;
            }

            AUSpatialMixerV2ChannelProcessor::getDecorrFilterLengthsOnReverbSend(&buf, *(v125 + 8 * a4));
            goto LABEL_310;
          }

          v37 = *(this + 15);
          if (v37)
          {
            LODWORD(v38) = (*(*v37 + 24))(v37);
          }

          else
          {
            v38 = (*(this + 13) - *(this + 12)) >> 3;
          }

          if (v38 > a4)
          {
            v173 = ausdk::AUBase::Input(this, a4);
            v174 = *(v173 + 248);
            if (*(v173 + 256) == v174)
            {
              return 0;
            }

            AUSpatialMixerV2ChannelProcessor::getDecorrFilterLengthsOnReverbSend(&buf, *v174);
LABEL_310:
            v31 = buf.__begin_;
            memcpy(a5, buf.__begin_, buf.__end_ - buf.__begin_);
            if (v31)
            {
              buf.__end_ = v31;
              goto LABEL_312;
            }

            return 0;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v13 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v239 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v239 = *v239;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v239;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = a4;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 3215;
            _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &buf, 0x22u);
          }

          break;
        case 3216:
          if (v7 >= 2)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v19 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v228 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v228 = *v228;
              }

              LODWORD(buf.__begin_) = 136315906;
              *(&buf.__begin_ + 4) = v228;
              WORD2(buf.__end_) = 2080;
              *(&buf.__end_ + 6) = "GetProperty";
              HIWORD(buf.__end_cap_.__value_) = 1024;
              LODWORD(v263) = v7;
              WORD2(v263) = 1024;
              *(&v263 + 6) = 3216;
              _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", &buf, 0x22u);
            }

            goto LABEL_169;
          }

          if (v7 != 1)
          {
            v122 = ausdk::AUBase::Input(this, 0);
            v123 = *(v122 + 248);
            if (a4 >= ((*(v122 + 256) - v123) >> 3))
            {
              return 0;
            }

            AUSpatialMixerV2ChannelProcessor::getDecorrFilterCoeffsOnReverbSend(&buf, *(v123 + 8 * a4));
            goto LABEL_310;
          }

          v35 = *(this + 15);
          if (v35)
          {
            LODWORD(v36) = (*(*v35 + 24))(v35);
          }

          else
          {
            v36 = (*(this + 13) - *(this + 12)) >> 3;
          }

          if (v36 > a4)
          {
            v171 = ausdk::AUBase::Input(this, a4);
            v172 = *(v171 + 248);
            if (*(v171 + 256) == v172)
            {
              return 0;
            }

            AUSpatialMixerV2ChannelProcessor::getDecorrFilterCoeffsOnReverbSend(&buf, *v172);
            goto LABEL_310;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v13 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v238 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v238 = *v238;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v238;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = a4;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 3216;
            _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &buf, 0x22u);
          }

          break;
        case 3225:
          if (v7 == 1)
          {
            v17 = *(this + 15);
            if (v17)
            {
              LODWORD(v18) = (*(*v17 + 24))(v17);
            }

            else
            {
              v18 = (*(this + 13) - *(this + 12)) >> 3;
            }

            if (v18 > a4)
            {
              v127 = ausdk::AUBase::Input(this, a4);
              AUSM::InputGeometry::getExclusionZones(&buf, v127 + 1408);
              v31 = buf.__begin_;
              AUSM::ExclusionZone::exclusionZonesToDictionary(&buf, buf.__begin_, buf.__end_);
              *a5 = CFRetain(buf.__begin_);
              applesauce::CF::DictionaryRef::~DictionaryRef(&buf.__begin_);
              if (!v31)
              {
                return 0;
              }

              goto LABEL_312;
            }

            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v13 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v236 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v236 = *v236;
              }

              LODWORD(buf.__begin_) = 136315906;
              *(&buf.__begin_ + 4) = v236;
              WORD2(buf.__end_) = 2080;
              *(&buf.__end_ + 6) = "GetProperty";
              HIWORD(buf.__end_cap_.__value_) = 1024;
              LODWORD(v263) = a4;
              WORD2(v263) = 1024;
              *(&v263 + 6) = 3225;
              _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &buf, 0x22u);
            }

            break;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v232 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v232 = *v232;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v232;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = v7;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 3225;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", &buf, 0x22u);
          }

LABEL_169:

          return 4294956430;
        default:
          return Property;
      }

LABEL_20:

      return 4294956419;
    }

    if (a2 == 3107)
    {
      if (!v7)
      {
        v50 = (this + 3400);
        if (*(this + 425))
        {
          v51 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v52 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[12]>(*v51, "SpeakerSpan");
          v53 = *&v52;
          if (!(v52 >> 32))
          {
            v53 = 20.0;
          }

          *&Mutable = v53;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float>(&buf, &Mutable);
          v54 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v55 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[15]>(*v54, "Regularization");
          v56 = *&v55;
          if (!(v55 >> 32))
          {
            v56 = 6.0;
          }

          *&value = v56;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float>(&buf.__end_cap_, &value);
          v57 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v58 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[11]>(*v57, "Constraint");
          v59 = *&v58;
          if (!(v58 >> 32))
          {
            v59 = -6.0;
          }

          *&v248 = v59;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float>((&v263 + 8), &v248);
          v60 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v61 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[21]>(*v60, "PostTimbralFrequency");
          v62 = *&v61;
          if (!(v61 >> 32))
          {
            v62 = 24000.0;
          }

          *&v247 = v62;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float>(&v264, &v247);
          v63 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v64 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[17]>(*v63, "PostTimbralBlend");
          v65 = *&v64;
          if (!(v64 >> 32))
          {
            v65 = 100.0;
          }

          v253 = v65;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[17],float>(&v265, "PostTimbralBlend", &v253);
          v66 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v67 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[10]>(*v66, "Crossover");
          v68 = *&v67;
          if (!(v67 >> 32))
          {
            v68 = 9000.0;
          }

          v252 = v68;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[10],float>(&v266, &v252);
          v69 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v70 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[9]>(*v69, "PostGain");
          v71 = *&v70;
          if (!(v70 >> 32))
          {
            v71 = 0.0;
          }

          v251 = v71;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[9],float>(&v267, &v251);
          v72 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v73 = applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[25]>(*v72, "CounteractRotationShader");
          applesauce::CF::TypeRef::TypeRef(v268, "CounteractRotationShader");
          v74 = (v73 < 0x100u) | v73;
          v75 = *MEMORY[0x1E695E4D0];
          v76 = *MEMORY[0x1E695E4C0];
          if (v74)
          {
            v77 = *MEMORY[0x1E695E4D0];
          }

          else
          {
            v77 = *MEMORY[0x1E695E4C0];
          }

          v268[1] = v77;
          v78 = applesauce::CF::DictionaryRef::operator->(this + 425);
          v79 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[13]>(*v78, "FilterLength");
          v80 = *&v79;
          if (!(v79 >> 32))
          {
            v80 = 256.0;
          }

          v250 = v80;
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],float>(&v269, &v250);
          v81 = *(this + 1232);
          if (v81)
          {
            v82 = *(v81 + 57);
          }

          else
          {
            v82 = 0;
          }

          applesauce::CF::TypeRef::TypeRef(v270, "MagicUnicorn");
          if (v82)
          {
            v194 = v75;
          }

          else
          {
            v194 = v76;
          }

          v270[1] = v194;
          v195 = *(this + 1232);
          if (v195)
          {
            v196 = *(v195 + 784) != 0;
          }

          else
          {
            v196 = 0;
          }

          applesauce::CF::TypeRef::TypeRef(v271, "ReferenceData");
          if (v196)
          {
            v197 = v75;
          }

          else
          {
            v197 = v76;
          }

          v272[0] = v197;
          key[0] = &buf;
          key[1] = 11;
          CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(key);
          v199 = *v50;
          *v50 = CFDictionaryRef;
          v260 = v199;
          applesauce::CF::DictionaryRef::~DictionaryRef(&v260);
          for (i = 0; i != -22; i -= 2)
          {
            v201 = v272[i];
            if (v201)
            {
              CFRelease(v201);
            }

            v202 = *&v271[i * 8];
            if (v202)
            {
              CFRelease(v202);
            }
          }
        }

        else
        {
          AUSpatialMixerV2::RefreshXTCTuningParameters(this);
        }

        v203 = *v50;
        *a5 = *v50;
        if (v203)
        {
          CFRetain(v203);
        }

        return 0;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v222 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v222 = *v222;
        }

        LODWORD(buf.__begin_) = 136315906;
        *(&buf.__begin_ + 4) = v222;
        WORD2(buf.__end_) = 2080;
        *(&buf.__end_ + 6) = "GetProperty";
        HIWORD(buf.__end_cap_.__value_) = 1024;
        LODWORD(v263) = v7;
        WORD2(v263) = 1024;
        *(&v263 + 6) = 3107;
        _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
      }

      goto LABEL_169;
    }

    if (a2 != 3116)
    {
      return Property;
    }

    if (v7)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v224 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v224 = *v224;
        }

        LODWORD(buf.__begin_) = 136315906;
        *(&buf.__begin_ + 4) = v224;
        WORD2(buf.__end_) = 2080;
        *(&buf.__end_ + 6) = "GetProperty";
        HIWORD(buf.__end_cap_.__value_) = 1024;
        LODWORD(v263) = v7;
        WORD2(v263) = 1024;
        *(&v263 + 6) = 3116;
        _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
      }

      goto LABEL_169;
    }

    buf.__begin_ = (this + 3504);
    LOBYTE(buf.__end_) = 1;
    std::__shared_mutex_base::lock_shared((this + 3504));
    while (1)
    {
      v111 = *(this + 15);
      if (v111)
      {
        LODWORD(v112) = (*(*v111 + 24))(v111);
      }

      else
      {
        v112 = (*(this + 13) - *(this + 12)) >> 3;
      }

      if (v7 >= v112)
      {
        break;
      }

      v113 = ausdk::AUScope::GetElement((this + 80), v7);
      if (!v113)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v114 = atomic_load((v113 + 1744));
      ++v7;
      if (v114)
      {
        v115 = 1;
        goto LABEL_255;
      }
    }

    v115 = 0;
LABEL_255:
    *a5 = v115;
    p_buf = &buf;
LABEL_256:
    std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](p_buf);
    return 0;
  }

  if (a2 > 5011)
  {
    if (a2 > 5676)
    {
      if (a2 == 5677)
      {
        v22 = *(this + 374);
        v23 = applesauce::CF::StringRef::get_ns(v22);
        dispatch_sync(v23, &__block_literal_global_239);

        return 0;
      }

      if (a2 != 5683)
      {
        if (a2 != 5696)
        {
          return Property;
        }

        if ((*(this + 6856) & 1) == 0)
        {
          if (!v7)
          {
            AUSM::SoundStage::getWarpingParameterDictionary(&buf, this + 8720, 1);
            AUSM::SoundStage::getWarpingParameterDictionary(&buf.__end_, this + 8720, 2);
            AUSM::SoundStage::getWarpingParameterDictionary(&buf.__end_cap_, this + 8720, 3);
            AUSM::SoundStage::getWarpingParameterDictionary(&v263, this + 8720, 4);
            key[0] = &buf;
            key[1] = 4;
            v128 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(key);
            v260 = v128;
            for (j = 24; j != -8; j -= 8)
            {
              v130 = *(&buf.__begin_ + j);
              if (v130)
              {
                CFRelease(v130);
              }
            }

            v260 = 0;
            *a5 = v128;
            applesauce::CF::ArrayRef::~ArrayRef(&v260);
            return 0;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v234 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v234 = *v234;
            }

            LODWORD(buf.__begin_) = 136315906;
            *(&buf.__begin_ + 4) = v234;
            WORD2(buf.__end_) = 2080;
            *(&buf.__end_ + 6) = "GetProperty";
            HIWORD(buf.__end_cap_.__value_) = 1024;
            LODWORD(v263) = v7;
            WORD2(v263) = 1024;
            *(&v263 + 6) = 5696;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
          }

          goto LABEL_169;
        }

        return 0;
      }

      if (v7)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v220 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v220 = *v220;
          }

          LODWORD(buf.__begin_) = 136315906;
          *(&buf.__begin_ + 4) = v220;
          WORD2(buf.__end_) = 2080;
          *(&buf.__end_ + 6) = "GetProperty";
          HIWORD(buf.__end_cap_.__value_) = 1024;
          LODWORD(v263) = v7;
          WORD2(v263) = 1024;
          *(&v263 + 6) = 5683;
          _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
        }

        goto LABEL_169;
      }

      v260 = this + 3504;
      LOBYTE(v261) = 1;
      std::__shared_mutex_base::lock_shared((this + 3504));
      key[0] = 0;
      key[1] = 0;
      v246 = 0;
      while (1)
      {
        v41 = *(this + 15);
        if (v41)
        {
          LODWORD(v42) = (*(*v41 + 24))(v41);
        }

        else
        {
          v42 = (*(this + 13) - *(this + 12)) >> 3;
        }

        if (v7 >= v42)
        {
          break;
        }

        v43 = ausdk::AUScope::GetElement((this + 80), v7);
        if (!v43)
        {
          ausdk::Throw(0xFFFFD583);
        }

        AUSpatialMixerV2InputElement::GetGeometry(&Mutable, v43);
        v44 = key[1];
        if (key[1] >= v246)
        {
          v46 = (key[1] - key[0]) >> 3;
          if ((v46 + 1) >> 61)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v47 = (v246 - key[0]) >> 2;
          if (v47 <= v46 + 1)
          {
            v47 = v46 + 1;
          }

          if (v246 - key[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v48 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v47;
          }

          *(&v263 + 1) = key;
          if (v48)
          {
            std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v48);
          }

          buf.__begin_ = 0;
          buf.__end_ = (8 * v46);
          *&v263 = 0;
          *buf.__end_ = Mutable;
          Mutable = 0;
          buf.__end_cap_.__value_ = (8 * v46 + 8);
          std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(key, &buf);
          v45 = key[1];
          std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(&buf);
        }

        else
        {
          *key[1] = Mutable;
          v45 = v44 + 8;
        }

        key[1] = v45;
        ++v7;
      }

      v119 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(key);
      v248 = v119;
      applesauce::CF::TypeRef::TypeRef(&Mutable, "InputArray");
      applesauce::CF::ArrayRef::operator applesauce::CF::TypeRef(&cf, v119);
      buf.__begin_ = &Mutable;
      buf.__end_ = 1;
      v120 = applesauce::CF::details::make_CFDictionaryRef(&buf);
      value = v120;
      if (cf)
      {
        CFRelease(cf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      applesauce::CF::ArrayRef::~ArrayRef(&v248);
      value = 0;
      *a5 = v120;
      applesauce::CF::DictionaryRef::~DictionaryRef(&value);
      buf.__begin_ = key;
      std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&buf);
      p_buf = &v260;
      goto LABEL_256;
    }

    if (a2 != 5012)
    {
      if (a2 != 5013)
      {
        return Property;
      }

      if (v7 == 1)
      {
        v20 = *(this + 15);
        if (v20)
        {
          LODWORD(v21) = (*(*v20 + 24))(v20);
        }

        else
        {
          v21 = (*(this + 13) - *(this + 12)) >> 3;
        }

        if (v21 > a4)
        {
          v131 = *(this + 15);
          if (v131)
          {
            LODWORD(v132) = (*(*v131 + 24))(v131);
          }

          else
          {
            v132 = (*(this + 13) - *(this + 12)) >> 3;
          }

          if (v132 > a4)
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            buf.__begin_ = (this + 3504);
            LOBYTE(buf.__end_) = 1;
            std::__shared_mutex_base::lock_shared((this + 3504));
            v183 = ausdk::AUBase::Input(this, a4);
            if (*(v183 + 27))
            {
              v184 = 0;
              do
              {
                ChannelLabel = AUSpatialMixerV2InputElement::GetChannelLabel(v183, v184);
                if (HIDWORD(ChannelLabel))
                {
                  applesauce::CF::StringRef::from_get(&v248, @"Enable");
                  EnableForChannel = AUSpatialMixerV2InputElement::GetEnableForChannel(v183, v184);
                  applesauce::CF::NumberRef::NumberRef<BOOL,void>(&v247, EnableForChannel);
                  applesauce::CF::StringRef::operator applesauce::CF::TypeRef(&v260, v248);
                  applesauce::CF::NumberRef::operator applesauce::CF::TypeRef(&v261, v247);
                  key[0] = &v260;
                  key[1] = 1;
                  value = applesauce::CF::details::make_CFDictionaryRef(key);
                  if (v261)
                  {
                    CFRelease(v261);
                  }

                  if (v260)
                  {
                    CFRelease(v260);
                  }

                  applesauce::CF::NumberRef::~NumberRef(&v247);
                  applesauce::CF::StringRef::~StringRef(&v248);
                  v187 = Mutable;
                  applesauce::CF::make_StringRef(@"%u", key, ChannelLabel);
                  CFDictionaryAddValue(v187, key[0], value);
                  applesauce::CF::StringRef::~StringRef(key);
                  applesauce::CF::DictionaryRef::~DictionaryRef(&value);
                }

                ++v184;
              }

              while (v184 < *(v183 + 27));
            }

            v188 = Mutable;
            Mutable = 0;
            *a5 = v188;
            std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](&buf);
            applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&Mutable);
            return 0;
          }

          return 4294956419;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v13 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v237 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v237 = *v237;
          }

          LODWORD(buf.__begin_) = 136315906;
          *(&buf.__begin_ + 4) = v237;
          WORD2(buf.__end_) = 2080;
          *(&buf.__end_ + 6) = "GetProperty";
          HIWORD(buf.__end_cap_.__value_) = 1024;
          LODWORD(v263) = a4;
          WORD2(v263) = 1024;
          *(&v263 + 6) = 5013;
          _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &buf, 0x22u);
        }

        goto LABEL_20;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v233 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v233 = *v233;
        }

        LODWORD(buf.__begin_) = 136315906;
        *(&buf.__begin_ + 4) = v233;
        WORD2(buf.__end_) = 2080;
        *(&buf.__end_ + 6) = "GetProperty";
        HIWORD(buf.__end_cap_.__value_) = 1024;
        LODWORD(v263) = v7;
        WORD2(v263) = 1024;
        *(&v263 + 6) = 5013;
        _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", &buf, 0x22u);
      }

      goto LABEL_169;
    }

    if (v7)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v223 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v223 = *v223;
        }

        LODWORD(buf.__begin_) = 136315906;
        *(&buf.__begin_ + 4) = v223;
        WORD2(buf.__end_) = 2080;
        *(&buf.__end_ + 6) = "GetProperty";
        HIWORD(buf.__end_cap_.__value_) = 1024;
        LODWORD(v263) = v7;
        WORD2(v263) = 1024;
        *(&v263 + 6) = 5012;
        _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
      }

      goto LABEL_169;
    }

    buf.__begin_ = 0;
    ausdk::AUBase::SaveState(this, &buf);
    v83 = buf.__begin_;
    v241 = buf.__begin_;
    v242 = [MEMORY[0x1E695DF90] dictionary];
    v84 = [v83 objectForKeyedSubscript:@"data"];

    BytePtr = CFDataGetBytePtr(v84);
    Length = CFDataGetLength(v84);
    v87 = [MEMORY[0x1E695DF70] array];
    [v242 setObject:v87 forKeyedSubscript:@"InputParameters"];

    if (Length < 1)
    {
LABEL_232:
      *a5 = v242;

      return 0;
    }

    v243 = (BytePtr + Length);
    while (1)
    {
      v88 = bswap32(*BytePtr);
      v89 = BytePtr[2];
      v90 = bswap32(v89);
      v91 = BytePtr + 3;
      if (v88 == 2)
      {
        v92 = [MEMORY[0x1E695DF90] dictionary];
        if (v89)
        {
          do
          {
            v106 = v91;
            v107 = v91[1];
            v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", bswap32(*v91)];
            LODWORD(v109) = bswap32(v107);
            v110 = [MEMORY[0x1E696AD98] numberWithFloat:v109];
            [v92 setObject:v110 forKeyedSubscript:v108];

            v91 += 2;
            --v90;
          }

          while (v90);
          v91 = v106 + 2;
        }

        [v242 setObject:v92 forKeyedSubscript:@"OutputParameters"];
      }

      else if (v88 == 1)
      {
        v98 = BytePtr[1];
        v92 = [MEMORY[0x1E695DF90] dictionary];
        if (v89)
        {
          do
          {
            v99 = v91;
            v100 = v91[1];
            v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", bswap32(*v91)];
            LODWORD(v102) = bswap32(v100);
            v103 = [MEMORY[0x1E696AD98] numberWithFloat:v102];
            [v92 setObject:v103 forKeyedSubscript:v101];

            v91 = v99 + 2;
            --v90;
          }

          while (v90);
          v91 = v99 + 2;
        }

        v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v98)];
        [v92 setObject:v104 forKeyedSubscript:@"ElementNumber"];

        v105 = [v242 objectForKeyedSubscript:@"InputParameters"];
        [v105 addObject:v92];
      }

      else
      {
        if (v88)
        {
          v91 += 2 * v90;
          goto LABEL_231;
        }

        v92 = [MEMORY[0x1E695DF90] dictionary];
        if (v89)
        {
          do
          {
            v93 = v91;
            v94 = v91[1];
            v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", bswap32(*v91)];
            LODWORD(v96) = bswap32(v94);
            v97 = [MEMORY[0x1E696AD98] numberWithFloat:v96];
            [v92 setObject:v97 forKeyedSubscript:v95];

            v91 += 2;
            --v90;
          }

          while (v90);
          v91 = v93 + 2;
        }

        [v242 setObject:v92 forKeyedSubscript:@"GlobalParameters"];
      }

LABEL_231:
      BytePtr = v91;
      if (v91 >= v243)
      {
        goto LABEL_232;
      }
    }
  }

  if ((a2 - 5004) < 3)
  {
    if ((*(this + 6856) & 1) == 0)
    {
      if (v7)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v218 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v218 = *v218;
          }

          LODWORD(buf.__begin_) = 136315906;
          *(&buf.__begin_ + 4) = v218;
          WORD2(buf.__end_) = 2080;
          *(&buf.__end_ + 6) = "GetProperty";
          HIWORD(buf.__end_cap_.__value_) = 1024;
          LODWORD(v263) = v7;
          WORD2(v263) = 1024;
          *(&v263 + 6) = a2;
          _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
        }

        goto LABEL_169;
      }

      v28 = [MEMORY[0x1E695DF70] array];
      if (a2 == 5006)
      {
        v29 = 1;
      }

      else
      {
        v29 = 3;
      }

      if (a2 == 5005)
      {
        v30 = 2;
      }

      else
      {
        v30 = v29;
      }

      AUSM::SoundStage::getWarpingParameterVector(&buf, this + 8720, v30);
      v31 = buf.__begin_;
      v32 = buf.__end_;
      if (buf.__begin_ != buf.__end_)
      {
        v33 = buf.__begin_;
        do
        {
          v34 = [MEMORY[0x1E695DEF0] dataWithBytes:v33 length:32];
          [v28 addObject:v34];

          v33 += 8;
        }

        while (v33 != v32);
      }

      *a5 = v28;
      if (!v31)
      {
        return 0;
      }

LABEL_312:
      operator delete(v31);
    }

    return 0;
  }

  if (a2 != 5010)
  {
    if (a2 != 5011)
    {
      return Property;
    }

    if (v7)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v227 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v227 = *v227;
        }

        LODWORD(buf.__begin_) = 136315906;
        *(&buf.__begin_ + 4) = v227;
        WORD2(buf.__end_) = 2080;
        *(&buf.__end_ + 6) = "GetProperty";
        HIWORD(buf.__end_cap_.__value_) = 1024;
        LODWORD(v263) = v7;
        WORD2(v263) = 1024;
        *(&v263 + 6) = 5011;
        _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
      }

      goto LABEL_169;
    }

    ausdk::AUBase::SaveState(this, a5);
    return 0;
  }

  if (v7)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v19 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v226 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v226 = *v226;
      }

      LODWORD(buf.__begin_) = 136315906;
      *(&buf.__begin_ + 4) = v226;
      WORD2(buf.__end_) = 2080;
      *(&buf.__end_ + 6) = "GetProperty";
      HIWORD(buf.__end_cap_.__value_) = 1024;
      LODWORD(v263) = v7;
      WORD2(v263) = 1024;
      *(&v263 + 6) = 5010;
      _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &buf, 0x22u);
    }

    goto LABEL_169;
  }

  buf.__begin_ = 0;
  buf.__end_ = 0;
  v117 = atomic_load(this + 1574);
  if (v117 == 5)
  {
    v118 = xmmword_1DE097CE0;
  }

  else
  {
    _X0 = 0;
    _X3 = 0;
    __asm
    {
      CASPAL          X2, X3, X0, X1, [X8]
      CASPAL          X0, X1, X0, X1, [X8]
    }

    v141 = vnegq_f32(_X0);
    v142 = vtrn2q_s32(_X0, vtrn1q_s32(_X0, v141));
    v143 = vrev64q_s32(_X0);
    v143.i32[0] = v141.i32[1];
    v143.i32[3] = v141.i32[2];
    v118 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_X0, _X2, 3), v143, _X2, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(_X0, v141, 8uLL), _X2, 1), vextq_s8(v142, v142, 8uLL), _X2.f32[0]));
  }

  _X0 = 0;
  _X1 = 0;
  *&buf.__begin_ = v118;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  key[1] = 0;
  key[0] = _X0;
  v147 = COERCE_FLOAT(atomic_load(this + 978));
  if (v147 >= 0.0)
  {
    v148 = vmulq_f32(*key, *key);
    v149 = sqrtf(v148.f32[2] + vaddv_f32(*v148.f32));
    if (v149 > 0.0 && (v147 / v149) < 1.0)
    {
      *key = vmulq_n_f32(*key, v147 / v149);
    }
  }

  v150 = atomic_load(this + 1573);
  if (v150 == 2)
  {
    Mutable = objc_opt_new();
    v151 = objc_opt_new();
    v152 = atomic_load(this + 5396);
    if (v152)
    {
      (*(*this + 88))(this, 5012, 0, 0, &Mutable);
      v260 = 0;
      (*(*this + 88))(this, 5000, 0, 0, &v260);
      [v151 setObject:v260 forKeyedSubscript:AUSM::kFactoryPresetGlobalPropertiesKey];
    }

    v260 = this + 3504;
    LOBYTE(v261) = 1;
    std::__shared_mutex_base::lock_shared((this + 3504));
    v153 = *(this + 15);
    if (v153)
    {
      LODWORD(v154) = (*(*v153 + 24))(v153);
    }

    else
    {
      v154 = (*(this + 13) - *(this + 12)) >> 3;
    }

    v205 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v154];
    v206 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v154];
    if (v154)
    {
      v207 = 0;
      do
      {
        if (!v207 && (v211 = *(*(this + 862) + 544)) != 0 && ((v212 = atomic_load((v211 + 97)), (v212 & 1) != 0) || (v213 = atomic_load((*(*(this + 862) + 544) + 96)), (v213 & 1) != 0)))
        {
          v214 = [MEMORY[0x1E695DEC8] array];
          [v205 addObject:v214];
        }

        else
        {
          v208 = ausdk::AUScope::GetElement((this + 80), v207);
          if (!v208)
          {
            ausdk::Throw(0xFFFFD583);
          }

          AUSpatialMixerV2InputElement::GetGeometry(&value, v208);
          v209 = value;
          value = 0;
          [v205 addObject:v209];
        }

        v210 = atomic_load(this + 5396);
        if (v210)
        {
          value = 0;
          (*(*this + 88))(this, 5000, 1, v207, &value);
          [v206 addObject:value];
        }

        v207 = (v207 + 1);
      }

      while (v154 != v207);
    }

    if ([v206 count] && v151)
    {
      [v151 setObject:v206 forKeyedSubscript:AUSM::kFactoryPresetInputPropertiesKey];
    }

    v258[0] = @"HeadOrientationQuaternion";
    v215 = [MEMORY[0x1E695DEF0] dataWithBytes:&buf length:16];
    v259[0] = v215;
    v258[1] = @"ListenerPosition";
    v216 = [MEMORY[0x1E695DEF0] dataWithBytes:key length:12];
    v259[1] = v216;
    v259[2] = v205;
    v258[2] = @"Geometry";
    v258[3] = @"Parameters";
    v259[3] = Mutable;
    v259[4] = v151;
    v258[4] = @"Properties";
    v258[5] = @"Initialized";
    v217 = [MEMORY[0x1E696AD98] numberWithBool:*(this + 17)];
    v259[5] = v217;
    v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v259 forKeys:v258 count:6];

    std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](&v260);
  }

  else
  {
    v260 = 0;
    ausdk::AUBase::SaveState(this, &v260);
    v256[0] = @"PresetLoaded";
    v155 = MEMORY[0x1E696AD98];
    v156 = atomic_load(this + 3392);
    v257[0] = [v155 numberWithBool:v156 & 1];
    v256[1] = @"Initialized";
    v244 = v257[0];
    v157 = [MEMORY[0x1E696AD98] numberWithBool:*(this + 17)];
    v257[1] = v157;
    v256[2] = @"Reinitialized";
    v158 = MEMORY[0x1E696AD98];
    v159 = atomic_load(this + 3393);
    v160 = [v158 numberWithBool:v159 & 1];
    v257[2] = v160;
    v256[3] = @"ChannelLayoutChanged";
    v161 = MEMORY[0x1E696AD98];
    v162 = atomic_load(this + 3394);
    v163 = [v161 numberWithBool:v162 & 1];
    v257[3] = v163;
    v256[4] = @"PositionParametersChanged";
    v164 = MEMORY[0x1E696AD98];
    v165 = atomic_load(this + 3395);
    v166 = [v164 numberWithBool:v165 & 1];
    v257[4] = v166;
    v256[5] = @"HeadOrientationQuaternion";
    v167 = [MEMORY[0x1E695DEF0] dataWithBytes:&buf length:16];
    v257[5] = v167;
    v256[6] = @"ListenerPosition";
    v168 = [MEMORY[0x1E695DEF0] dataWithBytes:key length:12];
    v256[7] = @"AllParameters";
    v169 = v260;
    v257[6] = v168;
    v257[7] = v260;
    v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v257 forKeys:v256 count:8];
  }

  Property = 0;
  atomic_store(0, this + 3392);
  atomic_store(0, this + 3393);
  atomic_store(0, this + 3394);
  atomic_store(0, this + 3395);
  *a5 = v170;
  return Property;
}

uint64_t AUSM::InputGeometry::getExclusionZones(AUSM::InputGeometry *this, uint64_t a2)
{
  if (caulk::pooled_semaphore_mutex::try_lock((a2 + 40)))
  {
    v4 = atomic_load((a2 + 44));
    if (v4)
    {
      *(a2 + 24) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
      atomic_store(0, (a2 + 44));
    }

    caulk::pooled_semaphore_mutex::_unlock((a2 + 40));
  }

  v5 = *(a2 + 32);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v6 = *v5;
  v7 = v5[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *v5) >> 2);

  return std::vector<AUSM::ExclusionZone>::__init_with_size[abi:ne200100]<AUSM::ExclusionZone*,AUSM::ExclusionZone*>(this, v6, v7, v8);
}

void AUSM::ExclusionZone::exclusionZonesToDictionary(CFDictionaryRef *a1, _DWORD *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  if (a2 != a3)
  {
    v7[0] = 0;
    v7[1] = 0;
    p_valuePtr = v7;
    LODWORD(valuePtr) = *a2;
    if (CFNumberCreate(0, kCFNumberIntType, &valuePtr))
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v8);
  applesauce::CF::TypeRef::TypeRef(&valuePtr, "ExclusionZones");
  CFRetain(v3);
  cf = v3;
  p_valuePtr = &valuePtr;
  v7[0] = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(&p_valuePtr);
  if (cf)
  {
    CFRelease(cf);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  CFRelease(v3);
  p_valuePtr = v8;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&p_valuePtr);
}

void sub_1DDCFDA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

_DWORD *AUSM::ExclusionZone::arrayFromZones(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = 0;
    while (*result)
    {
      if (*result == 1)
      {
        *(a3 + 4 * v3) = 1065353216;
        *(a3 + 4 * (v3 + 1)) = result[1];
        v4 = v3 + 2;
        v5 = 7;
        v6 = 6;
        v7 = 5;
        v8 = 4;
        v9 = result[2];
        v10 = 3;
        v11 = 3;
        v12 = 4;
        v13 = 5;
        v14 = 6;
LABEL_7:
        *(a3 + 4 * v4) = v9;
        *(a3 + 4 * (v3 + v10)) = result[v11];
        *(a3 + 4 * (v3 + v8)) = result[v12];
        *(a3 + 4 * (v3 + v7)) = result[v13];
        *(a3 + 4 * (v3 + v6)) = result[v14];
        v3 += v5;
      }

      result += 7;
      if (result == a2)
      {
        return result;
      }
    }

    v5 = 5;
    v11 = 1;
    v7 = 3;
    v8 = 2;
    v10 = 1;
    v9 = 0;
    v4 = v3;
    v12 = 2;
    v13 = 3;
    v14 = 4;
    v6 = 4;
    goto LABEL_7;
  }

  return result;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],float>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "FilterLength");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCFDD44(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

id AUSpatialMixerV2::GetFileNamesDictionary(AUSpatialMixerV2 *this)
{
  v70 = *MEMORY[0x1E69E9840];
  v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = MEMORY[0x1E696AEC0];
  IR::getProductTypeXTCIRFullPath(buf, v53);
  if (v69 >= 0)
  {
    v2 = buf;
  }

  else
  {
    v2 = *buf;
  }

  v3 = [v1 stringWithUTF8String:v2];
  [(IR *)v53 setObject:v3 forKeyedSubscript:@"XTCIRFullPath"];

  if (v69 < 0)
  {
    operator delete(*buf);
  }

  v5 = MEMORY[0x1E696AEC0];
  IR::getGenericIRBasePath(buf, v4);
  if (v69 >= 0)
  {
    v6 = buf;
  }

  else
  {
    v6 = *buf;
  }

  v7 = [v5 stringWithUTF8String:v6];
  [(IR *)v53 setObject:v7 forKeyedSubscript:@"HRIRFullPath"];

  if (v69 < 0)
  {
    operator delete(*buf);
  }

  v51 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v8 = MEMORY[0x1E696AEC0];
  IR::getProductTypeXTCIRFullPath(buf, v51);
  if (v69 >= 0)
  {
    v9 = buf;
  }

  else
  {
    v9 = *buf;
  }

  v10 = [v8 stringWithUTF8String:v9];
  v63 = 0;
  v11 = [(IR *)v51 subpathsOfDirectoryAtPath:v10 error:&v63];
  v50 = v63;
  v12 = [v11 sortedArrayUsingSelector:?];

  if (v69 < 0)
  {
    operator delete(*buf);
  }

  if (v50)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v13 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v46 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v46 = *v46;
      }

      *buf = 136315394;
      *&buf[4] = v46;
      v67 = 2080;
      v68 = "GetFileNamesDictionary";
      _os_log_error_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "[%s|%s] XTCIRFileList error or empty list", buf, 0x16u);
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v12;
  v14 = 0;
  v15 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v15)
  {
    v16 = *v60;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v59 + 1) + 8 * i);
        v19 = [v18 pathExtension];
        v20 = [v19 isEqualToString:@"ir"];

        if (v20)
        {
          v14 = (v14 + 1);
          v21 = MEMORY[0x1E696AEC0];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
          v23 = [v21 stringWithFormat:@"XTCIRFile%@", v22];
          [(IR *)v53 setObject:v18 forKeyedSubscript:v23];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v15);
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
  [(IR *)v53 setObject:v24 forKeyedSubscript:@"NumXTCIRFiles"];

  v25 = MEMORY[0x1E696AEC0];
  IR::getGenericIRBasePath(buf, v26);
  if (v69 >= 0)
  {
    v27 = buf;
  }

  else
  {
    v27 = *buf;
  }

  v28 = [v25 stringWithUTF8String:v27];
  v58 = v50;
  v29 = [(IR *)v51 subpathsOfDirectoryAtPath:v28 error:&v58];
  v49 = v58;

  v30 = [v29 sortedArrayUsingSelector:sel_compare_];

  if (v69 < 0)
  {
    operator delete(*buf);
  }

  if (v49)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v31 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v47 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v47 = *v47;
      }

      *buf = 136315394;
      *&buf[4] = v47;
      v67 = 2080;
      v68 = "GetFileNamesDictionary";
      _os_log_error_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_ERROR, "[%s|%s] IRFileList error or empty list", buf, 0x16u);
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v32 = v30;
  v33 = 0;
  v34 = [v32 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v34)
  {
    v35 = *v55;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v55 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v54 + 1) + 8 * j);
        v38 = [v37 pathExtension];
        v39 = [v38 isEqualToString:@"ir"];

        if (v39)
        {
          v33 = (v33 + 1);
          v40 = MEMORY[0x1E696AEC0];
          v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v33];
          v42 = [v40 stringWithFormat:@"IRFile%@", v41];
          [(IR *)v53 setObject:v37 forKeyedSubscript:v42];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v34);
  }

  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v33];
  [(IR *)v53 setObject:v43 forKeyedSubscript:@"NumIRFiles"];

  v44 = [(IR *)v53 copy];

  return v44;
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFNumberRef *applesauce::CF::NumberRef::NumberRef<BOOL,void>(CFNumberRef *a1, char a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void *applesauce::CF::StringRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

void *applesauce::CF::NumberRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_1DDCFE774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *applesauce::CF::ArrayRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

void std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_1DDCFEAA0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v1 + 32));
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void sub_1DDCFEC10(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v1 + 32));
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void sub_1DDCFED80(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v1 + 32));
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<applesauce::CF::StringRef,applesauce::CF::TypeRef>(const void ***a1)
{
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v18, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = *v19;
    do
    {
      if (v5 >= *&v19[2])
      {
        v6 = (v5 - v18) >> 4;
        if ((v6 + 1) >> 60)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v7 = (*&v19[2] - v18) >> 3;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (*&v19[2] - v18 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v23 = &v18;
        if (v8)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v8);
        }

        v20 = 0;
        v21 = 16 * v6;
        v22 = (16 * v6);
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>((16 * v6), v3[4], v3 + 5);
        *&v22 = v22 + 16;
        v9 = &v18[v21 - *v19];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v18, v18, *v19, v9);
        v10 = v18;
        v11 = *&v19[2];
        v18 = v9;
        v17 = v22;
        *v19 = v22;
        *&v22 = v10;
        *(&v22 + 1) = v11;
        v20 = v10;
        v21 = v10;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v20);
        v5 = v17;
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(v5, v3[4], v3 + 5);
        v5 += 16;
      }

      *v19 = v5;
      v12 = v3[1];
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
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v18);
  v20 = &v18;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v20);
  return CFDictionaryRef;
}

void sub_1DDCFEF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(*a1);
    std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    operator delete(a1);
  }
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !v4[1])
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v4[1];
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 2;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_1DDCFF374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(void *result, CFTypeRef cf, const void **a3)
{
  v5 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v5 = cf;
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  v5[1] = v6;
  return result;
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const __CFString **std::__tree<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__find_equal<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>(uint64_t a1, const __CFString ***a2, const __CFString **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a3, v4 + 4) < 2)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7[4], a3) < 2)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = __p[4];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t AUSpatialMixerV2::GetPropertyInfo(AUSpatialMixerV2 *this, signed int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    if (a4)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v15 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v27 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v27 = *v27;
        }

        LODWORD(v76.__begin_) = 136315906;
        *(&v76.__begin_ + 4) = v27;
        WORD2(v76.__end_) = 2080;
        *(&v76.__end_ + 6) = "GetPropertyInfo";
        HIWORD(v76.__end_cap_.__value_) = 1024;
        v77 = a4;
        v78 = 1024;
        v79 = a2;
        _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid output scope element = %u (property = %u)", &v76, 0x22u);
      }

      goto LABEL_20;
    }

    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v12 = (Element + 248);
    goto LABEL_23;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return 4294956417;
    }

    v12 = (this + 3744);
LABEL_23:
    PropertyInfo = AUSM::Properties::getPropertyInfo(v12, a2, a5, a6);
    goto LABEL_24;
  }

  v13 = *(this + 15);
  if (v13)
  {
    LODWORD(v14) = (*(*v13 + 24))(v13);
  }

  else
  {
    v14 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v14 <= a4)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v15 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v29 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v29 = *v29;
      }

      LODWORD(v76.__begin_) = 136315906;
      *(&v76.__begin_ + 4) = v29;
      WORD2(v76.__end_) = 2080;
      *(&v76.__end_ + 6) = "GetPropertyInfo";
      HIWORD(v76.__end_cap_.__value_) = 1024;
      v77 = a4;
      v78 = 1024;
      v79 = a2;
      _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid input scope element = %u (property = %u)", &v76, 0x22u);
    }

    goto LABEL_20;
  }

  v76.__begin_ = (this + 3504);
  LOBYTE(v76.__end_) = 1;
  std::__shared_mutex_base::lock_shared((this + 3504));
  v17 = ausdk::AUScope::GetElement((this + 80), a4);
  if (!v17)
  {
    ausdk::Throw(0xFFFFD583);
  }

  PropertyInfo = AUSM::Properties::getPropertyInfo((v17 + 832), a2, a5, a6);
  std::__shared_mutex_base::unlock_shared((this + 3504));
LABEL_24:
  if (PropertyInfo != -10879)
  {
    return PropertyInfo;
  }

  PropertyInfo = 4294956417;
  if (a2 <= 5003)
  {
    if (a2 > 3225)
    {
      if (a2 <= 3269)
      {
        if (a2 != 3226)
        {
          if (a2 != 3268)
          {
            return PropertyInfo;
          }

          if (a3)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v19 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v57 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v57 = *v57;
              }

              LODWORD(v76.__begin_) = 136315906;
              *(&v76.__begin_ + 4) = v57;
              WORD2(v76.__end_) = 2080;
              *(&v76.__end_ + 6) = "GetPropertyInfo";
              HIWORD(v76.__end_cap_.__value_) = 1024;
              v77 = a3;
              v78 = 1024;
              v79 = 3268;
              _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
            }

            goto LABEL_167;
          }

          goto LABEL_211;
        }

        if (a3 != 1)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v68 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v68 = *v68;
            }

            LODWORD(v76.__begin_) = 136315906;
            *(&v76.__begin_ + 4) = v68;
            WORD2(v76.__end_) = 2080;
            *(&v76.__end_ + 6) = "GetPropertyInfo";
            HIWORD(v76.__end_cap_.__value_) = 1024;
            v77 = a3;
            v78 = 1024;
            v79 = 3226;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", &v76, 0x22u);
          }

          goto LABEL_167;
        }

        v22 = *(this + 15);
        if (v22)
        {
          LODWORD(v23) = (*(*v22 + 24))(v22);
        }

        else
        {
          v23 = (*(this + 13) - *(this + 12)) >> 3;
        }

        if (v23 <= a4)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v15 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v71 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v71 = *v71;
            }

            LODWORD(v76.__begin_) = 136315906;
            *(&v76.__begin_ + 4) = v71;
            WORD2(v76.__end_) = 2080;
            *(&v76.__end_ + 6) = "GetPropertyInfo";
            HIWORD(v76.__end_cap_.__value_) = 1024;
            v77 = a4;
            v78 = 1024;
            v79 = 3226;
            _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &v76, 0x22u);
          }

          goto LABEL_20;
        }

        v40 = ausdk::AUBase::Input(this, a4);
        AUSM::InputGeometry::getExclusionZones(&v76, v40 + 1408);
        begin = v76.__begin_;
        if (v76.__begin_ == v76.__end_)
        {
          v47 = 0;
        }

        else
        {
          v42 = 0;
          v43 = v76.__begin_;
          do
          {
            v45 = *v43;
            v43 += 7;
            v44 = v45;
            v46 = v42 + 7;
            if (!v45)
            {
              v42 += 5;
            }

            if (v44 == 1)
            {
              v42 = v46;
            }
          }

          while (v43 != v76.__end_);
          v47 = 4 * v42;
        }

        *a5 = v47;
        *a6 = 1;
        if (begin)
        {
          goto LABEL_230;
        }

        return 0;
      }

      if (a2 != 3270)
      {
        if (a2 == 5001)
        {
          goto LABEL_89;
        }

        if (a2 != 5002)
        {
          return PropertyInfo;
        }

        if (a3 >= 2)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v65 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v65 = *v65;
            }

            LODWORD(v76.__begin_) = 136315906;
            *(&v76.__begin_ + 4) = v65;
            WORD2(v76.__end_) = 2080;
            *(&v76.__end_ + 6) = "GetPropertyInfo";
            HIWORD(v76.__end_cap_.__value_) = 1024;
            v77 = a3;
            v78 = 1024;
            v79 = 5002;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", &v76, 0x22u);
          }

          goto LABEL_167;
        }

        if (a3 == 1)
        {
          v32 = *(this + 15);
          if (v32)
          {
            LODWORD(v33) = (*(*v32 + 24))(v32);
          }

          else
          {
            v33 = (*(this + 13) - *(this + 12)) >> 3;
          }

          if (v33 <= a4)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v15 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v74 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v74 = *v74;
              }

              LODWORD(v76.__begin_) = 136315906;
              *(&v76.__begin_ + 4) = v74;
              WORD2(v76.__end_) = 2080;
              *(&v76.__end_ + 6) = "GetPropertyInfo";
              HIWORD(v76.__end_cap_.__value_) = 1024;
              v77 = a4;
              v78 = 1024;
              v79 = 5002;
              _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &v76, 0x22u);
            }

            goto LABEL_20;
          }
        }

        goto LABEL_211;
      }

      if (a3)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v54 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v54 = *v54;
          }

          LODWORD(v76.__begin_) = 136315906;
          *(&v76.__begin_ + 4) = v54;
          WORD2(v76.__end_) = 2080;
          *(&v76.__end_ + 6) = "GetPropertyInfo";
          HIWORD(v76.__end_cap_.__value_) = 1024;
          v77 = a3;
          v78 = 1024;
          v79 = 3270;
          _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
        }

        goto LABEL_167;
      }
    }

    else
    {
      if (a2 > 3214)
      {
        switch(a2)
        {
          case 3215:
            if (a3 >= 2)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v19 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v67 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v67 = *v67;
                }

                LODWORD(v76.__begin_) = 136315906;
                *(&v76.__begin_ + 4) = v67;
                WORD2(v76.__end_) = 2080;
                *(&v76.__end_ + 6) = "GetPropertyInfo";
                HIWORD(v76.__end_cap_.__value_) = 1024;
                v77 = a3;
                v78 = 1024;
                v79 = 3215;
                _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", &v76, 0x22u);
              }

              goto LABEL_167;
            }

            if (a3 == 1)
            {
              v34 = *(this + 15);
              if (v34)
              {
                LODWORD(v35) = (*(*v34 + 24))(v34);
              }

              else
              {
                v35 = (*(this + 13) - *(this + 12)) >> 3;
              }

              if (v35 <= a4)
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v15 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  v75 = (this + 3752);
                  if (*(this + 3775) < 0)
                  {
                    v75 = *v75;
                  }

                  LODWORD(v76.__begin_) = 136315906;
                  *(&v76.__begin_ + 4) = v75;
                  WORD2(v76.__end_) = 2080;
                  *(&v76.__end_ + 6) = "GetPropertyInfo";
                  HIWORD(v76.__end_cap_.__value_) = 1024;
                  v77 = a4;
                  v78 = 1024;
                  v79 = 3215;
                  _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &v76, 0x22u);
                }

                goto LABEL_20;
              }

              v51 = ausdk::AUBase::Input(this, a4);
              v52 = *(v51 + 248);
              if (*(v51 + 256) != v52)
              {
                AUSpatialMixerV2ChannelProcessor::getDecorrFilterLengthsOnReverbSend(&v76, *v52);
LABEL_221:
                begin = v76.__begin_;
                *a5 = (LODWORD(v76.__end_) - LODWORD(v76.__begin_)) & 0xFFFFFFFC;
                *a6 = 1;
                if (begin)
                {
                  v76.__end_ = begin;
LABEL_230:
                  operator delete(begin);
                }

                return 0;
              }
            }

            else
            {
              v38 = ausdk::AUBase::Input(this, 0);
              v39 = *(v38 + 248);
              if (a4 < ((*(v38 + 256) - v39) >> 3))
              {
                AUSpatialMixerV2ChannelProcessor::getDecorrFilterLengthsOnReverbSend(&v76, *(v39 + 8 * a4));
                goto LABEL_221;
              }
            }

            break;
          case 3216:
            if (a3 >= 2)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v19 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v64 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v64 = *v64;
                }

                LODWORD(v76.__begin_) = 136315906;
                *(&v76.__begin_ + 4) = v64;
                WORD2(v76.__end_) = 2080;
                *(&v76.__end_ + 6) = "GetPropertyInfo";
                HIWORD(v76.__end_cap_.__value_) = 1024;
                v77 = a3;
                v78 = 1024;
                v79 = 3216;
                _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", &v76, 0x22u);
              }

              goto LABEL_167;
            }

            if (a3 == 1)
            {
              v30 = *(this + 15);
              if (v30)
              {
                LODWORD(v31) = (*(*v30 + 24))(v30);
              }

              else
              {
                v31 = (*(this + 13) - *(this + 12)) >> 3;
              }

              if (v31 <= a4)
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v15 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  v73 = (this + 3752);
                  if (*(this + 3775) < 0)
                  {
                    v73 = *v73;
                  }

                  LODWORD(v76.__begin_) = 136315906;
                  *(&v76.__begin_ + 4) = v73;
                  WORD2(v76.__end_) = 2080;
                  *(&v76.__end_ + 6) = "GetPropertyInfo";
                  HIWORD(v76.__end_cap_.__value_) = 1024;
                  v77 = a4;
                  v78 = 1024;
                  v79 = 3216;
                  _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &v76, 0x22u);
                }

                goto LABEL_20;
              }

              v49 = ausdk::AUBase::Input(this, a4);
              v50 = *(v49 + 248);
              if (*(v49 + 256) != v50)
              {
                AUSpatialMixerV2ChannelProcessor::getDecorrFilterCoeffsOnReverbSend(&v76, *v50);
                goto LABEL_221;
              }
            }

            else
            {
              v36 = ausdk::AUBase::Input(this, 0);
              v37 = *(v36 + 248);
              if (a4 < ((*(v36 + 256) - v37) >> 3))
              {
                AUSpatialMixerV2ChannelProcessor::getDecorrFilterCoeffsOnReverbSend(&v76, *(v37 + 8 * a4));
                goto LABEL_221;
              }
            }

            break;
          case 3225:
            if (a3 != 1)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v19 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v66 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v66 = *v66;
                }

                LODWORD(v76.__begin_) = 136315906;
                *(&v76.__begin_ + 4) = v66;
                WORD2(v76.__end_) = 2080;
                *(&v76.__end_ + 6) = "GetPropertyInfo";
                HIWORD(v76.__end_cap_.__value_) = 1024;
                v77 = a3;
                v78 = 1024;
                v79 = 3225;
                _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", &v76, 0x22u);
              }

              goto LABEL_167;
            }

            v20 = *(this + 15);
            if (v20)
            {
              LODWORD(v21) = (*(*v20 + 24))(v20);
            }

            else
            {
              v21 = (*(this + 13) - *(this + 12)) >> 3;
            }

            if (v21 <= a4)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v15 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v70 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v70 = *v70;
                }

                LODWORD(v76.__begin_) = 136315906;
                *(&v76.__begin_ + 4) = v70;
                WORD2(v76.__end_) = 2080;
                *(&v76.__end_ + 6) = "GetPropertyInfo";
                HIWORD(v76.__end_cap_.__value_) = 1024;
                v77 = a4;
                v78 = 1024;
                v79 = 3225;
                _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &v76, 0x22u);
              }

              goto LABEL_20;
            }

LABEL_211:
            PropertyInfo = 0;
            v28 = 8;
            goto LABEL_212;
          default:
            return PropertyInfo;
        }

        *a5 = 0;
        *a6 = 1;
        return 0;
      }

      if (a2 == 3107)
      {
        if (a3)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v55 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v55 = *v55;
            }

            LODWORD(v76.__begin_) = 136315906;
            *(&v76.__begin_ + 4) = v55;
            WORD2(v76.__end_) = 2080;
            *(&v76.__end_ + 6) = "GetPropertyInfo";
            HIWORD(v76.__end_cap_.__value_) = 1024;
            v77 = a3;
            v78 = 1024;
            v79 = 3107;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
          }

          goto LABEL_167;
        }

        goto LABEL_211;
      }

      if (a2 != 3116)
      {
        return PropertyInfo;
      }

      if (a3)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v56 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v56 = *v56;
          }

          LODWORD(v76.__begin_) = 136315906;
          *(&v76.__begin_ + 4) = v56;
          WORD2(v76.__end_) = 2080;
          *(&v76.__end_ + 6) = "GetPropertyInfo";
          HIWORD(v76.__end_cap_.__value_) = 1024;
          v77 = a3;
          v78 = 1024;
          v79 = 3116;
          _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
        }

        goto LABEL_167;
      }
    }

    PropertyInfo = 0;
    v24 = 4;
    goto LABEL_141;
  }

  if (a2 > 5012)
  {
    if (a2 > 5695)
    {
      if (a2 != 5696)
      {
        if (a2 == 104016)
        {
          if (a3)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v19 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v59 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v59 = *v59;
              }

              LODWORD(v76.__begin_) = 136315906;
              *(&v76.__begin_ + 4) = v59;
              WORD2(v76.__end_) = 2080;
              *(&v76.__end_ + 6) = "GetPropertyInfo";
              HIWORD(v76.__end_cap_.__value_) = 1024;
              v77 = a3;
              v78 = 1024;
              v79 = 104016;
              _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
            }

            goto LABEL_167;
          }
        }

        else
        {
          if (a2 != 104017)
          {
            return PropertyInfo;
          }

          if (a3)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v19 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v62 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v62 = *v62;
              }

              LODWORD(v76.__begin_) = 136315906;
              *(&v76.__begin_ + 4) = v62;
              WORD2(v76.__end_) = 2080;
              *(&v76.__end_ + 6) = "GetPropertyInfo";
              HIWORD(v76.__end_cap_.__value_) = 1024;
              v77 = a3;
              v78 = 1024;
              v79 = 104017;
              _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
            }

            goto LABEL_167;
          }
        }

        PropertyInfo = 0;
        v28 = 16;
LABEL_212:
        *a5 = v28;
        *a6 = 1;
        return PropertyInfo;
      }

      if (a3)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v63 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v63 = *v63;
          }

          LODWORD(v76.__begin_) = 136315906;
          *(&v76.__begin_ + 4) = v63;
          WORD2(v76.__end_) = 2080;
          *(&v76.__end_ + 6) = "GetPropertyInfo";
          HIWORD(v76.__end_cap_.__value_) = 1024;
          v77 = a3;
          v78 = 1024;
          v79 = 5696;
          _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
        }

        goto LABEL_167;
      }
    }

    else
    {
      if (a2 != 5013)
      {
        if (a2 == 5677)
        {
          PropertyInfo = 0;
          *a5 = 0;
LABEL_142:
          *a6 = 0;
          return PropertyInfo;
        }

        if (a2 != 5683)
        {
          return PropertyInfo;
        }

        if (a3)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v60 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v60 = *v60;
            }

            LODWORD(v76.__begin_) = 136315906;
            *(&v76.__begin_ + 4) = v60;
            WORD2(v76.__end_) = 2080;
            *(&v76.__end_ + 6) = "GetPropertyInfo";
            HIWORD(v76.__end_cap_.__value_) = 1024;
            v77 = a3;
            v78 = 1024;
            v79 = 5683;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
          }

          goto LABEL_167;
        }

        goto LABEL_123;
      }

      if (a3 != 1)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v69 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v69 = *v69;
          }

          LODWORD(v76.__begin_) = 136315906;
          *(&v76.__begin_ + 4) = v69;
          WORD2(v76.__end_) = 2080;
          *(&v76.__end_ + 6) = "GetPropertyInfo";
          HIWORD(v76.__end_cap_.__value_) = 1024;
          v77 = a3;
          v78 = 1024;
          v79 = 5013;
          _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", &v76, 0x22u);
        }

        goto LABEL_167;
      }

      v25 = *(this + 15);
      if (v25)
      {
        LODWORD(v26) = (*(*v25 + 24))(v25);
      }

      else
      {
        v26 = (*(this + 13) - *(this + 12)) >> 3;
      }

      if (v26 <= a4)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v15 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v72 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v72 = *v72;
          }

          LODWORD(v76.__begin_) = 136315906;
          *(&v76.__begin_ + 4) = v72;
          WORD2(v76.__end_) = 2080;
          *(&v76.__end_ + 6) = "GetPropertyInfo";
          HIWORD(v76.__end_cap_.__value_) = 1024;
          v77 = a4;
          v78 = 1024;
          v79 = 5013;
          _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", &v76, 0x22u);
        }

LABEL_20:

        return 4294956419;
      }
    }

    goto LABEL_211;
  }

  if (a2 > 5009)
  {
    if (a2 != 5010)
    {
      if (a2 == 5011)
      {
        if (a3)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v19 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v58 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v58 = *v58;
            }

            LODWORD(v76.__begin_) = 136315906;
            *(&v76.__begin_ + 4) = v58;
            WORD2(v76.__end_) = 2080;
            *(&v76.__end_ + 6) = "GetPropertyInfo";
            HIWORD(v76.__end_cap_.__value_) = 1024;
            v77 = a3;
            v78 = 1024;
            v79 = 5011;
            _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
          }

          goto LABEL_167;
        }
      }

      else if (a3)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v61 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v61 = *v61;
          }

          LODWORD(v76.__begin_) = 136315906;
          *(&v76.__begin_ + 4) = v61;
          WORD2(v76.__end_) = 2080;
          *(&v76.__end_ + 6) = "GetPropertyInfo";
          HIWORD(v76.__end_cap_.__value_) = 1024;
          v77 = a3;
          v78 = 1024;
          v79 = 5012;
          _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
        }

        goto LABEL_167;
      }

LABEL_123:
      PropertyInfo = 0;
      v24 = 8;
LABEL_141:
      *a5 = v24;
      goto LABEL_142;
    }

LABEL_89:
    if (a3)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_167;
      }

      v48 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v48 = *v48;
      }

      goto LABEL_235;
    }

    goto LABEL_123;
  }

  if ((a2 - 5004) < 3)
  {
    if (a3)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_167;
      }

      v48 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v48 = *v48;
      }

LABEL_235:
      LODWORD(v76.__begin_) = 136315906;
      *(&v76.__begin_ + 4) = v48;
      WORD2(v76.__end_) = 2080;
      *(&v76.__end_ + 6) = "GetPropertyInfo";
      HIWORD(v76.__end_cap_.__value_) = 1024;
      v77 = a3;
      v78 = 1024;
      v79 = a2;
      _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", &v76, 0x22u);
LABEL_167:

      return 4294956430;
    }

    goto LABEL_211;
  }

  return PropertyInfo;
}

void sub_1DDD010FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2::Reset(AUSpatialMixerV2 *this, int a2, unsigned int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v6 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = this + 3752;
    if (*(this + 3775) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315906;
    v31 = v7;
    v32 = 2080;
    *v33 = "Reset";
    *&v33[8] = 1024;
    *&v33[10] = a2;
    v34 = 1024;
    v35 = a3;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] scope = %u, element = %u", buf, 0x22u);
  }

  std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 3456, this + 3472);
  if (!a2)
  {
    v10 = atomic_load(this + 9897);
    if (v10)
    {
      v11 = *(this + 15);
      if (v11)
      {
        LODWORD(v12) = (*(*v11 + 24))(v11);
        if (!v12)
        {
          goto LABEL_28;
        }

LABEL_25:
        v17 = 0;
        do
        {
          Element = ausdk::AUScope::GetElement((this + 80), v17);
          v19 = Element;
          if (!Element)
          {
            ausdk::Throw(0xFFFFD583);
          }

          (*(*Element + 120))(Element);
          *(v19 + 672) = 0u;
          *(v19 + 688) = 0u;
          *(v19 + 640) = 0u;
          *(v19 + 656) = 0u;
          *(v19 + 608) = 0u;
          *(v19 + 624) = 0u;
          *(v19 + 576) = 0u;
          *(v19 + 592) = 0u;
          *(v19 + 544) = 0u;
          *(v19 + 560) = 0u;
          *(v19 + 512) = 0u;
          *(v19 + 528) = 0u;
          *(v19 + 496) = 0u;
          *(v19 + 736) = 0x3FF0000000000000;
          ++v17;
          *(v19 + 752) = 1;
        }

        while (v12 != v17);
        goto LABEL_28;
      }

      v12 = (*(this + 13) - *(this + 12)) >> 3;
      if (v12)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    IR::DynamicIRProcessor::reset((this + 2104));
    IR::DynamicIRProcessor::reset((this + 2288));
    IR::SharedIRBuses::reset((this + 2480));
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 2032);
    IR::IRProcessor::reset(*(this + 253));
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 2032);
    caulk::pooled_semaphore_mutex::_lock((this + 1968));
    FeedbackDelayNetwork<float>::Reset(this + 43);
    caulk::pooled_semaphore_mutex::_unlock((this + 1968));
    v20 = *(this + 464);
    for (i = *(this + 465); v20 != i; ++v20)
    {
      v22 = *v20;
      v23 = **v20;
      if (v23)
      {
        v24 = AudioUnitReset(v23, 0, 0);
        if (v24)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v25 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = v22 + 9;
            if (*(v22 + 95) < 0)
            {
              v26 = *v26;
            }

            *buf = 136315650;
            v31 = "reset";
            v32 = 1024;
            *v33 = v24;
            *&v33[4] = 2080;
            *&v33[6] = v26;
            _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "%s: error %d resetting %s", buf, 0x1Cu);
          }
        }

        *(v22 + 7) = 0u;
        *(v22 + 5) = 0u;
        *(v22 + 3) = 0u;
        *(v22 + 1) = 0u;
      }
    }

    *(this + 2475) = -1;
    goto LABEL_42;
  }

  if (a2 != 1)
  {
LABEL_42:
    AUSpatialMixerV2::ResetReverbFilters(this, 1);
    AUSpatialMixerV2::ResetReverbFilters(this, 0);
    caulk::pooled_semaphore_mutex::_lock((this + 13084));
    if (*(this + 1628) != *(this + 1629))
    {
      IR::FixedIntegerDelay<float>::reset();
    }

    if (*(this + 1631) != *(this + 1632))
    {
      IR::FixedIntegerDelay<float>::reset();
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 13084));
    v27 = *(this + 420);
    if (v27)
    {
      Overlapper<float>::clear(v27 + 40);
    }

    v16 = 0;
    *(this + 843) = -1;
    goto LABEL_49;
  }

  v8 = *(this + 15);
  if (v8)
  {
    LODWORD(v9) = (*(*v8 + 24))(v8);
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v9 > a3)
  {
    v13 = atomic_load(this + 9897);
    if (v13)
    {
      v14 = ausdk::AUScope::GetElement((this + 80), a3);
      if (!v14)
      {
        ausdk::Throw(0xFFFFD583);
      }

      (*(*v14 + 120))(v14);
    }

    goto LABEL_42;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v15 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v29 = this + 3752;
    if (*(this + 3775) < 0)
    {
      v29 = *v29;
    }

    *buf = 136315650;
    v31 = v29;
    v32 = 2080;
    *v33 = "Reset";
    *&v33[8] = 1024;
    *&v33[10] = a3;
    _os_log_error_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid input scope element %u", buf, 0x1Cu);
  }

  v16 = 4294956419;
LABEL_49:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
  return v16;
}

void sub_1DDD01690(_Unwind_Exception *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 3456);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 3472);
  _Unwind_Resume(a1);
}

pthread_t AUSpatialMixerV2::Cleanup(AUSpatialMixerV2 *this)
{
  v73 = *MEMORY[0x1E69E9840];
  atomic_store(0, this + 9897);
  atomic_store(0, this + 9898);
  atomic_store(1u, this + 3008);
  __dmb(0xBu);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = "Cleanup";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Cleaning up", buf, 0x16u);
  }

  v4 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)9>(this + 1228);
  if (HIDWORD(v4) && v4 || (v5 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)12>(this + 1228), HIDWORD(v5)) && v5)
  {
    if ((*(this + 6855) & 0x8000000000000000) != 0)
    {
      if (*(this + 855))
      {
        goto LABEL_13;
      }
    }

    else if (*(this + 6855))
    {
LABEL_13:
      *buf = 0;
      v6 = (*(*this + 272))(this, buf);
      if (!v6)
      {
        v7 = *buf;
        CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(v6);
        v12 = (this + 6832);
        caulk::make_string("%d%02d%02d.%02d%02d%02d", __x, CurrentGregorianDate, ((CurrentGregorianDate >> 8) >> 24), ((CurrentGregorianDate >> 16) >> 24), ((CurrentGregorianDate >> 24) >> 24), (SHIDWORD(CurrentGregorianDate) >> 24), v13);
        if (*(this + 6855) < 0)
        {
          v12 = *v12;
        }

        v14 = this + 3752;
        v15 = this + 3752;
        if (*(this + 3775) < 0)
        {
          v15 = *v14;
        }

        v16 = __x;
        if (v72 < 0)
        {
          v16 = *__x;
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s/ausm_%s_preset_%s_%u.aupreset", v12, v15, v16, *(this + 863)];
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v18 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = this + 3752;
          if (*(this + 3775) < 0)
          {
            v19 = *v14;
          }

          *buf = 136315650;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = "CaptureConfigIfNecessary";
          *&buf[22] = 2112;
          v68 = v17;
          _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEFAULT, "[%s|%s] Captured preset will be saved to file %@", buf, 0x20u);
        }

        if (([v7 writeToFile:v17 atomically:1]& 1) != 0)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v20 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            if (*(this + 3775) < 0)
            {
              v14 = *v14;
            }

            *buf = 136315650;
            *&buf[4] = v14;
            *&buf[12] = 2080;
            *&buf[14] = "CaptureConfigIfNecessary";
            *&buf[22] = 2112;
            v68 = v17;
            _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "[%s|%s] Preset exported to %@", buf, 0x20u);
          }
        }

        else
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v20 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 3775) < 0)
            {
              v14 = *v14;
            }

            *buf = 136315650;
            *&buf[4] = v14;
            *&buf[12] = 2080;
            *&buf[14] = "CaptureConfigIfNecessary";
            *&buf[22] = 2112;
            v68 = v17;
            _os_log_error_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: could not export the preset to %@", buf, 0x20u);
          }
        }

        ++*(this + 863);
        if (v72 < 0)
        {
          operator delete(*__x);
        }

        goto LABEL_52;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v7 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_52:

        goto LABEL_53;
      }

      v8 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = "CaptureConfigIfNecessary";
      v9 = "[%s|%s] ERROR: Could not capture preset";
LABEL_27:
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);
      goto LABEL_52;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    v10 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v10 = *v10;
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = "CaptureConfigIfNecessary";
    v9 = "[%s|%s] ERROR: no capture dir path available";
    goto LABEL_27;
  }

LABEL_53:
  v21 = *(this + 375);
  v22 = *(this + 374);
  applesauce::CF::StringRef::get_ns(v22);
  objc_claimAutoreleasedReturnValue();
  if (v21)
  {
    v23 = v66;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = ___ZN16AUSpatialMixerV27CleanupEv_block_invoke;
    v66[3] = &__block_descriptor_40_e5_v8__0l;
    v66[4] = this;
  }

  else
  {
    v23 = &__block_literal_global_127;
  }

  dispatch_sync(v22, v23);

  v24 = *(this + 422);
  if (v24)
  {
    AUSpatialMixerV2OrientationObserver::unregister(v24);
    v25 = *(this + 423);
    *(this + 211) = 0u;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  v26 = AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener((this + 9864));
  IR::IRDataLoader::instance(v26);
  v27 = (this + 3752);
  std::operator+<char>();
  IR::IRDataLoader::removeFromPersonalizedHRTFCallbackPool();
  if (v65 < 0)
  {
    operator delete(__p);
  }

  *buf = this + 3456;
  *&buf[8] = this + 3472;
  *&buf[16] = this + 3488;
  std::__lock_first<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 3456, this + 3472, this + 3488);
  ElementVector::freeOld(*(this + 72));
  AUSpatialMixerV2::DisposeInputConverters(this);
  AUSpatialMixerV2::DisposeOutputConverter(this);
  v28 = *(this + 383);
  v29 = 128;
  v30 = v28;
  do
  {
    *(v30 + 8) = *v30;
    *(v30 + 24) = 1;
    v30 += 32;
    v29 -= 32;
  }

  while (v29);
  v31 = (v28 + 136);
  v32 = 72;
  do
  {
    *v31 = *(v31 - 1);
    v31 += 3;
    v32 -= 24;
  }

  while (v32);
  *(v28 + 208) = *(v28 + 200);
  *(v28 + 840) = *(v28 + 832);
  std::vector<AUSM::FloatVector>::clear[abi:ne200100]((v28 + 224));
  *(v28 + 280) = *(v28 + 272);
  __x[0] = 0;
  v33 = *(v28 + 296);
  v34 = *(v28 + 304) - v33;
  if (v34 > 7)
  {
    if (v34 != 8)
    {
      *(v28 + 304) = v33 + 2;
    }
  }

  else
  {
    std::vector<char>::__append((v28 + 296), 8 - v34, __x);
    v33 = *(v28 + 296);
  }

  *v33 = 0;
  *(v28 + 328) = *(v28 + 320);
  *(v28 + 348) = 0;
  *(v28 + 360) = *(v28 + 352);
  *(v28 + 384) = *(v28 + 376);
  *(v28 + 520) = *(v28 + 512);
  *(v28 + 544) = *(v28 + 536);
  *(v28 + 584) = *(v28 + 576);
  *(v28 + 616) = *(v28 + 608);
  *(v28 + 640) = *(v28 + 632);
  *(v28 + 680) = *(v28 + 672);
  *(v28 + 712) = *(v28 + 704);
  *(v28 + 736) = *(v28 + 728);
  *(v28 + 776) = *(v28 + 768);
  *(v28 + 424) = *(v28 + 416);
  *(v28 + 448) = *(v28 + 440);
  *(v28 + 488) = *(v28 + 480);
  IR::ComplexDataCircBuffer::cleanup((v28 + 800));
  IR::ComplexDataCircBuffer::cleanup((v28 + 808));
  IR::ComplexDataCircBuffer::cleanup((v28 + 816));
  IR::ComplexDataCircBuffer::cleanup((v28 + 824));
  *(this + 395) = *(this + 394);
  __x[0] = 0;
  v35 = *(this + 397);
  v36 = *(this + 398) - v35;
  if (v36 > 7)
  {
    if (v36 != 8)
    {
      *(this + 398) = v35 + 2;
    }
  }

  else
  {
    std::vector<char>::__append((this + 3176), 8 - v36, __x);
    v35 = *(this + 397);
  }

  *v35 = 0;
  *(this + 401) = *(this + 400);
  *(this + 807) = 0;
  *(this + 405) = *(this + 404);
  __x[0] = 0;
  v37 = *(this + 407);
  v38 = *(this + 408) - v37;
  if (v38 > 7)
  {
    if (v38 != 8)
    {
      *(this + 408) = v37 + 2;
    }
  }

  else
  {
    std::vector<char>::__append((this + 3256), 8 - v38, __x);
    v37 = *(this + 407);
  }

  *v37 = 0;
  *(this + 411) = *(this + 410);
  *(this + 827) = 0;
  *(this + 385) = *(this + 384);
  __x[0] = 0;
  v39 = *(this + 387);
  v40 = *(this + 388) - v39;
  if (v40 > 7)
  {
    if (v40 != 8)
    {
      *(this + 388) = v39 + 2;
    }
  }

  else
  {
    std::vector<char>::__append(this + 129, 8 - v40, __x);
    v39 = *(this + 387);
  }

  *v39 = 0;
  *(this + 391) = *(this + 390);
  *(this + 787) = 0;
  v41 = *(this + 247);
  *(this + 248) = v41;
  *(this + 2000) = 1;
  *(this + 251) = v41;
  *(this + 504) = -1;
  atomic_store(0, this + 505);
  v42 = *(this + 256);
  *(this + 257) = v42;
  *(this + 2072) = 1;
  *(this + 260) = v42;
  *(this + 522) = -1;
  atomic_store(0, this + 523);
  v43 = *(this + 348);
  *(this + 349) = v43;
  *(this + 2808) = 1;
  *(this + 352) = v43;
  *(this + 706) = -1;
  atomic_store(0, this + 707);
  v44 = *(this + 354);
  *(this + 355) = v44;
  *(this + 2856) = 1;
  *(this + 358) = v44;
  *(this + 718) = -1;
  atomic_store(0, this + 719);
  v45 = *(this + 360);
  *(this + 361) = v45;
  *(this + 2904) = 1;
  *(this + 364) = v45;
  *(this + 730) = -1;
  atomic_store(0, this + 731);
  LOBYTE(v45) = atomic_load(this + 2984);
  if (v45)
  {
    v46 = *(this + 367);
    *(this + 368) = v46;
    *(this + 2960) = 1;
    *(this + 371) = v46;
    *(this + 744) = -1;
    atomic_store(0, this + 745);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 2032);
  IR::IRProcessor::uninitialize(*(this + 253));
  atomic_store(0, this + 2096);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 2032);
  atomic_store(0, this + 2472);
  atomic_store(0, this + 619);
  IR::DynamicIRProcessor::uninitialize((this + 2104));
  IR::DynamicIRProcessor::uninitialize((this + 2288));
  caulk::pooled_semaphore_mutex::_lock((this + 2628));
  *(this + 680) = 0;
  *(this + 682) = 0;
  atomic_store(0, this + 2724);
  atomic_store(0, this + 2624);
  atomic_store(0, this + 2625);
  atomic_store(0, this + 2626);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 331);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 334);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::clear[abi:ne200100](this + 310);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::clear[abi:ne200100](this + 316);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::clear[abi:ne200100](this + 322);
  *(this + 314) = *(this + 313);
  *(this + 320) = *(this + 319);
  *(this + 326) = *(this + 325);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::clear[abi:ne200100](this + 337);
  caulk::pooled_semaphore_mutex::_unlock((this + 2628));
  atomic_store(0, this + 2928);
  atomic_store(0, this + 2929);
  v47 = *(this + 465);
  v48 = *(this + 464);
  while (v47 != v48)
  {
    v47 = std::unique_ptr<AUSM::AUFXWrapper>::~unique_ptr[abi:ne200100](v47 - 1);
  }

  *(this + 465) = v48;
  AUSpatialMixerV2::AlignmentDelay::reset((this + 13024));
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 1238, 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 1239, 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 1240, 0);
  v49 = *(this + 15);
  if (v49)
  {
    LODWORD(v50) = (*(*v49 + 24))(v49);
    if (!v50)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v50 = (*(this + 13) - *(this + 12)) >> 3;
    if (!v50)
    {
      goto LABEL_93;
    }
  }

  v51 = 0;
  do
  {
    Element = ausdk::AUScope::GetElement((this + 80), v51);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 128))(Element);
    ++v51;
  }

  while (v50 != v51);
LABEL_93:
  v53 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v53)
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v53 + 128))(v53);
  atomic_store(0, this + 3254);
  v54 = *(this + 68);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v54 + 4);
  v54[8] = v54[7];
  std::unique_ptr<AUSM::InputABLBuffer>::reset[abi:ne200100](v54 + 11, 0);
  std::unique_ptr<APAC::Metadata>::reset[abi:ne200100](v54 + 3, 0);
  v55 = *(this + 460);
  *(this + 459) = 0;
  *(this + 460) = 0;
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](this + 381, 0);
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](this + 382, 0);
  *(this + 3255) = -1;
  atomic_store(0, this + 3009);
  if (*(this + 420))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v56 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 3775) < 0)
      {
        v27 = *v27;
      }

      *__x = 136315394;
      *&__x[4] = v27;
      v70 = 2080;
      v71 = "CleanupTorqueEngine";
      _os_log_impl(&dword_1DDB85000, v56, OS_LOG_TYPE_DEFAULT, "[%s|%s] Cleaning up TorqueEngine", __x, 0x16u);
    }

    v57 = *(this + 420);
    TorqueEngine::resizeBuffers(v57, 0);
    *(v57 + 16832) = -1082130432;
    __asm { FMOV            V0.2S, #-1.0 }

    *(v57 + 16848) = _D0;
    std::unique_ptr<TorqueEngine>::reset[abi:ne200100](this + 420, 0);
  }

  *(this + 843) = -1;
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(*buf);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(*&buf[8]);
  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(*&buf[16]);
}

void sub_1DDD02428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  _Unwind_Resume(a1);
}

void ___ZN16AUSpatialMixerV27CleanupEv_block_invoke(uint64_t a1)
{
  source = *(*(a1 + 32) + 3000);
  applesauce::CF::StringRef::get_ns(source);
  objc_claimAutoreleasedReturnValue();
  dispatch_source_cancel(source);
}

void AUSpatialMixerV2OrientationObserver::unregister(AUSpatialMixerV2OrientationObserver *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  if (v1)
  {
    v3 = *this;
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v1);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        std::mutex::lock((this + 80));
        v6 = atomic_load(this + 72);
        if (v6)
        {
          atomic_store(0, this + 72);
          if (*(this + 4) == 1)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v7 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = (this + 40);
              if (*(this + 63) < 0)
              {
                v8 = *v8;
              }

              v11 = 136315138;
              v12 = v8;
              _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering UI orientation observer %s", &v11, 0xCu);
            }

            CAUnregisterUIOrientation();
          }

          else
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v9 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = (this + 40);
              if (*(this + 63) < 0)
              {
                v10 = *v10;
              }

              v11 = 136315138;
              v12 = v10;
              _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "Unregistering device orientation observer %s", &v11, 0xCu);
            }

            CAUnregisterDeviceOrientation();
          }
        }

        std::mutex::unlock((this + 80));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1DDD02704(_Unwind_Exception *a1)
{
  std::mutex::unlock((v3 + 80));
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__lock_first<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
LABEL_2:
  v6 = a2;
  a2 = a1;
  while (v5 != 1)
  {
    if (v5)
    {
      v5 -= 2;
      a1 = a3;
      a3 = v6;
      goto LABEL_2;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
    result = std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(v6, a3);
    if (result == -1)
    {
      return result;
    }

    v8 = result;
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
    v5 = v8 + 1;
LABEL_11:
    sched_yield();
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v6);
  result = std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(a3, a2);
  if (result != -1)
  {
    v9 = result;
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v6);
    if (v9 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v9 + 2;
    }

    goto LABEL_11;
  }

  return result;
}

OpaqueAudioConverter *AUSpatialMixerV2::DisposeInputConverters(AUSpatialMixerV2 *this)
{
  v2 = *(this + 414);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  *(this + 414) = 0;
  result = *(this + 415);
  if (result)
  {
    result = AudioConverterDispose(result);
  }

  *(this + 415) = 0;
  return result;
}

uint64_t AUSpatialMixerV2::DisposeOutputConverter(AUSpatialMixerV2 *this)
{
  v2 = *(this + 416);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  *(this + 416) = 0;

  return AUSpatialMixerV2::DisposeOutputCaptureFile(this);
}

uint64_t *std::unique_ptr<AUSM::AUFXWrapper>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2)
    {
      AudioComponentInstanceDispose(*v2);
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v3 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = (v2 + 72);
        if (*(v2 + 95) < 0)
        {
          v4 = *v4;
        }

        v9 = 136315394;
        v10 = "~AUFXWrapper";
        v11 = 2080;
        v12 = v4;
        _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%s: disposing of %s", &v9, 0x16u);
      }

      *v2 = 0;
    }

    v5 = *(v2 + 184);
    if (v5)
    {
      *(v2 + 192) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 160);
    if (v6)
    {
      *(v2 + 168) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 136);
    if (v7)
    {
      *(v2 + 144) = v7;
      operator delete(v7);
    }

    if (*(v2 + 119) < 0)
    {
      operator delete(*(v2 + 96));
    }

    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    MEMORY[0x1E12BD160](v2, 0x10B2C40FCE8546FLL);
  }

  return a1;
}

void sub_1DDD02A04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

pthread_t std::scoped_lock<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>::__unlock_unpack[abi:ne200100]<0ul,1ul,2ul>(uint64_t *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(*a1);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1[1]);
  v2 = a1[2];

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v2);
}

void ***std::unique_ptr<TorqueEngine>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(v2[1975]);
    free(v2[1845]);
    free(v2[1715]);
    free(v2[1585]);
    free(v2[1455]);
    free(v2[1325]);
    free(v2[1195]);
    free(v2[1065]);
    STFT<float>::~STFT((v2 + 5));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUSpatialMixerV2::DisposeOutputCaptureFile(uint64_t this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 3440))
  {
    v1 = this;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v2 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = (v1 + 3752);
      if (*(v1 + 3775) < 0)
      {
        v3 = *v3;
      }

      v4 = 136315394;
      v5 = v3;
      v6 = 2080;
      v7 = "DisposeOutputCaptureFile";
      _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Disposing output capture file", &v4, 0x16u);
    }

    this = ExtAudioFileDispose(*(v1 + 3440));
    *(v1 + 3440) = 0;
  }

  return this;
}

uint64_t std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(uint64_t a1, uint64_t a2)
{
  result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1);
  if (result)
  {
    if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a2))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1);
      return 1;
    }
  }

  return result;
}

unint64_t AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)9>(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1;
    if (*(a1 + 23) < 0)
    {
      v12 = *a1;
    }

    *buf = 136315650;
    v14 = v12;
    v15 = 2080;
    v16 = "getValue";
    v17 = 2080;
    v18 = "ausm_capture_all";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", buf, 0x20u);
  }

  v3 = CFPreferencesCopyAppValue(@"ausm_capture_all", @"com.apple.coreaudio");
  v5 = v3;
  if (v3)
  {
    v6 = AUSM::UserDefaults::CFTypeToUInt32(v3, v4);
    v7 = v6;
    v8 = HIDWORD(v6);
    if ((v6 & 0x100000000) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v9 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        *buf = 136315906;
        v14 = a1;
        v15 = 2080;
        v16 = "getValue";
        v17 = 2080;
        v18 = "ausm_capture_all";
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", buf, 0x26u);
      }
    }

    CFRelease(v5);
    v10 = v7 & 0xFFFFFF00;
  }

  else
  {
    v10 = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v7) = 0;
  }

  return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v8 << 32);
}

void sub_1DDD02E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)12>(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1;
    if (*(a1 + 23) < 0)
    {
      v12 = *a1;
    }

    *buf = 136315650;
    v14 = v12;
    v15 = 2080;
    v16 = "getValue";
    v17 = 2080;
    v18 = "ausm_capture_config";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", buf, 0x20u);
  }

  v3 = CFPreferencesCopyAppValue(@"ausm_capture_config", @"com.apple.coreaudio");
  v5 = v3;
  if (v3)
  {
    v6 = AUSM::UserDefaults::CFTypeToUInt32(v3, v4);
    v7 = v6;
    v8 = HIDWORD(v6);
    if ((v6 & 0x100000000) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v9 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        *buf = 136315906;
        v14 = a1;
        v15 = 2080;
        v16 = "getValue";
        v17 = 2080;
        v18 = "ausm_capture_config";
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", buf, 0x26u);
      }
    }

    CFRelease(v5);
    v10 = v7 & 0xFFFFFF00;
  }

  else
  {
    v10 = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v7) = 0;
  }

  return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v8 << 32);
}

void sub_1DDD030C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2::Initialize(AUSpatialMixerV2 *this)
{
  v215 = *MEMORY[0x1E69E9840];
  v2 = &xmmword_1ECDA9000;
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v198 = getAUSMV2Log(void)::gLog;
    v199 = os_signpost_id_generate(v198);

    AUSpatialMixerV2::Initialize(void)::spid = v199;
    v2 = &xmmword_1ECDA9000;
  }

  if (*(v2 + 257) != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v3 = getAUSMV2Log(void)::gLog;
  v4 = v3;
  v5 = AUSpatialMixerV2::Initialize(void)::spid;
  if ((AUSpatialMixerV2::Initialize(void)::spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v6 = *v6;
    }

    buf.st_dev = 136315138;
    *&buf.st_mode = v6;
    _os_signpost_emit_with_name_impl(&dword_1DDB85000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AUSM_INIT_EVENT", "%s", &buf, 0xCu);
  }

  mach_absolute_time();
  atomic_store(1u, this + 3008);
  __dmb(0xBu);
  v7 = *(this + 374);
  v8 = applesauce::CF::StringRef::get_ns(v7);
  dispatch_sync(v8, &__block_literal_global_4810);

  atomic_store(1u, this + 9897);
  __dmb(0xBu);
  v9 = *(this + 84);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v10 = getAUSMV2Log(void)::gLog;
  v11 = v10;
  if ((v9 - 65537) > 0xFFFEFFFF)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v13 = *v13;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = v13;
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = "Initialize";
      HIWORD(buf.st_gid) = 1024;
      buf.st_rdev = v9;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "[%s|%s] Initializing with max frames per slice = %u", &buf, 0x1Cu);
    }

    v15 = *(this + 68);
    v16 = atomic_load((v15 + 96));
    if (v16)
    {
      v17 = (v15 + 32);
      if (*(v15 + 40) != *(v15 + 32) || *(v15 + 64) != *(v15 + 56))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v18 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v195 = (v15 + 104);
          if (*(v15 + 127) < 0)
          {
            v195 = *v195;
          }

          buf.st_dev = 136315394;
          *&buf.st_mode = v195;
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = "initialize";
          _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "[%s|%s] Cleanup was not done appropriately (1)", &buf, 0x16u);
        }

        std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((v15 + 32));
        *(v15 + 64) = *(v15 + 56);
      }

      if (*(*(v15 + 16) + 32))
      {
        Element = ausdk::AUScope::GetElement((*v15 + 80), 0);
        if (Element)
        {
          v20 = *(Element + 108);
          v22 = *(v15 + 40);
          v21 = *(v15 + 48);
          if (v22 < v21)
          {
            LOBYTE(buf.st_dev) = 0;
            std::vector<char>::vector[abi:ne200100](v22, (16 * v20) | 8);
          }

          v23 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *v17) >> 3);
          v24 = v23 + 1;
          if (v23 + 1 <= 0xAAAAAAAAAAAAAAALL)
          {
            v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *v17) >> 3);
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

            buf.st_atimespec.tv_sec = v15 + 32;
            if (v26)
            {
              if (v26 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *&buf.st_dev = 0;
            buf.st_ino = 24 * v23;
            *&buf.st_uid = 24 * v23;
            *&buf.st_rdev = 0;
            LOBYTE(inData.mSampleRate) = 0;
            std::vector<char>::vector[abi:ne200100]((24 * v23), (16 * v20) | 8);
          }

          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        ausdk::Throw(0xFFFFD583);
      }

      if (*(v15 + 88))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v27 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v196 = (v15 + 104);
          if (*(v15 + 127) < 0)
          {
            v196 = *v196;
          }

          buf.st_dev = 136315394;
          *&buf.st_mode = v196;
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = "initialize";
          _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "[%s|%s] Cleanup was not done appropriately (2)", &buf, 0x16u);
        }
      }

      operator new();
    }

    AUSM::Messenger::instance(v14);
    AUSM::Messenger::get(&buf);
    v28 = *(this + 460);
    *(this + 3672) = *&buf.st_dev;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v29 = *(this + 422);
    if (v29)
    {
      AUSpatialMixerV2OrientationObserver::unregister(v29);
      v30 = *(this + 423);
      *(this + 211) = 0u;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    v31 = atomic_load(this + 1352);
    if (v31 - 1 < 2 || !v31 && (v33 = atomic_load(this + 3828), (v33 & 1) == 0))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v32 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v192 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v192 = *v192;
        }

        v193 = atomic_load(this + 1352);
        buf.st_dev = 136315650;
        *&buf.st_mode = v192;
        WORD2(buf.st_ino) = 2080;
        *(&buf.st_ino + 6) = "Initialize";
        if (v193 == 2)
        {
          v194 = "device";
        }

        else
        {
          v194 = "UI";
        }

        HIWORD(buf.st_gid) = 2080;
        *&buf.st_rdev = v194;
        _os_log_debug_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEBUG, "[%s|%s] Creating %s orientation observer", &buf, 0x20u);
      }

      atomic_load(this + 1352);
      operator new();
    }

    AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v203, this + 5872);
    if (v203)
    {
      v34 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(v203, kOptionalFeatureSourceDiffuse);
      v35 = (v34 > 0xFFu) & v34;
    }

    else
    {
      v35 = 0;
    }

    atomic_store(v35, this + 2984);
    std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 3456, this + 3472);
    v200 = (this + 9824);
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v36 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v189 = this + 9824;
      if (*(this + 9847) < 0)
      {
        v189 = *v200;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = v189;
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = "getValue";
      HIWORD(buf.st_gid) = 2080;
      *&buf.st_rdev = "ausm_trace_render";
      _os_log_debug_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", &buf, 0x20u);
    }

    v37 = CFPreferencesCopyAppValue(@"ausm_trace_render", @"com.apple.coreaudio");
    v39 = v37;
    *&inData.mSampleRate = v37;
    v40 = &xmmword_1ECDA9000;
    if (v37)
    {
      v41 = AUSM::UserDefaults::CFTypeToUInt32(v37, v38);
      v42 = v41;
      v43 = HIDWORD(v41);
      if ((v41 & 0x100000000) != 0)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v44 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = this + 9824;
          if (*(this + 9847) < 0)
          {
            v45 = *v200;
          }

          buf.st_dev = 136315906;
          *&buf.st_mode = v45;
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = "getValue";
          HIWORD(buf.st_gid) = 2080;
          *&buf.st_rdev = "ausm_trace_render";
          LOWORD(buf.st_atimespec.tv_sec) = 1024;
          *(&buf.st_atimespec.tv_sec + 2) = v42;
          _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", &buf, 0x26u);
        }

        v40 = &xmmword_1ECDA9000;
      }

      CFRelease(v39);
      v46 = v42 & 0xFFFFFF00;
    }

    else
    {
      v46 = 0;
      LOBYTE(v43) = 0;
      LOBYTE(v42) = 0;
    }

    v47 = v46 | v42;
    if (v43)
    {
      v48 = v47 == 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = !v48;
    *(this + 9896) = v49;
    if (*(v40 + 257) != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v50 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v190 = this + 9824;
      if (*(this + 9847) < 0)
      {
        v190 = *v200;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = v190;
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = "getValue";
      HIWORD(buf.st_gid) = 2080;
      *&buf.st_rdev = "ausm_verbose";
      _os_log_debug_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", &buf, 0x20u);
    }

    v51 = CFPreferencesCopyAppValue(@"ausm_verbose", @"com.apple.coreaudio");
    v53 = v51;
    *&inData.mSampleRate = v51;
    if (v51)
    {
      v54 = AUSM::UserDefaults::CFTypeToUInt32(v51, v52);
      v55 = v54;
      v56 = HIDWORD(v54);
      if ((v54 & 0x100000000) != 0)
      {
        if (*(v40 + 257) != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v57 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = this + 9824;
          if (*(this + 9847) < 0)
          {
            v58 = *v200;
          }

          buf.st_dev = 136315906;
          *&buf.st_mode = v58;
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = "getValue";
          HIWORD(buf.st_gid) = 2080;
          *&buf.st_rdev = "ausm_verbose";
          LOWORD(buf.st_atimespec.tv_sec) = 1024;
          *(&buf.st_atimespec.tv_sec + 2) = v55;
          _os_log_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", &buf, 0x26u);
        }

        v40 = &xmmword_1ECDA9000;
      }

      CFRelease(v53);
      v59 = v55 & 0xFFFFFF00;
    }

    else
    {
      v59 = 0;
      LOBYTE(v56) = 0;
      LOBYTE(v55) = 0;
    }

    v60 = v59 & 0xFFFFFF00FFFFFFFFLL | v55 | (v56 << 32);
    if (v60 <= 0x100000000)
    {
      LODWORD(v60) = 0;
    }

    *(this + 1706) = v60;
    if (*(v40 + 257) != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v61 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v191 = this + 9824;
      if (*(this + 9847) < 0)
      {
        v191 = *v200;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = v191;
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = "getValue";
      HIWORD(buf.st_gid) = 2080;
      *&buf.st_rdev = "ausm_enable_debug_features";
      _os_log_debug_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", &buf, 0x20u);
    }

    v62 = CFPreferencesCopyAppValue(@"ausm_enable_debug_features", @"com.apple.coreaudio");
    v64 = v62;
    *&inData.mSampleRate = v62;
    if (v62)
    {
      v65 = AUSM::UserDefaults::CFTypeToUInt32(v62, v63);
      v66 = v65;
      v67 = HIDWORD(v65);
      if (HIDWORD(v65))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v68 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = this + 9824;
          if (*(this + 9847) < 0)
          {
            v69 = *v200;
          }

          buf.st_dev = 136315906;
          *&buf.st_mode = v69;
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = "getValue";
          HIWORD(buf.st_gid) = 2080;
          *&buf.st_rdev = "ausm_enable_debug_features";
          LOWORD(buf.st_atimespec.tv_sec) = 1024;
          *(&buf.st_atimespec.tv_sec + 2) = v66;
          _os_log_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", &buf, 0x26u);
        }
      }

      CFRelease(v64);
      if (v67)
      {
        if (v66)
        {
          v70 = *(this + 374);
          applesauce::CF::StringRef::get_ns(v70);
          objc_claimAutoreleasedReturnValue();
          v71 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v70);

          v72 = *(this + 375);
          *(this + 375) = v71;

          v73 = *(this + 375);
          if (v73)
          {
            applesauce::CF::StringRef::get_ns(*(this + 375));
            objc_claimAutoreleasedReturnValue();
            v74 = dispatch_time(0, 50000000);
            dispatch_source_set_timer(v73, v74, 0x2FAF080uLL, 0x17D7840uLL);

            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v75 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v197 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v197 = *v197;
              }

              buf.st_dev = 136315394;
              *&buf.st_mode = v197;
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = "Initialize";
              _os_log_debug_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_DEBUG, "[%s|%s] Creating a timer to check defaults writes while running", &buf, 0x16u);
            }

            v76 = *(this + 375);
            v77 = applesauce::CF::StringRef::get_ns(v76);
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = ___ZN16AUSpatialMixerV210InitializeEv_block_invoke_120;
            handler[3] = &__block_descriptor_40_e5_v8__0l;
            handler[4] = this;
            dispatch_source_set_event_handler(v77, handler);

            v78 = *(this + 375);
            v79 = applesauce::CF::StringRef::get_ns(v78);
            dispatch_resume(v79);

            AUSpatialMixerV2::DebugSoloInputElement(this);
          }
        }
      }
    }

    (*(*this + 592))(this, 3111);
    v80 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v80 || (v81 = *(v80 + 80), (v82 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    v84 = (v82 + 120);
    v83 = *(v82 + 120);
    if (*v83 == 6553601 || !*v83 && v83[2] == 1 && v83[3] == 42)
    {
      v84 = (v82 + 224);
    }

    std::mutex::lock((this + 8648));
    v85 = v81;
    *(this + 1780) = v85;
    ausdk::AUChannelLayout::CopyStorage((this + 7128), v84);
    std::mutex::unlock((this + 8648));
    AUSM::IRManager::updateHRIRAttributes((this + 7088));
    AUSM::IRManager::updateXTCIRAttributes((this + 7088));
    (*(*this + 592))(this, 3113);
    *(this + 2297) = v85;
    v86 = *(this + 1147);
    if ((*(v86 + 3112) & 1) == 0)
    {
      v87 = COERCE_FLOAT(atomic_load((v86 + 2504)));
      v88 = 5.0;
      if (v87 <= 5.0)
      {
        v88 = v87;
      }

      if (v87 >= 0.001)
      {
        v89 = v88;
      }

      else
      {
        v89 = 0.001;
      }

      *(this + 2283) = v89;
      v90 = atomic_load((*(this + 1147) + 2500));
      atomic_store(v90, this + 2282);
      AUSM::SoundStage::initialize((this + 8720), v85);
      atomic_store(0, this + 9786);
    }

    AUSM::SoundStage::initialize((this + 9312), v85);
    *(this + 9184) = AUSM::GlobalProperties::isEnabledFeature(*(this + 1147), @"SourceDivergence");
    *(this + 9185) = AUSM::GlobalProperties::isEnabledFeature(*(this + 1147), @"SourceDirectivity");
    v91 = atomic_load((*(this + 1147) + 2560));
    v92 = 0.0;
    if (v91 == 1)
    {
      v92 = 1.0;
    }

    *(this + 2443) = v92;
    *(this + 2444) = 0;
    AUSM::GlobalGeometry::update(this + 545, 0, 1);
    v93 = *(this + 15);
    if (v93)
    {
      LODWORD(v94) = (*(*v93 + 24))(v93);
      if (!v94)
      {
        goto LABEL_138;
      }
    }

    else
    {
      v94 = (*(this + 13) - *(this + 12)) >> 3;
      if (!v94)
      {
        goto LABEL_138;
      }
    }

    v95 = 0;
    do
    {
      v96 = ausdk::AUScope::GetElement((this + 80), v95);
      if (!v96)
      {
        ausdk::Throw(0xFFFFD583);
      }

      (*(*v96 + 112))(v96);
      ++v95;
    }

    while (v94 != v95);
LABEL_138:
    *&buf.st_dev = this + 3504;
    LOBYTE(buf.st_ino) = 1;
    std::__shared_mutex_base::lock_shared((this + 3504));
    v97 = *(this + 15);
    if (v97)
    {
      LODWORD(v98) = (*(*v97 + 24))(v97);
    }

    else
    {
      v98 = (*(this + 13) - *(this + 12)) >> 3;
    }

    v99 = 0;
    if (v98)
    {
      v100 = 0;
      do
      {
        v101 = ausdk::AUScope::GetElement((this + 80), v100);
        if (!v101)
        {
          ausdk::Throw(0xFFFFD583);
        }

        UncompensatedLatencyFrames = AUSpatialMixerV2InputElement::GetUncompensatedLatencyFrames(v101);
        if (UncompensatedLatencyFrames > v99)
        {
          v99 = UncompensatedLatencyFrames;
        }

        ++v100;
      }

      while (v98 != v100);
    }

    std::__shared_mutex_base::unlock_shared((this + 3504));
    v103 = atomic_load((*(this + 886) + 88));
    if (v103 == 1)
    {
      v104 = atomic_load(this + 1781);
    }

    else
    {
      v104 = 0;
    }

    atomic_store(v104 + v99, this + 3254);
    if (v94)
    {
      v105 = 0;
      do
      {
        v106 = ausdk::AUScope::GetElement((this + 80), v105);
        if (!v106)
        {
          ausdk::Throw(0xFFFFD583);
        }

        AUSpatialMixerV2InputElement::UpdateAlignmentDelayLines(v106);
        ++v105;
      }

      while (v94 != v105);
    }

    v107 = *(this + 51);
    v108 = *(this + 52);
    while (v107 != v108)
    {
      if (*v107 == 3116)
      {
        (*(v107 + 8))(*(v107 + 16), *(this + 1), 3116, 0, 0);
      }

      v107 += 24;
    }

    AUSpatialMixerV2::ReloadFactoryPresetIfNecessary(this);
    atomic_store(1u, this + 9898);
    v109 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v109)
    {
      (*(*v109 + 112))(v109);
      v110 = atomic_load(this + 958);
      if (v110 == 2)
      {
        AUSpatialMixerV2::UpdateCounteractRotationShader(this);
      }

      v111 = *(this + 84);
      v112 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v112)
      {
        v113 = *(v112 + 108);
        if (v113 <= 2)
        {
          v114 = 2;
        }

        else
        {
          v114 = v113;
        }

        AUSpatialMixerV2::ReconfigureSharedBuffers(this, 1, 1);
        *(this + 807) = v114;
        std::vector<float>::resize(this + 394, (v114 * v111));
        v115 = (16 * v114) | 8;
        LOBYTE(buf.st_dev) = 0;
        v116 = *(this + 397);
        v117 = *(this + 398) - v116;
        if (v115 <= v117)
        {
          if (v115 < v117)
          {
            *(this + 398) = v116 + v115;
          }
        }

        else
        {
          std::vector<char>::__append((this + 3176), v115 - v117, &buf);
          v116 = *(this + 397);
        }

        *v116 = v114;
        *&buf.st_dev = 0;
        std::vector<float *>::assign(this + 400, v114, &buf.st_dev);
        *(this + 827) = v114;
        std::vector<float>::resize(this + 404, (v114 * v111));
        LOBYTE(buf.st_dev) = 0;
        v118 = *(this + 407);
        v119 = *(this + 408) - v118;
        if (v115 <= v119)
        {
          if (v115 < v119)
          {
            *(this + 408) = v118 + v115;
          }
        }

        else
        {
          std::vector<char>::__append((this + 3256), v115 - v119, &buf);
          v118 = *(this + 407);
        }

        *v118 = v114;
        *&buf.st_dev = 0;
        std::vector<float *>::assign(this + 410, v114, &buf.st_dev);
        v120 = ausdk::AUScope::GetElement((this + 128), 0);
        if (v120)
        {
          if (*(v120 + 108) == 1)
          {
            *(this + 787) = 1;
            std::vector<float>::resize(this + 384, v111);
            LOBYTE(buf.st_dev) = 0;
            v122 = *(this + 387);
            v123 = *(this + 388) - v122;
            if (v123 > 0x17)
            {
              if (v123 != 24)
              {
                *(this + 388) = v122 + 6;
              }
            }

            else
            {
              std::vector<char>::__append(this + 129, 24 - v123, &buf);
              v122 = *(this + 387);
            }

            *v122 = 1;
            *&buf.st_dev = 0;
            std::vector<float *>::assign(this + 390, 1uLL, &buf.st_dev);
          }

          buf.st_dev = 0;
          std::vector<float>::assign(this + 247, v111, &buf.st_dev, v121);
          v124.i32[0] = buf.st_dev;
          *(this + 2000) = *&buf.st_dev == 0.0;
          *(this + 251) = *(this + 247);
          *(this + 504) = -1;
          atomic_store(0, this + 505);
          buf.st_dev = 0;
          std::vector<float>::assign(this + 256, v111, &buf.st_dev, v124);
          v125.i32[0] = buf.st_dev;
          *(this + 2072) = *&buf.st_dev == 0.0;
          *(this + 260) = *(this + 256);
          *(this + 522) = -1;
          atomic_store(0, this + 523);
          buf.st_dev = 0;
          std::vector<float>::assign(this + 348, v111, &buf.st_dev, v125);
          v126.i32[0] = buf.st_dev;
          *(this + 2808) = *&buf.st_dev == 0.0;
          *(this + 352) = *(this + 348);
          *(this + 706) = -1;
          atomic_store(0, this + 707);
          buf.st_dev = 0;
          std::vector<float>::assign(this + 354, v111, &buf.st_dev, v126);
          v127.i32[0] = buf.st_dev;
          *(this + 2856) = *&buf.st_dev == 0.0;
          *(this + 358) = *(this + 354);
          *(this + 718) = -1;
          atomic_store(0, this + 719);
          buf.st_dev = 0;
          std::vector<float>::assign(this + 360, v111, &buf.st_dev, v127);
          v128.i32[0] = buf.st_dev;
          *(this + 2904) = *&buf.st_dev == 0.0;
          *(this + 364) = *(this + 360);
          *(this + 730) = -1;
          atomic_store(0, this + 731);
          v129 = atomic_load(this + 2984);
          if (v129)
          {
            buf.st_dev = 0;
            std::vector<float>::assign(this + 367, v111, &buf.st_dev, v128);
            *(this + 2960) = *&buf.st_dev == 0.0;
            *(this + 371) = *(this + 367);
            *(this + 744) = -1;
            atomic_store(0, this + 745);
          }

          AUSpatialMixerV2::DisposeInputConverters(this);
          *&buf.st_dev = 0x40E5888000000000;
          *&buf.st_ino = xmmword_1DE09C380;
          *&buf.st_rdev = xmmword_1DE09C390;
          inData.mSampleRate = 44100.0;
          *&inData.mFormatID = xmmword_1DE09C3A0;
          *&inData.mBytesPerFrame = xmmword_1DE09C3B0;
          inDestinationFormat.mSampleRate = 44100.0;
          *&inDestinationFormat.mFormatID = xmmword_1DE09BD50;
          *&inDestinationFormat.mBytesPerFrame = xmmword_1DE09BD60;
          AudioConverterNew(&buf, &inDestinationFormat, this + 414);
          AudioConverterNew(&inData, &inDestinationFormat, this + 415);
          AUSpatialMixerV2::InitializeOutputConverter(this);
          atomic_store(0, this + 3008);
          __dmb(0xBu);
          v130 = atomic_load(this + 5232);
          if (v130)
          {
            v208 = 0;
            v209 = 0;
            v210 = 0;
            v131 = atomic_load(this + 1309);
            if ((v131 & 2) != 0)
            {
              operator new();
            }

            v132 = atomic_load(this + 1309);
            if (v132)
            {
              operator new();
            }

            v133 = ausdk::AUScope::GetElement((this + 128), 0);
            if (!v133)
            {
              ausdk::Throw(0xFFFFD583);
            }

            v134 = *(v133 + 96);
            *&inData.mSampleRate = *(v133 + 80);
            *&inData.mBytesPerPacket = v134;
            *&inData.mBitsPerChannel = *(v133 + 112);
            v135 = ausdk::AUScope::GetElement((this + 128), 0);
            if (!v135)
            {
              ausdk::Throw(0xFFFFD583);
            }

            ausdk::AUChannelLayout::AUChannelLayout(valuePtr, (v135 + 120));
            v137 = v208;
            v136 = v209;
            if (v208 != v209)
            {
              v138 = (this + 3752);
              do
              {
                v139 = *v137;
                *(v139 + 7) = 0u;
                *(v139 + 5) = 0u;
                *(v139 + 3) = 0u;
                *(v139 + 1) = 0u;
                v140 = *v137;
                v141 = **v137;
                v142 = -66744;
                if (!v141)
                {
                  goto LABEL_207;
                }

                v143 = AudioUnitSetProperty(v141, 8u, 1u, 0, &inData, 0x28u);
                if (v143)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v144 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                  {
                    *&buf.st_dev = *&inData.mSampleRate;
                    *&buf.st_uid = *&inData.mBytesPerPacket;
                    buf.st_atimespec.tv_sec = *&inData.mBitsPerChannel;
                    CA::StreamDescription::AsString(&v211, &buf, inData.mSampleRate, *&inData.mBytesPerPacket);
                    v173 = v211.__r_.__value_.__r.__words[0];
                    if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v173 = &v211;
                    }

                    v174 = (v140 + 72);
                    if (*(v140 + 95) < 0)
                    {
                      v174 = *v174;
                    }

                    LODWORD(inDestinationFormat.mSampleRate) = 136315906;
                    *(&inDestinationFormat.mSampleRate + 4) = "setInputAndOutputStreamFormat";
                    LOWORD(inDestinationFormat.mFormatFlags) = 1024;
                    *(&inDestinationFormat.mFormatFlags + 2) = v143;
                    HIWORD(inDestinationFormat.mBytesPerPacket) = 2080;
                    *&inDestinationFormat.mFramesPerPacket = v173;
                    LOWORD(inDestinationFormat.mChannelsPerFrame) = 2080;
                    *(&inDestinationFormat.mChannelsPerFrame + 2) = v174;
                    _os_log_error_impl(&dword_1DDB85000, v144, OS_LOG_TYPE_ERROR, "%s: error %d setting input stream format %s for %s", &inDestinationFormat, 0x26u);
                    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v211.__r_.__value_.__l.__data_);
                    }
                  }
                }

                v142 = -66744;
                if (!*v140 || (v142 = AudioUnitSetProperty(*v140, 8u, 2u, 0, &inData, 0x28u)) != 0)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v145 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                  {
                    *&buf.st_dev = *&inData.mSampleRate;
                    *&buf.st_uid = *&inData.mBytesPerPacket;
                    buf.st_atimespec.tv_sec = *&inData.mBitsPerChannel;
                    CA::StreamDescription::AsString(&v211, &buf, inData.mSampleRate, *&inData.mBytesPerPacket);
                    v171 = v211.__r_.__value_.__r.__words[0];
                    if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v171 = &v211;
                    }

                    v172 = (v140 + 72);
                    if (*(v140 + 95) < 0)
                    {
                      v172 = *v172;
                    }

                    LODWORD(inDestinationFormat.mSampleRate) = 136315906;
                    *(&inDestinationFormat.mSampleRate + 4) = "setInputAndOutputStreamFormat";
                    LOWORD(inDestinationFormat.mFormatFlags) = 1024;
                    *(&inDestinationFormat.mFormatFlags + 2) = v143;
                    HIWORD(inDestinationFormat.mBytesPerPacket) = 2080;
                    *&inDestinationFormat.mFramesPerPacket = v171;
                    LOWORD(inDestinationFormat.mChannelsPerFrame) = 2080;
                    *(&inDestinationFormat.mChannelsPerFrame + 2) = v172;
                    _os_log_error_impl(&dword_1DDB85000, v145, OS_LOG_TYPE_ERROR, "%s: error %d setting output stream format %s for %s", &inDestinationFormat, 0x26u);
                    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v211.__r_.__value_.__l.__data_);
                    }
                  }
                }

                if (v143)
                {
                  v142 = v143;
                }

                if (!v142)
                {
                  v147 = *v137;
                  v148 = **v137;
                  if (v148)
                  {
                    v149 = AudioUnitSetProperty(v148, 0x13u, 1u, 0, valuePtr[0], 20 * *(valuePtr[0] + 2) + 12);
                    if (v149)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v150 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                      {
                        v180 = (v147 + 72);
                        if (*(v147 + 95) < 0)
                        {
                          v180 = *v180;
                        }

                        buf.st_dev = 136315650;
                        *&buf.st_mode = "setInputAndOutputAudioChannelLayout";
                        WORD2(buf.st_ino) = 1024;
                        *(&buf.st_ino + 6) = v149;
                        HIWORD(buf.st_uid) = 2080;
                        *&buf.st_gid = v180;
                        _os_log_error_impl(&dword_1DDB85000, v150, OS_LOG_TYPE_ERROR, "%s: error %d setting input audio channel layout for %s", &buf, 0x1Cu);
                      }
                    }

                    if (!*v147 || AudioUnitSetProperty(*v147, 0x13u, 2u, 0, valuePtr[0], 20 * *(valuePtr[0] + 2) + 12))
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v151 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                      {
                        v177 = (v147 + 72);
                        if (*(v147 + 95) < 0)
                        {
                          v177 = *v177;
                        }

                        buf.st_dev = 136315650;
                        *&buf.st_mode = "setInputAndOutputAudioChannelLayout";
                        WORD2(buf.st_ino) = 1024;
                        *(&buf.st_ino + 6) = v149;
                        HIWORD(buf.st_uid) = 2080;
                        *&buf.st_gid = v177;
                        _os_log_error_impl(&dword_1DDB85000, v151, OS_LOG_TYPE_ERROR, "%s: error %d setting input audio channel layout for %s", &buf, 0x1Cu);
                      }
                    }
                  }

                  v152 = *v137 + 96;
                  if (*(*v137 + 119) < 0)
                  {
                    v152 = *v152;
                  }

                  std::string::basic_string[abi:ne200100]<0>(__p, v152);
                  std::string::basic_string[abi:ne200100]<0>(&v211, "/aufx-");
                  if ((v205 & 0x80u) == 0)
                  {
                    v153 = __p;
                  }

                  else
                  {
                    v153 = __p[0];
                  }

                  if ((v205 & 0x80u) == 0)
                  {
                    v154 = v205;
                  }

                  else
                  {
                    v154 = __p[1];
                  }

                  v155 = std::string::append(&v211, v153, v154);
                  v156 = *&v155->__r_.__value_.__l.__data_;
                  *&buf.st_uid = *(&v155->__r_.__value_.__l + 2);
                  *&buf.st_dev = v156;
                  v155->__r_.__value_.__l.__size_ = 0;
                  v155->__r_.__value_.__r.__words[2] = 0;
                  v155->__r_.__value_.__r.__words[0] = 0;
                  v157 = std::string::append(&buf, "-appl-headphone.aupreset", 0x18uLL);
                  v158 = *&v157->__r_.__value_.__l.__data_;
                  *&inDestinationFormat.mBytesPerPacket = *(&v157->__r_.__value_.__l + 2);
                  *&inDestinationFormat.mSampleRate = v158;
                  v157->__r_.__value_.__l.__size_ = 0;
                  v157->__r_.__value_.__r.__words[2] = 0;
                  v157->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(buf.st_gid) < 0)
                  {
                    operator delete(*&buf.st_dev);
                  }

                  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v211.__r_.__value_.__l.__data_);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Audio/Tunings/Generic/AU");
                  if ((inDestinationFormat.mFramesPerPacket & 0x80000000) == 0)
                  {
                    mSampleRate = COERCE_DOUBLE(&inDestinationFormat);
                  }

                  else
                  {
                    mSampleRate = inDestinationFormat.mSampleRate;
                  }

                  if ((inDestinationFormat.mFramesPerPacket & 0x80000000) == 0)
                  {
                    mFramesPerPacket_high = HIBYTE(inDestinationFormat.mFramesPerPacket);
                  }

                  else
                  {
                    mFramesPerPacket_high = *&inDestinationFormat.mFormatID;
                  }

                  v161 = std::string::append(&buf, *&mSampleRate, mFramesPerPacket_high);
                  v162 = *&v161->__r_.__value_.__l.__data_;
                  v211.__r_.__value_.__r.__words[2] = v161->__r_.__value_.__r.__words[2];
                  *&v211.__r_.__value_.__l.__data_ = v162;
                  v161->__r_.__value_.__l.__size_ = 0;
                  v161->__r_.__value_.__r.__words[2] = 0;
                  v161->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(buf.st_gid) < 0)
                  {
                    operator delete(*&buf.st_dev);
                  }

                  if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v163 = &v211;
                  }

                  else
                  {
                    v163 = v211.__r_.__value_.__r.__words[0];
                  }

                  if (stat(v163, &buf))
                  {
                    cf = 0;
                  }

                  else
                  {
                    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&buf, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      *&buf.st_dev = *&v211.__r_.__value_.__l.__data_;
                      *&buf.st_uid = *(&v211.__r_.__value_.__l + 2);
                    }

                    AUSM::loadAUPreset(&cf, &buf);
                    if (SHIBYTE(buf.st_gid) < 0)
                    {
                      operator delete(*&buf.st_dev);
                    }
                  }

                  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v211.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(inDestinationFormat.mFramesPerPacket) < 0)
                  {
                    operator delete(*&inDestinationFormat.mSampleRate);
                  }

                  if (v205 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (cf)
                  {
                    *&inDestinationFormat.mSampleRate = cf;
                    v166 = **v137;
                    v167 = -66744;
                    if (!v166 || (v167 = AudioUnitSetProperty(v166, 0, 0, 0, &inDestinationFormat, 8u)) != 0)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v168 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                      {
                        v178 = this + 3752;
                        if (*(this + 3775) < 0)
                        {
                          v178 = *v138;
                        }

                        v179 = (*v137 + 72);
                        if (*(*v137 + 95) < 0)
                        {
                          v179 = *v179;
                        }

                        buf.st_dev = 136315906;
                        *&buf.st_mode = v178;
                        WORD2(buf.st_ino) = 2080;
                        *(&buf.st_ino + 6) = "InitializeDynamicsProcessing";
                        HIWORD(buf.st_gid) = 1024;
                        buf.st_rdev = v167;
                        *(&buf.st_rdev + 2) = 2080;
                        *(&buf.st_rdev + 6) = v179;
                        _os_log_error_impl(&dword_1DDB85000, v168, OS_LOG_TYPE_ERROR, "[%s|%s] error %d setting preset on %s", &buf, 0x26u);
                      }
                    }
                  }

                  v169 = AUSM::AUFXWrapper::initialize(*v137, *(this + 84));
                  if (v169)
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v170 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                    {
                      v175 = this + 3752;
                      if (*(this + 3775) < 0)
                      {
                        v175 = *v138;
                      }

                      v176 = (*v137 + 72);
                      if (*(*v137 + 95) < 0)
                      {
                        v176 = *v176;
                      }

                      buf.st_dev = 136315906;
                      *&buf.st_mode = v175;
                      WORD2(buf.st_ino) = 2080;
                      *(&buf.st_ino + 6) = "InitializeDynamicsProcessing";
                      HIWORD(buf.st_gid) = 1024;
                      buf.st_rdev = v169;
                      *(&buf.st_rdev + 2) = 2080;
                      *(&buf.st_rdev + 6) = v176;
                      _os_log_error_impl(&dword_1DDB85000, v170, OS_LOG_TYPE_ERROR, "[%s|%s] error %d initalizing %s; processing disabled", &buf, 0x26u);
                    }
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }
                }

                else
                {
LABEL_207:
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v146 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
                  {
                    v164 = this + 3752;
                    if (*(this + 3775) < 0)
                    {
                      v164 = *v138;
                    }

                    v165 = (*v137 + 72);
                    if (*(*v137 + 95) < 0)
                    {
                      v165 = *v165;
                    }

                    buf.st_dev = 136315906;
                    *&buf.st_mode = v164;
                    WORD2(buf.st_ino) = 2080;
                    *(&buf.st_ino + 6) = "InitializeDynamicsProcessing";
                    HIWORD(buf.st_gid) = 1024;
                    buf.st_rdev = v142;
                    *(&buf.st_rdev + 2) = 2080;
                    *(&buf.st_rdev + 6) = v165;
                    _os_log_error_impl(&dword_1DDB85000, v146, OS_LOG_TYPE_ERROR, "[%s|%s] error %d setting stream formats on %s; disabling processing", &buf, 0x26u);
                  }

                  AUSM::AUFXWrapper::uninitialize(*v137);
                }

                ++v137;
              }

              while (v137 != v136);
              if (v208 != v209)
              {
                caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3456);
                v181 = *(this + 465);
                v182 = *(this + 464);
                while (v181 != v182)
                {
                  v181 = std::unique_ptr<AUSM::AUFXWrapper>::~unique_ptr[abi:ne200100](v181 - 1);
                }

                *(this + 465) = v182;
                v184 = v208;
                v183 = v209;
                while (v184 != v183)
                {
                  std::vector<std::unique_ptr<AUSM::AUFXWrapper>>::push_back[abi:ne200100](this + 3712, v184++);
                }

                caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
              }
            }

            if (valuePtr[0])
            {
              valuePtr[1] = valuePtr[0];
              operator delete(valuePtr[0]);
            }

            *&buf.st_dev = &v208;
            std::vector<std::unique_ptr<AUSM::AUFXWrapper>>::__destroy_vector::operator()[abi:ne200100](&buf);
          }

          AUSpatialMixerV2::UpdateDiffuseProcessors(this);
          if (*(this + 885))
          {
            AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&buf, this + 5800);
            v185 = *&buf.st_dev;
            if (*&buf.st_dev)
            {
              v186 = *(this + 885);
              CFRetain(*&buf.st_dev);
              v201 = v185;
              AUSM::RoomCongruence::Processor::setTuningParameters(v186, &v201);
              CFRelease(v185);
            }

            AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&inData, this + 5440);
            v187 = inData.mSampleRate;
            if (*&inData.mSampleRate)
            {
              (*(*this + 592))(this, 3239);
              CFRelease(*&v187);
            }

            if (v185)
            {
              CFRelease(v185);
            }
          }

          if (ausdk::AUScope::GetElement((this + 128), 0))
          {
            operator new();
          }

          ausdk::Throw(0xFFFFD583);
        }
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v188 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v188 = *v188;
    }

    buf.st_dev = 136315650;
    *&buf.st_mode = v188;
    WORD2(buf.st_ino) = 2080;
    *(&buf.st_ino + 6) = "Initialize";
    HIWORD(buf.st_gid) = 1024;
    buf.st_rdev = v9;
    _os_log_error_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid max frames per slice: %u", &buf, 0x1Cu);
  }

  return 4294956421;
}

void sub_1DDD06DC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void ___ZN16AUSpatialMixerV210InitializeEv_block_invoke_120(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = (v1 + 9824);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v3 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v18 = (v1 + 9824);
    if (*(v1 + 9847) < 0)
    {
      v18 = *v2;
    }

    HIDWORD(v20) = 136315650;
    v21 = v18;
    v22 = 2080;
    v23 = "getValue";
    v24 = 2080;
    v25 = "ausm_source_mode_override";
    _os_log_debug_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", &v20 + 4, 0x20u);
  }

  v4 = CFPreferencesCopyAppValue(@"ausm_source_mode_override", @"com.apple.coreaudio");
  v6 = v4;
  if (v4)
  {
    v7 = AUSM::UserDefaults::CFTypeToUInt32(v4, v5);
    v8 = v7;
    v9 = HIDWORD(v7);
    if (HIDWORD(v7))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v10 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v1 + 9847) < 0)
        {
          v2 = *v2;
        }

        HIDWORD(v20) = 136315906;
        v21 = v2;
        v22 = 2080;
        v23 = "getValue";
        v24 = 2080;
        v25 = "ausm_source_mode_override";
        v26 = 1024;
        v27 = v8;
        _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", &v20 + 4, 0x26u);
      }
    }

    CFRelease(v6);
    if (v9)
    {
      LODWORD(v20) = v8;
      std::__shared_mutex_base::lock_shared((v1 + 3504));
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = *(v1 + 120);
        if (v13)
        {
          LODWORD(v14) = (*(*v13 + 24))(v13);
        }

        else
        {
          v14 = (*(v1 + 104) - *(v1 + 96)) >> 3;
        }

        if (v11 >= v14)
        {
          break;
        }

        HIDWORD(v20) = 0;
        Element = ausdk::AUScope::GetElement((v1 + 80), v11);
        v16 = Element;
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        AUSM::Properties::getProperty((Element + 832), 0xBBDu, (&v20 + 4));
        if (HIDWORD(v20) != v20)
        {
          v12 |= AUSM::Properties::setProperty((v16 + 832), 3005, &v20, 4, 0) == 0;
        }

        ++v11;
      }

      if (v12)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v17 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = (v1 + 3752);
          if (*(v1 + 3775) < 0)
          {
            v19 = *v19;
          }

          HIDWORD(v20) = 136315650;
          v21 = v19;
          v22 = 2080;
          v23 = "Initialize_block_invoke";
          v24 = 1024;
          LODWORD(v25) = v20;
          _os_log_debug_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "[%s|%s] Applied source mode = %u based on defaults write ", &v20 + 4, 0x1Cu);
        }

        atomic_store(1u, (v1 + 3392));
      }

      std::__shared_mutex_base::unlock_shared((v1 + 3504));
    }
  }

  AUSpatialMixerV2::DebugSoloInputElement(v1);
}

void sub_1DDD07778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AUSpatialMixerV2::DebugSoloInputElement(AUSpatialMixerV2 *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = (this + 9824);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v3 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v19 = v2;
    if (*(this + 9847) < 0)
    {
      v19 = *v2;
    }

    *buf = 136315650;
    v21 = v19;
    v22 = 2080;
    v23 = "getValue";
    v24 = 2080;
    *v25 = "ausm_solo_input";
    _os_log_debug_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", buf, 0x20u);
  }

  v4 = CFPreferencesCopyAppValue(@"ausm_solo_input", @"com.apple.coreaudio");
  v6 = v4;
  if (v4)
  {
    v7 = AUSM::UserDefaults::CFTypeToUInt32(v4, v5);
    v8 = v7;
    v9 = HIDWORD(v7);
    if (HIDWORD(v7))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v10 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(this + 9847) < 0)
        {
          v2 = *v2;
        }

        *buf = 136315906;
        v21 = v2;
        v22 = 2080;
        v23 = "getValue";
        v24 = 2080;
        *v25 = "ausm_solo_input";
        *&v25[8] = 1024;
        *&v25[10] = v8;
        _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", buf, 0x26u);
      }
    }

    CFRelease(v6);
    if (v9)
    {
      v12 = 0;
      v11.n128_u32[1] = 0;
      while (1)
      {
        v13 = *(this + 15);
        if (v13)
        {
          LODWORD(v14) = (*(*v13 + 24))(v13);
        }

        else
        {
          v14 = (*(this + 13) - *(this + 12)) >> 3;
        }

        if (v12 >= v14)
        {
          break;
        }

        if (v8 == v12)
        {
          v11.n128_f32[0] = 1.0;
        }

        else
        {
          v11.n128_f32[0] = 0.0;
        }

        v15 = (*(*this + 152))(this, 5, 1, v12, 0, v11);
        if (v15)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v16 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = this + 3752;
            if (*(this + 3775) < 0)
            {
              v17 = *(this + 469);
            }

            *buf = 136316162;
            v18 = "disabled";
            if (v8 == v12)
            {
              v18 = "enabled";
            }

            v21 = v17;
            v22 = 2080;
            v23 = "DebugSoloInputElement";
            v24 = 1024;
            *v25 = v12;
            *&v25[4] = 2080;
            *&v25[6] = v18;
            v26 = 1024;
            v27 = v15;
            _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] Solo: could not set input #%u to %s, err = %d", buf, 0x2Cu);
          }
        }

        v12 = (v12 + 1);
      }
    }
  }
}

void sub_1DDD07B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AUSpatialMixerV2::InitializeOutputConverter(AUSpatialMixerV2 *this)
{
  v54 = *MEMORY[0x1E69E9840];
  AUSpatialMixerV2::DisposeOutputConverter(this);
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 96);
  *&inDestinationFormat.mSampleRate = *(Element + 80);
  *&inDestinationFormat.mBytesPerPacket = v3;
  *&inDestinationFormat.mBitsPerChannel = *(Element + 112);
  inDestinationFormat.mSampleRate = 44100.0;
  inSourceFormat.mSampleRate = 44100.0;
  *&inSourceFormat.mFormatID = xmmword_1DE09BD50;
  inSourceFormat.mBytesPerFrame = 4;
  inSourceFormat.mChannelsPerFrame = HIDWORD(v3);
  *&inSourceFormat.mBitsPerChannel = 32;
  AudioConverterNew(&inSourceFormat, &inDestinationFormat, this + 416);
  if (*(this + 430))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v4 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v34 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v34 = *v34;
      }

      *buf = 136315394;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = "CreateOutputCaptureFileIfNecessary";
      _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s|%s] Inconsistent behaviour: there was already an output capture file! Disposing of it.", buf, 0x16u);
    }

    AUSpatialMixerV2::DisposeOutputCaptureFile(this);
  }

  v5 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)9>(this + 1228);
  if (HIDWORD(v5) && v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)11>(this + 1228);
    if (HIDWORD(v7))
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    v6 = !v8;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v9 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v32 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v32 = *v32;
    }

    v33 = "no";
    *buf = 136315650;
    *&buf[4] = v32;
    *&buf[12] = 2080;
    *&buf[14] = "CreateOutputCaptureFileIfNecessary";
    if (v6)
    {
      v33 = "yes";
    }

    *&buf[22] = 2080;
    *&buf[24] = v33;
    _os_log_debug_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "[%s|%s] Creating the output capture file: %s", buf, 0x20u);
  }

  if (v6)
  {
    if ((*(this + 6855) & 0x8000000000000000) != 0)
    {
      if (*(this + 855))
      {
LABEL_22:
        CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(v10);
        v12 = (this + 6832);
        caulk::make_string("%d%02d%02d.%02d%02d%02d", v44, CurrentGregorianDate, ((CurrentGregorianDate >> 8) >> 24), ((CurrentGregorianDate >> 16) >> 24), ((CurrentGregorianDate >> 24) >> 24), (SHIDWORD(CurrentGregorianDate) >> 24), v13);
        if (*(this + 6855) < 0)
        {
          v12 = *v12;
        }

        v14 = this + 3752;
        v15 = this + 3752;
        if (*(this + 3775) < 0)
        {
          v15 = *v14;
        }

        v16 = v44;
        if (v45 < 0)
        {
          v16 = v44[0];
        }

        v17 = CFStringCreateWithFormat(0, 0, @"%s/ausm_%s_output_%s_%u.caf", v12, v15, v16, *(this + 862));
        filePath = v17;
        if (v17)
        {
          v18 = CFGetTypeID(v17);
          if (v18 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = this + 3752;
          if (*(this + 3775) < 0)
          {
            v20 = *v14;
          }

          if (!filePath)
          {
            v38 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v38, "Could not construct");
          }

          applesauce::CF::convert_to<std::string,0>(&__p, filePath);
          if ((__p.mFramesPerPacket & 0x80000000) == 0)
          {
            mSampleRate = COERCE_DOUBLE(&__p);
          }

          else
          {
            mSampleRate = __p.mSampleRate;
          }

          *buf = 136315650;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = "CreateOutputCaptureFileIfNecessary";
          *&buf[22] = 2080;
          *&buf[24] = mSampleRate;
          _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "[%s|%s] Capture file: %s", buf, 0x20u);
          if (SHIBYTE(__p.mFramesPerPacket) < 0)
          {
            operator delete(*&__p.mSampleRate);
          }
        }

        v22 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0);
        inURL = v22;
        if (v22)
        {
          v23 = CFGetTypeID(v22);
          if (v23 != CFURLGetTypeID())
          {
            v37 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v37, "Could not construct");
          }
        }

        v24 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v24)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v25 = (this + 3440);
        v26 = *(v24 + 96);
        *buf = *(v24 + 80);
        *&buf[16] = v26;
        v53 = *(v24 + 112);
        __p.mSampleRate = *buf;
        *&__p.mFormatID = 0x96C70636DLL;
        __p.mBytesPerPacket = 4 * HIDWORD(v26);
        __p.mFramesPerPacket = 1;
        __p.mBytesPerFrame = 4 * HIDWORD(v26);
        __p.mChannelsPerFrame = HIDWORD(v26);
        *&__p.mBitsPerChannel = 32;
        v27 = ExtAudioFileCreateWithURL(inURL, 0x63616666u, &__p, 0, 1u, this + 430);
        if (v27)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v28 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 3775) < 0)
            {
              v14 = *v14;
            }

            *v46 = 136315650;
            v47 = v14;
            v48 = 2080;
            v49 = "CreateOutputCaptureFileIfNecessary";
            v50 = 1024;
            v51 = v27;
            _os_log_error_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: Could not create mixer output capture file (ExtAudioFileCreateWithURL returned %d)", v46, 0x1Cu);
          }
        }

        else
        {
          v30 = ExtAudioFileSetProperty(*v25, 0x63666D74u, 0x28u, buf);
          if (!v30)
          {
LABEL_60:
            ++*(this + 862);
            if (inURL)
            {
              CFRelease(inURL);
            }

            if (filePath)
            {
              CFRelease(filePath);
            }

            if (v45 < 0)
            {
              operator delete(v44[0]);
            }

            return;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v31 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 3775) < 0)
            {
              v14 = *v14;
            }

            *v46 = 136315650;
            v47 = v14;
            v48 = 2080;
            v49 = "CreateOutputCaptureFileIfNecessary";
            v50 = 1024;
            v51 = v30;
            _os_log_error_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: Could not create mixer output file (ExtAudioFileSetProperty with kExtAudioFileProperty_ClientDataFormat returned %d)", v46, 0x1Cu);
          }

          ExtAudioFileDispose(*v25);
        }

        *v25 = 0;
        goto LABEL_60;
      }
    }

    else if (*(this + 6855))
    {
      goto LABEL_22;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v29 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v35 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v35 = *v35;
      }

      *buf = 136315394;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = "CreateOutputCaptureFileIfNecessary";
      _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: Could not create mixer output capture file (no capture dir path available)", buf, 0x16u);
    }
  }
}

void sub_1DDD0839C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, int a33, const void *a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  __cxa_free_exception(v41);

  applesauce::CF::StringRef::~StringRef(&a34);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AUSpatialMixerV2::UpdateDiffuseProcessors(AUSpatialMixerV2 *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 2984);
  if ((v1 & 1) == 0)
  {
    return;
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = (Element + 120);
  v4 = *(Element + 120);
  v6 = *v4;
  if (*v4 != 6553601)
  {
    if (v6)
    {
      goto LABEL_8;
    }

    if (v4[2] != 1 || v4[3] != 42)
    {
      goto LABEL_9;
    }
  }

  v4 = *(Element + 224);
  v6 = *v4;
  v5 = (Element + 224);
LABEL_8:
  if ((v6 | 0x10000) == 0x10000)
  {
LABEL_9:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v8 = *v8;
      }

      GetStringFromAudioChannelLayoutTag(__p, **v5);
      if (v25 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      buf.mChannelLayoutTag = 136315650;
      *&buf.mChannelBitmap = v8;
      LOWORD(buf.mChannelDescriptions[0].mChannelLabel) = 2080;
      *(&buf.mChannelDescriptions[0].mChannelLabel + 2) = "UpdateDiffuseProcessors";
      HIWORD(buf.mChannelDescriptions[0].mCoordinates[0]) = 2080;
      *&buf.mChannelDescriptions[0].mCoordinates[1] = v9;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "[%s|%s] Output layout tag %s is not supported for Diffuse", &buf, 0x20u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_30:

    v12 = (this + 9936);
    v13 = 3072;
    do
    {
      if (*(v12 + 184) == 1)
      {
        IR::IRProcessor::~IRProcessor(v12);
        *(v12 + 184) = 0;
      }

      v12 = (v12 + 192);
      v13 -= 192;
    }

    while (v13);
    *(this + 3253) = 0;
    return;
  }

  v10 = v6;
  if (!v6)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v22 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v22 = *v22;
      }

      buf.mChannelLayoutTag = 136315394;
      *&buf.mChannelBitmap = v22;
      LOWORD(buf.mChannelDescriptions[0].mChannelLabel) = 2080;
      *(&buf.mChannelDescriptions[0].mChannelLabel + 2) = "UpdateDiffuseProcessors";
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "[%s|%s] Error: this output layout is invalid", &buf, 0x16u);
    }

    goto LABEL_30;
  }

  if (v6 >= 0x11u)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v11 = *v11;
      }

      buf.mChannelLayoutTag = 136315394;
      *&buf.mChannelBitmap = v11;
      LOWORD(buf.mChannelDescriptions[0].mChannelLabel) = 2080;
      *(&buf.mChannelDescriptions[0].mChannelLabel + 2) = "UpdateDiffuseProcessors";
      _os_log_debug_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "[%s|%s] Not enough DiffuseProcessors for this output layout!", &buf, 0x16u);
    }

    goto LABEL_30;
  }

  if (v6 != *(this + 3252))
  {
    *(this + 3253) = 0;
    GetChannelLayoutChannelLabels(&buf, v4);
    if (!v10)
    {
      goto LABEL_52;
    }

    v14 = 0;
    v15 = (this + 9936);
    v16 = &AUSM::kDiffuseCoeffs;
    do
    {
      v17 = *(*&buf.mChannelLayoutTag + v14);
      if (v17 <= 0x3E && ((0x4000002000000010uLL >> v17) & 1) != 0 || v17 == 45 || v17 == 40)
      {
        if (*(v15 + 184) == 1)
        {
          IR::IRProcessor::~IRProcessor(v15);
          *(v15 + 184) = 0;
        }
      }

      else
      {
        if ((*(v15 + 184) & 1) == 0)
        {
          IR::IRProcessor::IRProcessor(v15, 0x200u, 0.0, 1u, 128, 1);
        }

        IR::IRProcessor::uninitialize(v15);
        IR::IRProcessor::reset(v15);
        v18 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v18)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v19 = *(v18 + 80);
        IR::IRProcessor::initialize(v15, v19, *(this + 84), 128);
        v23 = 0.0;
        __p[0] = v16;
        IR::IRProcessor::setIRCoeffs(v15, __p, &v23);
        ++*(this + 3253);
      }

      v14 += 4;
      v16 += 2048;
      v15 = (v15 + 192);
    }

    while (4 * v10 != v14);
    if (v10 != 16)
    {
LABEL_52:
      v20 = 16 - v10;
      v21 = (this + 192 * v10 + 9936);
      do
      {
        if (*(v21 + 184) == 1)
        {
          IR::IRProcessor::~IRProcessor(v21);
          *(v21 + 184) = 0;
        }

        v21 = (v21 + 192);
        --v20;
      }

      while (v20);
    }

    *(this + 3252) = **v5;
    if (*&buf.mChannelLayoutTag)
    {
      *&buf.mNumberChannelDescriptions = *&buf.mChannelLayoutTag;
      operator delete(*&buf.mChannelLayoutTag);
    }
  }
}

void sub_1DDD0894C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[20],unsigned int &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDD08A20(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_4828()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void AUSM::AUFXWrapper::AUFXWrapper(uint64_t a1, int a2, __int128 *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 88) = *(a3 + 2);
    *(a1 + 72) = v5;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  buf[0] = 0;
  std::vector<char>::vector[abi:ne200100]((a1 + 160), 8);
}

void sub_1DDD090E4(_Unwind_Exception *a1)
{
  AUSM::ABLBuffer::~ABLBuffer(v3);
  if (*(v1 + 119) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<AUSM::AUFXWrapper>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
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
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<std::unique_ptr<AUSM::AUFXWrapper>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<AUSM::AUFXWrapper>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)11>(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1;
    if (*(a1 + 23) < 0)
    {
      v12 = *a1;
    }

    *buf = 136315650;
    v14 = v12;
    v15 = 2080;
    v16 = "getValue";
    v17 = 2080;
    v18 = "ausm_capture_output";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", buf, 0x20u);
  }

  v3 = CFPreferencesCopyAppValue(@"ausm_capture_output", @"com.apple.coreaudio");
  v5 = v3;
  if (v3)
  {
    v6 = AUSM::UserDefaults::CFTypeToUInt32(v3, v4);
    v7 = v6;
    v8 = HIDWORD(v6);
    if ((v6 & 0x100000000) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v9 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        *buf = 136315906;
        v14 = a1;
        v15 = 2080;
        v16 = "getValue";
        v17 = 2080;
        v18 = "ausm_capture_output";
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", buf, 0x26u);
      }
    }

    CFRelease(v5);
    v10 = v7 & 0xFFFFFF00;
  }

  else
  {
    v10 = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v7) = 0;
  }

  return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v8 << 32);
}

void sub_1DDD094EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}