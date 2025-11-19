void sub_1DE64EB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, DSP_Dictionariable::DictionariableKvp *a10, DSP_Dictionariable::DictionariableKvp *a11, DSP_Dictionariable::DictionariableKvp *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, DSP_Dictionariable::DictionariableKvp *a17, DSP_Dictionariable::DictionariableKvp *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v28 - 112));
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v30);
  applesauce::CF::DictionaryRef::~DictionaryRef((v28 - 136));
  std::optional<applesauce::CF::ArrayRef>::~optional(&a25);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a27);
  _Unwind_Resume(a1);
}

void sub_1DE64ED7C()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED14);
}

void sub_1DE64EDB0()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED0CLL);
}

void sub_1DE64EDE4()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED24);
}

void sub_1DE64EDFC()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED04);
}

void DSP_Host_Types::ConfigurationChangeRequest::add_to(DSP_Host_Types::ConfigurationChangeRequest *this, __CFDictionary **a2)
{
  if (*(this + 41) == 1)
  {
    v4 = (*(this + 40) ? MEMORY[0x1E695E4C8] : MEMORY[0x1E695E4B8]);
    v5 = *v4;
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(*a2, *(this + 4), *v4);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*(this + 65) == 1)
  {
    v6 = (*(this + 64) ? MEMORY[0x1E695E4C8] : MEMORY[0x1E695E4B8]);
    v7 = *v6;
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(*a2, *(this + 7), *v6);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  DSP_Host_Types::IOContextDescription::add_to((this + 72), a2);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0uLL;
  v8 = *(this + 84);
  v9 = *(this + 85);
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      v11 = *v8;
      v12 = v8[1];
      *&v18 = *v8;
      *(&v18 + 1) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        if (*(v11 + 137) == 1 && (*(v11 + 136) & 1) != 0)
        {
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v19 = v11;
          *(&v19 + 1) = v12;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            v13 = *(&v18 + 1);
          }

          else
          {
            v13 = v12;
          }

          v10 = v12;
          if (!v13)
          {
            goto LABEL_27;
          }

LABEL_26:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          goto LABEL_27;
        }

        std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v20, &v18);
      }

      v13 = v12;
      if (v12)
      {
        goto LABEL_26;
      }

LABEL_27:
      v8 += 2;
    }

    while (v8 != v9);
  }

  std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v20, &v19);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  *&v18 = Mutable;
  v15 = v20;
  v16 = v21;
  if (v20 != v21)
  {
    do
    {
      if (*v15)
      {
        (*(**v15 + 40))(*v15, &v18);
      }

      v15 += 2;
    }

    while (v15 != v16);
    Mutable = v18;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"device descriptions", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  *&v19 = &v20;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1DE64F0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a14;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::NegotiateRequest::debug_log_device_summary(DSP_Host_Types::NegotiateRequest *this, const char *a2)
{
  if (!a2)
  {
    a2 = "NegotiateRequest";
  }

  return DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(this, a2);
}

uint64_t DSP_Host_Types::AdaptRequest::debug_log_device_summary(DSP_Host_Types::AdaptRequest *this, const char *a2)
{
  if (!a2)
  {
    a2 = "AdaptRequest";
  }

  return DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(this, a2);
}

void DSP_Host_Types::DeviceConfiguration::add_to(DSP_Host_Types::DeviceConfiguration *this, __CFArray **a2)
{
  DSP_Host_Types::BluetoothLookup::toString(v4, *(this + 22));
  DSP_Dictionariable::SingleKvp<std::string>::operator=(this + 256, v4);
  v4[0] = &unk_1F5985C78;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(v4[2]);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v4);
  DSP_Host_Types::DeviceConfiguration::init_set(this);
  DSP_Dictionariable::DictionarySet::add_to((this + 232), a2);
}

void DSP_Host_Types::BluetoothLookup::toString(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bluetooth format");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(a1, __p);
  *a1 = &unk_1F5985C78;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if ((a2 & 0x100000000) == 0)
    {
      return;
    }
  }

  else if ((a2 & 0x100000000) == 0)
  {
    return;
  }

  v4 = 0;
  __p[1] = "automatic";
  v7 = 1;
  v9 = "sco";
  v10 = 2;
  v11 = "a2dp";
  v12 = 3;
  v13 = "lea";
  LODWORD(__p[0]) = 0;
  while (LODWORD(__p[v4]) != a2)
  {
    v4 += 2;
    if (v4 == 8)
    {
      return;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, __p[v4 + 1]);
  std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>((a1 + 16), &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_1DE64F5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  DSP_Dictionariable::SingleKvp<std::string>::~SingleKvp(v21);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DeviceConfiguration::init_set(DSP_Host_Types::DeviceConfiguration *this)
{
  v1 = (this + 232);
  if (*(this + 29) == *(this + 30))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 232), (this + 24));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 72));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 104));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 128));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 152));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 256));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 184));

    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 208));
  }
}

uint64_t DSP_Host_Types::DeviceConfiguration::load_from(uint64_t **this, CFDictionaryRef *a2)
{
  DSP_Host_Types::DeviceConfiguration::init_set(this);
  v4 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 29, a2, (this + 1));
  if ((this[32][4])(this + 256))
  {
    v5 = 0;
    v13 = "automatic";
    v14 = 1;
    v15 = "sco";
    v16 = 2;
    v17 = "a2dp";
    v18 = 3;
    v19 = "lea";
    v12[0] = 0;
    do
    {
      v6 = *&v12[v5 + 2];
      DSP_Dictionariable::SingleKvp<std::string>::value(&__s2, (this + 32));
      if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = __s2.__r_.__value_.__r.__words[0];
        v8 = strcmp(v6, __s2.__r_.__value_.__l.__data_);
        operator delete(v7);
        if (!v8)
        {
LABEL_9:
          v9 = v12[v5] | 0x100000000;
          goto LABEL_10;
        }
      }

      else if (!strcmp(v6, &__s2))
      {
        goto LABEL_9;
      }

      v5 += 4;
    }

    while (v5 != 16);
  }

  v9 = 0;
LABEL_10:
  *(this + 44) = v9;
  *(this + 180) = BYTE4(v9);
  return v4;
}

void DSP_Host_Types::DeviceConfiguration::add_to(DSP_Host_Types::DeviceConfiguration *this, __CFDictionary **a2)
{
  DSP_Host_Types::BluetoothLookup::toString(v4, *(this + 22));
  DSP_Dictionariable::SingleKvp<std::string>::operator=(this + 256, v4);
  v4[0] = &unk_1F5985C78;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(v4[2]);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v4);
  DSP_Host_Types::DeviceConfiguration::init_set(this);
  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 29, a2, this + 8);
}

void DSP_Host_Types::DeviceConfiguration::~DeviceConfiguration(DSP_Host_Types::DeviceConfiguration *this)
{
  DSP_Host_Types::DeviceConfiguration::~DeviceConfiguration(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985B10;
  v2 = (this + 256);
  *(this + 32) = &unk_1F5985C78;
  if (*(this + 296) == 1 && *(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 208));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 184));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 152));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 128));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 104));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 72));
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985F18;
  if (*(this + 16) == 1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t DSP_Host_Types::NegotiateResponse::load_from(DSP_Host_Types::NegotiateResponse *this, CFDictionaryRef *a2)
{
  v17[0] = &unk_1F598EC08;
  v17[1] = 0;
  v18 = a2;
  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, @"io context configuration"))
  {
    v4 = applesauce::CF::details::at_key<__CFString const*&>(*v18, @"io context configuration");
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not find item");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::DictionaryRef::from_get(v20, v4);
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 3);
    v21 = &unk_1F598EC08;
    v22 = 0;
    v23 = v20;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v20[0], @"io context supported input formats");
    if (v15 == 1)
    {
      v11 = DSP_Host_Types::load_list_from<DSP_Host_Types::FormatDescription>(this + 3, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v11 = 1;
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v21);
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 6);
    v21 = &unk_1F598EC08;
    v22 = 0;
    v23 = v20;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v20[0], @"io context supported output formats");
    if (v15 == 1)
    {
      v11 &= DSP_Host_Types::load_list_from<DSP_Host_Types::FormatDescription>(this + 6, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v21);
    if (v20[0])
    {
      CFRelease(v20[0]);
    }
  }

  else
  {
    v11 = 1;
  }

  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 9);
  cf = &unk_1F598EC08;
  v15 = 0;
  v16 = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"device configurations");
  if (v13 == 1)
  {
    v5 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v7 = CFArrayGetCount(v5);
      if (Count && v7)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v19, v5, 0);
        std::allocate_shared[abi:ne200100]<DSP_Host_Types::DeviceConfiguration,std::allocator<DSP_Host_Types::DeviceConfiguration>,char const(&)[1],0>();
      }

      if (*(this + 9) == *(this + 10))
      {
        v8 = 0;
      }

      else
      {
        v8 = v11;
      }

      if (v5 && (v13 & 1) != 0)
      {
        CFRelease(v5);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v11;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&cf);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v17);
  return v8;
}

void sub_1DE64FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, const void *);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va2);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va1);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_Types::load_list_from<DSP_Host_Types::FormatDescription>(void *a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*a2);
  v6 = *a2;
  if (v6)
  {
    v7 = CFArrayGetCount(v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = v2 == v6 && v7 == 0;
  if (Count)
  {
    if (!v10)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v2, 0);
      operator new();
    }
  }

  return *a1 != a1[1];
}

void sub_1DE650144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::NegotiateResponse::add_to(DSP_Host_Types::NegotiateResponse *this, __CFDictionary **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v17 = Mutable;
  v5 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v16 = v5;
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6 != v7)
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 40))(*v6, &v16);
      }

      v6 += 2;
    }

    while (v6 != v7);
    v5 = v16;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v5);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(Mutable, @"io context supported input formats", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v8 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v16 = v8;
  v9 = *(this + 6);
  v10 = *(this + 7);
  if (v9 != v10)
  {
    do
    {
      if (*v9)
      {
        (*(**v9 + 40))(*v9, &v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v8 = v16;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v8);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(Mutable, @"io context supported output formats", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v16, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::DictionaryRef>(*a2, @"io context configuration", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v17 = v11;
  v13 = *(this + 9);
  v12 = *(this + 10);
  if (v13 == v12)
  {
    v14 = v11;
  }

  else
  {
    do
    {
      if (*v13)
      {
        (*(**v13 + 40))(*v13, &v17);
      }

      v13 += 2;
    }

    while (v13 != v12);
    v14 = v17;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&v16, v14);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"device configurations", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void sub_1DE650414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AdaptResponse::load_from(DSP_Host_Types::AdaptResponse *this, CFDictionaryRef *a2)
{
  v4 = (this + 48);
  if (*(this + 6) == *(this + 7))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 48), (this + 24));
  }

  return DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(v4, a2, this + 8);
}

void DSP_Host_Types::AdaptResponse::add_to(DSP_Host_Types::AdaptResponse *this, __CFDictionary **a2)
{
  v4 = (this + 48);
  if (*(this + 6) == *(this + 7))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 48), (this + 24));
  }

  DSP_Dictionariable::DictionarySet::maybe_add_under_key(v4, a2, this + 8);
}

void DSP_Host_Types::DSPPropertyInfo::add_to(DSP_Host_Types::DSPPropertyInfo *this, __CFArray **a2)
{
  DSP_Host_Types::DSPPropertyInfo::init_set(this);

  DSP_Dictionariable::DictionarySet::add_to((this + 296), a2);
}

void DSP_Host_Types::DSPPropertyInfo::init_set(DSP_Host_Types::DSPPropertyInfo *this)
{
  if (*(this + 37) == *(this + 38))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 24));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 48));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 72));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 96));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 120));

    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 208));
  }
}

uint64_t DSP_Host_Types::DSPPropertyInfo::load_from(uint64_t **this, CFDictionaryRef *a2)
{
  DSP_Host_Types::DSPPropertyInfo::init_set(this);

  return DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 37, a2, (this + 1));
}

void DSP_Host_Types::DSPPropertyInfo::add_to(uint64_t **this, __CFDictionary **a2)
{
  DSP_Host_Types::DSPPropertyInfo::init_set(this);

  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 37, a2, (this + 1));
}

void DSP_Host_Types::DSPPropertyInfo::~DSPPropertyInfo(DSP_Host_Types::DSPPropertyInfo *this)
{
  DSP_Host_Types::DSPPropertyInfo::~DSPPropertyInfo(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985BB0;
  v2 = *(this + 37);
  if (v2)
  {
    *(this + 38) = v2;
    operator delete(v2);
  }

  *(this + 26) = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](this + 264);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](this + 232);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 208));
  *(this + 15) = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](this + 176);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](this + 144);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 120));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 96));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985FB0;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

BOOL DSP_Host_Types::DSPPropertyInfoArray::load_from(DSP_Host_Types::DSPPropertyInfoArray *this, CFDictionaryRef *a2)
{
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 3);
  v11[0] = &unk_1F598EC08;
  v11[1] = 0;
  v11[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"custom property info array");
  if (v10 == 1)
  {
    v4 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v6 = CFArrayGetCount(v4);
      if (Count && v6)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v4, 0);
        std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>();
      }

      v7 = *(this + 3) != *(this + 4);
      if (v4 && (v10 & 1) != 0)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v11);
  return v7;
}

