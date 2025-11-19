void sub_1DE2D6BA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInDevice::_Deactivate(HALS_PlugInDevice *this)
{
  v2 = 0;
  v3 = this + 1496;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &v3[24 * v2];
    v7 = *v6;
    if (*(v6 + 1) != *v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 8 * v8);
        (*(*v10 + 8))(v10);
        HALS_ObjectMap::ObjectIsDead(v10, v11);
        v8 = v9;
        v7 = *v6;
        ++v9;
      }

      while (v8 < (*(v6 + 1) - *v6) >> 3);
    }

    v4 = 0;
    *(v6 + 1) = v7;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = *(this + 193);
  if (*(this + 194) != v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = *(v12 + 8 * v13);
      (*(*v15 + 8))(v15);
      HALS_ObjectMap::ObjectIsDead(v15, v16);
      v13 = v14;
      v12 = *(this + 193);
      ++v14;
    }

    while (v13 < (*(this + 194) - v12) >> 3);
  }

  *(this + 194) = v12;
  (*(**(*(this + 183) + 416) + 136))(*(*(this + 183) + 416), *(this + 369));

  return HALS_Device::_Deactivate(this);
}

void sub_1DE2D6F98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInDevice::HALS_PlugInDevice(HALS_PlugInDevice *this, HALB_Info *a2, HALS_PlugIn *a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 52);
  v8 = *(a3 + 53);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 568))(v7, a4);
  HALS_Device::HALS_Device(this, a2, a3, 0, v9);
}

void sub_1DE2D74D4()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1DE2D74CCLL);
}

char *CAStreamBasicDescription::AsString(CAStreamBasicDescription *this, char *a2, size_t a3, double a4, int8x8_t a5)
{
  CA::StreamDescription::AsString(__p, this, a4, a5);
  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  strlcpy(a2, v7, a3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1DE2D755C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<AudioStreamRangedDescription>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<AudioStreamRangedDescription>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE2D7600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioStreamRangedDescription>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 56 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x492492492492492)
      {
        v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x249249249249249)
        {
          v10 = 0x492492492492492;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 56 * ((56 * v6 - 56) / 0x38) + 56;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

void std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<std::pair<unsigned int,std::vector<unsigned int>>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL CodecRegistryEntry::ReadRegistersFromCFData<CodecRegistryEntry::RegisterWidth>(size_t *a1, CFDataRef theData, int a3, int a4)
{
  if (!theData)
  {
    return theData != 0;
  }

  if (a4 == 1)
  {
    Length = CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(theData);
    if (!BytePtr)
    {
      return theData != 0;
    }

    v20 = BytePtr;
    memset(&v35, 0, sizeof(v35));
    std::vector<unsigned int>::reserve(&v35, Length);
    if (Length >= 1)
    {
      do
      {
        v21 = *v20++;
        v31 = v21;
        std::vector<unsigned int>::push_back[abi:ne200100](&v35, &v31);
        --Length;
      }

      while (Length);
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 4)
      {
        v7 = CFDataGetLength(theData);
        v8 = CFDataGetBytePtr(theData);
        if (v8)
        {
          v9 = v8;
          v10 = v7 >> 2;
          memset(&v35, 0, sizeof(v35));
          std::vector<unsigned int>::reserve(&v35, v7 >> 2);
          if (v7 > 3)
          {
            end = v35.__end_;
            value = v35.__end_cap_.__value_;
            begin = v35.__begin_;
            do
            {
              if (end >= value)
              {
                v25 = end - begin;
                v26 = end - begin;
                v27 = v26 + 1;
                if ((v26 + 1) >> 62)
                {
                  v35.__begin_ = begin;
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if ((value - begin) >> 1 > v27)
                {
                  v27 = (value - begin) >> 1;
                }

                if ((value - begin) >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v28 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v27;
                }

                if (v28)
                {
                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v28);
                }

                v29 = (4 * v26);
                value = 0;
                *v29 = *v9;
                end = v29 + 1;
                memcpy(0, begin, v25);
                if (begin)
                {
                  operator delete(begin);
                }

                begin = 0;
              }

              else
              {
                *end++ = *v9;
              }

              v9 += 4;
              --v10;
            }

            while (v10);
            v35.__end_ = end;
            v35.__end_cap_.__value_ = value;
            v35.__begin_ = begin;
          }

          else
          {
            begin = v35.__begin_;
            end = v35.__end_;
          }

          v31 = a3;
          v33 = 0;
          v34 = 0;
          __p = 0;
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, begin, end, end - begin);
          std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::push_back[abi:ne200100](a1, &v31);
          if (__p)
          {
            operator delete(__p);
          }

          v23 = v35.__begin_;
          if (v35.__begin_)
          {
            goto LABEL_38;
          }
        }
      }

      return theData != 0;
    }

    v13 = CFDataGetLength(theData);
    v14 = CFDataGetBytePtr(theData);
    if (!v14)
    {
      return theData != 0;
    }

    v15 = v14;
    v16 = v13 >> 1;
    memset(&v35, 0, sizeof(v35));
    std::vector<unsigned int>::reserve(&v35, v13 >> 1);
    if (v13 >= 2)
    {
      do
      {
        v17 = *v15;
        v15 += 2;
        v31 = v17;
        std::vector<unsigned int>::push_back[abi:ne200100](&v35, &v31);
        --v16;
      }

      while (v16);
    }
  }

  v31 = a3;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v22 = v35.__begin_;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v35.__begin_, v35.__end_, v35.__end_ - v35.__begin_);
  std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::push_back[abi:ne200100](a1, &v31);
  if (__p)
  {
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
LABEL_38:
    operator delete(v23);
  }

  return theData != 0;
}

void sub_1DE2D7BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

size_t *std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::push_back[abi:ne200100](size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *result) >> 5;
    v7 = v6 + 1;
    if ((v6 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      std::allocator<std::pair<unsigned int,std::vector<unsigned int>>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = 32 * v6;
    *v10 = *a2;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 8) = 0;
    *(v10 + 8) = *(a2 + 8);
    *(v10 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v5 = 32 * v6 + 32;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::pair<unsigned int,std::vector<unsigned int>>>::~__split_buffer(v15);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v5 = v3 + 32;
  }

  v2[1] = v5;
  return result;
}

void std::allocator<std::pair<unsigned int,std::vector<unsigned int>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<unsigned int,std::vector<unsigned int>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AMCP::Core::Driver_Manager::load(uint64_t a1, uint64_t *a2, const void ***a3, const void ***a4)
{
  v236 = *MEMORY[0x1E69E9840];
  MainBundle = CFBundleGetMainBundle();
  v8 = MainBundle;
  if (MainBundle)
  {
    CFRetain(MainBundle);
  }

  v9 = mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::BasicRef(&v232, v8);
  if (!v232)
  {
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v226 = 0;
    v227 = 0;
    v228 = 0;
LABEL_12:
    if (&v229 != a3)
    {
      std::vector<applesauce::CF::StringRef>::__assign_with_size[abi:ne200100]<applesauce::CF::StringRef*,applesauce::CF::StringRef*>(&v229, *a3, a3[1], a3[1] - *a3);
    }

    if (&v226 != a4)
    {
      std::vector<applesauce::CF::StringRef>::__assign_with_size[abi:ne200100]<applesauce::CF::StringRef*,applesauce::CF::StringRef*>(&v226, *a4, a4[1], a4[1] - *a4);
    }

    goto LABEL_16;
  }

  mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(cf, v232);
  v10 = CFStringCreateWithBytes(0, "com.apple.audio.coreaudiod", 26, 0x8000100u, 0);
  v235.__r_.__value_.__r.__words[0] = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf[0], &v235);
  CFRelease(v10);
  v9 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v229 = 0;
  v230 = 0;
  v231 = 0;
  v226 = 0;
  v227 = 0;
  v228 = 0;
  if (v11)
  {
    goto LABEL_12;
  }

  v9 = AMCP::Feature_Flags::access_run_new_hal(0, v12);
  if (v9)
  {
    goto LABEL_12;
  }

  v9 = AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(0, v13);
  if (v9)
  {
    goto LABEL_12;
  }

  v81 = (v230 - v229) >> 3;
  if ((v81 + 1) >> 61)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v82 = (v231 - v229) >> 2;
  if (v82 <= v81 + 1)
  {
    v82 = v81 + 1;
  }

  if ((v231 - v229) >= 0x7FFFFFFFFFFFFFF8)
  {
    v83 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v83 = v82;
  }

  cf[4] = &v229;
  if (v83)
  {
    std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v83);
  }

  cf[0] = 0;
  cf[1] = (8 * v81);
  cf[2] = (8 * v81);
  cf[3] = 0;
  std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,char const(&)[28],void,0>((8 * v81));
  cf[2] = cf[2] + 8;
  std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(&v229, cf);
  v214 = v230;
  v9 = std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(cf);
  v230 = v214;
LABEL_16:
  if (v229 != v230)
  {
    v14 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
    cf[0] = v14;
    if (!v14)
    {
      v217 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v217, "Could not construct");
      __cxa_throw(v217, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = v226;
    v16 = v227;
    if (v226 == v227)
    {
      v17 = 0;
    }

    else
    {
      while (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v15, cf))
      {
        if (++v15 == v16)
        {
          v15 = v16;
          break;
        }
      }

      v17 = v15 != v227;
    }

    CFRelease(v14);
    if (!v17)
    {
      v26 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
      cf[0] = v26;
      if (!v26)
      {
        v218 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v218, "Could not construct");
        __cxa_throw(v218, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v27 = v229;
      v28 = v230;
      if (v229 == v230)
      {
        v225 = 0;
      }

      else
      {
        do
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v27, cf) == kCFCompareEqualTo)
          {
            goto LABEL_41;
          }

          ++v27;
        }

        while (v27 != v28);
        v27 = v28;
LABEL_41:
        v225 = v27 != v230;
      }

      CFRelease(v26);
      if (v225)
      {
        v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v38 & 1) == 0)
        {
          v37 = AMCP::Log::AMCP_Scope_Registry::initialize(v37);
        }

        v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = *(v39 + 16);
        switch(v41)
        {
          case 3:
            v69 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v69 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v71 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v70 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v70)
            {
              atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
              v72 = *v71;
              std::__shared_weak_count::__release_shared[abi:ne200100](v70);
            }

            else
            {
              v72 = *v71;
            }

            if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              goto LABEL_149;
            }

            LODWORD(cf[0]) = 136315394;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 67;
            v84 = v72;
            v85 = OS_LOG_TYPE_INFO;
            break;
          case 2:
            v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v65 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
              v68 = *v67;
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            else
            {
              v68 = *v67;
            }

            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(cf[0]) = 136315394;
              *(cf + 4) = "Driver_Manager.cpp";
              WORD2(cf[1]) = 1024;
              *(&cf[1] + 6) = 67;
              _os_log_debug_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading all drivers...", cf, 0x12u);
            }

            goto LABEL_149;
          case 1:
            v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v42 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              v45 = *v44;
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }

            else
            {
              v45 = *v44;
            }

            if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
LABEL_149:
              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

              v86 = 1;
              goto LABEL_219;
            }

            LODWORD(cf[0]) = 136315394;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 67;
            v84 = v45;
            v85 = OS_LOG_TYPE_DEFAULT;
            break;
          default:
            goto LABEL_149;
        }

        _os_log_impl(&dword_1DE1F9000, v84, v85, "%32s:%-5d Loading all drivers...", cf, 0x12u);
        goto LABEL_149;
      }

      if (!*v229)
      {
LABEL_404:
        v215 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v215, "Could not construct");
        __cxa_throw(v215, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v46 = applesauce::CF::convert_to<std::string,0>(&v235, *v229);
      if ((v230 - v229) >= 9)
      {
        v47 = 1;
        do
        {
          std::string::append(&v235, ", ", 2uLL);
          v48 = v229[v47];
          if (!v48)
          {
            goto LABEL_404;
          }

          applesauce::CF::convert_to<std::string,0>(cf, v48);
          if (SHIBYTE(cf[2]) >= 0)
          {
            v49 = cf;
          }

          else
          {
            v49 = cf[0];
          }

          if (SHIBYTE(cf[2]) >= 0)
          {
            v50 = HIBYTE(cf[2]);
          }

          else
          {
            v50 = cf[1];
          }

          v46 = std::string::append(&v235, v49, v50);
          if (SHIBYTE(cf[2]) < 0)
          {
            operator delete(cf[0]);
          }
        }

        while (++v47 < ((v230 - v229) >> 3));
      }

      memset(&v234, 0, sizeof(v234));
      if (v226 != v227)
      {
        if (!*v226)
        {
          goto LABEL_404;
        }

        v46 = applesauce::CF::convert_to<std::string,0>(cf, *v226);
        if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v234.__r_.__value_.__l.__data_);
        }

        v234 = *cf;
        if ((v227 - v226) >= 9)
        {
          v51 = 1;
          do
          {
            std::string::append(&v234, ", ", 2uLL);
            v52 = v226[v51];
            if (!v52)
            {
              goto LABEL_404;
            }

            applesauce::CF::convert_to<std::string,0>(cf, v52);
            if (SHIBYTE(cf[2]) >= 0)
            {
              v53 = cf;
            }

            else
            {
              v53 = cf[0];
            }

            if (SHIBYTE(cf[2]) >= 0)
            {
              v54 = HIBYTE(cf[2]);
            }

            else
            {
              v54 = cf[1];
            }

            v46 = std::string::append(&v234, v53, v54);
            if (SHIBYTE(cf[2]) < 0)
            {
              operator delete(cf[0]);
            }
          }

          while (++v51 < ((v227 - v226) >> 3));
        }
      }

      v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v55 & 1) == 0)
      {
        v46 = AMCP::Log::AMCP_Scope_Registry::initialize(v46);
      }

      v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = *(v56 + 16);
      switch(v58)
      {
        case 3:
          v77 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v77 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v79 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v78 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            v80 = *v79;
            std::__shared_weak_count::__release_shared[abi:ne200100](v78);
          }

          else
          {
            v80 = *v79;
          }

          v46 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);
          if (v46)
          {
            v88 = &v235;
            if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v88 = v235.__r_.__value_.__r.__words[0];
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 87;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v88;
            v89 = v80;
            v90 = OS_LOG_TYPE_INFO;
            goto LABEL_167;
          }

          break;
        case 2:
          v73 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v73 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v75 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v74 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
            v76 = *v75;
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          else
          {
            v76 = *v75;
          }

          v46 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
          if (v46)
          {
            v87 = &v235;
            if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v87 = v235.__r_.__value_.__r.__words[0];
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 87;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v87;
            _os_log_debug_impl(&dword_1DE1F9000, v76, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading drivers: %s...", cf, 0x1Cu);
          }

          break;
        case 1:
          v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v59 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v60 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
            v62 = *v61;
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          else
          {
            v62 = *v61;
          }

          v46 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            v91 = &v235;
            if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v91 = v235.__r_.__value_.__r.__words[0];
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 87;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v91;
            v89 = v62;
            v90 = OS_LOG_TYPE_DEFAULT;
LABEL_167:
            _os_log_impl(&dword_1DE1F9000, v89, v90, "%32s:%-5d Loading drivers: %s...", cf, 0x1Cu);
          }

          break;
      }

      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      v92 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v92 & 1) == 0)
      {
        v46 = AMCP::Log::AMCP_Scope_Registry::initialize(v46);
      }

      v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v94 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v95 = *(v93 + 16);
      switch(v95)
      {
        case 3:
          v104 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v104 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v106 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v105 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v105)
          {
            atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
            v107 = *v106;
            std::__shared_weak_count::__release_shared[abi:ne200100](v105);
          }

          else
          {
            v107 = *v106;
          }

          if (!os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            goto LABEL_205;
          }

          v109 = &v234;
          if ((v234.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v109 = v234.__r_.__value_.__r.__words[0];
          }

          LODWORD(cf[0]) = 136315650;
          *(cf + 4) = "Driver_Manager.cpp";
          WORD2(cf[1]) = 1024;
          *(&cf[1] + 6) = 88;
          WORD1(cf[2]) = 2080;
          *(&cf[2] + 4) = v109;
          v110 = v107;
          v111 = OS_LOG_TYPE_INFO;
          break;
        case 2:
          v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v100 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v101)
          {
            atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
            v103 = *v102;
            std::__shared_weak_count::__release_shared[abi:ne200100](v101);
          }

          else
          {
            v103 = *v102;
          }

          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            v108 = &v234;
            if ((v234.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v108 = v234.__r_.__value_.__r.__words[0];
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 88;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v108;
            _os_log_debug_impl(&dword_1DE1F9000, v103, OS_LOG_TYPE_DEBUG, "%32s:%-5d Not Loading drivers: %s...", cf, 0x1Cu);
          }

          goto LABEL_205;
        case 1:
          v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v96 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            v99 = *v98;
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          else
          {
            v99 = *v98;
          }

          if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
LABEL_205:
            if (v94)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v94);
            }

            if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v234.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v235.__r_.__value_.__l.__data_);
            }

            v113 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
            cf[0] = v113;
            if (!v113)
            {
              v224 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v224, "Could not construct");
              __cxa_throw(v224, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v114 = v229;
            v115 = v230;
            if (v229 == v230)
            {
              v86 = 0;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v114, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_216;
                }

                ++v114;
              }

              while (v114 != v115);
              v114 = v115;
