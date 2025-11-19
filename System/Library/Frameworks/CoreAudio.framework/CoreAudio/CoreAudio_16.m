void *std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(a1, v3, *(v5 + 7));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void *std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 28);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

void DSP_Host_OffloadDictionary::~DSP_Host_OffloadDictionary(DSP_Host_OffloadDictionary *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void HALS_Device_HostedDSP_ClientInfo::get_virtual_channel_layout_for_client(HALS_Device_HostedDSP_ClientInfo *this, uint64_t a2, HALS_Client *a3, uint64_t a4)
{
  if (a3 || !a4)
  {
    *this = 0;
    *(this + 24) = 0;
  }

  else
  {
    std::mutex::lock((a2 + 56));
    v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a2 + 16), *(a4 + 16));
    if (v7)
    {
      std::__optional_copy_base<CA::ChannelLayout,false>::__optional_copy_base[abi:ne200100](this, (v7 + 13));
    }

    else
    {
      *this = 0;
      *(this + 24) = 0;
    }

    std::mutex::unlock((a2 + 56));
  }
}

uint64_t std::__optional_copy_base<CA::ChannelLayout,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1DE32BD64(_Unwind_Exception *exception_object)
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

uint64_t HALS_Device_HostedDSP_ClientInfo::get_dsp_latency_for_client(uint64_t a1, int a2, uint64_t a3)
{
  std::mutex::lock((a1 + 56));
  if (a3)
  {
    LODWORD(a3) = *(a3 + 16);
  }

  else if (*(a1 + 12) != 1)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a1 + 16), a3);
  if (!v6)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    v7 = v6[6];
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v10 = 0;
    LOBYTE(a3) = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v7 = v6[12];
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_9:
  StreamLatencyFrames = HALS_Stream::GetStreamLatencyFrames(v7, 0);
  LOBYTE(a3) = StreamLatencyFrames;
  v9 = StreamLatencyFrames & 0xFFFFFF00;
  v10 = 0x100000000;
LABEL_12:
  std::mutex::unlock((a1 + 56));
  return v10 | v9 | a3;
}

uint64_t HALS_Stream::GetStreamLatencyFrames(unsigned int *a1, uint64_t a2)
{
  v2 = a1[4];
  v4 = 0x676C6F626C746E63;
  v5 = 0;
  v6 = 0;
  (*(*a1 + 120))(a1, v2, &v4, 4, &v6, &v6 + 4, 0, 0, a2);
  return HIDWORD(v6);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v1[4]);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t SPIPluginPropertySetImpl::set_property_data(AudioObjectPropertyAddress *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const UInt8 *a4, unsigned int a5, const UInt8 *a6)
{
  SPIPluginPropertySetImpl::find(&v18, this, *&a2->mSelector);
  v12 = v18;
  if (v18 && (*(*&this->mSelector + 16))(this, a2) && *(v12 + 113) == 1 && (*(v12 + 112) & 1) != 0)
  {
    AHAL_DSP::CF::create_data(&v17, a4, a3);
    if (a5 && a6)
    {
      AHAL_DSP::CF::create_data(&cf, a6, a5);
      v13 = (*(**&this->mElement + 32))(*&this->mElement, a2, &v17, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v13 = (*(**&this->mElement + 32))(*&this->mElement, a2, &v17, 0);
    }

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 6;
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    v14 = 4;
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return v14;
}

void sub_1DE32C100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  applesauce::CF::DataRef::~DataRef(&a9);
  applesauce::CF::DataRef::~DataRef(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t *SPIPluginPropertySetImpl::find(uint64_t *this, const AudioObjectPropertyAddress *a2, unint64_t a3)
{
  v3 = *&a2[2].mSelector;
  v4 = *&a2[2].mElement;
  if (v3 != v4)
  {
    v5 = a3;
    v15 = this;
    v7 = HIDWORD(a3);
    while (1)
    {
      v8 = *v3;
      v9 = v3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v8 + 68) != 1 || (*(v8 + 44) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v10 = *(v8 + 64);
      v12 = v10 == 707406378 || v10 == v7;
      v13 = *(v8 + 40) == v5;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v13 && v12)
      {
        break;
      }

      v3 += 2;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    this = v15;
    v4 = *&a2[2].mElement;
  }

  if (v3 == v4)
  {
    *this = 0;
    this[1] = 0;
  }

  else
  {
    v14 = v3[1];
    *this = *v3;
    this[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void sub_1DE32C24C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const void *AHAL_DSP::CF::create_data(AHAL_DSP::CF *this, const UInt8 *a2, CFIndex a3)
{
  result = CFDataCreate(0, a2, a3);
  *this = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE32C2EC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t SPIPluginPropertySetImpl::get_property_data(const AudioObjectPropertyAddress *this, const AudioObjectPropertyAddress *a2, int a3, unsigned int *a4, void *a5, unsigned int a6, const UInt8 *a7)
{
  if (!(*(*&this->mSelector + 16))(this))
  {
    return 4;
  }

  SPIPluginPropertySetImpl::find(&v36, this, *&a2->mSelector);
  v14 = v36;
  if (v36 && (*(v36 + 140) != 1 || (v15 = *(v36 + 136) - 2, v15 > 5) ? (v16 = 0) : (v16 = *&asc_1DE763520[4 * v15]), v16 == a3))
  {
    LOBYTE(v34) = 0;
    v35 = 0;
    if (a6)
    {
      v18 = a7 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    if (v18)
    {
      v21 = *&this->mElement;
      LOBYTE(v31) = 0;
      v32 = 0;
    }

    else
    {
      AHAL_DSP::CF::create_data(&cf, a7, a6);
      v20 = cf;
      v35 = 1;
      v34 = cf;
      v21 = *&this->mElement;
      LOBYTE(v31) = 0;
      v32 = 0;
      if (cf)
      {
        CFRetain(cf);
      }

      v31 = v20;
      v32 = 1;
    }

    (*(*v21 + 40))(&theData, v21, a2, &v31);
    if (v32 == 1 && v31)
    {
      CFRelease(v31);
    }

    if ((*(v14 + 140) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*(v14 + 136) == 7)
    {
      AHAL_DSP::ProcessPropertySetConfiguration::util_create_dictionary_from_data_with_serialized_plist(&cf, theData);
      v22 = cf;
      CFRetain(cf);
      *a5 = v22;
      *a4 = 8;
      if (v30 == 1 && cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      if (!theData)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      BytePtr = CFDataGetBytePtr(theData);
      if (!theData)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
        __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      Length = CFDataGetLength(theData);
      memcpy(a5, BytePtr, Length);
      if (!theData)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v28, "Could not construct");
        __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *a4 = CFDataGetLength(theData);
    }

    if (theData)
    {
      CFRelease(theData);
    }

    if (v19 && v34)
    {
      CFRelease(v34);
    }

    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  return v17;
}

void sub_1DE32C628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  applesauce::CF::DataRef::~DataRef(&a14);
  std::optional<applesauce::CF::DataRef>::~optional(&a15);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<applesauce::CF::DataRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t SPIPluginPropertySetImpl::get_property_data_size(AudioObjectPropertyAddress *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *a4)
{
  SPIPluginPropertySetImpl::find(&v7, this, *&a2->mSelector);
  if (v7 && *(v7 + 140) == 1 && (v4 = *(v7 + 136) - 2, v4 <= 5))
  {
    v5 = *&asc_1DE763520[4 * v4];
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

uint64_t SPIPluginPropertySetImpl::is_settable(AudioObjectPropertyAddress *this, const AudioObjectPropertyAddress *a2)
{
  SPIPluginPropertySetImpl::find(&v4, this, *&a2->mSelector);
  if (v4 && *(v4 + 113) == 1)
  {
    v2 = *(v4 + 112);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 & 1;
}

void SPIPluginPropertySetImpl::~SPIPluginPropertySetImpl(SPIPluginPropertySetImpl *this)
{
  SPIPluginPropertySetImpl::~SPIPluginPropertySetImpl(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5966A78;
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t *AHAL_DSP::PluginIOHelper::ProcStreamList::resize(uint64_t *this, unint64_t a2)
{
  v3 = *this;
  v2 = this[1];
  v4 = v2 - *this;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      goto LABEL_16;
    }

    v11 = (v3 + 24 * a2);
  }

  else
  {
    v7 = this[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v2) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 0x5555555555555556 * ((v7 - v3) >> 3);
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = &v2[3 * v6];
    v12 = 24 * a2 - 8 * (v4 >> 3);
    do
    {
      *v2 = 0;
      v2[1] = 0;
      v2[2] = 0;
      v2 += 3;
      v12 -= 24;
    }

    while (v12);
  }

  this[1] = v11;
LABEL_16:
  v14 = this[3];
  v13 = this[4];
  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v14) >> 4);
  v16 = a2 - v15;
  if (a2 <= v15)
  {
    if (a2 >= v15)
    {
      goto LABEL_30;
    }

    v21 = (v14 + 80 * a2);
  }

  else
  {
    v17 = this[5];
    if (0xCCCCCCCCCCCCCCCDLL * ((v17 - v13) >> 4) < v16)
    {
      if (a2 <= 0x333333333333333)
      {
        v18 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v14) >> 4);
        v19 = 0x999999999999999ALL * ((v17 - v14) >> 4);
        if (v19 <= a2)
        {
          v19 = a2;
        }

        if (v18 >= 0x199999999999999)
        {
          v20 = 0x333333333333333;
        }

        else
        {
          v20 = v19;
        }

        std::allocator<AMCP::Proc_Stream>::allocate_at_least[abi:ne200100](v20);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v21 = &v13[5 * v16];
    v22 = 80 * a2 - 16 * ((v13 - v14) >> 4);
    do
    {
      v13[3] = 0uLL;
      v13[4] = 0uLL;
      v13[1] = 0uLL;
      v13[2] = 0uLL;
      *v13 = 0uLL;
      v13 += 5;
      v22 -= 80;
    }

    while (v22);
  }

  this[4] = v21;
LABEL_30:
  if (a2)
  {
    v23 = *this;
    v24 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v25 = vdupq_n_s64(a2 - 1);
    v26 = xmmword_1DE757E30;
    v27 = (this[3] + 152);
    v28 = vdupq_n_s64(2uLL);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v25, v26));
      if (v29.i8[0])
      {
        *(v27 - 10) = v23;
      }

      if (v29.i8[4])
      {
        *v27 = v23 + 24;
      }

      v26 = vaddq_s64(v26, v28);
      v23 += 48;
      v27 += 20;
      v24 -= 2;
    }

    while (v24);
  }

  return this;
}

void std::allocator<AMCP::Proc_Stream>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      v4 = v2[4];
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

int64_t *AHAL_DSP::PluginIOHelper::load_from_REALTIME(int64_t *result, __int128 *a2)
{
  result[26] = 0;
  result[27] = 0;
  v2 = result + 26;
  v3 = *(a2 + 17);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = result + 31;
    do
    {
      v8 = *(*(a2 + 9) + 8 * v5);
      if (v8 && (v9 = *v8, v9) && (v10 = (result[37] - result[36]) >> 3, (0xAAAAAAAAAAAAAAABLL * v10) > v4))
      {
        v11 = 0;
        v12 = &v8[4 * v9 + 2];
        v13 = result[39];
        v14 = v13 + 0x5555555555555570 * v10;
        v15 = v13 + 80 * v4;
        v16 = v8 + 2;
        do
        {
          v17 = *v7;
          if (!*v7)
          {
            goto LABEL_15;
          }

          v18 = result + 31;
          do
          {
            v19 = v17[4];
            v20 = v19 >= v6;
            v21 = v19 < v6;
            if (v20)
            {
              v18 = v17;
            }

            v17 = v17[v21];
          }

          while (v17);
          if (v18 == v7 || v6 < v18[4])
          {
LABEL_15:
            v22 = *a2;
            v23 = a2[1];
            v24 = a2[3];
            *(v15 + 32) = a2[2];
            *(v15 + 48) = v24;
            *v15 = v22;
            *(v15 + 16) = v23;
            *(v15 + 64) = *(a2 + 16);
            v25 = *(v15 + 72);
            *v25 = 1;
            *(v25 + 8) = *v16;
            ++v11;
            v15 += 80;
          }

          ++v6;
          ++v16;
        }

        while (v16 < v12 && v15 < v14);
        v4 = *v2;
        v3 = *(a2 + 17);
      }

      else
      {
        v11 = 0;
      }

      v4 += v11;
      *v2 = v4;
      ++v5;
    }

    while (v5 < v3);
  }

  result[28] = 0;
  v26 = result + 28;
  result[27] = result[39];
  result[29] = 0;
  v27 = *(a2 + 20);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = result + 34;
    do
    {
      v32 = *(*(a2 + 11) + 8 * v29);
      if (v32 && (v33 = *v32, v33) && (v34 = (result[43] - result[42]) >> 3, (0xAAAAAAAAAAAAAAABLL * v34) > v28))
      {
        v35 = 0;
        v36 = &v32[4 * v33 + 2];
        v37 = result[45];
        v38 = v37 + 0x5555555555555570 * v34;
        v39 = v37 + 80 * v28;
        v40 = v32 + 2;
        do
        {
          v41 = *v31;
          if (!*v31)
          {
            goto LABEL_35;
          }

          v42 = result + 34;
          do
          {
            v43 = v41[4];
            v20 = v43 >= v30;
            v44 = v43 < v30;
            if (v20)
            {
              v42 = v41;
            }

            v41 = v41[v44];
          }

          while (v41);
          if (v42 == v31 || v30 < v42[4])
          {
LABEL_35:
            v45 = *a2;
            v46 = a2[1];
            v47 = a2[3];
            *(v39 + 32) = a2[2];
            *(v39 + 48) = v47;
            *v39 = v45;
            *(v39 + 16) = v46;
            *(v39 + 64) = *(a2 + 16);
            v48 = *(v39 + 72);
            *v48 = 1;
            *(v48 + 8) = *v40;
            ++v35;
            v39 += 80;
          }

          ++v30;
          ++v40;
        }

        while (v40 < v36 && v39 < v38);
        v28 = *v26;
        v27 = *(a2 + 20);
      }

      else
      {
        v35 = 0;
      }

      v28 += v35;
      *v26 = v28;
      ++v29;
    }

    while (v29 < v27);
  }

  result[29] = result[45];
  return result;
}

void AHAL_DSP::SPIUtilRequest::~SPIUtilRequest(AHAL_DSP::SPIUtilRequest *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AHAL_DSP::SPIUtilRequest::populate_request(AHAL_DSP::SPIUtilRequest *this)
{
  v1 = *this;
  v2 = *(*this + 56);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 48);
      if (v5)
      {
        (*(*v5 + 72))(v10, v5);
        if (v10[0] != v10[1])
        {
          v9[0] = v10;
          std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v9);
          goto LABEL_8;
        }

        (*(*v5 + 80))(v9, v5);
        v6 = v9[0];
        v7 = v9[1];
        *&v11 = v9;
        std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
        v9[0] = v10;
        std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v9);
        if (v6 != v7)
        {
LABEL_8:
          operator new();
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return 4;
}

void sub_1DE32D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void AHAL_DSP::SPIUtilRequest::util_populate_stream(AHAL_DSP::SPIUtilRequest *this, const AHAL_DSP::IAudioStream *a2)
{
  v4 = a2;
  v59 = *MEMORY[0x1E69E9840];
  (*(*a2 + 24))(&buf, a2);
  v6 = buf.__r_.__value_.__r.__words[0];
  if (buf.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
  }

  if (v6)
  {
    (*(*v4 + 24))(&v54, v4);
    AHAL_DSP::SPIUtilRequest::util_find_device(&v53, *(*(this + 1) + 672), *(*(this + 1) + 680), v54);
    if (!v53.__r_.__value_.__r.__words[0])
    {
      _ZNSt3__115allocate_sharedB8ne200100IN14DSP_Host_Types17DeviceDescriptionENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    if (v53.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53.__r_.__value_.__l.__size_);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    (*(*v4 + 24))(&buf, v4);
    AHAL_DSP::SPIUtilRequest::util_find_device(&v56, *(*(this + 1) + 672), *(*(this + 1) + 680), buf.__r_.__value_.__l.__data_);
    if (buf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
    }

    if (v56)
    {
      v7 = *(this + 1);
      v8 = *(v7 + 672);
      v50 = *(v7 + 680);
      if (v8 == v50)
      {
        goto LABEL_96;
      }

      while (1)
      {
        v10 = *v8;
        v9 = v8[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          v47 = 1;
          if (v9)
          {
            goto LABEL_93;
          }

          goto LABEL_94;
        }

        v52 = v9;
        DSP_Dictionariable::SingleKvp<std::string>::value(&buf, v10 + 24);
        (*(*v4 + 24))(&v54, v4);
        v51 = v8;
        v11 = v4;
        (*(*v54 + 40))(&v53);
        v12 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
        size = v53.__r_.__value_.__l.__size_;
        v14 = v53.__r_.__value_.__r.__words[0];
        v15 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        v16 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v17 = buf.__r_.__value_.__r.__words[0];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          v15 = buf.__r_.__value_.__l.__size_;
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v53.__r_.__value_.__r.__words[0];
        }

        else
        {
          size = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
          v19 = &v53;
        }

        if (size >= v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = size;
        }

        v21 = size == v15;
        if (memcmp(p_buf, v19, v20))
        {
          v21 = 0;
        }

        if (v12 < 0)
        {
          operator delete(v14);
        }

        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        if (v16 < 0)
        {
          break;
        }

        if (v21)
        {
          goto LABEL_34;
        }

LABEL_88:
        v47 = 1;
LABEL_91:
        v4 = v11;
LABEL_92:
        v8 = v51;
        v9 = v52;
        if (v52)
        {
LABEL_93:
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

LABEL_94:
        if (!v47)
        {
          if (v3)
          {
            if (v2)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v2);
            }

            goto LABEL_100;
          }

LABEL_96:
          _ZNSt3__115allocate_sharedB8ne200100IN14DSP_Host_Types19StreamConfigurationENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v8 += 2;
        if (v8 == v50)
        {
          goto LABEL_96;
        }
      }

      operator delete(v17);
      if (!v21)
      {
        goto LABEL_88;
      }

LABEL_34:
      v22 = *(v10 + 664);
      v49 = v10;
      v23 = *(v10 + 672);
      v4 = v11;
      while (v22 != v23)
      {
        v3 = *v22;
        v2 = v22[1];
        if (v2)
        {
          atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        DSP_Dictionariable::SingleKvp<std::string>::value(&buf, v3 + 264);
        v24 = (*(*(v4 + *(*v4 - 40)) + 16))(v4 + *(*v4 - 40));
        if ((v24 & 0x100000000) == 0)
        {
          LODWORD(v24) = 0;
        }

        std::to_string(&v53, v24);
        v25 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
        v26 = v53.__r_.__value_.__l.__size_;
        v27 = v53.__r_.__value_.__r.__words[0];
        v28 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        v29 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v30 = buf.__r_.__value_.__r.__words[0];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &buf;
        }

        else
        {
          v28 = buf.__r_.__value_.__l.__size_;
          v31 = buf.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v53.__r_.__value_.__r.__words[0];
        }

        else
        {
          v26 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
          v32 = &v53;
        }

        if (v26 >= v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = v26;
        }

        v34 = v26 == v28;
        if (memcmp(v31, v32, v33))
        {
          v34 = 0;
        }

        if (v25 < 0)
        {
          operator delete(v27);
          if ((v29 & 0x80000000) == 0)
          {
LABEL_52:
            if (v34)
            {
              goto LABEL_90;
            }

            goto LABEL_56;
          }
        }

        else if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        operator delete(v30);
        if (v34)
        {
LABEL_90:
          v47 = 0;
          goto LABEL_91;
        }

LABEL_56:
        v4 = v11;
        if (v2)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v2);
        }

        v22 += 2;
      }

      v35 = *(v49 + 688);
      v36 = *(v49 + 696);
      while (1)
      {
        if (v35 == v36)
        {
          v47 = 1;
          goto LABEL_92;
        }

        v3 = *v35;
        v2 = v35[1];
        if (v2)
        {
          atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        DSP_Dictionariable::SingleKvp<std::string>::value(&buf, v3 + 264);
        v37 = (*(*(v4 + *(*v4 - 40)) + 16))(v4 + *(*v4 - 40));
        if ((v37 & 0x100000000) == 0)
        {
          LODWORD(v37) = 0;
        }

        std::to_string(&v53, v37);
        v38 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
        v39 = v53.__r_.__value_.__l.__size_;
        v40 = v53.__r_.__value_.__r.__words[0];
        v41 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        v42 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v43 = buf.__r_.__value_.__r.__words[0];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &buf;
        }

        else
        {
          v41 = buf.__r_.__value_.__l.__size_;
          v44 = buf.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v53.__r_.__value_.__r.__words[0];
        }

        else
        {
          v39 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
          v45 = &v53;
        }

        if (v39 >= v41)
        {
          v46 = v41;
        }

        else
        {
          v46 = v39;
        }

        v47 = v39 != v41;
        if (memcmp(v44, v45, v46))
        {
          v47 = 1;
        }

        if (v38 < 0)
        {
          operator delete(v40);
          if ((v42 & 0x80000000) == 0)
          {
LABEL_78:
            if (!v47)
            {
              goto LABEL_91;
            }

            goto LABEL_82;
          }
        }

        else if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_78;
        }

        operator delete(v43);
        if (!v47)
        {
          goto LABEL_91;
        }

LABEL_82:
        v4 = v11;
        if (v2)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v2);
        }

        v35 += 2;
      }
    }

LABEL_100:
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void sub_1DE32E648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(exception_object);
}

void AHAL_DSP::SPIUtilRequest::util_find_device(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 == a3)
  {
LABEL_26:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v6 = a2;
  while (1)
  {
    v7 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v7)
    {
      goto LABEL_23;
    }

    DSP_Dictionariable::SingleKvp<std::string>::value(&v22, v7 + 24);
    (*(*a4 + 40))(v20, a4);
    v9 = v21;
    v11 = v20[0];
    v10 = v20[1];
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    v13 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    v14 = v22.__r_.__value_.__r.__words[0];
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v22;
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
      v15 = v22.__r_.__value_.__r.__words[0];
    }

    if (v21 < 0)
    {
      v16 = v20[0];
    }

    else
    {
      v10 = v21;
      v16 = v20;
    }

    if (v10 >= size)
    {
      v17 = size;
    }

    else
    {
      v17 = v10;
    }

    v18 = v10 == size;
    if (memcmp(v15, v16, v17))
    {
      v18 = 0;
    }

    if (v9 < 0)
    {
      break;
    }

    if (v13 < 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    if (v18)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v6 += 2;
    if (v6 == a3)
    {
      goto LABEL_26;
    }
  }

  operator delete(v11);
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  operator delete(v14);
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_27:
  *a1 = v7;
  a1[1] = v8;
}

void sub_1DE32E944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  *a10 = v19;
  a10[1] = v20;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSP_Host_Types::FormatDescription::operator=(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  v8 = *(a2 + 24);
  v7 = *(a2 + 28);
  v9 = *(a2 + 32);
  *(result + 40) = *a2;
  *(result + 48) = 1;
  *(result + 72) = *(a2 + 28);
  *(result + 76) = 1;
  if ((v3 & 0x20) != 0)
  {
    v10 = 256;
  }

  else
  {
    v10 = 257;
  }

  *(result + 96) = v10;
  if (v4 == 1819304813 && v6 == 1 && v8 == v5 && v9 >> 3 <= v5)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    if ((v3 & 0x20) == 0)
    {
      v13 = v5 == v5 / v7 * v7;
      v5 /= v7;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    v2 = 0;
    if ((v3 & 2) == 0 && 8 * v5 == v9)
    {
      if (v3)
      {
        if (v5 == 4)
        {
          v11 = 1;
        }

        else
        {
          v11 = 4 * (v5 == 8);
        }

        if ((v3 & 0x1F84) != 0)
        {
          v2 = 0;
        }

        else
        {
          v2 = v11;
        }
      }

      else
      {
        if ((v3 & 4) == 0)
        {
LABEL_16:
          v2 = 0;
          goto LABEL_17;
        }

        v12 = (v3 >> 7) & 0x3F;
        if (v12 == 24 && v5 == 4)
        {
          v2 = 3;
        }

        else if (v12 || v5 != 4)
        {
          v13 = v5 == 2 && v12 == 0;
          if (v13)
          {
            v2 = 2;
          }

          else
          {
            v2 = 0;
          }
        }

        else
        {
          v2 = 5;
        }
      }
    }
  }

LABEL_17:
  *(result + 120) = v2;
  *(result + 124) = 1;
  return result;
}

uint64_t AHAL_DSP::SPIUtilRequest::util_semantic_list_from(void *a1, AHAL_DSP::ProcessPropertySetConfiguration **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  result = *a2;
  if (*a2)
  {
    if (AHAL_DSP::ProcessPropertySetConfiguration::get_vocal_isolation_type(result) == 0x100000002)
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(a1, 3u);
    }

    result = AHAL_DSP::ProcessPropertySetConfiguration::get_voice_activity_detection_enabled(*a2);
    if (result >= 0x100u && (result & 1) != 0)
    {
      return std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(a1, 6u);
    }
  }

  return result;
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v5, v5 + 1, *(v4 + 7));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void std::__shared_ptr_emplace<DSP_Host_OffloadDictionary>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<DSP_Host_OffloadDictionary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void DSP_Dictionariable::SingleKvp<std::string>::value(std::string *a1, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 24);
    v4 = *(a2 + 16);

    std::string::__init_copy_ctor_external(a1, v4, v3);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *(a2 + 16);
    a1->__r_.__value_.__r.__words[2] = *(a2 + 32);
  }
}