void sub_1DE650BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a14);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a9);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a11);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSPPropertyInfoArray::add_to(DSP_Host_Types::DSPPropertyInfoArray *this, __CFDictionary **a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9 = Mutable;
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (v6 == v5)
  {
    v7 = Mutable;
  }

  else
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 40))(*v6, &v9);
      }

      v6 += 2;
    }

    while (v6 != v5);
    v7 = v9;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v7);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"custom property info array", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1DE650CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va);
  _Unwind_Resume(a1);
}

DSP_Host_Types::FormatDescription *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription*,DSP_Host_Types::FormatDescription*,DSP_Host_Types::FormatDescription*>(DSP_Host_Types::FormatDescription *a1, DSP_Host_Types::FormatDescription *a2, DSP_Host_Types::FormatDescription *this)
{
  if (a1 == a2)
  {
    return this;
  }

  v4 = a1;
  v5 = 0;
  v6 = this - 152;
  v7 = this;
  do
  {
    DSP_Host_Types::FormatDescription::FormatDescription(v7, v4);
    v4 = (v4 + 152);
    v7 = (v7 + 152);
    v5 -= 152;
    v6 += 152;
  }

  while (v4 != a2);
  return v7;
}

void *std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE65114C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE6513B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::operator=(uint64_t a1, _DWORD *a2)
{
  *(a1 + 40) = *a2;
  *(a1 + 44) = 1;
  *(a1 + 64) = a2[1];
  *(a1 + 68) = 1;
  *(a1 + 88) = a2[2];
  *(a1 + 92) = 1;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((a1 + 96));
  if (a2[2])
  {
    operator new();
  }

  return a1;
}

void sub_1DE6515F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::~DSP_Host_DictionaryData(v18);
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v20);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::hash_equal(DSP_Host_Types::AudioChannelConfiguration *this, const DSP_Host_Types::AudioChannelConfiguration *a2)
{
  v4 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(this);
  if (v4 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(a2))
  {
    return 0;
  }

  v5 = *(this + 12);
  v6 = *(this + 13);
  if (v6 - v5 != *(a2 + 13) - *(a2 + 12) || v6 == v5)
  {
    return 1;
  }

  v9 = 0;
  do
  {
    v10 = v5 + 16 * v9;
    result = *v10;
    if (!*v10)
    {
      break;
    }

    v11 = (*(a2 + 12) + 16 * v9);
    if (!*v11)
    {
      return 0;
    }

    v12 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(result);
    if (v12 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(*v11))
    {
      return 0;
    }

    v14 = *(*v10 + 72);
    v13 = *(*v10 + 80);
    v15 = *(*v11 + 9);
    if (v13 - v14 != *(*v11 + 10) - v15)
    {
      return 0;
    }

    while (v14 != v13)
    {
      if (*v14 != *v15)
      {
        return 0;
      }

      ++v14;
      ++v15;
    }

    ++v9;
    v5 = *(this + 12);
    result = 1;
  }

  while (v9 < (*(this + 13) - v5) >> 4);
  return result;
}

uint64_t DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (a1[1] == *a1)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v2 + 16 * v5);
    if (!v6)
    {
      return 0;
    }

    v7 = *(*a2 + 16 * v5);
    if (!v7)
    {
      return 0;
    }

    v8 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v6);
    if (v8 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v7))
    {
      return 0;
    }

    v9 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v6 + 14));
    if (v9 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v7 + 14)))
    {
      return 0;
    }

    v10 = v6[42];
    v11 = v6[43];
    if (v11 - v10 != v7[43] - v7[42])
    {
      return 0;
    }

    if (v11 != v10)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v7[42];
        v15 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v10 + v12));
        if (v15 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v14 + v12)))
        {
          return 0;
        }

        ++v13;
        v10 = v6[42];
        v12 += 152;
      }

      while (v13 < 0x86BCA1AF286BCA1BLL * ((v6[43] - v10) >> 3));
    }

    ++v5;
    v2 = *a1;
    if (v5 >= (a1[1] - *a1) >> 4)
    {
      return 1;
    }
  }
}

_BYTE *DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(_BYTE *a1, int a2)
{
  v2 = a2;
  if ((a2 & 0x20) != 0)
  {
    v6 = "identical";
  }

  else
  {
    if (a2)
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "same ", 5);
      if (v2)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "activation ", 11);
      }

      if ((v2 & 2) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "processing ", 11);
      }

      if ((v2 & 4) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "device list ", 12);
      }

      if ((v2 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "device traits ", 14);
      }

      if ((v2 & 0x10) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "streams used ", 13);
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a1, v7);
      v7[0] = *MEMORY[0x1E69E54D8];
      v4 = *(MEMORY[0x1E69E54D8] + 72);
      *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v8 = v4;
      v9 = MEMORY[0x1E69E5548] + 16;
      if (v11 < 0)
      {
        operator delete(v10[7].__locale_);
      }

      v9 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v10);
      std::iostream::~basic_iostream();
      return MEMORY[0x1E12C15F0](&v12);
    }

    v6 = "different";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v6);
}

void sub_1DE651B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::util_compare_request(DSP_Host_Types::ConfigurationChangeRequest *this, const DSP_Host_Types::ConfigurationChangeRequest *a2, int a3)
{
  if (a3 && (DSP_Host_Types::ConfigurationChangeRequest::hash_equal(this, a2) & 1) != 0)
  {
    return 63;
  }

  v6 = DSP_Dictionariable::SingleKvp<BOOL>::operator==(this + 24, a2 + 24);
  if (*(this + 14) == *(a2 + 14))
  {
    v7 = *(this + 12);
    if (v7 == (this + 104))
    {
LABEL_19:
      v13 = 2;
      goto LABEL_21;
    }

    v8 = *(a2 + 12);
    while (*(v7 + 7) == *(v8 + 7))
    {
      v9 = v7[1];
      v10 = v7;
      if (v9)
      {
        do
        {
          v7 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v7 = v10[2];
          v28 = *v7 == v10;
          v10 = v7;
        }

        while (!v28);
      }

      v11 = v8[1];
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
          v12 = v8[2];
          v28 = *v12 == v8;
          v8 = v12;
        }

        while (!v28);
      }

      v8 = v12;
      if (v7 == (this + 104))
      {
        goto LABEL_19;
      }
    }
  }

  v13 = 0;
LABEL_21:
  v5 = v13 | v6;
  v14 = *(this + 85);
  v15 = *(this + 84);
  if (v14 - v15 == *(a2 + 85) - *(a2 + 84))
  {
    v5 |= 0xCu;
    if (v14 != v15)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *(v15 + v16);
        if (!v18)
        {
          break;
        }

        v19 = *(a2 + 84);
        v20 = *(v19 + v16);
        if (!v20)
        {
          break;
        }

        v21 = DSP_Dictionariable::SingleKvp<std::string>::operator==(v18 + 24, v20 + 24);
        v22 = DSP_Dictionariable::SingleKvp<std::string>::operator==(*(v15 + v16) + 72, *(v19 + v16) + 72);
        if (!v21 || !v22)
        {
          break;
        }

        v23 = *(v15 + v16);
        v24 = *(v19 + v16);
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v23 + 256), (v24 + 256)))
        {
          v25 = 0;
        }

        else
        {
          v26 = *(v24 + 272);
          v27 = *(v23 + 272);
          v25 = v27 == v26;
          v28 = v27 != v26 || v27 == 0;
          if (!v28)
          {
            v25 = *(v23 + 264) == *(v24 + 264);
          }
        }

        if ((v25 & DSP_Dictionariable::SingleKvp<BOOL>::operator==(*(v15 + v16) + 400, *(v19 + v16) + 400)) == 0)
        {
          v5 &= ~8u;
        }

        ++v17;
        v15 = *(this + 84);
        v16 += 16;
        if (v17 >= (*(this + 85) - v15) >> 4)
        {
          goto LABEL_40;
        }
      }

      v5 &= 0xF3u;
    }
  }

LABEL_40:
  v29 = *(this + 75);
  v30 = *(this + 74);
  v31 = *(a2 + 75);
  v32 = *(a2 + 74);
  if (v29 - v30 == v31 - v32)
  {
    while (v30 != v29)
    {
      if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v30, v32))
      {
        return v5;
      }

      v30 += 24;
      v32 += 3;
    }

    v5 |= 0x10u;
  }

  return v5;
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::hash_equal(void *a1, void *a2)
{
  v4 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(a1);
  if (v4 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(a2) && a1[14] == a2[14])
  {
    v5 = a1[12];
    if (v5 == a1 + 13)
    {
LABEL_17:
      v12 = a1[75];
      v13 = a1[74];
      v14 = a2[74];
      if (v12 - v13 == a2[75] - v14)
      {
        while (v13 != v12)
        {
          result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13, v14);
          if (!result)
          {
            return result;
          }

          v13 += 24;
          v14 += 3;
        }

        v16 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a1 + 9));
        if (v16 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a2 + 9)))
        {
          v17 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a1 + 15));
          if (v17 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a2 + 15)))
          {
            v18 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a1 + 34));
            if (v18 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a2 + 34)))
            {
              result = DSP_Host_Types::AudioChannelConfiguration::hash_equal((a1 + 59), (a2 + 59));
              if (!result)
              {
                return result;
              }

              v19 = a1[85];
              v20 = a1[84];
              if (v19 - v20 == a2[85] - a2[84])
              {
                if (v19 == v20)
                {
                  return 1;
                }

                v21 = 0;
                v22 = 0;
                while (1)
                {
                  v23 = *(v20 + v21);
                  if (!v23)
                  {
                    break;
                  }

                  v24 = *(a2[84] + v21);
                  if (!v24)
                  {
                    break;
                  }

                  v25 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v23);
                  if (v25 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v24))
                  {
                    break;
                  }

                  result = DSP_Host_Types::AudioChannelConfiguration::hash_equal((v23 + 53), (v24 + 53));
                  if (result)
                  {
                    result = DSP_Host_Types::AudioChannelConfiguration::hash_equal((v23 + 68), (v24 + 68));
                    if (result)
                    {
                      if (v23[84] - v23[83] != v24[84] - v24[83] || v23[87] - v23[86] != v24[87] - v24[86] || v23[90] - v23[89] != v24[90] - v24[89])
                      {
                        return 0;
                      }

                      result = DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(v23 + 83, v24 + 83);
                      if (result)
                      {
                        result = DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(v23 + 86, v24 + 86);
                        if (result)
                        {
                          if ((DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(v23 + 89, v24 + 89) & 1) == 0)
                          {
                            return 0;
                          }

                          ++v22;
                          v20 = a1[84];
                          v21 += 16;
                          result = 1;
                          if (v22 < (a1[85] - v20) >> 4)
                          {
                            continue;
                          }
                        }
                      }
                    }
                  }

                  return result;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v6 = a2[12];
      while (*(v5 + 7) == *(v6 + 7))
      {
        v7 = v5[1];
        v8 = v5;
        if (v7)
        {
          do
          {
            v5 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v5 = v8[2];
            v9 = *v5 == v8;
            v8 = v5;
          }

          while (!v9);
        }

        v10 = v6[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v6[2];
            v9 = *v11 == v6;
            v6 = v11;
          }

          while (!v9);
        }

        v6 = v11;
        if (v5 == a1 + 13)
        {
          goto LABEL_17;
        }
      }
    }
  }

  return 0;
}

BOOL DSP_Dictionariable::SingleKvp<BOOL>::operator==(uint64_t a1, uint64_t a2)
{
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 8), (a2 + 8)))
  {
    return 0;
  }

  v5 = *(a2 + 17);
  v6 = *(a1 + 17);
  result = v6 == v5;
  if (v6 == v5 && v6 != 0)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

BOOL DSP_Dictionariable::SingleKvp<std::string>::operator==(uint64_t a1, uint64_t a2)
{
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 8), (a2 + 8)))
  {
    return 0;
  }

  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  result = v6 == v5;
  if (v6 == v5 && v6 != 0)
  {
    v8 = *(a1 + 39);
    if (v8 >= 0)
    {
      v9 = *(a1 + 39);
    }

    else
    {
      v9 = *(a1 + 24);
    }

    v10 = *(a2 + 39);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 24);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = (a2 + 16);
    if (v8 >= 0)
    {
      v13 = (a1 + 16);
    }

    else
    {
      v13 = *(a1 + 16);
    }

    v14 = *v12;
    if (v11 >= 0)
    {
      v15 = (a2 + 16);
    }

    else
    {
      v15 = *v12;
    }

    return memcmp(v13, v15, v9) == 0;
  }

  return result;
}

void AMCP::Core::update_time_for_all(void *a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      if ((*(**v4 + 312))(*v4))
      {
        std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](a1, v4);
      }

      ++v4;
    }

    while (v4 != a3);
  }
}

uint64_t std::vector<std::shared_ptr<AMCP::Core::Engine>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

double AMCP::Core::Engine::calculate_safety_violation_read(AMCP::Core::Engine *this, double a2)
{
  v4 = mach_absolute_time();
  (*(*this + 304))(v8, this);
  v5 = (*(*this + 344))(this);
  v6 = v8[0] + floor((v4 - *&v8[1]) / v5);
  return v6 - (*(*this + 80))(this) - a2;
}

double AMCP::Core::Engine::calculate_safety_violation_write(AMCP::Core::Engine *this, double a2)
{
  v4 = mach_absolute_time();
  (*(*this + 304))(v8, this);
  v5 = (*(*this + 344))(this);
  v6 = v8[0] + floor((v4 - *&v8[1]) / v5);
  return a2 - (v6 + (*(*this + 88))(this));
}