LABEL_216:
              v86 = v114 != v230;
            }

            CFRelease(v113);
LABEL_219:
            v116 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
            cf[0] = v116;
            if (!v116)
            {
              v219 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v219, "Could not construct");
              __cxa_throw(v219, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v117 = v226;
            v118 = v227;
            if (v226 == v227)
            {
              v119 = 1;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v117, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_224;
                }

                ++v117;
              }

              while (v117 != v118);
              v117 = v118;
LABEL_224:
              v119 = v117 == v227;
            }

            CFRelease(v116);
            if (v86 && v119)
            {
              v121 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v121 & 1) == 0)
              {
                v120 = AMCP::Log::AMCP_Scope_Registry::initialize(v120);
              }

              v122 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v123 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v123)
              {
                atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v124 = *(v122 + 16);
              switch(v124)
              {
                case 3:
                  v133 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v133 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v120);
                  }

                  v135 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v134 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v134)
                  {
                    atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
                    v136 = *v135;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v134);
                  }

                  else
                  {
                    v136 = *v135;
                  }

                  if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 102;
                    v137 = v136;
                    v138 = OS_LOG_TYPE_INFO;
LABEL_256:
                    _os_log_impl(&dword_1DE1F9000, v137, v138, "%32s:%-5d Loading Null driver (com.apple.audio.Null-Driver)...", cf, 0x12u);
                  }

                  break;
                case 2:
                  v129 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v129 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v120);
                  }

                  v131 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v130 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v130)
                  {
                    atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
                    v132 = *v131;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v130);
                  }

                  else
                  {
                    v132 = *v131;
                  }

                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 102;
                    _os_log_debug_impl(&dword_1DE1F9000, v132, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading Null driver (com.apple.audio.Null-Driver)...", cf, 0x12u);
                  }

                  break;
                case 1:
                  v125 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v125 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v120);
                  }

                  v127 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v126 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v126)
                  {
                    atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
                    v128 = *v127;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
                  }

                  else
                  {
                    v128 = *v127;
                  }

                  if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 102;
                    v137 = v128;
                    v138 = OS_LOG_TYPE_DEFAULT;
                    goto LABEL_256;
                  }

                  break;
              }

              if (v123)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v123);
              }

              if (a2[1])
              {
                atomic_fetch_add_explicit(((*(a2 + 1) >> 64) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            if (v225)
            {
              v139 = 1;
            }

            else
            {
              v140 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
              cf[0] = v140;
              if (!v140)
              {
                v222 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v222, "Could not construct");
                __cxa_throw(v222, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v141 = v229;
              v142 = v230;
              if (v229 == v230)
              {
                v139 = 0;
              }

              else
              {
                do
                {
                  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v141, cf) == kCFCompareEqualTo)
                  {
                    goto LABEL_269;
                  }

                  ++v141;
                }

                while (v141 != v142);
                v141 = v142;
LABEL_269:
                v139 = v141 != v230;
              }

              CFRelease(v140);
            }

            v143 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
            cf[0] = v143;
            if (!v143)
            {
              v220 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v220, "Could not construct");
              __cxa_throw(v220, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v144 = v226;
            v145 = v227;
            if (v226 == v227)
            {
              v146 = 1;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v144, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_277;
                }

                ++v144;
              }

              while (v144 != v145);
              v144 = v145;
LABEL_277:
              v146 = v144 == v227;
            }

            CFRelease(v143);
            if (v139 && v146)
            {
              v148 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v148 & 1) == 0)
              {
                v147 = AMCP::Log::AMCP_Scope_Registry::initialize(v147);
              }

              v149 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v150 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v150)
              {
                atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v151 = *(v149 + 16);
              switch(v151)
              {
                case 3:
                  v160 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v160 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v147);
                  }

                  v162 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v161 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v161)
                  {
                    atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
                    v163 = *v162;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v161);
                  }

                  else
                  {
                    v163 = *v162;
                  }

                  if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 111;
                    v164 = v163;
                    v165 = OS_LOG_TYPE_INFO;
LABEL_308:
                    _os_log_impl(&dword_1DE1F9000, v164, v165, "%32s:%-5d Loading IOAudio1 driver (com.apple.iokit.IOAudio1)...", cf, 0x12u);
                  }

                  break;
                case 2:
                  v156 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v156 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v147);
                  }

                  v158 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v157 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v157)
                  {
                    atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
                    v159 = *v158;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
                  }

                  else
                  {
                    v159 = *v158;
                  }

                  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 111;
                    _os_log_debug_impl(&dword_1DE1F9000, v159, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading IOAudio1 driver (com.apple.iokit.IOAudio1)...", cf, 0x12u);
                  }

                  break;
                case 1:
                  v152 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v152 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v147);
                  }

                  v154 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v153 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v153)
                  {
                    atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
                    v155 = *v154;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v153);
                  }

                  else
                  {
                    v155 = *v154;
                  }

                  if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 111;
                    v164 = v155;
                    v165 = OS_LOG_TYPE_DEFAULT;
                    goto LABEL_308;
                  }

                  break;
              }

              if (v150)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v150);
              }

              if (a2[1])
              {
                atomic_fetch_add_explicit(((*(a2 + 1) >> 64) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            if (v225)
            {
              v166 = 1;
            }

            else
            {
              v167 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio2", 24, 0x8000100u, 0);
              cf[0] = v167;
              if (!v167)
              {
                v223 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v223, "Could not construct");
                __cxa_throw(v223, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v168 = v229;
              v169 = v230;
              if (v229 == v230)
              {
                v166 = 0;
              }

              else
              {
                do
                {
                  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v168, cf) == kCFCompareEqualTo)
                  {
                    goto LABEL_321;
                  }

                  ++v168;
                }

                while (v168 != v169);
                v168 = v169;
LABEL_321:
                v166 = v168 != v230;
              }

              CFRelease(v167);
            }

            v170 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio2", 24, 0x8000100u, 0);
            cf[0] = v170;
            if (!v170)
            {
              v221 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v221, "Could not construct");
              __cxa_throw(v221, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v171 = v226;
            v172 = v227;
            if (v226 == v227)
            {
              v173 = 1;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v171, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_329;
                }

                ++v171;
              }

              while (v171 != v172);
              v171 = v172;
LABEL_329:
              v173 = v171 == v227;
            }

            CFRelease(v170);
            if (v166 && v173)
            {
              v175 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v175 & 1) == 0)
              {
                v174 = AMCP::Log::AMCP_Scope_Registry::initialize(v174);
              }

              v176 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v177 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v177)
              {
                atomic_fetch_add_explicit(&v177->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v178 = *(v176 + 16);
              switch(v178)
              {
                case 3:
                  v187 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v187 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                  }

                  v189 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v188 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v188)
                  {
                    atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
                    v190 = *v189;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v188);
                  }

                  else
                  {
                    v190 = *v189;
                  }

                  if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 120;
                    v191 = v190;
                    v192 = OS_LOG_TYPE_INFO;
LABEL_360:
                    _os_log_impl(&dword_1DE1F9000, v191, v192, "%32s:%-5d Loading IOAudio2 driver (com.apple.iokit.IOAudio2)...", cf, 0x12u);
                  }

                  break;
                case 2:
                  v183 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v183 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                  }

                  v185 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v184 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v184)
                  {
                    atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
                    v186 = *v185;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                  }

                  else
                  {
                    v186 = *v185;
                  }

                  if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 120;
                    _os_log_debug_impl(&dword_1DE1F9000, v186, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading IOAudio2 driver (com.apple.iokit.IOAudio2)...", cf, 0x12u);
                  }

                  break;
                case 1:
                  v179 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v179 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                  }

                  v181 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v180 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v180)
                  {
                    atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
                    v182 = *v181;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v180);
                  }

                  else
                  {
                    v182 = *v181;
                  }

                  if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 120;
                    v191 = v182;
                    v192 = OS_LOG_TYPE_DEFAULT;
                    goto LABEL_360;
                  }

                  break;
              }

              if (v177)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v177);
              }

              if (a2[1])
              {
                atomic_fetch_add_explicit(((*(a2 + 1) >> 64) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            v193 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v193 & 1) == 0)
            {
              v174 = AMCP::Log::AMCP_Scope_Registry::initialize(v174);
            }

            v194 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v195 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v195)
            {
              atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v196 = *(v194 + 16);
            switch(v196)
            {
              case 3:
                v205 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v205 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                }

                v207 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v206 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v206)
                {
                  atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
                  v208 = *v207;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v206);
                }

                else
                {
                  v208 = *v207;
                }

                if (os_log_type_enabled(v208, OS_LOG_TYPE_INFO))
                {
                  LODWORD(cf[0]) = 136315394;
                  *(cf + 4) = "Driver_Manager.cpp";
                  WORD2(cf[1]) = 1024;
                  *(&cf[1] + 6) = 128;
                  v209 = v208;
                  v210 = OS_LOG_TYPE_INFO;
LABEL_394:
                  _os_log_impl(&dword_1DE1F9000, v209, v210, "%32s:%-5d Loading AudioServerPlugIns...", cf, 0x12u);
                }

                break;
              case 2:
                v201 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v201 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                }

                v203 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v202 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v202)
                {
                  atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
                  v204 = *v203;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v202);
                }

                else
                {
                  v204 = *v203;
                }

                if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(cf[0]) = 136315394;
                  *(cf + 4) = "Driver_Manager.cpp";
                  WORD2(cf[1]) = 1024;
                  *(&cf[1] + 6) = 128;
                  _os_log_debug_impl(&dword_1DE1F9000, v204, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading AudioServerPlugIns...", cf, 0x12u);
                }

                break;
              case 1:
                v197 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v197 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                }

                v199 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v198 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v198)
                {
                  atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
                  v200 = *v199;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v198);
                }

                else
                {
                  v200 = *v199;
                }

                if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(cf[0]) = 136315394;
                  *(cf + 4) = "Driver_Manager.cpp";
                  WORD2(cf[1]) = 1024;
                  *(&cf[1] + 6) = 128;
                  v209 = v200;
                  v210 = OS_LOG_TYPE_DEFAULT;
                  goto LABEL_394;
                }

                break;
            }

            if (v195)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v195);
            }

            v212 = *a2;
            v211 = a2[1];
            if (v211)
            {
              atomic_fetch_add_explicit((v211 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          v112 = &v234;
          if ((v234.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v112 = v234.__r_.__value_.__r.__words[0];
          }

          LODWORD(cf[0]) = 136315650;
          *(cf + 4) = "Driver_Manager.cpp";
          WORD2(cf[1]) = 1024;
          *(&cf[1] + 6) = 88;
          WORD1(cf[2]) = 2080;
          *(&cf[2] + 4) = v112;
          v110 = v99;
          v111 = OS_LOG_TYPE_DEFAULT;
          break;
        default:
          goto LABEL_205;
      }

      _os_log_impl(&dword_1DE1F9000, v110, v111, "%32s:%-5d Not Loading drivers: %s...", cf, 0x1Cu);
      goto LABEL_205;
    }
  }

  v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v18 & 1) == 0)
  {
    v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
  }

  v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(v19 + 16);
  switch(v21)
  {
    case 3:
      v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v33 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        v36 = *v35;
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      else
      {
        v36 = *v35;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LODWORD(cf[0]) = 136315394;
        *(cf + 4) = "Driver_Manager.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 63;
        v63 = v36;
        v64 = OS_LOG_TYPE_INFO;
LABEL_112:
        _os_log_impl(&dword_1DE1F9000, v63, v64, "%32s:%-5d Loading no drivers.", cf, 0x12u);
      }

      break;
    case 2:
      v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v29 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        v32 = *v31;
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      else
      {
        v32 = *v31;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(cf[0]) = 136315394;
        *(cf + 4) = "Driver_Manager.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 63;
        _os_log_debug_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading no drivers.", cf, 0x12u);
      }

      break;
    case 1:
      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v25 = *v24;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      else
      {
        v25 = *v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(cf[0]) = 136315394;
        *(cf + 4) = "Driver_Manager.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 63;
        v63 = v25;
        v64 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_112;
      }

      break;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v235.__r_.__value_.__r.__words[0] = &v226;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&v235);
  v235.__r_.__value_.__r.__words[0] = &v229;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&v235);
  if (v232)
  {
    CFRelease(v232);
  }

  v213 = *MEMORY[0x1E69E9840];
}

void sub_1DE2DCDE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(&a55);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(void *this, __CFBundle *a2)
{
  v2 = this;
  if (a2 && (this = CFBundleGetIdentifier(a2), (v3 = this) != 0))
  {
    CFRetain(this);
    *v2 = v3;
    v4 = CFGetTypeID(v3);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *v2 = 0;
  }

  return this;
}

void sub_1DE2DD688(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

CFStringRef std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,char const(&)[28],void,0>(CFStringRef *a1)
{
  result = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
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
      std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v9);
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

uint64_t std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::StringRef>::__assign_with_size[abi:ne200100]<applesauce::CF::StringRef*,applesauce::CF::StringRef*>(const void ***a1, const void **a2, const void **a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *--v9;
          std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v11);
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v12 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v12 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<applesauce::CF::StringRef>::__vallocate[abi:ne200100](a1, v13);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v14 = a1[1] - v8;
  if (a4 <= v14 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::StringRef *,applesauce::CF::StringRef *,applesauce::CF::StringRef *>(a2, a3, v8);
    v19 = v18;
    v20 = a1[1];
    if (v20 != v18)
    {
      do
      {
        v21 = *--v20;
        std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v21);
      }

      while (v20 != v19);
    }

    a1[1] = v19;
  }

  else
  {
    v15 = std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::StringRef *,applesauce::CF::StringRef *,applesauce::CF::StringRef *>(a2, (a2 + v14), v8);
    v16 = a1[1];
    while (v15 != a3)
    {
      v17 = *v15++;
      v16 = (std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef&,applesauce::CF::StringRef*>(v16, v17) + 1);
    }

    a1[1] = v16;
  }
}