void sub_1DE32F05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  DSP_Dictionariable::SingleKvp<std::string>::~SingleKvp(v18);
  DSP_Host_Types::FormatDescription::~FormatDescription(&v15[5].__shared_weak_owners_);
  DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::~StringifiedKvp(v17);
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::StreamConfiguration>::~DSP_Host_DictionaryData(v16);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_1DE32F0D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE32F0B8);
}

uint64_t std::vector<DSP_Host_Types::FormatDescription>::__emplace_back_slow_path<DSP_Host_Types::FormatDescription const&>(uint64_t a1, const DSP_Host_Types::FormatDescription *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::allocator<DSP_Host_Types::FormatDescription>::allocate_at_least[abi:ne200100](v5);
  }

  v12 = 0;
  v13 = 152 * v2;
  DSP_Host_Types::FormatDescription::FormatDescription((152 * v2), a2);
  v14 = 152 * v2 + 152;
  v6 = *(a1 + 8);
  v7 = (152 * v2 + *a1 - v6);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<DSP_Host_Types::FormatDescription>::~__split_buffer(&v12);
  return v11;
}

void sub_1DE32F220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DSP_Host_Types::FormatDescription>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
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

  return this;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = begin;
    value = 0;
    v19.__end_ = begin;
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
      value = v19.__end_cap_.__value_;
    }

    else
    {
      v13 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v13;
      end = begin;
    }

    v10 = end + 1;
    v15 = *(a1 + 8) - *a1;
    v16 = begin - v15;
    memcpy(begin - v15, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v10;
    v18 = *(a1 + 16);
    *(a1 + 16) = value;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

void std::allocator<DSP_Host_Types::FormatDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const DSP_Host_Types::FormatDescription *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription*>(const DSP_Host_Types::FormatDescription *result, const DSP_Host_Types::FormatDescription *a2, DSP_Host_Types::FormatDescription *this)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = this - 152;
    v7 = result;
    v8 = this;
    do
    {
      DSP_Host_Types::FormatDescription::FormatDescription(v8, v7);
      v7 = (v7 + 152);
      v8 = (v8 + 152);
      v5 -= 152;
      v6 += 152;
    }

    while (v7 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 19;
      result = (*v11)(v4);
      v9 += 152;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<DSP_Host_Types::FormatDescription>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 152);
    *(a1 + 16) = i - 152;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::StringifiedKvp(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = DSP_Dictionariable::DictionariableKvp::DictionariableKvp(a1, a2);
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  *v3 = &unk_1F5985CD0;
  v3[6] = 0;
  v3[10] = 0;
  {
    DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[0] = 0;
    qword_1ECDAEA10 = "uninitialized";
    dword_1ECDAEA18 = 1;
    qword_1ECDAEA20 = "general";
    dword_1ECDAEA28 = 2;
    qword_1ECDAEA30 = "tap";
  }

  v6[0] = &unk_1F598D7E8;
  v7 = v6;
  std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::swap[abi:ne200100](v6, a1 + 3);
  std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::~__value_func[abi:ne200100](v6);
  v6[0] = &unk_1F598D878;
  v7 = v6;
  std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::swap[abi:ne200100](v6, a1 + 7);
  std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::~StringifiedKvp(DSP_Dictionariable::DictionariableKvp *a1)
{
  *a1 = &unk_1F5985CD0;
  std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

{
  *a1 = &unk_1F5985CD0;
  std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F5985CD0;
  std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::StreamConfiguration>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985C38;
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

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::StreamConfiguration>::add_to(uint64_t a1, __CFArray **a2)
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

void sub_1DE32F8CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::StreamConfiguration>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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

uint64_t std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::load_from(uint64_t a1, CFDictionaryRef *a2)
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

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::add_to(uint64_t a1, __CFDictionary **a2)
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

void sub_1DE32FE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DSP_Host_Types::StreamConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE33054C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, DSP_Dictionariable::DictionariableKvp *a9, DSP_Dictionariable::DictionariableKvp *a10, DSP_Dictionariable::DictionariableKvp *a11, DSP_Dictionariable::DictionariableKvp *a12, void **a13, void **a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  DSP_Host_Types::AudioChannelConfiguration::~AudioChannelConfiguration(&v21[18].__shared_weak_owners_);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v28);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v27);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v26);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v25);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v23);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v22);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v29);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a9);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a10);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a11);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a12);
  DSP_Dictionariable::SingleKvp<std::string>::~SingleKvp(a13);
  DSP_Dictionariable::SingleKvp<std::string>::~SingleKvp(a14);
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceDescription>::~DSP_Host_DictionaryData(a15);
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v31);
  _Unwind_Resume(a1);
}

void sub_1DE33062C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305B8);
}

void sub_1DE33064C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305C0);
}

void sub_1DE33066C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305C8);
}

void sub_1DE33068C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305D0);
}

void sub_1DE3306AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305D8);
}

void sub_1DE3306CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305E0);
}

void sub_1DE3306EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305E8);
}

void sub_1DE33070C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305F0);
}

void sub_1DE33072C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE3305F8);
}

void sub_1DE33074C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE330600);
}

void sub_1DE33076C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE330608);
}