void sub_1DE652E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, std::runtime_error a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, const void *a40)
{
  __cxa_free_exception(v41);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a40);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v43 - 200));
  if (*(v40 + 55) < 0)
  {
    operator delete(*v42);
  }

  std::__shared_weak_count::~__shared_weak_count(v40);
  operator delete(v45);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void std::__shared_ptr_emplace<AMCP::Utility::Power_Assertion>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    IOPMAssertionRelease(v2);
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<AMCP::Utility::Power_Assertion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::Simple_Engine_IO_State(AMCP::Core::Implementation::Simple_Engine_IO_State *this, const __CFString **a2, uint64_t a3, uint64_t a4, unint64_t a5, dispatch_queue_t *a6, const AMCP::Utility::Dispatch_Queue *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = -1;
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = 0;
  std::vector<BOOL>::vector(this + 3, a3);
  *(this + 12) = 0;
  object[0] = 0;
  std::vector<BOOL>::vector(this + 7, a4);
  *(this + 120) = 0u;
  *(this + 20) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  *(this + 22) = 0;
  *(this + 23) = 850045863;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 34) = 850045863;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 850045863;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 54) = dispatch_semaphore_create(0);
  *(this + 440) = 0;
  *(this + 448) = 0;
  v11 = dispatch_queue_create("AMCP Scratch Queue", 0);
  v12 = AMCP::Utility::Dispatch_Queue::operator=(this + 15, v11);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (!*(this + 15))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *object = 136315650;
      *&object[4] = "Engine.cpp";
      v37 = 1024;
      v38 = 224;
      v39 = 2080;
      v40 = "m_power_assertion_queue.operator BOOL() == true";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", object, 0x1Cu);
    }

    abort();
  }

  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(object, this + 15);
  dispatch_set_target_queue(*object, *a6);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
  v34 = @"PreventUserIdleSystemSleep";
  v13 = CFGetTypeID(@"PreventUserIdleSystemSleep");
  if (v13 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!*a2)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
    __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(cf, *a2);
  if (v30 >= 0)
  {
    v14 = cf;
  }

  else
  {
    v14 = cf[0];
  }

  caulk::make_string("com.apple.audio.%s.preventuseridlesleep", __p, v14);
  if ((v32 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v15)
  {
    if ((v32 & 0x80u) == 0)
    {
      v16 = v32;
    }

    else
    {
      v16 = __p[1];
    }

    v33 = CFStringCreateWithBytes(0, v15, v16, 0x8000100u, 0);
    if (!v33)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not construct");
      __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((v32 & 0x80) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v33 = 0;
    if ((v32 & 0x80) != 0)
    {
LABEL_18:
      operator delete(__p[0]);
    }
  }

  if (v30 < 0)
  {
    operator delete(cf[0]);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  if (*this)
  {
    __p[0] = @"audio-in";
    v18 = CFGetTypeID(@"audio-in");
    if (v18 != CFStringGetTypeID())
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
      __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, @"audio-in");
    CFRelease(@"audio-in");
  }

  if (*(this + 1))
  {
    __p[0] = @"audio-out";
    v19 = CFGetTypeID(@"audio-out");
    if (v19 != CFStringGetTypeID())
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
      __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, @"audio-out");
    CFRelease(@"audio-out");
  }

  mcp_applesauce::CF::Array_Builder::copy_array(cf, Mutable);
  std::allocate_shared[abi:ne200100]<AMCP::Utility::Power_Assertion,std::allocator<AMCP::Utility::Power_Assertion>,applesauce::CF::StringRef &,applesauce::CF::StringRef &,applesauce::CF::ArrayRef,int &,0>();
}

void sub_1DE65385C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, const void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, const void *a27)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a11);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  applesauce::CF::StringRef::~StringRef(&a12);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a13);
  applesauce::CF::StringRef::~StringRef(&a26);
  applesauce::CF::StringRef::~StringRef(&a27);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v28);
  v30 = v27[14];
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = v27[12];
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = v27[7];
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v27[3];
  if (v33)
  {
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::get_input_stream_active_list(AMCP::Core::Implementation::Simple_Engine_IO_State *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 5);
  std::vector<BOOL>::vector(this, &a2[6]);

  os_unfair_lock_unlock(a2 + 5);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::set_input_stream_active_list(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::vector<BOOL>::vector(a1, a3);
  std::vector<BOOL>::resize(v5, *a2, 0);
  os_unfair_lock_lock((a2 + 20));
  std::vector<BOOL>::operator=(a2 + 24, a1);

  os_unfair_lock_unlock((a2 + 20));
}

void sub_1DE653B44(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 5);
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::get_output_stream_active_list(AMCP::Core::Implementation::Simple_Engine_IO_State *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 12);
  std::vector<BOOL>::vector(this, &a2[14]);

  os_unfair_lock_unlock(a2 + 12);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::set_output_stream_active_list(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::vector<BOOL>::vector(a1, a3);
  std::vector<BOOL>::resize(v5, *(a2 + 8), 0);
  os_unfair_lock_lock((a2 + 48));
  std::vector<BOOL>::operator=(a2 + 56, a1);

  os_unfair_lock_unlock((a2 + 48));
}

void sub_1DE653C24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(uint64_t this)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((this + 80));
  if ((v1 & 0x80000000) != 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "Engine.cpp";
      v23 = 1024;
      v24 = 292;
      v25 = 2080;
      v26 = "not (m_power_assertion_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v13);
    std::logic_error::logic_error(&v14, &v13);
    v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v15, &v14);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    v15.__vftable = &unk_1F5991430;
    v16 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v15);
    v27 = "void AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions()";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
    v29 = 292;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
  }

  if (!atomic_fetch_add((this + 80), 1u))
  {
    v2 = *(this + 88);
    v3 = *(this + 96);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(this + 104);
    v5 = *(this + 112);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(this + 120);
    operator new();
  }

  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE653F3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *applesauce::dispatch::v1::async<AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(void)::$_0>(dispatch_queue_s *,AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(void)::$_0 &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *a1;
  if (v2)
  {
    AMCP::Utility::Power_Assertion::take(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    AMCP::Utility::Power_Assertion::take(v3);
  }

  return std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_1DE653F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::Utility::Power_Assertion::take(IOPMAssertionID *this)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    valuePtr = 255;
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v17 = v2;
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v3 = IOPMAssertionSetProperty(*this, @"AssertLevel", v2);
    v4 = v3;
    AMCP::Utility::Kernel_Error_Category::get(v3);
    if (v4)
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = this + 2;
        if (*(this + 31) < 0)
        {
          v11 = *v11;
        }

        valuePtr = 136315906;
        v19 = "Power_Assertion.h";
        v20 = 1024;
        v21 = 125;
        v22 = 2080;
        v23 = "error.operator BOOL()";
        v24 = 2080;
        v25 = v11;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to take %s", &valuePtr, 0x26u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](v14, v4, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(v15, v14);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(&valuePtr, v15);
      v26 = "void AMCP::Utility::Power_Assertion::take()";
      v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Power_Assertion.h";
      v28 = 125;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(uint64_t this)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((this + 80));
  if (v1 <= 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "Engine.cpp";
      v23 = 1024;
      v24 = 312;
      v25 = 2080;
      v26 = "not (m_power_assertion_refcount > 0)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v13);
    std::logic_error::logic_error(&v14, &v13);
    v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v15, &v14);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    v15.__vftable = &unk_1F5991430;
    v16 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v15);
    v27 = "void AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions()";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
    v29 = 312;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
  }

  if (atomic_fetch_add((this + 80), 0xFFFFFFFF) == 1)
  {
    v2 = *(this + 88);
    v3 = *(this + 96);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(this + 104);
    v5 = *(this + 112);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(this + 120);
    operator new();
  }

  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE654604(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *applesauce::dispatch::v1::async<AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(void)::$_0>(dispatch_queue_s *,AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(void)::$_0 &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *a1;
  if (v2)
  {
    AMCP::Utility::Power_Assertion::release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    AMCP::Utility::Power_Assertion::release(v3);
  }

  return std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
}

void AMCP::Utility::Power_Assertion::release(IOPMAssertionID *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    valuePtr = 0;
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v16 = v2;
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v3 = IOPMAssertionSetProperty(*this, @"AssertLevel", v2);
    v4 = v3;
    AMCP::Utility::Kernel_Error_Category::get(v3);
    v15.__val_ = v4;
    v15.__cat_ = &AMCP::Utility::Kernel_Error_Category::get(void)::s_category;
    if (v4)
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = this + 2;
        if (*(this + 31) < 0)
        {
          v11 = *v11;
        }

        std::error_code::message(&__p, &v15);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        valuePtr = 136316162;
        v18 = "Power_Assertion.h";
        v19 = 1024;
        v20 = 136;
        v21 = 2080;
        v22 = "error.value() == 0";
        v23 = 2080;
        v24 = v11;
        v25 = 2080;
        v26 = p_p;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s failed to take %s: %s", &valuePtr, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      abort();
    }

    CFRelease(v2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE654860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a14);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_AHPPlugIn::~HALS_AHPPlugIn(HALS_AHPPlugIn *this)
{
  HALS_AHPPlugIn::~HALS_AHPPlugIn(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5986190;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HALB_CFPlugIn::~HALB_CFPlugIn((this + 8));
}

BOOL HALS_AHPPlugIn::ObjectIsPropertySettable(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v4 = (*(*this + 192))(this, a2, a3, &v19);
  if (v4)
  {
    v5.i32[0] = a3->mSelector;
    v8 = vrev64_s16(*&vmovl_u8(v5));
    v9 = vuzp1_s8(v8, v8);
    v17 = v9.i32[0];
    v18 = 0;
    v9.i32[0] = a3->mScope;
    v10 = vrev64_s16(*&vmovl_u8(v9));
    v15 = vuzp1_s8(v10, v10).u32[0];
    v16 = 0;
    v14[0] = HIBYTE(v4);
    v14[1] = BYTE2(v4);
    v14[2] = BYTE1(v4);
    v13 = v4;
    v14[3] = v4;
    v14[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v21 = "HALS_AHPPlugIn.cpp";
      v22 = 1024;
      v23 = 102;
      v24 = 2080;
      v25 = &v17;
      v26 = 2080;
      v27 = &v15;
      v28 = 2048;
      v29 = mElement;
      v30 = 1024;
      v31 = v13;
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectIsPropertySettable: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v13;
  }

  result = v19 != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPPlugIn::ObjectGetPropertyDataSize(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v6 = (*(*this + 200))(this, a2, a3, a4, a5, &v21);
  if (v6)
  {
    v7.i32[0] = a3->mSelector;
    v10 = vrev64_s16(*&vmovl_u8(v7));
    v11 = vuzp1_s8(v10, v10);
    v19 = v11.i32[0];
    v20 = 0;
    v11.i32[0] = a3->mScope;
    v12 = vrev64_s16(*&vmovl_u8(v11));
    v17 = vuzp1_s8(v12, v12).u32[0];
    v18 = 0;
    v16[0] = HIBYTE(v6);
    v16[1] = BYTE2(v6);
    v16[2] = BYTE1(v6);
    v15 = v6;
    v16[3] = v6;
    v16[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v23 = "HALS_AHPPlugIn.cpp";
      v24 = 1024;
      v25 = 110;
      v26 = 2080;
      v27 = &v19;
      v28 = 2080;
      v29 = &v17;
      v30 = 2048;
      v31 = mElement;
      v32 = 1024;
      v33 = v15;
      v34 = 2080;
      v35 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectGetPropertyDataSize: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v15;
  }

  result = v21;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPPlugIn::ObjectGetPropertyData(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, unsigned int *a6, void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  result = (*(*this + 208))(this, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v11 = vrev64_s16(*&vmovl_u8(v9));
    v12 = vuzp1_s8(v11, v11);
    v20 = v12.i32[0];
    v21 = 0;
    v12.i32[0] = a3->mScope;
    v13 = vrev64_s16(*&vmovl_u8(v12));
    v18 = vuzp1_s8(v13, v13).u32[0];
    v19 = 0;
    v17[0] = BYTE3(result);
    v17[1] = BYTE2(result);
    v17[2] = BYTE1(result);
    v16 = result;
    v17[3] = result;
    v17[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v23 = "HALS_AHPPlugIn.cpp";
      v24 = 1024;
      v25 = 119;
      v26 = 2080;
      v27 = &v20;
      v28 = 2080;
      v29 = &v18;
      v30 = 2048;
      v31 = mElement;
      v32 = 1024;
      v33 = v16;
      v34 = 2080;
      v35 = v17;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectGetPropertyData: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v16;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPPlugIn::ObjectSetPropertyData(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  result = (*(*this + 216))(this, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v11 = vrev64_s16(*&vmovl_u8(v9));
    v12 = vuzp1_s8(v11, v11);
    v20 = v12.i32[0];
    v21 = 0;
    v12.i32[0] = a3->mScope;
    v13 = vrev64_s16(*&vmovl_u8(v12));
    v18 = vuzp1_s8(v13, v13).u32[0];
    v19 = 0;
    v17[0] = BYTE3(result);
    v17[1] = BYTE2(result);
    v17[2] = BYTE1(result);
    v16 = result;
    v17[3] = result;
    v17[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v23 = "HALS_AHPPlugIn.cpp";
      v24 = 1024;
      v25 = 126;
      v26 = 2080;
      v27 = &v20;
      v28 = 2080;
      v29 = &v18;
      v30 = 2048;
      v31 = mElement;
      v32 = 1024;
      v33 = v16;
      v34 = 2080;
      v35 = v17;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectSetPropertyData: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v16;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_IOStreamInfo::HALS_IOStreamInfo(HALS_IOStreamInfo *this, const HALS_IOStreamInfo *a2)
{
  *this = &unk_1F59910A0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(this + 53) = *(a2 + 53);
  *(this + 40) = v6;
  *(this + 24) = v5;
  *(this + 8) = v4;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  v7 = *(a2 + 6);
  *(this + 14) = 0;
  *(this + 6) = v7;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v9 = *(a2 + 14);
  v8 = *(a2 + 15);
  if (v8 != v9)
  {
    std::vector<HALS_IODSPInfo::EngineStreamInfo>::__vallocate[abi:ne200100](this + 112, (v8 - v9) >> 7);
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 136, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  *(this + 20) = *(a2 + 20);
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](this + 21, a2 + 21);
  v10 = *(a2 + 25);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 27);
  *(this + 26) = *(a2 + 26);
  *(this + 27) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 28);
  *(this + 58) = *(a2 + 58);
  *(this + 28) = v12;
  std::__optional_copy_base<CA::ChannelLayout,false>::__optional_copy_base[abi:ne200100](this + 240, a2 + 240);
  *(this + 34) = *(a2 + 34);
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(this + 280, *(a2 + 35), *(a2 + 36), *(a2 + 36) - *(a2 + 35));
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(this + 304, *(a2 + 38), *(a2 + 39), *(a2 + 39) - *(a2 + 38));
  v13 = *(a2 + 328);
  v14 = *(a2 + 360);
  *(this + 344) = *(a2 + 344);
  *(this + 360) = v14;
  *(this + 328) = v13;
  *(this + 47) = *(a2 + 47);
  v15 = *(a2 + 49);
  *(this + 48) = *(a2 + 48);
  *(this + 49) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 51);
  *(this + 50) = *(a2 + 50);
  *(this + 51) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 26);
  v18 = *(a2 + 27);
  v19 = *(a2 + 28);
  *(this + 464) = *(a2 + 464);
  *(this + 27) = v18;
  *(this + 28) = v19;
  *(this + 26) = v17;
}

void sub_1DE655204(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HALS_IODSPInfo::EngineStreamInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    std::allocator<HALS_IODSPInfo::EngineStreamInfo>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

char *HALS_DSPHostIntegrationPoint_IOContextHelper::populate_ec_reference_proxy(void)::ECReferenceLog::~ECReferenceLog(char *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_181[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_181[v8];
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
      v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostIntegrationPoint_IOContextHelper.cpp";
    }

    v14 = a1;
    if (a1[23] < 0)
    {
      v14 = *a1;
    }

    v15 = 136315650;
    v16 = v13;
    v17 = 1024;
    v18 = 297;
    v19 = 2080;
    v20 = v14;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %s", &v15, 0x1Cu);
  }

  if (a1[23] < 0)
  {
    operator delete(*a1);
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE655510(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<HALS_DSPHostPrivateReferenceStreamProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPHostAudioStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

std::thread *std::unique_ptr<std::thread>::reset[abi:ne200100](std::thread **a1, std::thread *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::thread::~thread(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9IO_ThreadC1ENSt3__110shared_ptrINS_5Graph14Manifest_QueueEEENS_11Power_StateEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59862F0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59862F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59862F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Thread_Control_State>::__on_zero_shared(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = pthread_cond_destroy((a1 + 256));
  v3 = v2;
  AMCP::Utility::Kernel_Error_Category::get(v2);
  if (v3)
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
      v22 = "Thread_Control_State.cpp";
      v23 = 1024;
      v24 = 36;
      v25 = 2080;
      v26 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the destroy the condition variable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v18, v3, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v19, v18);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v19);
    v27 = "AMCP::IO_Core::Thread_Control_State::~Thread_Control_State()";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
    v29 = 36;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = pthread_mutex_destroy((a1 + 304));
  v6 = v5;
  AMCP::Utility::Kernel_Error_Category::get(v5);
  if (v6)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "Thread_Control_State.cpp";
      v23 = 1024;
      v24 = 39;
      v25 = 2080;
      v26 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the destroy the mutex", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v18, v6, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v19, v18);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v19);
    v27 = "AMCP::IO_Core::Thread_Control_State::~Thread_Control_State()";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
    v29 = 39;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE655C30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Thread_Control_State>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59862A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1720);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_1>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x1020C40AEE4956FLL);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_1>>(uint64_t *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  v4 = pthread_setspecific(v2->__key_, v3);
  v5 = *v25[1];
  v6 = *(v25[1] + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *v25[2];
  v8 = *(v25[2] + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v26[0] = v5;
  v26[1] = v7;
  v9 = *(v25 + 26);
  v27 = *(v25 + 12);
  v28 = v9;
  if (!v5)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "IO_Thread_Realtime.h";
      v42 = 1024;
      v43 = 40;
      v44 = 2080;
      v45 = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v32);
    std::logic_error::logic_error(&v29, &v32);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v34, &v29);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v34);
    v46 = "AMCP::IO_Core::IO_Thread_Realtime::IO_Thread_Realtime(std::shared_ptr<Graph::Manifest_Queue>, Thread_Control, const IOThread_Realtime_Power_Settings &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.h";
    LODWORD(v48) = 40;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  if (AMCP::IO_Core::IO_Thread_Realtime::run(v26) == 1)
  {
    v10 = *v25[2];
    *buf = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v10);
    LOWORD(v41) = 0;
    HIDWORD(v41) = 4;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v10);
    LOBYTE(v42) = v11 & 1;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(v10, buf);
    v12 = pthread_cond_broadcast((v10 + 192));
    v13 = v12;
    AMCP::Utility::Kernel_Error_Category::get(v12);
    if (v13)
    {
      v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v21 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v14);
      }

      v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *v23;
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      else
      {
        v24 = *v23;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v41 = "Thread_Control_State.cpp";
        v42 = 1024;
        v43 = 123;
        v44 = 2080;
        v45 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the signaling the condition variable", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](v33, v13, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v34, v33);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v34);
      v48 = "void AMCP::IO_Core::Thread_Control_State::devices_failed_to_start()";
      v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v50 = 123;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
    }
  }

  AMCP::IO_Core::Device_Node_Factory::~Device_Node_Factory(v26);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_1>>::~unique_ptr[abi:ne200100](&v25);
  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9IO_Thread5startENS0_18Play_State_Manager12Play_RequestEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  *buf = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v1);
  LOWORD(v16) = 1;
  HIDWORD(v16) = 4;
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v1);
  LOBYTE(v17) = v2 & 1;
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(v1, buf);
  v3 = pthread_cond_broadcast((v1 + 192));
  v4 = v3;
  AMCP::Utility::Kernel_Error_Category::get(v3);
  if (v4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "Thread_Control_State.cpp";
      v17 = 1024;
      v18 = 112;
      v19 = 2080;
      v20 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the signaling the condition variable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v14);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v12, v4, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v13, v12);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v13);
    v21 = "void AMCP::IO_Core::Thread_Control_State::devices_have_started()";
    v22 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
    v23 = 112;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE6565B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v24 - 128);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a20);
  if (a11)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v24 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5986380;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5986380;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5986380;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

unint64_t AMCP::IO_Core::IO_Thread::wait_for_start(AMCP::IO_Core::IO_Thread *this)
{
  if ((caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) & 0x100000000) == 0)
  {
    v2 = mach_absolute_time();
    AMCP::IO_Core::Thread_Control_State::sleep_until_time(this, v2 + 360000000);
  }

  return (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) >> 32) & 1;
}

