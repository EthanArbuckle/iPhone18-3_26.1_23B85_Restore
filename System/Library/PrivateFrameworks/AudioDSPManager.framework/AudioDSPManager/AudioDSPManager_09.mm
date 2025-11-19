void sub_223BE91D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<applesauce::CF::TypeRef>::~optional(uint64_t a1)
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

void std::__expected_base<std::shared_ptr<adm::graph::KernelProperty>,std::string>::__repr::__destroy_union_member[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }

  else if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
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

void sub_223BE9508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
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

void adm::DSPGraphBasicConfiguration::~DSPGraphBasicConfiguration(void **this)
{
  v2 = this + 16;
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this + 6;
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t adm::graph::detail::KernelPropertyType<std::vector<unsigned int>>::getEntry@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = (*(*a1 + 32))(a1);
  *a2 = a1[2];
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void adm::graph::detail::KernelPropertyType<std::vector<unsigned int>>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CC50;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x223DF43A0);
}

void *adm::graph::detail::KernelPropertyType<std::vector<unsigned int>>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CC50;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t adm::graph::detail::KernelPropertyType<applesauce::CF::TypeRef>::getEntry@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = (*(*a1 + 32))(a1);
  *a2 = a1[2];
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void adm::graph::detail::KernelPropertyType<applesauce::CF::TypeRef>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CB70;
  v1 = a1[2];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x223DF43A0);
}

void *adm::graph::detail::KernelPropertyType<applesauce::CF::TypeRef>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CB70;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
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

unint64_t applesauce::CF::details::find_at_key<std::string,char const* const&>(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = applesauce::CF::details::at_key<char const* const&>(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return applesauce::CF::convert_to<std::string,0>(a1, v4);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  Count = CFDictionaryGetCount(theDict);
  std::vector<void const*>::resize((a1 + 16), Count);
  std::vector<void const*>::resize(v3, Count);
  CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<std::vector<std::string>,char const* const&>(char *a1, const __CFDictionary *a2, char *__s)
{
  v4 = applesauce::CF::details::at_key<char const* const&>(a2, __s);
  if (v4 && (v5 = v4, TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v5)))
  {
    Count = CFArrayGetCount(v5);
    v25 = 0uLL;
    v26 = 0;
    if (Count << 32)
    {
      if (Count <= 0xAAAAAAAAAAAAAAALL)
      {
        v27.__end_cap_.__value_ = &v25;
        std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](Count);
      }

LABEL_27:
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    if (Count < 1)
    {
LABEL_21:
      *a1 = v25;
      *(a1 + 2) = v26;
      v26 = 0;
      v25 = 0uLL;
      a1[24] = 1;
    }

    else
    {
      v8 = 0;
      v9 = Count & 0x7FFFFFFF;
      v20 = a1[24];
      v21 = *a1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        applesauce::CF::convert_as<std::string,0>(&v22, ValueAtIndex);
        if (v24 != 1)
        {
          break;
        }

        v11 = *(&v25 + 1);
        if (*(&v25 + 1) >= v26)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((*(&v25 + 1) - v25) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            a1[24] = v20;
            *a1 = v21;
            goto LABEL_27;
          }

          if (0x5555555555555556 * ((v26 - v25) >> 3) > v14)
          {
            v14 = 0x5555555555555556 * ((v26 - v25) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          v27.__end_cap_.__value_ = &v25;
          if (v15)
          {
            std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](v15);
          }

          v16 = 8 * ((*(&v25 + 1) - v25) >> 3);
          *v16 = v22;
          *(v16 + 16) = v23;
          v23 = 0;
          v22 = 0uLL;
          v12 = 24 * v13 + 24;
          v17 = 24 * v13 - (*(&v25 + 1) - v25);
          memcpy((v16 - (*(&v25 + 1) - v25)), v25, *(&v25 + 1) - v25);
          v18 = v25;
          v19 = v26;
          *&v25 = v17;
          *(&v25 + 1) = v12;
          v26 = 0;
          v27.__first_ = v18;
          v27.__end_ = v18;
          v27.__end_cap_.__value_ = v19;
          v27.__begin_ = v18;
          std::__split_buffer<std::string>::~__split_buffer(&v27);
        }

        else
        {
          **(&v25 + 1) = v22;
          *(v11 + 16) = v23;
          v23 = 0;
          v22 = 0uLL;
          v12 = v11 + 24;
        }

        *(&v25 + 1) = v12;
        if (v9 == ++v8)
        {
          goto LABEL_21;
        }
      }

      a1[24] = 0;
      *a1 = 0;
    }

    v27.__first_ = &v25;
    std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v27);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_223BE9F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12)
{
  v12[24] = a10;
  *v12 = a12;
  __clang_call_terminate(a1);
}

const void *applesauce::CF::details::at_key<char const* const&>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_223BEA018(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x223BEA004);
}

void std::vector<void const*>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<void const*>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_223BEA1FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void adm::getMacMicDriverConfigurationKey(_BYTE *a1)
{
  v2 = [_TtC20AudioDSPManagerSwift21InteropLayerMacDriver getKeyForClientDescriptionWithKind:0 mode:0];
  applesauce::CF::StringRef::from_get(&cf, v2);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::convert_to<std::string,0>(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_223BEA2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::StringRef::~StringRef(&a10);

  _Unwind_Resume(a1);
}

uint64_t adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if (v2 <= 44099)
  {
    if (v2 > 23999)
    {
      if (v2 == 24000)
      {
        v3 = 0x4C7CB07FE50E5462;
        goto LABEL_22;
      }

      if (v2 == 32000)
      {
        v3 = 0x5460BCD664C6C7FALL;
        goto LABEL_22;
      }
    }

    else
    {
      if (v2 == 8000)
      {
        v3 = 0xDB58BC24D81FB94FLL;
        goto LABEL_22;
      }

      if (v2 == 16000)
      {
        v3 = 0xF3D427428C99B29;
        goto LABEL_22;
      }
    }

LABEL_27:
    v5 = 0;
    *result = 0;
    goto LABEL_28;
  }

  if (v2 <= 88199)
  {
    if (v2 == 44100)
    {
      v3 = 0xEF2093B88F8E7C91;
      goto LABEL_22;
    }

    if (v2 == 48000)
    {
      v3 = 0x4709E2ED84FF14BLL;
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v2 == 88200)
  {
    v3 = 0xD64B2C69CF7E5942;
    goto LABEL_22;
  }

  if (v2 == 96000)
  {
    v3 = 0x26F9951B5B225FF3;
    goto LABEL_22;
  }

  if (v2 != 192000)
  {
    goto LABEL_27;
  }

  v3 = 0xA35EFE3E1F8EBC3ALL;
LABEL_22:
  if (*(a2 + 8) != 1819304813)
  {
    goto LABEL_27;
  }

  v4 = *(a2 + 12);
  if ((v4 & 0x20) != 0 || (v4 & 1) == 0 || *(a2 + 32) != 32)
  {
    goto LABEL_27;
  }

  *result = *(a2 + 28);
  *(result + 4) = 0;
  *(result + 8) = 0xA324521D2548FDC2;
  *(result + 16) = v3;
  v5 = 1;
LABEL_28:
  *(result + 24) = v5;
  return result;
}

uint64_t adm::exclaves::utility::convert_to<std::optional<audiodsputility_outputport_s>,adm::exclaves::OutputPort>(int a1)
{
  if (a1 > 1885892726)
  {
    if (a1 > 1886613610)
    {
      if (a1 > 1886680174)
      {
        if (a1 == 1886680175)
        {
          return 0xDEBD14632E00370BLL;
        }

        else
        {
          v1 = 0;
          if (a1 == 1886745455)
          {
            return 0xE0BAAD14F9DBDDF0;
          }
        }
      }

      else if (a1 == 1886613611)
      {
        return 0x2F66DF9B2814CFB5;
      }

      else
      {
        v1 = 0;
        if (a1 == 1886614639)
        {
          return 0x57839668489FE6E1;
        }
      }
    }

    else if (a1 > 1886154612)
    {
      if (a1 == 1886154613)
      {
        return 0x92D97930F1887DE3;
      }

      else
      {
        v1 = 0;
        if (a1 == 1886545251)
        {
          return 0xFE52B066A3299AA1;
        }
      }
    }

    else if (a1 == 1885892727)
    {
      return 0xF8050C060D986E6BLL;
    }

    else
    {
      v1 = 0;
      if (a1 == 1886152047)
      {
        return 0xA5B814BA7E080C1ALL;
      }
    }
  }

  else if (a1 > 1885888866)
  {
    if (a1 > 1885892673)
    {
      if (a1 == 1885892674)
      {
        return 0x7E234EE52CCEAB90;
      }

      else
      {
        v1 = 0;
        if (a1 == 1885892706)
        {
          return 0xB5C617462A130B2FLL;
        }
      }
    }

    else if (a1 == 1885888867)
    {
      return 0xC355D4D55002AF8CLL;
    }

    else
    {
      v1 = 0;
      if (a1 == 1885889645)
      {
        return 0x455F57CA4B039ED9;
      }
    }
  }

  else if (a1 > 1885433974)
  {
    if (a1 == 1885433975)
    {
      return 0x5814DD695070736FLL;
    }

    else
    {
      v1 = 0;
      if (a1 == 1885631344)
      {
        return 0xD333A5300DE06CF0;
      }
    }
  }

  else if (a1 == 1885433964)
  {
    return 0xAC3D9F9FC752B77DLL;
  }

  else
  {
    v1 = 0;
    if (a1 == 1885433971)
    {
      return 0xB89E299E0626F289;
    }
  }

  return v1;
}

uint64_t adm::exclaves::utility::convert_to<std::optional<audiodsputility_parameterid_s>,adm::exclaves::ParameterID>(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_223C03A90[a1];
  }
}