void sub_1DE33078C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE330610);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceDescription>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985ED8;
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

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceDescription>::add_to(uint64_t a1, __CFArray **a2)
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

void sub_1DE330960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceDescription>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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

void std::__shared_ptr_emplace<DSP_Host_Types::DeviceDescription>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<DSP_Host_Types::ConfigurationChangeRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5966AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::__emplace_unique_key_args<std::shared_ptr<AHAL_DSP::IAudioStream>,std::shared_ptr<AHAL_DSP::IAudioStream> const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      v4 = v2[4];
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(*a1);
    std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void AHAL_DSP::SPIUtilRequest::util_primary_stream_from(void *a1, uint64_t a2)
{
  if (!*a2 || ((*(**a2 + 72))(v7), v4 = v7[0], v5 = v7[1], v8 = v7, std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v8), v4 == v5))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    (*(**a2 + 72))(v7);
    v6 = *(v7[0] + 8);
    *a1 = *v7[0];
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v7;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v8);
  }
}

void AHAL_DSP::BufferSizeChangeSynchronizer::simple_message_playload::~simple_message_playload(AHAL_DSP::BufferSizeChangeSynchronizer::simple_message_playload *this)
{
  *this = &unk_1F5966BA8;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 24);
  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5966BA8;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 24);

  caulk::concurrent::message::~message(this);
}

{
  *this = &unk_1F5966BA8;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 24);

  caulk::concurrent::message::~message(this);
}

uint64_t std::__function::__func<std::__bind<void (AHAL_DSP::BufferSizeChangeSynchronizer::*)(unsigned int),AHAL_DSP::BufferSizeChangeSynchronizer*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::BufferSizeChangeSynchronizer::*)(unsigned int),AHAL_DSP::BufferSizeChangeSynchronizer*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIMN8AHAL_DSP28BufferSizeChangeSynchronizerEFvjEJPS2_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (AHAL_DSP::BufferSizeChangeSynchronizer::*)(unsigned int),AHAL_DSP::BufferSizeChangeSynchronizer*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::BufferSizeChangeSynchronizer::*)(unsigned int),AHAL_DSP::BufferSizeChangeSynchronizer*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::operator()(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (AHAL_DSP::BufferSizeChangeSynchronizer::*)(unsigned int),AHAL_DSP::BufferSizeChangeSynchronizer*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::BufferSizeChangeSynchronizer::*)(unsigned int),AHAL_DSP::BufferSizeChangeSynchronizer*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5966BE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void AHAL_DSP::BufferSizeChangeSynchronizer::adapt_new_size(AHAL_DSP::BufferSizeChangeSynchronizer *this, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 0;
    v12 = 0;
    v13 = 47;
    do
    {
      v14 = &aLibraryCachesC_41[v11];
      if (v13 == 47)
      {
        v12 = &aLibraryCachesC_41[v11];
      }

      v13 = v14[1];
      if (!v14[1])
      {
        break;
      }
    }

    while (v11++ < 0xFFF);
    if (v12)
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-common/ahal_dsp_plugin_buffer_size_synchronizer.cpp";
    }

    v17 = 136315650;
    v18 = v16;
    v19 = 1024;
    v20 = 81;
    v21 = 1024;
    v22 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] Adapting a new buffer size %d.", &v17, 0x18u);
  }

  v8 = 1;
  atomic_compare_exchange_strong(this + 7, &v8, 2u);
  if (v8 == 1)
  {
    std::mutex::lock((this + 32));
    v9 = atomic_load(this + 6);
    if (a2 && v9 != a2 && (*(**(this + 2) + 16))(*(this + 2), a2))
    {
      atomic_store(a2, this + 6);
    }

    std::mutex::unlock((this + 32));
  }

  std::condition_variable::notify_one(this + 2);
  atomic_store(0, this + 7);
  v10 = *MEMORY[0x1E69E9840];
}

void AHAL_DSP::BufferSizeChangeSynchronizer::BufferSizeChangeSynchronizer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 850045863;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1018212795;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_1F5966BA8;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v4 = 0;
  operator new();
}

void sub_1DE331404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](va);
  AHAL_DSP::BufferSizeChangeSynchronizer::simple_message_playload::~simple_message_playload(v5);
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  v7 = *(v2 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void AHAL_DSP::BufferSizeChangeSynchronizer::set_current_size(AHAL_DSP::BufferSizeChangeSynchronizer *this, unsigned int a2)
{
  v7.__m_ = (this + 32);
  v4 = 1;
  v7.__owns_ = 1;
  std::mutex::lock((this + 32));
  atomic_compare_exchange_strong(this + 7, &v4, 3u);
  while (atomic_load(this + 7))
  {
    std::condition_variable::wait(this + 2, &v7);
  }

  atomic_store(a2, this + 6);
  atomic_store(0, this + 7);
  if (v7.__owns_)
  {
    std::mutex::unlock(v7.__m_);
  }
}

BOOL AHAL_DSP::BufferSizeChangeSynchronizer::maybe_enque_adapt_REALTIME(AHAL_DSP::BufferSizeChangeSynchronizer *this, int a2)
{
  if (atomic_load(this + 7))
  {
    return 1;
  }

  v5 = (this + 24);
  v6 = atomic_load(this + 6);
  if (v6 != a2)
  {
    v7 = 0;
    atomic_compare_exchange_strong(this + 7, &v7, 1u);
    if (!v7)
    {
      v8 = *this;
      *(this + 50) = a2;
      caulk::concurrent::messenger::enqueue(*v8, (this + 144));
    }
  }

  v9 = atomic_load(v5);
  return v9 != a2;
}

uint64_t std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x1E12C0B40]();

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void AHAL_DSP::ADMProcessFactory::create_plugin_at(void *a1, uint64_t *a2)
{
  if (!a1[3])
  {
    _ZNSt3__115allocate_sharedB8ne200100IN8AHAL_DSP15PluginTaskQueueENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  v5 = a1[2];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE331B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a11);
  MEMORY[0x1E12C15F0](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void sub_1DE331D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x1E12C1730](v18, 0x20C40A4A59CD2);
  if ((a15 & 1) != 0 && a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v16, 0);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__shared_ptr_emplace<AHAL_DSP::PluginTaskQueue>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 24), 0);

  return std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 24), 0);
}

void std::__shared_ptr_emplace<AHAL_DSP::PluginTaskQueue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5966DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ADMProcessFactory::create_default_plugin_configuration@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = *(result + 8);
  if (v2)
  {
    ADM_SPI::AudioDSPManager::getFactoryPropertySet(&v3, v2);
    std::allocate_shared[abi:ne200100]<AHAL_DSP::ADMPluginPropertySetImpl,std::allocator<AHAL_DSP::ADMPluginPropertySetImpl>,std::shared_ptr<ADM_SPI::AudioDSPManagerPropertySet>,0>();
  }

  return result;
}

void sub_1DE332054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v18);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void sub_1DE332644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, void **a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, char a18, uint64_t a19, const void *a20)
{
  std::optional<applesauce::CF::ArrayRef>::~optional(&a18);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a20);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  shared_weak_owners = a15[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_weak_owners);
  }

  v22 = *a12;
  if (*a12)
  {
    a15[1].__shared_weak_owners_ = v22;
    operator delete(v22);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::~__shared_weak_count(a15);
  operator delete(v23);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AHAL_DSP::ProcessPropertySetConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AHAL_DSP::ADMPluginPropertySetImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ADMProcessFactory::get_available_device_offloads(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    ADM_SPI::AudioDSPManager::getFactoryPropertySet(&v3, v1);
    std::allocate_shared[abi:ne200100]<AHAL_DSP::ADMPluginPropertySetImpl,std::allocator<AHAL_DSP::ADMPluginPropertySetImpl>,std::shared_ptr<ADM_SPI::AudioDSPManagerPropertySet>,0>();
  }

  return 0;
}

void sub_1DE332944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AHAL_DSP::ADMProcessFactory::init(std::__shared_weak_count *this)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!this->__shared_owners_)
  {
    v5 = this;
    shared_weak_owners_low = LOBYTE(this[1].__shared_weak_owners_);
    if (shared_weak_owners_low == 1)
    {
      if (objc_alloc_init(ADM_Loader))
      {
        operator new();
      }

      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *v15;
        AMCP::Log::Scope::get_os_log_t(*v15);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v17 = *v15;
        AMCP::Log::Scope::get_os_log_t(*v15);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v19 = 0;
        v20 = 47;
        do
        {
          v21 = &aLibraryCachesC_45[v18];
          if (v20 == 47)
          {
            v19 = &aLibraryCachesC_45[v18];
          }

          v20 = v21[1];
          if (!v21[1])
          {
            break;
          }

          v12 = v18++ >= 0xFFF;
        }

        while (!v12);
        if (v19)
        {
          v22 = v19 + 1;
        }

        else
        {
          v22 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi.mm";
        }

        buf[0] = 136315394;
        *&buf[1] = v22;
        v40 = 1024;
        v41 = 347;
        _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Unable to find/load ADM library.", buf, 0x12u);
      }

      this = v5->__shared_weak_owners_;
      *&v5->__shared_owners_ = 0u;
      if (this)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](this);
        if (v5->__shared_owners_)
        {
          goto LABEL_2;
        }
      }

      LOBYTE(shared_weak_owners_low) = v5[1].__shared_weak_owners_;
    }

    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (shared_weak_owners_low)
    {
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *v25;
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      else
      {
        v26 = *v25;
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      v27 = 0;
      v28 = 0;
      v29 = 47;
      do
      {
        v30 = &aLibraryCachesC_42[v27];
        if (v29 == 47)
        {
          v28 = &aLibraryCachesC_42[v27];
        }

        v29 = v30[1];
        if (!v30[1])
        {
          break;
        }

        v12 = v27++ >= 0xFFF;
      }

      while (!v12);
      if (v28)
      {
        v31 = v28 + 1;
      }

      else
      {
        v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/ahal_dsp_api.cpp";
      }

      buf[0] = 136315394;
      *&buf[1] = v31;
      v40 = 1024;
      v41 = 146;
      v32 = "%32s:%-5d [ahal_dsp] ADM is not available on this platform.";
    }

    else
    {
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *v25;
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      else
      {
        v26 = *v25;
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      v34 = 0;
      v35 = 0;
      v36 = 47;
      do
      {
        v37 = &aLibraryCachesC_42[v34];
        if (v36 == 47)
        {
          v35 = &aLibraryCachesC_42[v34];
        }

        v36 = v37[1];
        if (!v37[1])
        {
          break;
        }

        v12 = v34++ >= 0xFFF;
      }

      while (!v12);
      if (v35)
      {
        v38 = v35 + 1;
      }

      else
      {
        v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/ahal_dsp_api.cpp";
      }

      buf[0] = 136315394;
      *&buf[1] = v38;
      v40 = 1024;
      v41 = 150;
      v32 = "%32s:%-5d [ahal_dsp] ADM loading is not allowed on this platform.";
    }

    _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, v32, buf, 0x12u);
LABEL_61:
    result = 4;
    goto LABEL_62;
  }

LABEL_2:
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  result = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (result)
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_42[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_42[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }

      v12 = v8++ >= 0xFFF;
    }

    while (!v12);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/ahal_dsp_api.cpp";
    }

    buf[0] = 136315394;
    *&buf[1] = v13;
    v40 = 1024;
    v41 = 141;
    _os_log_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_INFO, "%32s:%-5d [ahal_dsp] Loading the thinner ADM wrapper.", buf, 0x12u);
    result = 0;
  }

LABEL_62:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AHAL_DSP::ADMProcessFactory::set_hosting_config(uint64_t result, void *a2)
{
  v2 = (result + 48);
  if ((result + 48) != a2)
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*(result + 64))
    {
      v6 = *(result + 56);
      v5 = (result + 56);
      v7 = *(v5 - 1);
      *(v5 - 1) = v5;
      *(v6 + 16) = 0;
      *v5 = 0;
      v5[1] = 0;
      if (v7[1])
      {
        v8 = v7[1];
      }

      else
      {
        v8 = v7;
      }

      v15 = v2;
      v16 = v8;
      v17 = v8;
      if (!v8 || (v16 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v8), v4 == v3))
      {
        v12 = v4;
      }

      else
      {
        do
        {
          std::string::operator=((v8 + 4), (v4 + 4));
          std::string::operator=((v8 + 7), (v4 + 7));
          v9 = v17;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v2, &v14, v17 + 4);
          std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v2, v14, leaf_high, v9);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v16);
          }

          v11 = v4[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v4[2];
              v13 = *v12 == v4;
              v4 = v12;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v4 = v12;
        }

        while (v12 != v3);
      }

      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
      v4 = v12;
    }

    if (v4 != v3)
    {
      operator new();
    }
  }

  return result;
}

void sub_1DE3334D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void AHAL_DSP::ADMProcessFactory::~ADMProcessFactory(AHAL_DSP::ADMProcessFactory *this)
{
  AHAL_DSP::ADMProcessFactory::~ADMProcessFactory(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5966C98;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 7));
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void AHAL_DSP::HostedDSPProcessFactory::create_plugin_at(void *a1, uint64_t *a2)
{
  if (!a1[3])
  {
    _ZNSt3__115allocate_sharedB8ne200100IN8AHAL_DSP15PluginTaskQueueENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE333CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a11);
  MEMORY[0x1E12C15F0](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void AHAL_DSP::HostedDSPProcessFactory::create_default_plugin_configuration(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = v3;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<SPIPluginPropertySetImpl,std::allocator<SPIPluginPropertySetImpl>,std::shared_ptr<DSP_Host_PropertySet>,0>();
}

void sub_1DE333EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v18);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void sub_1DE33411C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](va);
  shared_weak_owners = v2[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_weak_owners);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SPIPluginPropertySetImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::HostedDSPProcessFactory::get_available_device_offloads(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    v5 = v3;
    v6 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    std::allocate_shared[abi:ne200100]<SPIPluginPropertySetImpl,std::allocator<SPIPluginPropertySetImpl>,std::shared_ptr<DSP_Host_PropertySet>,0>();
  }

  return 0;
}

void sub_1DE3342C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AHAL_DSP::HostedDSPProcessFactory::init(AHAL_DSP::HostedDSPProcessFactory *this)
{
  v1 = this;
  v29 = *MEMORY[0x1E69E9840];
  *(this + 40);
  if (*(this + 48) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    cf[1] = Mutable;
    *key = CFStringCreateWithBytes(0, "Override_Mock_Type", 18, 0x8000100u, 0);
    if (!*key)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    LODWORD(valuePtr[0]) = *(v1 + 11);
    v3 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
    __p[0] = v3;
    if (!v3)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v17, "Could not construct");
      __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, *key, v3);
    }

    CFRelease(v3);
    if (*key)
    {
      CFRelease(*key);
    }

    this = AHAL_DSP::CF::Dictionary_Builder::get_dictionary(cf, Mutable);
    if (TestConfig::gTestOverrideDefaultConstruction_ == 1)
    {
      TestConfig::gTestOverrideDefaultConstruction_ = 0;
    }

    if (TestConfig::gTestOverrideMockType_ == 1)
    {
      TestConfig::gTestOverrideMockType_ = 0;
    }

    if (cf[0])
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Override_Host_Default_Construction");
      DSP_Dictionariable::DictionariableKvp::DictionariableKvp(key, __p);
      *key = &unk_1F598ECB0;
      key_14[2] = 0;
      v28 = 0;
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      DSP_Dictionariable::SingleKvp<int>::load_from(key, cf);
      if (v28 == 1)
      {
        TestConfig::gTestOverrideDefaultConstruction_ = *&key_14[2];
        TestConfig::gTestOverrideDefaultConstruction_ = 1;
      }

      std::string::basic_string[abi:ne200100]<0>(valuePtr, "Override_Mock_Type");
      DSP_Dictionariable::DictionariableKvp::DictionariableKvp(__p, valuePtr);
      __p[0] = &unk_1F598ECB0;
      LOBYTE(v22) = 0;
      v23 = 0;
      if (v20 < 0)
      {
        operator delete(valuePtr[0]);
      }

      DSP_Dictionariable::SingleKvp<int>::load_from(__p, cf);
      if (v23 == 1)
      {
        TestConfig::gTestOverrideMockType_ = v22;
        TestConfig::gTestOverrideMockType_ = 1;
      }

      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(__p);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(key);
      this = cf[0];
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (!*(v1 + 1))
  {
    operator new();
  }

  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_42[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_42[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }
    }

    while (v8++ < 0xFFF);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/ahal_dsp_api.cpp";
    }

    *key = 136315394;
    *&key[4] = v13;
    key_12 = 1024;
    *key_14 = 259;
    _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_INFO, "%32s:%-5d [ahal_dsp] Loading the classic Hosted DSP wrapper.", key, 0x12u);
  }

  v14 = *MEMORY[0x1E69E9840];
  return 4;
}