void AMCP::IO_Core::IO_Thread::get_state_snapshot(AMCP::IO_Core::Play_State_Manager *a1, uint64_t a2, uint64_t a3)
{
  AMCP::IO_Core::Play_State_Manager::get_state_snapshot(a1, (a2 + 16));
  if ((a3 & 0x100000000) != 0)
  {
    v6 = *(a1 + 1);
    v5 = *(a1 + 2);
    if (v6 >= v5)
    {
      v8 = *a1;
      v9 = v6 - *a1;
      v10 = (v9 >> 2) + 1;
      if (v10 >> 62)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v11 = v5 - v8;
      if (v11 >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (4 * (v9 >> 2));
      *v13 = a3;
      v7 = v13 + 1;
      memcpy(0, v8, v9);
      *a1 = 0;
      *(a1 + 2) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v6 = a3;
      v7 = v6 + 1;
    }

    *(a1 + 1) = v7;
  }
}

void sub_1DE656914(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Driver::~Driver(AMCP::Driver *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::Driver *AMCP::Driver::Driver(AMCP::Driver *this, AMCP::System_Context *a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(this, a2, a3);
  *v4 = &unk_1F5986400;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61706C67);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Driver.cpp";
      v14 = 1024;
      v15 = 26;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_driver)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE656B28(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Driver::Driver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F5986420;
  *&buf[8] = a3;
  *&v19[4] = buf;
  AMCP::Core::Broker::fetch_first_core_if (v16, v5, buf);
  *a1 = &unk_1F5964268;
  v6 = v16[0];
  if (v16[0])
  {
    v7 = *v16[0];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = v16[1];
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
  *a1 = &unk_1F5986400;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x61706C67);
  if ((v9 & 1) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Driver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 42;
      v18 = 2080;
      *v19 = "constructed_correct_class(k_class_id_driver)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE656D54(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP6DriverC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61706C67, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1885956452u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void AMCP::Core::Core::get_simple_required_property<1885956452u>(void *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, "diipbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, a2, buf);
  if ((v13 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 4;
      strcpy(__p, "piid");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v4;
    CFRelease(v4);
  }

  else
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE656FE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5986420;
  a2[1] = v2;
  return result;
}

void AMCP::Driver::get_bundle_id(AMCP::Driver *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1885956452u>(a2, v7);
    }

    else
    {
      *a2 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
  }
}

void AMCP::Driver::get_device_list(AMCP::Driver *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1684370979u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void AMCP::Driver::get_clock_list(AMCP::Driver *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1668049699u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void AMCP::Core::Core::get_simple_required_property<1668049699u>(void *a1, AMCP::Core::Core *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  strcpy(buf, "#klcbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v13, a2, buf);
  if ((v15 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 4;
      strcpy(__p, "clk#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v17 = 1024;
      v18 = 391;
      v19 = 2080;
      v20 = "optional_value.operator BOOL() == true";
      v21 = 2080;
      v22 = __p;
      v23 = 1024;
      v24 = 1735159650;
      v25 = 1024;
      v26 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = v13;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v13, v14, (v14 - v13) >> 2);
  if (v4)
  {
    v5 = *MEMORY[0x1E69E9840];

    operator delete(v4);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE657450(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Driver::get_box_list(AMCP::Driver *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1651472419u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void AMCP::Core::Core::get_simple_required_property<1651472419u>(void *a1, AMCP::Core::Core *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  strcpy(buf, "#xobbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v13, a2, buf);
  if ((v15 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 4;
      strcpy(__p, "box#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v17 = 1024;
      v18 = 391;
      v19 = 2080;
      v20 = "optional_value.operator BOOL() == true";
      v21 = 2080;
      v22 = __p;
      v23 = 1024;
      v24 = 1735159650;
      v25 = 1024;
      v26 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = v13;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v13, v14, (v14 - v13) >> 2);
  if (v4)
  {
    v5 = *MEMORY[0x1E69E9840];

    operator delete(v4);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE6576C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::~System(AMCP::System *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::System *AMCP::System::System(AMCP::System *this, AMCP::System_Context *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Object::Object(this, a2, 1u);
  *v3 = &unk_1F59864A0;
  v4 = AMCP::Object::constructed_correct_class(v3, 0x61737973);
  if ((v4 & 1) == 0)
  {
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "System.cpp";
      v13 = 1024;
      v14 = 34;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_system)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE6578C8(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void AMCP::System::get_device_list(AMCP::System *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1684370979u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void AMCP::System::get_clock_list(AMCP::System *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1668049699u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void AMCP::System::get_box_list(AMCP::System *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1651472419u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void AMCP::System::get_driver_list(AMCP::System *this@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#glpbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v18, v7, buf);
      if ((v20 & 1) == 0)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 4;
          strcpy(__p, "plg#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v22 = 1024;
          v23 = 391;
          v24 = 2080;
          v25 = "optional_value.operator BOOL() == true";
          v26 = 2080;
          v27 = __p;
          v28 = 1024;
          v29 = 1735159650;
          v30 = 1024;
          v31 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v18;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v18, v19, (v19 - v18) >> 2);
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    v11 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v10 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE657D0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::get_io_context_list(AMCP::System *this@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#xtcbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v18, v7, buf);
      if ((v20 & 1) == 0)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 4;
          strcpy(__p, "ctx#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v22 = 1024;
          v23 = 391;
          v24 = 2080;
          v25 = "optional_value.operator BOOL() == true";
          v26 = 2080;
          v27 = __p;
          v28 = 1024;
          v29 = 1735159650;
          v30 = 1024;
          v31 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v18;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v18, v19, (v19 - v18) >> 2);
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    v11 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v10 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE657F3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::get_node_list(AMCP::System *this@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#donbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v18, v7, buf);
      if ((v20 & 1) == 0)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 4;
          strcpy(__p, "nod#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v22 = 1024;
          v23 = 391;
          v24 = 2080;
          v25 = "optional_value.operator BOOL() == true";
          v26 = 2080;
          v27 = __p;
          v28 = 1024;
          v29 = 1735159650;
          v30 = 1024;
          v31 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v18;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v18, v19, (v19 - v18) >> 2);
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    v11 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v10 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE65816C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::modify_graph(AMCP::System *this, const AMCP::Graph_Description *a2, const AMCP::Modify_Graph_Destroy_List *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (!v4 || (v4 = std::__shared_weak_count::lock(v4), (v7 = v4) == 0) || (v8 = *(this + 2)) == 0)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 102;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v56, "No underlying object");
    std::runtime_error::runtime_error(&v59, &v56);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Modify_Graph_Result AMCP::System::modify_graph(const Graph_Description &, const Modify_Graph_Destroy_List &)";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v67 = 102;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
  }

  v44 = 0x676C6F626D646772;
  v45 = 0;
  v41 = 0;
  v40 = 0uLL;
  std::vector<AMCP::Node_Description>::__init_with_size[abi:ne200100]<AMCP::Node_Description*,AMCP::Node_Description*>(&v40, *a2, *(a2 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 1) - *a2) >> 3));
  v42 = 0uLL;
  v43 = 0;
  std::vector<AMCP::Wire_Description>::__init_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(&v42, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 6));
  v36 = 0uLL;
  v37 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v36, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
  v38 = 0uLL;
  v39 = 0;
  std::vector<AMCP::Wire_Identifier>::__init_with_size[abi:ne200100]<AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(&v38, *(a3 + 3), *(a3 + 4), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 4) - *(a3 + 3)) >> 4));
  operation = AMCP::Core::Core::find_operation(&v53, v8, &v44);
  v10 = v53;
  if (!v53)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v46);
    std::runtime_error::runtime_error(&v57, &v46);
    std::runtime_error::runtime_error(&v59, &v57);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<std::vector<unsigned int>>, Argument_Types = <AMCP::Graph_Description, AMCP::Modify_Graph_Destroy_List>]";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v67 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
  }

  v49 = v40;
  v11 = v41;
  v41 = 0;
  v40 = 0uLL;
  v51 = v42;
  v50 = v11;
  v52 = v43;
  v43 = 0;
  v42 = 0uLL;
  *&v46.__r_.__value_.__l.__data_ = v36;
  v12 = v37;
  v37 = 0;
  v36 = 0uLL;
  v47 = v38;
  v46.__r_.__value_.__r.__words[2] = v12;
  v48 = v39;
  v38 = 0uLL;
  v39 = 0;
  v13 = AMCP::Implementation::get_type_marker<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>();
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v13);
  if (!v14)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v64);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v57);
    std::runtime_error::runtime_error(&v58, &v57);
    std::runtime_error::runtime_error(&v59, &v58);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<std::vector<unsigned int>>, Argument_Types = <AMCP::Graph_Description, AMCP::Modify_Graph_Destroy_List>]";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v67 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v55);
  }

  v15 = v14;
  if (!*(v14 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>(), (v14 = (*(v15 + 7))(4, v15 + 24, 0, buf)) == 0))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v64);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v57);
    std::runtime_error::runtime_error(&v58, &v57);
    std::runtime_error::runtime_error(&v59, &v58);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<std::vector<unsigned int>>, Argument_Types = <AMCP::Graph_Description, AMCP::Modify_Graph_Destroy_List>]";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v67 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v55);
  }

  *buf = v49;
  *&buf[24] = v51;
  v16 = v50;
  v50 = 0;
  v49 = 0uLL;
  *&buf[16] = v16;
  v66 = v52;
  v52 = 0;
  v51 = 0uLL;
  v59 = *&v46.__r_.__value_.__l.__data_;
  v17 = v46.__r_.__value_.__r.__words[2];
  memset(&v46, 0, sizeof(v46));
  v61 = v47;
  v60 = v17;
  v62 = v48;
  v47 = 0uLL;
  v48 = 0;
  v18 = *(v14 + 3);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(v18, buf, &v59);
  v56.__vftable = &v61;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56.__vftable = &v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56.__vftable = &buf[24];
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56.__vftable = buf;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&v56);
  *buf = &v47;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v46;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v51;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v49;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  *buf = &v38;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v42;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v40;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1DE658C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, std::runtime_error a44, const char *imp, uint64_t a46, uint64_t a47, std::runtime_error a48, int a49, __int16 a50, char a51, char a52)
{
  if (a44.__imp_.__imp_)
  {
    imp = a44.__imp_.__imp_;
    operator delete(a44.__imp_.__imp_);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v55 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v55 - 224);
  std::runtime_error::~runtime_error((v55 - 240));
  if (a52 < 0)
  {
    operator delete(a48.__vftable);
  }

  if (v54)
  {
    __cxa_free_exception(v53);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v55 - 161));
  AMCP::Modify_Graph_Destroy_List::~Modify_Graph_Destroy_List(&a23);
  AMCP::Graph_Description::~Graph_Description(&a32);
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  AMCP::Modify_Graph_Destroy_List::~Modify_Graph_Destroy_List(&a9);
  AMCP::Graph_Description::~Graph_Description(&a15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  _Unwind_Resume(a1);
}

uint64_t std::vector<AMCP::Wire_Description>::__init_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AMCP::Wire_Description>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE658F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t AMCP::System::node_uid_is_unique(AMCP::System *this, const void **a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      v50 = 1024;
      v51 = 109;
      v52 = 2080;
      v53 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v39, "No underlying object");
    std::runtime_error::runtime_error(&v42, &v39);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "BOOL AMCP::System::node_uid_is_unique(const CF::String &)";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v56 = 109;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v34 = 0x676C6F626E647571;
  LODWORD(v35) = 0;
  v7 = *a2;
  if (v7)
  {
    CFRetain(v7);
  }

  v33 = v7;
  operation = AMCP::Core::Core::find_operation(&v37, v6, &v34);
  v9 = v37;
  if (!v37)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v50 = 1024;
      v51 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v40, v33, v34, v35);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = BOOL, Argument_Types = <applesauce::CF::StringRef>]";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v56 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  v36 = v7;
  v10 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(applesauce::CF::StringRef)>>();
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
  if (!v11)
  {
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v50 = 1024;
      v51 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v40, 0, v34, v35);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <applesauce::CF::StringRef>]";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v56 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  v12 = v11;
  if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(applesauce::CF::StringRef)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v50 = 1024;
      v51 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v40, 0, v34, v35);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <applesauce::CF::StringRef>]";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v56 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  *buf = v7;
  v36 = 0;
  v13 = *(v11 + 3);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v14 = (*(*v13 + 48))(v13, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1DE659844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, std::runtime_error a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::runtime_error a29, char a30)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a15.__vftable)
  {
    a15.__imp_.__imp_ = a15.__vftable;
    operator delete(a15.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a30);
  std::runtime_error::~runtime_error(&a29);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 129));
  applesauce::CF::StringRef::~StringRef(&a12);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