void std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__shared_ptr_emplace<AMCP::Meta::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::start(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a2 != a2[1])
  {
    v4 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
    v18.d_ino = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v5 = v4;
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      do
      {
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v6, &v18) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = v7;
LABEL_7:
      v17 = v6 != a3[1];
    }

    CFRelease(v5);
    if (*a2 != a2[1])
    {
      v8 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
      v18.d_ino = v8;
      if (!v8)
      {
        v13 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v13, "Could not construct");
        __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v9 = v8;
      v10 = *a2;
      v11 = a2[1];
      if (*a2 != v11)
      {
        do
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v10, &v18) == kCFCompareEqualTo)
          {
            goto LABEL_15;
          }

          ++v10;
        }

        while (v10 != v11);
        v10 = v11;
LABEL_15:
        v16 = v10 != a2[1];
      }

      CFRelease(v9);
    }
  }

  mainPort = *MEMORY[0x1E696CD60];
  *&v18.d_ino = xmmword_1E8676898;
  *&v18.d_reclen = "/Library/Apple/Audio/Plug-Ins/HAL";
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>();
}

void sub_1DE2E093C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::vector<applesauce::CF::URLRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::URLRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *mcp_applesauce::CF::BundleRef_proxy::get_info_dictionary(void *this, __CFBundle *a2)
{
  v2 = this;
  if (a2)
  {
    InfoDictionary = CFBundleGetInfoDictionary(a2);
    return applesauce::CF::DictionaryRef::from_get(v2, InfoDictionary);
  }

  else
  {
    *this = 0;
  }

  return this;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
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

void AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::load_driver(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 48);
  if (*(&v1 + 1))
  {
    atomic_fetch_add_explicit((*(&v1 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE2E2714(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2E2730(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2738);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E275C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2764);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E2770(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2778);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E27D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2E271CLL);
  }

  JUMPOUT(0x1DE2E2B18);
}

void sub_1DE2E27E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, std::runtime_error a32, char a33)
{
  if (a2)
  {
    applesauce::CF::ArrayRef::~ArrayRef(&v37);
    (mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::PlugInRef_Traits>::~BasicRef)();
    std::__shared_weak_count::~__shared_weak_count(v34);
    operator delete(v36);
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE2E13E0);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E2AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2E271CLL);
  }

  JUMPOUT(0x1DE2E2AE4);
}

void sub_1DE2E2B08(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2B10);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void *std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void std::allocator_traits<std::allocator<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>>>::destroy[abi:ne200100]<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>,void,0>(uint64_t a1)
{
  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100]((a1 + 8), 0);
  if (*a1)
  {
    CFRelease(*a1);
  }
}

uint64_t AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}::~io_object_holder(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP10Loader_ImpINS0_20Simple_Loader_HelperEE12defer_driverERKN10applesauce2CF6URLRefENS5_9StringRefERKNS5_13DictionaryRefEjEUlNS4_5iokit16io_object_holderEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::operator()(uint64_t a1, io_object_t *a2)
{
  v2 = a1;
  v65 = *MEMORY[0x1E69E9840];
  object = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    a1 = AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v5 + 16);
  switch(v7)
  {
    case 3:
      v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v16 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = *v18;
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      else
      {
        v19 = *v18;
      }

      a1 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v22 = *(v2 + 24);
        if (!v22)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v22);
        if (v58 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 136315650;
        v60 = "ASP_Loader.h";
        v61 = 1024;
        v62 = 149;
        v63 = 2080;
        v64 = v23;
        v24 = v19;
        v25 = OS_LOG_TYPE_INFO;
        goto LABEL_40;
      }

      break;
    case 2:
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *v14;
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      else
      {
        v15 = *v14;
      }

      a1 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v20 = applesauce::CF::StringRef::operator->((v2 + 24));
        applesauce::CF::convert_to<std::string,0>(__p, *v20);
        if (v58 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        *buf = 136315650;
        v60 = "ASP_Loader.h";
        v61 = 1024;
        v62 = 149;
        v63 = 2080;
        v64 = v21;
        _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading conditions for server plug-in %s finally satisfied...", buf, 0x1Cu);
LABEL_41:
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }

      break;
    case 1:
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v10;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v11 = *v10;
      }

      a1 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v26 = *(v2 + 24);
        if (!v26)
        {
          v53 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v53, "Could not construct");
          __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v26);
        if (v58 >= 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        *buf = 136315650;
        v60 = "ASP_Loader.h";
        v61 = 1024;
        v62 = 149;
        v63 = 2080;
        v64 = v27;
        v24 = v11;
        v25 = OS_LOG_TYPE_DEFAULT;
LABEL_40:
        _os_log_impl(&dword_1DE1F9000, v24, v25, "%32s:%-5d Loading conditions for server plug-in %s finally satisfied...", buf, 0x1Cu);
        goto LABEL_41;
      }

      break;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v28 & 1) == 0)
  {
    a1 = AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = *(v29 + 16);
  switch(v31)
  {
    case 1:
      v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v40 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v42 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        v43 = *v42;
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      else
      {
        v43 = *v42;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(v2 + 24);
        if (!v46)
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v54, "Could not construct");
          __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v46);
        if (v58 >= 0)
        {
          v47 = __p;
        }

        else
        {
          v47 = __p[0];
        }

        *buf = 136315650;
        v60 = "ASP_Loader.h";
        v61 = 1024;
        v62 = 150;
        v63 = 2080;
        v64 = v47;
        v48 = v43;
        v49 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_84;
      }

      break;
    case 2:
      v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v36 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        v39 = *v38;
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      else
      {
        v39 = *v38;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v44 = applesauce::CF::StringRef::operator->((v2 + 24));
        applesauce::CF::convert_to<std::string,0>(__p, *v44);
        if (v58 >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = __p[0];
        }

        *buf = 136315650;
        v60 = "ASP_Loader.h";
        v61 = 1024;
        v62 = 150;
        v63 = 2080;
        v64 = v45;
        _os_log_debug_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading server plug-in %s...", buf, 0x1Cu);
LABEL_85:
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }

      break;
    case 3:
      v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v32 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        v35 = *v34;
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      else
      {
        v35 = *v34;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v50 = *(v2 + 24);
        if (!v50)
        {
          v55 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v55, "Could not construct");
          __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v50);
        if (v58 >= 0)
        {
          v51 = __p;
        }

        else
        {
          v51 = __p[0];
        }

        *buf = 136315650;
        v60 = "ASP_Loader.h";
        v61 = 1024;
        v62 = 150;
        v63 = 2080;
        v64 = v51;
        v48 = v35;
        v49 = OS_LOG_TYPE_INFO;
LABEL_84:
        _os_log_impl(&dword_1DE1F9000, v48, v49, "%32s:%-5d Loading server plug-in %s...", buf, 0x1Cu);
        goto LABEL_85;
      }

      break;
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::load_driver(v3);
}