void sub_1DE334770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *AHAL_DSP::CF::Dictionary_Builder::get_dictionary(void *this, const void *a2)
{
  v2 = this;
  if (a2)
  {
    CFRetain(a2);
    *v2 = a2;
    v4 = CFGetTypeID(a2);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE334908(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void AHAL_DSP::CF::Dictionary_Builder::~Dictionary_Builder(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__shared_ptr_emplace<DSP_Host>::__on_zero_shared(uint64_t a1)
{
  std::mutex::lock((a1 + 72));
  v2 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::unlock((a1 + 72));
  v3 = *(a1 + 64);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::mutex::~mutex((a1 + 72));
  v6 = *(a1 + 64);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {

    std::__shared_weak_count::__release_weak(v8);
  }
}

void std::__shared_ptr_emplace<DSP_Host>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AHAL_DSP::HostedDSPProcessFactory::set_hosting_config(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Override_Mock_Type_Bitmask");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 != v4)
  {
    *(a1 + 44) = std::stoi((v4 + 56), 0, 10);
    *(a1 + 48) = 1;
  }
}

void AHAL_DSP::HostedDSPProcessFactory::~HostedDSPProcessFactory(AHAL_DSP::HostedDSPProcessFactory *this)
{
  AHAL_DSP::HostedDSPProcessFactory::~HostedDSPProcessFactory(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5966CE0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void AHAL_DSP::HostingInternalState::create_plugin_at(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 48))(v3, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1DE334C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AHAL_DSP::HostingInternalState::create_default_plugin_configuration(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 40))(v3, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1DE334D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AHAL_DSP::HostingInternalState::get_available_device_offloads(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t AHAL_DSP::HostingInternalState::init(AHAL_DSP::HostingInternalState *this)
{
  if (!*(this + 9))
  {
    v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 80, "hosting_type");
    v4 = *(v3 + 79);
    v5 = v4;
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(v3 + 64);
    }

    if (v4 != 14 || ((v8 = *(v3 + 56), v6 = (v3 + 56), v7 = v8, v5 >= 0) ? (v9 = v6) : (v9 = v7), (v10 = *v9, v11 = *(v9 + 6), v10 == 0x705F6D64615F6F6ELL) ? (v12 = v11 == 0x746E65736572705FLL) : (v12 = 0), !v12))
    {
      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 80, "hosting_type");
      v14 = *(v13 + 79);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v13 + 64);
      }

      if (v14 != 8 || ((v18 = *(v13 + 56), v16 = (v13 + 56), v17 = v18, v15 >= 0) ? (v19 = v16) : (v19 = v17), *v19 != 0x6E6968745F6D6461))
      {
        v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 80, "hosting_type");
        v21 = *(v20 + 79);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v20 + 64);
        }

        if (v21 == 22)
        {
          v25 = *(v20 + 56);
          v23 = (v20 + 56);
          v24 = v25;
          if (v22 >= 0)
          {
            v26 = v23;
          }

          else
          {
            v26 = v24;
          }

          v27 = *v26;
          v28 = v26[1];
          v29 = *(v26 + 14);
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  return 4;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
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
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
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

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
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

void AHAL_DSP::HostingInternalState::~HostingInternalState(AHAL_DSP::HostingInternalState *this)
{
  AHAL_DSP::HostingInternalState::~HostingInternalState(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5966D28;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 11));
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::mutex::~mutex((this + 8));
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void AHAL_DSP::HostingLibrary::create_default_plugin_configuration(void *a1, AHAL_DSP::HostingInternalState **a2, uint64_t *a3)
{
  v6 = *a2;
  std::mutex::lock((*a2 + 8));
  AHAL_DSP::HostingInternalState::init(*a2);
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AHAL_DSP::HostingInternalState::create_default_plugin_configuration(v7, v10, a1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::mutex::unlock((v6 + 8));
}

void sub_1DE335498(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::mutex::unlock((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<HALS_EmbeddedSettingsLite>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<HALS_DSPDeveloperPreferences::InitFromSettings(IHALS_EmbeddedSettings const*)::$_0 &&>>(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = **(**a1 + 8);
  if (!v1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AHAL_DSPLogging_Verbosity");
  v2 = (*(*v1 + 16))(v1, __p);
  if ((v2 & 0x100000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  HALS_DSPDeveloperPreferences::sInitValues = v3;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AHAL_DSPOffloads_AlwaysSendAvailable");
  v4 = (*(*v1 + 16))(v1, __p);
  HALS_DSPDeveloperPreferences::sInitValues = BYTE4(v4) & (v4 != 0);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*__p);
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v7;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_43[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_43[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPDeveloperPreferences.cpp";
    }

    v15 = "yes";
    *__p = 136315906;
    if (!HALS_DSPDeveloperPreferences::sInitValues)
    {
      v15 = "no";
    }

    *&__p[4] = v14;
    *&__p[12] = 1024;
    *&__p[14] = 26;
    v18 = 1024;
    v19 = HALS_DSPDeveloperPreferences::sInitValues;
    v20 = 2080;
    v21 = v15;
    _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp] Hosted DSP logging verbosity: %d | Offloads Always Send Available to Device: %s", __p, 0x22u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE335820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12C1730](v16, 0x1093C402D7449D9);
  std::unique_ptr<HALS_EmbeddedSettingsLite>::reset[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::PluginGenericImpl::process_silence_REALTIME(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 88))
  {
    return 3;
  }

  if (*(a2 + 80))
  {
    v3 = 0;
    do
    {
      v4 = *(*(a2 + 88) + 8 * v3);
      v7 = 0u;
      v8 = 0u;
      v9 = 0u;
      v6 = &unk_1F5966EF0;
      v10 = v4;
      AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(&v6, 0.0);
      AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Allocation(&v6);
      ++v3;
    }

    while (v3 < *(a2 + 80));
  }

  return 0;
}

uint64_t AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(uint64_t a1, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = &unk_1F5966FD8;
  v7 = a2;
  v8 = &v6;
  v2 = *(a1 + 56);
  if (v2 && *v2)
  {
    std::__function::__value_func<void ()(AudioBuffer &)>::__value_func[abi:ne200100](v9, &v6);
    v3 = *v2;
    if (v3)
    {
      std::__function::__value_func<void ()(AudioBuffer &)>::__value_func[abi:ne200100](v10, v9);
      std::for_each[abi:ne200100]<AudioBuffer *,std::function<void ()(AudioBuffer&)>>(v11, (v2 + 2), &v2[4 * v3 + 2], v10);
      std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](v11);
      std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](v10);
    }

    std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](v9);
  }

  result = std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](&v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE335A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Allocation(void *a1)
{
  *a1 = &unk_1F5966EA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::rawSamples(uint64_t a1)
{
  return a1 + 8;
}

{
  return a1 + 8;
}

BOOL AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(uint64_t a1, float a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (*v4 == v4[1] || **(*(*a1 + 40))(a1) != a2)
  {
    return 0;
  }

  v6 = *(*(*a1 + 40))(a1);
  v7 = *((*(*a1 + 40))(a1) + 8);
  if (v6 == v7)
  {
    v7 = v6;
  }

  else
  {
    v8 = v6 + 1;
    while (v8 != v7)
    {
      v9 = *(v8 - 1);
      v10 = *v8++;
      if (v9 != v10)
      {
        v7 = v8 - 2;
        return v7 == *((*(*a1 + 40))(a1) + 8);
      }
    }
  }

  return v7 == *((*(*a1 + 40))(a1) + 8);
}

uint64_t AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(uint64_t a1, float a2)
{
  v4 = *(*(*a1 + 32))(a1);
  result = (*(*a1 + 32))(a1);
  v6 = (*(result + 8) - v4) >> 2;
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    v8 = (v6 + 3) & 0x7FFFFFFFFFFFFFFCLL;
    v9 = vdupq_n_s64(v7);
    v10 = (v4 + 8);
    v11 = 1;
    do
    {
      v12 = vdupq_n_s64(v11 - 1);
      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_1DE757E30)));
      if (vuzp1_s16(v13, *v9.i8).u8[0])
      {
        *(v10 - 2) = a2;
      }

      if (vuzp1_s16(v13, *&v9).i8[2])
      {
        *(v10 - 1) = a2;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_1DE757E20)))).i32[1])
      {
        *v10 = a2;
        v10[1] = a2;
      }

      v11 += 4;
      v10 += 4;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Allocation(void *a1)
{
  AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Allocation(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1},std::allocator<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1}>,void ()(AudioBuffer &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN8AHAL_DSP17ABL_EncapsulationIfLNS_16InterleavePolicyE0EE9fill_withEfEUlR11AudioBufferE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1},std::allocator<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1}>,void ()(AudioBuffer &)>::operator()(uint64_t result, uint64_t a2, int16x4_t a3)
{
  v3 = *(a2 + 4);
  if (v3 >= 4)
  {
    a3.i32[0] = *(result + 8);
    v4 = v3 >> 2;
    v5 = ((*(a2 + 4) >> 2) + 3) & 0x7FFFFFFC;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = (*(a2 + 8) + 8);
    v8 = 1;
    do
    {
      v9 = vdupq_n_s64(v8 - 1);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE757E30)));
      if (vuzp1_s16(v10, a3).u8[0])
      {
        *(v7 - 2) = a3.i32[0];
      }

      if (vuzp1_s16(v10, a3).i8[2])
      {
        *(v7 - 1) = a3.i32[0];
      }

      if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE757E20)))).i32[1])
      {
        *v7 = a3.i32[0];
        v7[1] = a3.i32[0];
      }

      v8 += 4;
      v7 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__function::__func<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1},std::allocator<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1}>,void ()(AudioBuffer &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5966FD8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(uint64_t a1, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = *(a1 + 56);
  v3 = *v2;
  v7 = *v2 != 0;
  v9[0] = &unk_1F5966F48;
  v9[1] = &v7;
  v9[2] = &v8;
  v9[3] = v9;
  if (v3)
  {
    std::__function::__value_func<void ()(AudioBuffer const&)>::__value_func[abi:ne200100](v10, v9);
    v4 = *v2;
    if (v4)
    {
      std::__function::__value_func<void ()(AudioBuffer const&)>::__value_func[abi:ne200100](v11, v10);
      std::for_each[abi:ne200100]<AudioBuffer const*,std::function<void ()(AudioBuffer const&)>>(v12, (v2 + 2), &v2[4 * v4 + 2], v11);
      std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v12);
      std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v11);
    }

    std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v10);
  }

  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v9);
  result = v7;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE336034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1},std::allocator<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1}>,void ()(AudioBuffer const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK8AHAL_DSP17ABL_EncapsulationIfLNS_16InterleavePolicyE0EE15is_every_sampleEfEUlRK11AudioBufferE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1},std::allocator<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1}>,void ()(AudioBuffer const&)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*v2)
  {
    v3 = *(a2 + 4);
    if (v3 && (v4 = *(a2 + 8), v5 = *v4, *v4 == **(result + 16)))
    {
      v7 = &v4[v3 >> 2];
      if (v3 >= 4)
      {
        --v4;
        v8 = 4 * (v3 >> 2) - 4;
        while (v8)
        {
          v9 = v4[2];
          ++v4;
          v8 -= 4;
          v10 = v5 == v9;
          v5 = v9;
          if (!v10)
          {
            goto LABEL_11;
          }
        }

        v4 = v7;
      }

LABEL_11:
      v6 = v4 == v7;
    }

    else
    {
      v6 = 0;
    }

    *v2 = v6;
  }

  return result;
}

__n128 std::__function::__func<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1},std::allocator<AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1}>,void ()(AudioBuffer const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5966F48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AHAL_DSP::ABL_Encapsulation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Encapsulation(void *a1)
{
  AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Allocation(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::PluginGenericImpl::process_bypass_REALTIME(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 72))
  {
    return 3;
  }

  if (!*(a2 + 88))
  {
    return 3;
  }

  v3 = *(a2 + 68);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (i < *(a2 + 80))
      {
        v5 = *(*(a2 + 72) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = v5;
        v33 = *(*(a2 + 88) + 8 * i);
        v34 = &unk_1F5966EF0;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = &unk_1F5966EF0;
        v6 = *v5;
        if (v6 >= *v33)
        {
          v7 = *v33;
        }

        else
        {
          v7 = v6;
        }

        if (v7)
        {
          v8 = 0;
          while (1)
          {
            v9 = &v38[4 * v8];
            v12 = v9[2];
            v11 = v9 + 2;
            v10 = v12;
            v13 = &v33[4 * v8];
            v16 = v13[2];
            v15 = v13 + 2;
            v14 = v16;
            if (v10 != v16)
            {
              break;
            }

            v17 = v15[1];
            v18 = v11[1];
            if (v17 >= v18)
            {
              v19 = v18;
            }

            else
            {
              v19 = v17;
            }

            memcpy(*(v15 + 1), *(v11 + 1), v19);
LABEL_35:
            if (++v8 == v7)
            {
              goto LABEL_36;
            }
          }

          if (v10)
          {
            v20 = v11[1] / (4 * v10);
            if (v14)
            {
              goto LABEL_18;
            }

LABEL_20:
            v21 = 0;
          }

          else
          {
            v20 = 0;
            if (!v14)
            {
              goto LABEL_20;
            }

LABEL_18:
            v21 = v15[1] / (4 * v14);
          }

          if (v21 >= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          v23 = *(v11 + 1);
          v24 = *(v15 + 1);
          if (v23)
          {
            v25 = v24 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25 && v22 != 0)
          {
            if (v14 < v10)
            {
              LODWORD(v10) = v14;
            }

            v27 = 4 * v10;
            do
            {
              memcpy(v24, v23, v27);
              v23 += 4 * *v11;
              v24 += 4 * *v15;
              --v22;
            }

            while (v22);
          }

          goto LABEL_35;
        }

LABEL_36:
        AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Allocation(&v29);
        AHAL_DSP::ABL_Allocation<float,(AHAL_DSP::InterleavePolicy)0>::~ABL_Allocation(&v34);
        v3 = *(a2 + 68);
      }
    }
  }

  return 0;
}

uint64_t AHAL_DSP::PluginGenericImpl::process_REALTIME(unsigned int *a1, uint64_t a2)
{
  if (!(*(*a1 + 72))(a1))
  {
    return 2;
  }

  v4 = atomic_load(a1 + 2);
  if (v4 - 1 >= 2)
  {
    if (v4 == 3)
    {
      v20 = *(*a1 + 112);
      v21 = a1;
      v22 = a2;

      return v20(v21, v22);
    }
  }

  else
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 80);
    v7 = v5 == v6;
    if (v5 && v5 == v6)
    {
      v8 = 0;
      do
      {
        v9 = *(*(a2 + 72) + 8 * v8);
        v10 = *(*(a2 + 88) + 8 * v8);
        v11 = *v9;
        v7 = v11 == *v10;
        if (v11)
        {
          v12 = v11 == *v10;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          v13 = (v10 + 4);
          v14 = (v9 + 4);
          v15 = 1;
          do
          {
            v17 = *v14;
            v14 += 2;
            v16 = v17;
            v19 = *v13;
            v13 += 2;
            v18 = v19;
            v7 = v16 == v19;
            if (v15 >= v11)
            {
              break;
            }

            ++v15;
          }

          while (v16 == v18);
        }

        ++v8;
      }

      while (v8 < v5 && v7);
    }

    if (!v7)
    {
      v20 = *(*a1 + 104);
      v21 = a1;
      v22 = a2;

      return v20(v21, v22);
    }
  }

  return 0;
}