uint64_t AMCP::System::get_node_id(AMCP::System *this, const void **a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      v50 = 1024;
      v51 = 116;
      v52 = 2080;
      v53 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v39, "No underlying object");
    std::runtime_error::runtime_error(&v42, &v39);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "std::optional<Object_ID> AMCP::System::get_node_id(const CF::String &)";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v56 = 116;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v34 = 0x676C6F62676E6469;
  LODWORD(v35) = 0;
  v7 = *a2;
  if (v7)
  {
    CFRetain(v7);
  }

  v33 = v7;
  operation = AMCP::Core::Core::find_operation(&v37, v6, &v34);
  v9 = v37;
  if (!v37)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v50 = 1024;
      v51 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v40, v33, v34, v35);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<unsigned int>, Argument_Types = <applesauce::CF::StringRef>]";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v56 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  v36 = v7;
  v10 = AMCP::Implementation::get_type_marker<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>();
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
  if (!v11)
  {
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v50 = 1024;
      v51 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v40, 0, v34, v35);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<unsigned int>, Argument_Types = <applesauce::CF::StringRef>]";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v56 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  v12 = v11;
  if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v50 = 1024;
      v51 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v40, 0, v34, v35);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v54 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<unsigned int>, Argument_Types = <applesauce::CF::StringRef>]";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v56 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  *buf = v7;
  v36 = 0;
  v13 = *(v11 + 3);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v14 = (*(*v13 + 48))(v13, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & 0xFFFFFFFFFFLL;
}

void sub_1DE65A328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, std::runtime_error a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::runtime_error a29, char a30)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a15.__vftable)
  {
    a15.__imp_.__imp_ = a15.__vftable;
    operator delete(a15.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a30);
  std::runtime_error::~runtime_error(&a29);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 129));
  applesauce::CF::StringRef::~StringRef(&a12);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

void AMCP::System::get_wires(AMCP::System *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v4 = *(this + 2)) == 0)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      v43 = 1024;
      v44 = 123;
      v45 = 2080;
      v46 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v32, "No underlying object");
    std::runtime_error::runtime_error(&v35, &v32);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Wire_Set AMCP::System::get_wires()";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v49 = 123;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v28 = 0x676C6F6267747772;
  v29 = 0;
  operation = AMCP::Core::Core::find_operation(&v30, v4, &v28);
  v6 = v30;
  if (!v30)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v43 = 1024;
      v44 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v49 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>();
  v8 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7);
  if (!v8)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *&buf[4] = "Operation.h";
      v43 = 1024;
      v44 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v49 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v9 = v8;
  if (!*(v8 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>(), (v8 = (*(v9 + 7))(4, v9 + 24, 0, buf)) == 0))
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v43 = 1024;
      v44 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v49 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v10 = *(v8 + 3);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE65ADD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::runtime_error a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::runtime_error a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13.__vftable)
  {
    operator delete(a13.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a27);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v30)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void AMCP::System::get_wires_for_node(AMCP::System *this, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      v45 = 1024;
      v46 = 130;
      v47 = 2080;
      v48 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v34, "No underlying object");
    std::runtime_error::runtime_error(&v37, &v34);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Wire_Set AMCP::System::get_wires_for_node(Object_ID)";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v51 = 130;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v30 = 0x676C6F626777666ELL;
  v31 = 0;
  operation = AMCP::Core::Core::find_operation(&v32, v6, &v30);
  v8 = v32;
  if (!v32)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v45 = 1024;
      v46 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v35);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <unsigned int>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v51 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()>>();
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9);
  if (!v10)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v45 = 1024;
      v46 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v35);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <unsigned int>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v51 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v11 = v10;
  if (!*(v10 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()>>(), (v10 = (*(v11 + 7))(4, v11 + 24, 0, buf)) == 0))
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v45 = 1024;
      v46 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v35);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <unsigned int>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v51 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  *buf = a2;
  v12 = *(v10 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE65B7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::runtime_error a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::runtime_error a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13.__vftable)
  {
    operator delete(a13.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a27);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v30)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void AMCP::System::set_volume_for_wire(uint64_t a1, uint64_t a2, __int128 *a3, float a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v9 = v5) == 0) || (v10 = *(a1 + 16)) == 0)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 137;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v42, "No underlying object");
    std::runtime_error::runtime_error(&v45, &v42);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    *&v53 = "void AMCP::System::set_volume_for_wire(const Wire_Identifier &, float, CA::TimeStamp)";
    *(&v53 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    LODWORD(v54) = 137;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  v38 = 0x676C6F6273766677;
  v39 = 0;
  v34 = *a3;
  v35 = a3[1];
  v36 = a3[2];
  v37 = a3[3];
  operation = AMCP::Core::Core::find_operation(&v40, v10, &v38);
  v12 = v40;
  if (!v40)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v43);
    std::runtime_error::runtime_error(&v44, &v43);
    std::runtime_error::runtime_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    *&v53 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp>]";
    *(&v53 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    LODWORD(v54) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  v13 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>();
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v12, v13);
  if (!v14)
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v43);
    std::runtime_error::runtime_error(&v44, &v43);
    std::runtime_error::runtime_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    *&v53 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp>]";
    *(&v53 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v54) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  v15 = v14;
  if (!*(v14 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>(), (v14 = (*(v15 + 7))(4, v15 + 24, 0, buf)) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v43);
    std::runtime_error::runtime_error(&v44, &v43);
    std::runtime_error::runtime_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    *&v53 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp>]";
    *(&v53 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v54) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  *buf = v34;
  *&buf[16] = v35;
  v53 = v36;
  v54 = v37;
  *&v45.__vftable = a4;
  v16 = *(v14 + 3);
  if (!v16)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v16 + 48))(v16, a2, &v45, buf);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE65C228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, std::runtime_error a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, std::runtime_error a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21.__vftable)
  {
    operator delete(a21.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v39 - 144);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a36);
  std::runtime_error::~runtime_error(&a35);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (v38)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v39 - 145));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