uint64_t adm::exclaves::utility::convert_to<std::optional<float>,audiodsputility_parametervalue_s>(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = 0.0;
  if (*a1 <= 0xE9CAC24E271E100FLL)
  {
    if (v2 > 0xBE1AC77697E53FFBLL)
    {
      if (v2 == 0xBE1AC77697E53FFCLL)
      {
        v3 = *(a1 + 8);
        goto LABEL_24;
      }

      if (v2 == 0xC83C98BC329601F9)
      {
        goto LABEL_23;
      }

      v4 = 0xE1D8FF437BB62643;
      goto LABEL_13;
    }

    if (v2 != 0x8695345E04E75645 && v2 != 0xB2A314BCFDE57EE2)
    {
      v4 = 0xBA94426FF040F022;
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  if (v2 <= 0x23580A01CC35D89DLL)
  {
    if (v2 != 0xE9CAC24E271E1010 && v2 != 0xF64FC5679D8C50C8)
    {
      v4 = 0xF876E807C3E4A3E7;
LABEL_13:
      if (v2 != v4)
      {
        return v1 | LODWORD(v3);
      }
    }

LABEL_23:
    LOBYTE(v3) = *(a1 + 8);
    v3 = LODWORD(v3);
    goto LABEL_24;
  }

  if (v2 == 0x23580A01CC35D89ELL || v2 == 0x67D58230E14B515BLL)
  {
    goto LABEL_23;
  }

  if (v2 == 0x7F1E21C17219CAE8)
  {
    v5 = *(a1 + 8);
    if (v5 > 0xF7C7674340E151C7)
    {
      switch(v5)
      {
        case 0xF7C7674340E151C8:
          goto LABEL_24;
        case 0xE69699D348D1432:
          v3 = 4.0;
          goto LABEL_24;
        case 0x2C1A98D65FB58883:
          v3 = 1.0;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v5)
      {
        case 0x8D3025BDD0206734:
          v3 = 5.0;
          goto LABEL_24;
        case 0x966DBF642921EE02:
          v3 = 3.0;
          goto LABEL_24;
        case 0xB941EFAD2C01A1F7:
          v3 = 2.0;
LABEL_24:
          v1 = 0x100000000;
          return v1 | LODWORD(v3);
      }
    }

    v7 = v5 == 0x996B795339B4732BLL;
    v8 = v5 == 0x996B795339B4732BLL;
    if (v7)
    {
      v3 = 6.0;
    }

    v1 = v8 << 32;
  }

  return v1 | LODWORD(v3);
}

uint64_t adm::exclaves::utility::convert_to<std::optional<adm::exclaves::ParameterID>,unsigned int>(int a1)
{
  if (a1 > 1886220898)
  {
    if (a1 > 1936748641)
    {
      switch(a1)
      {
        case 1936748642:
          v1 = 0x100000000;
          v2 = 4;
          return v2 | v1;
        case 1969844082:
          v2 = 0;
          v1 = 0x100000000;
          return v2 | v1;
        case 1987339878:
          v1 = 0x100000000;
          v2 = 2;
          return v2 | v1;
      }
    }

    else
    {
      switch(a1)
      {
        case 1886220899:
          v1 = 0x100000000;
          v2 = 11;
          return v2 | v1;
        case 1886609763:
          v1 = 0x100000000;
          v2 = 9;
          return v2 | v1;
        case 1886613602:
          v1 = 0x100000000;
          v2 = 8;
          return v2 | v1;
      }
    }

LABEL_28:
    v1 = 0;
    v2 = 0;
    return v2 | v1;
  }

  if (a1 > 1684628339)
  {
    switch(a1)
    {
      case 1684628340:
        v1 = 0x100000000;
        v2 = 3;
        return v2 | v1;
      case 1701015406:
        v1 = 0x100000000;
        v2 = 6;
        return v2 | v1;
      case 1885565539:
        v1 = 0x100000000;
        v2 = 10;
        return v2 | v1;
    }

    goto LABEL_28;
  }

  if (a1 == 1633969524)
  {
    v1 = 0x100000000;
    v2 = 5;
    return v2 | v1;
  }

  if (a1 == 1650811756)
  {
    v1 = 0x100000000;
    v2 = 7;
    return v2 | v1;
  }

  if (a1 != 1651797616)
  {
    goto LABEL_28;
  }

  v1 = 0x100000000;
  v2 = 1;
  return v2 | v1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = *a1;
    if (v7 > 9)
    {
      v8 = "number";
    }

    else
    {
      v8 = off_2784F0840[v7];
    }

    std::string::basic_string[abi:ne200100]<0>(&v9, v8);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "cannot use operator[] with a string argument with ", &v9);
    nlohmann::detail::type_error::create(exception, 305, &__p);
  }

  v3 = *(a1 + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v4 = *std::__tree<std::string>::__find_equal<std::string>(v3, &v9, &__p);
  if (!v4)
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_223BEAD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,CA::StreamDescription const&>(unsigned __int8 *a1, uint64_t **a2)
{
  v2 = a2;
  v4 = *a2;
  v55[0] = 7;
  v56 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "sample_rate");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  v6 = *v5;
  *v5 = 7;
  v55[0] = v6;
  v7 = *(v5 + 1);
  *(v5 + 1) = v4;
  v56 = v7;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v56, v6);
  v8 = v2[2];
  v53[0] = 6;
  v54 = v8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "format_id");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  v10 = *v9;
  *v9 = 6;
  v53[0] = v10;
  v11 = *(v9 + 1);
  *(v9 + 1) = v8;
  v54 = v11;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v54, v10);
  v12 = v2[3];
  v51[0] = 6;
  v52 = v12;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "format_flags");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  v14 = *v13;
  *v13 = 6;
  v51[0] = v14;
  v15 = *(v13 + 1);
  *(v13 + 1) = v12;
  v52 = v15;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v52, v14);
  v16 = v2[4];
  v49[0] = 6;
  v50 = v16;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  v17 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "bytes_per_packet");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  v18 = *v17;
  *v17 = 6;
  v49[0] = v18;
  v19 = *(v17 + 1);
  *(v17 + 1) = v16;
  v50 = v19;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v50, v18);
  v20 = v2[5];
  v47[0] = 6;
  v48 = v20;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "frames_per_packet");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  v22 = *v21;
  *v21 = 6;
  v47[0] = v22;
  v23 = *(v21 + 1);
  *(v21 + 1) = v20;
  v48 = v23;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v48, v22);
  v24 = v2[6];
  v45[0] = 6;
  v46 = v24;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  v25 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "bytes_per_frame");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  v26 = *v25;
  *v25 = 6;
  v45[0] = v26;
  v27 = *(v25 + 1);
  *(v25 + 1) = v24;
  v46 = v27;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v46, v26);
  v28 = v2[7];
  v43[0] = 6;
  v44 = v28;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  v29 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "channels_per_frame");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  v30 = *v29;
  *v29 = 6;
  v43[0] = v30;
  v31 = *(v29 + 1);
  *(v29 + 1) = v28;
  v44 = v31;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v44, v30);
  v32 = v2[8];
  v41[0] = 6;
  v42 = v32;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "bits_per_channel");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  v34 = *v33;
  *v33 = 6;
  v41[0] = v34;
  v35 = *(v33 + 1);
  *(v33 + 1) = v32;
  v42 = v35;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v42, v34);
  v36 = v2[9];
  v39[0] = 6;
  v40 = v36;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "reserved");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  LODWORD(v2) = *v37;
  *v37 = 6;
  v39[0] = v2;
  v38 = *(v37 + 1);
  *(v37 + 1) = v36;
  v40 = v38;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v40, v2);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == 1 && a3 == 2;
  if (!v5 || (v6 = *(a2 + 16), *v6 != 3))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v23, a2, a3);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(v21, v6, *(a2 + 24));
  if (v21[0] != 3 || (v7 = v22) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    if (v21[0] > 9uLL)
    {
      v14 = "number";
    }

    else
    {
      v14 = off_2784F0840[v21[0]];
    }

    std::string::basic_string[abi:ne200100]<0>(&v23, v14);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, "incompatible ReferenceType for get_ref, actual type is ", &v23);
    nlohmann::detail::type_error::create(exception, 303, &v24);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(v15, *(a2 + 48), *(a2 + 56));
  v8 = *v7;
  v18 = v7[2];
  *__p = v8;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v9 = v15[0];
  v19[0] = v15[0];
  v20 = v16;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
  v15[0] = 0;
  v16 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    v10 = __cxa_allocate_exception(0x20uLL);
    v11 = *a1;
    if (v11 > 9)
    {
      v12 = "number";
    }

    else
    {
      v12 = off_2784F0840[v11];
    }

    std::string::basic_string[abi:ne200100]<0>(&v23, v12);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, "cannot use push_back() with ", &v23);
    nlohmann::detail::type_error::create(v10, 308, &v24);
  }

  if (!*std::__tree<std::string>::__find_equal<std::string>(*(a1 + 1), &v23, __p))
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v9);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v15[0]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
}

void sub_223BEB714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  if (a27 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[11],char [11],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[6],char [6],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~pair(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 32), *(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[8],char [8],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[17],char [17],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void std::__shared_ptr_emplace<adm::vp::UplinkConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28371D838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void adm::vp::convert(_DWORD *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  *a1 = *a2 != 0;
  a1[1] = (v4 - v5) >> 6;
  v6 = a1 + 2;
  bzero(a1 + 2, 0x388uLL);
  a1[229] = *(a2 + 56);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40) == v7;
  v9 = (*(a2 + 40) - v7) >> 2;
  a1[228] = v9;
  if (!v8)
  {
    if (v9 <= 1)
    {
      v9 = 1;
    }

    memcpy(a1 + 212, v7, 4 * v9);
  }

  if (v5 != v4)
  {
    v10 = 0;
    v11 = a1 + 10;
    v12 = a1 + 5;
    v13 = a1 + 62;
    v14 = a1 + 61;
    do
    {
      if (*(v5 + 60) == 1)
      {
        v15 = *(v5 + 56);
      }

      else
      {
        v15 = 0;
      }

      v17 = *(v5 + 8);
      v16 = *(v5 + 16);
      v18 = *(v5 + 32);
      v19 = *(v5 + 40);
      v20 = &v6[70 * v10];
      *v20 = 1;
      v20[1] = v15;
      v21 = v12;
      v22 = v11;
      v20[2] = -1431655765 * ((v16 - v17) >> 4);
      *(v20 + 3) = 0uLL;
      *(v20 + 7) = 0uLL;
      *(v20 + 11) = 0uLL;
      *(v20 + 15) = 0uLL;
      *(v20 + 19) = 0uLL;
      *(v20 + 23) = 0uLL;
      *(v20 + 27) = 0uLL;
      *(v20 + 31) = 0uLL;
      *(v20 + 35) = 0uLL;
      *(v20 + 39) = 0uLL;
      *(v20 + 43) = 0uLL;
      *(v20 + 47) = 0uLL;
      *(v20 + 51) = 0uLL;
      *(v20 + 54) = 0uLL;
      *(v20 + 59) = 0uLL;
      v20 += 59;
      *(v20 - 1) = -1431655765 * ((v19 - v18) >> 4);
      *(v20 + 7) = 0uLL;
      for (*(v20 + 1) = 0uLL; v17 != v16; v22 += 10)
      {
        v23 = *v17;
        if ((*v17 - 1) >= 4)
        {
          v23 = 0;
        }

        *v21++ = v23;
        *(v22 + 4) = *(v17 + 5);
        v24 = *(v17 + 6);
        *v22 = *(v17 + 2);
        *(v22 + 1) = v24;
        v17 += 12;
      }

      v25 = v14;
      v26 = v13;
      while (v18 != v19)
      {
        *v25++ = 5;
        v27 = *(v18 + 24);
        *v26 = *(v18 + 8);
        *(v26 + 1) = v27;
        *(v26 + 4) = *(v18 + 40);
        v18 += 48;
        v26 += 10;
      }

      ++v10;
      v5 += 64;
      v11 += 70;
      v12 += 70;
      v13 += 70;
      v14 += 70;
    }

    while (v5 != v4);
  }
}

void std::__shared_ptr_emplace<adm::vp::DownlinkConfiguration>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<adm::vp::DownlinkNodeConfiguration>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__shared_ptr_emplace<adm::vp::DownlinkConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28371D888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void non-virtual thunk toadm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getOutputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void non-virtual thunk toadm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getInputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void non-virtual thunk toadm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::setProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void non-virtual thunk toadm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void non-virtual thunk toadm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getOutputParameterIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void non-virtual thunk toadm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getInputParameterIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::setParameter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  if (a2 != 1651074168)
  {
    v9 = 1853122148;
    goto LABEL_9;
  }

  v6 = result;
  v7 = *(result + 184);
  result = adm::vp::SPIClient::isConfigured((v7 + 8));
  if (v7)
  {
    v8 = result == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 1651929193;
LABEL_9:
    *a3 = v9;
    *(a3 + 16) = 0;
    return result;
  }

  v13 = a4;
  v10 = *(v6 + 184);
  if (adm::vp::SPIClient::isConfigured((v10 + 8)))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return (*(*v12 + 48))(v12, 1651074168, &v13, 4);
}

void *adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getParameter@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 != 1651074168)
  {
    v7 = 1853122148;
    goto LABEL_9;
  }

  v4 = result;
  v5 = result[23];
  result = adm::vp::SPIClient::isConfigured((v5 + 8));
  if (v5)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 1651929193;
LABEL_9:
    *a3 = v7;
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v14 = 4;
  v8 = v4[23];
  if (adm::vp::SPIClient::isConfigured((v8 + 8)))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  result = (*(*v10 + 40))(&v12);
  v11 = v13;
  if (v13 == 1)
  {
    *a3 = v15;
  }

  else
  {
    v11 = 0;
    *a3 = v12;
  }

  *(a3 + 16) = v11;
  return result;
}

void non-virtual thunk toadm::graph::VoiceProcessorUplinkKernel::~VoiceProcessorUplinkKernel(adm::graph::VoiceProcessorUplinkKernel *this)
{
  if (*(this + 200) == 1)
  {
    v2 = *(this + 24);
    ExtendedAudioBufferList_Destroy();
  }

  if (*(this + 184) == 1)
  {
    v3 = *(this + 22);
    ExtendedAudioBufferList_Destroy();
  }

  adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(this - 24);

  JUMPOUT(0x223DF43A0);
}

{
  if (*(this + 200) == 1)
  {
    v2 = *(this + 24);
    ExtendedAudioBufferList_Destroy();
  }

  if (*(this + 184) == 1)
  {
    v3 = *(this + 22);
    ExtendedAudioBufferList_Destroy();
  }

  adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(this - 24);
}

uint64_t adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(uint64_t a1)
{
  *a1 = &unk_28371CEE8;
  *(a1 + 24) = &unk_28371D028;
  v2 = *(a1 + 192);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_28371D0B8;
  *(a1 + 24) = &unk_28371D188;
  adm::graph::AudioIssueDetectorClient::IDOwner::clear((a1 + 168));
  MEMORY[0x223DF3E50](a1 + 144);
  v4 = (a1 + 104);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 80);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 56);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 32);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  *a1 = &unk_28371D218;
  adm::utility::synchronized_pointer<adm::graph::KernelHostInterface>::~synchronized_pointer((a1 + 8));
  return a1;
}