uint64_t AHAL_DSP::PluginGenericImpl::unlock_processing(atomic_uchar *this)
{
  if (!(*(*this + 72))(this))
  {
    return 2;
  }

  result = 0;
  atomic_exchange(this + 12, 0);
  return result;
}

uint64_t AHAL_DSP::PluginGenericImpl::lock_processing(atomic_uchar *this)
{
  v2 = (*(*this + 72))(this);
  result = 1;
  if ((v2 & 1) == 0)
  {
    atomic_exchange(this + 12, 1u);
    return 0;
  }

  return result;
}

BOOL AHAL_DSP::PluginGenericImpl::set_processing_mode(atomic_uint *a1, unsigned int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 72))(a1);
  if (v4)
  {
    result = 1;
    goto LABEL_11;
  }

  v6 = atomic_exchange(a1 + 2, a2);
  if (v6 == a2)
  {
LABEL_4:
    result = 0;
    goto LABEL_11;
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *v9;
  }

  result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v12 = 0;
    v13 = 0;
    v14 = 47;
    do
    {
      v15 = &aLibraryCachesC_44[v12];
      if (v14 == 47)
      {
        v13 = &aLibraryCachesC_44[v12];
      }

      v14 = v15[1];
      if (!v15[1])
      {
        break;
      }
    }

    while (v12++ < 0xFFF);
    if (v13)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-common/ahal_dsp_plugin_generic_impl.cpp";
    }

    v18 = (*(*a1 + 96))(a1);
    v19 = 136316162;
    v20 = v17;
    v21 = 1024;
    v22 = 54;
    v23 = 2080;
    v24 = v18;
    v25 = 1024;
    v26 = v6;
    v27 = 1024;
    v28 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %s Process mode changed from %d -> %d.", &v19, 0x28u);
    goto LABEL_4;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

AHAL_DSP::OffloadDictionary *AHAL_DSP::OffloadDictionary::deep_copy_from(AHAL_DSP::OffloadDictionary *this, __CFString *a2)
{
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = AHAL_DSP::PropertyListDeepImmutableCopy(a2, a2);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v8 = *(this + 2);
    *(this + 2) = v6;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return this;
}

void sub_1DE336950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void AHAL_DSP::OffloadDictionary::make_empty(AHAL_DSP::OffloadDictionary *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v9 = Mutable;
  AHAL_DSP::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  v3 = cf;
  cf = 0;
  v8 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v5 = *(this + 2);
  *(this + 2) = v3;
  v8 = v5;
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE336A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  AHAL_DSP::CF::Dictionary_Builder::~Dictionary_Builder(&a12);
  _Unwind_Resume(a1);
}

void AHAL_DSP::OffloadDictionary::get_offload_id_list(AHAL_DSP::OffloadDictionary *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *(a2 + 16);
  if (v3 && CFDictionaryGetCount(v3))
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Count = CFDictionaryGetCount(v5);
    __p[0] = 0;
    std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count);
    CFDictionaryGetKeysAndValues(*(a2 + 16), keys, 0);
    v7 = keys;
    v8 = v16;
    if (keys != v16)
    {
      do
      {
        applesauce::CF::StringRef::from_get(&cf, *v7);
        if (!cf)
        {
          v9 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v9, "Could not construct");
          __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_as<std::string,0>(__p, cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v14 == 1)
        {
          std::vector<std::string>::push_back[abi:ne200100](this, __p);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v7;
      }

      while (v7 != v8);
      v7 = keys;
    }

    if (v7)
    {
      v16 = v7;
      operator delete(v7);
    }
  }
}

void sub_1DE336C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  __cxa_free_exception(v18);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::vector<__CFString const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE336EE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    v7 = CStringPtr;
    if (CStringPtr)
    {
      v8 = strlen(CStringPtr);
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v13) = v8;
      if (v8)
      {
        memmove(&__dst, v7, v8);
      }

      *(&__dst + v9) = 0;
    }

    else
    {
      Length = CFStringGetLength(a2);
      maxBufLen = 0;
      v15.location = 0;
      v15.length = Length;
      CFStringGetBytes(a2, v15, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      std::string::basic_string[abi:ne200100](&__dst, maxBufLen);
      if (v13 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v16.location = 0;
      v16.length = Length;
      CFStringGetBytes(a2, v16, 0x8000100u, 0, 0, p_dst, maxBufLen, &maxBufLen);
    }

    result = *&__dst;
    *a1 = __dst;
    *(a1 + 16) = v13;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void std::vector<__CFString const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

BOOL AHAL_DSP::OffloadDictionary::has_all_id(AHAL_DSP::OffloadDictionary *this)
{
  v2 = *(this + 2);
  if (!v2 || !CFDictionaryGetCount(v2))
  {
    return 0;
  }

  v3 = *(this + 2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::details::has_key<__CFString const*>(v3, @"all available");
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef &>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef &>(a2, a3);
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

void AHAL_DSP::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

const void *applesauce::CF::details::at_key<applesauce::CF::StringRef &>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<AHAL_DSP::OffloadDictionary>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x1E12C1730](v2, 0x60C40149E097CLL);
  }

  return a1;
}

uint64_t AHAL_DSP::OffloadDictionary::deep_copy_from_changed(AHAL_DSP::OffloadDictionary *this, __CFString *a2)
{
  AHAL_DSP::OffloadDictionary::get_offload_id_list(&v16, this);
  AHAL_DSP::OffloadDictionary::deep_copy_from(this, a2);
  AHAL_DSP::OffloadDictionary::get_offload_id_list(&v14, this);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
  if (v17 == v16)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = 1;
  std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(v16, v17, v5, 1);
  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
  if (v15 == v14)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(v14, v15, v8, 1);
  v9 = v16;
  v10 = v17;
  v11 = v14;
  if (v17 - v16 == v15 - v14)
  {
    if (v16 == v17)
    {
      v6 = 0;
    }

    else
    {
      do
      {
        v12 = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v9, v11);
        if (!v12)
        {
          break;
        }

        v9 += 24;
        v11 += 3;
      }

      while (v9 != v10);
      v6 = !v12;
    }
  }

  v18 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  v14 = &v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  return v6;
}

void sub_1DE3374F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
  v199 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2 - 24;
  v192 = a2 - 48;
  v9 = a2 - 72;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    v13 = v12 - 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      goto LABEL_182;
    }

    if (v12 == 2)
    {
      v126 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1);
      if ((v126 & 0x80) == 0)
      {
        goto LABEL_182;
      }

LABEL_180:
      v188 = *a1;
      v196 = *(a1 + 2);
      v195 = v188;
      v189 = *v8;
      *(a1 + 2) = *(a2 - 1);
      *a1 = v189;
      v185 = v195;
      v186 = v196;
      goto LABEL_181;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v133 = a1 + 24;
      v135 = a1 == a2 || v133 == a2;
      if (a4)
      {
        if (!v135)
        {
          v136 = 0;
          v137 = a1;
          do
          {
            v138 = v137;
            v137 = v133;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v133, v138) & 0x80) != 0)
            {
              v139 = *v137;
              v196 = *(v137 + 2);
              v195 = v139;
              *(v137 + 1) = 0;
              *(v137 + 2) = 0;
              *v137 = 0;
              v140 = v136;
              while (1)
              {
                v141 = &a1[v140];
                *(v141 + 24) = *&a1[v140];
                *(v141 + 5) = *&a1[v140 + 16];
                v141[23] = 0;
                *v141 = 0;
                if (!v140)
                {
                  break;
                }

                v140 -= 24;
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v195, &a1[v140]) & 0x80) == 0)
                {
                  v142 = &a1[v140 + 24];
                  goto LABEL_135;
                }
              }

              v142 = a1;
LABEL_135:
              v143 = v195;
              *(v142 + 16) = v196;
              *v142 = v143;
            }

            v133 = v137 + 24;
            v136 += 24;
          }

          while (v137 + 24 != a2);
        }
      }

      else if (!v135)
      {
        do
        {
          v178 = a1;
          a1 = v133;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v133, v178) & 0x80) != 0)
          {
            v179 = *a1;
            v196 = *(a1 + 2);
            v195 = v179;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = 0;
            v180 = a1;
            do
            {
              v181 = v180 - 24;
              *v180 = *(v180 - 24);
              *(v180 + 2) = *(v180 - 1);
              *(v180 - 1) = 0;
              *(v180 - 24) = 0;
              v182 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v195, v180 - 6);
              v180 = v181;
            }

            while (v182 < 0);
            v183 = v195;
            *(v181 + 2) = v196;
            *v181 = v183;
          }

          v133 = a1 + 24;
        }

        while (a1 + 24 != a2);
      }

      goto LABEL_182;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v193 = a2;
        v144 = v13 >> 1;
        v145 = v13 >> 1;
        do
        {
          v146 = v145;
          if (v144 >= v145)
          {
            v147 = (2 * v145) | 1;
            v148 = &a1[24 * v147];
            if (2 * v145 + 2 < v12 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&a1[24 * v147], v148 + 3) & 0x80u) != 0)
            {
              v148 += 24;
              v147 = 2 * v146 + 2;
            }

            v149 = &a1[24 * v146];
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, v149) & 0x80) == 0)
            {
              v150 = *v149;
              v196 = *(v149 + 2);
              v195 = v150;
              *(v149 + 1) = 0;
              *(v149 + 2) = 0;
              *v149 = 0;
              do
              {
                v151 = v148;
                v152 = *v148;
                *(v149 + 2) = *(v148 + 2);
                *v149 = v152;
                v148[23] = 0;
                *v148 = 0;
                if (v144 < v147)
                {
                  break;
                }

                v153 = (2 * v147) | 1;
                v148 = &a1[24 * v153];
                v154 = 2 * v147 + 2;
                if (v154 < v12 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&a1[24 * v153], v148 + 3) & 0x80u) != 0)
                {
                  v148 += 24;
                  v153 = v154;
                }

                v149 = v151;
                v147 = v153;
              }

              while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, &v195) & 0x80) == 0);
              v155 = v195;
              *(v151 + 2) = v196;
              *v151 = v155;
            }
          }

          v145 = v146 - 1;
        }

        while (v146);
        v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v157 = v193;
        do
        {
          v158 = 0;
          v159 = v157;
          v191 = *a1;
          *&v197 = *(a1 + 1);
          *(&v197 + 7) = *(a1 + 15);
          v194 = a1[23];
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          v160 = a1;
          do
          {
            v161 = &v160[24 * v158];
            v162 = v161 + 24;
            v163 = (2 * v158) | 1;
            v164 = 2 * v158 + 2;
            if (v164 < v156)
            {
              v165 = v161 + 48;
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v161 + 3, v161 + 6) & 0x80u) != 0)
              {
                v162 = v165;
                v163 = v164;
              }
            }

            v166 = *v162;
            *(v160 + 2) = *(v162 + 2);
            *v160 = v166;
            v162[23] = 0;
            *v162 = 0;
            v160 = v162;
            v158 = v163;
          }

          while (v163 <= ((v156 - 2) >> 1));
          if (v162 == v159 - 24)
          {
            v157 = v159 - 24;
            *v162 = v191;
            v176 = *(&v197 + 7);
            *(v162 + 1) = v197;
            *(v162 + 15) = v176;
            v162[23] = v194;
          }

          else
          {
            v167 = *(v159 - 24);
            v157 = v159 - 24;
            *(v162 + 2) = *(v159 - 1);
            *v162 = v167;
            *(v159 - 3) = v191;
            v168 = v197;
            *(v159 - 9) = *(&v197 + 7);
            *(v159 - 2) = v168;
            *(v159 - 1) = v194;
            v169 = v162 - a1 + 24;
            if (v169 >= 25)
            {
              v170 = (-2 - 0x5555555555555555 * (v169 >> 3)) >> 1;
              v171 = &a1[24 * v170];
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v171, v162) & 0x80) != 0)
              {
                v172 = *v162;
                v196 = *(v162 + 2);
                v195 = v172;
                *(v162 + 1) = 0;
                *(v162 + 2) = 0;
                *v162 = 0;
                do
                {
                  v173 = v171;
                  v174 = *v171;
                  *(v162 + 2) = *(v171 + 2);
                  *v162 = v174;
                  v171[23] = 0;
                  *v171 = 0;
                  if (!v170)
                  {
                    break;
                  }

                  v170 = (v170 - 1) >> 1;
                  v171 = &a1[24 * v170];
                  v162 = v173;
                }

                while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v171, &v195) & 0x80) != 0);
                v175 = v195;
                *(v173 + 2) = v196;
                *v173 = v175;
              }
            }
          }
        }

        while (v156-- > 2);
      }

      goto LABEL_182;
    }

    v14 = v12 >> 1;
    v15 = &a1[24 * (v12 >> 1)];
    if (v11 >= 0xC01)
    {
      v16 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a1);
      v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v15);
      if (v16 < 0)
      {
        if (v17 < 0)
        {
          v42 = *a1;
          v196 = *(a1 + 2);
          v195 = v42;
          v43 = *v8;
          *(a1 + 2) = *(a2 - 1);
          *a1 = v43;
        }

        else
        {
          v32 = *a1;
          v196 = *(a1 + 2);
          v195 = v32;
          v33 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v33;
          v34 = v195;
          *(v15 + 2) = v196;
          *v15 = v34;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v15) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v35 = *v15;
          v196 = *(v15 + 2);
          v195 = v35;
          v36 = *v8;
          *(v15 + 2) = *(a2 - 1);
          *v15 = v36;
        }

        v44 = v195;
        *(a2 - 1) = v196;
        *v8 = v44;
      }

      else if (v17 < 0)
      {
        v18 = *v15;
        v196 = *(v15 + 2);
        v195 = v18;
        v19 = *v8;
        *(v15 + 2) = *(a2 - 1);
        *v15 = v19;
        v20 = v195;
        *(a2 - 1) = v196;
        *v8 = v20;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a1) & 0x80) != 0)
        {
          v21 = *a1;
          v196 = *(a1 + 2);
          v195 = v21;
          v22 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v22;
          v23 = v195;
          *(v15 + 2) = v196;
          *v15 = v23;
        }
      }