void AMCP::System::set_volume_ramp_for_wire(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, float a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (!v6 || (v6 = std::__shared_weak_count::lock(v6), (v11 = v6) == 0) || (v12 = *(a1 + 16)) == 0)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 144;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v52, "No underlying object");
    std::runtime_error::runtime_error(&v48, &v52);
    *(&v49 + 1) = 0;
    v50 = 0uLL;
    LODWORD(v51) = -1;
    v48.__vftable = &unk_1F5992170;
    *&v49 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v48);
    *&v58 = "void AMCP::System::set_volume_ramp_for_wire(const Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp)";
    *(&v58 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    LODWORD(v59) = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  v44 = 0x676C6F6273767277;
  v45 = 0;
  v40 = *a3;
  v41 = a3[1];
  v42 = a3[2];
  v43 = a3[3];
  v36 = *a4;
  v37 = *(a4 + 16);
  v38 = *(a4 + 32);
  v39 = *(a4 + 48);
  operation = AMCP::Core::Core::find_operation(&v46, v12, &v44);
  v14 = v46;
  if (!v46)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v54);
    std::runtime_error::runtime_error(&v55, &v54);
    std::runtime_error::runtime_error(&v48, &v55);
    *(&v49 + 1) = 0;
    v50 = 0uLL;
    LODWORD(v51) = -1;
    v48.__vftable = &unk_1F5992170;
    *&v49 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v48);
    *&v58 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp>]";
    *(&v58 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    LODWORD(v59) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  v15 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>();
  v16 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v14, v15);
  if (!v16)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v54);
    std::runtime_error::runtime_error(&v55, &v54);
    std::runtime_error::runtime_error(&v48, &v55);
    *(&v49 + 1) = 0;
    v50 = 0uLL;
    LODWORD(v51) = -1;
    v48.__vftable = &unk_1F5992170;
    *&v49 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v48);
    *&v58 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp>]";
    *(&v58 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v59) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  v17 = v16;
  if (!*(v16 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>(), (v16 = (*(v17 + 7))(4, v17 + 24, 0, buf)) == 0))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v54);
    std::runtime_error::runtime_error(&v55, &v54);
    std::runtime_error::runtime_error(&v48, &v55);
    *(&v49 + 1) = 0;
    v50 = 0uLL;
    LODWORD(v51) = -1;
    v48.__vftable = &unk_1F5992170;
    *&v49 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v48);
    *&v58 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp>]";
    *(&v58 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v59) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  *buf = v40;
  *&buf[16] = v41;
  v58 = v42;
  v59 = v43;
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v53[0] = a5;
  v18 = *(v16 + 3);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(v18, a2, v53, buf, &v48);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1DE65CC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  *(v42 - 240) = v40;
  v44 = *(v42 - 232);
  if (v44)
  {
    *(v42 - 224) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v42 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a29);
  std::runtime_error::~runtime_error((v42 - 184));
  if (*(v42 - 185) < 0)
  {
    operator delete(*(v42 - 208));
  }

  if (v41)
  {
    __cxa_free_exception(v39);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v42 - 161));
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  _Unwind_Resume(a1);
}

void AMCP::System::get_wire_connection_properties(AMCP::System *this, const AMCP::Wire_Identifier *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 152;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v52);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v54, "No underlying object");
    std::runtime_error::runtime_error(&v42, &v54);
    v44 = 0;
    v45 = 0;
    *&v46 = 0;
    DWORD2(v46) = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v64 = "std::optional<Wire_Connection_Properties> AMCP::System::get_wire_connection_properties(const Wire_Identifier &)";
    *&v65 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    DWORD2(v65) = 152;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v53);
  }

  v40 = 0x676C6F6267776370;
  v41 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *a2, *(a2 + 1));
  }

  else
  {
    v34 = *a2;
  }

  v35 = *(a2 + 3);
  v36 = *(a2 + 8);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v37 = *(a2 + 40);
  }

  v38 = *(a2 + 8);
  v39 = *(a2 + 18);
  operation = AMCP::Core::Core::find_operation(&v50, v6, &v40);
  v8 = v50;
  if (!v50)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v53);
    std::runtime_error::runtime_error(&v52, &v53);
    std::runtime_error::runtime_error(&v42, &v52);
    v44 = 0;
    v45 = 0;
    *&v46 = 0;
    DWORD2(v46) = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    v64 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<AMCP::Wire_Connection_Properties>, Argument_Types = <AMCP::Wire_Identifier>]";
    *&v65 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    DWORD2(v65) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  v42 = *&v34.__r_.__value_.__l.__data_;
  v9 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v43 = v9;
  v44 = v35;
  LODWORD(v45) = v36;
  v46 = *&v37.__r_.__value_.__l.__data_;
  v10 = v37.__r_.__value_.__r.__words[2];
  memset(&v37, 0, sizeof(v37));
  v49 = v39;
  v47 = v10;
  v48 = v38;
  v11 = AMCP::Implementation::get_type_marker<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>();
  v12 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11);
  if (!v12)
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v62);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v54);
    std::runtime_error::runtime_error(&v55, &v54);
    std::runtime_error::runtime_error(&v56, &v55);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = -1;
    v56.__vftable = &unk_1F5992170;
    v57 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v56);
    v64 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<AMCP::Wire_Connection_Properties>, Argument_Types = <AMCP::Wire_Identifier>]";
    *&v65 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    DWORD2(v65) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  v13 = v12;
  if (!*(v12 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>(), (v12 = (*(v13 + 7))(4, v13 + 24, 0, buf)) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v62);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v54);
    std::runtime_error::runtime_error(&v55, &v54);
    std::runtime_error::runtime_error(&v56, &v55);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = -1;
    v56.__vftable = &unk_1F5992170;
    v57 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v56);
    v64 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<AMCP::Wire_Connection_Properties>, Argument_Types = <AMCP::Wire_Identifier>]";
    *&v65 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    DWORD2(v65) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  *buf = v42;
  v14 = v43;
  v42.__imp_.__imp_ = 0;
  v43 = 0;
  v42.__vftable = 0;
  *&buf[16] = v14;
  *&buf[24] = v44;
  LODWORD(v64) = v45;
  v65 = v46;
  v15 = v47;
  v47 = 0;
  v46 = 0uLL;
  v68 = v49;
  v66 = v15;
  v67 = v48;
  v16 = *(v12 + 3);
  if (!v16)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v16 + 48))(v16, buf);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE65D7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, std::runtime_error a36, uint64_t a37, uint64_t a38, void *a39, void *__p, uint64_t a41, uint64_t a42, std::runtime_error a43, int a44, __int16 a45, char a46, char a47)
{
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  if (a36.__vftable)
  {
    a36.__imp_.__imp_ = a36.__vftable;
    operator delete(a36.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v50 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v50 - 224);
  std::runtime_error::~runtime_error((v50 - 240));
  if (a47 < 0)
  {
    operator delete(a43.__vftable);
  }

  if (v49)
  {
    __cxa_free_exception(v48);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v50 - 161));
  AMCP::Wire_Identifier::~Wire_Identifier(&a24);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  _Unwind_Resume(a1);
}

uint64_t AMCP::System::Config_Change_Observer::Config_Change_Observer(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = **a2;
  v5 = (*a2)[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t AMCP::System::Config_Change_Observer::Config_Change_Observer(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v8;
    *(a1 + 8) = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    *a1 = v8;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  return a1;
}

void AMCP::System::Config_Change_Observer::~Config_Change_Observer(std::__shared_weak_count **this)
{
  AMCP::System::Config_Change_Observer::reset(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void AMCP::System::Config_Change_Observer::reset(AMCP::System::Config_Change_Observer *this)
{
  v2 = *(this + 1);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *this;
    if (*this)
    {
      v6 = *(this + 2);
      if (v6)
      {
        v7 = *(v5 + 32);
        if (*(this + 24) == 1)
        {
          AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::deregister_observer(v7 + 1616, v6);
        }

        else
        {
          AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::deregister_observer(v7 + 2048, v6);
          v8 = *(v5 + 32);
          v9 = *(this + 2);
          std::__shared_mutex_base::lock((v8 + 1832));
          if (*(v8 + 2000) == 1)
          {
            v10 = *(v8 + 2008);
            v11 = *(v8 + 2016);
            if (v10 != v11)
            {
              v12 = -v10;
              while (1)
              {
                v13 = *(v10 + 16);
                if (AMCP::Utility::Sorted_Vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,0ul>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>>::find(*(v10 + 8), v13, v9))
                {
                  break;
                }

                v10 += 40;
                v12 -= 40;
                if (v10 == v11)
                {
                  goto LABEL_27;
                }
              }

              v15 = v14;
              if (v14 + 9 == v13)
              {
                v16 = v14;
              }

              else
              {
                v16 = v14;
                do
                {
                  v17 = *(v16 + 72);
                  v16 += 72;
                  *v15 = v17;
                  std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>::operator=[abi:ne200100]((v15 + 1), (v15 + 10));
                  v18 = v15 + 18;
                  v15 = v16;
                }

                while (v18 != v13);
              }

              std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__base_destruct_at_end[abi:ne200100](v10 + 8, v16);
              if (*(v10 + 8) == *(v10 + 16))
              {
                v19 = *(v8 + 2016);
                if (v10 + 40 != v19)
                {
                  v20 = *(v8 + 2008);
                  v21 = -v20;
                  v22 = v20 - v12;
                  do
                  {
                    v23 = v22 + v21;
                    *v23 = *(v22 + v21 + 40);
                    v24 = *(v22 + v21 + 8);
                    *(v23 + 8) = *(v22 + v21 + 48);
                    *(v23 + 48) = v24;
                    v25 = *(v22 + v21 + 24);
                    *(v23 + 24) = *(v22 + v21 + 64);
                    *(v23 + 64) = v25;
                    v22 += 40;
                    v10 = v22 + v21;
                  }

                  while (v22 + v21 + 40 != v19);
                  v19 = *(v8 + 2016);
                }

                if (v19 != v10)
                {
                  do
                  {
                    v26 = v19 - 40;
                    v27 = (v19 - 32);
                    std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__destroy_vector::operator()[abi:ne200100](&v27);
                    v19 = v26;
                  }

                  while (v26 != v10);
                }

                *(v8 + 2016) = v10;
              }
            }
          }

LABEL_27:
          std::__shared_mutex_base::unlock((v8 + 1832));
        }
      }
    }

    *(this + 2) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *(this + 2) = 0;
  }
}

void AMCP::System::create_begin_config_change_observer(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()>::__value_func[abi:ne200100](v2, a2);
  v3 = 0;
  operator new();
}

void sub_1DE65DDE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::System::create_begin_config_change_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "System.cpp";
      v26 = 1024;
      v27 = 212;
      v28 = 2080;
      v29 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "No underlying object");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "System::Config_Change_Observer AMCP::System::create_begin_config_change_observer(const Config_Change_Observer_Proc &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v32 = 212;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 1616, (*(**v8 + 32) + 1824), a2);
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, v9, 1);
  v10 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65E0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP6System35create_begin_config_change_observerERKNSt3__18functionIFvjEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5986810;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5986810;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void AMCP::System::create_end_config_change_observer(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::__value_func[abi:ne200100](v2, a2);
  v3 = 0;
  operator new();
}

void sub_1DE65E4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void AMCP::System::create_end_config_change_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "System.cpp";
      v26 = 1024;
      v27 = 226;
      v28 = 2080;
      v29 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "No underlying object");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "System::Config_Change_Observer AMCP::System::create_end_config_change_observer(const Config_Change_Observer_Proc &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v32 = 226;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 2048, (*(**v8 + 32) + 2256), a2);
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, v9, 0);
  v10 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65E834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP6System33create_end_config_change_observerERKNSt3__18functionIFvjRKNS1_5tupleIJNS1_6vectorIjNS1_9allocatorIjEEEES7_N5boost9container8flat_mapIjNS3_IJNSA_INS_7AddressENS_5ThingENSB_15Is_Exact_BeforeEvEESE_SE_EEENS1_4lessIjEEvEEEEEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::operator()(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v6, a4);
}

void std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59868A0;
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59868A0;
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void AMCP::System::create_continuing_config_change_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "System.cpp";
      v26 = 1024;
      v27 = 205;
      v28 = 2080;
      v29 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "No underlying object");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "System::Config_Change_Observer AMCP::System::create_continuing_config_change_observer(const Config_Change_Observer_Proc &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v32 = 205;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 2264, (*(**v8 + 32) + 2472), a2);
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, v9, 1);
  v10 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65EE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void AMCP::System::create_ioc_graph_update_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      v38 = 1024;
      v39 = 219;
      v40 = 2080;
      v41 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v30, "No underlying object");
    std::runtime_error::runtime_error(&v24, &v30);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v24.__vftable = &unk_1F5992170;
    v25 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v24);
    v42 = "System::Config_Change_Observer AMCP::System::create_ioc_graph_update_observer(const IOC_Graph_Update_Proc_Pair &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v44 = 219;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v8 = a1[4];
  v9 = *(**v8 + 32);
  v33 = v9 + 1832;
  v34 = 1;
  std::__shared_mutex_base::lock((v9 + 1832));
  if (*(v9 + 2000) == 1)
  {
    add = atomic_fetch_add(&AMCP::Observer::Implementation::get_next_token(void)::s_next_token, 1uLL);
    if (!AMCP::Utility::Sorted_Vector<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>>,0ul>,std::less<unsigned int>,std::allocator<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>>>>::find( *(v9 + 2008),  *(v9 + 2016),  *(v9 + 2040)))
    {
      *buf = add;
      std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>::pair[abi:ne200100](&buf[8], a2);
      v30.__vftable = 0;
      v30.__imp_.__imp_ = 0;
      v31 = 0;
      v35 = &v30;
      v36 = 0;
      operator new();
    }

    v12 = v11;
    *buf = add;
    std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>::pair[abi:ne200100](&buf[8], a2);
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = (v12 + 8);
    v16 = AMCP::Utility::Sorted_Vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,0ul>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>>::find(v13, v14, add);
    v18 = v17;
    if (v16)
    {
      *v17 = add;
      std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>::operator=((v17 + 8), &buf[8]);
      std::function<void ()(AMCP::Graph_Description const&)>::operator=((v18 + 40), &v43);
    }

    else
    {
      std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::insert(v15, v17, buf);
    }

    std::__function::__value_func<void ()(AMCP::Graph_Description const&)>::~__value_func[abi:ne200100](&v43);
    std::__function::__value_func<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>::~__value_func[abi:ne200100](&buf[8]);
  }

  else
  {
    add = 0;
  }

  std::__shared_mutex_base::unlock((v9 + 1832));
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, add, 0);
  v19 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65F6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::runtime_error a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, std::runtime_error *a31, uint64_t a32, void *__p, uint64_t a34)
{
  *(v36 + 2016) = v35;
  a31 = a10;
  std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = &a19;
  std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  std::__function::__value_func<void ()(AMCP::Graph_Description const&)>::~__value_func[abi:ne200100](v37 - 136);
  std::__function::__value_func<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>::~__value_func[abi:ne200100](v37 - 168);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  _Unwind_Resume(a1);
}