void sub_1DE2E380C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, io_object_t a10)
{
  __cxa_free_exception(v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  applesauce::iokit::io_object_holder::~io_object_holder(&a10);
  _Unwind_Resume(a1);
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

void *std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::__clone(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  *a2 = &unk_1F5964BD8;
  a2[1] = v4;
  if (v5)
  {
    result = CFRetain(v5);
  }

  a2[2] = v5;
  v6 = v3[3];
  if (v6)
  {
    result = CFRetain(v3[3]);
  }

  a2[3] = v6;
  a2[4] = *(v3 + 8);
  return result;
}

void std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::~__func(void *a1)
{
  *a1 = &unk_1F5964BD8;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::~__func(void *a1)
{
  *a1 = &unk_1F5964BD8;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
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

void std::__shared_ptr_emplace<AMCP::ASP::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964B88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::URLRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void non-virtual thunk toAMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(uint64_t a1)
{
  AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(a1 - 24);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(uint64_t a1)
{
  *a1 = &unk_1F5964B08;
  *(a1 + 24) = &unk_1F5964B30;
  v2 = *(a1 + 48);
  if (v2)
  {
    for (i = *(a1 + 56); i != v2; std::allocator_traits<std::allocator<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>>>::destroy[abi:ne200100]<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>,void,0>(i))
    {
      i -= 16;
    }

    *(a1 + 56) = v2;
    operator delete(*(a1 + 48));
  }

  *(a1 + 24) = &unk_1F59748E8;
  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(uint64_t a1)
{
  AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IOAudio2::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IOAudio1::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59649C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

const void **std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::StringRef *,applesauce::CF::StringRef *,applesauce::CF::StringRef *>(const void **a1, const void **a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *a3;
      v7 = *v4;
      *a3 = *v4;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef&,applesauce::CF::StringRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void std::vector<applesauce::CF::StringRef>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<HALS_PlugIn *,NSXPCConnection * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(NSString *,NSXPCConnection *)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void **mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::~BasicRef(const void **a1)
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

uint64_t std::vector<applesauce::CF::StringRef>::push_back[abi:ne200100](void *a1, CFTypeRef *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
      std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v7;
    v11[3] = 0;
    std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>((8 * v7), *a2);
    v11[2] = 8 * v7 + 8;
    std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(a1, v11);
    v6 = a1[1];
    result = std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(v11);
  }

  else
  {
    result = std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(v3, *a2);
    v6 = result + 8;
  }

  a1[1] = v6;
  return result;
}

void *std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void applesauce::CF::StringRef::to_description(UInt8 *this, const void *a2)
{
  v3 = CFCopyDescription(a2);
  applesauce::CF::details::CFString_get_value<true>(this, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1DE2E44F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
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

char **std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(char ***a1, char ***a2)
{
  result = *a2;
  {
    v6 = v4[1];
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

void std::__shared_ptr_emplace<HALS_UCRemotePlugIn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFNumberGetTypeID())
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

uint64_t std::__function::__value_func<void ()(NSString *,NSXPCConnection *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1>,int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1>,int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::operator()(uint64_t a1, void **a2, void **a3, void **a4, void **a5, unsigned int *a6, unsigned __int8 *a7, uint64_t a8)
{
  v28[13] = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v23 = *a7;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v25, a8);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = *(a1 + 8);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v26, v25);
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v27, v26);
  v21;
  v19;
  v20;
  v22;
  v24[0] = 0;
  v24[1] = 0;
  HALS_System::GetInstance(v28, 0, v24);
  operator new();
}

void sub_1DE2E5400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1>,int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5964D68;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0>,void ()(NSString *,NSXPCConnection *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0>,void ()(NSString *,NSXPCConnection *)>::operator()(uint64_t a1, id *a2, void **a3)
{
  v3 = *a3;
  v4 = *a2;
  v5 = v3;
  v6 = HALS_RemotePlugInRegistrar::sHighPriorityConcurrentQueue;
  v7 = v4;
  v8 = v5;
  v9 = atomic_load((v6 + 32));
  if (v9)
  {
    atomic_store(1u, (v6 + 33));
  }

  if (*(v6 + 328) != 1)
  {
    v16 = AMCP::Log::Scope::get_os_log_t(*v6);
    operator new();
  }

  v10 = v7;
  v11 = v8;
  v12 = *(v6 + 320);
  v13 = *v6;
  AMCP::Log::Scope::get_os_log_t(v13);
  objc_claimAutoreleasedReturnValue();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE_EEvOT__block_invoke;
  v17[3] = &__block_descriptor_48_ea8_32c114_ZTSZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE__e5_v8__0l;
  v18 = v10;
  v19 = v11;
  v14 = v11;
  v15 = v10;
  dispatch_group_async(v12, v13, v17);
}

id **std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1E12C1730](v2, 0x80C40803F642BLL);
  }

  return a1;
}

id **applesauce::dispatch::v1::async<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1} &>(NSObject  {objcproto17OS_dispatch_queue}*,HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1} &)::{lambda(void *)#1}::__invoke(id *a1)
{
  v2 = a1;
  HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}::operator()(a1);
  return std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE2E5AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}::operator()(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    applesauce::CF::StringRef::from_get(&cf, *a1);
    v5 = CFCopyDescription(cf);
    v47[0] = v5;
    applesauce::CF::details::CFString_get_value<true>(&__p, v5);
    if (v5)
    {
      CFRelease(v5);
    }

    p_p = &__p;
    if (v50 < 0)
    {
      p_p = __p;
    }

    *buf = 136315650;
    *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
    *&buf[12] = 1024;
    *&buf[14] = 255;
    *&buf[18] = 2080;
    *&buf[20] = p_p;
    _os_log_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Calling DestroyPlugInObject():  %s", buf, 0x1Cu);
    if (v50 < 0)
    {
      operator delete(__p);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v7 = *(a1 + 1);
  v8 = *a1;
  v9 = v7;
  v43 = v9;
  if (v8)
  {
    v40 = HALS_RemotePlugInRegistrar::sPlugInListMutex;
    std::mutex::lock(HALS_RemotePlugInRegistrar::sPlugInListMutex);
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v12;
      AMCP::Log::Scope::get_os_log_t(*v12);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v14 = *v12;
      AMCP::Log::Scope::get_os_log_t(*v12);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      applesauce::CF::StringRef::from_get(&cf, v8);
      v19 = CFCopyDescription(cf);
      v47[0] = v19;
      applesauce::CF::details::CFString_get_value<true>(&__p, v19);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = &__p;
      if (v50 < 0)
      {
        v20 = __p;
      }

      *buf = 136315650;
      *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 671;
      *&buf[18] = 2080;
      *&buf[20] = v20;
      _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_RemotePlugInRegistrar::DestroyPlugInObject: + %s", buf, 0x1Cu);
      if (v50 < 0)
      {
        operator delete(__p);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v47[0] = 0;
    v47[1] = 0;
    HALS_System::GetInstance(&cf, 0, v47);
    v23 = *HALS_RemotePlugInRegistrar::sPlugInList;
    v22 = *(HALS_RemotePlugInRegistrar::sPlugInList + 8);
    if (*HALS_RemotePlugInRegistrar::sPlugInList != v22)
    {
      v41 = &buf[16];
      do
      {
        v24 = *(*v23 + 424);
        *buf = *(*v23 + 416);
        *&buf[8] = v24;
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(&__p, buf);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        v25 = __p;
        v26 = (*(*__p + 32))(__p);
        v27 = v26;
        if (v26)
        {
          if (![v26 compare:{v8, v40, v41}] && (!v43 || (v28 = v23[1]) == 0 || v28 == v43))
          {
            for (i = v25[106]; i; i = *i)
            {
              atomic_store(1u, (i[3] + 65));
            }

            v30 = *v23;
            v31 = (*(**v23 + 72))(*v23);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN11HALS_PlugIn25RemoveAllDevicesAndNotifyEv_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_20;
            v52 = v30;
            v32 = atomic_load((v31 + 32));
            if (v32)
            {
              atomic_store(1u, (v31 + 33));
            }

            dispatch_sync(*v31, buf);
            HALS_System::DeviceManagerDestroyed(cf, *v23);
            std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](1uLL);
          }
        }

        v21 = v49;
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        v23 += 2;
      }

      while (v23 != v22);
    }

    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v34;
      AMCP::Log::Scope::get_os_log_t(*v34);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      v36 = *v34;
      AMCP::Log::Scope::get_os_log_t(*v34);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      applesauce::CF::StringRef::from_get(&v46, v8);
      v37 = CFCopyDescription(v46);
      v47[2] = v37;
      applesauce::CF::details::CFString_get_value<true>(&__p, v37);
      if (v37)
      {
        CFRelease(v37);
      }

      v38 = &__p;
      if (v50 < 0)
      {
        v38 = __p;
      }

      *buf = 136315650;
      *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 696;
      *&buf[18] = 2080;
      *&buf[20] = v38;
      _os_log_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_RemotePlugInRegistrar::DestroyPlugInObject: - %s", buf, 0x1Cu);
      if (v50 < 0)
      {
        operator delete(__p);
      }

      if (v46)
      {
        CFRelease(v46);
      }
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    std::mutex::unlock(v40);
  }

  else
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 666;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_RemotePlugInRegistrar cannot remove a driver with no name.", buf, 0x12u);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1DE2E65F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1DE2E63D4);
}

void __destroy_helper_block_ea8_32c114_ZTSZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE_(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id __copy_helper_block_ea8_32c114_ZTSZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t AudioObjectCreate(HALS_ObjectMap *a1, const BOOL *a2, uint64_t a3, _DWORD *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (AMCP::Feature_Flags::access_run_new_hal(0, a2))
  {
    v8 = 1970171760;
  }

  else if (AllowHALClientsInThisProcess())
  {
    if (!a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "HALS_Framework-ios-imp.cpp";
        v22 = 1024;
        v23 = 2391;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: nowhere to return the object ID", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v17[0] = 0;
    v17[1] = 0;
    HALS_System::GetInstance(&v18, 0, v17);
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "HALS_Framework-ios-imp.cpp";
        v22 = 1024;
        v23 = 2395;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no system object", buf, 0x12u);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      *v15 = off_1F5991DD8;
      v15[2] = 1852797029;
    }

    v9 = HALS_System::CopyPlugInByReferenceID(v18, a1);
    v10 = v9;
    if (!v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "HALS_Framework-ios-imp.cpp";
        v22 = 1024;
        v23 = 2399;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no plug-in with given reference ID", buf, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = off_1F5991DD8;
      v16[2] = 560947818;
    }

    *a4 = (*(*v9 + 272))(v9, a3, a2, 0);
    HALS_ObjectMap::ReleaseObject(v10, v11);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v8 = 0;
  }

  else
  {
    v8 = 560033144;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE2E6A40(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2E6A58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a2)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    v15 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v16 = v15[2];
      if (v12)
      {
        *v12 = 0;
      }
    }

    else if (v12)
    {
      *v12 = 0;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2E67F0);
  }

  JUMPOUT(0x1DE2E6A48);
}

uint64_t AudioObjectsPublishedAndDied(HALS_ObjectMap *a1, const BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (AMCP::Feature_Flags::access_run_new_hal(0, a2))
  {
    v12 = 1970171760;
    goto LABEL_14;
  }

  if (!AllowHALClientsInThisProcess())
  {
    v12 = 560033144;
    goto LABEL_14;
  }

  if (a3 && !a4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v27 = "HALS_Framework-ios-imp.cpp";
    v28 = 1024;
    v29 = 2468;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  AudioObjectCreate: the number of published objects doesn't match the array size";
    goto LABEL_19;
  }

  if (a5 && !a6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v27 = "HALS_Framework-ios-imp.cpp";
    v28 = 1024;
    v29 = 2469;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  AudioObjectCreate: the number of dead objects doesn't match the array size";
LABEL_19:
    _os_log_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v23[0] = 0;
  v23[1] = 0;
  HALS_System::GetInstance(&v24, 0, v23);
  if (!v24)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "HALS_Framework-ios-imp.cpp";
      v28 = 1024;
      v29 = 2473;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no system object", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = off_1F5991DD8;
    v21[2] = 1852797029;
  }

  v13 = HALS_System::CopyPlugInByReferenceID(v24, a1);
  v14 = v13;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "HALS_Framework-ios-imp.cpp";
      v28 = 1024;
      v29 = 2477;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no plug-in with given reference ID", buf, 0x12u);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    *v22 = off_1F5991DD8;
    v22[2] = 560947818;
  }

  (*(*v13 + 280))(v13, a2, a3, a4, a5, a6, 0);
  HALS_ObjectMap::ReleaseObject(v14, v15);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v12 = 0;
LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DE2E6EA0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2E6EB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a2)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v15 = v14[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2E6BF4);
  }

  JUMPOUT(0x1DE2E6EA8);
}

id __copy_helper_block_ea8_32c101_ZTSKZ87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info__E4__13(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c101_ZTSKZ87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info__E4__12(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1DE2E801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef(v19);

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c70_ZTSKZ57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage__E3__7(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c87_ZTSKZ74__Core_Audio_Driver_Host_Proxy_driver_properties_changed_properties_data__E3__4(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void std::__shared_ptr_emplace<caulk::mach::unfair_lock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t Host_Interface::delete_from_storage(Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3)
{
  v3 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  v4 = [v3 delete_from_driver_storage:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t Host_Interface::write_to_storage(Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void *a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&v9, a2);
  mcp_applesauce::CF::PropertyListRef::from_get(&cf, a3);
  v6 = [v5 write_to_driver_storage:&v9 property_list:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t Host_Interface::copy_from_storage(Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void **a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  if (v5)
  {
    [v5 copy_from_driver_storage:&cf];
  }

  else
  {
    v8 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    a3->isa = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

uint64_t Host_Interface::properties_changed(Host_Interface *this, const AudioServerPlugInHostInterface *a2, unsigned int a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v7 = [objc_alloc(MEMORY[0x1E695DEF8]) initWithBytes:a4 length:12 * a3];
  v8 = [*(this + 5) driver_properties_changed:a2 properties_data:v7];

  return v8;
}

void std::__shared_ptr_emplace<Host_Interface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5965028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::vector<std::pair<std::string const,HALS_IOEngineInfo const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

void std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<HALB_CaptureFile>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<HALB_CaptureFile>>,0>(uint64_t a1)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

ca::concurrent::details::service_thread ***std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100](ca::concurrent::details::service_thread ****a1, ca::concurrent::details::service_thread ***a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALB_CaptureFile::~HALB_CaptureFile(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t HALS_DSPCaptureFiles::isDSPCaptureEnabled(HALS_DSPCaptureFiles *this)
{
  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  if (v7)
  {
    v3[0] = 0;
    v3[1] = 0;
    HALS_System::GetInstance(&v4, 0, v3);
    v1 = *(v4 + 1849);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v1 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v1;
}

void sub_1DE2E8EC0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPCaptureFiles::CreateDSPCaptureFiles(HALS_IODSPInfo const&,std::optional<float>)::$_0::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3 != 0;
  v7 = *(a4 + 72);
  v32 = *(a4 + 56);
  v33 = v7;
  v34 = *(a4 + 88);
  if (*(a1 + 4) == 1)
  {
    *&v32 = *a1;
  }

  v30 = 0;
  v31 = 0uLL;
  LODWORD(v35) = 0;
  v8 = std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__emplace_back_slow_path<HALB_CaptureFile_NameBuilder_Label,std::string const&>(&v30, &v35, a5);
  v9 = v8;
  *&v31 = v8;
  if (v8 >= *(&v31 + 1))
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v30) >> 3);
    if (v12 + 1 > 0x666666666666666)
    {
      goto LABEL_26;
    }

    v13 = 0x999999999999999ALL * ((*(&v31 + 1) - v30) >> 3);
    if (v13 <= v12 + 1)
    {
      v13 = v12 + 1;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(&v31 + 1) - v30) >> 3) >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v13;
    }

    v38 = &v30;
    if (v14)
    {
      std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v14);
    }

    v15 = 40 * v12;
    v35 = 0;
    v36 = v15;
    *(&v37 + 1) = 0;
    v40 = 0;
    LODWORD(v40) = *(a4 + 96);
    v16 = v40;
    v39 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *v15 = 3;
    *(v15 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *(v15 + 16) = 0;
    *(v15 + 16) = v16;
    std::any::reset[abi:ne200100](&v39);
    *&v37 = v15 + 40;
    v17 = &v30[v15 / 8] - v31;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v30, v31, v17);
    v18 = v30;
    v19 = *(&v31 + 1);
    v30 = v17;
    v28 = v37;
    v31 = v37;
    *&v37 = v18;
    *(&v37 + 1) = v19;
    v35 = v18;
    v36 = v18;
    std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v35);
    v11 = v28;
  }

  else
  {
    v36 = 0;
    LODWORD(v36) = *(a4 + 96);
    v10 = v36;
    v35 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *v8 = 3;
    *(v8 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *(v8 + 16) = 0;
    *(v8 + 16) = v10;
    std::any::reset[abi:ne200100](&v35);
    v11 = v9 + 40;
  }

  *&v31 = v11;
  if (v11 < *(&v31 + 1))
  {
    v36 = v6;
    v35 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *v11 = 6;
    *(v11 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *(v11 + 16) = 0;
    *(v11 + 16) = v6;
    std::any::reset[abi:ne200100](&v35);
    v20 = v11 + 40;
    goto LABEL_25;
  }

  v21 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v30) >> 3);
  if (v21 + 1 <= 0x666666666666666)
  {
    v22 = 0x999999999999999ALL * ((*(&v31 + 1) - v30) >> 3);
    if (v22 <= v21 + 1)
    {
      v22 = v21 + 1;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(&v31 + 1) - v30) >> 3) >= 0x333333333333333)
    {
      v23 = 0x666666666666666;
    }

    else
    {
      v23 = v22;
    }

    v38 = &v30;
    if (v23)
    {
      std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v23);
    }

    v24 = 40 * v21;
    v35 = 0;
    v36 = v24;
    *(&v37 + 1) = 0;
    v40 = v6;
    v39 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *v24 = 6;
    *(v24 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *(v24 + 16) = 0;
    *(v24 + 16) = v6;
    std::any::reset[abi:ne200100](&v39);
    *&v37 = v24 + 40;
    v25 = &v30[v24 / 8] - v31;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v30, v31, v25);
    v26 = v30;
    v27 = *(&v31 + 1);
    v30 = v25;
    v29 = v37;
    v31 = v37;
    *&v37 = v26;
    *(&v37 + 1) = v27;
    v35 = v26;
    v36 = v26;
    std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v35);
    v20 = v29;
LABEL_25:
    *&v31 = v20;
    operator new();
  }

LABEL_26:
  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void sub_1DE2E9294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v12 - 88), 0);
  *(v12 - 88) = &a12;
  std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__destroy_vector::operator()[abi:ne200100]((v12 - 88));
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::pair<std::string const,HALS_IOEngineInfo const*>>::~__split_buffer(uint64_t a1)
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string const,HALS_IOEngineInfo const*>>,std::pair<std::string const,HALS_IOEngineInfo const*>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__emplace_back_slow_path<HALB_CaptureFile_NameBuilder_Label,std::string const&>(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v6);
  }

  v13 = 0;
  v14 = 40 * v3;
  v15 = 40 * v3;
  std::construct_at[abi:ne200100]<HALB_CaptureFile_NameBuilder::ComponentBase,HALB_CaptureFile_NameBuilder_Label,std::string const&,HALB_CaptureFile_NameBuilder::ComponentBase*>(40 * v3, *a2, a3);
  *&v15 = 40 * v3 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v3 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(*a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v13);
  return v12;
}

void sub_1DE2E94C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
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
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1DE2E9654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::any::reset[abi:ne200100](v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<HALB_CaptureFile>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t (**std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(uint64_t (**result)(void, void, void, void, void), uint64_t (**a2)(void, void, void, void, void), uint64_t a3))(void, void, void, void, void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    v6 = (a3 + 8);
    do
    {
      *(v6 - 2) = *(v5 - 2);
      *v6 = 0;
      v6[1] = 0;
      if (*v5)
      {
        (*v5)(2, v5, v6, 0, 0);
      }

      v7 = (v5 + 8);
      v5 += 10;
      v6 += 5;
    }

    while (v7 != a2);
    do
    {
      result = std::any::reset[abi:ne200100](v4 + 1);
      v4 += 5;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::any::reset[abi:ne200100]((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](*(a4 + 8), "25HALB_CaptureFile_DSPState");
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<HALB_CaptureFile_DSPState>::__id;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    result = 0;
    if (a1)
    {
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      return result;
    }

    goto LABEL_9;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
LABEL_9:
    *a2 = 0;
    return result;
  }

  result = MEMORY[0x1E69E5480];
  if (a1 == 3)
  {
    if (a4)
    {
      v8 = std::type_info::operator==[abi:ne200100](*(a4 + 8), *(MEMORY[0x1E69E5480] + 8));
    }

    else
    {
      v8 = a5 == &std::__any_imp::__unique_typeinfo<unsigned int>::__id;
    }

    if (v8)
    {
      return a2 + 8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::construct_at[abi:ne200100]<HALB_CaptureFile_NameBuilder::ComponentBase,HALB_CaptureFile_NameBuilder_Label,std::string const&,HALB_CaptureFile_NameBuilder::ComponentBase*>(uint64_t a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v9.__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v8 = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v9.__r_.__value_.__l.__data_;
    *(a1 + 32) = *(&v9.__r_.__value_.__l + 2);
  }

  *(a1 + 8) = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
  std::any::reset[abi:ne200100](&v8);
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE2E9B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
      }

      if (a4)
      {
        v7 = std::type_info::operator==[abi:ne200100](*(a4 + 8), 0x80000001DE7A99C1);
      }

      else
      {
        v7 = a5 == &std::__any_imp::__unique_typeinfo<std::string>::__id;
      }

      if (v7)
      {
        return (a2 + 8);
      }

      else
      {
        return 0;
      }
    }

    v9 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *a3 = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
LABEL_11:
      operator delete(v8);
    }

LABEL_12:
    result = 0;
    *a2 = 0;
    return result;
  }

  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v11;
  }

  result = 0;
  *a3 = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
  return result;
}