LABEL_29:
      v45 = &a1[24 * v14 - 24];
      v46 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, a1 + 3);
      v47 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v192, v45);
      if (v46 < 0)
      {
        if (v47 < 0)
        {
          v195 = *(a1 + 24);
          v63 = v195;
          v196 = *(a1 + 5);
          v64 = v196;
          v65 = *(a2 - 4);
          *(a1 + 24) = *v192;
          *(a1 + 5) = v65;
          *(a2 - 4) = v64;
          *v192 = v63;
        }

        else
        {
          v195 = *(a1 + 24);
          v54 = v195;
          v196 = *(a1 + 5);
          v55 = v196;
          v56 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v45;
          *(a1 + 5) = v56;
          *&a1[24 * v14 - 8] = v55;
          *v45 = v54;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v192, v45) & 0x80) != 0)
          {
            v57 = *v45;
            v196 = *&a1[24 * v14 - 8];
            v195 = v57;
            v58 = *v192;
            *&a1[24 * v14 - 8] = *(a2 - 4);
            *v45 = v58;
            v59 = v195;
            *(a2 - 4) = v196;
            *v192 = v59;
          }
        }
      }

      else if (v47 < 0)
      {
        v48 = *v45;
        v196 = *&a1[24 * v14 - 8];
        v195 = v48;
        v49 = *v192;
        *&a1[24 * v14 - 8] = *(a2 - 4);
        *v45 = v49;
        v50 = v195;
        *(a2 - 4) = v196;
        *v192 = v50;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, a1 + 3) & 0x80) != 0)
        {
          v195 = *(a1 + 24);
          v51 = v195;
          v196 = *(a1 + 5);
          v52 = v196;
          v53 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v45;
          *(a1 + 5) = v53;
          *&a1[24 * v14 - 8] = v52;
          *v45 = v51;
        }
      }

      v66 = &a1[24 * v14];
      v67 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, a1 + 6);
      v68 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, v66 + 3);
      if (v67 < 0)
      {
        if (v68 < 0)
        {
          v80 = *(a1 + 3);
          v195 = v80;
          v81 = *(a1 + 8);
          v196 = v81;
          v82 = *(a2 - 7);
          *(a1 + 3) = *v9;
          *(a1 + 8) = v82;
        }

        else
        {
          v195 = *(a1 + 3);
          v75 = v195;
          v196 = *(a1 + 8);
          v76 = v196;
          v77 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v77;
          *(v66 + 5) = v76;
          *(v66 + 24) = v75;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, v66 + 3) & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v78 = *(v66 + 24);
          v196 = *(v66 + 5);
          v195 = v78;
          v79 = *v9;
          *(v66 + 5) = *(a2 - 7);
          *(v66 + 24) = v79;
          v80 = v195;
          v81 = v196;
        }

        *(a2 - 7) = v81;
        *v9 = v80;
      }

      else if (v68 < 0)
      {
        v69 = *(v66 + 24);
        v196 = *(v66 + 5);
        v195 = v69;
        v70 = *v9;
        *(v66 + 5) = *(a2 - 7);
        *(v66 + 24) = v70;
        v71 = v195;
        *(a2 - 7) = v196;
        *v9 = v71;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, a1 + 6) & 0x80) != 0)
        {
          v195 = *(a1 + 3);
          v72 = v195;
          v196 = *(a1 + 8);
          v73 = v196;
          v74 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v74;
          *(v66 + 5) = v73;
          *(v66 + 24) = v72;
        }
      }

LABEL_48:
      v83 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, v45);
      v84 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, v15);
      if ((v83 & 0x80) == 0)
      {
        if (v84 < 0)
        {
          v85 = *v15;
          v196 = *(v15 + 2);
          v195 = v85;
          *v15 = *(v66 + 24);
          *(v15 + 2) = *(v66 + 5);
          v86 = v195;
          *(v66 + 5) = v196;
          *(v66 + 24) = v86;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, v45) & 0x80) != 0)
          {
            v87 = *v45;
            v196 = *(v45 + 2);
            v195 = v87;
            *v45 = *v15;
            *(v45 + 2) = *(v15 + 2);
            v88 = v195;
            *(v15 + 2) = v196;
            *v15 = v88;
          }
        }

        goto LABEL_57;
      }

      if (v84 < 0)
      {
        v92 = *v45;
        v196 = *(v45 + 2);
        v195 = v92;
        *v45 = *(v66 + 24);
        *(v45 + 2) = *(v66 + 5);
LABEL_56:
        v93 = v195;
        *(v66 + 5) = v196;
        *(v66 + 24) = v93;
      }

      else
      {
        v89 = *v45;
        v196 = *(v45 + 2);
        v195 = v89;
        *v45 = *v15;
        *(v45 + 2) = *(v15 + 2);
        v90 = v195;
        *(v15 + 2) = v196;
        *v15 = v90;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, v15) & 0x80) != 0)
        {
          v91 = *v15;
          v196 = *(v15 + 2);
          v195 = v91;
          *v15 = *(v66 + 24);
          *(v15 + 2) = *(v66 + 5);
          goto LABEL_56;
        }
      }

LABEL_57:
      v94 = *a1;
      v196 = *(a1 + 2);
      v195 = v94;
      v95 = *v15;
      *(a1 + 2) = *(v15 + 2);
      *a1 = v95;
      v96 = v195;
      *(v15 + 2) = v196;
      *v15 = v96;
      goto LABEL_58;
    }

    v24 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v15);
    v25 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1);
    if ((v24 & 0x80) == 0)
    {
      if (v25 < 0)
      {
        v26 = *a1;
        v196 = *(a1 + 2);
        v195 = v26;
        v27 = *v8;
        *(a1 + 2) = *(a2 - 1);
        *a1 = v27;
        v28 = v195;
        *(a2 - 1) = v196;
        *v8 = v28;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v15) & 0x80) != 0)
        {
          v29 = *v15;
          v196 = *(v15 + 2);
          v195 = v29;
          v30 = *a1;
          *(v15 + 2) = *(a1 + 2);
          *v15 = v30;
          v31 = v195;
          *(a1 + 2) = v196;
          *a1 = v31;
        }
      }

      goto LABEL_58;
    }

    if (v25 < 0)
    {
      v60 = *v15;
      v196 = *(v15 + 2);
      v195 = v60;
      v61 = *v8;
      *(v15 + 2) = *(a2 - 1);
      *v15 = v61;
    }

    else
    {
      v37 = *v15;
      v196 = *(v15 + 2);
      v195 = v37;
      v38 = *a1;
      *(v15 + 2) = *(a1 + 2);
      *v15 = v38;
      v39 = v195;
      *(a1 + 2) = v196;
      *a1 = v39;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) == 0)
      {
        goto LABEL_58;
      }

      v40 = *a1;
      v196 = *(a1 + 2);
      v195 = v40;
      v41 = *v8;
      *(a1 + 2) = *(a2 - 1);
      *a1 = v41;
    }

    v62 = v195;
    *(a2 - 1) = v196;
    *v8 = v62;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 - 3, a1) & 0x80) != 0)
    {
      v97 = *a1;
      v198 = *(a1 + 2);
      v197 = v97;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      v98 = a1;
      do
      {
        v99 = v98;
        v98 += 24;
      }

      while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v98, &v197) & 0x80) != 0);
      v100 = a2;
      if (v99 == a1)
      {
        v100 = a2;
        do
        {
          if (v98 >= v100)
          {
            break;
          }

          v100 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v100, &v197) & 0x80) == 0);
      }

      else
      {
        do
        {
          v100 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v100, &v197) & 0x80) == 0);
      }

      v10 = v98;
      if (v98 < v100)
      {
        v101 = v100;
        do
        {
          v195 = *v10;
          v102 = v195;
          v196 = *(v10 + 2);
          v103 = v196;
          v104 = *(v101 + 2);
          *v10 = *v101;
          *(v10 + 2) = v104;
          *(v101 + 2) = v103;
          *v101 = v102;
          do
          {
            v10 += 24;
          }

          while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v197) & 0x80) != 0);
          do
          {
            v101 -= 24;
          }

          while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v101, &v197) & 0x80) == 0);
        }

        while (v10 < v101);
      }

      v105 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v105);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v106 = *v105;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v106;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      v107 = v197;
      *(v10 - 1) = v198;
      *v105 = v107;
      if (v98 < v100)
      {
        goto LABEL_83;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *>(a1, v10 - 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *>(v10, a2))
      {
        a2 = v10 - 24;
        if (!v108)
        {
          goto LABEL_2;
        }

        goto LABEL_182;
      }

      if (!v108)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(a1, v10 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v109 = *a1;
      v198 = *(a1 + 2);
      v197 = v109;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, a2 - 3) & 0x80) != 0)
      {
        v10 = a1;
        do
        {
          v10 += 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, v10) & 0x80) == 0);
      }

      else
      {
        v110 = a1 + 24;
        do
        {
          v10 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, v110);
          v110 = v10 + 24;
        }

        while ((v111 & 0x80) == 0);
      }

      v112 = a2;
      if (v10 < a2)
      {
        v112 = a2;
        do
        {
          v112 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, v112) & 0x80) != 0);
      }

      while (v10 < v112)
      {
        v113 = *v10;
        v196 = *(v10 + 2);
        v195 = v113;
        v114 = *v112;
        *(v10 + 2) = *(v112 + 2);
        *v10 = v114;
        v115 = v195;
        *(v112 + 2) = v196;
        *v112 = v115;
        do
        {
          v10 += 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, v10) & 0x80) == 0);
        do
        {
          v112 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, v112) & 0x80) != 0);
      }

      v116 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v116);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v117;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      a4 = 0;
      v118 = v197;
      *(v10 - 1) = v198;
      *v116 = v118;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      goto LABEL_182;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1 + 9) & 0x80) != 0)
      {
        v195 = *(a1 + 72);
        v119 = v195;
        v196 = *(a1 + 11);
        v120 = v196;
        v121 = *(a2 - 1);
        *(a1 + 72) = *v8;
        *(a1 + 11) = v121;
        *(a2 - 1) = v120;
        *v8 = v119;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 9, a1 + 6) & 0x80) != 0)
        {
          v122 = *(a1 + 8);
          v123 = *(a1 + 3);
          *(a1 + 3) = *(a1 + 72);
          *(a1 + 8) = *(a1 + 11);
          *(a1 + 72) = v123;
          *(a1 + 11) = v122;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 6, a1 + 3) & 0x80) != 0)
          {
            v124 = *(a1 + 5);
            v125 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 3);
            *(a1 + 5) = *(a1 + 8);
            *(a1 + 3) = v125;
            *(a1 + 8) = v124;
            goto LABEL_117;
          }
        }
      }

      goto LABEL_182;
    }

    goto LABEL_10;
  }

  v127 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1);
  v128 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1 + 3);
  if (v127 < 0)
  {
    if (v128 < 0)
    {
      goto LABEL_180;
    }

    v184 = *a1;
    v196 = *(a1 + 2);
    v195 = v184;
    *a1 = *(a1 + 24);
    *(a1 + 2) = *(a1 + 5);
    *(a1 + 24) = v195;
    *(a1 + 5) = v196;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1 + 3) & 0x80) == 0)
    {
      goto LABEL_182;
    }

    v185 = *(a1 + 24);
    v195 = v185;
    v186 = *(a1 + 5);
    v196 = v186;
    v187 = *(a2 - 1);
    *(a1 + 24) = *v8;
    *(a1 + 5) = v187;
LABEL_181:
    *(a2 - 1) = v186;
    *v8 = v185;
    goto LABEL_182;
  }

  if ((v128 & 0x80000000) == 0)
  {
    goto LABEL_182;
  }

  v195 = *(a1 + 24);
  v129 = v195;
  v196 = *(a1 + 5);
  v130 = v196;
  v131 = *(a2 - 1);
  *(a1 + 24) = *v8;
  *(a1 + 5) = v131;
  *(a2 - 1) = v130;
  *v8 = v129;
LABEL_117:
  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1) & 0x80) != 0)
  {
    v132 = *a1;
    v196 = *(a1 + 2);
    v195 = v132;
    *a1 = *(a1 + 24);
    *(a1 + 2) = *(a1 + 5);
    *(a1 + 24) = v195;
    *(a1 + 5) = v196;
  }

LABEL_182:
  v190 = *MEMORY[0x1E69E9840];
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,0>(void *a1, void *a2, void *a3, void *a4)
{
  v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1);
  v9 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *>(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1);
        v15 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1 + 3);
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = a1[2];
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            a1[2] = v33;
            goto LABEL_27;
          }

          v28 = a1[2];
          v29 = *a1;
          *a1 = *(a1 + 3);
          a1[2] = a1[5];
          *(a1 + 3) = v29;
          a1[5] = v28;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1 + 3) & 0x80) != 0)
          {
            v30 = a1[5];
            v31 = *(a1 + 3);
            v32 = v5[2];
            *(a1 + 3) = *v5;
            a1[5] = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = a1[5];
        v17 = *(a1 + 3);
        v18 = v5[2];
        *(a1 + 3) = *v5;
        a1[5] = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, a1 + 9) & 0x80) == 0)
        {
          return 1;
        }

        v7 = a1[11];
        v8 = *(a1 + 9);
        v9 = v6[2];
        *(a1 + 9) = *v6;
        a1[11] = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 9, a1 + 6) & 0x80) == 0)
        {
          return 1;
        }

        v10 = a1[8];
        v11 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v11;
        a1[11] = v10;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 6, a1 + 3) & 0x80) == 0)
        {
          return 1;
        }

        v12 = a1[5];
        v13 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v13;
        a1[8] = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1) & 0x80) != 0)
    {
      v19 = a1[2];
      v20 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v20;
      a1[5] = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = a1 + 6;
  v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1);
  v23 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 6, a1 + 3);
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = a1[2];
      v37 = *a1;
      *a1 = *v21;
      a1[2] = a1[8];
    }

    else
    {
      v34 = a1[2];
      v35 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v35;
      a1[5] = v34;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 6, a1 + 3) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = a1[5];
      v37 = *(a1 + 3);
      *(a1 + 3) = *v21;
      a1[5] = a1[8];
    }

    *v21 = v37;
    a1[8] = v36;
  }

  else if (v23 < 0)
  {
    v24 = a1[5];
    v25 = *(a1 + 3);
    *(a1 + 3) = *v21;
    a1[5] = a1[8];
    *v21 = v25;
    a1[8] = v24;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1) & 0x80) != 0)
    {
      v26 = a1[2];
      v27 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v27;
      a1[5] = v26;
    }
  }

LABEL_33:
  v38 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v38, v21) & 0x80) != 0)
    {
      v45 = *v38;
      v46 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 11) = *(a1 + v41 + 64);
        v42[71] = 0;
        v42[48] = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v45, v42 + 3) & 0x80) == 0)
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE338FCC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DE339104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