void AMCP::System::execute_task_against_config_changes(uint64_t a1, uint64_t a2)
{
  queue[42] = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (*(***(a1 + 32) + 32) + 32));
  v4 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN4AMCP4Core9Conductor11handle_taskERKNSt3__18functionIFvvEEEEUlvE_EEvP16dispatch_queue_sOT_NS6_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_15719;
  block[4] = &v4;
  dispatch_sync(queue[0], block);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN4AMCP4Core9Conductor11handle_taskERKNSt3__18functionIFvvEEEEUlvE_EEvP16dispatch_queue_sOT_NS6_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(**(a1 + 32) + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE65F940(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE65F930);
}

void AMCP::System::execute_task_against_config_changes_async(uint64_t a1, uint64_t a2)
{
  v4[42] = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v4, (*(***(a1 + 32) + 32) + 32));
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v3, a2);
  operator new();
}

void sub_1DE65FA34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1},std::default_delete<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x1020C40A5B76CDFLL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1}>(dispatch_queue_s *,AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v3 = a1;
  v1 = *(a1 + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v1 + 48))(v1);
  return std::unique_ptr<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1},std::default_delete<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_1DE65FAE8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE65FACCLL);
}

void AMCP::System::wait_for_notification_quiesence(AMCP::System *this, double a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (a2 > 0.0)
  {
    v11 = mach_absolute_time();
    v12[0] = &unk_1F5986920;
    v12[1] = &v11;
    v12[3] = v12;
    AMCP::System::create_end_config_change_observer(this, v12, v10);
    std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](v12);
    v4 = mach_absolute_time();
    v5 = (a2 * 24000000.0);
    v6 = atomic_load(&v11);
    if (!v6 || v4 - v6 < v5)
    {
      do
      {
        mach_wait_until(v4 + (a2 * 0.25 * 24000000.0));
        v4 = mach_absolute_time();
        v7 = atomic_load(&v11);
        if (v7)
        {
          v8 = v4 - v7 >= v5;
        }

        else
        {
          v8 = 0;
        }
      }

      while (!v8);
    }

    AMCP::System::Config_Change_Observer::~Config_Change_Observer(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE65FC14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::System::wait_for_notification_quiesence(double)::$_0,std::allocator<AMCP::System::wait_for_notification_quiesence(double)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP6System31wait_for_notification_quiesenceEdE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::System::wait_for_notification_quiesence(double)::$_0,std::allocator<AMCP::System::wait_for_notification_quiesence(double)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = mach_absolute_time();
  atomic_store(result, v1);
  return result;
}

uint64_t std::__function::__func<AMCP::System::wait_for_notification_quiesence(double)::$_0,std::allocator<AMCP::System::wait_for_notification_quiesence(double)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5986920;
  a2[1] = v2;
  return result;
}

void AMCP::System::find_devices_to_stop_for_config_change(AMCP::System *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = *(***(this + 4) + 32);
  v65 = a2;
  v64[0] = 0;
  v64[1] = 0;
  v63 = v64;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  v50 = (v5 + 2696);
  (*(*(v5 + 2696) + 16))(buf);
  v6 = (*(**buf + 16))(*buf);
  AMCP::Core::Broker::fetch_core(&v61, v6, a2);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v7 = v61;
  if (v61)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v61);
    if (AMCP::is_base_of(0x61646576, simple_required))
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v63, a2);
    }

    else if (AMCP::is_base_of(0x61706C67, simple_required))
    {
      AMCP::Core::Core::get_simple_required_property<1684370979u>(buf, v7);
      v9 = *buf;
      v10 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v11 = *buf;
        do
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&v63, v64, *v11++);
        }

        while (v11 != v10);
      }

      if (v9)
      {
        operator delete(v9);
      }
    }

    std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a3, v63, v64);
    AMCP::Graph::Graph::get_nodes(v60, *(v5 + 2896));
    v12 = v63;
    if (v63 != v64)
    {
      while (1)
      {
        v46 = v12;
        v59 = *(v12 + 7);
        v13 = v59;
        AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(v58, v50, v59);
        v14 = v60[0];
        v15 = v60[1];
        while (v14 != v15)
        {
          (*(*v50 + 16))(&v69);
          v16 = (*(*v69 + 16))(v69);
          v17 = *(*v14 + 176);
          if (v17)
          {
            v18 = *(v17 + 8);
          }

          else
          {
            v18 = 0;
          }

          AMCP::Core::Broker::fetch_core(buf, v16, v18);
          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (*buf)
          {
            v69 = 0x676C6F6269757462;
            LODWORD(v70) = 0;
            if (AMCP::Core::Core::call_operation_function<BOOL,std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&>(*buf, &v69, v58))
            {
              std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(a3, v13);
            }
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          v14 += 16;
        }

        (*(*v50 + 16))(&v53, v50);
        (*(*v50 + 48))(&v51, v50);
        v56 = 0;
        v57 = 0;
        v55 = &v56;
        v19 = v51;
        v49 = v52;
        if (v51 != v52)
        {
          break;
        }

LABEL_69:
        if (v19)
        {
          v52 = v19;
          operator delete(v19);
        }

        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        if (v57)
        {
          std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a3, v55, &v56);
        }

        v36 = AMCP::Core::Core::get_simple_required_property<1650682995u>(v61);
        if (AMCP::is_base_of(0x61616767, v36))
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(a3, v65);
        }

        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v56);
        *buf = v58;
        std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
        v37 = v46;
        v38 = v46[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v37[2];
            v40 = *v39 == v37;
            v37 = v39;
          }

          while (!v40);
        }

        v12 = v39;
        if (v39 == v64)
        {
          goto LABEL_83;
        }
      }

      while (1)
      {
        v20 = (*(*v53 + 16))(v53);
        AMCP::Core::Broker::fetch_core(&v67, v20, *v19);
        v21 = v67;
        if (v67)
        {
          if (AMCP::Core::Core::get_simple_required_property<1650682995u>(v67) == 1633773415)
          {
            break;
          }
        }

LABEL_65:
        if (v68)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        }

        if (++v19 == v49)
        {
          v19 = v51;
          goto LABEL_69;
        }
      }

      v72 = 0x676C6F6267727570;
      v73 = 0;
      has_property = AMCP::Core::Core::has_property(v21, &v72);
      if (!has_property)
      {
        goto LABEL_87;
      }

      AMCP::Core::Core::find_operation(&v69, v21, &v72);
      v23 = v69;
      if (v69)
      {
        v24 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::ArrayRef ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v23, v24))
        {
          AMCP::Core::Operation::call_function<applesauce::CF::ArrayRef>(buf, v23);
          v25 = 0;
          v3 = *buf;
LABEL_37:
          v48 = 1;
LABEL_39:
          has_property = v70;
          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v25 || (v48 & 1) == 0)
          {
LABEL_87:
            v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v42 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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

            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v71 = 4;
              strcpy(&v69, "grup");
              *buf = 136316418;
              *&buf[4] = "Core.h";
              *&buf[12] = 1024;
              *&buf[14] = 391;
              v76 = 2080;
              *v77 = "optional_value.operator BOOL() == true";
              *&v77[8] = 2080;
              *&v77[10] = &v69;
              *&v77[18] = 1024;
              v78 = 1735159650;
              v79 = 1024;
              v80 = 0;
              _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
              if (v71 < 0)
              {
                operator delete(v69);
              }
            }

            abort();
          }

          if (v3)
          {
            CFRetain(v3);
            theArray = v3;
            CFRelease(v3);
            v27 = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
              v29 = CFArrayGetCount(v27);
              if (Count)
              {
                v30 = v29;
                v31 = 0;
                v32 = v59;
                v33 = v3;
                do
                {
                  if (v30 == v31)
                  {
                    break;
                  }

                  applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v72, v27, v31);
                  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v74, &v72);
                  v34 = (*(*v53 + 16))(v53);
                  v35 = v74;
                  if (v74)
                  {
                    CFRetain(v74);
                    *&v77[4] = 0;
                    *buf = &unk_1F596C5C8;
                    CFRetain(v35);
                  }

                  else
                  {
                    *buf = &unk_1F596C5C8;
                  }

                  *&buf[8] = v35;
                  *&v77[4] = buf;
                  AMCP::Core::Broker::fetch_first_core_if (&v69, v34, buf);
                  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  if (v69 && *v69 == v32)
                  {
                    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v55, *v19);
                  }

                  v3 = v33;
                  if (v70)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                  }

                  if (v74)
                  {
                    CFRelease(v74);
                  }

                  if (v72)
                  {
                    CFRelease(v72);
                  }

                  ++v31;
                }

                while (Count != v31);
              }

              if (theArray)
              {
                CFRelease(theArray);
              }
            }
          }

          goto LABEL_65;
        }

        v26 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v23, v26))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v23);
          AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(&v74, buf);
          v3 = v74;
          if (*&v77[12])
          {
            (*&v77[12])(0, buf, 0, 0);
          }

          v25 = 0;
          goto LABEL_37;
        }
      }

      v25 = 1;
      goto LABEL_39;
    }

LABEL_83:
    *buf = v60;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v64[0]);
  v41 = *MEMORY[0x1E69E9840];
}

void sub_1DE660584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*a9);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a35);
  __clang_call_terminate(exception_object);
}

void *AMCP::System::All_Control_Value_Observer::All_Control_Value_Observer(void *a1, uint64_t **a2, uint64_t a3)
{
  v6 = **a2;
  v5 = (*a2)[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    a1[1] = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a1 = v6;
    a1[1] = 0;
  }

  a1[2] = a3;
  return a1;
}

void AMCP::System::All_Control_Value_Observer::~All_Control_Value_Observer(std::__shared_weak_count **this)
{
  AMCP::System::All_Control_Value_Observer::reset(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void AMCP::System::All_Control_Value_Observer::reset(AMCP::System::All_Control_Value_Observer *this)
{
  v2 = *(this + 1);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    if (*this)
    {
      v5 = *(this + 2);
      if (v5)
      {
        AMCP::Core::Conductor::destroy_control_value_observer(*(*this + 32), v5);
      }
    }

    *(this + 2) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *(this + 2) = 0;
  }
}

void AMCP::System::create_all_control_value_observer(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "System.cpp";
      v26 = 1024;
      v27 = 295;
      v28 = 2080;
      v29 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "No underlying object");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "System::All_Control_Value_Observer AMCP::System::create_all_control_value_observer(const All_Control_Value_Observer_Proc &)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v32 = 295;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 2480, (*(**v8 + 32) + 2688), a2);
  AMCP::System::All_Control_Value_Observer::All_Control_Value_Observer(a3, v8, v9);
  v10 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE660AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void AMCP::System::update_power_state(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 16)) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      v21 = 1024;
      v22 = 304;
      v23 = 2080;
      v24 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v12, "No underlying object");
    std::runtime_error::runtime_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5992170;
    v14 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v13);
    v25 = "void AMCP::System::update_power_state(AMCP::Power_State)";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v27 = 304;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  strcpy(buf, "sppubolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::call_operation_function<void,AMCP::Power_State>(v3, buf, a2);
  v6 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE660DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void sub_1DE660E5C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE660BA0);
  }

  JUMPOUT(0x1DE660E54);
}

uint64_t HALS_EmbeddedSettingsLite::read_BOOL(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v25 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    v25 = 0;
  }

  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      cf = 0;
      goto LABEL_15;
    }

    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  v10 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  cf = v10;
  if (!v10)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_15:
  v11 = CFPreferencesCopyAppValue(v7, v10);
  v12 = v11;
  valuePtr = 0;
  if (!v11)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_27;
  }

  v13 = CFGetTypeID(v11);
  if (v13 == CFBooleanGetTypeID())
  {
    v14 = CFBooleanGetValue(v12) == 0;
  }

  else
  {
    if (v13 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
    }

    else
    {
      if (v13 != CFStringGetTypeID())
      {
        v15 = 0;
        v16 = 0;
        goto LABEL_26;
      }

      CFStringGetCString(v12, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) != 1)
      {
        v19 = buffer[0];
        if (buffer[0])
        {
          v20 = &buffer[1];
          do
          {
            *(v20 - 1) = __tolower(v19);
            v21 = *v20++;
            v19 = v21;
          }

          while (v21);
        }

        if (*buffer ^ 0x6F6E | buffer[2])
        {
          if (*buffer != 1936482662 || v28 != 101)
          {
            if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v28))
            {
              v15 = 1;
              v16 = 1;
            }

            else
            {
              v15 = 0;
              v16 = valuePtr != 0;
            }

            goto LABEL_26;
          }
        }

        v16 = 0;
        goto LABEL_25;
      }
    }

    v14 = valuePtr == 0;
  }

  v16 = !v14;
LABEL_25:
  v15 = 1;