void HALS_DSPCaptureFiles::WriteBufferToCaptureFile(uint64_t a1, unsigned int a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, uint64_t a6)
{
  v6 = a4[1];
  v34[0] = *a4;
  v34[1] = v6;
  v7 = a4[3];
  v34[2] = a4[2];
  v34[3] = v7;
  v8 = a5[1];
  v33[0] = *a5;
  v33[1] = v8;
  v9 = a5[3];
  v33[2] = a5[2];
  v33[3] = v9;
  if (a3)
  {
    v11 = *(a1 + 48);
    v12 = (*(a1 + 56) - v11) >> 5 >= *a3 ? *a3 : (*(a1 + 56) - v11) >> 5;
    if (v12)
    {
      v14 = 0;
      v15 = a3 + 2;
      v16 = (a6 + 8);
      do
      {
        v17 = *(a1 + 48);
        if (v14 >= (*(a1 + 56) - v17) >> 5)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v18 = v17 + 32 * v14;
        v19 = *(v18 + 24);
        v20 = *(v18 + 23);
        if (v20 < 0)
        {
          v21 = *(v18 + 8) == 0;
        }

        else
        {
          v21 = v20 == 0;
        }

        if (!v21 && v19 != 0)
        {
          if (*(v19 + 368))
          {
            if ((*(**(v19 + 88) + 696))(*(v19 + 88)))
            {
              v23 = *(v19 + 368);
              if (*(v23 + 24))
              {
                v31 = 0.0;
                v32[0] = 0;
                v32[1] = 0;
                HALS_IOClock::GetRaw0Time(v23, &v31, v32);
                v24 = &v15[4 * v14];
                v25 = *(v24 + 1);
                if (v25)
                {
                  if (v24[1])
                  {
                    v26 = *v16;
                    if (*v16)
                    {
                      v27 = v16;
                      do
                      {
                        v28 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26 + 4, v18);
                        if ((v28 & 0x80u) == 0)
                        {
                          v27 = v26;
                        }

                        v26 = *(v26 + ((v28 >> 4) & 8));
                      }

                      while (v26);
                      if (v27 != v16 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, v27 + 4) & 0x80) == 0)
                      {
                        v35 = v18;
                        v29 = std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a6, v18);
                        HALB_CaptureFile::Write(v29[7], v34, v33, &v31, a2, v25);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v14;
      }

      while (v14 != v12);
    }
  }
}

void non-virtual thunk toHALS_IOUAControl::~HALS_IOUAControl(HALS_IOUAControl *this, HALS_Object *a2)
{
  HALS_IOUAControl::~HALS_IOUAControl((this - 72), a2);
}

{
  v2 = (this - 72);
  HALS_IOUAObject::~HALS_IOUAObject(this, a2);

  HALS_Control::~HALS_Control(v2);
}

void HALS_IOUAControl::~HALS_IOUAControl(HALS_IOUAControl *this, HALS_Object *a2)
{
  HALS_IOUAObject::~HALS_IOUAObject((this + 72), a2);
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUAObject::~HALS_IOUAObject((this + 72), a2);

  HALS_Control::~HALS_Control(this);
}

BOOL HALS_IOUAControl::GetHardwareReferenceStreamControlValue(HALS_IOUAControl *this, const HALS_Client *a2)
{
  v7 = 4;
  outputStruct = 0;
  v2 = *(this + 10);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_IOUAUCDriver::GetPropertyData(*(v3 + 4), "lvcbbolg", *(this + 22), 0, 0, &outputStruct, &v7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return outputStruct != 0;
}

void sub_1DE2E9FBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAControl::SetHardwareReferenceStreamControlValue(HALS_IOUAControl *this, HALS_Client *a2, int a3)
{
  v7 = a3;
  v4 = *(this + 10);
  v5 = *(v4 + 736);
  v6 = *(v4 + 744);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_IOUAUCDriver::SetPropertyData(v5, "lvcbbolg", *(this + 22), 0, 0, &v7, 4uLL);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE2EA048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAControl::SetPropertyData(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const AudioObjectPropertyAddress *a5, uint64_t a6, void *a7, HALS_Client *a8)
{
  v46 = *MEMORY[0x1E69E9840];
  v16 = a4;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1818457189)
  {
    if (mSelector > 1935962741)
    {
      if (mSelector == 1936745334)
      {
        v29 = *(this + 10);
        v19 = *(v29 + 736);
        v20 = *(v29 + 744);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        if (mSelector != 1935962742)
        {
          goto LABEL_39;
        }

        v23 = *(this + 10);
        v19 = *(v23 + 736);
        v20 = *(v23 + 744);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }
    }

    else if (mSelector == 1818457190)
    {
      v27 = *(this + 10);
      v19 = *(v27 + 736);
      v20 = *(v27 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      if (mSelector != 1935893353)
      {
        goto LABEL_39;
      }

      v21 = *(this + 10);
      v19 = *(v21 + 736);
      v20 = *(v21 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

LABEL_35:
    HALS_IOUAUCDriver::SetPropertyData(v19, a3, *(this + 22), a7, a6, a5, a4);
    if (v20)
    {
      v30 = *MEMORY[0x1E69E9840];

      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      return;
    }

LABEL_51:
    v40 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector > 1818453109)
  {
    if (mSelector == 1818453110)
    {
      v28 = *(this + 10);
      v19 = *(v28 + 736);
      v20 = *(v28 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      if (mSelector != 1818456950)
      {
        goto LABEL_39;
      }

      v22 = *(this + 10);
      v19 = *(v22 + 736);
      v20 = *(v22 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    goto LABEL_35;
  }

  if (mSelector == 1650685548)
  {
    if (!a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = 136315394;
        v43 = "HALS_IOUAControl.cpp";
        v44 = 1024;
        v45 = 303;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUAControl::SetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", &v42, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "kAudioHardwareBadPropertySizeError");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v24 = a5->mSelector;
    v25 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 14));
    if (*(this + 5) == 1702259059)
    {
      HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a8);
    }

    else
    {
      v37 = *(this + 10);
      v38 = *(v37 + 736);
      v39 = *(v37 + 744);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      HALS_IOUAUCDriver::SetPropertyData(v38, a3, *(this + 22), a7, a6, a5, v16);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }
    }

    HALS_ObjectMap::ReleaseObject(v25, v26);
    goto LABEL_51;
  }

  if (mSelector == 1651272546)
  {
    v18 = *(this + 10);
    v19 = *(v18 + 736);
    v20 = *(v18 + 744);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_35;
  }

LABEL_39:
  if (HALS_Control::HasProperty(this, a2, a3))
  {
    v35 = *MEMORY[0x1E69E9840];

    HALS_Control::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v36 = *MEMORY[0x1E69E9840];

    HALS_IOUAObject::SetPropertyData((this + 72), &a3->mSelector, a5, a7, v31, v32, v33, v34);
  }
}

void sub_1DE2EA5A0(_Unwind_Exception *a1, HALS_Object *a2)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HALS_ObjectMap::ReleaseObject(v3, a2);
  _Unwind_Resume(a1);
}

void sub_1DE2EAE90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAControl::GetPropertyDataSize(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935892840)
  {
    if (mSelector != 1935893353 && mSelector != 1935892841)
    {
      goto LABEL_15;
    }

LABEL_10:
    v12 = *(this + 10);
    v13 = *(v12 + 736);
    v14 = *(v12 + 744);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v13 + 4), a3, *(this + 22), a5, a4);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    return PropertySize;
  }

  if (mSelector == 1651272546)
  {
    goto LABEL_10;
  }

  if (mSelector == 1668641652)
  {
    return 96;
  }

LABEL_15:
  if (HALS_Control::HasProperty(this, a2, a3))
  {

    return HALS_Control::GetPropertyDataSize(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 72), a3, v16, v17, v18, v19);
  }
}

void sub_1DE2EB06C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAControl::IsPropertySettable(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (a3->mSelector == 1668641652)
  {
    return 0;
  }

  if (HALS_Control::HasProperty(this, a2, a3))
  {

    return HALS_Control::IsPropertySettable(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 72), a3, v8, v9);
  }
}

uint64_t HALS_IOUAControl::HasProperty(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (mSelector == 1668641652)
  {
    return *(this + 13) != *(this + 12);
  }

  if (mSelector == 1851878764 || mSelector == 1819173229)
  {
    v7 = *(this + 10);
    v8 = *(v7 + 736);
    v9 = *(v7 + 744);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v8 + 4), a3, *(this + 22));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    return HasProperty;
  }

  v11 = HALS_Control::HasProperty(this, a2, a3);
  if (v11)
  {
    return 1;
  }

  v13 = *(*(this + 9) + 16);

  return v13(this + 72, mSelector);
}

void sub_1DE2EB22C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAControl::Activate(HALS_IOUAControl *this)
{
  HALS_IOUAControl::RefreshCache(this);
  if (!*(this + 15))
  {
    (*(*(this + 9) + 24))();
  }

  HALS_Object::Activate(this, v2);
}

uint64_t HALS_IOUAControl::RefreshCache(HALS_IOUAControl *this)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 15) == 1)
  {
    v2 = 0;
    v3 = 1702259059;
    v4 = 1650685548;
    v5 = 1869968496;
  }

  else
  {
    v6 = *(this + 22);
    v7 = *(this + 10);
    v8 = *(v7 + 736);
    v9 = *(v7 + 744);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v28 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v8 + 4), "salcbolg", v6, 0, 0, &outputStruct, &v28);
    v3 = outputStruct;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v10 = *(this + 10);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v28 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v11 + 4), "slcbbolg", v6, 0, 0, &outputStruct, &v28);
    v4 = outputStruct;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = *(this + 10);
    v14 = *(v13 + 736);
    v15 = *(v13 + 744);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v28 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v14 + 4), "pcscbolg", v6, 0, 0, &outputStruct, &v28);
    v5 = outputStruct;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v16 = *(this + 10);
    v17 = *(v16 + 736);
    v18 = *(v16 + 744);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v28 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v17 + 4), "mlecbolg", v6, 0, 0, &outputStruct, &v28);
    v2 = outputStruct;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZN16HALS_IOUAControl12RefreshCacheEv_block_invoke;
  v23[3] = &unk_1E8673848;
  v23[4] = &v30;
  v23[5] = this;
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v2;
  v19 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v19, v23);
  v20 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);
  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

uint64_t ___ZN16HALS_IOUAControl12RefreshCacheEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  if (v1[5] != v2)
  {
    v1[5] = v2;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v3 = *(result + 52);
  if (v1[6] != v3)
  {
    v1[6] = v3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v4 = *(result + 56);
  if (v1[12] != v4)
  {
    v1[12] = v4;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v5 = *(result + 60);
  if (v1[13] != v5)
  {
    v1[13] = v5;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void HALS_DeviceState::HALS_DeviceState(HALS_DeviceState *this)
{
  *(this + 6) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 5) = this + 48;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  pthread_once(&HALS_DeviceState::sPropertiesToCaptureInitialized, HALS_DeviceState::InitializeStandardPropertiesToCapture);
}

void sub_1DE2EB86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<HALS_DeviceState::ControlState>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(v10 + 48));
  std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void std::vector<HALS_DeviceState::ControlState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          MEMORY[0x1E12C1700](v6, 0x1000C8077774924);
        }

        v7 = *(v4 - 4);
        if (v7)
        {
          MEMORY[0x1E12C1700](v7, 0x1000C8077774924);
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*a1);
    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(a1[1]);
    HALS_DeviceState::Value::~Value((a1 + 6));

    operator delete(a1);
  }
}

void HALS_DeviceState::Value::~Value(HALS_DeviceState::Value *this)
{
  OS::CF::UntypedObject::~UntypedObject((this + 88));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void sub_1DE2EBE1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    HALS_DeviceState::sStandardDevicePropertiesToCapture = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE2EBD40);
  }

  _Unwind_Resume(a1);
}

void HALS_DeviceState::~HALS_DeviceState(HALS_DeviceState *this)
{
  v2 = (this + 64);
  std::vector<HALS_DeviceState::ControlState>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(this + 6));

  std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](this);
}

uint64_t HALS_DeviceState::HALS_DeviceState(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 != a2)
  {
    v3 = (*(*v3 + 16))(v3);
LABEL_4:
    v9 = v3;
    goto LABEL_6;
  }

  v9 = v8;
  (*(*v3 + 24))(v3, v8);
LABEL_6:
  if (v8 != a1)
  {
    v4 = v9;
    v5 = *(a1 + 24);
    if (v9 == v8)
    {
      if (v5 == a1)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v8);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v8);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v8);
  HALS_DeviceState::HALS_DeviceState(v8);
  HALS_DeviceState::~HALS_DeviceState(v8);
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE2EC1A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceState::Capture(HALS_DeviceState *this, HALS_Device *a2, const CAPropertyAddressList *a3, const CAPropertyAddressList *a4)
{
  v6 = a2;
  v116 = *MEMORY[0x1E69E9840];
  *(this + 8) = *(a2 + 4);
  v8 = (this + 48);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(this + 6));
  *(this + 5) = v8;
  *v8 = 0;
  v81 = this + 40;
  *(this + 7) = 0;
  v11 = *a3;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
  v78 = v6;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      LODWORD(v102) = 0;
      v101 = 0;
      if (v12 > v14)
      {
        v15 = v11 + v13;
        v16 = *(v15 + 8);
        v101 = *v15;
        LODWORD(v102) = v16;
        v17 = v101 == 707406378 || HIDWORD(v101) == 707406378;
        if (v17 || v16 == -1)
        {
          v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v19 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v9);
          }

          v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *v21;
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          else
          {
            v22 = *v21;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v114 = "HALS_DeviceState.cpp";
            LOWORD(v115[0]) = 1024;
            *(v115 + 2) = 78;
            _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_DeviceState::Capture: properties with a wildcard are not supported", buf, 0x12u);
          }
        }
      }

      PropertyQualifierDataType = HALB_Info::GetPropertyQualifierDataType(v101, 0, v10);
      if (PropertyQualifierDataType)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(PropertyQualifierDataType);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v114 = "HALS_DeviceState.cpp";
          LOWORD(v115[0]) = 1024;
          *(v115 + 2) = 79;
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_DeviceState::Capture: properties with a qualifier are not supported", buf, 0x12u);
        }
      }

      IsAVTProperty = HALB_Info::IsAVTProperty(v101);
      if (IsAVTProperty)
      {
        v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v30 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(IsAVTProperty);
        }

        v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          v33 = *v32;
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        else
        {
          v33 = *v32;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v114 = "HALS_DeviceState.cpp";
          LOWORD(v115[0]) = 1024;
          *(v115 + 2) = 80;
          _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_DeviceState::Capture: properties that use an AVT are not supported", buf, 0x12u);
        }
      }

      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v97 = &unk_1F5991080;
      v98 = 0;
      PropertyDataType = HALB_Info::GetPropertyDataType(v101, 0, v29);
      if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && (v34 = *(this + 3)) != 0)
      {
        v35 = (*(*v34 + 48))(v34, &v101);
      }

      else
      {
        v35 = 0;
      }

      if (PropertyDataType <= 1718367025)
      {
        if (PropertyDataType != 1634951780)
        {
          if (PropertyDataType == 1667658612 || PropertyDataType == 1668641388)
          {
LABEL_53:
            if ((*(*v6 + 96))(v6, v6[4], &v101, 0))
            {
              v38 = v6[4];
              v90 = 0;
              v89 = 0;
              (*(*v6 + 120))(v6, v38, &v101, 8, &v89, &v90, 0, 0, v35);
              v39 = v98;
              v98 = v90;
              if (v39)
              {
                CFRelease(v39);
              }

              goto LABEL_69;
            }

            goto LABEL_70;
          }

LABEL_58:
          if ((*(*v6 + 96))(v6, v6[4], &v101, 0))
          {
            PropertyDataType = 1918990199;
            v41 = (*(*v6 + 112))(v6, v6[4], &v101, 0, 0, v35);
            v42 = v41;
            *buf = v41;
            v43 = v92;
            if (v41 <= *(&v92 + 1) - v92)
            {
              if (v41 < *(&v92 + 1) - v92)
              {
                *(&v92 + 1) = v92 + v41;
              }
            }

            else
            {
              std::vector<unsigned char>::__append(&v92, v41 - (*(&v92 + 1) - v92));
              v42 = *buf;
              v43 = v92;
            }

            (*(*v6 + 120))(v6, v6[4], &v101, v42, buf, v43, 0, 0, 0);
            if (*buf <= *(&v92 + 1) - v92)
            {
              if (*buf < *(&v92 + 1) - v92)
              {
                *(&v92 + 1) = v92 + *buf;
              }
            }

            else
            {
              std::vector<unsigned char>::__append(&v92, *buf - (*(&v92 + 1) - v92));
            }

            goto LABEL_69;
          }

          goto LABEL_70;
        }

        if ((*(*v6 + 96))(v6, v6[4], &v101, 0))
        {
          v40 = v6[4];
          v88 = 0;
          (*(*v6 + 120))(v6, v40, &v101, 40, &v88, &v94 + 8, 0, 0, v35);
          goto LABEL_69;
        }
      }

      else if (PropertyDataType > 1886155635)
      {
        if (PropertyDataType == 1886155636)
        {
          goto LABEL_53;
        }

        if (PropertyDataType != 1969828658)
        {
          goto LABEL_58;
        }

        if ((*(*v6 + 96))(v6, v6[4], &v101, v35))
        {
          v37 = v6[4];
          v82 = 0;
          v83 = 0;
          (*(*v6 + 120))(v6, v37, &v101, 4, &v82, &v83, 0, 0, v35);
          DWORD2(v93) = v83;
          goto LABEL_69;
        }
      }

      else if (PropertyDataType == 1718367026)
      {
        if ((*(*v6 + 96))(v6, v6[4], &v101, v35))
        {
          v44 = v6[4];
          v84 = 0;
          v85 = 0;
          (*(*v6 + 120))(v6, v44, &v101, 4, &v84, &v85, 0, 0, v35);
          HIDWORD(v93) = v85;
          goto LABEL_69;
        }
      }

      else
      {
        if (PropertyDataType != 1718367796)
        {
          goto LABEL_58;
        }

        if ((*(*v6 + 96))(v6, v6[4], &v101, 0))
        {
          v36 = v6[4];
          v87 = 0;
          v86 = 0;
          (*(*v6 + 120))(v6, v36, &v101, 8, &v86, &v87, 0, 0, v35);
          *&v94 = v87;
LABEL_69:
          *buf = v6[4];
          v114 = v101;
          v115[0] = v102;
          HALS_DeviceState::Value::Value(&v115[1], &PropertyDataType);
          std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::__emplace_unique_key_args<HALS_DeviceState::Key,std::pair<HALS_DeviceState::Key const,HALS_DeviceState::Value>>(v81, buf);
          HALS_DeviceState::Value::~Value(&v115[1]);
        }
      }