void sub_1DE339234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id **std::unique_ptr<ADM_SPI::AudioDSPManagerPropertySet::InternalData>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void applesauce::CF::DictionaryRef::from_ns(applesauce::CF::DictionaryRef *this, NSDictionary *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFDictionaryGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_1DE339380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

uint64_t ADM_SPI::AudioDSPManagerPropertySet::setHostedDSPPropertyAtAddress(uint64_t a1, uint64_t *a2, id *a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 2003329396;
  }

  v9 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10 = **(a1 + 16);
  if (v10)
  {
    if (*(a4 + 8))
    {
      v11 = 0;
    }

    else
    {
      v11 = *a4;
      v10 = **(a1 + 16);
    }

    v13 = *a2;
    v14 = *(a2 + 2);
    v15 = *a3;
    v18 = v9;
    v12 = [v10 setHostedDSPPropertyAtAddress:v13 withData:v14 withQualifier:v15 error:{v11, &v18}];
    v16 = v18;

    v9 = v16;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t *std::unique_ptr<ADM_SPI::AudioDSPManagerProcessor::InternalData>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2 + 328);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2 + 296);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2 + 264);
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v2 + 232);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2 + 200);

    std::condition_variable::~condition_variable((v2 + 136));
    std::condition_variable::~condition_variable((v2 + 88));
    std::mutex::~mutex((v2 + 24));

    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ADM_SPI::AudioDSPManagerProcessor::~AudioDSPManagerProcessor(ADM_SPI::AudioDSPManagerProcessor *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = (this + 16);
  v2 = *(this + 2);
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  HAL_DSP_IOCallbacks::operator=(v2 + 200, v9);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v9);
  [*(*v3 + 192) clearCallbacks];
  v4 = *(this + 2);
  v5 = *(v4 + 192);
  *(v4 + 192) = 0;

  v6 = *(*(this + 2) + 16);
  *(*(this + 2) + 16) = 0;

  std::unique_ptr<ADM_SPI::AudioDSPManagerProcessor::InternalData>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<ADM_SPI::AudioDSPManagerProcessor::InternalData>::reset[abi:ne200100](v3, 0);
  v7 = *(this + 1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE339704(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HAL_DSP_IOCallbacks::operator=(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()>::operator=[abi:ne200100](a1, a2);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](a1 + 32, a2 + 32);
  std::__function::__value_func<void ()>::operator=[abi:ne200100](a1 + 64, a2 + 64);
  std::__function::__value_func<void ()>::operator=[abi:ne200100](a1 + 96, a2 + 96);
  std::__function::__value_func<void ()>::operator=[abi:ne200100](a1 + 128, a2 + 128);
  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__value_func<void ()(unsigned int)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void ADM_SPI::AudioDSPManagerProcessor::adaptToConfigurationChange(ADM_SPI::AudioDSPManagerProcessor *this, const applesauce::CF::DictionaryRef *a2, id *a3, int *a4, unsigned int *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  *this = 0;
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  memset(buf, 0, sizeof(buf));
  HAL_DSP_IOCallbacks::operator=(*(a2 + 2) + 200, buf);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v35);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v34);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v33);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v32);
  v10 = std::__function::__value_func<void ()>::~__value_func[abi:ne200100](buf);
  if (*(*(a2 + 2) + 16))
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *(*(a2 + 2) + 16);
    v13 = *a3;
    v30 = v11;
    v14 = [v12 adaptToConfigurationChange:v13 withCallbacks:a4 error:&v30];
    v15 = v30;

    applesauce::CF::DictionaryRef::from_ns(buf, v14);
    *this = *buf;
    if (a5 && v15)
    {
      *a5 = [v15 code];
    }
  }

  if (a5 && *a5)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v17;
      AMCP::Log::Scope::get_os_log_t(*v17);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v19 = *v17;
      AMCP::Log::Scope::get_os_log_t(*v17);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v23 = 0;
      v24 = 47;
      do
      {
        v25 = &aLibraryCachesC_45[v22];
        if (v24 == 47)
        {
          v23 = &aLibraryCachesC_45[v22];
        }

        v24 = v25[1];
        if (!v25[1])
        {
          break;
        }
      }

      while (v22++ < 0xFFF);
      if (v23)
      {
        v27 = v23 + 1;
      }

      else
      {
        v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi.mm";
      }

      caulk::string_from_4cc(&__p, *a5);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v27;
      *&buf[12] = 1024;
      *&buf[14] = 258;
      *&buf[18] = 2080;
      *&buf[20] = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] ADM failed to adapt, returning error %s.", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v20 = *(a2 + 2);
    std::function<void ()>::operator=(v20 + 25, a4);
    std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(v20 + 29, (a4 + 8));
    std::function<void ()>::operator=(v20 + 33, (a4 + 16));
    std::function<void ()>::operator=(v20 + 37, (a4 + 24));
    std::function<void ()>::operator=(v20 + 41, (a4 + 32));
  }

  v21 = *MEMORY[0x1E69E9840];
}

void *std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE33A02C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DE33A190(_Unwind_Exception *a1)
{
  std::unique_ptr<ADM_SPI::AudioDSPManagerPropertySet::InternalData>::reset[abi:ne200100]((v1 + 40), 0);
  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ADM_SPI::AudioDSPManagerPropertySet_Internal>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *v1;
  *v1 = 0;

  std::unique_ptr<ADM_SPI::AudioDSPManagerPropertySet::InternalData>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<ADM_SPI::AudioDSPManagerPropertySet::InternalData>::reset[abi:ne200100](v2, 0);
  v4 = *(v2 - 1);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<ADM_SPI::AudioDSPManagerPropertySet_Internal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v11 = a4;
  v9 = a6;
  v10 = a5;
  v8 = a7;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v12, a3, &v11, &v10, &v9, &v8);
}

ADM_SPI::AudioDSPManager **std::unique_ptr<ADM_SPI::AudioDSPManager>::~unique_ptr[abi:ne200100](ADM_SPI::AudioDSPManager **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ADM_SPI::AudioDSPManager::~AudioDSPManager(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

void ADM_SPI::AudioDSPManager::~AudioDSPManager(ADM_SPI::AudioDSPManager *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  v4 = *(v2 + 16);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<ADM_SPI::AudioDSPManager::InternalData>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<ADM_SPI::AudioDSPManager::InternalData>::reset[abi:ne200100](v3, 0);
  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t *std::unique_ptr<ADM_SPI::AudioDSPManager::InternalData>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ADM_SPI::AudioDSPManager *,std::shared_ptr<ADM_SPI::AudioDSPManager>::__shared_ptr_default_delete<ADM_SPI::AudioDSPManager,ADM_SPI::AudioDSPManager>,std::allocator<ADM_SPI::AudioDSPManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN7ADM_SPI15AudioDSPManagerEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ADM_SPI::AudioDSPManager *std::__shared_ptr_pointer<ADM_SPI::AudioDSPManager *,std::shared_ptr<ADM_SPI::AudioDSPManager>::__shared_ptr_default_delete<ADM_SPI::AudioDSPManager,ADM_SPI::AudioDSPManager>,std::allocator<ADM_SPI::AudioDSPManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    ADM_SPI::AudioDSPManager::~AudioDSPManager(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<ADM_SPI::AudioDSPManager *,std::shared_ptr<ADM_SPI::AudioDSPManager>::__shared_ptr_default_delete<ADM_SPI::AudioDSPManager,ADM_SPI::AudioDSPManager>,std::allocator<ADM_SPI::AudioDSPManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void ADM_SPI::AudioDSPManager::getFactoryPropertySet(ADM_SPI::AudioDSPManager *this, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (!*v3)
  {
LABEL_15:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_16;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    [*v3 getFactoryPropertySet];
    if (objc_claimAutoreleasedReturnValue())
    {
      std::allocate_shared[abi:ne200100]<ADM_SPI::AudioDSPManagerPropertySet_Internal,std::allocator<ADM_SPI::AudioDSPManagerPropertySet_Internal>,NSObject  {objcproto19HAL_DSP_PropertySet}* {__strong}&,0>();
    }

    v3 = *(a2 + 16);
    v4 = *(v3 + 8);
    if (!v4)
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v8;
        AMCP::Log::Scope::get_os_log_t(*v8);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v10 = *v8;
        AMCP::Log::Scope::get_os_log_t(*v8);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 0;
        v13 = 0;
        v14 = 47;
        do
        {
          v15 = &aLibraryCachesC_45[v12];
          if (v14 == 47)
          {
            v13 = &aLibraryCachesC_45[v12];
          }

          v14 = v15[1];
          if (!v15[1])
          {
            break;
          }
        }

        while (v12++ < 0xFFF);
        if (v13)
        {
          v17 = v13 + 1;
        }

        else
        {
          v17 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi.mm";
        }

        buf[0] = 136315394;
        *&buf[1] = v17;
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = 385;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Unable to acquire factory properties from ADM library.", buf, 0x12u);
      }

      goto LABEL_15;
    }
  }

  v6 = *(v3 + 16);
  *this = v4;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
}

void std::__shared_ptr_emplace<ADM_SPI::AudioDSPManagerProcessor_Internal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_DSPAudioStream_IOBufferReference_Context::io_downstream_buffer_REALTIME(HALS_DSPAudioStream_IOBufferReference_Context *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(*(this + 1) + 8) == 1)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v8 = 0;
      v9 = 47;
      do
      {
        v10 = &aLibraryCachesC_46[v7];
        if (v9 == 47)
        {
          v8 = &aLibraryCachesC_46[v7];
        }

        v9 = v10[1];
        if (!v10[1])
        {
          break;
        }
      }

      while (v7++ < 0xFFF);
      if (v8)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostAudioStream_IOBufferReference_Context.cpp";
      }

      v13 = 136315650;
      v14 = v12;
      v15 = 1024;
      v16 = 70;
      v17 = 2080;
      v18 = "FALSE";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s PLACEHOLDER WORK.  NOT TESTED.", &v13, 0x1Cu);
    }

    abort();
  }

  v1 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t HALS_DSPAudioStream_IOBufferReference_Context::io_upstream_buffer_REALTIME(HALS_DSPAudioStream_IOBufferReference_Context *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(*(this + 1) + 8) == 1)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v8 = 0;
      v9 = 47;
      do
      {
        v10 = &aLibraryCachesC_46[v7];
        if (v9 == 47)
        {
          v8 = &aLibraryCachesC_46[v7];
        }

        v9 = v10[1];
        if (!v10[1])
        {
          break;
        }
      }

      while (v7++ < 0xFFF);
      if (v8)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostAudioStream_IOBufferReference_Context.cpp";
      }

      v13 = 136315650;
      v14 = v12;
      v15 = 1024;
      v16 = 35;
      v17 = 2080;
      v18 = "FALSE";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s PLACEHOLDER WORK.  NOT TESTED.", &v13, 0x1Cu);
    }

    abort();
  }

  v1 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t HALS_DSPAudioStream_IOBufferReference_Context::engine_buffer_offset_REALTIME(HALS_DSPAudioStream_IOBufferReference_Context *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v2 + 100);
    if (*(this + 4) != 3)
    {
      break;
    }

    if (v4 == 1)
    {
      return *(v2 + 48);
    }

LABEL_6:
    v2 += 128;
    if (v2 == v3)
    {
      return 0;
    }
  }

  if (v4)
  {
    goto LABEL_6;
  }

  return *(v2 + 48);
}

BOOL AHAL_DSP::ADMPluginImpl::re_adapt_new_buffer_size(AHAL_DSP::ADMPluginImpl *this, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(this + 12);
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v9 = *v7;
    }

    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_86;
    }

    v13 = 0;
    v14 = 0;
    v15 = 47;
    do
    {
      v16 = &aLibraryCachesC_47[v13];
      if (v15 == 47)
      {
        v14 = &aLibraryCachesC_47[v13];
      }

      v15 = v16[1];
      if (!v16[1])
      {
        break;
      }

      v17 = v13++ >= 0xFFF;
    }

    while (!v17);
    if (v14)
    {
      v18 = v14 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_plugin_impl.cpp";
    }

    v19 = this + 24;
    if (*(this + 47) < 0)
    {
      if (*(this + 4))
      {
        v19 = *v19;
      }

      else
      {
        v19 = "[adm]";
      }
    }

    else if (!*(this + 47))
    {
      v19 = "[adm]";
    }

    *cf = 136315650;
    *&cf[4] = v18;
    *&cf[12] = 1024;
    *&cf[14] = 388;
    v54 = 2080;
    v55 = v19;
    v50 = "%32s:%-5d [ahal_dsp] %s Asked to adapt new size, but the process is not locked.";
    goto LABEL_102;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v7;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *v7;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    v39 = 0;
    v40 = 0;
    v41 = 47;
    do
    {
      v42 = &aLibraryCachesC_47[v39];
      if (v41 == 47)
      {
        v40 = &aLibraryCachesC_47[v39];
      }

      v41 = v42[1];
      if (!v42[1])
      {
        break;
      }

      v17 = v39++ >= 0xFFF;
    }

    while (!v17);
    if (v40)
    {
      v43 = v40 + 1;
    }

    else
    {
      v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_plugin_impl.cpp";
    }

    v44 = this + 24;
    if (*(this + 47) < 0)
    {
      if (*(this + 4))
      {
        v44 = *v44;
      }

      else
      {
        v44 = "[adm]";
      }
    }

    else if (!*(this + 47))
    {
      v44 = "[adm]";
    }

    *cf = 136315906;
    *&cf[4] = v43;
    *&cf[12] = 1024;
    *&cf[14] = 393;
    v54 = 2080;
    v55 = v44;
    v56 = 1024;
    v57 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %s Asked to adapt new size %d.", cf, 0x22u);
  }

  v11 = *(this + 20);
  if (!v11)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v9 = *v22;
    }

    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_86;
    }

    v28 = 0;
    v29 = 0;
    v30 = 47;
    do
    {
      v31 = &aLibraryCachesC_47[v28];
      if (v30 == 47)
      {
        v29 = &aLibraryCachesC_47[v28];
      }

      v30 = v31[1];
      if (!v31[1])
      {
        break;
      }

      v17 = v28++ >= 0xFFF;
    }

    while (!v17);
    if (v29)
    {
      v32 = v29 + 1;
    }

    else
    {
      v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_plugin_impl.cpp";
    }

    v33 = this + 24;
    if (*(this + 47) < 0)
    {
      if (*(this + 4))
      {
        v33 = *v33;
      }

      else
      {
        v33 = "[adm]";
      }
    }

    else if (!*(this + 47))
    {
      v33 = "[adm]";
    }

    *cf = 136315650;
    *&cf[4] = v32;
    *&cf[12] = 1024;
    *&cf[14] = 398;
    v54 = 2080;
    v55 = v33;
    v50 = "%32s:%-5d [ahal_dsp] %s No existing adapt to re-adapt size with.";