void non-virtual thunk toadm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(uint64_t a1)
{
  adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(a1 - 24);

  JUMPOUT(0x223DF43A0);
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getOutputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getInputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::setProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getOutputParameterIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::getInputParameterIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::doBeginProcessing()
{
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "BeginProcessing handler is called, IOStarting", v1, 2u);
  }
}

void adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(uint64_t a1)
{
  adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(a1);

  JUMPOUT(0x223DF43A0);
}

uint64_t adm::graph::VoiceProcessorUplinkKernel::doGetRequiredInputSamplesForOutputSamples(adm::graph::VoiceProcessorUplinkKernel *this)
{
  v2 = *(this + 23);
  isConfigured = adm::vp::SPIClient::isConfigured((v2 + 8));
  if (v2)
  {
    v4 = !isConfigured;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    goto LABEL_12;
  }

  v5 = *(this + 23);
  if (adm::vp::SPIClient::isConfigured((v5 + 8)))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(*v6 + 64))(v9);
  if ((v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    MEMORY[0x223DF40A0](exception, v9[0], v9[1]);
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return v9[0];
}

std::chrono::system_clock::time_point adm::graph::VoiceProcessorUplinkKernel::doClientIO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = *MEMORY[0x277D85DE8];
  adm::graph::AudioIssueDetectorClient::performDetection((a1 + 160), a4, a5, 1, a3, (a1 + 128));
  v35 = adm::graph::DSPKernel::doClientIOPreProcessing(a1, a5, a4);
  if (v35)
  {
    v13 = "doClientIOPreProcessing returns error %u";
LABEL_3:
    result.__d_.__rep_ = adm::util::RTLogger::log<int &>((a1 + 128), v13, &v35).__d_.__rep_;
    goto LABEL_4;
  }

  v16 = *(a5 + 16);
  v43 = *a5;
  v44 = v16;
  v17 = *(a5 + 48);
  v45 = *(a5 + 32);
  v46 = v17;
  v47 = *(a5 + 64);
  v48 = *(a5 + 68);
  v49 = *(a1 + 200) + 48;
  v18 = a5 + 80 * *(a1 + 232);
  v19 = *v18;
  v20 = *(v18 + 16);
  v21 = *(v18 + 48);
  v52 = *(v18 + 32);
  v53 = v21;
  v50 = v19;
  v51 = v20;
  v54 = *(v18 + 64);
  v55 = *(v18 + 68);
  v56 = *(a1 + 216) + 48;
  v22 = *(a7 + 16);
  v36 = *a7;
  v37 = v22;
  v23 = *(a7 + 48);
  v38 = *(a7 + 32);
  v39 = v23;
  v40 = *(a7 + 64);
  v41 = *(a7 + 68);
  v24 = *(a1 + 104);
  if (*(a1 + 112) == v24)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v42 = *v24 + 48;
  v25 = *(a1 + 184);
  isConfigured = adm::vp::SPIClient::isConfigured((v25 + 8));
  if (!v25 || !isConfigured)
  {
    adm::util::RTLogger::log<>(a1 + 128, "VPSPI getInterface() returns null");
  }

  v27 = *(a1 + 184);
  if (adm::vp::SPIClient::isConfigured((v27 + 8)))
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  (*(*v28 + 56))(&v33);
  if (v34)
  {
    v35 = adm::graph::DSPKernel::doClientIOPostProcessing(a1, a7, a6);
    if (!v35)
    {
      result.__d_.__rep_ = adm::graph::AudioIssueDetectorClient::performDetection((a1 + 160), a6, a7, 0, a3, (a1 + 128));
      goto LABEL_4;
    }

    v13 = "doClientIOPostProcessing returns error %u";
    goto LABEL_3;
  }

  v29 = v33;
  v30 = *(a1 + 128);
  if (v30 < 0x65)
  {
    goto LABEL_18;
  }

  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (result.__d_.__rep_ - *(a1 + 136) >= 501000)
  {
    v30 = *(a1 + 128);
LABEL_18:
    if (!*MEMORY[0x277D7F098])
    {
      __break(1u);
    }

    v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
    *(v31 + 16) = 0;
    *(v31 + 24) = 3;
    *(v31 + 32) = "clientIO has error %u";
    *(v31 + 40) = v30;
    *(v31 + 44) = v29;
    *v31 = &unk_28371D430;
    *(v31 + 8) = 0;
    caulk::concurrent::messenger::enqueue((a1 + 144), v31);
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    *(a1 + 136) = result;
  }

  v32 = *(a1 + 128);
  if (v32 != -1)
  {
    *(a1 + 128) = v32 + 1;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int>(adm::util::RTLogLevel,char const*,int &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int>(adm::util::RTLogLevel,char const*,int &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

void adm::graph::VoiceProcessorUplinkKernel::~VoiceProcessorUplinkKernel(adm::graph::VoiceProcessorUplinkKernel *this)
{
  if (*(this + 224) == 1)
  {
    v2 = *(this + 27);
    ExtendedAudioBufferList_Destroy();
  }

  if (*(this + 208) == 1)
  {
    v3 = *(this + 25);
    ExtendedAudioBufferList_Destroy();
  }

  adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(this);

  JUMPOUT(0x223DF43A0);
}

{
  if (*(this + 224) == 1)
  {
    v2 = *(this + 27);
    ExtendedAudioBufferList_Destroy();
  }

  if (*(this + 208) == 1)
  {
    v3 = *(this + 25);
    ExtendedAudioBufferList_Destroy();
  }

  adm::graph::VoiceProcessorKernel<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernel(this);
}

uint64_t *std::optional<CA::AudioBuffersDeprecated>::~optional(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::UplinkConfiguration>::setProperty@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v12 = a3;
  v8 = a4;
  v9 = a2;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,void const*,unsigned int),VoiceProcessorPropertyID,void const*&,unsigned int>(&v10, (a1 + 8), &v9, &v12, &v8);
  if (v11)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a5 = v10;
  }

  *(a5 + 16) = v7;
  return result;
}

uint64_t adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,void const*,unsigned int),VoiceProcessorPropertyID,void const*&,unsigned int>(uint64_t a1, caulk::shared_semaphore_mutex *this, unsigned int *a3, void *a4, unsigned int *a5)
{
  result = caulk::shared_semaphore_mutex::try_lock_shared(this);
  if (!result)
  {
    *a1 = 6;
    *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    *(a1 + 16) = 0;
    return result;
  }

  v11 = *(this + 5);
  if (v11)
  {
    v12 = *(*v11 + 96);
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    if (v12)
    {
      v14 = v12(v11[1], *a3, *a4, *a5);
      if (!v14)
      {
        v16 = 1;
        goto LABEL_10;
      }

      v15 = v14;
      v13 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v15 = 6;
  }

  v16 = 0;
  *a1 = v15;
  *(a1 + 8) = v13;
LABEL_10:
  *(a1 + 16) = v16;

  return caulk::shared_semaphore_mutex::unlock_shared(this);
}

void sub_223BECC18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    a9 = 0;
    _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &a9, 2u);
  }

  *v9 = 6;
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BECBE4);
}

void adm::vp::ErrorCategory::~ErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x223DF43A0);
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::UplinkConfiguration>::getProperty@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v14 = a3;
  v13 = *a4;
  v10 = a2;
  v9 = &v13;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,void *,unsigned int *),VoiceProcessorPropertyID,void *&,unsigned int *>(&v11, (a1 + 8), &v10, &v14, &v9);
  if (v12)
  {
    *a4 = v13;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a5 = v11;
  }

  *(a5 + 16) = v8;
  return result;
}

uint64_t adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,void *,unsigned int *),VoiceProcessorPropertyID,void *&,unsigned int *>(uint64_t a1, caulk::shared_semaphore_mutex *this, unsigned int *a3, void *a4, void *a5)
{
  result = caulk::shared_semaphore_mutex::try_lock_shared(this);
  if (!result)
  {
    *a1 = 6;
    *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    *(a1 + 16) = 0;
    return result;
  }

  v11 = *(this + 5);
  if (v11)
  {
    v12 = *(*v11 + 88);
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    if (v12)
    {
      v14 = v12(v11[1], *a3, *a4, *a5);
      if (!v14)
      {
        v16 = 1;
        goto LABEL_10;
      }

      v15 = v14;
      v13 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v15 = 6;
  }

  v16 = 0;
  *a1 = v15;
  *(a1 + 8) = v13;
LABEL_10:
  *(a1 + 16) = v16;

  return caulk::shared_semaphore_mutex::unlock_shared(this);
}

void sub_223BECE58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    a9 = 0;
    _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &a9, 2u);
  }

  *v9 = 6;
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BECE24);
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::UplinkConfiguration>::getPropertyInfo@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v9 = a2;
  v8 = &v12 + 4;
  v7 = &v12;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,unsigned int *,unsigned int *),VoiceProcessorPropertyID,unsigned int *,unsigned int *>(&v10, (a1 + 8), &v9, &v8, &v7);
  if (v11)
  {
    v5 = v12 != 0;
    *a3 = HIDWORD(v12);
    *(a3 + 8) = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = v10;
  }

  *(a3 + 16) = v6;
  return result;
}

uint64_t adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,unsigned int *,unsigned int *),VoiceProcessorPropertyID,unsigned int *,unsigned int *>(uint64_t a1, caulk::shared_semaphore_mutex *this, unsigned int *a3, void *a4, void *a5)
{
  result = caulk::shared_semaphore_mutex::try_lock_shared(this);
  if (!result)
  {
    *a1 = 6;
    *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    *(a1 + 16) = 0;
    return result;
  }

  v11 = *(this + 5);
  if (v11)
  {
    v12 = *(*v11 + 48);
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    if (v12)
    {
      v14 = v12(v11[1], *a3, *a4, *a5);
      if (!v14)
      {
        v16 = 1;
        goto LABEL_10;
      }

      v15 = v14;
      v13 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v15 = 6;
  }

  v16 = 0;
  *a1 = v15;
  *(a1 + 8) = v13;
LABEL_10:
  *(a1 + 16) = v16;

  return caulk::shared_semaphore_mutex::unlock_shared(this);
}

void sub_223BED040(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    a9 = 0;
    _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &a9, 2u);
  }

  *v9 = 6;
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BED00CLL);
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::UplinkConfiguration>::setParameter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v10 = a4;
  v7 = a2;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorParameterID,float),VoiceProcessorParameterID,float &>(&v8, (a1 + 8), &v7, &v10);
  if (v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = v8;
  }

  *(a3 + 16) = v6;
  return result;
}