LABEL_70:
      HALS_DeviceState::Value::~Value(&PropertyDataType);
      ++v14;
      v11 = *a3;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
      v13 += 12;
    }

    while (v14 < v12);
  }

  v45 = 0;
  v46 = 1;
  do
  {
    v47 = v46;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    HALS_Device::CopyStreamList(v6, v45 & 1, &v101);
    v49 = v101;
    v80 = v102;
    if (v101 == v102)
    {
      goto LABEL_122;
    }

    v79 = v47;
    do
    {
      v50 = *a4;
      v51 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 2);
      if (v51)
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v99 = 0x676C6F6200000000;
          v100 = 0;
          if (v51 > v53)
          {
            v54 = v50 + v52;
            v55 = *v54;
            v100 = *(v54 + 8);
            v99 = v55;
          }

          if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && (v57 = *(this + 3)) != 0)
          {
            v58 = (*(*v57 + 48))(v57, &v99);
          }

          else
          {
            v58 = 0;
          }

          if (v99 == 707406378 || HIDWORD(v99) == 707406378 || v100 == -1)
          {
            goto LABEL_119;
          }

          v96 = 0u;
          v95 = 0u;
          v94 = 0u;
          v93 = 0u;
          v92 = 0u;
          v97 = &unk_1F5991080;
          v98 = 0;
          v61 = HALB_Info::GetPropertyDataType(v99, 0, v56);
          PropertyDataType = v61;
          if (v61 <= 1718367025)
          {
            if (v61 != 1634951780)
            {
              if (v61 == 1667658612 || v61 == 1668641388)
              {
LABEL_103:
                if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v99, v58))
                {
                  v67 = *v49;
                  v68 = *(*v49 + 4);
                  v112 = 0;
                  v111 = 0;
                  (*(*v67 + 120))(v67, v68, &v99, 8, &v111, &v112, 0, 0, v58);
                  v69 = v98;
                  v98 = v112;
                  if (v69)
                  {
                    CFRelease(v69);
                  }

                  goto LABEL_117;
                }

                goto LABEL_118;
              }

              goto LABEL_108;
            }

            if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v99, v58))
            {
              v70 = *v49;
              v71 = *(*v49 + 4);
              v110 = 0;
              (*(*v70 + 120))(v70, v71, &v99, 40, &v110, &v94 + 8, 0, 0, v58);
              goto LABEL_117;
            }
          }

          else if (v61 > 1886155635)
          {
            if (v61 == 1886155636)
            {
              goto LABEL_103;
            }

            if (v61 != 1969828658)
            {
              goto LABEL_108;
            }

            if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v99, v58))
            {
              v65 = *v49;
              v66 = *(*v49 + 4);
              v104 = 0;
              v105 = 0;
              (*(*v65 + 120))(v65, v66, &v99, 4, &v104, &v105, 0, 0, v58);
              DWORD2(v93) = v105;
              goto LABEL_117;
            }
          }

          else
          {
            if (v61 != 1718367026)
            {
              if (v61 == 1718367796)
              {
                if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v99, v58))
                {
                  v62 = *v49;
                  v63 = *(*v49 + 4);
                  v109 = 0;
                  v108 = 0;
                  (*(*v62 + 120))(v62, v63, &v99, 8, &v108, &v109, 0, 0, v58);
                  v64 = v109;
                  goto LABEL_113;
                }

                goto LABEL_118;
              }

LABEL_108:
              if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v99, v58))
              {
                PropertyDataType = 1918990199;
                v72 = (*(**v49 + 112))(*v49, *(*v49 + 4), &v99, 0, 0, v58);
                v73 = v72;
                *buf = v72;
                v74 = v92;
                if (v72 <= *(&v92 + 1) - v92)
                {
                  if (v72 < *(&v92 + 1) - v92)
                  {
                    *(&v92 + 1) = v92 + v72;
                  }
                }

                else
                {
                  std::vector<unsigned char>::__append(&v92, v72 - (*(&v92 + 1) - v92));
                  v73 = *buf;
                  v74 = v92;
                }

                (*(**v49 + 120))(*v49, *(*v49 + 4), &v99, v73, buf, v74, 0, 0, v58);
                goto LABEL_117;
              }

              goto LABEL_118;
            }

            if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v99, v58))
            {
              v75 = *v49;
              v76 = *(*v49 + 4);
              v107 = 0;
              v106 = 0;
              (*(*v75 + 120))(v75, v76, &v99, 8, &v106, &v107, 0, 0, v58);
              v64 = v107;
LABEL_113:
              *&v94 = v64;
LABEL_117:
              *buf = *(*v49 + 4);
              v114 = v99;
              v115[0] = v100;
              HALS_DeviceState::Value::Value(&v115[1], &PropertyDataType);
              std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::__emplace_unique_key_args<HALS_DeviceState::Key,std::pair<HALS_DeviceState::Key const,HALS_DeviceState::Value>>(v81, buf);
              HALS_DeviceState::Value::~Value(&v115[1]);
            }
          }

LABEL_118:
          HALS_DeviceState::Value::~Value(&PropertyDataType);
LABEL_119:
          ++v53;
          v50 = *a4;
          v51 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 2);
          v52 += 12;
        }

        while (v53 < v51);
      }

      HALS_ObjectMap::ReleaseObject(*v49++, v48);
    }

    while (v49 != v80);
    v49 = v101;
    v6 = v78;
    v47 = v79;
LABEL_122:
    if (v49)
    {
      v102 = v49;
      operator delete(v49);
    }

    v46 = 0;
    v45 = 1;
  }

  while ((v47 & 1) != 0);
  v77 = *MEMORY[0x1E69E9840];
}

void sub_1DE2ED204(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE2ED260);
}

void sub_1DE2ED22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  HALS_DeviceState::Value::~Value(va);
  _Unwind_Resume(a1);
}

void sub_1DE2ED240(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    *(v1 + 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1DE2ED258(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2ED260);
  }

  __clang_call_terminate(a1);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

HALS_DeviceState::Value *HALS_DeviceState::Value::Value(HALS_DeviceState::Value *this, const HALS_DeviceState::Value *a2)
{
  *this = *a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 8, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 3) = v5;
  *(this + 4) = v6;
  *(this + 2) = v4;
  OS::CF::UntypedObject::UntypedObject((this + 88), *(a2 + 12));
  return this;
}

BOOL std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::__emplace_unique_key_args<HALS_DeviceState::Key,std::pair<HALS_DeviceState::Key const,HALS_DeviceState::Value>>(uint64_t a1, _DWORD *a2)
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
      v4 = v2;
      if (!operator<(a2, v2 + 8))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = operator<(v4 + 8, a2);
    if (!result)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

BOOL operator<(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  v5 = v3 >= v4;
  if (v3 == v4)
  {
    v6 = a1[1];
    v7 = a2[1];
    v5 = v6 >= v7;
    if (v6 == v7)
    {
      v5 = a1[3] >= a2[3];
    }
  }

  return !v5;
}

void HALS_DeviceState::Compare(uint64_t a1, uint64_t a2, const AudioObjectPropertyAddress *this, CAPropertyAddressList **a4)
{
  v4 = *(a1 + 40);
  v5 = (a1 + 48);
  if (v4 != (a1 + 48))
  {
    v7 = this;
    v9 = (a2 + 48);
    while (1)
    {
      v10 = *v9;
      if (!*v9)
      {
        goto LABEL_42;
      }

      v11 = v9;
      do
      {
        v12 = operator<((v10 + 32), v4 + 8);
        if (v12)
        {
          v13 = 8;
        }

        else
        {
          v13 = 0;
        }

        if (!v12)
        {
          v11 = v10;
        }

        v10 = *(v10 + v13);
      }

      while (v10);
      if (v11 == v9 || operator<(v4 + 8, v11 + 8) || (v14 = *(v4 + 12), v14 != *(v11 + 12)))
      {
LABEL_42:
        v17 = *(v4 + 8);
        if (v17 == *(a1 + 32))
        {
          p_p = (v4 + 36);
          v19 = v7;
LABEL_44:
          CAPropertyAddressList::AppendUniqueItem(v19, p_p, this);
        }

        else
        {
          v20 = *a4;
          do
          {
            if (v20 == a4[1])
            {
              __p = 0uLL;
              v28 = 0;
              v29 = v17;
              CAPropertyAddressList::AppendUniqueItem(&__p, v4 + 3, this);
              std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a4, &__p);
              if (__p)
              {
                operator delete(__p);
              }

              goto LABEL_54;
            }

            v21 = v20;
            v22 = *(v20 + 3);
            v20 = (v20 + 32);
          }

          while (v22 != v17);
          CAPropertyAddressList::AppendUniqueItem(v21, v4 + 3, this);
          v23 = *(v4 + 9);
          if (v23 == 1936092532)
          {
            LODWORD(__p) = 1936092532;
            *(&__p + 4) = v4[5];
            CAPropertyAddressList::AppendUniqueItem(v21, &__p, this);
            v23 = *(v4 + 9);
          }

          if (v23 == 1936092513)
          {
            LODWORD(__p) = 1936092451;
            *(&__p + 4) = v4[5];
            p_p = &__p;
            v19 = v21;
            goto LABEL_44;
          }
        }

        goto LABEL_54;
      }

      if (v14 > 1718367025)
      {
        break;
      }

      if (v14 != 1634951780)
      {
        if (v14 == 1667658612 || v14 == 1668641388)
        {
LABEL_28:
          if (!CFEqual(v4[18], v11[18]))
          {
            goto LABEL_42;
          }

          goto LABEL_54;
        }

LABEL_38:
        v15 = v4[7];
        this = (v4[8] - v15);
        v16 = v11[7];
        if (this != (v11[8] - v16) || memcmp(v15, v16, this))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      if (*(v4 + 12) != *(v11 + 12) || *(v4 + 26) != *(v11 + 26) || *(v4 + 28) != *(v11 + 28) || *(v4 + 29) != *(v11 + 29) || *(v4 + 31) != *(v11 + 31) || *(v4 + 32) != *(v11 + 32) || !CA::Implementation::EquivalentFormatFlags((v4 + 12), (v11 + 12), 1))
      {
        goto LABEL_42;
      }

LABEL_54:
      v24 = v4[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v4[2];
          v26 = *v25 == v4;
          v4 = v25;
        }

        while (!v26);
      }

      v4 = v25;
      if (v25 == v5)
      {
        return;
      }
    }

    if (v14 > 1886155635)
    {
      if (v14 == 1886155636)
      {
        goto LABEL_28;
      }

      if (v14 == 1969828658)
      {
        if (*(v4 + 20) != *(v11 + 20))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (v14 == 1718367026)
      {
        if (*(v4 + 21) != *(v11 + 21))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      if (v14 == 1718367796)
      {
        if (*(v4 + 11) != *(v11 + 11))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }
    }

    goto LABEL_38;
  }
}

void sub_1DE2ED914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE2EDBC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_1DE2EE870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  DSP_Host_Types::DSPPropertyInfoArray::~DSPPropertyInfoArray(va);
  _Unwind_Resume(a1);
}

void sub_1DE2EEBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_1DE2EEC80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC4CLL);
}

void sub_1DE2EECA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC54);
}

void sub_1DE2EECC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC5CLL);
}

void sub_1DE2EECE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC64);
}

void DSP_Host_Types::DSPPropertyInfoArray::~DSPPropertyInfoArray(DSP_Host_Types::DSPPropertyInfoArray *this)
{
  *this = &unk_1F598E988;
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598E9C8;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

{
  *this = &unk_1F598E988;
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598E9C8;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598E988;
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598E9C8;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfoArray>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2EEE4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfoArray>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::StringifiedKvp(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = DSP_Dictionariable::DictionariableKvp::DictionariableKvp(a1, a2);
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  *v3 = &unk_1F5985F58;
  v4 = v3 + 3;
  v3[6] = 0;
  v3[10] = 0;
  {
    qword_1EE013848 = "uninitialized";
    dword_1EE013850 = 1;
    qword_1EE013858 = "None";
    dword_1EE013860 = 2;
    qword_1EE013868 = "String";
    dword_1EE013870 = 3;
    qword_1EE013878 = "Boolean";
    dword_1EE013880 = 4;
    qword_1EE013888 = "Float32";
    dword_1EE013890 = 5;
    DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[0] = 0;
    qword_1EE013898 = "UInt32";
    dword_1EE0138A0 = 6;
    qword_1EE0138A8 = "Int32";
    dword_1EE0138B0 = 7;
    qword_1EE0138B8 = "Dictionary";
  }

  v8[0] = &unk_1F598DA28;
  v9 = v8;
  if (v4 != v8)
  {
    if (*(a1 + 48) == v4)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::__clone(v8, v10);
      (*(*v9 + 32))(v9);
      v9 = 0;
      (*(**(a1 + 48) + 24))(*(a1 + 48), v8);
      (*(**(a1 + 48) + 32))(*(a1 + 48));
      *(a1 + 48) = 0;
      v9 = v8;
      (*(v10[0] + 24))(v10, v4);
      (*(v10[0] + 32))(v10);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::__clone(v8, v4);
      (*(*v9 + 32))(v9);
      v9 = *(a1 + 48);
    }

    *(a1 + 48) = v4;
  }

  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](v8);
  v5 = a1 + 56;
  v8[0] = &unk_1F598DAB8;
  v9 = v8;
  if ((a1 + 56) != v8)
  {
    if (*(a1 + 80) == v5)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::__clone(v8, v10);
      (*(*v9 + 32))(v9);
      v9 = 0;
      (*(**(a1 + 80) + 24))(*(a1 + 80), v8);
      (*(**(a1 + 80) + 32))(*(a1 + 80));
      *(a1 + 80) = 0;
      v9 = v8;
      (*(v10[0] + 24))(v10, a1 + 56);
      (*(v10[0] + 32))(v10);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::__clone(v8, (a1 + 56));
      (*(*v9 + 32))(v9);
      v9 = *(a1 + 80);
    }

    *(a1 + 80) = v5;
  }

  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE2EF44C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::~StringifiedKvp(DSP_Dictionariable::DictionariableKvp *a1)
{
  *a1 = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

{
  *a1 = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfo>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985FB0;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::load_from(uint64_t a1, CFDictionaryRef *a2)
{
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
  }

  v9[0] = &unk_1F598EC08;
  v9[1] = 0;
  v10 = a2;
  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, *(a1 + 8)))
  {
    applesauce::CF::details::find_at_key<std::string,__CFString const*&>(__p, *v10, *(a1 + 8));
    if (v8 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v11 = v3;
    v4 = *(a1 + 48);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    *(a1 + 16) = (*(*v4 + 48))(v4, &v11);
    *(a1 + 20) = 1;
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v9);
  return v5;
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::add_to(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 20) != 1)
  {
    return;
  }

  LODWORD(v11) = *(a1 + 16);
  v3 = *(a1 + 80);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v3 + 48))(v3, &v11);
  std::string::basic_string[abi:ne200100]<0>(&bytes, v5);
  v6 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v6 = numBytes;
    if (!numBytes)
    {
LABEL_12:
      operator delete(bytes);
      return;
    }

    p_bytes = bytes;
    v7 = (a1 + 8);
    if (!bytes)
    {
      v9 = 0;
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    if (!v14)
    {
      return;
    }

    v7 = (a1 + 8);
    p_bytes = &bytes;
  }

  v9 = CFStringCreateWithBytes(0, p_bytes, v6, 0x8000100u, 0);
  v11 = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_9:
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(*a2, *v7, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v14 < 0)
  {
    goto LABEL_12;
  }
}