LABEL_102:
    _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, v50, cf, 0x1Cu);
    goto LABEL_12;
  }

  if (*(v11 + 280))
  {
LABEL_12:
    result = 0;
    goto LABEL_86;
  }

  v23 = *(this + 26);
  v24 = **(v11 + 264);
  if (v24)
  {
    v25 = [v24 objectForKeyedSubscript:@"io context description"];
    if (v25)
    {
      LODWORD(valuePtr) = a2;
      v26 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      *cf = v26;
      if (!v26)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      [v25 setObject:v26 forKeyedSubscript:@"io context buffer size"];
      if (*cf)
      {
        CFRelease(*cf);
      }
    }

    v27 = **(v11 + 264);
  }

  else
  {
    v27 = 0;
  }

  v34 = *v11;
  AHAL_DSP::ADMDict_ConfigurationChangeRequest::last_dictionary(cf, v27);
  v35 = (v11 + 280);
  ADM_SPI::AudioDSPManagerProcessor::adaptToConfigurationChange(&valuePtr, v34, cf, v23, (v11 + 280));
  if (*cf)
  {
    CFRelease(*cf);
  }

  AHAL_DSP::ADMDict_AdaptResponse::parse((v11 + 272), valuePtr);
  v36 = *(v11 + 16);
  if (v36)
  {
    v37 = std::__shared_weak_count::lock(v36);
    if (v37)
    {
      v38 = *(v11 + 8);
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  AHAL_DSP::ADMUtilNegotiateAdapt::util_get_primary_stream(cf, v38);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v45 = *(v11 + 272);
  v46 = *cf;
  v47 = *&cf[8];
  if ((v45 & 0x100000000) != 0)
  {
    if (*&cf[8])
    {
      atomic_fetch_add_explicit((*&cf[8] + 8), 1uLL, memory_order_relaxed);
    }

    AHAL_DSP::ADMUtilNegotiateAdapt::util_set_latency_on_modifier(v46, v45);
  }

  else
  {
    if (*&cf[8])
    {
      atomic_fetch_add_explicit((*&cf[8] + 8), 1uLL, memory_order_relaxed);
    }

    AHAL_DSP::ADMUtilNegotiateAdapt::util_set_latency_on_modifier(v46, 0);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    v48 = *v35;
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  else
  {
    v48 = *v35;
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  result = v48 == 0;
LABEL_86:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE33AFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);

  _Unwind_Resume(a1);
}

void non-virtual thunk toAHAL_DSP::ADMPluginImpl::~ADMPluginImpl(AHAL_DSP::ADMPluginImpl *this)
{
  AHAL_DSP::ADMPluginImpl::~ADMPluginImpl((this - 16));

  JUMPOUT(0x1E12C1730);
}

{
  AHAL_DSP::ADMPluginImpl::~ADMPluginImpl((this - 16));
}

void AHAL_DSP::ADMPluginImpl::~ADMPluginImpl(AHAL_DSP::ADMPluginImpl *this)
{
  *this = &unk_1F59671C0;
  *(this + 2) = &unk_1F5967250;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 6);
      if (v4)
      {
        (*(*v4 + 88))(&v17);
        AHAL_DSP::ADMUtilNegotiateAdapt::reset_modifiers(&v17);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 24);
  *(this + 23) = 0;
  *(this + 24) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 13);
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<HAL_DSP_IOCallbacks>::reset[abi:ne200100](this + 26, 0);
  std::unique_ptr<AHAL_DSP::PluginIOHelper>::reset[abi:ne200100](this + 25, 0);
  v8 = *(this + 24);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 21);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 19);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 13);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 11);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 9);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(this + 7);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  AHAL_DSP::ADMPluginImpl::~ADMPluginImpl(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::unique_ptr<HAL_DSP_IOCallbacks>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2 + 128);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2 + 96);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2 + 64);
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v2 + 32);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t *std::unique_ptr<AHAL_DSP::PluginIOHelper>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 360);
    if (v3)
    {
      *(v2 + 368) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 336);
    if (v4)
    {
      *(v2 + 344) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 312);
    if (v5)
    {
      *(v2 + 320) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 288);
    if (v6)
    {
      *(v2 + 296) = v6;
      operator delete(v6);
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 272));
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 248));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

const char *AHAL_DSP::ADMPluginImpl::get_logging_tag(AHAL_DSP::ADMPluginImpl *this)
{
  if (*(this + 47) < 0)
  {
    if (*(this + 4))
    {
      return *(this + 3);
    }

    else
    {
      return "[adm]";
    }
  }

  else if (*(this + 47))
  {
    return this + 24;
  }

  else
  {
    return "[adm]";
  }
}

void AHAL_DSP::ADMPluginImpl::on_dsp_property_change_event(AHAL_DSP::ADMPluginImpl *this, const AudioObjectPropertyAddress *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(this + 6))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1DE33B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AHAL_DSP::PluginEventPropertyChange>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59679C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ADMPluginImpl::process_REALTIME(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 12));
  if ((v2 & 1) == 0)
  {
    return 2;
  }

  v5 = atomic_load((a1 + 8));
  if (v5 == 1)
  {
    v6 = *(a1 + 184);
    if (v6 && AHAL_DSP::BufferSizeChangeSynchronizer::maybe_enque_adapt_REALTIME(v6, *(a2 + 64)))
    {
      AHAL_DSP::PluginGenericImpl::process_REALTIME(a1, a2);
      return 0;
    }

    if (!*(a1 + 200))
    {
      return 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(a1 + 48);
        if (v11)
        {
          (*(*v11 + 24))(v11, a1 + 216);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    AHAL_DSP::PluginIOHelper::load_from_REALTIME(*(a1 + 200), a2);
    v12 = *(a1 + 200);
    std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(*(a1 + 208) + 56), *(v12 + 200), v12, *(v12 + 208), *(v12 + 216), *(v12 + 224), *(v12 + 232));
    result = *(a1 + 56);
    if (result)
    {
      result = std::__shared_weak_count::lock(result);
      if (result)
      {
        v13 = result;
        v14 = *(a1 + 48);
        if (v14)
        {
          (*(*v14 + 24))(v14, a1 + 232);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        return 0;
      }
    }
  }

  else
  {

    return AHAL_DSP::PluginGenericImpl::process_REALTIME(a1, a2);
  }

  return result;
}

uint64_t AHAL_DSP::ADMPluginImpl::unlock_processing(atomic_uchar *this)
{
  if (!(*(*this + 72))(this))
  {
    return 2;
  }

  atomic_exchange(this + 12, 0);
  v2 = atomic_load(this + 2);
  if (v2 != 1)
  {
    return 0;
  }

  result = *(this + 7);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v4 = result;
      v5 = *(this + 6);
      if (v5)
      {
        v6 = *(this + 26);
        if (v6)
        {
          if (*(v6 + 152))
          {
            v7 = (*(*v5 + 48))(v5);
            if ((v7 & 0x100000000) != 0)
            {
              v8 = v7;
            }

            else
            {
              v8 = 0;
            }

            std::function<void ()>::operator()(*(v6 + 152), v8);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return 0;
    }
  }

  return result;
}

uint64_t AHAL_DSP::ADMPluginImpl::lock_processing(atomic_uchar *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(this + 14))
  {
    AHAL_DSP::ADMPluginImpl::negotiate_host_modifiers(this);
  }

  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_47[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_47[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_plugin_impl.cpp";
    }

    v15 = this + 24;
    if (this[47] < 0)
    {
      if (*(this + 4))
      {
        v15 = *v15;
      }

      else
      {
        v15 = "[adm]";
      }
    }

    else if (!this[47])
    {
      v15 = "[adm]";
    }

    cf = 136315650;
    cf_4 = v14;
    v18 = 1024;
    v19 = 315;
    v20 = 2080;
    v21 = v15;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %s There is no DSP instance for processing.", &cf, 0x1Cu);
  }

  v6 = (*(*this + 72))(this);
  result = 1;
  if ((v6 & 1) == 0)
  {
    atomic_exchange(this + 12, 1u);
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void AHAL_DSP::ADMPluginImpl::negotiate_host_modifiers(AHAL_DSP::ADMPluginImpl *this)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *(this + 14);
  operator new();
}

void sub_1DE33D56C(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v22 = va_arg(va1, const void *);
  applesauce::CF::StringRef::~StringRef(va1);

  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AHAL_DSP::BufferSizeChangeSynchronizer>::__on_zero_shared(uint64_t a1)
{
  AHAL_DSP::BufferSizeChangeSynchronizer::set_current_size((a1 + 24), 0);
  *(a1 + 168) = &unk_1F5966BA8;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 192);
  caulk::concurrent::message::~message((a1 + 168));
  std::condition_variable::~condition_variable((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_emplace<AHAL_DSP::BufferSizeChangeSynchronizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59677B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AHAL_DSP::ADMUtilNegotiateAdapt>::__on_zero_shared(uint64_t a1)
{
  AHAL_DSP::ADMDict_ConfigurationChangeRequest::~ADMDict_ConfigurationChangeRequest((a1 + 208));
  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  AHAL_DSP::ADMDict_ConfigurationChangeRequest::~ADMDict_ConfigurationChangeRequest((a1 + 80));
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<AHAL_DSP::ADMUtilNegotiateAdapt>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ADMPluginImpl::dsp_properties@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  if (v2)
  {
    v3 = *(this + 104);
    *a2 = v2;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t AHAL_DSP::ADMPluginImpl::configuration_properties@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 80))
  {
    AHAL_DSP::ProcessPropertySetConfiguration::clone(&v2);
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

uint64_t AHAL_DSP::ADMPluginImpl::configure_plugin(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((a1 + 12));
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = **v6;
      {
        v8 = *(a2 + 8);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        AHAL_DSP::ProcessPropertySetConfiguration::clone(&__p);
      }
    }

    v9 = *(a1 + 88);
    *(a1 + 80) = 0u;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v10 = atomic_load((a1 + 12));
    if (v10)
    {
      v3 = 3;
    }

    else
    {
      AHAL_DSP::PluginGenericImpl::set_processing_mode(a1, 0);
      v11 = *(a1 + 120);
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v12 = *(a1 + 104);
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = *(a1 + 72);
      if (v13)
      {
        v13 = std::__shared_weak_count::lock(v13);
        if (v13)
        {
          v14 = *(a1 + 64);
          if (v14)
          {
            ADM_SPI::AudioDSPManager::getFactoryPropertySet(&__p, v14);
            std::allocate_shared[abi:ne200100]<AHAL_DSP::ADMPluginPropertySetImpl,std::allocator<AHAL_DSP::ADMPluginPropertySetImpl>,std::shared_ptr<ADM_SPI::AudioDSPManagerPropertySet>,0>();
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v13);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v18 = *v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v20 = 0;
        v21 = 47;
        do
        {
          v22 = &aLibraryCachesC_47[v19];
          if (v21 == 47)
          {
            v20 = &aLibraryCachesC_47[v19];
          }

          v21 = v22[1];
          if (!v22[1])
          {
            break;
          }
        }

        while (v19++ < 0xFFF);
        if (v20)
        {
          v24 = v20 + 1;
        }

        else
        {
          v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_plugin_impl.cpp";
        }

        v25 = (a1 + 24);
        if (*(a1 + 47) < 0)
        {
          if (*(a1 + 32))
          {
            v25 = *v25;
          }

          else
          {
            v25 = "[adm]";
          }
        }

        else if (!*(a1 + 47))
        {
          v25 = "[adm]";
        }

        __p = 136315650;
        __p_4 = v24;
        __p_12 = 1024;
        __p_14 = 123;
        v32 = 2080;
        v33 = v25;
        _os_log_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] %s No DSP processing specified.", &__p, 0x1Cu);
      }

      v3 = 5;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1DE33E874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  ADM_SPI::AudioDSPManagerProcessor::~AudioDSPManagerProcessor(v33);

  std::__shared_weak_count::~__shared_weak_count(v31);
  operator delete(v35);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](&a17);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a16);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<void (AHAL_DSP::ADMPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::ADMPluginImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::ADMPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::ADMPluginImpl*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIMN8AHAL_DSP13ADMPluginImplEFvRK26AudioObjectPropertyAddressEJPS2_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (AHAL_DSP::ADMPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::ADMPluginImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::ADMPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::ADMPluginImpl*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind<void (AHAL_DSP::ADMPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::ADMPluginImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::ADMPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::ADMPluginImpl*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5967350;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__shared_ptr_pointer<AHAL_DSP::ADMPluginImpl *,std::shared_ptr<AHAL_DSP::ADMPluginImpl>::__shared_ptr_default_delete<AHAL_DSP::ADMPluginImpl,AHAL_DSP::ADMPluginImpl>,std::allocator<AHAL_DSP::ADMPluginImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN8AHAL_DSP13ADMPluginImplEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AHAL_DSP::ADMPluginImpl *,std::shared_ptr<AHAL_DSP::ADMPluginImpl>::__shared_ptr_default_delete<AHAL_DSP::ADMPluginImpl,AHAL_DSP::ADMPluginImpl>,std::allocator<AHAL_DSP::ADMPluginImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AHAL_DSP::ADMPluginImpl *,std::shared_ptr<AHAL_DSP::ADMPluginImpl>::__shared_ptr_default_delete<AHAL_DSP::ADMPluginImpl,AHAL_DSP::ADMPluginImpl>,std::allocator<AHAL_DSP::ADMPluginImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

CFDictionaryRef AHAL_DSP::PropertyListDeepImmutableCopy(__CFString *cf, const void *a2)
{
  v2 = cf;
  v39 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_36;
  }

  v3 = CFGetTypeID(cf);
  if (v3 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x8000100u);
    if (CStringPtr)
    {
      v5 = *MEMORY[0x1E69E9840];
      v6 = CStringPtr;
      v7 = *MEMORY[0x1E695E478];

      return CFStringCreateWithCString(v7, v6, 0x8000100u);
    }

    Length = CFStringGetLength(v2);
    v37[7] = 0;
    std::vector<unsigned short>::vector[abi:ne200100](buf, Length);
    v41.length = (*&buf[8] - *buf) >> 1;
    v41.location = 0;
    CFStringGetCharacters(v2, v41, *buf);
    v2 = CFStringCreateWithCharacters(*MEMORY[0x1E695E478], *buf, (*&buf[8] - *buf) >> 1);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

LABEL_36:
    v30 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == CFArrayGetTypeID())
  {
    v10 = *MEMORY[0x1E69E9840];

    return AHAL_DSP::ArrayDeepImmutableCopy(v2, v9);
  }

  else if (v3 == CFDictionaryGetTypeID())
  {
    v12 = *MEMORY[0x1E69E9840];

    return AHAL_DSP::DictionaryDeepImmutableCopy(v2, v11);
  }

  else if (v3 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v2);
    v15 = CFDataGetLength(v2);
    v16 = *MEMORY[0x1E69E9840];
    v17 = v15;
    v18 = *MEMORY[0x1E695E478];

    return CFDataCreate(v18, BytePtr, v17);
  }

  else
  {
    if (v3 == CFNumberGetTypeID())
    {
      ByteSize = CFNumberGetByteSize(v2);
      Type = CFNumberGetType(v2);
      MEMORY[0x1EEE9AC00](Type);
      v21 = v37 - ((ByteSize + 15) & 0xFFFFFFFFFFFFFFF0);
      CFNumberGetValue(v2, Type, v21);
      v2 = CFNumberCreate(*MEMORY[0x1E695E478], Type, v21);
      goto LABEL_36;
    }

    if (v3 == CFBooleanGetTypeID())
    {
      CFRetain(v2);
      goto LABEL_36;
    }

    TypeID = CFDateGetTypeID();
    if (v3 != TypeID)
    {
      v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v26 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(TypeID);
      }

      v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = *v28;
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      else
      {
        v29 = *v28;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = 0;
        v32 = 0;
        v33 = 47;
        do
        {
          v34 = &aLibraryCachesC_48[v31];
          if (v33 == 47)
          {
            v32 = &aLibraryCachesC_48[v31];
          }

          v33 = v34[1];
          if (!v34[1])
          {
            break;
          }
        }

        while (v31++ < 0xFFF);
        if (v32)
        {
          v36 = v32 + 1;
        }

        else
        {
          v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-common/ahal_dsp_cf_deep_copy.cpp";
        }

        *buf = 136315394;
        *&buf[4] = v36;
        *&buf[12] = 1024;
        *&buf[14] = 124;
        _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Not a supported property list type. Can not make a deep copy for this type.", buf, 0x12u);
      }

      v2 = 0;
      goto LABEL_36;
    }

    MEMORY[0x1E12C0240](v2);
    v24 = *MEMORY[0x1E69E9840];
    v25 = *MEMORY[0x1E695E478];

    return CFDateCreate(v25, v23);
  }
}