uint64_t adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorParameterID,float),VoiceProcessorParameterID,float &>(uint64_t a1, caulk::shared_semaphore_mutex *this, unsigned int *a3, float *a4)
{
  result = caulk::shared_semaphore_mutex::try_lock_shared(this);
  if (!result)
  {
    *a1 = 6;
    *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    *(a1 + 16) = 0;
    return result;
  }

  v9 = *(this + 5);
  if (v9)
  {
    v10 = *(*v9 + 64);
    v11 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    if (v10)
    {
      v12 = v10(v9[1], *a3, *a4);
      if (!v12)
      {
        v14 = 1;
        goto LABEL_10;
      }

      v13 = v12;
      v11 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v11 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v13 = 6;
  }

  v14 = 0;
  *a1 = v13;
  *(a1 + 8) = v11;
LABEL_10:
  *(a1 + 16) = v14;

  return caulk::shared_semaphore_mutex::unlock_shared(this);
}

void sub_223BED1FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    a9 = 0;
    _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &a9, 2u);
  }

  *v9 = 6;
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BED1C8);
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::UplinkConfiguration>::getParameter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v7 = a2;
  v6 = &v10;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorParameterID,float *),VoiceProcessorParameterID,float *>(&v8, (a1 + 8), &v7, &v6);
  if (v9)
  {
    *a3 = v10;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = v8;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorParameterID,float *),VoiceProcessorParameterID,float *>(uint64_t a1, caulk::shared_semaphore_mutex *this, unsigned int *a3, void *a4)
{
  result = caulk::shared_semaphore_mutex::try_lock_shared(this);
  if (!result)
  {
    *a1 = 6;
    *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    *(a1 + 16) = 0;
    return result;
  }

  v9 = *(this + 5);
  if (v9)
  {
    v10 = *(*v9 + 56);
    v11 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    if (v10)
    {
      v12 = v10(v9[1], *a3, *a4);
      if (!v12)
      {
        v14 = 1;
        goto LABEL_10;
      }

      v13 = v12;
      v11 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v11 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v13 = 6;
  }

  v14 = 0;
  *a1 = v13;
  *(a1 + 8) = v11;
LABEL_10:
  *(a1 + 16) = v14;

  return caulk::shared_semaphore_mutex::unlock_shared(this);
}

void sub_223BED3C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    a9 = 0;
    _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &a9, 2u);
  }

  *v9 = 6;
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BED394);
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::DownlinkConfiguration>::setProperty@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v12 = a3;
  v8 = a4;
  v9 = a2;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,void const*,unsigned int),VoiceProcessorPropertyID,void const*&,unsigned int>(&v10, (a1 + 8), &v9, &v12, &v8);
  if (v11)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a5 = v10;
  }

  *(a5 + 16) = v7;
  return result;
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::DownlinkConfiguration>::getProperty@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v14 = a3;
  v13 = *a4;
  v10 = a2;
  v9 = &v13;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,void *,unsigned int *),VoiceProcessorPropertyID,void *&,unsigned int *>(&v11, (a1 + 8), &v10, &v14, &v9);
  if (v12)
  {
    *a4 = v13;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a5 = v11;
  }

  *(a5 + 16) = v8;
  return result;
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::DownlinkConfiguration>::getPropertyInfo@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v9 = a2;
  v8 = &v12 + 4;
  v7 = &v12;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorPropertyID,unsigned int *,unsigned int *),VoiceProcessorPropertyID,unsigned int *,unsigned int *>(&v10, (a1 + 8), &v9, &v8, &v7);
  if (v11)
  {
    v5 = v12 != 0;
    *a3 = HIDWORD(v12);
    *(a3 + 8) = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = v10;
  }

  *(a3 + 16) = v6;
  return result;
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::DownlinkConfiguration>::setParameter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v10 = a4;
  v7 = a2;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorParameterID,float),VoiceProcessorParameterID,float &>(&v8, (a1 + 8), &v7, &v10);
  if (v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = v8;
  }

  *(a3 + 16) = v6;
  return result;
}

uint64_t adm::vp::detail::ProxyImplementation<adm::vp::DownlinkConfiguration>::getParameter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v7 = a2;
  v6 = &v10;
  result = adm::vp::SPIClient::call<VoiceProcessorError ()(void *,VoiceProcessorParameterID,float *),VoiceProcessorParameterID,float *>(&v8, (a1 + 8), &v7, &v6);
  if (v9)
  {
    *a3 = v10;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = v8;
  }

  *(a3 + 16) = v5;
  return result;
}

void adm::vp::detail::UplinkProxyImplementation::getExpectedOutputSamplesForInputSamples(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
  *(a1 + 16) = 0;
}

uint64_t adm::vp::detail::UplinkProxyImplementation::getRequiredInputSamplesForOutputSamples@<X0>(adm::vp::detail::UplinkProxyImplementation *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 0;
  result = caulk::shared_semaphore_mutex::try_lock_shared((this + 8));
  if (!result)
  {
    v11 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v10 = 6;
LABEL_11:
    v12 = 0;
    *(a3 + 8) = v11;
    goto LABEL_12;
  }

  v7 = *(this + 6);
  if (!v7)
  {
    v11 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v10 = 6;
    goto LABEL_10;
  }

  v8 = *(*v7 + 120);
  if (!v8)
  {
    v11 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v10 = 2;
    goto LABEL_10;
  }

  v9 = v8(v7[1], *(this + 23), a2, &v13);
  if (v9)
  {
    v10 = v9;
    v11 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
LABEL_10:
    result = caulk::shared_semaphore_mutex::unlock_shared((this + 8));
    goto LABEL_11;
  }

  result = caulk::shared_semaphore_mutex::unlock_shared((this + 8));
  v10 = v13;
  v12 = 1;
LABEL_12:
  *a3 = v10;
  *(a3 + 16) = v12;
  return result;
}

uint64_t adm::vp::detail::UplinkProxyImplementation::clientIO@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19[0] = *(a1 + 92);
  v19[1] = a2;
  HIDWORD(v22) = a4;
  if (a2)
  {
    v8 = v21 + 1;
    v9 = &v22;
    do
    {
      *(v8 - 3) = *(a3 + 72);
      *v8++ = a3;
      *v9 = *(a3 + 64);
      v9 = (v9 + 4);
      a3 += 80;
      --a2;
    }

    while (a2);
  }

  if (a4)
  {
    v10 = v23;
    v11 = &v24;
    do
    {
      *v10 = *(a5 + 72);
      v10[3] = a5;
      *v11 = *(a5 + 64);
      v11 = (v11 + 4);
      a5 += 80;
      ++v10;
      --a4;
    }

    while (a4);
  }

  result = caulk::shared_semaphore_mutex::try_lock_shared((a1 + 8));
  if (!result)
  {
    v17 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v16 = 6;
LABEL_17:
    v18 = 0;
    *a6 = v16;
    *(a6 + 8) = v17;
    goto LABEL_18;
  }

  v13 = *(a1 + 48);
  if (!v13)
  {
    v17 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v16 = 6;
    goto LABEL_16;
  }

  v14 = *(*v13 + 128);
  if (!v14)
  {
    v17 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v16 = 2;
    goto LABEL_16;
  }

  v15 = v14(v13[1], v19);
  if (v15)
  {
    v16 = v15;
    v17 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
LABEL_16:
    result = caulk::shared_semaphore_mutex::unlock_shared((a1 + 8));
    goto LABEL_17;
  }

  result = caulk::shared_semaphore_mutex::unlock_shared((a1 + 8));
  v18 = 1;
LABEL_18:
  *(a6 + 16) = v18;
  return result;
}

void adm::vp::detail::UplinkProxyImplementation::~UplinkProxyImplementation(adm::vp::detail::UplinkProxyImplementation *this)
{
  *this = &unk_28371D530;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x223DF3EA0](this + 8);

  JUMPOUT(0x223DF43A0);
}

{
  *this = &unk_28371D530;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x223DF3EA0](this + 8);
}

uint64_t adm::vp::detail::DownlinkProxyImplementation::getExpectedOutputSamplesForInputSamples@<X0>(adm::vp::detail::DownlinkProxyImplementation *this@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v15 = 0;
  result = caulk::shared_semaphore_mutex::try_lock_shared((this + 8));
  if (!result)
  {
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v12 = 6;
LABEL_11:
    v14 = 0;
    *(a4 + 8) = v13;
    goto LABEL_12;
  }

  v9 = *(this + 6);
  if (!v9)
  {
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v12 = 6;
    goto LABEL_10;
  }

  v10 = *(*v9 + 136);
  if (!v10)
  {
    v13 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v12 = 2;
    goto LABEL_10;
  }

  v11 = v10(v9[1], *(this + 23), a3, &v15 + 4, &v15);
  if (v11)
  {
    v12 = v11;
    v13 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
LABEL_10:
    result = caulk::shared_semaphore_mutex::unlock_shared((this + 8));
    goto LABEL_11;
  }

  result = caulk::shared_semaphore_mutex::unlock_shared((this + 8));
  *a2 = HIDWORD(v15);
  v12 = v15;
  v14 = 1;
LABEL_12:
  *a4 = v12;
  *(a4 + 16) = v14;
  return result;
}

void adm::vp::detail::DownlinkProxyImplementation::getRequiredInputSamplesForOutputSamples(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
  *(a1 + 16) = 0;
}

uint64_t adm::vp::detail::DownlinkProxyImplementation::clientIO@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  v19[0] = *(a1 + 92);
  v19[1] = a2;
  DWORD1(v24) = a4;
  if (a2)
  {
    v8 = v22 + 1;
    v9 = &v23;
    do
    {
      *(v8 - 5) = *(a3 + 72);
      *v8++ = a3;
      *v9 = *(a3 + 64);
      v9 = (v9 + 4);
      a3 += 80;
      --a2;
    }

    while (a2);
  }

  if (a4)
  {
    v10 = &v25;
    v11 = &v25 + 2;
    do
    {
      *(v10 - 1) = *(a5 + 72);
      *v10 = a5;
      *v11++ = *(a5 + 64);
      a5 += 80;
      v10 = (v10 + 8);
      --a4;
    }

    while (a4);
  }

  result = caulk::shared_semaphore_mutex::try_lock_shared((a1 + 8));
  if (!result)
  {
    v17 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v16 = 6;
LABEL_17:
    v18 = 0;
    *a6 = v16;
    *(a6 + 8) = v17;
    goto LABEL_18;
  }

  v13 = *(a1 + 48);
  if (!v13)
  {
    v17 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v16 = 6;
    goto LABEL_16;
  }

  v14 = *(*v13 + 144);
  if (!v14)
  {
    v17 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    v16 = 2;
    goto LABEL_16;
  }

  v15 = v14(v13[1], v19);
  if (v15)
  {
    v16 = v15;
    v17 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
LABEL_16:
    result = caulk::shared_semaphore_mutex::unlock_shared((a1 + 8));
    goto LABEL_17;
  }

  result = caulk::shared_semaphore_mutex::unlock_shared((a1 + 8));
  v18 = 1;
LABEL_18:
  *(a6 + 16) = v18;
  return result;
}

void adm::vp::detail::DownlinkProxyImplementation::~DownlinkProxyImplementation(adm::vp::detail::DownlinkProxyImplementation *this)
{
  *this = &unk_28371D590;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x223DF3EA0](this + 8);

  JUMPOUT(0x223DF43A0);
}

{
  *this = &unk_28371D590;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x223DF3EA0](this + 8);
}

BOOL adm::vp::SPIClient::isConfigured(adm::vp::SPIClient *this)
{
  if (!caulk::shared_semaphore_mutex::try_lock_shared(this))
  {
    return 0;
  }

  v2 = *(this + 5) != 0;
  caulk::shared_semaphore_mutex::unlock_shared(this);
  return v2;
}