void sub_1DE2EF8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfo>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2EFA30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfo>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void std::__shared_ptr_emplace<DSP_Host_Types::DSPPropertyInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59860E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE2F00EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va1);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v4 - 120));
  DSP_TemplatedProperty<1685278561u,1768845428u,__CFDictionary const*>::~DSP_TemplatedProperty(v2);
  MEMORY[0x1E12C1730](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t DSP_TemplatedProperty<1684500589u,1768845428u,float>::DSP_TemplatedProperty(uint64_t a1, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F59652C8;
  v6 = a1 + 8;
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](a1 + 8, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1018212795;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x696E70746467706DLL;
  *(a1 + 168) = 0;
  *(a1 + 172) = a3;
  *(a1 + 176) = xmmword_1DE757E90;
  *(a1 + 176) = std::chrono::steady_clock::now().__d_.__rep_ - 1000000 * *(a1 + 184);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](v9, a2);
  if (!*(a1 + 32) && v10)
  {
    std::function<void ()(unsigned int,unsigned int)>::operator=(v6, v9);
    operator new();
  }

  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE2F0458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](va1);
  std::mutex::~mutex(v6);
  std::condition_variable::~condition_variable(v5);
  std::thread::~thread(v3);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

uint64_t DSP_TemplatedProperty<1684498541u,1768845428u,unsigned int>::DSP_TemplatedProperty(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F59652E8;
  v4 = a1 + 8;
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](a1 + 8, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1018212795;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x696E70746467686DLL;
  *(a1 + 168) = 1;
  *(a1 + 172) = 0;
  *(a1 + 176) = xmmword_1DE757E90;
  *(a1 + 176) = std::chrono::steady_clock::now().__d_.__rep_ - 1000000 * *(a1 + 184);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](v7, a2);
  if (!*(a1 + 32) && v8)
  {
    std::function<void ()(unsigned int,unsigned int)>::operator=(v4, v7);
    operator new();
  }

  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE2F06C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](va1);
  std::mutex::~mutex(v6);
  std::condition_variable::~condition_variable(v5);
  std::thread::~thread(v3);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(unsigned int,unsigned int)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE2F0A54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1684498541u,1768845428u,unsigned int>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v16 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v16[1];
  do
  {
    __lk.__m_ = (v4 + 96);
    __lk.__owns_ = 1;
    std::mutex::lock((v4 + 96));
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v7.__d_.__rep_ = 100000000;
    if (v6.__d_.__rep_)
    {
      if (v6.__d_.__rep_ < 1)
      {
        if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
        }

        else
        {
          v7.__d_.__rep_ = 0x8000000005F5E100;
        }
      }

      else if (v6.__d_.__rep_ < 0x20C49BA5E1CD58)
      {
        v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
      }

      else
      {
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    std::condition_variable::__do_timed_wait((v4 + 48), &__lk, v7);
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v9 = atomic_load((v4 + 160));
    v10 = v8.__d_.__rep_ - v5.__d_.__rep_;
    if (v9 == 1802071148)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v12 = __OFSUB__(v10, 100000000);
      v11 = v10 - 100000000 < 0;
    }

    if (v11 != v12)
    {
      v13 = atomic_load((v4 + 160));
      std::function<void ()(unsigned int,unsigned int)>::operator()(*(v4 + 32), v13, *(v4 + 164));
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v9 == 1802071148)
    {
      break;
    }

    v14 = atomic_load((v4 + 160));
  }

  while (v14 != 1802071148);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v16);
  return 0;
}

uint64_t std::function<void ()(unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

void DSP_TemplatedProperty<1684498541u,1768845428u,unsigned int>::~DSP_TemplatedProperty(uint64_t a1)
{
  DSP_TemplatedProperty<1684498541u,1768845428u,unsigned int>::~DSP_TemplatedProperty(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_TemplatedProperty<1684498541u,1768845428u,unsigned int>::~DSP_TemplatedProperty(uint64_t a1)
{
  *a1 = &unk_1F59652E8;
  if (*(a1 + 32))
  {
    atomic_store(0x6B696C6Cu, (a1 + 160));
    std::condition_variable::notify_one((a1 + 48));
    std::thread::join((a1 + 40));
  }

  std::mutex::~mutex((a1 + 96));
  std::condition_variable::~condition_variable((a1 + 48));
  std::thread::~thread((a1 + 40));
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1684500589u,1768845428u,float>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v16 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v16[1];
  do
  {
    __lk.__m_ = (v4 + 96);
    __lk.__owns_ = 1;
    std::mutex::lock((v4 + 96));
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v7.__d_.__rep_ = 100000000;
    if (v6.__d_.__rep_)
    {
      if (v6.__d_.__rep_ < 1)
      {
        if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
        }

        else
        {
          v7.__d_.__rep_ = 0x8000000005F5E100;
        }
      }

      else if (v6.__d_.__rep_ < 0x20C49BA5E1CD58)
      {
        v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
      }

      else
      {
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    std::condition_variable::__do_timed_wait((v4 + 48), &__lk, v7);
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v9 = atomic_load((v4 + 160));
    v10 = v8.__d_.__rep_ - v5.__d_.__rep_;
    if (v9 == 1802071148)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v12 = __OFSUB__(v10, 100000000);
      v11 = v10 - 100000000 < 0;
    }

    if (v11 != v12)
    {
      v13 = atomic_load((v4 + 160));
      std::function<void ()(unsigned int,unsigned int)>::operator()(*(v4 + 32), v13, *(v4 + 164));
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v9 == 1802071148)
    {
      break;
    }

    v14 = atomic_load((v4 + 160));
  }

  while (v14 != 1802071148);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v16);
  return 0;
}

void DSP_TemplatedProperty<1684500589u,1768845428u,float>::~DSP_TemplatedProperty(uint64_t a1)
{
  DSP_TemplatedProperty<1684500589u,1768845428u,float>::~DSP_TemplatedProperty(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_TemplatedProperty<1684500589u,1768845428u,float>::~DSP_TemplatedProperty(uint64_t a1)
{
  *a1 = &unk_1F59652C8;
  if (*(a1 + 32))
  {
    atomic_store(0x6B696C6Cu, (a1 + 160));
    std::condition_variable::notify_one((a1 + 48));
    std::thread::join((a1 + 40));
  }

  std::mutex::~mutex((a1 + 96));
  std::condition_variable::~condition_variable((a1 + 48));
  std::thread::~thread((a1 + 40));
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

uint64_t DSP_TemplatedProperty<1685278561u,1768845428u,__CFDictionary const*>::~DSP_TemplatedProperty(uint64_t a1)
{
  *a1 = &unk_1F59652A8;
  if (*(a1 + 32))
  {
    atomic_store(0x6B696C6Cu, (a1 + 160));
    std::condition_variable::notify_one((a1 + 48));
    std::thread::join((a1 + 40));
  }

  std::mutex::~mutex((a1 + 96));
  std::condition_variable::~condition_variable((a1 + 48));
  std::thread::~thread((a1 + 40));
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

void DSP_TemplatedProperty<1685278561u,1768845428u,__CFDictionary const*>::~DSP_TemplatedProperty(uint64_t a1)
{
  DSP_TemplatedProperty<1685278561u,1768845428u,__CFDictionary const*>::~DSP_TemplatedProperty(a1);

  JUMPOUT(0x1E12C1730);
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void DSP_DictionaryRefProperty<1685278561u,1768845428u>::~DSP_DictionaryRefProperty(void *a1)
{
  DSP_DictionaryRefProperty<1685278561u,1768845428u>::~DSP_DictionaryRefProperty(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_DictionaryRefProperty<1685278561u,1768845428u>::~DSP_DictionaryRefProperty(void *a1)
{
  *a1 = &unk_1F5965288;
  v2 = atomic_exchange(a1 + 21, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return DSP_TemplatedProperty<1685278561u,1768845428u,__CFDictionary const*>::~DSP_TemplatedProperty(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1685278561u,1768845428u,__CFDictionary const*>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v16 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v16[1];
  do
  {
    __lk.__m_ = (v4 + 96);
    __lk.__owns_ = 1;
    std::mutex::lock((v4 + 96));
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v7.__d_.__rep_ = 100000000;
    if (v6.__d_.__rep_)
    {
      if (v6.__d_.__rep_ < 1)
      {
        if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
        }

        else
        {
          v7.__d_.__rep_ = 0x8000000005F5E100;
        }
      }

      else if (v6.__d_.__rep_ < 0x20C49BA5E1CD58)
      {
        v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
      }

      else
      {
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    std::condition_variable::__do_timed_wait((v4 + 48), &__lk, v7);
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v9 = atomic_load((v4 + 160));
    v10 = v8.__d_.__rep_ - v5.__d_.__rep_;
    if (v9 == 1802071148)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v12 = __OFSUB__(v10, 100000000);
      v11 = v10 - 100000000 < 0;
    }

    if (v11 != v12)
    {
      v13 = atomic_load((v4 + 160));
      std::function<void ()(unsigned int,unsigned int)>::operator()(*(v4 + 32), v13, *(v4 + 164));
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v9 == 1802071148)
    {
      break;
    }

    v14 = atomic_load((v4 + 160));
  }

  while (v14 != 1802071148);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v16);
  return 0;
}

void sub_1DE2F1538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1DE2F1758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(uint64_t result, uint64_t a2)
{
  if (!*(result + 32))
  {
    if (*(a2 + 24))
    {
      std::function<void ()(unsigned int,unsigned int)>::operator=(result + 8, a2);
      operator new();
    }
  }

  return result;
}

void sub_1DE2F18D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v16 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v16[1];
  do
  {
    __lk.__m_ = (v4 + 96);
    __lk.__owns_ = 1;
    std::mutex::lock((v4 + 96));
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v7.__d_.__rep_ = 100000000;
    if (v6.__d_.__rep_)
    {
      if (v6.__d_.__rep_ < 1)
      {
        if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
        }

        else
        {
          v7.__d_.__rep_ = 0x8000000005F5E100;
        }
      }

      else if (v6.__d_.__rep_ < 0x20C49BA5E1CD58)
      {
        v7.__d_.__rep_ = 1000 * v6.__d_.__rep_ + 100000000;
      }

      else
      {
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    std::condition_variable::__do_timed_wait((v4 + 48), &__lk, v7);
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v9 = atomic_load((v4 + 160));
    v10 = v8.__d_.__rep_ - v5.__d_.__rep_;
    if (v9 == 1802071148)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v12 = __OFSUB__(v10, 100000000);
      v11 = v10 - 100000000 < 0;
    }

    if (v11 != v12)
    {
      v13 = atomic_load((v4 + 160));
      std::function<void ()(unsigned int,unsigned int)>::operator()(*(v4 + 32), v13, *(v4 + 164));
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v9 == 1802071148)
    {
      break;
    }

    v14 = atomic_load((v4 + 160));
  }

  while (v14 != 1802071148);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(std::function<void ()(unsigned int,unsigned int)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v16);
  return 0;
}

void DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::~DSP_TemplatedProperty(uint64_t a1)
{
  DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::~DSP_TemplatedProperty(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::~DSP_TemplatedProperty(uint64_t a1)
{
  *a1 = &unk_1F5965268;
  if (*(a1 + 32))
  {
    atomic_store(0x6B696C6Cu, (a1 + 160));
    std::condition_variable::notify_one((a1 + 48));
    std::thread::join((a1 + 40));
  }

  std::mutex::~mutex((a1 + 96));
  std::condition_variable::~condition_variable((a1 + 48));
  std::thread::~thread((a1 + 40));
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

void AMCP::IO_Clock::~IO_Clock(AMCP::IO_Clock *this)
{
  AMCP::IO_Clock::~IO_Clock(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5965308;
  std::__function::__value_func<CA::TimeStamp ()(void)>::~__value_func[abi:ne200100](this + 32);
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t std::__function::__value_func<CA::TimeStamp ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::IO_Clock::IO_Clock(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5965308;
  *(a1 + 8) = 0;
  operator new();
}

void sub_1DE2F24D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IO_Clock::has_time(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 20);
  if ((*(**&this[4]._os_unfair_lock_opaque + 16))(*&this[4]._os_unfair_lock_opaque))
  {
    os_unfair_lock_opaque = this[38]._os_unfair_lock_opaque;
  }

  else
  {
    os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(this + 20);
  return os_unfair_lock_opaque & 1;
}

unint64_t AMCP::IO_Clock::convert_sample_to_host_time(os_unfair_lock_s *this, double a2)
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 20);
  v4 = (*(**&this[4]._os_unfair_lock_opaque + 16))(*&this[4]._os_unfair_lock_opaque);
  if (!v4 || (this[38]._os_unfair_lock_opaque & 1) == 0)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "IO_Clock.cpp";
      v25 = 1024;
      v26 = 69;
      v27 = 2080;
      v28 = "not (has_time_internal())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s convert_sample_to_host_time, clock does not have time", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("convert_sample_to_host_time, clock does not have time", &v14);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v29 = "uint64_t AMCP::IO_Clock::convert_sample_to_host_time(float64_t) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/IO_Clock.cpp";
    v31 = 69;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  v5 = *&this[22]._os_unfair_lock_opaque;
  if (v5 <= a2)
  {
    if (v5 < a2)
    {
      v6 = *&this[24]._os_unfair_lock_opaque + ((a2 - v5) * *&this[16]._os_unfair_lock_opaque);
    }

    else
    {
      v6 = *&this[24]._os_unfair_lock_opaque;
    }
  }

  else
  {
    v6 = *&this[24]._os_unfair_lock_opaque - ((v5 - a2) * *&this[16]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(this + 20);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE2F294C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double AMCP::IO_Clock::convert_host_to_sample_time_internal(AMCP::IO_Clock *this, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = (*(**(this + 2) + 16))(*(this + 2));
  if (!v4 || (*(this + 152) & 1) == 0)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "IO_Clock.cpp";
      v25 = 1024;
      v26 = 190;
      v27 = 2080;
      v28 = "not (has_time_internal())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s convert_host_to_sample_time, clock does not have time", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("convert_host_to_sample_time, clock does not have time", &v14);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v29 = "float64_t AMCP::IO_Clock::convert_host_to_sample_time_internal(uint64_t) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/IO_Clock.cpp";
    v31 = 190;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  v5 = *(this + 12);
  if (v5 <= a2)
  {
    if (v5 >= a2)
    {
      v6 = *(this + 11);
    }

    else
    {
      v6 = *(this + 11) + *(this + 9) * (a2 - v5);
    }
  }

  else
  {
    v6 = *(this + 11) - *(this + 9) * (v5 - a2);
  }

  v7 = *MEMORY[0x1E69E9840];
  return floor(v6);
}

void sub_1DE2F2C3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IO_Clock::get_current_time(AMCP::IO_Clock *this, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 80));
  if ((*(**(a2 + 16) + 16))(*(a2 + 16)) && *(a2 + 152) == 1)
  {
    v4 = mach_absolute_time();
    *(this + 7) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 14) = 7;
    *(this + 1) = v4;
    *this = AMCP::IO_Clock::convert_host_to_sample_time_internal(a2, v4);
    *(this + 2) = *(a2 + 64) / *(*(a2 + 16) + 40);
  }

  else
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0x3FF0000000000000;
    *(this + 7) = 7;
  }

  os_unfair_lock_unlock((a2 + 80));
}

void AMCP::IO_Clock::get_current_zts(AMCP::IO_Clock *this, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 80));
  if ((*(**(a2 + 16) + 16))(*(a2 + 16)) && *(a2 + 152) == 1)
  {
    v4 = *(a2 + 104);
    *this = *(a2 + 88);
    *(this + 1) = v4;
    v5 = *(a2 + 136);
    *(this + 2) = *(a2 + 120);
    *(this + 3) = v5;
  }

  else
  {
    *(this + 2) = 0u;
    *(this + 3) = 0u;
    *this = 0u;
    *(this + 1) = 0u;
  }

  os_unfair_lock_unlock((a2 + 80));
}

uint64_t AMCP::IO_Clock::reset_time(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 20);
  os_unfair_lock_opaque_low = LOBYTE(this[38]._os_unfair_lock_opaque);
  if (os_unfair_lock_opaque_low == 1)
  {
    v3 = *&this[4]._os_unfair_lock_opaque;
    AMCP::Time_Stamp_Historian::clear_time_stamp_buffer(v3);
    AMCP::Time_Stamp_Historian::clear_time_stamp_deltas(v3);
    if (LOBYTE(this[38]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(this[38]._os_unfair_lock_opaque) = 0;
    }
  }

  os_unfair_lock_unlock(this + 20);
  return os_unfair_lock_opaque_low;
}

uint64_t AMCP::IO_Clock::update_time(AMCP::IO_Clock *this)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(&v42);
  os_unfair_lock_lock(this + 20);
  if ((BYTE8(v45) & 3) != 0 && *(&v42 + 1) == 0)
  {
    if (*(this + 12))
    {
      v5 = 0;
      *(this + 8) = 1;
      goto LABEL_79;
    }
  }

  else if ((BYTE8(v45) & 3) == 0)
  {
LABEL_78:
    v5 = 0;
    goto LABEL_79;
  }

  v6 = *(this + 152);
  if (v6 == 1 && DWORD2(v45) == *(this + 36) && ((BYTE8(v45) & 1) == 0 || *&v42 == *(this + 11)) && ((BYTE8(v45) & 2) == 0 || *(&v42 + 1) == *(this + 12)) && ((BYTE8(v45) & 4) == 0 || *&v43 == *(this + 13)) && ((BYTE8(v45) & 8) == 0 || *(&v43 + 1) == *(this + 14)) && ((BYTE8(v45) & 0x10) == 0 || __PAIR64__(WORD1(v44), v44) == __PAIR64__(*(this + 61), *(this + 60)) && *(&v44 + 4) == *(this + 124) && __PAIR64__(v45, HIDWORD(v44)) == __PAIR64__(*(this + 68), *(this + 33)) && __PAIR64__(WORD2(v45), WORD1(v45)) == __PAIR64__(*(this + 70), *(this + 69)) && WORD3(v45) == *(this + 71)))
  {
    goto LABEL_78;
  }

  if (*(this + 8) == 1)
  {
    v7 = *(this + 2);
    AMCP::Time_Stamp_Historian::clear_time_stamp_buffer(v7);
    AMCP::Time_Stamp_Historian::clear_time_stamp_deltas(v7);
    *(this + 8) = 0;
    LOBYTE(v6) = *(this + 152);
  }

  v8 = v43;
  *(this + 88) = v42;
  *(this + 104) = v8;
  v9.n128_u64[1] = *(&v44 + 1);
  v10 = v45;
  *(this + 120) = v44;
  *(this + 136) = v10;
  if ((v6 & 1) == 0)
  {
    *(this + 152) = 1;
  }

  v9.n128_u64[0] = v42;
  v40 = v42;
  v41 = 0;
  v11 = *(this + 2);
  if (*&v42 != 0.0 || *(&v42 + 1))
  {
    v12 = *(v11 + 11);
    if (v12 == *(v11 + 8))
    {
      v12 = *(v11 + 9);
    }

    if (*&v42 == *(v12 - 24) && *(v12 - 16) == *(&v42 + 1))
    {
      v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v31 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v3);
      }

      v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v34 = *v33;
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      else
      {
        v34 = *v33;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Time_Stamp_Historian.cpp";
        v57 = 1024;
        v58 = 275;
        v59 = 2080;
        v60 = "not (not(new_time_stamp == m_time_stamp_buffer.back()))";
        _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s time stamp is a repeat", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("time stamp is a repeat", &v47);
      std::logic_error::logic_error(&v48, &v47);
      v48.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v49, &v48);
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = -1;
      v49.__vftable = &unk_1F5991430;
      v50 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v49);
      *&v62[2] = "BOOL AMCP::Time_Stamp_Historian::update(const Zero_Time_Stamp &)";
      v63 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/Time_Stamp_Historian.cpp";
      v64 = 275;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
    }

    if ((*(*v11 + 32))(*(this + 2), v9))
    {
      *(v11 + 4) = v41;
    }

    else if (v41 != *(v11 + 4))
    {
      goto LABEL_58;
    }

    os_unfair_lock_lock(v11 + 15);
    v13 = *(v11 + 11);
    if (v13 == *(v11 + 8))
    {
      v13 = *(v11 + 9);
    }

    v14 = *&v40 < *(v13 - 24) || *(&v40 + 1) < *(v13 - 16);
    os_unfair_lock_unlock(v11 + 15);
    v15 = *(v11 + 56);
    if (v15 != 1 || v14)
    {
      if (((v15 | v14) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if ((*(*v11 + 24))(v11))
      {
        (*(*v11 + 56))(v11);
      }

      if (*(v11 + 20) == 1 && (*(*v11 + 24))(v11) && *(&v40 + 1) > mach_absolute_time() + 24000)
      {
        kdebug_trace();
        os_unfair_lock_lock(v11 + 15);
        os_unfair_lock_unlock(v11 + 15);
      }

      else
      {
        if ((*(*v11 + 32))(v11))
        {
          goto LABEL_59;
        }

        os_unfair_lock_lock(v11 + 15);
        v17 = *(v11 + 11);
        if (v17 == *(v11 + 8))
        {
          v17 = *(v11 + 9);
        }

        LODWORD(v16) = *(v11 + 4);
        v18 = *(v17 - 24) + v16;
        os_unfair_lock_unlock(v11 + 15);
        if (*&v40 == v18)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_58:
    kdebug_trace();
    AMCP::Time_Stamp_Historian::clear_time_stamp_buffer(v11);
    AMCP::Time_Stamp_Historian::clear_time_stamp_deltas(v11);
LABEL_59:
    kdebug_trace();
    kdebug_trace();
    (*(*v11 + 48))(v11, &v40);
    v11 = *(this + 2);
  }

  v19 = (*(*v11 + 16))(v11, v9);
  if (v19 && *(this + 152) == 1)
  {
    v20 = *(this + 2);
    if (!*(v20 + 144))
    {
      v39 = std::logic_error::logic_error(buf, "circular_buffer");
      *buf = MEMORY[0x1E69E55B8] + 16;
      boost::throw_exception<std::out_of_range>(v39);
    }

    v22 = *(v20 + 120);
    v21 = *(v20 + 128);
    if (v22 - v21 <= 0)
    {
      v23 = 0x5555555555555555 * ((v22 - *(v20 + 112)) >> 3);
    }

    else
    {
      v23 = 0;
    }

    v24 = v21 + 24 * v23;
    v25 = *v24;
    v26 = *(v24 + 8);
    if (v25 == 0.0 && v26 == 0)
    {
      v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v35 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v19);
      }

      v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        v38 = *v37;
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      else
      {
        v38 = *v37;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "IO_Clock.cpp";
        v57 = 1024;
        v58 = 223;
        v59 = 2080;
        v60 = "not (newest_delta.is_non_zero())";
        v61 = 2048;
        *v62 = *(&v40 + 1);
        *&v62[8] = 2048;
        v63 = v40;
        _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s obtained a zero timestamp delta, after processing new zts host %llu sample %f", buf, 0x30u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("obtained a zero timestamp delta, after processing new zts host %llu sample %f", &v47, *(&v40 + 1), v40);
      std::logic_error::logic_error(&v48, &v47);
      v48.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v49, &v48);
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = -1;
      v49.__vftable = &unk_1F5991430;
      v50 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v49);
      *&v62[2] = "BOOL AMCP::IO_Clock::process_new_time_stamp_internal(const Zero_Time_Stamp &)";
      v63 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/IO_Clock.cpp";
      v64 = 223;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
    }

    if (*(v20 + 24) == 1)
    {
      v28 = *(v20 + 40);
    }

    else
    {
      v28 = (*(**(this + 3) + 24))(*(this + 3), v26 / v25);
    }

    *(this + 8) = v28;
    *(this + 9) = 1.0 / v28;
  }

  if (((*(**(this + 2) + 16))(*(this + 2)) & 1) == 0)
  {
    if (*(this + 152) == 1)
    {
      *(this + 152) = 0;
    }

    goto LABEL_78;
  }

  v5 = 1;
LABEL_79:
  os_unfair_lock_unlock(this + 20);
  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DE2F3AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, char a38)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::throw_exception<std::out_of_range>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_1F5992140;
  std::logic_error::logic_error((exception + 8), a1);
  *(exception + 4) = 0;
  *(exception + 5) = 0;
  *(exception + 6) = 0;
  *(exception + 14) = -1;
  *exception = &unk_1F598B7E8;
  *(exception + 1) = &unk_1F598B818;
  *(exception + 3) = &unk_1F598B840;
}

uint64_t boost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1E12C0F30](a1 + 8);
  return a1;
}

void non-virtual thunk toboost::wrapexcept<std::out_of_range>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F59921B8;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x1E12C0F30](v1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x1E12C0F30);
}

void non-virtual thunk toboost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x1E12C0F30](a1);

  JUMPOUT(0x1E12C1730);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1E12C0F30);
}