LABEL_26:
  CFRelease(v12);
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15)
  {
    result = v16 | 0x100u;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE661B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6619D0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_EmbeddedSettingsLite::read_float(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v21 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    v21 = 0;
  }

  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      cf = 0;
      goto LABEL_15;
    }

    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  v10 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  cf = v10;
  if (!v10)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_15:
  v11 = CFPreferencesCopyAppValue(v7, v10);
  v12 = v11;
  valuePtr = 0.0;
  if (!v11)
  {
    v14 = 0;
    v15 = 0.0;
    goto LABEL_23;
  }

  v13 = CFGetTypeID(v11);
  if (v13 == CFBooleanGetTypeID())
  {
    valuePtr = CFBooleanGetValue(v12);
  }

  else
  {
    if (v13 != CFNumberGetTypeID())
    {
      if (v13 == CFStringGetTypeID())
      {
        CFStringGetCString(v12, buffer, 64, 0x600u);
        v14 = sscanf(buffer, "%lf", &valuePtr) == 1;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    }

    CFNumberGetValue(v12, kCFNumberDoubleType, &valuePtr);
  }

  v14 = 1;
LABEL_22:
  v15 = valuePtr;
  CFRelease(v12);
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v14)
  {
    *&v16 = v15;
    result = v16 | 0x100000000;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE661E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE661DC4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_EmbeddedSettingsLite::read_int(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v20 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    v20 = 0;
  }

  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      cf = 0;
      goto LABEL_15;
    }

    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  v10 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  cf = v10;
  if (!v10)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_15:
  v11 = CFPreferencesCopyAppValue(v7, v10);
  v12 = v11;
  valuePtr = 0;
  if (!v11)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v13 = CFGetTypeID(v11);
  if (v13 == CFBooleanGetTypeID())
  {
    valuePtr = CFBooleanGetValue(v12);
  }

  else
  {
    if (v13 != CFNumberGetTypeID())
    {
      if (v13 == CFStringGetTypeID())
      {
        CFStringGetCString(v12, buffer, 64, 0x600u);
        v14 = sscanf(buffer, "%d", &valuePtr) == 1;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    }

    CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
  }

  v14 = 1;
LABEL_22:
  v15 = valuePtr;
  CFRelease(v12);
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v14)
  {
    result = v15 | 0x100000000;
  }

  else
  {
    result = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE66218C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6620CCLL);
  }

  _Unwind_Resume(exception_object);
}

void HALS_EmbeddedSettingsLite::~HALS_EmbeddedSettingsLite(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12C1730);
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t check_posix_error(uint64_t result, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = *__error();
    v5 = std::generic_category();
    MEMORY[0x1E12C10C0](v9, v4, v5, v3);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = std::runtime_error::what(v9);
      *buf = 136315138;
      v11 = v6;
      _os_log_error_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v8 = std::runtime_error::runtime_error(exception, v9);
    v8->__vftable = (MEMORY[0x1E69E5510] + 16);
    v8[1] = v9[1];
    __cxa_throw(v8, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE662D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, std::runtime_error a28, char a29)
{
  if (a2)
  {

    v32 = __cxa_begin_catch(exception_object);
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v32);
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

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = v30 - 176;
      *v37 = 136315394;
      *(v37 + 4) = "Core_Audio_Driver.mm";
      *(v37 + 12) = 1024;
      *(v37 + 14) = 855;
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d SetPropertyData: caught exception", (v30 - 176), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6628B4);
  }

  _Unwind_Resume(exception_object);
}

void unpack_data_from_qualifier(uint64_t a1, unsigned int a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = a3;
  if (a2)
  {
    if (a2 >= 0x13)
    {
      LODWORD(v5) = 4;
    }

    else
    {
      v5 = qword_1DE7962A0[a2] | qword_1DE796208[a2];
      if ((v5 & 0x100000000) == 0)
      {
        LODWORD(v5) = [v13 length];
      }
    }

    v23 = v5;
    v6 = [objc_alloc(MEMORY[0x1E695DF80]) initWithLength:{objc_msgSend(v13, "length")}];
    v7 = AMCP::HAL::unpack_property_data(v13, a2, &v23, [v6 mutableBytes]);
    if (v7)
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v10;
        AMCP::Log::Scope::get_os_log_t(*v10);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v12 = *v10;
        AMCP::Log::Scope::get_os_log_t(*v10);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "Core_Audio_Driver.mm";
        v26 = 1024;
        v27 = 676;
        v28 = 2080;
        v29 = "qualifier_error != kAudioHardwareNoError";
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unpack qualifier", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v15, "Failed to unpack qualifier");
      std::runtime_error::runtime_error(&v16, &v15);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = -1;
      v16.__vftable = &unk_1F5992170;
      v17 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v16);
      v30 = "std::tuple<NSData *, UInt32, AMCP::HAL::HAL_Property_Type_Code> unpack_data_from_qualifier(AMCP::HAL::HAL_Property_Type_Code, NSData *__strong)";
      v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
      v32 = 676;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
    }

    *a1 = v6;
    *(a1 + 8) = v23;
    *(a1 + 12) = a2;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>>::__erase_unique<AMCP::Portal::IPC::io_messenger_id_t>(void *a1, unsigned int a2, unsigned int a3)
{
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(a1, a2, a3);
  if (v4)
  {
    v5 = a1[1];
    v6 = v4[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v4);
    if (v9 == a1 + 2)
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
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

    if (v10 != v6)
    {
LABEL_20:
      if (!*v4)
      {
        goto LABEL_21;
      }

      v11 = *(*v4 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*a1 + 8 * v6) = 0;
      }
    }

    v12 = *v4;
    if (*v4)
    {
      v13 = *(v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*a1 + 8 * v13) = v9;
        v12 = *v4;
      }
    }

    *v9 = v12;
    *v4 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v4);
  }
}

void sub_1DE665450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t get_buffer_key(const dict *a1)
{
  v13 = a1;
  v14 = "buffer shared memory";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v15, &v13);
  v13 = a1;
  v14 = "buffer device id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v12, &v13);
  v2 = applesauce::xpc::dyn_cast_or_default(&v12, 0);
  v13 = a1;
  v14 = "buffer client id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v11, &v13);
  v3 = applesauce::xpc::dyn_cast_or_default(&v11, 0);
  v13 = a1;
  v14 = "buffer stream id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v10, &v13);
  applesauce::xpc::dyn_cast_or_default(&v10, 0);
  v13 = a1;
  v14 = "buffer type";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v9, &v13);
  applesauce::xpc::dyn_cast_or_default(&v9, 0);
  v4 = v9;
  v9 = 0;

  v5 = v10;
  v10 = 0;

  v6 = v11;
  v11 = 0;

  v7 = v12;
  v12 = 0;

  return v2 | (v3 << 32);
}

void std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {
    v5 = *(i - 8);
    *(i - 8) = 0;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = xpc_null_create();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

void sub_1DE6681F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, os_unfair_lock_t lock, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::runtime_error a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, void *a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::runtime_error a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a2)
  {
    AMCP::IO_Core::Device_Node_Factory::~Device_Node_Factory(&a53);
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    os_unfair_lock_unlock(lock);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE66787CLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Portal::IPC::IO_Receiver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986CE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void __destroy_helper_block_ea8_32c89_ZTSKZ75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply__E4__10(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c89_ZTSKZ75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply__E4__10(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  result = _Block_copy(*(a2 + 64));
  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_ea8_32c90_ZTSKZ77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply__E3__9(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c90_ZTSKZ77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply__E3__9(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  result = _Block_copy(*(a2 + 64));
  *(a1 + 64) = result;
  return result;
}

void sub_1DE669584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 144);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  os_unfair_lock_unlock(v30);
  _Unwind_Resume(a1);
}

void sub_1DE669874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = Core_Audio_Driver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 24);
  v1 = *(a1 + 24);
  if (v1)
  {
    std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>::__base_destruct_at_end[abi:ne200100](a1 + 24, v1);
    v3 = *v2;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<std::map<unsigned long long,void *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_Control::GetRangeChangedAddresses(HALS_Control *this, CAPropertyAddressList *a2, const AudioObjectPropertyAddress *a3)
{
  v3 = *(this + 5);
  v4 = *(this + 6);
  if (v3 <= 1936028006)
  {
    v5 = v3 == 1818588780;
    v6 = 1886544237;
  }

  else
  {
    v5 = v3 == 1936028007 || v3 == 1937072758;
    v6 = 1986817381;
  }

  if (v5 || v3 == v6)
  {
    goto LABEL_12;
  }

  if (v3 == v4)
  {
    goto LABEL_16;
  }

  if (v4 <= 1936028006)
  {
    if (v4 == 1818588780)
    {
LABEL_12:
      v8 = 0x676C6F626C636472;
LABEL_13:
      *&v12.mSelector = v8;
      v12.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v12, a3);
      return;
    }

    v10 = 1886544237;
  }

  else
  {
    if (v4 == 1936028007 || v4 == 1986817381)
    {
      goto LABEL_12;
    }

    v10 = 1937072758;
  }

  if (v4 == v10)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (v3 > 1751740517)
  {
    if (v3 == 1751740518 || v3 == 1852601964)
    {
      goto LABEL_28;
    }

    v9 = 1936483188;
  }

  else
  {
    if (v3 == 1668047723 || v3 == 1684370292)
    {
      goto LABEL_28;
    }

    v9 = 1685287523;
  }

  if (v3 == v9)
  {
    goto LABEL_28;
  }

  if (v3 != v4)
  {
    if (v4 > 1751740517)
    {
      if (v4 == 1751740518 || v4 == 1936483188)
      {
        goto LABEL_28;
      }

      v11 = 1852601964;
    }

    else
    {
      if (v4 == 1668047723 || v4 == 1684370292)
      {
        goto LABEL_28;
      }

      v11 = 1685287523;
    }

    if (v4 == v11)
    {
LABEL_28:
      v8 = 0x676C6F6273636169;
      goto LABEL_13;
    }

    if (v3 != v4 && v3 != 1936744814 && v4 != 1936744814)
    {
      if (v3 == 1651273579 || v3 == 1936028002 || v4 == 1651273579 || v4 == 1936028002)
      {
        goto LABEL_38;
      }

      return;
    }

LABEL_55:
    v8 = 0x676C6F6273706363;
    goto LABEL_13;
  }

  if (v3 == 1936744814 || v3 != v4)
  {
    goto LABEL_55;
  }

  if (v3 == 1936028002 || v3 == 1651273579)
  {
LABEL_38:
    v8 = 0x676C6F62626C6B64;
    goto LABEL_13;
  }
}

void HALS_Control::GetValueChangedAddresses(HALS_Control *this, CAPropertyAddressList *a2, const AudioObjectPropertyAddress *a3)
{
  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v4 <= 1936028006)
  {
    v6 = v4 == 1818588780;
    v7 = 1886544237;
  }

  else
  {
    v6 = v4 == 1936028007 || v4 == 1937072758;
    v7 = 1986817381;
  }

  if (v6 || v4 == v7)
  {
    goto LABEL_12;
  }

  if (v4 == v5)
  {
    if (!HALB_Info::IsSubClass(*(this + 5), 1953458028) && v4 == v5)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  if (v5 <= 1936028006)
  {
    if (v5 == 1818588780)
    {
LABEL_12:
      *&v15.mSelector = 0x676C6F626C637376;
      v15.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v15, a3);
      v10 = 0x676C6F626C636476;
LABEL_13:
      *&v15.mSelector = v10;
      v15.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v15, v9);
      return;
    }

    v12 = 1886544237;
  }

  else
  {
    if (v5 == 1936028007 || v5 == 1986817381)
    {
      goto LABEL_12;
    }

    v12 = 1937072758;
  }

  if (v5 == v12)
  {
    goto LABEL_12;
  }

  IsSubClass = HALB_Info::IsSubClass(*(this + 5), 1953458028);
  if (v4 == v5 || IsSubClass || HALB_Info::IsSubClass(v5, 1953458028))
  {
LABEL_32:
    v10 = 0x676C6F626263766CLL;
    goto LABEL_13;
  }

LABEL_18:
  if (v4 > 1751740517)
  {
    if (v4 == 1751740518 || v4 == 1852601964)
    {
      goto LABEL_37;
    }

    v11 = 1936483188;
  }

  else
  {
    if (v4 == 1668047723 || v4 == 1684370292)
    {
      goto LABEL_37;
    }

    v11 = 1685287523;
  }

  if (v4 == v11)
  {
    goto LABEL_37;
  }

  if (v4 != v5)
  {
    if (v5 > 1751740517)
    {
      if (v5 == 1751740518 || v5 == 1936483188)
      {
        goto LABEL_37;
      }

      v14 = 1852601964;
    }

    else
    {
      if (v5 == 1668047723 || v5 == 1684370292)
      {
        goto LABEL_37;
      }

      v14 = 1685287523;
    }

    if (v5 == v14)
    {
LABEL_37:
      v10 = 0x676C6F6273636369;
      goto LABEL_13;
    }

    if (v4 != v5 && v4 != 1936744814 && v5 != 1936744814)
    {
      if (v4 == 1651273579 || v4 == 1936028002 || v5 == 1651273579 || v5 == 1936028002)
      {
        goto LABEL_43;
      }

      return;
    }

LABEL_60:
    v10 = 0x676C6F6273706376;
    goto LABEL_13;
  }

  if (v4 == 1936744814 || v4 != v5)
  {
    goto LABEL_60;
  }

  if (v4 == 1936028002 || v4 == 1651273579)
  {
LABEL_43:
    v10 = 0x676C6F62626C6B62;
    goto LABEL_13;
  }
}