int *adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>::getConfiguration(uint64_t a1)
{
  adm::vp::ImmutableConfiguration<adm::vp::UplinkConfiguration>::getNodeConfiguration(&v5, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  if ((v9 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v1 = v7;
  if (!v7)
  {
    v1 = *(v5 + 8);
    if (*v1 != v8)
    {
      v2 = v1 + 16;
      do
      {
        v3 = *v2;
        v2 += 16;
      }

      while (v3 != v8);
      v1 = v2 - 16;
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v1;
}

void adm::vp::ImmutableConfiguration<adm::vp::UplinkConfiguration>::getNodeConfiguration(uint64_t a1, unint64_t a2, std::__shared_weak_count *a3, int a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v4 = a2;
    *(&v4 + 1) = a3;
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = a2;
  }

  for (i = *(a2 + 8); ; i += 16)
  {
    if (i == *(a2 + 16))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      MEMORY[0x223DF40A0](exception, 1, &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory);
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    if (*i == a4)
    {
      break;
    }
  }

  *a1 = v4;
  *(a1 + 16) = i;
  *(a1 + 24) = a4;
  *(a1 + 32) = 1;
  if (a3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }
}

_DWORD *adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::getFormat<adm::vp::UplinkNodeConfiguration::InputType>(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v1 = *(*a1 + 8);
    v2 = *(a1 + 24);
    if (*v1 != v2)
    {
      v3 = v1 + 16;
      do
      {
        v4 = *v3;
        v3 += 16;
      }

      while (v4 != v2);
      v1 = v3 - 16;
    }

    *(a1 + 16) = v1;
  }

  v6 = *(v1 + 1);
  v5 = *(v1 + 2);
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    if (!*v6)
    {
      break;
    }

    v6 += 12;
  }

  return v6 + 2;
}

caulk::shared_semaphore_mutex *caulk::shared_semaphore_mutex::shared_semaphore_mutex(caulk::shared_semaphore_mutex *this)
{
  *this = 0;
  v2 = (this + 24);
  caulk::semaphore::semaphore((this + 8));
  caulk::semaphore::semaphore(v2);
  return this;
}

uint64_t std::__function::__value_func<std::unique_ptr<adm::vp::SPI> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<adm::vp::detail::ProxyFactoryImplementation>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v2 = (a1 + 176);
    v3 = *(a1 + 184);
    v4 = *(*(a1 + 176) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 192) = 0;
    if (v3 != (a1 + 176))
    {
      do
      {
        v6 = v3[1];
        std::__destroy_at[abi:ne200100]<adm::vp::detail::ProxyFactoryImplementation::Context<adm::vp::DownlinkConfiguration>,0>((v3 + 2));
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(a1 + 168))
  {
    v7 = *(a1 + 160);
    v8 = *(*(a1 + 152) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(a1 + 168) = 0;
    if (v7 != (a1 + 152))
    {
      do
      {
        v10 = v7[1];
        std::__destroy_at[abi:ne200100]<adm::vp::detail::ProxyFactoryImplementation::Context<adm::vp::DownlinkConfiguration>,0>((v7 + 2));
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != (a1 + 152));
    }
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__function::__value_func<std::unique_ptr<adm::vp::SPI> ()(void)>::~__value_func[abi:ne200100](a1 + 104);
  std::recursive_mutex::~recursive_mutex((a1 + 40));
  v12 = *(a1 + 32);
  if (v12)
  {

    std::__shared_weak_count::__release_weak(v12);
  }
}

void std::__destroy_at[abi:ne200100]<adm::vp::detail::ProxyFactoryImplementation::Context<adm::vp::DownlinkConfiguration>,0>(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<std::weak_ptr<adm::vp::detail::DownlinkProxyImplementation>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::vector<std::weak_ptr<adm::vp::detail::DownlinkProxyImplementation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<adm::vp::detail::ProxyFactoryImplementation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28371D7E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::UplinkConfiguration>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock((a2 + 16));
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v32[0] = 0;
    v33 = 0;
    v36[0] = 0;
    v37 = 0;
    if (*v7 != 1)
    {
      if (!*v7)
      {
        *&v41[8] = 0;
        v41[0] = 3;
        operator new();
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v36);
      v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v32, "type");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v36);
      v9 = *v8;
      *v8 = 0;
      v36[0] = v9;
      v10 = *(v8 + 1);
      *(v8 + 1) = 0;
      v37 = v10;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v36);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v37, v9);
      v35 = 0;
      v34 = 2;
      v11 = *(v7 + 8);
      v12 = *(v7 + 16);
      operator new();
    }

    *&v41[8] = 0;
    v41[0] = 3;
    operator new();
  }

  v13 = *(a2 + 176);
  v14 = *a3;
  if (v13 == **a3 && *(v14 + 208))
  {
    if (v13 != 1)
    {
      if (v13 || *(v14 + 16) - *(v14 + 8) != 64)
      {
        goto LABEL_70;
      }

      adm::vp::ImmutableConfiguration<adm::vp::UplinkConfiguration>::getNodeConfiguration(v41, v14, *(a3 + 8), 0);
      if (v43 == 1 && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 0) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 2) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::OutputType>(v41, 3))
      {
        v15 = adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::getFormat<adm::vp::UplinkNodeConfiguration::InputType>(v41);
        v16 = *v15 == *adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::getFormat<adm::vp::UplinkNodeConfiguration::InputType>(v41);
        goto LABEL_62;
      }

LABEL_61:
      v16 = 0;
LABEL_62:
      if (v43 == 1 && *&v41[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v41[8]);
      }

      if (v16)
      {
        v28 = *a3;
        v29 = *(a3 + 8);
        *v41 = *a3;
        *&v41[8] = v29;
        if (v29)
        {
          atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          v28 = *a3;
        }

        v42 = 0uLL;
        v44 = 0;
        v43 = 0;
        v39 = 0;
        v40 = 0;
        __src = 0;
        if (*(v28 + 8) != *(v28 + 16))
        {
          operator new();
        }

        operator new();
      }

      goto LABEL_70;
    }

    if (*(v14 + 16) - *(v14 + 8) == 192)
    {
      adm::vp::ImmutableConfiguration<adm::vp::UplinkConfiguration>::getNodeConfiguration(v41, v14, *(a3 + 8), 1);
      if (v43 == 1 && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 0) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 2) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::OutputType>(v41, 0) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::OutputType>(v41, 1) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::OutputType>(v41, 2))
      {
        v17 = v42;
        if (!v42)
        {
          v17 = *(*v41 + 8);
          if (*v17 != DWORD2(v42))
          {
            v18 = v17 + 16;
            do
            {
              v19 = *v18;
              v18 += 16;
            }

            while (v19 != DWORD2(v42));
            v17 = v18 - 16;
          }

          *&v42 = v17;
        }

        v20 = *(v17 + 60);
      }

      else
      {
        v20 = 0;
      }

      if (v43 == 1 && *&v41[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v41[8]);
      }

      if (v20)
      {
        adm::vp::ImmutableConfiguration<adm::vp::UplinkConfiguration>::getNodeConfiguration(v41, *a3, *(a3 + 8), 2);
        if (v43 == 1 && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 0) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 1) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 2) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::OutputType>(v41, 3))
        {
          v21 = v42;
          if (!v42)
          {
            v21 = *(*v41 + 8);
            if (*v21 != DWORD2(v42))
            {
              v22 = v21 + 16;
              do
              {
                v23 = *v22;
                v22 += 16;
              }

              while (v23 != DWORD2(v42));
              v21 = v22 - 16;
            }
          }

          v24 = *(v21 + 60);
        }

        else
        {
          v24 = 0;
        }

        if (v43 == 1 && *&v41[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v41[8]);
        }

        if (v24)
        {
          adm::vp::ImmutableConfiguration<adm::vp::UplinkConfiguration>::getNodeConfiguration(v41, *a3, *(a3 + 8), 3);
          if (v43 == 1 && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(v41, 3) && adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::OutputType>(v41, 3))
          {
            v25 = v42;
            if (!v42)
            {
              v25 = *(*v41 + 8);
              if (*v25 != DWORD2(v42))
              {
                v26 = v25 + 16;
                do
                {
                  v27 = *v26;
                  v26 += 16;
                }

                while (v27 != DWORD2(v42));
                v25 = v26 - 16;
              }
            }

            v16 = *(v25 + 60);
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }
    }
  }

LABEL_70:
  v30 = get_adm_log_object();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *v41 = 136315138;
    *&v41[4] = "uplink";
    _os_log_error_impl(&dword_223B4A000, v30, OS_LOG_TYPE_ERROR, "failed to create %s voice processor proxy list due to invalid configuration", v41, 0xCu);
  }

  *a1 = 1;
  *(a1 + 8) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
  *(a1 + 24) = 0;
  std::recursive_mutex::unlock((a2 + 16));
  v31 = *MEMORY[0x277D85DE8];
}

void sub_223BF0034(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BF049CLL);
  }

  JUMPOUT(0x223BF0474);
}

void sub_223BF004C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BF0490);
  }

  JUMPOUT(0x223BF0474);
}

void sub_223BF005C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (a2)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
    JUMPOUT(0x223BF04A0);
  }

  JUMPOUT(0x223BF0474);
}

void sub_223BF0190(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::UplinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::UplinkConfiguration>::Type const&)::{lambda(adm::vp::detail::UplinkProxyImplementation *)#1}::operator()(&a23, v23);
    __cxa_rethrow();
  }

  JUMPOUT(0x223BF0474);
}

void sub_223BF01B4(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x223BF04A0);
  }

  JUMPOUT(0x223BF0474);
}

void sub_223BF01D0(uint64_t a1, int a2)
{
  if (a2)
  {
    operator delete(v2);
    JUMPOUT(0x223BF047CLL);
  }

  JUMPOUT(0x223BF0474);
}

void sub_223BF01E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__list_imp<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void adm::vp::detail::ProxyFactoryImplementation::createAndConfigureVoiceProcessor(adm::vp::detail::ProxyFactoryImplementation *this, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock((a2 + 16));
  if (!*(a2 + 112) && *(a2 + 144) && *(a2 + 168))
  {
    v5 = *(a2 + 104);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(&v9);
    if (*&v9.__val_)
    {
      operator new();
    }

    *&v9.__val_ = 0;
    v8 = *(a2 + 120);
    *(a2 + 112) = 0u;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    std::unique_ptr<adm::vp::SPI>::~unique_ptr[abi:ne200100](&v9);
  }

  adm::vp::detail::ProxyFactoryImplementation::configureUplink(&v9, a2);
  if ((v10 & 1) == 0)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 0;
      v12 = 0;
      std::to_json(buf, &v9);
    }

    goto LABEL_13;
  }

  adm::vp::detail::ProxyFactoryImplementation::configureDownlink(&v9, a2);
  if ((v10 & 1) == 0)
  {
    v6 = get_adm_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 0;
      v12 = 0;
      std::to_json(buf, &v9);
    }

LABEL_13:
    *this = v9;
    *(this + 16) = 0;
    goto LABEL_14;
  }

  *(this + 16) = 1;
LABEL_14:
  std::recursive_mutex::unlock((a2 + 16));
  v7 = *MEMORY[0x277D85DE8];
}

void sub_223BF07E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, adm::vp::SPI *a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    std::unique_ptr<adm::vp::SPI>::~unique_ptr[abi:ne200100](&a12);
    if (a2 == 2)
    {
      v19 = __cxa_begin_catch(exception_object);
      v20 = *(v15 + 120);
      *(v15 + 112) = 0;
      *(v15 + 120) = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      *v16 = v19[1];
      *(v16 + 16) = 0;
      __cxa_end_catch();
      JUMPOUT(0x223BF06D0);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void adm::vp::to_json_str<std::error_code>(uint64_t a1, const std::error_code *a2)
{
  v2[0] = 0;
  v3 = 0;
  std::to_json(v2, a2);
}

void std::vector<std::shared_ptr<adm::vp::detail::UplinkProxyImplementation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::to_json(unsigned __int8 *a1, const std::error_code *a2)
{
  val = a2->__val_;
  v11[0] = 5;
  v12 = val;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "value");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
  v6 = *v5;
  *v5 = 5;
  v11[0] = v6;
  v7 = *(v5 + 1);
  *(v5 + 1) = val;
  v12 = v7;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v12, v6);
  std::error_code::message(&v8, a2);
  v10 = 0;
  v9 = 3;
  operator new();
}

void adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::UplinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::UplinkConfiguration>::Type const&)::{lambda(adm::vp::detail::UplinkProxyImplementation *)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5 && *a1)
    {
      adm::vp::detail::ProxyFactoryImplementation::reConfigureOrDestroyVoiceProcessor(*a1);
    }
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void adm::vp::detail::ProxyFactoryImplementation::reConfigureOrDestroyVoiceProcessor(adm::vp::detail::ProxyFactoryImplementation *this)
{
  v10 = *MEMORY[0x277D85DE8];
  adm::vp::detail::ProxyFactoryImplementation::configureUplink(&v6, this);
  if ((v7 & 1) == 0)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 0;
      v9 = 0;
      std::to_json(buf, &v6);
    }
  }

  adm::vp::detail::ProxyFactoryImplementation::configureDownlink(&v6, this);
  if ((v7 & 1) == 0)
  {
    v3 = get_adm_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 0;
      v9 = 0;
      std::to_json(buf, &v6);
    }
  }

  if (*(this + 14))
  {
    if (!*(this + 18) && !*(this + 21))
    {
      v4 = *(this + 15);
      *(this + 14) = 0;
      *(this + 15) = 0;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_223BF0E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a15);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void adm::vp::detail::ProxyFactoryImplementation::configureUplink(adm::vp::detail::ProxyFactoryImplementation *this, void *a2)
{
  v2 = a2;
  v112 = *MEMORY[0x277D85DE8];
  v75 = *(this + 16);
  while (1)
  {
    if (!v2[14] || !v2[18])
    {
      *this = 0;
      *(this + 16) = 1;
      goto LABEL_86;
    }

    v3 = v2[17];
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v77 = v3;
    if (v4 == v5)
    {
      v28 = 0;
      v27 = *(v3 + 32);
      v26 = v77;
    }

    else
    {
      do
      {
        v6 = v4[1];
        if (v6)
        {
          v7 = *v4;
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v8 = std::__shared_weak_count::lock(v6);
          v11 = v8;
          if (v8)
          {
            v12 = v7 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            v9.i64[0] = 0;
            v10.i64[0] = v8;
            v13 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v10, v9)).i64[0], 0);
            v14.i64[0] = v7;
            v14.i64[1] = v8;
            v15 = vandq_s8(v14, v13);
            v16 = v108;
            if (v108 >= v109)
            {
              v18 = v108 - v107;
              v19 = v18 + 1;
              if ((v18 + 1) >> 60)
              {
                std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
              }

              v20 = v109 - v107;
              if ((v109 - v107) >> 3 > v19)
              {
                v19 = v20 >> 3;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFF0)
              {
                v21 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              *&v85[0] = &v107;
              if (v21)
              {
                std::allocator<std::shared_ptr<adm::graph::KernelProperty>>::allocate_at_least[abi:ne200100](v21);
              }

              v22 = 16 * v18;
              *(16 * v18) = v15;
              v11 = v15.i64[1];
              if (v15.i64[1])
              {
                atomic_fetch_add_explicit((v15.i64[1] + 8), 1uLL, memory_order_relaxed);
              }

              v17 = (v22 + 16);
              v23 = (v22 - (v108 - v107));
              memcpy(v23, v107, v108 - v107);
              v24 = v107;
              v25 = v109;
              v107 = v23;
              v108 = v17;
              v109 = 0;
              *&v84 = v24;
              *(&v84 + 1) = v25;
              *buf = v24;
              *&buf[8] = v24;
              std::__split_buffer<std::shared_ptr<adm::graph::KernelProperty>>::~__split_buffer(buf);
              v2 = a2;
            }

            else
            {
              *v108 = v15;
              v11 = v15.i64[1];
              if (v15.i64[1])
              {
                atomic_fetch_add_explicit((v15.i64[1] + 8), 1uLL, memory_order_relaxed);
              }

              v17 = v16 + 1;
            }

            v108 = v17;
          }

          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          std::__shared_weak_count::__release_weak(v6);
        }

        v4 += 2;
      }

      while (v4 != v5);
      v26 = v77;
      v4 = *(v77 + 32);
      v27 = *(v77 + 40);
      v28 = v108 - v107;
    }

    v29 = v27 - v4;
    if (v28 == v29)
    {
      break;
    }

    v65 = v2[17];
    v67 = *v65;
    v66 = v65[1];
    *(v67 + 8) = v66;
    *v66 = v67;
    --v2[18];
    std::__destroy_at[abi:ne200100]<adm::vp::detail::ProxyFactoryImplementation::Context<adm::vp::DownlinkConfiguration>,0>((v65 + 2));
    operator delete(v65);
LABEL_81:
    *buf = &v107;
    std::vector<std::shared_ptr<adm::vp::detail::UplinkProxyImplementation>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v28 == v29)
    {
      *(this + 16) = v75;
      goto LABEL_86;
    }
  }

  if ((*(v26 + 56) & 1) == 0)
  {
    v79 = v28;
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "configuring voice processor uplink", buf, 2u);
    }

    memset(v85, 0, 480);
    *buf = 0u;
    v84 = 0u;
    v31 = *(v26 + 16);
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
    *buf = *v31 != 0;
    *&buf[4] = (v32 - v33) >> 6;
    bzero(&buf[8], 0x348uLL);
    v86 = *(v31 + 32);
    v87 = *(v31 + 40);
    v88 = *(v31 + 48);
    v89 = *(v31 + 56);
    v90 = *(v31 + 64);
    memset(v91, 0, sizeof(v91));
    v93 = *(v31 + 96);
    v94 = *(v31 + 104);
    v95 = *(v31 + 112);
    v96 = *(v31 + 120);
    v97 = *(v31 + 136);
    memset(v98, 0, sizeof(v98));
    v100 = *(v31 + 172);
    v101 = *(v31 + 184);
    v102 = *(v31 + 192);
    v103 = *(v31 + 208);
    v104 = *(v31 + 168);
    v105 = *(v31 + 196);
    v106 = *(v31 + 204);
    v34 = *(v31 + 72);
    v12 = *(v31 + 80) == v34;
    v35 = (*(v31 + 80) - v34) >> 2;
    v92 = v35;
    if (!v12)
    {
      if (v35 <= 1)
      {
        v35 = 1;
      }

      memcpy(v91, v34, 4 * v35);
    }

    v36 = *(v31 + 144);
    v12 = *(v31 + 152) == v36;
    v37 = (*(v31 + 152) - v36) >> 2;
    v99 = v37;
    if (!v12)
    {
      if (v37 <= 1)
      {
        v37 = 1;
      }

      memcpy(v98, v36, 4 * v37);
    }

    if (v33 != v32)
    {
      v38 = 0;
      v39 = &v85[7] + 12;
      v40 = &v85[8] + 8;
      v41 = &v84 + 4;
      v42 = v85;
      do
      {
        v43 = 0;
        if ((*v33 - 1) >= 3)
        {
          v44 = 0;
        }

        else
        {
          v44 = *v33;
        }

        if (*(v33 + 60) == 1)
        {
          v43 = v33[14];
        }

        v46 = *(v33 + 1);
        v45 = *(v33 + 2);
        v48 = *(v33 + 4);
        v47 = *(v33 + 5);
        v49 = &buf[280 * v38 + 8];
        *v49 = v44;
        *(v49 + 1) = v43;
        v50 = v41;
        v51 = v42;
        *(v49 + 2) = -1431655765 * ((v45 - v46) >> 4);
        *(v49 + 12) = 0u;
        *(v49 + 28) = 0u;
        *(v49 + 44) = 0u;
        *(v49 + 60) = 0u;
        *(v49 + 76) = 0u;
        *(v49 + 92) = 0u;
        *(v49 + 108) = 0u;
        *(v49 + 124) = 0u;
        *(v49 + 35) = 0;
        *(v49 + 36) = -1431655765 * ((v47 - v48) >> 4);
        *(v49 + 148) = 0u;
        v49 += 148;
        *(v49 + 32) = 0;
        *(v49 + 6) = 0u;
        *(v49 + 7) = 0u;
        *(v49 + 4) = 0u;
        *(v49 + 5) = 0u;
        *(v49 + 2) = 0u;
        *(v49 + 3) = 0u;
        for (*(v49 + 1) = 0u; v46 != v45; v51 = (v51 + 40))
        {
          v52 = *v46;
          if ((*v46 - 1) >= 3)
          {
            v52 = 0;
          }

          *v50++ = v52;
          v53 = *(v46 + 2);
          v54 = *(v46 + 6);
          *(v51 + 4) = *(v46 + 5);
          *v51 = v53;
          v51[1] = v54;
          v46 += 12;
        }

        v55 = v39;
        v56 = v40;
        while (v48 != v47)
        {
          v57 = *v48;
          if ((*v48 - 1) >= 3)
          {
            v57 = 0;
          }

          *v55++ = v57;
          v58 = *(v48 + 2);
          v59 = *(v48 + 6);
          *(v56 + 4) = *(v48 + 5);
          *v56 = v58;
          *(v56 + 1) = v59;
          v48 += 12;
          v56 += 40;
        }

        ++v38;
        v33 += 16;
        v42 = (v42 + 280);
        v41 += 280;
        v40 += 280;
        v39 += 280;
      }

      while (v33 != v32);
    }

    v60 = v2[14];
    v61 = *(*v60 + 32);
    if (v61)
    {
      v62 = v61(v60[1], buf);
      if (!v62)
      {
        v82 = 1;
        v69 = v107;
        v70 = v108;
        while (v69 != v70)
        {
          v71 = v69->i64[0];
          v72 = v69->i64[1];
          if (v72)
          {
            atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v73 = v2[15];
          v80[0] = v2[14];
          v80[1] = v73;
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          adm::vp::SPIClient::configure((v71 + 8), v80);
          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          if (v72)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v72);
          }

          ++v69;
        }

        *(v77 + 56) = 1;
        v75 = 1;
        *this = 1;
        goto LABEL_80;
      }

      v63 = v62;
      v64 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
    }

    else
    {
      v63 = 2;
      v64 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    }

    *&v81.__val_ = v63;
    v81.__cat_ = v64;
    v82 = 0;
    v68 = get_adm_log_object();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v110[0] = 0;
      v111 = 0;
      std::to_json(v110, &v81);
    }

    v75 = 0;
    *this = v81;
LABEL_80:
    v28 = v79;
    goto LABEL_81;
  }

  *this = 0;
  *(this + 16) = 1;
  *buf = &v107;
  std::vector<std::shared_ptr<adm::vp::detail::UplinkProxyImplementation>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_86:
  v74 = *MEMORY[0x277D85DE8];
}

void sub_223BF16CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_223BF16D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20)
{
  if (a2)
  {
    *(a20 + 16) = a19;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json((v20 - 112));
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_223BF16F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20)
{
  if (!a2)
  {
    JUMPOUT(0x223BF170CLL);
  }

  *(a20 + 16) = a19;
  JUMPOUT(0x223BF1720);
}

void adm::vp::detail::ProxyFactoryImplementation::configureDownlink(adm::vp::detail::ProxyFactoryImplementation *this, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 180) != 1)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "mDownlinkConfigurationType is not implemented", buf, 2u);
    }

    *this = 0;
    *(this + 1) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
    goto LABEL_19;
  }

  if (!*(a2 + 168))
  {
LABEL_12:
    *this = 0;
    *(this + 16) = 1;
LABEL_20:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(a2 + 160);
  v5 = *(v4 + 32);
  if (*(v4 + 40) - v5 != 16)
  {
    v11 = get_adm_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = (*(v4 + 40) - *(v4 + 32)) >> 4;
      *buf = 134217984;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_223B4A000, v11, OS_LOG_TYPE_ERROR, "context.mProxyImplementationSet.size() is %lu", buf, 0xCu);
    }

    *this = 1;
    *(this + 1) = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
LABEL_19:
    *(this + 16) = 0;
    goto LABEL_20;
  }

  v6 = v5[1];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v8 = v7;
    if (v7)
    {
      v9 = *v5;
      if (*v5)
      {
        if (*(a2 + 112) && *(a2 + 144) && (*(*(a2 + 136) + 56) & 1) != 0)
        {
          if (*(v4 + 56))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
            goto LABEL_12;
          }

          v19 = get_adm_log_object();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223B4A000, v19, OS_LOG_TYPE_DEFAULT, "configuring voice processor downlink", buf, 2u);
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          *buf = 0u;
          v28 = 0u;
          adm::vp::convert(buf, *(v4 + 16));
          adm::vp::SPI::call<VoiceProcessorError ()(void *,VoiceProcessorDownlinkConfiguration const*),VoiceProcessorDownlinkConfiguration*>(&v25, *(a2 + 112), buf);
          if (v26)
          {
            v20 = *(a2 + 112);
            v21 = *(a2 + 120);
            v23[0] = v20;
            v23[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            adm::vp::SPIClient::configure((v9 + 8), v23);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            v17 = 1;
            *(v4 + 56) = 1;
            *this = 1;
          }

          else
          {
            v22 = get_adm_log_object();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              adm::vp::to_json_str<std::error_code>(&__p, &v25);
            }

            v17 = 0;
            *this = v25;
          }
        }

        else
        {
          *this = 0;
          v17 = 1;
        }

        *(this + 16) = v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_20;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *(a2 + 160);
  v15 = *v13;
  v14 = v13[1];
  *(v15 + 8) = v14;
  *v14 = v15;
  --*(a2 + 168);
  std::__destroy_at[abi:ne200100]<adm::vp::detail::ProxyFactoryImplementation::Context<adm::vp::DownlinkConfiguration>,0>((v13 + 2));
  operator delete(v13);
  adm::vp::detail::ProxyFactoryImplementation::configureDownlink(this);
  if (!v8)
  {
    goto LABEL_20;
  }

  v16 = *MEMORY[0x277D85DE8];

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_223BF1AE4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t adm::vp::SPI::call<VoiceProcessorError ()(void *,VoiceProcessorDownlinkConfiguration const*),VoiceProcessorDownlinkConfiguration*>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(*a2 + 40);
  v5 = &adm::vp::unexpected(adm::vp::ErrorCode)::kErrorCategory;
  if (v4)
  {
    result = v4(a2[1], a3);
    if (!result)
    {
      v7 = 1;
      goto LABEL_7;
    }

    v6 = result;
    v5 = &adm::vp::unexpected(VoiceProcessorError)::kSPIErrorCategory;
  }

  else
  {
    v6 = 2;
  }

  v7 = 0;
  *v3 = v6;
  *(v3 + 8) = v5;
LABEL_7:
  *(v3 + 16) = v7;
  return result;
}

void sub_223BF1B6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    a9 = 0;
    _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &a9, 2u);
  }

  *v9 = 6;
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BF1B58);
}

uint64_t adm::vp::SPIClient::configure(caulk::shared_semaphore_mutex *a1, uint64_t *a2)
{
  caulk::shared_semaphore_mutex::lock(a1);
  v4 = *a2;
  if (!*a2)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "inSPI is nullptr", v10, 2u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "inSPI is nullptr");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 6);
  *(a1 + 5) = v4;
  *(a1 + 6) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return caulk::shared_semaphore_mutex::unlock(a1);
}