void boost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1E12C0F30](a1 + 8);

  JUMPOUT(0x1E12C1730);
}

void boost::wrapexcept<std::out_of_range>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::out_of_range>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::out_of_range>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5992140;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55B8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F59921B8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F598B7E8;
  *(a1 + 8) = &unk_1F598B818;
  *(a1 + 24) = &unk_1F598B840;
  return a1;
}

void sub_1DE2F4270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::DAL::Mixing_Ring_Buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5965338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<char const* const&,std::string const&,0>(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  *&v5[1].__r_.__value_.__l.__data_ = 0u;
  v6 = v5 + 1;
  v6[1].__r_.__value_.__l.__size_ = 0;
  *&v6->__r_.__value_.__r.__words[2] = 0u;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    v6->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  *(a1 + 56) = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
  return a1;
}

void sub_1DE2F43E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AMCP::DAL::DAL_Settings::DAL_Settings(unint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  default_resource = std::pmr::get_default_resource(a1);
  *(a1 + 16) = default_resource;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = std::pmr::get_default_resource(default_resource);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1065353216;
  v7 = a2[1];
  if (v7)
  {
    v8 = *a2;
    v31 = v8 + (v7 << 6);
    do
    {
      v9 = std::__string_hash<char>::operator()[abi:ne200100](v8);
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = v12.u32[0];
        if (v12.u32[0] > 1uLL)
        {
          v2 = v9;
          if (v9 >= v11)
          {
            v2 = v9 % v11;
          }
        }

        else
        {
          v2 = (v11 - 1) & v9;
        }

        v14 = *(*a1 + 8 * v2);
        if (v14)
        {
          v15 = *v14;
          if (*v14)
          {
            do
            {
              v16 = v15[1];
              if (v16 == v10)
              {
                if (std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v15 + 2, v8))
                {
                  goto LABEL_46;
                }
              }

              else
              {
                if (v13 > 1)
                {
                  if (v16 >= v11)
                  {
                    v16 %= v11;
                  }
                }

                else
                {
                  v16 &= v11 - 1;
                }

                if (v16 != v2)
                {
                  break;
                }
              }

              v15 = *v15;
            }

            while (v15);
          }
        }
      }

      v17 = (*(**(a1 + 32) + 16))(*(a1 + 32), 80, 8);
      v18 = v17;
      v32 = v17;
      *v17 = 0;
      *(v17 + 8) = v10;
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v17 + 16), *v8, *(v8 + 8));
      }

      else
      {
        v19 = *v8;
        *(v17 + 32) = *(v8 + 16);
        *(v17 + 16) = v19;
      }

      *(v18 + 40) = 0u;
      *(v18 + 72) = 0;
      *(v18 + 56) = 0u;
      v20 = *(v8 + 56);
      if (v20)
      {
        v20(1, v8 + 24);
      }

      v21 = (*(a1 + 40) + 1);
      v22 = *(a1 + 48);
      if (!v11 || (v22 * v11) < v21)
      {
        v23 = (v11 & (v11 - 1)) != 0;
        if (v11 < 3)
        {
          v23 = 1;
        }

        v24 = v23 | (2 * v11);
        v25 = vcvtps_u32_f32(v21 / v22);
        if (v24 <= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__rehash<true>(a1, v26);
        v11 = *(a1 + 8);
        if ((v11 & (v11 - 1)) != 0)
        {
          if (v10 >= v11)
          {
            v2 = v10 % v11;
          }

          else
          {
            v2 = v10;
          }
        }

        else
        {
          v2 = (v11 - 1) & v10;
        }
      }

      v27 = *a1;
      v28 = *(*a1 + 8 * v2);
      if (v28)
      {
        *v32 = *v28;
      }

      else
      {
        *v32 = *v6;
        *v6 = v32;
        *(v27 + 8 * v2) = v6;
        if (!*v32)
        {
          goto LABEL_45;
        }

        v29 = *(*v32 + 8);
        if ((v11 & (v11 - 1)) != 0)
        {
          if (v29 >= v11)
          {
            v29 %= v11;
          }
        }

        else
        {
          v29 &= v11 - 1;
        }

        v28 = (*a1 + 8 * v29);
      }

      *v28 = v32;
LABEL_45:
      ++*(a1 + 40);
LABEL_46:
      v8 += 64;
    }

    while (v8 != v31);
  }

  return a1;
}

void sub_1DE2F46F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::operator()[abi:ne200100](va, v4);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

void sub_1DE2F47D0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,AMCP::Thing>::~pair(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v2(0, a1 + 24, 0, 0);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(uint64_t *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__deallocate_node(a1, a1[3]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](a1[2], v2, a1[1]);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__deallocate_node(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      v5 = *(v2 + 72);
      if (v5)
      {
        v5(0, v2 + 40, 0, 0);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }

      result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::deallocate[abi:ne200100](*(v3 + 32), v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

void std::__shared_ptr_emplace<AMCP::DAL::File>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5987058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

unint64_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__rehash<true>(unint64_t result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return result;
    }

    result = vcvtps_u32_f32(*(v2 + 40) / *(v2 + 48));
    if (*&v4 < 3uLL || (v10 = vcnt_s8(v4), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v11 = 1 << -__clz(result - 1);
      if (result >= 2)
      {
        result = v11;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return result;
    }

    if (!v3)
    {
      v15 = *v2;
      *v2 = 0;
      if (v15)
      {
        result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v15, *(v2 + 8));
      }

      *(v2 + 8) = 0;
      return result;
    }
  }

  result = std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>::allocate[abi:ne200100](v2 + 16, v3);
  v5 = *v2;
  *v2 = result;
  if (v5)
  {
    result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v5, *(v2 + 8));
  }

  v6 = 0;
  *(v2 + 8) = v3;
  do
  {
    *(*v2 + 8 * v6++) = 0;
  }

  while (v3 != v6);
  v7 = *(v2 + 24);
  if (v7)
  {
    v8 = v7[1];
    v9 = vcnt_s8(v3);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
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

    *(*v2 + 8 * v8) = v2 + 24;
    v12 = *v7;
    if (*v7)
    {
      do
      {
        v13 = v12[1];
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= v3)
          {
            v13 %= v3;
          }
        }

        else
        {
          v13 &= v3 - 1;
        }

        if (v13 != v8)
        {
          v14 = *v2;
          if (!*(*v2 + 8 * v13))
          {
            *(v14 + 8 * v13) = v7;
            goto LABEL_30;
          }

          *v7 = *v12;
          *v12 = **(v14 + 8 * v13);
          **(v14 + 8 * v13) = v12;
          v12 = v7;
        }

        v13 = v8;
LABEL_30:
        v7 = v12;
        v12 = *v12;
        v8 = v13;
      }

      while (v12);
    }
  }

  return result;
}