uint64_t std::__shared_ptr_pointer<adm::vp::detail::UplinkProxyImplementation *,std::expected<adm::vp::detail::ProxyFactoryImplementation::Dispatch<adm::vp::UplinkConfiguration>::ProxyList,std::error_code> adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::UplinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::UplinkConfiguration>::Type const&)::{lambda(adm::vp::detail::UplinkProxyImplementation *)#1},std::allocator<adm::vp::detail::UplinkProxyImplementation>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3adm2vp6detail26ProxyFactoryImplementation17doCreateProxyListINS0_19UplinkConfigurationEEENSt3__18expectedINS2_8DispatchIT_E9ProxyListENS5_10error_codeEEERKNS0_17ImmutableDispatchIS8_E4TypeEEUlPNS1_25UplinkProxyImplementationEE_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<adm::vp::detail::UplinkProxyImplementation *,std::expected<adm::vp::detail::ProxyFactoryImplementation::Dispatch<adm::vp::UplinkConfiguration>::ProxyList,std::error_code> adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::UplinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::UplinkConfiguration>::Type const&)::{lambda(adm::vp::detail::UplinkProxyImplementation *)#1},std::allocator<adm::vp::detail::UplinkProxyImplementation>>::__on_zero_shared(void *a1)
{
  v2 = a1[3];
  v3 = a1[5];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[4];
      if (v5)
      {
        adm::vp::detail::ProxyFactoryImplementation::reConfigureOrDestroyVoiceProcessor(v5);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = a1[5];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_pointer<adm::vp::detail::UplinkProxyImplementation *,std::expected<adm::vp::detail::ProxyFactoryImplementation::Dispatch<adm::vp::UplinkConfiguration>::ProxyList,std::error_code> adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::UplinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::UplinkConfiguration>::Type const&)::{lambda(adm::vp::detail::UplinkProxyImplementation *)#1},std::allocator<adm::vp::detail::UplinkProxyImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{
  this->__vftable = &unk_28371D8D8;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  JUMPOUT(0x223DF43A0);
}

{
  this->__vftable = &unk_28371D8D8;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

adm::vp::SPI **std::unique_ptr<adm::vp::SPI>::~unique_ptr[abi:ne200100](adm::vp::SPI **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    adm::vp::SPI::~SPI(v2);
    MEMORY[0x223DF43A0]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<adm::vp::SPI  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN3adm2vp3SPIEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

adm::vp::SPI *std::__shared_ptr_pointer<adm::vp::SPI  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    adm::vp::SPI::~SPI(result);

    JUMPOUT(0x223DF43A0);
  }

  return result;
}

void std::__shared_ptr_pointer<adm::vp::SPI  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

BOOL adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::InputType>(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = *(*a1 + 8);
    v3 = *(a1 + 24);
    if (*v2 != v3)
    {
      v4 = v2 + 16;
      do
      {
        v5 = *v4;
        v4 += 16;
      }

      while (v5 != v3);
      v2 = v4 - 16;
    }

    *(a1 + 16) = v2;
  }

  v7 = *(v2 + 1);
  v6 = *(v2 + 2);
  if (v7 == v6)
  {
    return 0;
  }

  v8 = v7 + 48;
  do
  {
    v9 = *(v8 - 48);
    result = v9 == a2;
    v11 = v9 == a2 || v8 == v6;
    v8 += 48;
  }

  while (!v11);
  return result;
}

BOOL adm::vp::ImmutableNodeConfiguration<adm::vp::UplinkConfiguration>::has<adm::vp::UplinkNodeConfiguration::OutputType>(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = *(*a1 + 8);
    v3 = *(a1 + 24);
    if (*v2 != v3)
    {
      v4 = v2 + 16;
      do
      {
        v5 = *v4;
        v4 += 16;
      }

      while (v5 != v3);
      v2 = v4 - 16;
    }

    *(a1 + 16) = v2;
  }

  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  if (v7 == v6)
  {
    return 0;
  }

  v8 = v7 + 48;
  do
  {
    v9 = *(v8 - 48);
    result = v9 == a2;
    v11 = v9 == a2 || v8 == v6;
    v8 += 48;
  }

  while (!v11);
  return result;
}

uint64_t std::__shared_ptr_pointer<adm::vp::detail::DownlinkProxyImplementation *,std::expected<adm::vp::detail::ProxyFactoryImplementation::Dispatch<adm::vp::DownlinkConfiguration>::ProxyList,std::error_code> adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::DownlinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::DownlinkConfiguration>::Type const&)::{lambda(adm::vp::detail::DownlinkProxyImplementation *)#1},std::allocator<adm::vp::detail::DownlinkProxyImplementation>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3adm2vp6detail26ProxyFactoryImplementation17doCreateProxyListINS0_21DownlinkConfigurationEEENSt3__18expectedINS2_8DispatchIT_E9ProxyListENS5_10error_codeEEERKNS0_17ImmutableDispatchIS8_E4TypeEEUlPNS1_27DownlinkProxyImplementationEE_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<adm::vp::detail::DownlinkProxyImplementation *,std::expected<adm::vp::detail::ProxyFactoryImplementation::Dispatch<adm::vp::DownlinkConfiguration>::ProxyList,std::error_code> adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::DownlinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::DownlinkConfiguration>::Type const&)::{lambda(adm::vp::detail::DownlinkProxyImplementation *)#1},std::allocator<adm::vp::detail::DownlinkProxyImplementation>>::__on_zero_shared(void *a1)
{
  v2 = a1[3];
  v3 = a1[5];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[4];
      if (v5)
      {
        adm::vp::detail::ProxyFactoryImplementation::reConfigureOrDestroyVoiceProcessor(v5);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = a1[5];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_pointer<adm::vp::detail::DownlinkProxyImplementation *,std::expected<adm::vp::detail::ProxyFactoryImplementation::Dispatch<adm::vp::DownlinkConfiguration>::ProxyList,std::error_code> adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::DownlinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::DownlinkConfiguration>::Type const&)::{lambda(adm::vp::detail::DownlinkProxyImplementation *)#1},std::allocator<adm::vp::detail::DownlinkProxyImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{
  this->__vftable = &unk_28371D928;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  JUMPOUT(0x223DF43A0);
}

{
  this->__vftable = &unk_28371D928;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

BOOL adm::vp::ImmutableNodeConfiguration<adm::vp::DownlinkConfiguration>::has<adm::vp::DownlinkNodeConfiguration::OutputType>(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v1 = *(*a1 + 8);
    v2 = *(a1 + 24);
    if (*v1 != v2)
    {
      v3 = v1 + 16;
      do
      {
        v4 = *v3;
        v3 += 16;
      }

      while (v4 != v2);
      v1 = v3 - 16;
    }

    *(a1 + 16) = v1;
  }

  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  if (v6 == v5)
  {
    return 0;
  }

  v7 = v6 + 48;
  do
  {
    v8 = *(v7 - 48);
    result = v8 == 0;
    if (v8)
    {
      v10 = v7 == v5;
    }

    else
    {
      v10 = 1;
    }

    v7 += 48;
  }

  while (!v10);
  return result;
}

_BYTE *adm::vp::SPIErrorCategory::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 > 1651270507)
  {
    if (a1 > 1651733600)
    {
      if (a1 == 1651733601)
      {
        v13 = *MEMORY[0x277D85DE8];
        v6 = "bad state";
        goto LABEL_20;
      }

      if (a1 == 2004186175)
      {
        v9 = *MEMORY[0x277D85DE8];
        v6 = "unknown error has occurred";
        goto LABEL_20;
      }
    }

    else
    {
      if (a1 == 1651270508)
      {
        v11 = *MEMORY[0x277D85DE8];
        v6 = "bad legacy call";
        goto LABEL_20;
      }

      if (a1 == 1651664230)
      {
        v7 = *MEMORY[0x277D85DE8];
        v6 = "bad VoiceProcessorRef";
        goto LABEL_20;
      }
    }
  }

  else if (a1 > 1651076963)
  {
    if (a1 == 1651076964)
    {
      v12 = *MEMORY[0x277D85DE8];
      v6 = "bad VoiceProcessor[Uplink|Downlink]IOData";
      goto LABEL_20;
    }

    if (a1 == 1651270507)
    {
      v8 = *MEMORY[0x277D85DE8];
      v6 = "back lock";
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 == 1650553447)
    {
      v10 = *MEMORY[0x277D85DE8];
      v6 = "bad argument";
      goto LABEL_20;
    }

    if (a1 == 1650681447)
    {
      v5 = *MEMORY[0x277D85DE8];
      v6 = "bad VoiceProcessor[Uplink|Downlink]Configuration";
LABEL_20:

      return std::string::basic_string[abi:ne200100]<0>(a2, v6);
    }
  }

  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    v17[0] = 67109120;
    v17[1] = a1;
    _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown return status %d in voice processor proxy SPI - file a radar for Audio - DSP Software", v17, 8u);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a2, "???");
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void adm::vp::SPIErrorCategory::~SPIErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x223DF43A0);
}

void adm::vp::SPI::~SPI(adm::vp::SPI *this)
{
  v6 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "destroying voice processor", buf, 2u);
  }

  if ((*(*this + 16))(*(this + 1)))
  {
    v3 = get_adm_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[6],char [6],0>(buf);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_223BF27A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 buf, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a23);
    v24 = &a19;
    v25 = -64;
    do
    {
      v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v24) - 32;
      v25 += 32;
    }

    while (v25);
    __cxa_begin_catch(exception_object);
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x223BF2630);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adm::utility::getPortSubType(unsigned int a1, unsigned int a2, int a3, char **a4)
{
  if (a1 == 1970496032)
  {
    v4 = 1970496032;
    v5 = *(a4 + 23);
    if (v5 >= 0)
    {
      v6 = a4;
    }

    else
    {
      v6 = *a4;
    }

    if (v5 < 0)
    {
      v5 = a4[1];
    }

    if (v5 >= 9)
    {
      v7 = &v6[v5];
      v8 = v6;
      do
      {
        v9 = memchr(v8, 48, v5 - 8);
        if (!v9)
        {
          break;
        }

        if (*v9 == 0x3131313A43413530 && v9[8] == 52)
        {
          if (v9 != v7 && v9 - v6 != -1)
          {
            return 909127729;
          }

          return v4;
        }

        v8 = v9 + 1;
        v5 = v7 - v8;
      }

      while (v7 - v8 >= 9);
    }
  }

  else if (a1 == 1651275109)
  {
    if ((a3 - 1) >= 3)
    {
      return 1651275109;
    }

    else
    {
      return dword_223C03A48[a3 - 1];
    }
  }

  else if (a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }

  return v4;
}

uint64_t audiodspcontroller_audiodspcontrol_prepareforio(uint64_t *a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6, void *a7, uint64_t *a8)
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  v15 = *a1;
  v16 = tb_client_connection_message_construct();
  if (v16)
  {
    goto LABEL_7;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  tb_message_raw_encode_u32();
  audiodsptypes_streamdescription__raw_encode(v26, a3);
  audiodsptypes_streamdescription__raw_encode(v26, a4);
  audiodsptypes_streamdescription__raw_encode(v26, a5);
  v17 = *a6;
  tb_message_raw_encode_u64();
  v18 = *a6;
  if (*a6 == 0x8C3BC6B79890B85 || v18 == 0x3DF307DCB53822F3)
  {
    v19 = *a7;
    tb_message_raw_encode_u64();
    if (*a7 == 0x29D9165411843273)
    {
      audiodsputility_outputport__raw_encode(v26, a8);
      tb_message_complete();
      v20 = *a1;
      v21 = tb_connection_send_query();
      if ((v21 & 0xFFFFFFF7) != 0)
      {
        v16 = v21;
        v22 = *a1;
        tb_client_connection_message_destruct();
      }

      else
      {
        v25 = *a1;
        tb_client_connection_message_destruct();
        v16 = 4;
      }

LABEL_7:
      v23 = *MEMORY[0x277D85DE8];
      return v16;
    }

    printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", *a7, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 3201);
    _os_crash();
    __break(1u);
  }

  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v18, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 3299);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t audiodsptypes_streamdescription__raw_encode(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  tb_message_raw_encode_u32();
  v4 = *(a2 + 1);
  tb_message_raw_encode_u64();
  v5 = *(a2 + 1);
  if (v5 != 0xA324521D2548FDC2)
  {
    printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v5, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 491);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(a2 + 2);
  result = tb_message_raw_encode_u64();
  v8 = *(a2 + 2);
  if (v8 <= 0x4709E2ED84FF14ALL)
  {
    if (v8 > 0xDB58BC24D81FB94ELL)
    {
      if (v8 == 0xDB58BC24D81FB94FLL)
      {
        return result;
      }

      v9 = 0xEF2093B88F8E7C91;
    }

    else
    {
      if (v8 == 0xA35EFE3E1F8EBC3ALL)
      {
        return result;
      }

      v9 = 0xD64B2C69CF7E5942;
    }

    goto LABEL_14;
  }

  if (v8 <= 0x26F9951B5B225FF2)
  {
    if (v8 == 0x4709E2ED84FF14BLL)
    {
      return result;
    }

    v9 = 0xF3D427428C99B29;
LABEL_14:
    if (v8 == v9)
    {
      return result;
    }

LABEL_17:
    printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v8, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 210);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (v8 != 0x26F9951B5B225FF3 && v8 != 0x4C7CB07FE50E5462)
  {
    v9 = 0x5460BCD664C6C7FALL;
    goto LABEL_14;
  }

  return result;
}

uint64_t audiodsputility_outputport__raw_encode(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = tb_message_raw_encode_u64();
  v5 = *a2;
  if (*a2 > 0xE0BAAD14F9DBDDEFLL)
  {
    if (v5 > 0x455F57CA4B039ED8)
    {
      if (v5 > 0x5814DD695070736ELL)
      {
        if (v5 == 0x5814DD695070736FLL)
        {
          return result;
        }

        v6 = 0x7E234EE52CCEAB90;
      }

      else
      {
        if (v5 == 0x455F57CA4B039ED9)
        {
          return result;
        }

        v6 = 0x57839668489FE6E1;
      }
    }

    else if (v5 > 0xFE52B066A3299AA0)
    {
      if (v5 == 0xFE52B066A3299AA1)
      {
        return result;
      }

      v6 = 0x2F66DF9B2814CFB5;
    }

    else
    {
      if (v5 == 0xE0BAAD14F9DBDDF0)
      {
        return result;
      }

      v6 = 0xF8050C060D986E6BLL;
    }
  }

  else if (v5 > 0xB89E299E0626F288)
  {
    if (v5 > 0xD333A5300DE06CEFLL)
    {
      if (v5 == 0xD333A5300DE06CF0)
      {
        return result;
      }

      v6 = 0xDEBD14632E00370BLL;
    }

    else
    {
      if (v5 == 0xB89E299E0626F289)
      {
        return result;
      }

      v6 = 0xC355D4D55002AF8CLL;
    }
  }

  else if (v5 > 0xAC3D9F9FC752B77CLL)
  {
    if (v5 == 0xAC3D9F9FC752B77DLL)
    {
      return result;
    }

    v6 = 0xB5C617462A130B2FLL;
  }

  else
  {
    if (v5 == 0x92D97930F1887DE3)
    {
      return result;
    }

    v6 = 0xA5B814BA7E080C1ALL;
  }

  if (v5 != v6)
  {
    printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v5, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 2752);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t audiodspcontroller_audiodspcontrol_setparameter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *a3;
  v6 = *a1;
  v7 = tb_client_connection_message_construct();
  if (v7)
  {
    goto LABEL_43;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  v8 = *a2;
  tb_message_raw_encode_u64();
  v9 = *a2;
  if (*a2 > 0xE2E55DD580132637)
  {
    if (v9 > 0x49534BEB5B166B7ALL)
    {
      if (v9 == 0x49534BEB5B166B7BLL || v9 == 0x6F7ACC7D3D83C1A8)
      {
        goto LABEL_18;
      }

      v10 = 0x722B4C09C3EA568FLL;
    }

    else
    {
      if (v9 == 0xE2E55DD580132638 || v9 == 0xE95D2CBE682F3546)
      {
        goto LABEL_18;
      }

      v10 = 0xFCE7912C58C9DED8;
    }
  }

  else if (v9 > 0xB2828DE17EE871DDLL)
  {
    if (v9 == 0xB2828DE17EE871DELL || v9 == 0xB36663373B8DBD3ELL)
    {
      goto LABEL_18;
    }

    v10 = 0xD651CBD5B1375569;
  }

  else
  {
    if (v9 == 0x8410829DB500FB3CLL || v9 == 0x8A4D9A6CD80AC7E5)
    {
      goto LABEL_18;
    }

    v10 = 0xA743B5FF2B4E9891;
  }

  if (v9 != v10)
  {
    printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v9, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 1789);
    _os_crash();
    __break(1u);
    goto LABEL_54;
  }

LABEL_18:
  v11 = *a3;
  tb_message_raw_encode_u64();
  v12 = *a3;
  if (*a3 <= 0xE9CAC24E271E100FLL)
  {
    if (v12 <= 0xBE1AC77697E53FFBLL)
    {
      if (v12 != 0x8695345E04E75645 && v12 != 0xB2A314BCFDE57EE2)
      {
        v13 = 0xBA94426FF040F022;
        goto LABEL_27;
      }

LABEL_40:
      v18 = *(a3 + 8);
      tb_message_raw_encode_BOOL();
      goto LABEL_41;
    }

    if (v12 != 0xBE1AC77697E53FFCLL)
    {
      if (v12 == 0xC83C98BC329601F9)
      {
        goto LABEL_40;
      }

      if (v12 == 0xE1D8FF437BB62643)
      {
        goto LABEL_32;
      }

      goto LABEL_54;
    }

    v25 = *(a3 + 2);
    tb_message_raw_encode_u32();
LABEL_41:
    tb_message_complete();
    v19 = *a1;
    v20 = tb_connection_send_query();
    if ((v20 & 0xFFFFFFF7) != 0)
    {
      v7 = v20;
      v21 = *a1;
      tb_client_connection_message_destruct();
    }

    else
    {
      v24 = *a1;
      tb_client_connection_message_destruct();
      v7 = 4;
    }

LABEL_43:
    v22 = *MEMORY[0x277D85DE8];
    return v7;
  }

  if (v12 <= 0x23580A01CC35D89DLL)
  {
    if (v12 == 0xE9CAC24E271E1010)
    {
      goto LABEL_40;
    }

    if (v12 != 0xF64FC5679D8C50C8)
    {
      v13 = 0xF876E807C3E4A3E7;
LABEL_27:
      if (v12 != v13)
      {
        goto LABEL_54;
      }

      goto LABEL_40;
    }

LABEL_32:
    v14 = *(a3 + 8);
    tb_message_raw_encode_u8();
    goto LABEL_41;
  }

  if (v12 == 0x23580A01CC35D89ELL || v12 == 0x67D58230E14B515BLL)
  {
    goto LABEL_40;
  }

  if (v12 == 0x7F1E21C17219CAE8)
  {
    v15 = a3[1];
    tb_message_raw_encode_u64();
    v16 = a3[1];
    if (v16 <= 0xB941EFAD2C01A1F6)
    {
      if (v16 == 0x8D3025BDD0206734 || v16 == 0x966DBF642921EE02)
      {
        goto LABEL_41;
      }

      v17 = 0x996B795339B4732BLL;
    }

    else if (v16 > 0xE69699D348D1431)
    {
      if (v16 == 0xE69699D348D1432)
      {
        goto LABEL_41;
      }

      v17 = 0x2C1A98D65FB58883;
    }

    else
    {
      if (v16 == 0xB941EFAD2C01A1F7)
      {
        goto LABEL_41;
      }

      v17 = 0xF7C7674340E151C8;
    }

    if (v16 != v17)
    {
      printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v16, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 744);
      _os_crash();
      __break(1u);
    }

    goto LABEL_41;
  }

LABEL_54:
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v12, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 1106);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t audiodspcontrollerdebug_audiodspcontroldebug_sethosttime(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  result = tb_client_connection_message_construct();
  if (!result)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = *a1;
    tb_connection_send_query();
    v5 = *a1;
    result = tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void _GLOBAL__sub_I_CustomPropertyManager_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  adm::CustomPropertyManager::kParameterMappings[0] = "SdAvtpni";
  LOBYTE(dword_28133B518) = 0;
  byte_28133B51C = 0;
  qword_28133B528 = 0;
  unk_28133B530 = 0;
  qword_28133B520 = 0;
  std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view const*,std::string_view const*>();
}

void sub_223BF3A7C(_Unwind_Exception *exception_object)
{
  v3 = &unk_28133B570;
  while (1)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      *(v3 - 3) = v4;
      operator delete(v4);
    }

    v3 -= 48;
    if (v3 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void _GLOBAL__sub_I_DSPGraphKernel_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_DSPProcessor_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void __cxx_global_var_init()
{
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = -1;
    std::bad_alloc::bad_alloc(&v10);
    v6 = &unk_28371AC38;
    v10.__vftable = &unk_28371AC58;
    v2 = 0;
    v3 = 0uLL;
    v4 = -1;
    v1 = &unk_28371ACC0;
    v5[0].__vftable = &unk_28371ACF0;
    v5[1].__vftable = &unk_28371AD30;
    v0 = 0;
    v4 = v9;
    v3 = v8;
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v2, 0);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v0);
    *&v3 = "exception_ptr boost::exception_detail::get_static_exception_object() [Exception = boost::exception_detail::bad_alloc_]";
    *(&v3 + 1) = "/AppleInternal/Library/BuildRoots/4~B_v9ugCfl_iHGmVX3VJVx9AlrrqZOFYAFtcmsZo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/exception/detail/exception_ptr.hpp";
    v4 = 174;
    {
      operator new();
    }

    boost::exception_detail::exception_ptr_static_exception_object<boost::exception_detail::bad_alloc_>::e = boost::exception_detail::get_static_exception_object<boost::exception_detail::bad_alloc_>(void)::ep;
    *algn_28133B508 = *algn_28133B4E8;
    if (*algn_28133B4E8)
    {
      atomic_fetch_add_explicit((*algn_28133B4E8 + 8), 1u, memory_order_relaxed);
    }

    std::bad_alloc::~bad_alloc(v5);
    v1 = &unk_28371C520;
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v2);
    std::bad_alloc::~bad_alloc(&v10);
    v6 = &unk_28371C520;
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v7);

    __cxa_atexit(boost::exception_ptr::~exception_ptr, &boost::exception_detail::exception_ptr_static_exception_object<boost::exception_detail::bad_alloc_>::e, &dword_223B4A000);
  }
}

void sub_223BF3E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  MEMORY[0x223DF43A0](v3, 0x10F1C4085500448);
  boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::~clone_impl(va);
  boost::exception_detail::bad_alloc_::~bad_alloc_(va1);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_1()
{
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = -1;
    v6 = &unk_28371ADF8;
    v10.__vftable = &unk_28371AE18;
    v4 = -1;
    v1 = &unk_28371AE80;
    v2 = 0;
    v5[0].__vftable = &unk_28371AEB0;
    v5[1].__vftable = &unk_28371AEF0;
    v0 = 0;
    v3 = 0uLL;
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v2, 0);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v0);
    *&v3 = "exception_ptr boost::exception_detail::get_static_exception_object() [Exception = boost::exception_detail::bad_exception_]";
    *(&v3 + 1) = "/AppleInternal/Library/BuildRoots/4~B_v9ugCfl_iHGmVX3VJVx9AlrrqZOFYAFtcmsZo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/exception/detail/exception_ptr.hpp";
    v4 = 174;
    {
      operator new();
    }

    boost::exception_detail::exception_ptr_static_exception_object<boost::exception_detail::bad_exception_>::e = boost::exception_detail::get_static_exception_object<boost::exception_detail::bad_exception_>(void)::ep;
    *algn_28133B4F8 = *algn_28133B4D8;
    if (*algn_28133B4D8)
    {
      atomic_fetch_add_explicit((*algn_28133B4D8 + 8), 1u, memory_order_relaxed);
    }

    std::bad_exception::~bad_exception(v5);
    v1 = &unk_28371C520;
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v2);
    std::bad_exception::~bad_exception(&v10);
    v6 = &unk_28371C520;
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v7);

    __cxa_atexit(boost::exception_ptr::~exception_ptr, &boost::exception_detail::exception_ptr_static_exception_object<boost::exception_detail::bad_exception_>::e, &dword_223B4A000);
  }
}

void sub_223BF41CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  MEMORY[0x223DF43A0](v4, 0x10F1C4085500448);
  boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::~clone_impl(va);
  boost::exception_detail::bad_exception_::~bad_exception_(va1);
  _Unwind_Resume(a1);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

void std::system_error::~system_error(std::system_error *this)
{
  MEMORY[0x2821F7778](this);
}

{
  MEMORY[0x2821F7780](this);
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}