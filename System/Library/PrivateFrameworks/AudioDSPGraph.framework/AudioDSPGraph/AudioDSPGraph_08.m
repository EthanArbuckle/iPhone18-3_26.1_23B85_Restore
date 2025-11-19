void sub_1C9237170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, const void *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, const void *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  applesauce::CF::StringRef::~StringRef(&a18);
  if (*(v51 - 97) < 0)
  {
    operator delete(*(v51 - 120));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  applesauce::CF::StringRef::~StringRef(&a31);
  applesauce::CF::URLRef::~URLRef(v50);
  applesauce::CF::URLRef::~URLRef(&a38);
  applesauce::CF::URLRef::~URLRef((v51 - 176));
  applesauce::CF::URLRef::~URLRef((v51 - 72));
  _Unwind_Resume(a1);
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

double applesauce::CF::StringRef_proxy::convert_or(std::string *a1, const __CFString *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (a2 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    applesauce::CF::details::CFString_get_value<false>(a1, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = __p.__r_.__value_.__r.__words[0];

      operator delete(v7);
    }
  }

  else
  {
    result = *&__p.__r_.__value_.__l.__data_;
    *a1 = __p;
  }

  return result;
}

const void **applesauce::CF::ObjectRef<__CFReadStream *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::StringRef>::~optional(uint64_t a1)
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

_BYTE *applesauce::CF::details::CFString_get_value<false>(_BYTE *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  v10.location = 0;
  v10.length = Length;
  CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v7 = maxBufLen;
  if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a1[23] = maxBufLen;
  if (v7)
  {
    bzero(a1, v7);
  }

  a1[v7] = 0;
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v11.location = 0;
  v11.length = Length;
  return CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
}

const void *applesauce::CF::details::at_key<char const*&>(const __CFDictionary *a1, char *__s)
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

void sub_1C92377D4(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1C92377C0);
}

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
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v5);
  }

  begin = (24 * v2);
  v16.__first_ = 0;
  v16.__begin_ = (24 * v2);
  value = 0;
  v16.__end_ = (24 * v2);
  v16.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v16.__begin_;
    end = v16.__end_;
    value = v16.__end_cap_.__value_;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v8;
    end = (24 * v2);
  }

  v10 = end + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = begin - v11;
  memcpy(begin - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = value;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(&v16);
  return v10;
}

uint64_t AudioDSPGraph::Boxes::GraphInput::ringBufferSampleRate(AudioDSPGraph::Boxes::GraphInput *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return **(*(v1 + 16) + 120);
}

void sub_1C9237A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphInput::bytesPerPacket(AudioDSPGraph::Boxes::GraphInput *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return *(*(*(v1 + 16) + 120) + 16);
}

void sub_1C9237AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphInput::numChannels(AudioDSPGraph::Boxes::GraphInput *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return *(*(*(v1 + 16) + 120) + 28);
}

void sub_1C9237B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Boxes::GraphInput::interleaved(AudioDSPGraph::Boxes::GraphInput *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return (*(*(*(v1 + 16) + 120) + 12) & 0x20) == 0;
}

void sub_1C9237C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GraphInput::initialize(AudioDSPGraph::Boxes::GraphInput *this)
{
  if (*(this + 905) == 1)
  {
    if (*(this + 114))
    {
      v2 = *(this + 114);
    }

    else
    {
      v2 = 4130;
    }

    v3 = (this + 880);
    if (*(this + 903) < 0)
    {
      v3 = *v3;
    }

    v4 = *(this + 12);
    if (*(this + 13) == v4)
    {
      v9 = (this + 40);
      if (*(this + 63) < 0)
      {
        v9 = *v9;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v11, v9, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v11, off_1E8337C78);
    }

    v5 = *(*(this + 2) + 1048);
    v6 = *(*(v4 + 16) + 120);
    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
    {
      dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_3496);
    }

    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
    {
      v7 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v2, 0, v3, v5, 0, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(this + 109);
    *(this + 109) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v7 = *(this + 109);
    }

    if (!v7)
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "NewAudioCapturer for DSP graph raw input returned null");
      AudioDSPGraph::ThrowException(1852204065, v10, off_1E8336630);
    }
  }

  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
}

void sub_1C9237DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke_3505()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

void AudioDSPGraph::Boxes::GraphInput::decompileBox(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "in ", 3);
  if (a3)
  {
    v4 = MEMORY[0x1CCA84740](v4, *(a1 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
    v9 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v9 = *v9;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v9);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v6);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1C9237FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::GraphInput::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.28117482e199;
  *a1 = xmmword_1C925F3E0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t AudioDSPGraph::Boxes::GraphInput::stopRecording(AudioDSPGraph::Boxes::GraphInput *this, unsigned int a2)
{
  v4 = *(this + 109);
  *(this + 109) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 905) = 0;

  return AudioDSPGraph::Box::stopRecording(this, a2);
}

void AudioDSPGraph::Boxes::GraphInput::record(uint64_t a1, char *a2, unsigned int a3, char a4, char a5, uint64_t a6)
{
  v12 = &v18;
  std::string::basic_string[abi:ne200100]<0>(&v18, a2);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v14 = v12 + size;
    v15 = v12;
    do
    {
      v16 = memchr(v15, 46, size);
      if (!v16)
      {
        break;
      }

      if (*v16 == 46)
      {
        if (v16 != v14 && v16 - v12 != -1)
        {
          v17 = std::string::replace(&v18, v16 - v12, 1uLL, "_raw.", 5uLL);
          std::string::operator=((a1 + 880), v17);
        }

        break;
      }

      v15 = (v16 + 1);
      size = v14 - v15;
    }

    while (v14 - v15 >= 1);
  }

  *(a1 + 904) = a5;
  *(a1 + 905) = a4;
  *(a1 + 912) = a6;
  AudioDSPGraph::Box::record(a1, a2, a3);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1C9238198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GraphInput::~GraphInput(void **this)
{
  if (*(this + 903) < 0)
  {
    operator delete(this[110]);
  }

  v2 = this[109];
  this[109] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 100));
  AudioDSPGraph::SimpleABL::free((this + 100));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  if (*(this + 903) < 0)
  {
    operator delete(this[110]);
  }

  v2 = this[109];
  this[109] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 100));
  AudioDSPGraph::SimpleABL::free((this + 100));

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::bytesPerPacket(AudioDSPGraph::Boxes::GraphOutput *this)
{
  v1 = *(this + 9);
  if (*(this + 10) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E8337898);
  }

  return *(*(*(v1 + 16) + 120) + 16);
}

void sub_1C9238394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::numChannels(AudioDSPGraph::Boxes::GraphOutput *this)
{
  v1 = *(this + 9);
  if (*(this + 10) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E8337898);
  }

  return *(*(*(v1 + 16) + 120) + 28);
}

void sub_1C9238434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Boxes::GraphOutput::interleaved(AudioDSPGraph::Boxes::GraphOutput *this)
{
  v1 = *(this + 9);
  if (*(this + 10) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E8337898);
  }

  return (*(*(*(v1 + 16) + 120) + 12) & 0x20) == 0;
}

void sub_1C92384DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GraphOutput::decompileBox(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "out ", 4);
  if (a3)
  {
    v4 = MEMORY[0x1CCA84740](v4, *(a1 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
    v9 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v9 = *v9;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v9);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v6);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1C9238644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::GraphOutput::desc@<D0>(uint64_t a1@<X8>)
{
  result = 8.1261874e228;
  *a1 = xmmword_1C925F3F0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::GraphOutput::~GraphOutput(AudioDSPGraph::Boxes::GraphOutput *this)
{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::IsoGroup::add(AudioDSPGraph::IsoGroup *this, AudioDSPGraph::Box *a2)
{
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(this + 2, a2);
  *(a2 + 3) = this;
  if (((*(a2 + 13) - *(a2 + 12)) & 0x1FFFFFFFE0) == 0 || (*(*a2 + 272))(a2))
  {
    std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(this + 7, a2);
  }

  v4 = (*(*a2 + 232))(a2);
  if (v4)
  {
    v5 = v4;
    v7 = *(this + 23);
    v6 = *(this + 24);
    if (v7 >= v6)
    {
      v14 = *(this + 22);
      v15 = (v7 - v14) >> 3;
      if ((v15 + 1) >> 61)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v16 = v6 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v18);
      }

      *(8 * v15) = v5;
      v8 = 8 * v15 + 8;
      v24 = *(this + 22);
      v25 = *(this + 23) - v24;
      v26 = (8 * v15 - v25);
      memcpy(v26, v24, v25);
      v27 = *(this + 22);
      *(this + 22) = v26;
      *(this + 23) = v8;
      *(this + 24) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v7 = v4;
      v8 = (v7 + 1);
    }

    *(this + 23) = v8;
  }

  else
  {
    v9 = (*(*a2 + 240))(a2);
    if (v9)
    {
      v10 = v9;
      v12 = *(this + 26);
      v11 = *(this + 27);
      if (v12 >= v11)
      {
        v19 = *(this + 25);
        v20 = (v12 - v19) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v21 = v11 - v19;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v23);
        }

        v28 = (8 * v20);
        *v28 = v10;
        v13 = 8 * v20 + 8;
        v29 = *(this + 25);
        v30 = *(this + 26) - v29;
        v31 = v28 - v30;
        memcpy(v28 - v30, v29, v30);
        v32 = *(this + 25);
        *(this + 25) = v31;
        *(this + 26) = v13;
        *(this + 27) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v12 = v9;
        v13 = (v12 + 1);
      }

      *(this + 26) = v13;
    }
  }
}

void AudioDSPGraph::IsoGroup::topologicalSort(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 249) == 1)
  {
    operator new();
  }

  if ((*(a1 + 248) & 1) == 0)
  {
    *(a1 + 249) = 1;
    for (i = *(a1 + 112); i; i = *i)
    {
      AudioDSPGraph::IsoGroup::topologicalSort(*(i[2] + 840), a2);
    }

    v5 = *(a1 + 224);
    *(a1 + 249) = 0;
    *(a1 + 232) = v5;
    for (j = *(a1 + 72); j; j = *j)
    {
      (*(*j[2] + 384))(j[2], a1, a1 + 224, a2);
    }

    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v8 >= v7)
    {
      v10 = *a2;
      v11 = v8 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v12) = a1;
      v9 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      *a2 = 0;
      *(a2 + 8) = v9;
      *(a2 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = a1;
      v9 = (v8 + 1);
    }

    *(a2 + 8) = v9;
    *(a1 + 248) = 1;
  }
}

void sub_1C9238BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::interpretText(void *a1, const char *a2, AudioDSPGraph::Language::V1::Interpreters *this, uint64_t a4, uint64_t *a5)
{
  v113 = *MEMORY[0x1E69E9840];
  AudioDSPGraph::Language::V1::Interpreters::checkUTF8Encoding(this, a2);
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  *__p = 0u;
  v106 = 0u;
  if (&v108 != a5)
  {
    v8 = *a5;
    v9 = a5[1];
    if (v9 != v8)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    *(&v108 + 1) = 0;
  }

  for (i = *(a4 + 16); i; i = *i)
  {
    AudioDSPGraph::Language::V1::Preprocessor::def(__p, i + 2);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, this);
  AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v93, __p, &__str, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = &v108;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::~deque[abi:ne200100](__p);
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v93;
  }

  else
  {
    v13 = v93.__r_.__value_.__r.__words[0];
  }

  AudioDSPGraph::Language::V1::Interpreters::checkUTF8Encoding(v13, v12);
  v14 = 0;
  while (v13->__r_.__value_.__s.__data_[0])
  {
    ++v14;
    memset(&v98, 0, sizeof(v98));
    while (1)
    {
      v15 = v13->__r_.__value_.__s.__data_[0];
      if (!v13->__r_.__value_.__s.__data_[0])
      {
        break;
      }

      v13 = (v13 + 1);
      if (v15 == 10)
      {
        break;
      }

      std::string::push_back(&v98, v15);
    }

    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v98;
    }

    else
    {
      v16 = v98.__r_.__value_.__r.__words[0];
    }

    v97 = v16;
    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v97, v15);
    if (!*v97 || *v97 == 59)
    {
      goto LABEL_292;
    }

    v95 = 0uLL;
    v96 = 0;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(&v97, &v95))
    {
      AudioDSPGraph::Language::V1::Interpreters::skipspace(&v97, v17);
      v19 = v97;
      memset(&v94, 0, sizeof(v94));
      while (1)
      {
        v20 = *v19;
        if (v20 <= 0x3B && ((1 << v20) & 0x800000000000401) != 0)
        {
          break;
        }

        std::string::push_back(&v94, v20);
        ++v19;
      }

      v22 = &v94;
      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v94.__r_.__value_.__r.__words[0];
      }

      v97 = v22;
      if ((v96 & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v96) > 5u)
        {
          if (HIBYTE(v96) > 8u)
          {
            if (HIBYTE(v96) != 9)
            {
              goto LABEL_38;
            }

            if (v95 != 0x6574656D61726170 || BYTE8(v95) != 114)
            {
LABEL_127:
              if (v95 != 0x6172615065726977 || BYTE8(v95) != 109)
              {
                goto LABEL_235;
              }

LABEL_132:
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(&__str, &v97);
              if ((v112 & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v103, "expected source endpoint in 'wireParam' command");
                AudioDSPGraph::ThrowException(1886548769, &v103, off_1E83369E0);
              }

              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(__p, &v97);
              if ((BYTE8(v107) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v103, "expected destination endpoint in 'wireParam' command");
                AudioDSPGraph::ThrowException(1886548769, &v103, off_1E83369F8);
              }

              v104.__r_.__value_.__s.__data_[0] = 0;
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(&v97, &v104.__r_.__value_.__l.__data_, v38);
              (*(*a2 + 136))(a2, &__str, __p, v104.__r_.__value_.__s.__data_[0]);
              if (BYTE8(v107) == 1 && SBYTE7(v106) < 0)
              {
                operator delete(__p[0]);
              }

              if (v112 != 1)
              {
LABEL_288:
                if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v94.__r_.__value_.__l.__data_);
                }

                goto LABEL_290;
              }

LABEL_190:
              if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_288;
              }

              v47 = __str.__r_.__value_.__r.__words[0];
LABEL_287:
              operator delete(v47);
              goto LABEL_288;
            }

LABEL_139:
            LODWORD(v103.__r_.__value_.__l.__data_) = 0;
            if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v97, &v103.__r_.__value_.__l.__data_, 1) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "expected parameter ID in 'param' command");
              AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368C0);
            }

            AudioDSPGraph::Language::V1::Interpreters::skipspace(&v97, v39);
            __str.__r_.__value_.__r.__words[0] = 0;
            v40 = v97;
            v42 = strtof(v97, &__str.__r_.__value_.__l.__data_);
            v43 = __str.__r_.__value_.__r.__words[0];
            if (__str.__r_.__value_.__l.__data_ == v40)
            {
LABEL_143:
              v45 = 0;
            }

            else
            {
              v44 = v42;
              if (fabsf(v42) == INFINITY)
              {
                if (*__error())
                {
                  goto LABEL_143;
                }

                v43 = __str.__r_.__value_.__r.__words[0];
              }

              v97 = v43;
              v45 = LODWORD(v44) | 0x100000000;
            }

            v63 = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v97, "out", v41);
            if (!v63)
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v97, "in", v62);
            }

            (*(*a2 + 120))(a2, LODWORD(v103.__r_.__value_.__l.__data_), v45, v63);
            goto LABEL_288;
          }

          if (HIBYTE(v96) != 6)
          {
LABEL_87:
            if (HIBYTE(v96) == 8 && v95 == 0x79747265706F7270)
            {
LABEL_160:
              LODWORD(v104.__r_.__value_.__l.__data_) = 0;
              LOBYTE(__p[0]) = 0;
              BYTE8(v106) = 0;
              if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v97, &v104.__r_.__value_.__l.__data_, 1) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected property ID in 'property' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368D8);
              }

              if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v97, "out", v48))
              {
                goto LABEL_162;
              }

              if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v97, "in", v49) || (AudioDSPGraph::Language::V1::Interpreters::skipspace(&v97, v51), !*v97))
              {
LABEL_192:
                v50 = 0;
              }

              else
              {
                AudioDSPGraph::Language::V1::Interpreters::skipspace(&v97, v52);
                v53 = v97;
                memset(&v103, 0, sizeof(v103));
                v54 = *v97;
                if (*v97)
                {
                  do
                  {
                    v55 = v54;
                    if (v54 < 0)
                    {
                      v56 = __maskrune(v54, 0x4000uLL);
                    }

                    else
                    {
                      v56 = *(MEMORY[0x1E69E9830] + 4 * v54 + 60) & 0x4000;
                    }

                    if (v56)
                    {
                      break;
                    }

                    std::string::push_back(&v103, v55);
                    v57 = *++v53;
                    v54 = v57;
                  }

                  while (v57);
                  v58 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
                  size = v103.__r_.__value_.__l.__size_;
                  v60 = v103.__r_.__value_.__r.__words[0];
                }

                else
                {
                  size = 0;
                  v60 = 0;
                  v58 = 0;
                }

                v97 = v53;
                if ((v58 & 0x80u) == 0)
                {
                  v82 = &v103;
                }

                else
                {
                  v82 = v60;
                }

                if ((v58 & 0x80u) != 0)
                {
                  v58 = size;
                }

                if (v58 < 2)
                {
                  goto LABEL_341;
                }

                if (LOWORD(v82->__r_.__value_.__l.__data_) != 30768 || (v58 & 1) != 0)
                {
                  goto LABEL_341;
                }

                v84 = v58 - 2;
                if (v58 != 2)
                {
                  for (j = &v82->__r_.__value_.__s.__data_[2]; ; ++j)
                  {
                    v86 = *j;
                    if (v86 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v86 + 60) & 0x10000) == 0)
                    {
                      break;
                    }

                    if (!--v84)
                    {
                      operator new();
                    }
                  }

LABEL_341:
                  std::string::basic_string[abi:ne200100]<0>(&v102, "bad property value hexadecimal formatting");
                  AudioDSPGraph::ThrowException(1886548769, &v102, off_1E8336710);
                }

                if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v103.__r_.__value_.__l.__data_);
                }

                if (BYTE8(v106) == 1)
                {
                  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, 0, 0, 0);
                }

                else
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  *&v106 = 0;
                  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, 0, 0, 0);
                  BYTE8(v106) = 1;
                }

                if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v97, "out", v87))
                {
                  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v97, "in", v88);
                  goto LABEL_192;
                }

LABEL_162:
                v50 = 1;
              }

              __str.__r_.__value_.__s.__data_[0] = 0;
              v111 = 0;
              v61 = BYTE8(v106);
              if (BYTE8(v106) == 1)
              {
                *&__str.__r_.__value_.__l.__data_ = *__p;
                __str.__r_.__value_.__r.__words[2] = v106;
                __p[1] = 0;
                *&v106 = 0;
                __p[0] = 0;
                v111 = 1;
              }

              (*(*a2 + 144))(a2, LODWORD(v104.__r_.__value_.__l.__data_), &__str, v50);
              if (v111 == 1 && __str.__r_.__value_.__r.__words[0])
              {
                __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (!v61)
              {
                goto LABEL_288;
              }

              v47 = __p[0];
              if (!__p[0])
              {
                goto LABEL_288;
              }

              goto LABEL_287;
            }

LABEL_235:
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "wireGraphParam") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "wireGraphParameter"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphParamCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "wireGraphProperty"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphPropertyCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "order"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseOrderCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "set"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseSetCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "beginSubset"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBeginSubsetCommand(a1, a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "endSubset"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseEndSubsetCommand(a1);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "graphName"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseGraphNameCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "componentName"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseComponentNameCommand(&v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "format"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseNamedFormatCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "jack"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseJackCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "record"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseRecordCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "inject"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseInjectCommand(a2, &v97);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "analysis"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisCommand(a2, &v97);
            }

            else
            {
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v95, "analysisDefine"))
              {
                v90 = &v95;
                if (v96 < 0)
                {
                  v90 = v95;
                }

                caulk::make_string("unknown command name '%s'\n", &__str, v90);
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336D28);
              }

              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisDefineCommand(a2, &v97);
            }

            goto LABEL_288;
          }

          if (v95 != 1886680431 || WORD2(v95) != 29813)
          {
            goto LABEL_235;
          }

LABEL_149:
          AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v97, &v103.__r_.__value_.__l.__data_, v18);
          __p[0] = 0;
          __p[1] = 0;
          *&v106 = 0;
          if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v97, __p) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&__str, "expected name in 'output' command");
            AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368A8);
          }

          if (SBYTE7(v106) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __p[0], __p[1]);
          }

          else
          {
            *&__str.__r_.__value_.__l.__data_ = *__p;
            __str.__r_.__value_.__r.__words[2] = v106;
          }

          (*(*a2 + 112))(a2, &__str);
LABEL_156:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if ((SBYTE7(v106) & 0x80000000) == 0)
          {
            goto LABEL_288;
          }

          v47 = __p[0];
          goto LABEL_287;
        }

        if (HIBYTE(v96) <= 3u)
        {
          if (HIBYTE(v96) != 2)
          {
            if (HIBYTE(v96) != 3)
            {
              goto LABEL_235;
            }

            if (v95 == 30063 && BYTE2(v95) == 116)
            {
              goto LABEL_149;
            }

LABEL_62:
            if (v95 != 28514 || BYTE2(v95) != 120)
            {
              goto LABEL_235;
            }

LABEL_245:
            v99.__r_.__value_.__r.__words[0] = 0;
            AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v97, &v99.__r_.__value_.__l.__data_, v18);
            memset(&v104, 0, sizeof(v104));
            if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v97, &v104) & 1) == 0)
            {
              caulk::make_string("expected name in 'box' command: %s", &__str, v97);
              AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368F0);
            }

            LOBYTE(__p[0]) = 0;
            BYTE8(v106) = 0;
            v73 = a1[6];
            if (v73)
            {
              v74 = *(a1[2] + 8 * ((v73 + a1[5] - 1) / 0xAAuLL)) - 4080 * ((v73 + a1[5] - 1) / 0xAAuLL) + 24 * (v73 + a1[5] - 1);
              if (*(v74 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(__p, *v74, *(v74 + 8));
              }

              else
              {
                *__p = *v74;
                *&v106 = *(v74 + 16);
              }

              BYTE8(v106) = 1;
            }

            memset(&v103, 0, sizeof(v103));
            if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v97, &v103))
            {
              __str.__r_.__value_.__r.__words[0] = v97;
              v102.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v102.__r_.__value_.__l.__data_, v75) || (v77 = v102.__r_.__value_.__r.__words[0], HIDWORD(v102.__r_.__value_.__r.__words[0])))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of inputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336908);
              }

              v102.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v102.__r_.__value_.__l.__data_, v76) || HIDWORD(v102.__r_.__value_.__r.__words[0]))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of outputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336920);
              }

              v97 = __str.__r_.__value_.__r.__words[0];
              v102 = v104;
              memset(&v104, 0, sizeof(v104));
              v101 = v103;
              memset(&v103, 0, sizeof(v103));
              __str.__r_.__value_.__s.__data_[0] = 0;
              v111 = 0;
              if (BYTE8(v106) == 1)
              {
                *&__str.__r_.__value_.__l.__data_ = *__p;
                __str.__r_.__value_.__r.__words[2] = v106;
                __p[1] = 0;
                *&v106 = 0;
                __p[0] = 0;
                v111 = 1;
              }

              (*(*a2 + 56))(a2, &v102, &v101, v77);
              if (v111 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
              {
                v78 = v101.__r_.__value_.__r.__words[0];
                goto LABEL_277;
              }
            }

            else
            {
              memset(&v101, 0, 20);
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseCompDesc(&v97, &v101.__r_.__value_.__l.__data_, v75))
              {
                caulk::make_string("expected class name or component description in 'box' command: %s", &__str, v97);
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336968);
              }

              __str.__r_.__value_.__r.__words[0] = v97;
              v102.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v102.__r_.__value_.__l.__data_, v79) || (v81 = v102.__r_.__value_.__r.__words[0], HIDWORD(v102.__r_.__value_.__r.__words[0])))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of inputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336938);
              }

              v102.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v102.__r_.__value_.__l.__data_, v80) || HIDWORD(v102.__r_.__value_.__r.__words[0]))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of outputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336950);
              }

              v97 = __str.__r_.__value_.__r.__words[0];
              v102 = v104;
              memset(&v104, 0, sizeof(v104));
              __str.__r_.__value_.__s.__data_[0] = 0;
              v111 = 0;
              if (BYTE8(v106) == 1)
              {
                *&__str.__r_.__value_.__l.__data_ = *__p;
                __str.__r_.__value_.__r.__words[2] = v106;
                __p[1] = 0;
                *&v106 = 0;
                __p[0] = 0;
                v111 = 1;
              }

              (*(*a2 + 64))(a2, &v102, &v101, v81);
              if (v111 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                v78 = __str.__r_.__value_.__r.__words[0];
LABEL_277:
                operator delete(v78);
              }
            }

            if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v102.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103.__r_.__value_.__l.__data_);
            }

            if (BYTE8(v106) == 1 && SBYTE7(v106) < 0)
            {
              operator delete(__p[0]);
            }

            if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_288;
            }

            v47 = v104.__r_.__value_.__r.__words[0];
            goto LABEL_287;
          }

          v31 = v95;
LABEL_119:
          if (v31 != 28265)
          {
            goto LABEL_235;
          }

LABEL_120:
          AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v97, &v103.__r_.__value_.__l.__data_, v18);
          __p[0] = 0;
          __p[1] = 0;
          *&v106 = 0;
          if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v97, __p) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&__str, "expected name in 'input' command");
            AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336890);
          }

          if (SBYTE7(v106) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __p[0], __p[1]);
          }

          else
          {
            *&__str.__r_.__value_.__l.__data_ = *__p;
            __str.__r_.__value_.__r.__words[2] = v106;
          }

          (*(*a2 + 104))(a2, &__str);
          goto LABEL_156;
        }

        if (HIBYTE(v96) != 4)
        {
          if (v95 == 1970302569 && BYTE4(v95) == 116)
          {
            goto LABEL_120;
          }

          if (v95 == 1634886000 && BYTE4(v95) == 109)
          {
            goto LABEL_139;
          }

LABEL_115:
          if (HIBYTE(v96) > 8u)
          {
LABEL_116:
            if (HIBYTE(v96) == 9)
            {
              goto LABEL_127;
            }

LABEL_38:
            if (HIBYTE(v96) != 12)
            {
              if (HIBYTE(v96) == 13 && v95 == 0x6172615065726977 && *(&v95 + 5) == 0x726574656D617261)
              {
                goto LABEL_132;
              }

              goto LABEL_235;
            }

            goto LABEL_230;
          }

          if (HIBYTE(v96) == 3)
          {
            goto LABEL_62;
          }

          if (HIBYTE(v96) != 4)
          {
            goto LABEL_235;
          }
        }

LABEL_165:
        if (v95 != 1701996919)
        {
          goto LABEL_235;
        }

LABEL_166:
        memset(&__str, 0, sizeof(__str));
        HIDWORD(v100) = 0;
        if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(&v97, &__str.__r_.__value_.__l.__data_, (&v100 + 4)) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v103, "source port description parse failed");
          AudioDSPGraph::ThrowException(1886548769, &v103, off_1E8336998);
        }

        memset(&v104, 0, sizeof(v104));
        LODWORD(v100) = 0;
        if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(&v97, &v104.__r_.__value_.__l.__data_, &v100) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v103, "destination port description parse failed.");
          AudioDSPGraph::ThrowException(1886548769, &v103, off_1E83369B0);
        }

        *&v107 = 0;
        *__p = 0u;
        v106 = 0u;
        DWORD2(v107) = 1;
        if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseFormat(&v97, __p))
        {
          v103 = __str;
          memset(&__str, 0, sizeof(__str));
          v102 = v104;
          memset(&v104, 0, sizeof(v104));
          (*(*a2 + 80))(a2, &v103, HIDWORD(v100), &v102, v100, __p, DWORD2(v107));
        }

        else
        {
          memset(&v103, 0, sizeof(v103));
          if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v97, &v103))
          {
            std::string::basic_string[abi:ne200100]<0>(&v102, "expected format in 'wire' command");
            AudioDSPGraph::ThrowException(1886548769, &v102, off_1E83369C8);
          }

          v102 = __str;
          memset(&__str, 0, sizeof(__str));
          v101 = v104;
          memset(&v104, 0, sizeof(v104));
          v99 = v103;
          memset(&v103, 0, sizeof(v103));
          (*(*a2 + 72))(a2, &v102, HIDWORD(v100), &v101, v100, &v99);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }

        goto LABEL_190;
      }

      v24 = *(&v95 + 1);
      if (*(&v95 + 1) > 4)
      {
        if (*(&v95 + 1) != 5)
        {
          if (*(&v95 + 1) == 6)
          {
            if (*v95 != 1886680431 || *(v95 + 4) != 29813)
            {
              goto LABEL_235;
            }

            goto LABEL_149;
          }

          goto LABEL_90;
        }

        if (*v95 == 1970302569 && *(v95 + 4) == 116)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (*(&v95 + 1) == 2)
        {
          v31 = *v95;
          goto LABEL_119;
        }

        if (*(&v95 + 1) == 3)
        {
          if (*v95 == 30063 && *(v95 + 2) == 116)
          {
            goto LABEL_149;
          }

          if ((v96 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v24 = *(&v95 + 1);
        }

LABEL_90:
        if (v24 != 5)
        {
LABEL_102:
          if (v24 == 9)
          {
            if (*v95 == 0x6574656D61726170 && *(v95 + 8) == 114)
            {
              goto LABEL_139;
            }

            if ((v96 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v96) > 8u)
              {
                goto LABEL_116;
              }

              if (HIBYTE(v96) == 3)
              {
                goto LABEL_62;
              }

              if (HIBYTE(v96) != 4)
              {
                goto LABEL_87;
              }

              goto LABEL_165;
            }
          }

          v35 = *(&v95 + 1);
          if (*(&v95 + 1) == 8)
          {
            if (*v95 == 0x79747265706F7270)
            {
              goto LABEL_160;
            }

            if ((v96 & 0x8000000000000000) == 0)
            {
              goto LABEL_115;
            }

            v35 = *(&v95 + 1);
          }

          if (v35 == 3)
          {
            if (*v95 == 28514 && *(v95 + 2) == 120)
            {
              goto LABEL_245;
            }

            if ((v96 & 0x8000000000000000) == 0)
            {
              goto LABEL_235;
            }
          }

          v65 = *(&v95 + 1);
          if (*(&v95 + 1) == 4)
          {
            if (*v95 == 1701996919)
            {
              goto LABEL_166;
            }

            if ((v96 & 0x8000000000000000) == 0)
            {
              goto LABEL_235;
            }

            v65 = *(&v95 + 1);
          }

          if (v65 == 9)
          {
            if (*v95 == 0x6172615065726977 && *(v95 + 8) == 109)
            {
              goto LABEL_132;
            }

            if ((v96 & 0x8000000000000000) == 0)
            {
              goto LABEL_235;
            }
          }

          v67 = *(&v95 + 1);
          if (*(&v95 + 1) == 13)
          {
            if (*v95 == 0x6172615065726977 && *(v95 + 5) == 0x726574656D617261)
            {
              goto LABEL_132;
            }

            if ((v96 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v96) != 12)
              {
                goto LABEL_235;
              }

LABEL_230:
              v69 = &v95;
LABEL_231:
              v70 = *v69;
              v71 = *(v69 + 2);
              if (v70 == 0x706F725065726977 && v71 == 2037674597)
              {
                AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWirePropertyCommand(a2, &v97);
                goto LABEL_288;
              }

              goto LABEL_235;
            }

            v67 = *(&v95 + 1);
          }

          if (v67 != 12)
          {
            goto LABEL_235;
          }

          v69 = v95;
          goto LABEL_231;
        }
      }

      if (*v95 == 1634886000 && *(v95 + 4) == 109)
      {
        goto LABEL_139;
      }

      v24 = *(&v95 + 1);
      goto LABEL_102;
    }

LABEL_290:
    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95);
    }

LABEL_292:
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v89 = *MEMORY[0x1E69E9840];
}

void sub_1C923A408(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t __dst, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t buf, __int128 a56, uint64_t (*a57)(uint64_t result, uint64_t a2), uint64_t a58, uint64_t a59)
{
  if (a2)
  {
    if (*(v60 - 153) < 0)
    {
      operator delete(*(v60 - 176));
    }

    if (a24 < 0)
    {
      operator delete(__p);
    }

    v63 = a2;
    if (SHIBYTE(a27) < 0)
    {
      operator delete(a25);
    }

    if (a34 < 0)
    {
      operator delete(a29);
    }

    v64 = __cxa_begin_catch(a1);
    Log = AudioDSPGraph::getLog(v64);
    v66 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
    if (v63 == 2)
    {
      if (v66)
      {
        v67 = v64 + 2;
        if (*(v64 + 39) < 0)
        {
          v67 = *v67;
        }

        v68 = *(v64 + 2);
        LODWORD(buf) = 67109634;
        HIDWORD(buf) = v59;
        LOWORD(a56) = 2080;
        *(&a56 + 2) = v67;
        WORD5(a56) = 1024;
        HIDWORD(a56) = v68;
        _os_log_error_impl(&dword_1C91AE000, Log, OS_LOG_TYPE_ERROR, "parsing exception at line %u (%s) (%d)", &buf, 0x18u);
      }

      __cxa_rethrow();
    }

    if (v66)
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v59;
      _os_log_error_impl(&dword_1C91AE000, Log, OS_LOG_TYPE_ERROR, "parsing exception at line %u", &buf, 8u);
    }

    a52 = 0;
    a53 = 6;
    a51 = v59;
    buf = &a59;
    a56 = xmmword_1C925F110;
    a57 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    a58 = 0;
    STACK[0x268] = &a59;
    a25 = 1;
    a26 = &a51;
    a27 = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&buf, "parsing exception at line {}", 28, &a25);
    std::string::basic_string<std::string_view,0>(&__dst, STACK[0x268], *(&a56 + 1));
    if (STACK[0x268] != &a59)
    {
      operator delete(STACK[0x268]);
    }

    AudioDSPGraph::ThrowException(1886548769, &__dst, off_1E83366F8);
  }

  _Unwind_Resume(a1);
}

void sub_1C923AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1C923ACA4);
}

void sub_1C923AC9C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1C923ACA4);
  }

  __clang_call_terminate(a1);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::checkUTF8Encoding(uint64_t this, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  LOBYTE(v2) = *this;
  if (*this)
  {
    v3 = 0;
    v4 = this + 1;
    v5 = MEMORY[0x1E69E9830];
    while ((v2 & 0x80) == 0)
    {
      v6 = *(v5 + 4 * v2 + 60);
      if ((v6 & 0x800) == 0)
      {
        this = v6 & 0x4000;
LABEL_8:
        if (v2 == 127 || !this)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (v2 == 127)
      {
        LOBYTE(v2) = 127;
LABEL_15:
        v10[0] = v2;
        v10[1] = 0;
        v10[3] = 0;
        v10[4] = 198;
        v10[2] = v3;
        v11 = v15;
        *__len = xmmword_1C925F110;
        v13 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v14 = 0;
        __p = v15;
        v9[0] = 2;
        v9[1] = v10;
        v9[2] = 198;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v11, "failed to parse unsupported UTF-8 character {} at offset {}", 59, v9);
        std::string::basic_string<std::string_view,0>(v8, __p, __len[1]);
        if (__p != v15)
        {
          operator delete(__p);
        }

        AudioDSPGraph::ThrowException(1886548769, v8, off_1E8336D40);
      }

LABEL_12:
      v2 = *(v4 + v3++);
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    this = __maskrune(v2, 0x800uLL);
    if (this)
    {
      goto LABEL_12;
    }

    this = __maskrune(v2, 0x4000uLL);
    goto LABEL_8;
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1C923AE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::def(void *a1, const void **a2)
{
  v2 = a1[1];
  if (a1[2] == v2)
  {
    goto LABEL_21;
  }

  v3 = a1[4];
  v4 = (v2 + 8 * (v3 >> 9));
  v5 = *v4;
  v6 = *v4 + 8 * (v3 & 0x1FF);
  v7 = *(v2 + (((a1[5] + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v3) & 0x1FF);
  if (v6 != v7)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *v6;
      v12 = *(*v6 + 31);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(*v6 + 16);
      }

      if (v12 == v9)
      {
        v16 = *(v11 + 8);
        v14 = v11 + 8;
        v15 = v16;
        v17 = (v13 >= 0 ? v14 : v15);
        if (!memcmp(v17, v10, v9))
        {
          break;
        }
      }

      v6 += 8;
      if (v6 - v5 == 4096)
      {
        v18 = v4[1];
        ++v4;
        v5 = v18;
        v6 = v18;
      }

      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_21:
    operator new();
  }

  return *v6;
}

void AudioDSPGraph::Language::V1::Preprocessor::~Preprocessor(AudioDSPGraph::Language::V1::Preprocessor *this)
{
  v2 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::~deque[abi:ne200100](this);
}

uint64_t std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 512;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::skipspace(AudioDSPGraph::Language::V1::Interpreters *this, const char **a2)
{
  v3 = *this;
  v4 = MEMORY[0x1E69E9830];
  do
  {
    v5 = *v3;
    if ((v5 & 0x80000000) != 0)
    {
      result = __maskrune(*v3, 0x4000uLL);
    }

    else
    {
      result = *(v4 + 4 * v5 + 60) & 0x4000;
    }

    v7 = v5 == 10 || result == 0;
    v8 = !v7;
    if (v7)
    {
      if (v5 != 59)
      {
        return result;
      }

      v3 = *this;
      do
      {
        v9 = *v3;
        if (!*v3)
        {
          break;
        }

        *this = ++v3;
      }

      while (v9 != 10);
    }

    else
    {
      v3 = (*this + 1);
      *this = v3;
    }
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(AudioDSPGraph::Language::V1::Interpreters *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a1, a2);
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = *a1;
  v5 = **a1;
  if ((v5 & 0x80000000) != 0)
  {
    v6 = __maskrune(v5, 0x100uLL);
    v4 = *a1;
    LOBYTE(v5) = **a1;
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x100;
  }

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 95;
  }

  v8 = v7;
  if (v7)
  {
    std::string::push_back(a2, v5);
    v11 = v4[1];
    v10 = v4 + 1;
    v9 = v11;
    if (!v11)
    {
LABEL_23:
      *a1 = v10;
      return v8;
    }

    v12 = MEMORY[0x1E69E9830];
    while (1)
    {
      v13 = v9;
      if (v9 < 0)
      {
        if (!__maskrune(v9, 0x500uLL))
        {
LABEL_21:
          if (!memchr("_-+=|./:!@#$%^&*<>?~", v13, 0x15uLL))
          {
            goto LABEL_23;
          }
        }
      }

      else if ((*(v12 + 4 * v9 + 60) & 0x500) == 0)
      {
        goto LABEL_21;
      }

      std::string::push_back(a2, v13);
      v14 = *++v10;
      v9 = v14;
      if (!v14)
      {
        goto LABEL_23;
      }
    }
  }

  return v8;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWirePropertyCommand(uint64_t a1, const char **a2)
{
  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(v10, a2);
  if ((v12 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "expected source endpoint in 'wireProperty' command");
    AudioDSPGraph::ThrowException(1886548769, v9, off_1E8336A10);
  }

  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(__p, a2);
  if ((v8 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5 + 1, "expected destination endpoint in 'wireProperty' command");
    AudioDSPGraph::ThrowException(1886548769, (v5 + 1), off_1E8336A28);
  }

  LOBYTE(v5[0]) = 0;
  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(a2, v5, v4);
  (*(*a1 + 160))(a1, v10, __p, LOBYTE(v5[0]));
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1C923B5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((*(v34 - 24) & 1) != 0 && *(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphParamCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this)
{
  LODWORD(v9) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v9, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "expected parameter ID in 'wireGraphParam' command");
    AudioDSPGraph::ThrowException(1886548769, v8, off_1E8336A40);
  }

  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(__p, this);
  if ((v7 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v4, "expected endpoint in 'wireGraphParam' command");
    AudioDSPGraph::ThrowException(1886548769, v4, off_1E8336A58);
  }

  (*(*a1 + 128))(a1, v9, __p);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C923B728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphPropertyCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this)
{
  LODWORD(v9) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v9, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "expected parameter ID in 'wireGraphProperty' command");
    AudioDSPGraph::ThrowException(1886548769, v8, off_1E8336A70);
  }

  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(__p, this);
  if ((v7 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v4, "expected endpoint in 'wireGraphProperty' command");
    AudioDSPGraph::ThrowException(1886548769, v4, off_1E8336A88);
  }

  (*(*a1 + 152))(a1, v9, __p);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C923B874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseOrderCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  memset(&v9, 0, sizeof(v9));
  memset(&v8, 0, sizeof(v8));
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v9) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "expected 'before' argument in 'order' command");
    AudioDSPGraph::ThrowException(1886548769, v7, off_1E8336AA0);
  }

  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v8) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "expected 'after' argument in 'order' command");
    AudioDSPGraph::ThrowException(1886548769, v6, off_1E8336AB8);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = v9;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  (*(*a1 + 168))(a1, &v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1C923BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (*(v34 - 17) < 0)
  {
    operator delete(*(v34 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseSetCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v29 = 0uLL;
  v30 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v29) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "expected name argument in 'set' command");
    AudioDSPGraph::ThrowException(1886548769, v28, off_1E8336AD0);
  }

  if (SHIBYTE(v30) < 0)
  {
    if (*(&v29 + 1) <= 17)
    {
      if (*(&v29 + 1) != 13)
      {
        if (*(&v29 + 1) == 14 && *v29 == 0x416D726F66726570 && *(v29 + 6) == 0x6E7552797244416DLL)
        {
LABEL_19:
          BYTE4(v25[0]) = 0;
          if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(a2, (v25 + 4), v4) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v27 + 4, "expected integer in 'set performADryRun' command");
            AudioDSPGraph::ThrowException(1886548769, (v27 + 4), off_1E8336AE8);
          }

          (*(*a1 + 32))(a1, BYTE4(v25[0]));
          goto LABEL_54;
        }

LABEL_42:
        std::operator+<char>();
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21, (v25 + 4), "' command");
        AudioDSPGraph::ThrowException(1886548769, &v21, off_1E8336B60);
      }

      if (*v29 != 0x7275446563696C73 || *(v29 + 5) != 0x6E6F697461727544)
      {
        goto LABEL_42;
      }

      goto LABEL_51;
    }

    if (*(&v29 + 1) != 18)
    {
      if (*(&v29 + 1) != 21)
      {
        goto LABEL_42;
      }

      v7 = v29;
      goto LABEL_27;
    }

    if (*v29 != 0x696C536465786966 || *(v29 + 8) != 0x6974617275446563 || *(v29 + 16) != 28271)
    {
      goto LABEL_42;
    }

LABEL_51:
    LODWORD(v27[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v27, v4) & 1) == 0)
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, (v25 + 4), "' command");
      AudioDSPGraph::ThrowException(1886548769, &v26, off_1E8336B00);
    }

    LODWORD(v25[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v25, v17) & 1) == 0)
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, (v25 + 4), "' command");
      AudioDSPGraph::ThrowException(1886548769, &v24, off_1E8336B18);
    }

    (*(*a1 + 40))(a1, LODWORD(v27[0]), LODWORD(v25[0]));
    goto LABEL_54;
  }

  if (HIBYTE(v30) <= 0x11u)
  {
    if (HIBYTE(v30) != 13)
    {
      if (HIBYTE(v30) != 14)
      {
        goto LABEL_42;
      }

      if (v29 != 0x416D726F66726570 || *(&v29 + 6) != 0x6E7552797244416DLL)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }

    if (v29 != 0x7275446563696C73 || *(&v29 + 5) != 0x6E6F697461727544)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

  if (HIBYTE(v30) == 18)
  {
    if (v29 != 0x696C536465786966 || *(&v29 + 1) != 0x6974617275446563 || v30 != 28271)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

  if (HIBYTE(v30) != 21)
  {
    goto LABEL_42;
  }

  v7 = &v29;
LABEL_27:
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 13);
  if (v8 != 0x656C626169726176 || v9 != 0x7275446563696C53 || v10 != 0x6E6F697461727544)
  {
    goto LABEL_42;
  }

  LODWORD(v27[0]) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v27, v4) & 1) == 0)
  {
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, (v25 + 4), "' command");
    AudioDSPGraph::ThrowException(1886548769, &v23, off_1E8336B30);
  }

  LODWORD(v25[0]) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v25, v13) & 1) == 0)
  {
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22, (v25 + 4), "' command");
    AudioDSPGraph::ThrowException(1886548769, &v22, off_1E8336B48);
  }

  (*(*a1 + 48))(a1, LODWORD(v27[0]), LODWORD(v25[0]));
LABEL_54:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_1C923BFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v46 - 33) < 0)
  {
    operator delete(*(v46 - 56));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBeginSubsetCommand(void *a1, uint64_t a2, AudioDSPGraph::Language::V1::Interpreters *a3)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a3, v20) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "expected name argument in 'beginSubset' command");
    AudioDSPGraph::ThrowException(1886548769, v19, off_1E8336B78);
  }

  v5 = a1[2];
  v6 = a1[3];
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 170 * ((v6 - v5) >> 3) - 1;
  }

  v8 = a1[5];
  if (v7 == a1[6] + v8)
  {
    v9 = v8 >= 0xAA;
    v10 = v8 - 170;
    if (!v9)
    {
      v11 = a1[4];
      v12 = a1[1];
      if (v6 - v5 < (v11 - v12))
      {
        if (v11 != v6)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = (v11 - v12) >> 2;
      }

      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v13);
    }

    a1[5] = v10;
    v22 = *v5;
    a1[2] = v5 + 8;
    std::__split_buffer<std::string *>::emplace_back<std::string *&>(a1 + 1, &v22);
    v5 = a1[2];
    v6 = a1[3];
  }

  if (v6 == v5)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[6] + a1[5];
    v15 = (*&v5[8 * (v14 / 0xAA)] - 4080 * (v14 / 0xAA) + 24 * v14);
  }

  if (SHIBYTE(v21) < 0)
  {
    std::string::__init_copy_ctor_external(v15, v20[0], v20[1]);
  }

  else
  {
    v16 = *v20;
    v15->__r_.__value_.__r.__words[2] = v21;
    *&v15->__r_.__value_.__l.__data_ = v16;
  }

  ++a1[6];
  *__p = *v20;
  v18 = v21;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  (*(*a2 + 96))(a2, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_1C923C6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  operator delete(v29);
  if (a11)
  {
    operator delete(a11);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseEndSubsetCommand(void *a1)
{
  v1 = a1[6];
  if (!v1)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "unexpected 'endSubset' command");
    AudioDSPGraph::ThrowException(1886548769, v9, off_1E8336B90);
  }

  v3 = v1 - 1;
  v4 = v1 - 1 + a1[5];
  v5 = a1[2];
  v6 = *(v5 + 8 * (v4 / 0xAA)) - 4080 * (v4 / 0xAA) + 24 * v4;
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
    v3 = a1[6] - 1;
    v5 = a1[2];
    v4 = v3 + a1[5];
  }

  v7 = a1[3];
  a1[6] = v3;
  if (v7 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 170 * ((v7 - v5) >> 3) - 1;
  }

  if (v8 - v4 >= 0x154)
  {
    operator delete(*(v7 - 8));
    a1[3] -= 8;
  }
}

void sub_1C923C818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseGraphNameCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v6 = 0uLL;
  v7 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "expected a string in 'graphName' command");
    AudioDSPGraph::ThrowException(1886548769, v5, off_1E8336BA8);
  }

  v4 = v7;
  *__p = v6;
  v7 = 0;
  v6 = 0uLL;
  (*(*a1 + 16))(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }
}

void sub_1C923C908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseComponentNameCommand(AudioDSPGraph::Language::V1::Interpreters *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a1, v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "expected a string in 'componentName' command");
    AudioDSPGraph::ThrowException(1886548769, v5, off_1E8336BC0);
  }

  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a1, __p) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v2, "expected a string in 'componentName' command");
    AudioDSPGraph::ThrowException(1886548769, v2, off_1E8336BD8);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1C923CA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseNamedFormatCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v11 = 0uLL;
  v12 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v11) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "named format : expected name.");
    AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336BF0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = 1;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseFormat(a2, v7) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "named format : expected format.");
    AudioDSPGraph::ThrowException(1886548769, v6, off_1E8336C08);
  }

  *__p = v11;
  v5 = v12;
  v12 = 0;
  v11 = 0uLL;
  (*(*a1 + 24))(a1, __p, v7, v9);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_1C923CBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 17) < 0)
  {
    operator delete(*(v20 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseJackCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v6 = 0uLL;
  v7 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "jack : expected name.");
    AudioDSPGraph::ThrowException(1886548769, v5, off_1E8336C20);
  }

  *__p = v6;
  v4 = v7;
  v7 = 0;
  v6 = 0uLL;
  (*(*a1 + 88))(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }
}

void sub_1C923CCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseRecordCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  memset(&__str, 0, sizeof(__str));
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &__str) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v41, "record : expected a file path.");
    AudioDSPGraph::ThrowException(1886548769, v41, off_1E8336C38);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (strchr(p_str, 37))
  {
    bzero(__s, 0x400uLL);
    v39.__r_.__value_.__r.__words[0] = 0;
    time(&v39);
    v5 = localtime(&v39);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__str;
    }

    else
    {
      v6 = __str.__r_.__value_.__r.__words[0];
    }

    if (!strftime(__s, 0x400uLL, v6, v5))
    {
      std::string::basic_string[abi:ne200100]<0>(v40, "record file path from date failed to format");
      AudioDSPGraph::ThrowException(1886548769, v40, off_1E8336C50);
    }

    v48 = 0;
    std::string::__assign_external(&__str, __s);
  }

  v7 = __s;
  std::string::basic_string[abi:ne200100]<0>(__s, "$TMPDIR/");
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__str;
  }

  else
  {
    v9 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((v47 & 0x80u) == 0)
  {
    v10 = v47;
  }

  else
  {
    v7 = *__s;
    v10 = v46;
  }

  if (v10)
  {
    if (size >= v10)
    {
      v11 = (v9 + size);
      v12 = *v7;
      v13 = v9;
      do
      {
        v14 = size - v10;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v13, v12, v14 + 1);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (!memcmp(v15, v7, v10))
        {
          if (v16 == v11 || v16 != v9)
          {
            break;
          }

          goto LABEL_29;
        }

        v13 = (&v16->__r_.__value_.__l.__data_ + 1);
        size = v11 - (&v16->__r_.__value_.__l.__data_ + 1);
      }

      while (size >= v10);
    }
  }

  else
  {
LABEL_29:
    v17 = getenv("TMPDIR");
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = "/tmp/";
    }

    v19 = strlen(v18);
    v20 = "/";
    if (v19 && v18[v19 - 1] == 47)
    {
      v20 = &byte_1C9279A7A;
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, v18);
    std::string::basic_string[abi:ne200100]<0>(__p, v20);
    if ((v37 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v22 = v37;
    }

    else
    {
      v22 = __p[1];
    }

    v23 = std::string::append(&v38, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if ((v47 & 0x80u) == 0)
    {
      v25 = v47;
    }

    else
    {
      v25 = v46;
    }

    std::string::basic_string(&v35, &__str, v25, 0xFFFFFFFFFFFFFFFFLL, &v43);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v35;
    }

    else
    {
      v26 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v35.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v39, v26, v27);
    v29 = v28->__r_.__value_.__r.__words[0];
    v44[0] = v28->__r_.__value_.__l.__size_;
    *(v44 + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
    v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = v29;
    __str.__r_.__value_.__l.__size_ = v44[0];
    *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v44 + 7);
    *(&__str.__r_.__value_.__s + 23) = v30;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  memset(&v39, 0, sizeof(v39));
  LODWORD(v38.__r_.__value_.__l.__data_) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(a2, &v39.__r_.__value_.__l.__data_, &v38.__r_.__value_.__l.__data_) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "record port description parse failed.");
    AudioDSPGraph::ThrowException(1886548769, v34, off_1E8336C68);
  }

  v33 = __str;
  memset(&__str, 0, sizeof(__str));
  v32 = v39;
  memset(&v39, 0, sizeof(v39));
  (*(*a1 + 200))(a1, &v33, &v32, LODWORD(v38.__r_.__value_.__l.__data_));
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1C923D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseInjectCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v14 = 0uLL;
  v15 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v14) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "inject : expected a file path.");
    AudioDSPGraph::ThrowException(1886548769, v13, off_1E8336C80);
  }

  v11 = 0uLL;
  v12 = 0;
  v10 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(a2, &v11, &v10) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v9 + 1, "inject port description parse failed.");
    AudioDSPGraph::ThrowException(1886548769, (v9 + 1), off_1E8336C98);
  }

  LOBYTE(v9[0]) = 0;
  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(a2, v9, v4);
  *v7 = v14;
  v8 = v15;
  v15 = 0;
  v14 = 0uLL;
  *__p = v11;
  v6 = v12;
  v11 = 0uLL;
  v12 = 0;
  (*(*a1 + 192))(a1, v7, __p, v10, LOBYTE(v9[0]));
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }
}

void sub_1C923D430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this)
{
  LODWORD(v11) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v11, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "expected 4cc ID in 'analysis' command");
    AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336CF8);
  }

  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  v7 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(this, v8, &v7) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "analysis port description parse failed.");
    AudioDSPGraph::ThrowException(1886548769, v6, off_1E8336D10);
  }

  *__p = *v8;
  v5 = v9;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  (*(*a1 + 184))(a1, v11, __p, v7);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_1C923D5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisDefineCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this)
{
  LODWORD(v13) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v13, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "expected 4cc ID in 'analysisDefine' command");
    AudioDSPGraph::ThrowException(1886548769, v12, off_1E8336CB0);
  }

  memset(&v11, 0, sizeof(v11));
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(this, &v11) & 1) == 0)
  {
    caulk::make_string("expected name in 'analysisDefine' command: %s", v10, *this);
    AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336CC8);
  }

  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseCompDesc(this, v8, v4))
  {
    caulk::make_string("expected class name or component description in 'analysisDefine' command: %s", v7, *this);
    AudioDSPGraph::ThrowException(1886548769, v7, off_1E8336CE0);
  }

  v5 = v13;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = v11;
  }

  (*(*a1 + 176))(a1, v5, &v6, v8);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1C923D7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 49) < 0)
  {
    operator delete(*(v32 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unsigned int *a3)
{
  v3 = a3;
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  if (v3)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E9830];
    while (1)
    {
      v8 = AudioDSPGraph::Language::V1::Interpreters::is4ccChar(*(*this + v6));
      v10 = *this;
      if (!v8)
      {
        break;
      }

      v11 = v10[v6];
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x100uLL);
      }

      else
      {
        v12 = *(v7 + 4 * v11 + 60) & 0x100;
      }

      ++v6;
      if (v12)
      {
        goto LABEL_15;
      }
    }

    v19 = 0;
    v20 = v10;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v20, &v19, v9))
    {
      v14 = v19;
      if (!HIDWORD(v19))
      {
        v15 = v20;
LABEL_20:
        *a2 = v14;
        *this = v15;
        return 1;
      }
    }
  }

  else
  {
    v13 = **this;
    if ((v13 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) != 0)
    {
      return 0;
    }
  }

LABEL_15:
  v14 = 0;
  v15 = *this;
  v16 = 4;
  while (1)
  {
    v17 = *v15;
    result = AudioDSPGraph::Language::V1::Interpreters::is4ccChar(*v15);
    if (!result)
    {
      return result;
    }

    ++v15;
    v14 = v17 | (v14 << 8);
    if (!--v16)
    {
      if ((AudioDSPGraph::Language::V1::Interpreters::is4ccChar(*v15) & 1) == 0)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(AudioDSPGraph::Language::V1::Interpreters *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a1, a2);
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(a1, a2) & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    v4 = *a1;
    if (**a1 != 34)
    {
      return 0;
    }

    for (i = *a1; ; v4 = i)
    {
      v7 = *++i;
      v6 = v7;
      if (v7 == 34)
      {
        break;
      }

      if (v6 == 10 || v6 == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v10, "unterminated string");
        AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336728);
      }

      std::string::push_back(a2, v6);
    }

    *a1 = v4 + 2;
  }

  return 1;
}

void sub_1C923DA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseCompDesc(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, AudioComponentDescription *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v12 = *this;
  AudioDSPGraph::Language::V1::Interpreters::skipspace(&v12, v5);
  v6 = *v12;
  if (v6 == 40)
  {
    ++v12;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v12, a2, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "expected component type or subtype");
      AudioDSPGraph::ThrowException(1886548769, v11, off_1E8336740);
    }

    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v12, (a2 + 4), 1) & 1) == 0)
    {
      v7 = *a2;
      *a2 = 1635083896;
      *(a2 + 1) = v7;
    }

    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v12, a2 + 1, 1) & 1) == 0)
    {
      *(a2 + 2) = 1634758764;
    }

    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v12, v8);
    if (*v12 != 41)
    {
      caulk::make_string("expected ')' at end of component description, got '%c'", v10, *v12);
      AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336758);
    }

    *this = v12 + 1;
  }

  return v6 == 40;
}

void sub_1C923DBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::is4ccChar(unsigned int this)
{
  if (this >= 0x80)
  {
    result = __maskrune(this, 0x40000uLL);
    if (!result)
    {
      return result;
    }

    if (!__maskrune(this, 0x4000uLL))
    {
      return memchr("()[]{};", this, 9uLL) == 0;
    }

    return 0;
  }

  v3 = *(MEMORY[0x1E69E9830] + 4 * this + 60);
  if ((v3 & 0x40000) == 0 || (v3 & 0x4000) != 0)
  {
    return 0;
  }

  return memchr("()[]{};", this, 9uLL) == 0;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unint64_t *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  __endptr = 0;
  v5 = strtoul(*this, &__endptr, 10);
  v6 = __endptr;
  if (__endptr == *this)
  {
    return 0;
  }

  v7 = v5;
  if (v5 == -1)
  {
    if (*__error())
    {
      return 0;
    }
  }

  *a2 = v7;
  *this = v6;
  return 1;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(_BYTE **a1, const char **a2, const char **a3)
{
  v11 = *a1;
  *a3 = 0;
  AudioDSPGraph::Language::V1::Interpreters::skipspace(&v11, a2);
  if (*v11 == 40)
  {
    ++v11;
    result = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v11, a2);
    if (!result)
    {
      return result;
    }

    AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(&v11, a3, v7);
    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v11, v8);
    if (*v11 != 41)
    {
      caulk::make_string("expected ')' at end of port description, got '%c'", v10, *v11);
      AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336980);
    }

    v9 = v11 + 1;
  }

  else
  {
    result = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v11, a2);
    if (!result)
    {
      return result;
    }

    v9 = v11;
  }

  *a1 = v9;
  return 1;
}

void sub_1C923DDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unsigned int *a3)
{
  v5 = *this;
  v7 = 0;
  v8 = v5;
  result = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v8, &v7, a3);
  if (result)
  {
    if (HIDWORD(v7))
    {
      return 0;
    }

    else
    {
      *a2 = v7;
      *this = v8;
      return 1;
    }
  }

  return result;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, BOOL *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v15 = *this;
  memset(&__p, 0, sizeof(__p));
  v17 = v15;
  *__val = 0;
  if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v17, __val, v5) && !__val[1])
  {
    v15 = v17;
    std::to_string(&__p, __val[0]);
LABEL_5:
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ != 1)
      {
        if (__p.__r_.__value_.__l.__size_ == 4)
        {
          if (*__p.__r_.__value_.__l.__data_ == 1702195828)
          {
            goto LABEL_33;
          }
        }

        else if (__p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1936482662 && *(__p.__r_.__value_.__r.__words[0] + 4) == 101)
        {
          goto LABEL_36;
        }

        v8 = 0;
LABEL_39:
        operator delete(v9);
        return v8;
      }

      if (*__p.__r_.__value_.__l.__data_ == 49)
      {
        goto LABEL_33;
      }

      v11 = *__p.__r_.__value_.__l.__data_;
    }

    else
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
        {
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 5)
          {
            return 0;
          }

          if (LODWORD(__p.__r_.__value_.__l.__data_) != 1936482662 || __p.__r_.__value_.__s.__data_[4] != 101)
          {
            return 0;
          }

          goto LABEL_36;
        }

        if (LODWORD(__p.__r_.__value_.__l.__data_) != 1702195828)
        {
          return 0;
        }

LABEL_33:
        v12 = 1;
        goto LABEL_37;
      }

      v11 = __p.__r_.__value_.__s.__data_[0];
      if (__p.__r_.__value_.__s.__data_[0] == 49)
      {
        goto LABEL_33;
      }
    }

    if (v11 == 48)
    {
LABEL_36:
      v12 = 0;
LABEL_37:
      *a2 = v12;
      *this = v15;
      v8 = 1;
      if ((v6 & 0x80) == 0)
      {
        return v8;
      }

      goto LABEL_38;
    }

    v8 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v8;
    }

LABEL_38:
    v9 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_39;
  }

  if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(&v15, &__p))
  {
    goto LABEL_5;
  }

  v8 = 0;
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_38;
  }

  return v8;
}

void sub_1C923E014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseFormat(AudioDSPGraph::Language::V1::Interpreters *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a1, a2);
  v4 = *a1;
  if (**a1 == 40)
  {
    v78 = v4 + 1;
    HIBYTE(v77) = 1;
    LODWORD(v77) = 0;
    if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v78, &v77, 0))
    {
      goto LABEL_17;
    }

    if (v77 == 1819304813)
    {
      v6 = 0;
      LODWORD(v77) = 0;
      goto LABEL_18;
    }

    if (v77 == 1718773105)
    {
      LODWORD(v77) = 0;
      v6 = 1;
    }

    else
    {
LABEL_17:
      v6 = 0;
    }

LABEL_18:
    v76.__r_.__value_.__r.__words[0] = v78;
    v79 = 0;
    if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v76, &v79, v5) || (v14 = v79, v79 >> 32) || (v78 = v76.__r_.__value_.__r.__words[0], !v79))
    {
      std::string::basic_string[abi:ne200100]<0>(&v76, "expected non-zero sample rate");
      AudioDSPGraph::ThrowException(1886548769, &v76, off_1E8336770);
    }

    v15 = v77;
    if (v77)
    {
      v79 = 0;
      if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v76, &v79, v13) || (v17 = v79, v79 >> 32) || (v78 = v76.__r_.__value_.__r.__words[0], !AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parserInterleavedFlag(&v78, (&v77 + 7), v16)) || (v76.__r_.__value_.__r.__words[0] = v78, v79 = 0, !AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v76, &v79, v18)) || (v20 = v79, v79 >> 32) || (v79 = 0, !AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v76, &v79, v19)) || (v22 = v79, v79 >> 32))
      {
        std::string::basic_string[abi:ne200100]<0>(&v76, "constant bit rate formats must have a block size and bytes per packet.");
        AudioDSPGraph::ThrowException(1718449215, &v76, off_1E8336788);
      }

      v78 = v76.__r_.__value_.__r.__words[0];
      goto LABEL_39;
    }

    v79 = 0;
    if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v76, &v79, v13) || (v17 = v79, v79 >> 32))
    {
      v22 = 0;
      v17 = 1;
    }

    else
    {
      v78 = v76.__r_.__value_.__r.__words[0];
      if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parserInterleavedFlag(&v78, (&v77 + 7), v24))
      {
        v76.__r_.__value_.__r.__words[0] = v78;
        v79 = 0;
        if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v76, &v79, v25) || (v20 = v79, v79 >> 32))
        {
          v20 = 1;
        }

        else
        {
          v78 = v76.__r_.__value_.__r.__words[0];
        }

        v22 = 0;
        goto LABEL_39;
      }

      v22 = 0;
    }

    v20 = 1;
LABEL_39:
    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v78, v21);
    if (*v78 != 41)
    {
      caulk::make_string("expected ')' at end of format, got '%c'", &v76, *v78);
      AudioDSPGraph::ThrowException(1886548769, &v76, off_1E83367A0);
    }

    if (v15)
    {
      if (HIBYTE(v77) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v76, "constant bit rate formats must be de-interleaved.");
        AudioDSPGraph::ThrowException(1718449215, &v76, off_1E83367B8);
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = v20;
    }

    else if (v6)
    {
      if (v20 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v76, "frequency domain formats must have a block size.");
        AudioDSPGraph::ThrowException(1718449215, &v76, off_1E83367D0);
      }

      if (HIBYTE(v77) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v76, "frequency domain formats must be de-interleaved.");
        AudioDSPGraph::ThrowException(1718449215, &v76, off_1E83367E8);
      }

      v15 = 1718773105;
      v28 = 64;
      v29 = 1;
      v22 = 8;
      v26 = 41;
      v27 = 8;
    }

    else
    {
      v15 = 1819304813;
      v29 = HIBYTE(v77);
      v28 = 32;
      if (HIBYTE(v77) == 1)
      {
        v22 = 4 * (v17 & 0x7FFFFFF);
        v26 = 9;
        v27 = v22;
      }

      else
      {
        v29 = 1;
        v22 = 4;
        v26 = 41;
        v27 = 4;
      }
    }

    v44 = v78 + 2;
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 12) = v26;
    *(a2 + 16) = v22;
    *(a2 + 20) = v29;
    *(a2 + 24) = v27;
    *(a2 + 28) = v17;
    *(a2 + 32) = v28;
    *(a2 + 40) = v20;
    *a1 = v44;
    return 1;
  }

  memset(&v76, 0, sizeof(v76));
  v7 = *v4;
  if (!*v4)
  {
    return 0;
  }

  v8 = MEMORY[0x1E69E9830];
  do
  {
    v9 = v7;
    if (v7 < 0)
    {
      v10 = __maskrune(v7, 0x500uLL);
    }

    else
    {
      v10 = *(v8 + 4 * v7 + 60) & 0x500;
    }

    if (!v10 && !memchr("-@/#,", v9, 6uLL))
    {
      break;
    }

    std::string::push_back(&v76, v9);
    v11 = *++v4;
    v7 = v11;
  }

  while (v11);
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v76.__r_.__value_.__s + 23))
    {
      v12 = &v76;
      goto LABEL_49;
    }

    return 0;
  }

  if (!v76.__r_.__value_.__l.__size_)
  {
    goto LABEL_158;
  }

  v12 = v76.__r_.__value_.__r.__words[0];
LABEL_49:
  if (v12->__r_.__value_.__s.__data_[0] == 45)
  {
    v30 = (&v12->__r_.__value_.__l.__data_ + 1);
  }

  else
  {
    v30 = v12;
  }

  v31 = v30->__r_.__value_.__s.__data_[0];
  if (v31 == 76)
  {
    v32 = v30->__r_.__value_.__s.__data_[1] == 69;
    v33 = 12;
LABEL_61:
    v34 = !v32;
    v35 = 2;
    if (v34)
    {
      v35 = 0;
    }

    v30 = (v30 + v35);
    v31 = v30->__r_.__value_.__s.__data_[0];
    goto LABEL_66;
  }

  if (v31 == 66)
  {
    v32 = v30->__r_.__value_.__s.__data_[1] == 69;
    if (v30->__r_.__value_.__s.__data_[1] == 69)
    {
      v33 = 14;
    }

    else
    {
      v33 = 12;
    }

    goto LABEL_61;
  }

  v33 = 12;
LABEL_66:
  switch(v31)
  {
    case 'U':
      v33 &= 0xAu;
      v36 = v30->__r_.__value_.__s.__data_[1];
      v30 = (v30 + 1);
      v31 = v36;
      break;
    case 'F':
      v33 = v33 & 0xFFFFFFFA | 1;
      goto LABEL_71;
    case 'I':
LABEL_71:
      v12 = (&v30->__r_.__value_.__l.__data_ + 1);
      if ((v30->__r_.__value_.__s.__data_[1] & 0x80000000) == 0)
      {
        v37 = v30->__r_.__value_.__s.__data_[1];
        if ((*(v8 + 4 * v30->__r_.__value_.__s.__data_[1] + 60) & 0x400) != 0)
        {
          v38 = 0;
          v12 = &v30->__r_.__value_.__s.__data_[2];
          do
          {
            v38 = v37 + 10 * v38 - 48;
            v45 = v12->__r_.__value_.__s.__data_[0];
            v37 = v12->__r_.__value_.__s.__data_[0];
            if (v45 < 0)
            {
              goto LABEL_95;
            }

            v12 = (v12 + 1);
          }

          while ((*(v8 + 4 * v45 + 60) & 0x400) != 0);
          v30 = (v12 - 2);
          v12 = (v12 - 1);
        }

        else
        {
          v38 = 0;
        }

        if (v37 != 46)
        {
          goto LABEL_95;
        }

        v48 = v30->__r_.__value_.__s.__data_[2];
        v46 = &v30->__r_.__value_.__s.__data_[2];
        v47 = v48;
        if ((v48 & 0x80000000) == 0 && (*(v8 + 4 * v47 + 60) & 0x400) != 0)
        {
          v49 = 0;
          v37 = v47;
          v12 = v46;
          do
          {
            if ((*(v8 + 4 * v37 + 60) & 0x400) == 0)
            {
              break;
            }

            v50 = v12->__r_.__value_.__s.__data_[1];
            v12 = (v12 + 1);
            v49 = v37 + 10 * v49 - 48;
            v37 = v50;
          }

          while ((v50 & 0x80000000) == 0);
          v38 += v49;
          v33 |= v49 << 7;
LABEL_95:
          v51 = 1819304813;
          v52 = (v38 + 7) >> 3;
          v53 = 0;
          v54 = 1;
          if ((v38 & 7) != 0)
          {
            v33 = v33 & 0xFFFFFFE7 | 0x10;
          }

          goto LABEL_105;
        }
      }

LABEL_158:
      v23 = 0;
      goto LABEL_159;
  }

  v39 = 0;
  LODWORD(v79) = 538976288;
  v40 = v12;
  while (1)
  {
    v42 = v40->__r_.__value_.__s.__data_[0];
    v40 = (v40 + 1);
    v41 = v42;
    if (v42 == 92)
    {
      if (v40->__r_.__value_.__s.__data_[0] != 120)
      {
        goto LABEL_158;
      }

      LODWORD(v78) = 0;
      if (sscanf(&v12->__r_.__value_.__s.__data_[2], "%02X", &v78) != 1)
      {
        goto LABEL_158;
      }

      *(&v79 + v39) = v78;
      v40 = (v12->__r_.__value_.__r.__words + 4);
      goto LABEL_80;
    }

    *(&v79 + v39) = v41;
    if (!v41)
    {
      break;
    }

LABEL_80:
    ++v39;
    v12 = v40;
    if (v39 == 4)
    {
      v43 = SBYTE3(v79);
      v12 = v40;
      goto LABEL_102;
    }
  }

  if (v39 != 3)
  {
    goto LABEL_158;
  }

  v43 = 32;
  BYTE3(v79) = 32;
LABEL_102:
  if (memchr("-@/#", v43, 5uLL))
  {
    BYTE3(v79) = 32;
    v12 = (v12 - 1);
  }

  v38 = 0;
  v54 = 0;
  v52 = 0;
  v33 = 0;
  v51 = bswap32(v79);
  v37 = v12->__r_.__value_.__s.__data_[0];
  v53 = 1;
LABEL_105:
  if (v37 != 64)
  {
    goto LABEL_158;
  }

  v55 = v12->__r_.__value_.__s.__data_[1];
  if (v55 < 0)
  {
    goto LABEL_158;
  }

  v56 = 0;
  v57 = &v12->__r_.__value_.__s.__data_[2];
  v58 = 0.0;
  while ((*(v8 + 4 * v55 + 60) & 0x400) != 0)
  {
    if ((v56 & 1) == 0)
    {
      v58 = 0.0;
    }

    v58 = (v55 - 48) + v58 * 10.0;
    v59 = *v57++;
    LOBYTE(v55) = v59;
    v56 = 1;
    if (v59 < 0)
    {
      --v57;
      goto LABEL_113;
    }
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_158;
  }

  if (v55 == 47)
  {
    v33 = 0;
    while (1)
    {
      v61 = *v57;
      if ((v61 - 48) >= 0xA)
      {
        v55 = *v57;
        if ((v55 - 65) >= 6)
        {
          if ((v55 - 97) > 5)
          {
            goto LABEL_128;
          }

          v62 = -87;
        }

        else
        {
          v62 = -55;
        }
      }

      else
      {
        v62 = -48;
      }

      v33 = (v62 + v61) | (16 * v33);
      ++v57;
    }
  }

  --v57;
LABEL_128:
  if (v55 != 35)
  {
    v63 = v55;
    v60 = v54;
    goto LABEL_135;
  }

  v64 = *++v57;
  v63 = v64;
  if (v64 < 0)
  {
LABEL_113:
    v60 = v54;
    goto LABEL_114;
  }

  v60 = v54;
  while ((*(v8 + 4 * v63 + 60) & 0x400) != 0)
  {
    v60 = 10 * v60 + v63 - 48;
    v65 = *++v57;
    v63 = v65;
    if (v65 < 0)
    {
      goto LABEL_114;
    }
  }

LABEL_135:
  if (v63 != 58)
  {
LABEL_139:
    if (v63 != 44)
    {
      goto LABEL_114;
    }

    v67 = v57 + 1;
    v68 = v57[1];
    if ((v57[1] & 0x80000000) == 0 && (*(v8 + 4 * v57[1] + 60) & 0x400) != 0)
    {
      v54 = 0;
      v71 = v57 + 2;
      do
      {
        v67 = v71;
        v54 = v68 + 10 * v54 - 48;
        v72 = *v71;
        v68 = v72;
        if (v72 < 0)
        {
          break;
        }

        v73 = *(v8 + 4 * v72 + 60);
        v71 = v67 + 1;
      }

      while ((v73 & 0x400) != 0);
      v57 = v67 - 1;
    }

    else
    {
      v54 = 0;
    }

    if (v68 == 73)
    {
      v67 = v57 + 2;
    }

    else if (v68 == 68)
    {
      if (v51 != 1819304813)
      {
        goto LABEL_158;
      }

      v57 += 2;
      v33 |= 0x20u;
      v51 = 1819304813;
      goto LABEL_115;
    }

    if (v51 == 1819304813)
    {
      v75 = v54;
    }

    else
    {
      v75 = 1;
    }

    v52 *= v75;
    v57 = v67;
    goto LABEL_115;
  }

  v66 = v57[1];
  if (v66 == 72)
  {
    v33 = v33 & 0xFFFFFFE7 | 0x10;
  }

  else
  {
    if (v66 != 76)
    {
      goto LABEL_158;
    }

    v33 &= 0xFFFFFFE7;
  }

  v69 = v57[2];
  v57 += 2;
  v63 = v69;
  if ((v69 & 0x80000000) == 0)
  {
    v52 = 0;
    while ((*(v8 + 4 * v63 + 60) & 0x400) != 0)
    {
      v70 = *++v57;
      v52 = 10 * v52 + v63 - 48;
      v63 = v70;
      if (v70 < 0)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_139;
  }

  v52 = 0;
LABEL_114:
  if (v53)
  {
    goto LABEL_158;
  }

LABEL_115:
  if (*v57)
  {
    goto LABEL_158;
  }

  *a2 = v58;
  *(a2 + 8) = v51;
  *(a2 + 12) = v33;
  *(a2 + 16) = v52;
  *(a2 + 20) = v60;
  *(a2 + 24) = v52;
  *(a2 + 28) = v54;
  *(a2 + 32) = v38;
  *(a2 + 36) = 0x100000000;
  *a1 = v4;
  v23 = 1;
LABEL_159:
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_1C923E9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parserInterleavedFlag(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, BOOL *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v5 = *this;
  v6 = **this;
  if (**this)
  {
    if (**this > 0x63u)
    {
      if (v6 != 100)
      {
        if (v6 != 105)
        {
          goto LABEL_5;
        }

LABEL_8:
        *a2 = 1;
LABEL_10:
        *this = v5 + 1;
        return v6 != 0;
      }
    }

    else if (v6 != 68)
    {
      if (v6 != 73)
      {
LABEL_5:
        *a2 = 0;
        return v6 != 0;
      }

      goto LABEL_8;
    }

    *a2 = 0;
    goto LABEL_10;
  }

  return v6 != 0;
}

void *std::__split_buffer<std::string *>::emplace_back<std::string *&>(void *result, void *a2)
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

      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v11);
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

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a2, a2);
  v19 = *a2;
  result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v19, v4);
  if (*v19 == 40)
  {
    ++v19;
    v17 = 0;
    v18 = 0uLL;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v19, &v17) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v16 + 4, "expected box name for property endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v16 + 4), off_1E8336848);
    }

    LODWORD(v16[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v19, v16, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v15 + 4, "expected property ID for property endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v15 + 4), off_1E8336860);
    }

    LODWORD(v15[0]) = 0;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseScope(&v19, v15, v6) && (v20 = 0, v21 = v19, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v21, &v20, v8)) && (v9 = v20, !(v20 >> 32)))
    {
      v19 = v21;
    }

    else
    {
      v9 = 0;
    }

    result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v19, v7);
    if (*v19 != 41)
    {
      caulk::make_string("expected ')' at end of property endpoint, got '%c'", v14, *v19);
      AudioDSPGraph::ThrowException(1886548769, v14, off_1E8336878);
    }

    *a2 = v19 + 1;
    v10 = HIBYTE(v18);
    v11 = v16[0];
    v12 = v15[0];
    v13 = v18;
    *this = v17;
    *(this + 1) = v13;
    *(this + 15) = *(&v18 + 7);
    *(this + 23) = v10;
    *(this + 6) = v11;
    *(this + 7) = v12;
    *(this + 8) = v9;
    *(this + 40) = 1;
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

void sub_1C923ED58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseScope(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unsigned int *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v26 = *this;
  v27 = 0;
  __p = v26;
  if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__p, &v27, v5) || v27 >> 32)
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
    v8 = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(&v26, &__p);
    v9 = HIBYTE(v25);
    if ((v8 & 1) == 0)
    {
      goto LABEL_74;
    }

    if (v25 < 0)
    {
      if (v24 > 4)
      {
        if (v24 == 5)
        {
          if (*__p == 1970302569 && *(__p + 4) == 116)
          {
            goto LABEL_81;
          }
        }

        else if (v24 == 6 && *__p == 1886680431 && *(__p + 2) == 29813)
        {
          goto LABEL_43;
        }
      }

      else if (v24 == 2)
      {
        if (*__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else if (v24 == 3)
      {
        if (*__p == 30063 && *(__p + 2) == 116)
        {
          goto LABEL_43;
        }

        if ((v25 & 0x8000000000000000) == 0)
        {
          return 0;
        }
      }

      if (v24 == 6 && *__p == 1651469415 && *(__p + 2) == 27745)
      {
LABEL_83:
        v15 = 0;
        goto LABEL_85;
      }

      if (v24 != 5)
      {
        goto LABEL_71;
      }

      if (*__p == 1970238055 && *(__p + 4) == 112)
      {
LABEL_84:
        v15 = 3;
LABEL_85:
        *a2 = v15;
        *this = v26;
        v7 = 1;
        if ((v9 & 0x80) == 0)
        {
          return v7;
        }

        goto LABEL_88;
      }

      if (v25 < 0)
      {
LABEL_71:
        if (v24 != 4)
        {
          v7 = 0;
          goto LABEL_88;
        }

        p_p = __p;
LABEL_73:
        if (*p_p == 1953653104)
        {
          v15 = 4;
          goto LABEL_85;
        }

LABEL_74:
        v7 = 0;
        if ((v25 & 0x8000000000000000) == 0)
        {
          return v7;
        }

LABEL_88:
        operator delete(__p);
        return v7;
      }

      if (HIBYTE(v25) == 4)
      {
LABEL_69:
        p_p = &__p;
        goto LABEL_73;
      }
    }

    else
    {
      v7 = 0;
      if (HIBYTE(v25) > 3u)
      {
        if (HIBYTE(v25) != 4)
        {
          if (HIBYTE(v25) != 5)
          {
            if (HIBYTE(v25) != 6)
            {
              return v7;
            }

            if (__p != 1886680431 || WORD2(__p) != 29813)
            {
              if (__p != 1651469415 || WORD2(__p) != 27745)
              {
                return 0;
              }

              goto LABEL_83;
            }

LABEL_43:
            v15 = 2;
            goto LABEL_85;
          }

          if (__p != 1970302569 || BYTE4(__p) != 116)
          {
            if (__p != 1970238055 || BYTE4(__p) != 112)
            {
              return 0;
            }

            goto LABEL_84;
          }

LABEL_81:
          v15 = 1;
          goto LABEL_85;
        }

        goto LABEL_69;
      }

      if (HIBYTE(v25) == 2)
      {
        if (__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (HIBYTE(v25) != 3)
        {
          return v7;
        }

        if (__p == 30063 && BYTE2(__p) == 116)
        {
          goto LABEL_43;
        }
      }
    }

    return 0;
  }

  v6 = __p;
  *a2 = v27;
  *this = v6;
  return 1;
}

void sub_1C923F100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a2, a2);
  v19 = *a2;
  result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v19, v4);
  if (*v19 == 40)
  {
    ++v19;
    v17 = 0;
    v18 = 0uLL;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v19, &v17) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v16 + 4, "expected box name for parameter endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v16 + 4), off_1E8336800);
    }

    LODWORD(v16[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v19, v16, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v15 + 4, "expected parameter ID for parameter endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v15 + 4), off_1E8336818);
    }

    LODWORD(v15[0]) = 0;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseScope(&v19, v15, v6) && (v20 = 0, v21 = v19, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v21, &v20, v8)) && (v9 = v20, !(v20 >> 32)))
    {
      v19 = v21;
    }

    else
    {
      v9 = 0;
    }

    result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v19, v7);
    if (*v19 != 41)
    {
      caulk::make_string("expected ')' at end of param endpoint, got '%c'", v14, *v19);
      AudioDSPGraph::ThrowException(1886548769, v14, off_1E8336830);
    }

    *a2 = v19 + 1;
    v10 = HIBYTE(v18);
    v11 = v16[0];
    v12 = v15[0];
    v13 = v18;
    *this = v17;
    *(this + 1) = v13;
    *(this + 15) = *(&v18 + 7);
    *(this + 23) = v10;
    *(this + 6) = v11;
    *(this + 7) = v12;
    *(this + 8) = v9;
    *(this + 40) = 1;
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

void sub_1C923F2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, const char *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v5 = strlen(a2);
  v6 = *this;
  v7 = strncmp(*this, a2, v5);
  if (!v7)
  {
    *this = v6 + v5;
  }

  return v7 == 0;
}

uint64_t AudioDSPGraph::Language::V1::StringSubMacro::StringSubMacro(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_1F48D2368;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F48D2398;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v7;
  }

  *(a1 + 80) = 0;
  return a1;
}

const void **std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::__add_front_capacity(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v1 - v2) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = v7 - *a1;
    if (v3 < v8)
    {
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

    std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v9);
  }

  *(a1 + 32) = v5 + 512;
  v10 = *(v1 - 8);
  *(a1 + 16) = v1 - 8;
  return std::__split_buffer<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::allocator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *>>::emplace_front<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *&>(a1, &v10);
}

void sub_1C923F91C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::allocator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *>>::emplace_front<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *&>(const void **result, void *a2)
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

      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v9);
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::~LegacyInterpreter(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this)
{
  *this = &unk_1F48D17F0;
  std::deque<std::string>::~deque[abi:ne200100](this + 8);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D17F0;
  std::deque<std::string>::~deque[abi:ne200100](this + 8);
}

uint64_t AudioDSPGraph::Boxes::MantissaRandomizerBox::initialize(AudioDSPGraph::Boxes::MantissaRandomizerBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v7 = (this + 40);
    if (*(this + 63) < 0)
    {
      v7 = *v7;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v12, v7, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v12, off_1E8337C60);
  }

  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v8 = (this + 40);
    if (*(this + 63) < 0)
    {
      v8 = *v8;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v12, v8, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v12, off_1E8337C78);
  }

  v5 = *(*(v3 + 16) + 120);
  v6 = *(*(v4 + 16) + 120);
  if (*(v5 + 28) != *(v6 + 28))
  {
    v9 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v10 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("input and output must have the same channel count, but have %u and %u", v11, v9, *(*(*(v10 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v11, off_1E8336DA0);
  }

  if (*(v5 + 8) != 1819304813 || *(v6 + 8) != 1819304813)
  {
    operator new();
  }

  return result;
}

void sub_1C923FD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t AudioDSPGraph::Boxes::MantissaRandomizerBox::process(AudioDSPGraph::Boxes::MantissaRandomizerBox *this, unsigned int a2, int8x16_t result)
{
  v4 = atomic_load(this + 192);
  v5 = atomic_load(this + 764);
  if ((v5 & 1) != 0 || !v4)
  {
    v25 = *(this + 9);
    if (*(this + 10) == v25)
    {
      v38 = (this + 40);
      if (*(this + 63) < 0)
      {
        v38 = *v38;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v41, v38, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v41, off_1E8337C60);
    }

    v26 = *(this + 12);
    if (*(this + 13) == v26)
    {
      v39 = (this + 40);
      if (*(this + 63) < 0)
      {
        v39 = *v39;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v41, v39, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v41, off_1E8337C78);
    }

    AudioDSPGraph::SimpleABL::copy((*(*(v25 + 16) + 56) + 80), *(*(*(v26 + 16) + 56) + 80));
  }

  else
  {
    v6 = (v4 + 3) & 0xFFFFFFFC;
    result.i32[0] = v4 - 1;
    v7 = xmmword_1C925F420;
    v8 = 0uLL;
    v9.i64[0] = 0x100000001;
    v9.i64[1] = 0x100000001;
    v10.i64[0] = 0x400000004;
    v10.i64[1] = 0x400000004;
    do
    {
      v11 = v7;
      v12 = v8;
      v8 = vorrq_s8(v8, vshlq_u32(v9, v7));
      v7 = vaddq_s32(v7, v10);
      v6 -= 4;
    }

    while (v6);
    v13 = *(this + 12);
    if (*(this + 13) == v13)
    {
      v37 = (this + 40);
      if (*(this + 63) < 0)
      {
        v37 = *v37;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v41, v37, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v41, off_1E8337C78);
    }

    v14 = **(*(*(v13 + 16) + 56) + 80);
    if (v14)
    {
      v15 = 0;
      result = vbslq_s8(vcgtq_u32(v11, vdupq_lane_s32(*result.i8, 0)), v12, v8);
      *result.i8 = vorr_s8(*result.i8, *&vextq_s8(result, result, 8uLL));
      v16 = result.i32[0] | result.i32[1];
      v17 = ~(result.i32[0] | result.i32[1]);
      v18 = 4 * a2;
      do
      {
        v19 = *(this + 9);
        if (*(this + 10) == v19)
        {
          v34 = (this + 40);
          if (*(this + 63) < 0)
          {
            v34 = *v34;
          }

          caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v41, v34, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, v41, off_1E8337C60);
        }

        v20 = *(this + 12);
        if (*(this + 13) == v20)
        {
          v35 = (this + 40);
          if (*(this + 63) < 0)
          {
            v35 = *v35;
          }

          caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v41, v35, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, v41, off_1E8337C78);
        }

        if (a2)
        {
          v21 = *(*(*(*(v19 + 16) + 56) + 80) + 16 * v15 + 16);
          v22 = *(*(*(*(v20 + 16) + 56) + 80) + 16 * v15 + 16);
          v23 = v18;
          do
          {
            v24 = *v21++;
            LODWORD(v41[0]) = 0;
            HIDWORD(v41[0]) = v16;
            *v22++ = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((this + 776), v41) | v24 & v17;
            v23 -= 4;
          }

          while (v23);
        }

        ++v15;
      }

      while (v15 != v14);
    }
  }

  v27 = *(this + 9);
  if (*(this + 10) == v27)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v41, v36, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v41, off_1E8337C60);
  }

  v28 = *(this + 12);
  v29 = *(this + 13);
  if (v28 != v29)
  {
    v30 = *(*(v27 + 16) + 56);
    do
    {
      v31 = *(*(v28 + 16) + 56);
      result = *(v30 + 8);
      v32 = *(v30 + 24);
      v33 = *(v30 + 40);
      *(v31 + 56) = *(v30 + 56);
      *(v31 + 40) = v33;
      *(v31 + 24) = v32;
      *(v31 + 8) = result;
      *(v31 + 72) = 0;
      v28 += 32;
    }

    while (v28 != v29);
  }

  return result;
}

void sub_1C924018C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::MantissaRandomizerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.62656313e219;
  *a1 = xmmword_1C925F350;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::MantissaRandomizerBox::getParameterInfo(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = -10866;
  }

  else
  {
    if (!a2)
    {
      memset(v6, 0, sizeof(v6));
      strcpy(a3, "bits to randomize");
      *(a3 + 18) = unk_1C925F7D6;
      *(a3 + 20) = unk_1C925F7D8;
      *(a3 + 24) = unk_1C925F7DC;
      *(a3 + 32) = xmmword_1C925F7E4;
      *(a3 + 48) = *v6;
      *(a3 + 64) = 0 >> 96;
      *(a3 + 72) = @"bits to randomize";
      *(a3 + 80) = 1;
      *(a3 + 84) = 0x41B8000000000000;
      *(a3 + 92) = 0;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      goto LABEL_6;
    }

    v4 = -10878;
  }

  *a3 = v4;
  *(a3 + 104) = 0;
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::MantissaRandomizerBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  if (!a1)
  {
    v6[0] = v3;
    v6[1] = v4;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v5, v6, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

float AudioDSPGraph::Boxes::MantissaRandomizerBox::getParameter@<S0>(AudioDSPGraph::Boxes::MantissaRandomizerBox *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v4 = off_1E8336D58;
  }

  else
  {
    if (!a2)
    {
      v6 = atomic_load(this + 192);
      result = v6;
      *a4 = v6;
      *(a4 + 32) = 1;
      return result;
    }

    LODWORD(v7) = -10878;
    v4 = off_1E8334BA8;
  }

  *(&v7 + 1) = v4;
  v8 = 0;
  *a4 = v7;
  *(a4 + 16) = 0;
  v9 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
  return result;
}

void AudioDSPGraph::Boxes::MantissaRandomizerBox::setParameter(AudioDSPGraph::Boxes::MantissaRandomizerBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v10) = -10866;
    v6 = off_1E8336D70;
LABEL_7:
    *(&v10 + 1) = v6;
    v11 = 0;
    *a6 = v10;
    *(a6 + 16) = 0;
    v12 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v10);
    return;
  }

  if (a5)
  {
    LODWORD(v10) = -10877;
    v6 = off_1E8336D88;
    goto LABEL_7;
  }

  if (a3)
  {
    LODWORD(v10) = -10878;
    v6 = off_1E8334BC0;
    goto LABEL_7;
  }

  v7 = llroundf(a2);
  v8 = 23;
  if (v7 < 0x17)
  {
    v8 = v7;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  atomic_store(v9, this + 192);
  *(a6 + 32) = 1;
}

void AudioDSPGraph::Boxes::MantissaRandomizerBox::~MantissaRandomizerBox(AudioDSPGraph::Boxes::MantissaRandomizerBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "inSecondsPerWindow is out of range (<= 0.0)");
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

uint64_t AudioDSPGraph::Metrics::Metrics(uint64_t this, double a2)
{
  v2 = (a2 * 24000000.0);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  *this = v2;
  *(this + 192) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 256) = 1;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 384) = 1;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  if (a2 <= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception);
  }

  return this;
}

int8x16_t AudioDSPGraph::Metrics::start(AudioDSPGraph::Metrics *this)
{
  if (!*(this + 1))
  {
    *(this + 1) = mach_absolute_time();
  }

  thread_selfcounts();
  *(this + 2) = 0;
  result = vextq_s8(0, 0, 8uLL);
  *(this + 24) = result;
  return result;
}

uint64_t AudioDSPGraph::Metrics::stop(AudioDSPGraph::Metrics *this, unsigned int a2)
{
  result = mach_absolute_time();
  v5 = result;
  if (*(this + 3))
  {
    result = thread_selfcounts();
    v6 = v5 - *(this + 1);
    v7 = -*(this + 2);
    v8 = v7 / v6 * 100.0;
    v28 = *(this + 6) - *(this + 2);
    v29 = v5;
    *(this + 6) = v28;
    v9 = vsubq_s64(vextq_s8(0, 0, 8uLL), *(this + 24));
    v27 = vaddq_s64(*(this + 56), v9);
    *(this + 56) = v27;
    v10 = *(this + 9) + v6;
    *(this + 9) = v10;
    v11 = *(this + 10);
    if (v8 <= v11)
    {
      v12 = *(this + 13);
    }

    else
    {
      *(this + 10) = v8;
      v12 = *(this + 13);
      *(this + 11) = v12;
      v11 = v7 / v6 * 100.0;
    }

    v13 = *(this + 12) + a2;
    v14 = *(this + 14);
    v15 = *(this + 15) + v7;
    v16 = *(this + 18) + v6;
    v17 = *(this + 5) + 1;
    *(this + 5) = v17;
    v18 = vaddq_s64(*(this + 8), v9);
    *(this + 8) = v18;
    *(this + 18) = v16;
    v19 = v14 + a2;
    *(this + 14) = v19;
    *(this + 15) = v15;
    v20 = v12 + 1;
    *(this + 12) = v13;
    *(this + 13) = v12 + 1;
    v21 = *this;
    if (v10 > *this || v16 < v21)
    {
      v26 = v18;
      v25 = *(this + 11);
      for (i = 0; ; result = caulk::concurrent::details::spinloop::spin(&i))
      {
        v22 = atomic_load(this + 48);
        if ((v22 & 1) == 0)
        {
          v23 = v22;
          atomic_compare_exchange_strong(this + 48, &v23, v22 | 1);
          if (v23 == v22)
          {
            break;
          }
        }
      }

      v24 = (this + 128 * ((v22 >> 2) & 1));
      atomic_store((2 * ((v22 >> 2) & 0x3FFFFFFF)) | 1, &v24[16]);
      v24[16].i64[1] = v17;
      v24[17].i64[0] = v13;
      v24[17].i64[1] = v28;
      v24[18] = v27;
      v24[19].i64[0] = v10;
      *&v24[19].i64[1] = v11;
      v24[20].i64[0] = v25;
      v24[20].i64[1] = v20;
      v24[21].i64[0] = v19;
      v24[21].i64[1] = v15;
      v24[22] = v26;
      v24[23].i64[0] = v16;
      __dmb(0xBu);
      atomic_store(2 * (v22 >> 2), &v24[16]);
      atomic_store(((v22 & 0xFFFFFFFC) + 5) & 0xFFFFFFFC | 2, this + 48);
      if (v10 > v21)
      {
        *(this + 72) = 0u;
        *(this + 88) = 0u;
        *(this + 40) = 0u;
        *(this + 56) = 0u;
      }
    }

    v5 = v29;
  }

  *(this + 1) = v5;
  return result;
}

uint64_t caulk::concurrent::details::spinloop::spin(uint64_t this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 == 100)
  {
    v2 = this;
    this = sched_yield();
    *v2 = 0;
  }

  return this;
}

double AudioDSPGraph::Metrics::getStatistics(AudioDSPGraph::Metrics *this, uint64_t a2)
{
  v13 = 0;
  v3 = atomic_load((a2 + 192));
  if ((v3 & 2) != 0)
  {
    v5 = a2 + 256;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = v5 + (((v3 & 4) == 0) << 7);
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = v5 + (v6 << 7), explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 56);
        v10 = *(v7 + 88);
        *(this + 4) = *(v7 + 72);
        *(this + 5) = v10;
        *(this + 6) = *(v7 + 104);
        v11 = *(v7 + 24);
        *this = *(v7 + 8);
        *(this + 1) = v11;
        *(this + 2) = *(v7 + 40);
        *(this + 3) = v9;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v13);
      v3 = atomic_load((a2 + 192));
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *&v9 = 0;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  return *&v9;
}

void *AudioDSPGraph::Boxes::MixBox::reset(void *this)
{
  v1 = this;
  v2 = this[96];
  v3 = this[97];
  v4 = v3 - v2;
  v5 = this[101];
  v6 = this[99];
  if (v5 - v6 < (v3 - v2))
  {
    v7 = this + 99;
    v8 = v4 >> 2;
    if (v6)
    {
      this[100] = v6;
      operator delete(v6);
      v5 = 0;
      *v7 = 0;
      v1[100] = 0;
      v1[101] = 0;
    }

    if (!(v8 >> 62))
    {
      v9 = v5 >> 1;
      if (v5 >> 1 <= v8)
      {
        v9 = v4 >> 2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:ne200100]((v1 + 99), v10);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  v11 = this[100];
  v12 = v11 - v6;
  if (v11 - v6 >= v4)
  {
    if (v3 != v2)
    {
      this = memmove(v6, v2, v3 - v2);
    }

    v15 = &v6[v4];
  }

  else
  {
    if (v11 != v6)
    {
      this = memmove(this[99], v2, v11 - v6);
      v11 = v1[100];
    }

    v13 = &v2[v12];
    v14 = v3 - &v2[v12];
    if (v14)
    {
      this = memmove(v11, v13, v14);
    }

    v15 = &v11[v14];
  }

  v1[100] = v15;
  return this;
}

uint64_t AudioDSPGraph::Boxes::MixBox::initialize(AudioDSPGraph::Boxes::MixBox *this)
{
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "MixBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v13, off_1E8336DD0);
  }

  result = AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v9 = (this + 40);
    if (*(this + 63) < 0)
    {
      v9 = *v9;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v14, v9, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v14, off_1E8337C78);
  }

  v4 = *(*(v3 + 16) + 120);
  if (v4[2] != 1819304813 || (v4[3] & 1) == 0 || (v4[8] == 32 ? (v5 = (v4[3] & 0x20) == 0) : (v5 = 1), v5))
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "MixBox output format must be non-interleaved float");
    AudioDSPGraph::ThrowException(1718449215, v12, off_1E8336DE8);
  }

  for (i = *(this + 9); i != *(this + 10); i += 32)
  {
    v7 = *(*(i + 16) + 120);
    if (v7[2] != 1819304813 || (v7[3] & 1) == 0 || (v7[8] == 32 ? (v8 = (v7[3] & 0x20) == 0) : (v8 = 1), v8))
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "MixBox input format must be non-interleaved float");
      AudioDSPGraph::ThrowException(1718449215, v11, off_1E8336E00);
    }

    if (v7[7] != v4[7])
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "MixBox channel mismatch");
      AudioDSPGraph::ThrowException(1718449215, v10, off_1E8336E18);
    }
  }

  return result;
}

void sub_1C9240C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::MixBox::process(AudioDSPGraph::Boxes::MixBox *this, vDSP_Length __N)
{
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v53, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v53, off_1E8337C78);
  }

  v4 = *(*(*(v3 + 16) + 56) + 80);
  v5 = *v4;
  v6 = (4 * __N);
  v7 = *(this + 9);
  v8 = *(this + 10);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) == 0)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = __N;
  v12 = 1;
  v13 = __N;
  do
  {
    if (v9 >> 5 <= v10)
    {
      v48 = (this + 40);
      if (*(this + 63) < 0)
      {
        v48 = *v48;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v53, v48, v9 >> 5, v10);
      AudioDSPGraph::ThrowException(1919837985, v53, off_1E8337C60);
    }

    v14 = *(*(v7 + 32 * v10 + 16) + 56);
    v15 = *(v14 + 80);
    v16 = *(*(this + 96) + 4 * v10);
    *v53 = v16;
    v17 = *(*(this + 99) + 4 * v10);
    __Start = v17;
    if ((*(v14 + 72) & 0x10) == 0 && v16 != 0.0)
    {
      if (v12)
      {
        if (v16 == v17)
        {
          if (v5)
          {
            v18 = (v15 + 16);
            v19 = v4 + 4;
            v20 = v5;
            do
            {
              v21 = *v18;
              v18 += 2;
              v22 = *v19;
              *(v19 - 1) = v6;
              MEMORY[0x1CCA853E0](v21, 1, v53, v22, 1, v13);
              v19 += 2;
              --v20;
            }

            while (v20);
          }
        }

        else
        {
          __Step = (v16 - v17) / v11;
          if (v5)
          {
            v28 = (v15 + 16);
            v29 = (v4 + 4);
            v30 = v5;
            do
            {
              v31 = *v28;
              v28 += 2;
              v32 = *v29;
              *(v29 - 1) = v6;
              vDSP_vrampmul(v31, 1, &__Start, &__Step, v32, 1, v13);
              v29 += 2;
              --v30;
            }

            while (v30);
          }
        }
      }

      else if (v16 == v17)
      {
        if (v5)
        {
          v23 = (v15 + 16);
          v24 = v4 + 4;
          v25 = v5;
          do
          {
            v26 = *v23;
            v23 += 2;
            v27 = *v24;
            *(v24 - 1) = v6;
            MEMORY[0x1CCA853D0](v26, 1, v53, v27, 1, v27, 1, v13);
            v24 += 2;
            --v25;
          }

          while (v25);
        }
      }

      else
      {
        __Step = (v16 - v17) / v11;
        if (v5)
        {
          v33 = (v15 + 16);
          v34 = (v4 + 4);
          v35 = v5;
          do
          {
            v36 = *v33;
            v33 += 2;
            v37 = *v34;
            *(v34 - 1) = v6;
            vDSP_vrampmuladd(v36, 1, &__Start, &__Step, v37, 1, v13);
            v34 += 2;
            --v35;
          }

          while (v35);
        }
      }

      v12 = 0;
    }

    *(*(this + 99) + 4 * v10++) = v53[0];
    v7 = *(this + 9);
    v8 = *(this + 10);
    v9 = v8 - v7;
  }

  while (v10 < ((v8 - v7) >> 5));
  if ((v12 & 1) == 0)
  {
    v40 = 0;
  }

  else
  {
LABEL_28:
    if (v5)
    {
      v38 = (v4 + 4);
      do
      {
        v39 = *v38;
        *(v38 - 1) = v6;
        bzero(v39, v6);
        v38 += 2;
        --v5;
      }

      while (v5);
      v7 = *(this + 9);
      v8 = *(this + 10);
    }

    v40 = 16;
  }

  if (v8 == v7)
  {
    v50 = (this + 40);
    if (*(this + 63) < 0)
    {
      v50 = *v50;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v53, v50, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v53, off_1E8337C60);
  }

  v41 = *(this + 12);
  v42 = *(this + 13);
  if (v41 != v42)
  {
    v43 = *(*(v7 + 16) + 56);
    do
    {
      v44 = *(*(v41 + 16) + 56);
      v45 = *(v43 + 8);
      v46 = *(v43 + 24);
      v47 = *(v43 + 40);
      *(v44 + 56) = *(v43 + 56);
      *(v44 + 40) = v47;
      *(v44 + 24) = v46;
      *(v44 + 8) = v45;
      *(v44 + 72) = v40;
      v41 += 32;
    }

    while (v41 != v42);
  }
}

void sub_1C9241068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::MixBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.1238952e219;
  *a1 = xmmword_1C925F280;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::MixBox::getParameterInfo(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    if (!a2)
    {
      memset(v6, 0, sizeof(v6));
      *a3 = *"gain";
      *(a3 + 16) = unk_1C925F819;
      *(a3 + 32) = xmmword_1C925F829;
      *(a3 + 48) = *v6;
      *(a3 + 64) = 0 >> 96;
      *(a3 + 72) = @"gain";
      *(a3 + 80) = 14;
      *(a3 + 84) = --2.00000143;
      *(a3 + 92) = 1065353216;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      goto LABEL_6;
    }

    v4 = -10878;
  }

  else
  {
    v4 = -10866;
  }

  *a3 = v4;
  *(a3 + 104) = 0;
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::MixBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    v6[0] = v3;
    v6[1] = v4;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v5, v6, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::MixBox::getParameter(AudioDSPGraph::Boxes::MixBox *this@<X0>, int a2@<W2>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  if (a2 == 1)
  {
    v4 = *(this + 96);
    if (a3 < ((*(this + 97) - v4) >> 2))
    {
      *a4 = *(v4 + 4 * a3);
      *(a4 + 32) = 1;
      return;
    }

    LODWORD(v6) = -10877;
    v5 = off_1E8336E78;
  }

  else
  {
    LODWORD(v6) = -10866;
    v5 = off_1E8336E60;
  }

  *(&v6 + 1) = v5;
  v7 = 0;
  *a4 = v6;
  *(a4 + 16) = 0;
  v8 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v6);
}

void AudioDSPGraph::Boxes::MixBox::setParameter(AudioDSPGraph::Boxes::MixBox *this@<X0>, float a2@<S0>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3 != 1)
  {
    LODWORD(v8) = -10866;
    v7 = off_1E8336E30;
    goto LABEL_8;
  }

  v5 = *(this + 96);
  if (a4 >= ((*(this + 97) - v5) >> 2))
  {
    LODWORD(v8) = -10877;
    v7 = off_1E8336E48;
LABEL_8:
    *(&v8 + 1) = v7;
    v9 = 0;
    *a5 = v8;
    *(a5 + 16) = 0;
    v10 = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v8);
    return;
  }

  *(v5 + 4 * a4) = a2;
  v6 = *(this + 2);
  if (!v6 || (*(v6 + 922) & 1) == 0)
  {
    *(*(this + 99) + 4 * a4) = a2;
  }

  *(a5 + 32) = 1;
}

void AudioDSPGraph::Boxes::MixBox::~MixBox(AudioDSPGraph::Boxes::MixBox *this)
{
  *this = &unk_1F48D1AC8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D1AC8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);
}

uint64_t *std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    MEMORY[0x1CCA84AE0](v2, 0x1060C40CA828048);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(*(v2 + 8), *(v2 + 16));
    std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase((v2 + 8), v3, *(v2 + 16));
    os_unfair_lock_unlock(v2);
  }

  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](a1 + 5);
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t *std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = v2[1];
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v7 = i[1];
        if (v7 && *(v7 + 8) != -1)
        {
          v8 = *i;
          *i = 0;
          i[1] = 0;
          v9 = v2[1];
          *v2 = v8;
          v2[1] = v7;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase(void *a1, uint64_t a2, uint64_t a3)
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
          std::__shared_weak_count::__release_weak(v11);
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
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48D1D48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void MultiRadixRealFFT::RealOutOfPlaceInverseTransform(MultiRadixRealFFT *this, const DSPSplitComplex *a2, float *a3, DSPComplex *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = **this;
  MEMORY[0x1EEE9AC00]();
  v8 = (&v14 - ((v7 + 15) & 0x7FFFFFFF0));
  __Z.realp = v8;
  __Z.imagp = (v8 + ((2 * v9) & 0x1FFFFFFFCLL));
  vDSP_DFT_Execute(*(v10 + 16), v11, v12, v8, __Z.imagp);
  vDSP_ztoc(&__Z, 1, a4, 2, **this >> 1);
  v13 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::uninitialize(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 198))
  {
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v2 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v18 = this + 40;
      if (*(this + 63) < 0)
      {
        v18 = *v18;
      }

      v19 = *(this + 198);
      *buf = 136315394;
      v25 = v18;
      v26 = 1024;
      *v27 = v19;
      _os_log_error_impl(&dword_1C91AE000, v2, OS_LOG_TYPE_ERROR, "%s: Detected total %u audio buffers with non-finite (<NaN> or <inf>) sample during audio start/stop cycle", buf, 0x12u);
    }

    *(this + 198) = 0;
  }

  if (*(this + 199))
  {
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v3 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v20 = this + 40;
      if (*(this + 63) < 0)
      {
        v20 = *v20;
      }

      v21 = *(this + 199);
      v22 = COERCE_FLOAT(atomic_load(this + 191));
      *buf = 136315650;
      v25 = v20;
      v26 = 1024;
      *v27 = v21;
      *&v27[4] = 2048;
      *&v27[6] = v22;
      _os_log_error_impl(&dword_1C91AE000, v3, OS_LOG_TYPE_ERROR, "%s: Detected total %u audio buffers with peak over limit (%.0f dB) during audio start/stop cycle", buf, 0x1Cu);
    }

    *(this + 199) = 0;
  }

  v4 = *(this + 96);
  v5 = *(this + 97);
  if (v4 != v5)
  {
    v6 = v4 + 1;
    do
    {
      v7 = *(v6 - 2);
      *__str = 0u;
      v33 = 0u;
      v8 = localtime(v6);
      if (!strftime(__str, 0x20uLL, "%Y-%m-%d %H:%M:%S", v8))
      {
        snprintf(__str, 0x20uLL, "%ld", *v6);
      }

      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
      }

      v9 = AudioDSPGraph::getLog(void)::gLog;
      if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v11 = this + 40;
        if (*(this + 63) < 0)
        {
          v11 = *(this + 5);
        }

        v12 = v6[1];
        v13 = "peak over limit";
        if (!v7)
        {
          v13 = "non-finite sample";
        }

        v14 = atomic_load(this + 201);
        *buf = 136316162;
        v25 = __str;
        v26 = 2048;
        *v27 = v12;
        *&v27[8] = 2080;
        *&v27[10] = v11;
        v28 = 2080;
        v29 = v13;
        v30 = 1024;
        v31 = v14;
        _os_log_error_impl(&dword_1C91AE000, v9, OS_LOG_TYPE_ERROR, "%s.%09ld :: %s: Detected %s in %u audio buffers", buf, 0x30u);
      }

      v10 = v6 + 2;
      v6 += 3;
    }

    while (v10 != v5);
    v4 = *(this + 96);
  }

  *(this + 97) = v4;
  v15 = *(this + 800);
  *(this + 800) = 0;
  if (v15)
  {
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v16 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v23 = this + 40;
      if (*(this + 63) < 0)
      {
        v23 = *v23;
      }

      *buf = 136315138;
      v25 = v23;
      _os_log_error_impl(&dword_1C91AE000, v16, OS_LOG_TYPE_ERROR, "%s: NonFiniteProtectionBox event logging capacity exceeded (some descriptions dropped)", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::process(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, unsigned int a2)
{
  v3 = atomic_load(this + 801);
  if (v3)
  {
    v4 = *(this + 9);
    if (*(this + 10) == v4)
    {
      v39 = (this + 40);
      if (*(this + 63) < 0)
      {
        v39 = *v39;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __C, v39, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C60);
    }

    v5 = *(this + 12);
    if (*(this + 13) == v5)
    {
      v41 = (this + 40);
      if (*(this + 63) < 0)
      {
        v41 = *v41;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", __C, v41, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C78);
    }

    AudioDSPGraph::SimpleABL::copy((*(*(v4 + 16) + 56) + 80), *(*(*(v5 + 16) + 56) + 80));
  }

  else
  {
    v6 = *(this + 9);
    if (*(this + 10) == v6)
    {
      v40 = (this + 40);
      if (*(this + 63) < 0)
      {
        v40 = *v40;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __C, v40, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C60);
    }

    v7 = *(this + 12);
    if (*(this + 13) == v7)
    {
      v42 = (this + 40);
      if (*(this + 63) < 0)
      {
        v42 = *v42;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", __C, v42, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C78);
    }

    v8 = *(*(*(v6 + 16) + 56) + 80);
    v9 = *(*(*(v7 + 16) + 56) + 80);
    v10 = *v8;
    v11 = COERCE_FLOAT(atomic_load(this + 191));
    v12 = __exp10f(v11 * 0.05);
    if (v10)
    {
      v13 = v12;
      v14 = 0;
      v43 = 0;
      v44 = 0;
      v15 = -v12;
      do
      {
        v16 = *&v8[4 * v14 + 4];
        v17 = *(v9 + 8 + 16 * v14 + 8);
        LODWORD(__C[0]) = 0;
        vDSP_sve(v16, 1, __C, a2);
        if ((__C[0] & 0x7FFFFFFF) >= 0x7F800000)
        {
          if (a2)
          {
            v18 = 4 * a2;
            v19 = v16;
            do
            {
              if ((*v19 & 0x7FFFFFFFu) >= 0x7F800000)
              {
                *v19 = 0.0;
              }

              ++v19;
              v18 -= 4;
            }

            while (v18);
          }

          v43 = 1;
        }

        __B = v15;
        *__C = v13;
        v46 = 0.0;
        vDSP_maxmgv(v16, 1, &v46, a2);
        if (v46 <= *__C)
        {
          if (v16 != v17)
          {
            memcpy(v17, v16, 4 * a2);
          }
        }

        else
        {
          v44 = 1;
          vDSP_vclip(v16, 1, &__B, __C, v17, 1, a2);
        }

        ++v14;
      }

      while (v14 != v10);
      if (v43)
      {
        ++*(this + 198);
        v20 = atomic_load(this + 802);
        if (v20)
        {
          v21 = *(this + 198);
          v22 = atomic_load(this + 201);
          if (!(v21 % v22))
          {
            AudioDSPGraph::Boxes::NonFiniteProtectionBox::addEvent(this, 0);
          }
        }
      }

      if (v44)
      {
        ++*(this + 199);
        v23 = atomic_load(this + 802);
        if (v23)
        {
          v24 = *(this + 199);
          v25 = atomic_load(this + 201);
          if (!(v24 % v25))
          {
            AudioDSPGraph::Boxes::NonFiniteProtectionBox::addEvent(this, 1);
          }
        }
      }
    }
  }

  v26 = *(this + 9);
  if (*(this + 10) == v26)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __C, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C60);
  }

  v27 = *(this + 12);
  if (*(this + 13) == v27)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", __C, v36, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C78);
  }

  v28 = *(*(v26 + 16) + 56);
  v29 = *(*(v27 + 16) + 56);
  v30 = *(v28 + 8);
  v31 = *(v28 + 24);
  v32 = *(v28 + 40);
  *(v29 + 56) = *(v28 + 56);
  *(v29 + 40) = v32;
  *(v29 + 24) = v31;
  *(v29 + 8) = v30;
  v33 = *(this + 9);
  if (*(this + 10) == v33)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __C, v37, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C60);
  }

  v34 = *(this + 12);
  if (*(this + 13) == v34)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", __C, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, __C, off_1E8337C78);
  }

  *(*(*(v34 + 16) + 56) + 72) = *(*(*(v33 + 16) + 56) + 72);
}

void sub_1C924212C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::addEvent(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 776) - *(a1 + 768) >= *(a1 + 784) - *(a1 + 768))
  {
    *(a1 + 800) = 1;
  }

  else
  {
    v16 = 0uLL;
    clock_gettime(_CLOCK_REALTIME, &v16);
    *&v17[4] = v16;
    v4 = *(a1 + 776);
    v5 = *(a1 + 784);
    if (v4 >= v5)
    {
      v7 = *(a1 + 768);
      v8 = v4 - v7;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
      v10 = v9 + 1;
      if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (v12 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = 24 * v9;
      *v13 = a2;
      *(v13 + 4) = *v17;
      *(v13 + 20) = *&v17[16];
      v6 = 24 * v9 + 24;
      v14 = v13 - v8;
      memcpy((v13 - v8), v7, v8);
      *(a1 + 768) = v14;
      *(a1 + 776) = v6;
      *(a1 + 784) = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v4 = a2;
      *(v4 + 4) = *v17;
      *(v4 + 20) = *&v17[16];
      v6 = v4 + 24;
    }

    *(a1 + 776) = v6;
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t AudioDSPGraph::Boxes::NonFiniteProtectionBox::setProperty(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, int a2, int a3, unsigned int a4, int a5, unsigned int *a6)
{
  if (a2 == 64331)
  {
    if (a5 != 4)
    {
      return 561211770;
    }

    if (a3)
    {
      return 4294956430;
    }

    if (*a6)
    {
      result = 0;
      atomic_store(*a6, this + 201);
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {
    if (a2 == 64330)
    {
      if (a5 == 4)
      {
        if (!a3)
        {
          result = 0;
          atomic_store(*a6 != 0, this + 802);
          return result;
        }

        return 4294956430;
      }

      return 561211770;
    }

    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t AudioDSPGraph::Boxes::NonFiniteProtectionBox::getProperty(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  if (a2 == 64331)
  {
    if (*a5 == 4)
    {
      if (a6)
      {
        if (!a3)
        {
          result = 0;
          v9 = atomic_load(this + 201);
          goto LABEL_15;
        }

        return 4294956430;
      }

      return 4294967246;
    }

    return 561211770;
  }

  if (a2 != 64330)
  {
    return AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
  }

  if (*a5 != 4)
  {
    return 561211770;
  }

  if (!a6)
  {
    return 4294967246;
  }

  if (a3)
  {
    return 4294956430;
  }

  result = 0;
  v8 = atomic_load(this + 802);
  v9 = v8 & 1;
LABEL_15:
  *a6 = v9;
  return result;
}

unint64_t AudioDSPGraph::Boxes::NonFiniteProtectionBox::getPropertyInfo(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, int a2, int a3)
{
  if (a2 == 64331 || a2 == 64330)
  {
    v3 = 4;
    if (a3)
    {
      v3 = 4294956430;
      v4 = 0;
    }

    else
    {
      v4 = 0x100000000;
    }
  }

  else
  {
    PropertyInfo = AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
    v4 = PropertyInfo & 0xFFFFFFFF00000000;
    v3 = PropertyInfo;
  }

  return v4 | v3;
}

double AudioDSPGraph::Boxes::NonFiniteProtectionBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.48669114e223;
  *a1 = xmmword_1C925F370;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::getParameterInfo(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = -10866;
  }

  else
  {
    if (!a2)
    {
      memset(v6, 0, sizeof(v6));
      strcpy(a3, "hard clip threshold");
      *(a3 + 20) = unk_1C925F852;
      *(a3 + 24) = unk_1C925F856;
      *(a3 + 32) = xmmword_1C925F85E;
      *(a3 + 48) = *v6;
      *(a3 + 64) = 0 >> 96;
      *(a3 + 72) = @"hard clip threshold";
      *(a3 + 80) = 13;
      *(a3 + 84) = 0x42A0000000000000;
      *(a3 + 92) = 1109393408;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      goto LABEL_6;
    }

    v4 = -10878;
  }

  *a3 = v4;
  *(a3 + 104) = 0;
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  if (!a1)
  {
    v6[0] = v3;
    v6[1] = v4;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v5, v6, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::getParameter(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v5 = off_1E8336EC0;
  }

  else if (a2)
  {
    LODWORD(v7) = -10878;
    v5 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      v6 = atomic_load(this + 191);
      *a5 = v6;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v5 = off_1E8336ED8;
  }

  *(&v7 + 1) = v5;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::setParameter(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this@<X0>, unsigned int a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8336E90;
    goto LABEL_4;
  }

  if (a3)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BC0;
LABEL_4:
    *(&v7 + 1) = v6;
    v8 = 0;
    *a6 = v7;
    *(a6 + 16) = 0;
    v9 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v7);
    return;
  }

  if (a5)
  {
    LODWORD(v7) = -10877;
    v6 = off_1E8336EA8;
    goto LABEL_4;
  }

  if (*&a2 < 0.0)
  {
    *&a2 = 0.0;
  }

  atomic_store(a2, this + 191);
  *(a6 + 32) = 1;
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::~NonFiniteProtectionBox(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this)
{
  *this = &unk_1F48D1D80;
  v2 = *(this + 96);
  if (v2)
  {
    *(this + 97) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D1D80;
  v2 = *(this + 96);
  if (v2)
  {
    *(this + 97) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::ParameterSmoothingBox::reset(uint64_t this)
{
  *(this + 796) = 0;
  *(this + 804) = 257;
  return this;
}

uint64_t AudioDSPGraph::Boxes::ParameterSmoothingBox::initialize(AudioDSPGraph::Boxes::ParameterSmoothingBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v8 = (this + 40);
    if (*(this + 63) < 0)
    {
      v8 = *v8;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v10, v8, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v10, off_1E8337C60);
  }

  v4 = *(*(v3 + 16) + 120);
  v5 = *v4;
  *(this + 96) = *v4;
  v6 = *(v4 + 40);
  *(this + 194) = v6;
  if (v5 <= 0.0 || v6 == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -10875;
  }

  *(this + 796) = 0;
  *(this + 402) = 257;
  return result;
}

void sub_1C9242934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::process(AudioDSPGraph::Boxes::ParameterSmoothingBox *this)
{
  if (*(this + 804) == 1)
  {
    v2 = *(this + 96) / *(this + 194);
    v3 = 0.0;
    v4 = 0.0;
    if (v2 != 0.0)
    {
      v3 = expf(-1.0 / (*(this + 195) * v2));
      v4 = expf(-1.0 / (*(this + 196) * v2));
    }

    *(this + 197) = v3;
    *(this + 198) = v4;
    *(this + 804) = 0;
  }

  v5 = *(this + 199);
  if (*(this + 805) == 1)
  {
    *(this + 200) = v5;
    *(this + 805) = 0;
  }

  else
  {
    v6 = *(this + 200);
    if (v5 >= v6)
    {
      v7 = *(this + 197);
    }

    else
    {
      v7 = *(this + 198);
    }

    *(this + 200) = (v5 * (1.0 - v7)) + (v6 * v7);
  }

  v8 = *(this + 9);
  if (*(this + 10) == v8)
  {
    v17 = (this + 40);
    if (*(this + 63) < 0)
    {
      v17 = *v17;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v17, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v18, off_1E8337C60);
  }

  v9 = *(this + 12);
  v10 = *(this + 13);
  if (v9 != v10)
  {
    v11 = *(*(v8 + 16) + 56);
    v12 = *(v11 + 72);
    do
    {
      v13 = *(*(v9 + 16) + 56);
      v14 = *(v11 + 8);
      v15 = *(v11 + 24);
      v16 = *(v11 + 40);
      *(v13 + 56) = *(v11 + 56);
      *(v13 + 40) = v16;
      *(v13 + 24) = v15;
      *(v13 + 8) = v14;
      *(v13 + 72) = v12;
      v9 += 32;
    }

    while (v9 != v10);
  }
}

void sub_1C9242AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ParameterSmoothingBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.02972514e248;
  *a1 = xmmword_1C925F380;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::getParameterInfo(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      LODWORD(v10) = 0;
      strcpy(a3, "Input parameter value");
      *(a3 + 22) = unk_1C925F8C3;
      *(a3 + 24) = unk_1C925F8C5;
      *(a3 + 32) = xmmword_1C925F8CD;
      *(a3 + 48) = v10;
      *(a3 + 64) = 0;
      *(a3 + 72) = @"Input parameter value";
      *(a3 + 80) = 0;
      v5 = 0x7F7FFFFF00800000;
LABEL_12:
      *(a3 + 84) = v5;
      *(a3 + 92) = 0;
      v6 = 3355443200;
      goto LABEL_13;
    }

    if (a1)
    {
      v7 = 0;
      v8 = -10866;
    }

    else
    {
      if (a2 == 1)
      {
        LODWORD(v10) = 0;
        strcpy(a3, "Release Time (sec)");
        *(a3 + 19) = unk_1C925F8F5;
        *(a3 + 20) = unk_1C925F8F6;
        *(a3 + 24) = unk_1C925F8FA;
        *(a3 + 32) = xmmword_1C925F902;
        *(a3 + 48) = v10;
        v4 = @"Release Time (sec)";
        goto LABEL_11;
      }

      if (!a2)
      {
        LODWORD(v10) = 0;
        strcpy(a3, "Attack Time (sec)");
        *(a3 + 18) = unk_1C925F929;
        *(a3 + 20) = unk_1C925F92B;
        *(a3 + 24) = unk_1C925F92F;
        *(a3 + 32) = xmmword_1C925F937;
        *(a3 + 48) = v10;
        v4 = @"Attack Time (sec)";
LABEL_11:
        *(a3 + 64) = 0;
        *(a3 + 72) = v4;
        *(a3 + 80) = 4;
        v5 = 0x447A000000000000;
        goto LABEL_12;
      }

      v7 = 0;
      v8 = -10878;
    }

    *a3 = v8;
    goto LABEL_16;
  }

  LODWORD(v10) = 0;
  strcpy(a3, "Output parameter value");
  *(a3 + 23) = unk_1C925F88F;
  *(a3 + 24) = unk_1C925F890;
  *(a3 + 32) = xmmword_1C925F898;
  *(a3 + 48) = v10;
  *(a3 + 64) = 0;
  *(a3 + 72) = @"Output parameter value";
  *(a3 + 80) = 0;
  *(a3 + 84) = 0x7F7FFFFF00800000;
  *(a3 + 92) = 0;
  v6 = 1207959552;
LABEL_13:
  v7 = 1;
  *(a3 + 96) = v6;
LABEL_16:
  *(a3 + 104) = v7;
  v9 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::getParameterList(int a1@<W1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) < 2)
  {
    LODWORD(v7) = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v3 = &v7 + 4;
    v4 = a2;
    v5 = 1;
    goto LABEL_5;
  }

  if (!a1)
  {
    v7 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v3 = &v8;
    v4 = a2;
    v5 = 2;
LABEL_5:
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v4, &v7, v3, v5);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *MEMORY[0x1E69E9840];
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::getParameter(AudioDSPGraph::Boxes::ParameterSmoothingBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    LODWORD(v7) = -10877;
    v6 = off_1E8336F38;
  }

  else
  {
    if (a3 == 2)
    {
      v5 = *(this + 200);
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v5 = *(this + 199);
      goto LABEL_12;
    }

    if (a3)
    {
      LODWORD(v7) = -10866;
      v6 = off_1E8336F68;
    }

    else
    {
      if (a2 == 1)
      {
        v5 = *(this + 196);
        goto LABEL_12;
      }

      if (!a2)
      {
        v5 = *(this + 195);
LABEL_12:
        *a5 = v5;
        *(a5 + 32) = 1;
        return;
      }

      LODWORD(v7) = -10878;
      v6 = off_1E8336F50;
    }
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::setParameter(AudioDSPGraph::Boxes::ParameterSmoothingBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a5)
  {
    LODWORD(v7) = -10877;
    v6 = off_1E8336EF0;
  }

  else
  {
    if (a4 == 1)
    {
      *(this + 199) = a2;
      goto LABEL_13;
    }

    if (a4)
    {
      LODWORD(v7) = -10866;
      v6 = off_1E8336F20;
    }

    else
    {
      if (a3 == 1)
      {
        if (*(this + 196) != a2)
        {
          *(this + 196) = a2;
          goto LABEL_12;
        }

LABEL_13:
        *(a6 + 32) = 1;
        return;
      }

      if (!a3)
      {
        if (*(this + 195) != a2)
        {
          *(this + 195) = a2;
LABEL_12:
          *(this + 804) = 1;
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      LODWORD(v7) = -10878;
      v6 = off_1E8336F08;
    }
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a6 = v7;
  *(a6 + 16) = 0;
  v9 = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::~ParameterSmoothingBox(AudioDSPGraph::Boxes::ParameterSmoothingBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Port::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    AudioDSPGraph::printi(a2, v4 + 4, "box %p\n");
  }

  return result;
}

void AudioDSPGraph::Language::V1::StringSubMacro::apply(uint64_t a1@<X0>, AudioDSPGraph::Language::V1::Preprocessor *a2@<X1>, uint64_t *a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 80) == 1)
  {
    v10 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v10 = *v10;
    }

    caulk::make_string("preprocessor error: recursive call to macro %s.", v19, v10);
    AudioDSPGraph::ThrowException(1886548769, v19, off_1E8336F80);
  }

  *(a1 + 80) = 1;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  if (v5 != v8)
  {
    v11 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v11 = *v11;
    }

    caulk::make_string("preprocessor error: macro %s: wrong number of arguments expected %zu. got %zu\n", v18, v11, v8, v5);
    AudioDSPGraph::ThrowException(1886548769, v18, off_1E8336F98);
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v14[0] = a2;
  v14[1] = &__p;
  if (v6 != v7)
  {
    v9 = *a3;
    operator new();
  }

  AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v13, a2, (a1 + 56), 1);
  *a4 = v13;
  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(v14);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  *(a1 + 80) = 0;
}

void sub_1C924340C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  *(v26 + 80) = 0;
  _Unwind_Resume(a1);
}

void AudioDSPGraph::Language::V1::Preprocessor::preprocess(std::string *a1, AudioDSPGraph::Language::V1::Preprocessor *a2, std::string::value_type *a3, uint64_t a4)
{
  v203 = *MEMORY[0x1E69E9840];
  v198 = 0;
  v197 = 0;
  v199 = 0;
  v196[0] = a2;
  v196[1] = &v197;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (a3[23] >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  if (!v4)
  {
    goto LABEL_536;
  }

  v9 = &v201;
  do
  {
    v10 = a3[23];
    if ((v10 & 0x80u) == 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 1);
    }

    if (v4 >= &v11[v10])
    {
      break;
    }

    v195 = v4 + 1;
    v12 = *v4;
    if (v12 <= 0x5A)
    {
      if (v12 == 59)
      {
        v15 = v4 + 2;
        while (1)
        {
          v12 = *(v15 - 1);
          if (!*(v15 - 1))
          {
            break;
          }

          v195 = v15++;
          if (v12 == 10)
          {
            goto LABEL_66;
          }
        }

        LOBYTE(v12) = 10;
LABEL_66:
        std::string::push_back(a1, v12);
        goto LABEL_444;
      }

      if (!*v4)
      {
        break;
      }

LABEL_55:
      if (v12 == 123 && a4)
      {
        memset(&v200, 0, sizeof(v200));
        AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(&v195, 123, 125, &v200);
        std::string::push_back(a1, 123);
        if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v200;
        }

        else
        {
          v21 = v200.__r_.__value_.__r.__words[0];
        }

        if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v200.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v200.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v21, size);
        std::string::push_back(a1, 125);
        if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
        {
          v23 = v200.__r_.__value_.__r.__words[0];
          goto LABEL_443;
        }

        goto LABEL_444;
      }

      goto LABEL_66;
    }

    if (v12 != 91)
    {
      if (v12 == 92)
      {
        v13 = v4 + 2;
        v195 = v4 + 2;
        v14 = v4[1];
        if (v14 <= 0x6D)
        {
          if (v4[1] > 0x61u)
          {
            if (v14 == 98)
            {
              LOBYTE(v14) = 8;
            }

            else if (v14 == 102)
            {
              LOBYTE(v14) = 12;
            }
          }

          else
          {
            if (!v4[1])
            {
              goto LABEL_445;
            }

            if (v14 == 97)
            {
              LOBYTE(v14) = 7;
            }
          }
        }

        else if (v4[1] <= 0x73u)
        {
          if (v14 == 110)
          {
            LOBYTE(v14) = 10;
          }

          else if (v14 == 114)
          {
            LOBYTE(v14) = 13;
          }
        }

        else
        {
          switch(v14)
          {
            case 'x':
              v195 = v4 + 3;
              v30 = v4[2];
              if (v30 < 0 || (v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60), (v31 & 0x10000) == 0))
              {
                std::string::basic_string[abi:ne200100]<0>(v194, "preprocessor error: expected hex digit");
                AudioDSPGraph::ThrowException(1886548769, v194, off_1E8337028);
              }

              if ((v31 & 0x9000) != 0)
              {
                v32 = 9;
              }

              else
              {
                v32 = 0;
              }

              v195 = v4 + 4;
              v33 = v4[3];
              if (v33)
              {
                if ((v33 & 0x80000000) != 0 || (v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60), (v34 & 0x10000) == 0))
                {
                  std::string::basic_string[abi:ne200100]<0>(v193, "preprocessor error: expected hex digit");
                  AudioDSPGraph::ThrowException(1886548769, v193, off_1E8337040);
                }

                v35 = v30 + v32;
                if ((v34 & 0x1000) != 0)
                {
                  v36 = -87;
                }

                else
                {
                  v36 = -48;
                }

                if ((v34 & 0x8000) != 0)
                {
                  v36 = -55;
                }

                std::string::push_back(a1, (v33 + v36) | (16 * v35));
                goto LABEL_444;
              }

              goto LABEL_536;
            case 'v':
              LOBYTE(v14) = 11;
              break;
            case 't':
              LOBYTE(v14) = 9;
              break;
          }
        }

        std::string::push_back(a1, v14);
        goto LABEL_445;
      }

      goto LABEL_55;
    }

    memset(&__p, 0, sizeof(__p));
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(&v195, 91, 93, &__p);
    AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v200, a2, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v200;
    if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v191 = p_p;
    __sz = 0;
    __s = 0;
    v190 = 0;
    if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &__s))
    {
      std::string::basic_string[abi:ne200100]<0>(v187, "preprocessor error: expected macro name");
      AudioDSPGraph::ThrowException(1886548769, v187, off_1E8337058);
    }

    if ((SHIBYTE(v190) & 0x80000000) == 0)
    {
      if (HIBYTE(v190) <= 4u)
      {
        if (HIBYTE(v190) != 1)
        {
          if (HIBYTE(v190) != 2)
          {
            if (HIBYTE(v190) != 3)
            {
              goto LABEL_355;
            }

            if ((__s != 25956 || BYTE2(__s) != 102) && (__s != 25964 || BYTE2(__s) != 116))
            {
              if (__s != 28257 || BYTE2(__s) != 100)
              {
LABEL_49:
                if (__s != 28526 || BYTE2(__s) != 116)
                {
LABEL_264:
                  if (HIBYTE(v190) != 1)
                  {
                    if (HIBYTE(v190) != 2)
                    {
                      goto LABEL_355;
                    }

                    goto LABEL_136;
                  }

                  goto LABEL_298;
                }

                goto LABEL_328;
              }

LABEL_313:
              memset(&v200, 0, sizeof(v200));
              v96 = 1;
              while (1)
              {
                v97 = v96;
                if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
                {
                  break;
                }

                v96 = 0;
                if (v97)
                {
                  if (v190 >= 0)
                  {
                    p_s = &__s;
                  }

                  else
                  {
                    p_s = __s;
                  }

                  v96 = AudioDSPGraph::Language::V1::strToLong(&v200, p_s, off_1E8337160) != 0;
                }
              }

              if (v97)
              {
                v85 = "1";
              }

              else
              {
                v85 = "0";
              }

              goto LABEL_335;
            }

            v27 = &__s;
LABEL_199:
            v62 = *v27;
            v63 = *(v27 + 2);
            v65 = v62 != 25964 || v63 != 116;
            v177.__r_.__value_.__r.__words[0] = 0;
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &__s))
            {
              std::string::basic_string[abi:ne200100]<0>(v186, "preprocessor error: expected name");
              AudioDSPGraph::ThrowException(1886548769, v186, off_1E8337070);
            }

            if (AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s))
            {
              {
                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
              }

              v66 = AudioDSPGraph::getLog(void)::gLog;
              if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_INFO))
              {
                if (v190 >= 0)
                {
                  v67 = &__s;
                }

                else
                {
                  v67 = __s;
                }

                LODWORD(v200.__r_.__value_.__l.__data_) = 136315138;
                *(v200.__r_.__value_.__r.__words + 4) = v67;
                _os_log_impl(&dword_1C91AE000, v66, OS_LOG_TYPE_INFO, "Preprocessor: redefining macro '%s'", &v200, 0xCu);
              }
            }

            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            while (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              v68 = v200.__r_.__value_.__l.__size_;
              if (v200.__r_.__value_.__l.__size_ >= v200.__r_.__value_.__r.__words[2])
              {
                v70 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v200, &v150);
              }

              else
              {
                if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v200.__r_.__value_.__l.__size_, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
                }

                else
                {
                  v69 = *&v150.__r_.__value_.__l.__data_;
                  *(v200.__r_.__value_.__l.__size_ + 16) = *(&v150.__r_.__value_.__l + 2);
                  *v68 = v69;
                }

                v70 = (v68 + 24);
              }

              v200.__r_.__value_.__l.__size_ = v70;
            }

            v71 = a4;
            v72 = v9;
            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            memset(&v150, 0, sizeof(v150));
            if (AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v191, &v150))
            {
              v73 = AudioDSPGraph::Language::V1::Preprocessor::def(a2, &__s);
              v177.__r_.__value_.__r.__words[0] = v73;
              if (!v65)
              {
                std::vector<AudioDSPGraph::Language::V1::Macro const*>::push_back[abi:ne200100](&v197, &v177);
              }

              v75 = v200.__r_.__value_.__l.__size_;
              v74 = v200.__r_.__value_.__r.__words[0];
              if (v200.__r_.__value_.__r.__words[0] != v200.__r_.__value_.__l.__size_)
              {
                v76 = *(v73 + 40);
                do
                {
                  if (v76 >= *(v73 + 48))
                  {
                    v76 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v73 + 32, v74);
                  }

                  else
                  {
                    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v73 + 32, v74);
                    ++v76;
                  }

                  *(v73 + 40) = v76;
                  v74 = (v74 + 24);
                }

                while (v74 != v75);
              }
            }

            else
            {
              if (v200.__r_.__value_.__l.__size_ - v200.__r_.__value_.__r.__words[0] != 24)
              {
                std::string::basic_string[abi:ne200100]<0>(v185, "preprocessor error: expected macro body");
                AudioDSPGraph::ThrowException(1886548769, v185, off_1E8337088);
              }

              v177.__r_.__value_.__r.__words[0] = AudioDSPGraph::Language::V1::Preprocessor::def(a2, &__s);
              if (!v65)
              {
                std::vector<AudioDSPGraph::Language::V1::Macro const*>::push_back[abi:ne200100](&v197, &v177);
              }
            }

            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            v150.__r_.__value_.__r.__words[0] = &v200;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v150);
            v9 = v72;
            a4 = v71;
            goto LABEL_439;
          }

          if (__s != 29295)
          {
LABEL_136:
            if (__s != 15677)
            {
              goto LABEL_355;
            }

LABEL_308:
            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v180, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v180, off_1E83371A8);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v179, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v179, off_1E83371C0);
            }

            v94 = AudioDSPGraph::Language::V1::strToLong(&v200, "equality", off_1E83371D8);
            if (v94 == AudioDSPGraph::Language::V1::strToLong(&v150, "equality", off_1E83371F0))
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

LABEL_267:
          v82 = 0;
          memset(&v200, 0, sizeof(v200));
          while (1)
          {
            v83 = v82;
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              break;
            }

            v82 = 1;
            if (!v83)
            {
              if (v190 >= 0)
              {
                v84 = &__s;
              }

              else
              {
                v84 = __s;
              }

              v82 = AudioDSPGraph::Language::V1::strToLong(&v200, v84, off_1E8337148) != 0;
            }
          }

          if (v83)
          {
            v85 = "1";
          }

          else
          {
            v85 = "0";
          }

          goto LABEL_335;
        }

        v37 = __s;
        if (__s != 42)
        {
          if (__s != 43)
          {
LABEL_299:
            if (v37 == 45)
            {
LABEL_300:
              memset(&v200, 0, sizeof(v200));
              memset(&v150, 0, sizeof(v150));
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
              {
                std::string::basic_string[abi:ne200100]<0>(v178, "preprocessor error: missing argument");
                AudioDSPGraph::ThrowException(1886548769, v178, off_1E8337208);
              }

              v89 = AudioDSPGraph::Language::V1::strToLong(&v200, "subtraction", off_1E8337220);
              if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
              {
                v90 = AudioDSPGraph::Language::V1::strToLong(&v150, "subtraction", off_1E8337238);
                v91 = caulk::numeric::exceptional_sub<long>(v89, v90);
                std::to_string(&v177, v91);
                if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v92 = &v177;
                }

                else
                {
                  v92 = v177.__r_.__value_.__r.__words[0];
                }

                if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v93 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v93 = v177.__r_.__value_.__l.__size_;
                }
              }

              else
              {
                v101 = caulk::numeric::exceptional_mul<long>(v89, -1);
                std::to_string(&v177, v101);
                if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v92 = &v177;
                }

                else
                {
                  v92 = v177.__r_.__value_.__r.__words[0];
                }

                if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v93 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v93 = v177.__r_.__value_.__l.__size_;
                }
              }

              goto LABEL_432;
            }

LABEL_345:
            if (v37 != 47)
            {
              goto LABEL_355;
            }

            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v176, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v176, off_1E8337250);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v175, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v175, off_1E8337268);
            }

            v102 = AudioDSPGraph::Language::V1::strToLong(&v200, "division", off_1E8337280);
            v103 = AudioDSPGraph::Language::V1::strToLong(&v150, "division", off_1E8337298);
            if (!v103)
            {
              std::string::basic_string[abi:ne200100]<0>(v174, "division by zero is not allowed");
              AudioDSPGraph::ThrowException(1886548769, v174, off_1E83372B0);
            }

            std::to_string(&v177, v102 / v103);
            if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v92 = &v177;
            }

            else
            {
              v92 = v177.__r_.__value_.__r.__words[0];
            }

            if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v93 = v177.__r_.__value_.__l.__size_;
            }

LABEL_432:
            std::string::append(a1, v92, v93);
            if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v177.__r_.__value_.__l.__data_);
            }

            goto LABEL_434;
          }

          goto LABEL_194;
        }

LABEL_234:
        memset(&v200, 0, sizeof(v200));
        v77 = 1;
        while (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
        {
          v78 = AudioDSPGraph::Language::V1::strToLong(&v200, "multiplication", off_1E8337130);
          v77 = caulk::numeric::exceptional_mul<long>(v77, v78);
        }

        std::to_string(&v150, v77);
        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v150;
        }

        else
        {
          v79 = v150.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = v150.__r_.__value_.__l.__size_;
        }

        goto LABEL_469;
      }

      if (HIBYTE(v190) != 5)
      {
        if (HIBYTE(v190) != 7)
        {
          if (HIBYTE(v190) != 10)
          {
            goto LABEL_355;
          }

          if (__s != 0x746E756F4374656CLL || __sz != 29285)
          {
            goto LABEL_355;
          }

LABEL_188:
          if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &__s))
          {
            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              AudioDSPGraph::Language::V1::strToLong(&v200, "counter start value", off_1E83370D0);
              if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
              {
                AudioDSPGraph::Language::V1::strToLong(&v150, "counter step", off_1E83370E8);
              }
            }

            operator new();
          }

          std::string::basic_string[abi:ne200100]<0>(v183, "preprocessor error: expected name");
          AudioDSPGraph::ThrowException(1886548769, v183, off_1E83370B8);
        }

        if (__s == 1853189987 && *(&__s + 3) == 1919251566)
        {
          goto LABEL_188;
        }

        if (__s != 1768318308 || *(&__s + 3) != 1684369001)
        {
LABEL_355:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "!="))
          {
            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v173, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v173, off_1E83372C8);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v172, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v172, off_1E83372E0);
            }

            v104 = AudioDSPGraph::Language::V1::strToLong(&v200, "inequality", off_1E83372F8);
            if (v104 == AudioDSPGraph::Language::V1::strToLong(&v150, "inequality", off_1E8337310))
            {
              v95 = "0";
            }

            else
            {
              v95 = "1";
            }

LABEL_476:
            std::string::append(a1, v95, 1uLL);
LABEL_434:
            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            goto LABEL_436;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "<"))
          {
            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v171, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v171, off_1E8337328);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v170, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v170, off_1E8337340);
            }

            v105 = AudioDSPGraph::Language::V1::strToLong(&v200, "less than", off_1E8337358);
            if (v105 >= AudioDSPGraph::Language::V1::strToLong(&v150, "less than", off_1E8337370))
            {
              v95 = "0";
            }

            else
            {
              v95 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "<="))
          {
            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v169, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v169, off_1E8337388);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v168, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v168, off_1E83373A0);
            }

            v106 = AudioDSPGraph::Language::V1::strToLong(&v200, "less than or equal", off_1E83373B8);
            if (v106 <= AudioDSPGraph::Language::V1::strToLong(&v150, "less than or equal", off_1E83373D0))
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, ">"))
          {
            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v167, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v167, off_1E83373E8);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v166, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v166, off_1E8337400);
            }

            v107 = AudioDSPGraph::Language::V1::strToLong(&v200, "greater than", off_1E8337418);
            if (v107 <= AudioDSPGraph::Language::V1::strToLong(&v150, "greater than", off_1E8337430))
            {
              v95 = "0";
            }

            else
            {
              v95 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, ">="))
          {
            memset(&v200, 0, sizeof(v200));
            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v165, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v165, off_1E8337448);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v164, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v164, off_1E8337460);
            }

            v108 = AudioDSPGraph::Language::V1::strToLong(&v200, "greater than or equal", off_1E8337478);
            if (v108 >= AudioDSPGraph::Language::V1::strToLong(&v150, "greater than or equal", off_1E8337490))
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "if"))
          {
            memset(&v200, 0, sizeof(v200));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v163, "preprocessor error: if: expected condition");
              AudioDSPGraph::ThrowException(1886548769, v163, off_1E83374A8);
            }

            if (v190 >= 0)
            {
              v109 = &__s;
            }

            else
            {
              v109 = __s;
            }

            v110 = AudioDSPGraph::Language::V1::strToLong(&v200, v109, off_1E83374C0);
            memset(&v150, 0, sizeof(v150));
            if (v110)
            {
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v191, &v150))
              {
                std::string::basic_string[abi:ne200100]<0>(v162, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v162, off_1E83374D8);
              }

              AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v191, v112);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v177, a2, &v150, 1);
              if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v92 = &v177;
              }

              else
              {
                v92 = v177.__r_.__value_.__r.__words[0];
              }

              if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v93 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v93 = v177.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if ((AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v191, v111) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v161, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v161, off_1E83374F0);
              }

              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v191, &v150))
              {
                goto LABEL_434;
              }

              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v177, a2, &v150, 1);
              if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v92 = &v177;
              }

              else
              {
                v92 = v177.__r_.__value_.__r.__words[0];
              }

              if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v93 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v93 = v177.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_432;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "ifdef"))
          {
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &__s))
            {
              std::string::basic_string[abi:ne200100]<0>(v160, "preprocessor error: expected name");
              AudioDSPGraph::ThrowException(1886548769, v160, off_1E8337508);
            }

            memset(&v200, 0, sizeof(v200));
            if (AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s))
            {
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v191, &v200))
              {
                std::string::basic_string[abi:ne200100]<0>(v159, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v159, off_1E8337520);
              }

              AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v191, v114);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v150, a2, &v200, 1);
              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v150;
              }

              else
              {
                v79 = v150.__r_.__value_.__r.__words[0];
              }

              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v150.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if ((AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v191, v113) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v158, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v158, off_1E8337538);
              }

              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v191, &v200))
              {
                goto LABEL_436;
              }

              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v150, a2, &v200, 1);
              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v150;
              }

              else
              {
                v79 = v150.__r_.__value_.__r.__words[0];
              }

              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v150.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_469;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "ifset"))
          {
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &__s))
            {
              std::string::basic_string[abi:ne200100]<0>(v157, "preprocessor error: expected name");
              AudioDSPGraph::ThrowException(1886548769, v157, off_1E8337550);
            }

            memset(&v200, 0, sizeof(v200));
            v115 = AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s);
            if (!v115)
            {
              goto LABEL_461;
            }

            memset(&v177, 0, sizeof(v177));
            (*(*v115 + 16))(&v150);
            if (v190 >= 0)
            {
              v117 = &__s;
            }

            else
            {
              v117 = __s;
            }

            v118 = AudioDSPGraph::Language::V1::strToLong(&v150, v117, off_1E8337568);
            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            v149.__pn_.__r_.__value_.__r.__words[0] = &v177;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v149);
            if (v118 == 1)
            {
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v191, &v200))
              {
                std::string::basic_string[abi:ne200100]<0>(v156, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v156, off_1E8337580);
              }

              AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v191, v119);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v150, a2, &v200, 1);
              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v150;
              }

              else
              {
                v79 = v150.__r_.__value_.__r.__words[0];
              }

              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v150.__r_.__value_.__l.__size_;
              }
            }

            else
            {
LABEL_461:
              if ((AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v191, v116) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v155, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v155, off_1E8337598);
              }

              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v191, &v200))
              {
                goto LABEL_436;
              }

              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v150, a2, &v200, 1);
              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v150;
              }

              else
              {
                v79 = v150.__r_.__value_.__r.__words[0];
              }

              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v150.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_469;
          }

          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "include"))
          {
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "osFeatureEnabled"))
            {
              v123 = AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s);
              if (!v123)
              {
                v137 = &__s;
                if (v190 < 0)
                {
                  v137 = __s;
                }

                caulk::make_string("preprocessor error: macro %s not found.", v140, v137);
                AudioDSPGraph::ThrowException(1852204065, v140, off_1E8337658);
              }

              v124 = v123;
              memset(&v200, 0, sizeof(v200));
              memset(&v150, 0, sizeof(v150));
              while (AudioDSPGraph::Language::V1::Preprocessor::parseActualArg(a2, &v191, &v200))
              {
                std::vector<std::string>::emplace_back<std::string const&>(&v150, &v200);
              }

              (*(*v124 + 16))(&v177, v124, a2, &v150);
              if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v125 = &v177;
              }

              else
              {
                v125 = v177.__r_.__value_.__r.__words[0];
              }

              if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v126 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v126 = v177.__r_.__value_.__l.__size_;
              }

              std::string::append(a1, v125, v126);
              if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v177.__r_.__value_.__l.__data_);
              }

              v177.__r_.__value_.__r.__words[0] = &v150;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v177);
              goto LABEL_436;
            }

            memset(&v200, 0, sizeof(v200));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
            {
              std::string::basic_string[abi:ne200100]<0>(v142, "preprocessor error: expected feature flag domain");
              AudioDSPGraph::ThrowException(1886548769, v142, off_1E8337628);
            }

            memset(&v150, 0, sizeof(v150));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v150))
            {
              std::string::basic_string[abi:ne200100]<0>(v141, "preprocessor error: expected feature flag name");
              AudioDSPGraph::ThrowException(1886548769, v141, off_1E8337640);
            }

            if (_os_feature_enabled_impl())
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

          memset(&v177, 0, sizeof(v177));
          if ((AudioDSPGraph::Language::V1::Preprocessor::parseString(&v191, &v177) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v154, "preprocessor error: expected filename");
            AudioDSPGraph::ThrowException(1886548769, v154, off_1E83375B0);
          }

          v121 = SHIBYTE(v177.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v177.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v121 = v177.__r_.__value_.__l.__size_;
            if (v177.__r_.__value_.__l.__size_ >= 3)
            {
              v122 = v177.__r_.__value_.__r.__words[0];
              if (*v177.__r_.__value_.__l.__data_ == 34)
              {
LABEL_492:
                if (v122->__r_.__value_.__s.__data_[v121 - 1] == 34)
                {
                  std::string::erase(&v177, 0, 1uLL);
                  if ((SHIBYTE(v177.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v128 = v177.__r_.__value_.__r.__words[0];
                    v127 = --v177.__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v127 = SHIBYTE(v177.__r_.__value_.__r.__words[2]) - 1;
                    *(&v177.__r_.__value_.__s + 23) = v127 & 0x7F;
                    v128 = &v177;
                  }

                  v128->__r_.__value_.__s.__data_[v127] = 0;
                }
              }

LABEL_497:
              v152.__val_ = 0;
              v152.__cat_ = std::system_category();
              v150.__r_.__value_.__s.__data_[0] = 0;
              v151 = 0;
              std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v149.__pn_, &v177);
              if (std::__fs::filesystem::path::__root_directory(&v149).__size_)
              {
                if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v149, &v152) && !v152.__val_)
                {
                  std::ifstream::basic_ifstream(&v200, &v177);
                  if (!v202)
                  {
                    v138 = &v177;
                    if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v138 = v177.__r_.__value_.__r.__words[0];
                    }

                    caulk::make_string("preprocessor error: cannot open include file '%s'", v147, v138);
                    AudioDSPGraph::ThrowException(1886548769, v147, off_1E83375E0);
                  }

                  v146.__r_.__value_.__r.__words[0] = *(v9 + *(v200.__r_.__value_.__r.__words[0] - 24));
                  v148 = 0;
                  std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v150, &v146, &v148);
                  std::ifstream::~ifstream(&v200);
                }
              }

              else
              {
                v133 = *(a2 + 6);
                v132 = *(a2 + 7);
                while (v133 != v132)
                {
                  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v200, v133);
                  std::__fs::filesystem::operator/[abi:ne200100](&v146, &v200, &v149);
                  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v200.__r_.__value_.__l.__data_);
                  }

                  if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v146, &v152) && !v152.__val_)
                  {
                    std::ifstream::basic_ifstream(&v200);
                    if (!v202)
                    {
                      v135 = &v177;
                      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v135 = v177.__r_.__value_.__r.__words[0];
                      }

                      caulk::make_string("preprocessor error: cannot open include file '%s'", v144, v135);
                      AudioDSPGraph::ThrowException(1886548769, v144, off_1E83375F8);
                    }

                    v148 = *(v9 + *(v200.__r_.__value_.__r.__words[0] - 24));
                    v145 = 0;
                    std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v150, &v148, &v145);
                    std::ifstream::~ifstream(&v200);
                  }

                  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v146.__r_.__value_.__l.__data_);
                  }

                  ++v133;
                }
              }

              if (SHIBYTE(v149.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v149.__pn_.__r_.__value_.__l.__data_);
              }

              if ((v151 & 1) == 0)
              {
                v136 = &v177;
                if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v136 = v177.__r_.__value_.__r.__words[0];
                }

                caulk::make_string("preprocessor error: cannot find include file '%s'", v143, v136);
                AudioDSPGraph::ThrowException(1886548769, v143, off_1E8337610);
              }

              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v129 = &v150;
              }

              else
              {
                v129 = v150.__r_.__value_.__r.__words[0];
              }

              std::string::basic_string[abi:ne200100]<0>(&v149, v129);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v200, a2, &v149, 1);
              if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v130 = &v200;
              }

              else
              {
                v130 = v200.__r_.__value_.__r.__words[0];
              }

              if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v131 = v200.__r_.__value_.__l.__size_;
              }

              std::string::append(a1, v130, v131);
              if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v200.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v149.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v149.__pn_.__r_.__value_.__l.__data_);
              }

              if (v151 == 1 && SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v150.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v177.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_439;
              }

              v120 = v177.__r_.__value_.__r.__words[0];
LABEL_438:
              operator delete(v120);
              goto LABEL_439;
            }
          }

          else if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) > 2)
          {
            if (v177.__r_.__value_.__s.__data_[0] == 34)
            {
              v122 = &v177;
              goto LABEL_492;
            }

            goto LABEL_497;
          }

          std::string::basic_string[abi:ne200100]<0>(v153, "preprocessor error: empty filename");
          AudioDSPGraph::ThrowException(1886548769, v153, off_1E83375C8);
        }

LABEL_183:
        if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &__s))
        {
          std::string::basic_string[abi:ne200100]<0>(v182, "preprocessor error: expected name");
          AudioDSPGraph::ThrowException(1886548769, v182, off_1E8337100);
        }

        if (AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s))
        {
          v58 = "1";
        }

        else
        {
          v58 = "0";
        }

        std::string::append(a1, v58, 1uLL);
        goto LABEL_439;
      }

      if (__s != 1701080693 || BYTE4(__s) != 102)
      {
        goto LABEL_355;
      }

      goto LABEL_153;
    }

    v24 = __sz;
    if (__sz <= 4)
    {
      if (__sz == 1)
      {
        v59 = *__s;
        if (v59 == 42)
        {
          goto LABEL_234;
        }

        if (v59 == 43)
        {
LABEL_194:
          v60 = 0;
          memset(&v200, 0, sizeof(v200));
          while (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
          {
            v61 = AudioDSPGraph::Language::V1::strToLong(&v200, "addition", off_1E8337118);
            v60 = caulk::numeric::exceptional_add<long>(v60, v61);
          }

          std::to_string(&v150, v60);
          if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v79 = &v150;
          }

          else
          {
            v79 = v150.__r_.__value_.__r.__words[0];
          }

          if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v80 = v150.__r_.__value_.__l.__size_;
          }

LABEL_469:
          std::string::append(a1, v79, v80);
          goto LABEL_434;
        }

        if ((v190 & 0x8000000000000000) == 0)
        {
          goto LABEL_297;
        }
      }

      else
      {
        if (__sz != 3)
        {
LABEL_261:
          if (v24 == 2)
          {
            if (*__s == 29295)
            {
              goto LABEL_267;
            }

            if ((v190 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }

            v24 = __sz;
          }

          if (v24 == 3)
          {
            if (*__s == 28257 && __s[2] == 100)
            {
              goto LABEL_313;
            }

            if ((v190 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v190) != 1)
              {
                if (HIBYTE(v190) == 2)
                {
                  goto LABEL_136;
                }

                if (HIBYTE(v190) == 3)
                {
                  goto LABEL_49;
                }

                goto LABEL_355;
              }

LABEL_298:
              v37 = __s;
              goto LABEL_299;
            }
          }

          v87 = __sz;
          if (__sz == 3)
          {
            if (*__s == 28526 && __s[2] == 116)
            {
LABEL_328:
              memset(&v200, 0, sizeof(v200));
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &v200))
              {
                std::string::basic_string[abi:ne200100]<0>(v181, "preprocessor error: not: expected condition");
                AudioDSPGraph::ThrowException(1886548769, v181, off_1E8337178);
              }

              if (v190 >= 0)
              {
                v100 = &__s;
              }

              else
              {
                v100 = __s;
              }

              if (AudioDSPGraph::Language::V1::strToLong(&v200, v100, off_1E8337190))
              {
                v85 = "0";
              }

              else
              {
                v85 = "1";
              }

LABEL_335:
              std::string::append(a1, v85, 1uLL);
LABEL_436:
              if ((SHIBYTE(v200.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_439;
              }

              v120 = v200.__r_.__value_.__r.__words[0];
              goto LABEL_438;
            }

            v87 = __sz;
          }

          if (v87 != 2)
          {
            goto LABEL_323;
          }

          if (*__s == 15677)
          {
            goto LABEL_308;
          }

          if (v190 < 0)
          {
LABEL_323:
            if (__sz != 1)
            {
              goto LABEL_355;
            }

            if (*__s == 45)
            {
              goto LABEL_300;
            }

            if (v190 < 0)
            {
              v99 = __s;
            }

            else
            {
              if (HIBYTE(v190) != 1)
              {
                goto LABEL_355;
              }

              v99 = &__s;
            }

            v37 = *v99;
            goto LABEL_345;
          }

LABEL_297:
          if (HIBYTE(v190) != 1)
          {
            goto LABEL_355;
          }

          goto LABEL_298;
        }

        v27 = __s;
        if (*__s == 25956 && __s[2] == 102)
        {
          goto LABEL_199;
        }

        if (*__s == 25964 && __s[2] == 116)
        {
          goto LABEL_199;
        }
      }

LABEL_260:
      v24 = __sz;
      goto LABEL_261;
    }

    if (__sz != 5)
    {
      if (__sz != 7)
      {
        if (__sz == 10)
        {
          if (*__s == 0x746E756F4374656CLL && *(__s + 4) == 29285)
          {
            goto LABEL_188;
          }

          goto LABEL_355;
        }

        goto LABEL_261;
      }

      if (*__s == 1853189987 && *(__s + 3) == 1919251566)
      {
        goto LABEL_188;
      }

      if (*__s == 1768318308 && *(__s + 3) == 1684369001)
      {
        goto LABEL_183;
      }

      goto LABEL_260;
    }

    if (*__s != 1701080693 || __s[4] != 102)
    {
      goto LABEL_355;
    }

LABEL_153:
    if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v191, &__s))
    {
      std::string::basic_string[abi:ne200100]<0>(v184, "preprocessor error: expected name");
      AudioDSPGraph::ThrowException(1886548769, v184, off_1E83370A0);
    }

    v42 = *(a2 + 1);
    if (*(a2 + 2) == v42)
    {
      v81 = 0;
      goto LABEL_258;
    }

    v139 = a4;
    v43 = v9;
    v44 = *(a2 + 4);
    v45 = (v42 + 8 * (v44 >> 9));
    v46 = *v45;
    v47 = *v45 + 8 * (v44 & 0x1FF);
    v48 = *(v42 + (((*(a2 + 5) + v44) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a2 + 5) + v44) & 0x1FF);
    while (1)
    {
      if (v47 == v48)
      {
        v81 = 0;
        goto LABEL_256;
      }

      v49 = *v47;
      v50 = *(*v47 + 31);
      if (v50 >= 0)
      {
        v51 = *(*v47 + 31);
      }

      else
      {
        v51 = *(*v47 + 16);
      }

      v52 = HIBYTE(v190);
      if (v190 < 0)
      {
        v52 = __sz;
      }

      if (v51 == v52)
      {
        v53 = v50 >= 0 ? v49 + 1 : v49[1];
        v54 = v190 >= 0 ? &__s : __s;
        if (!memcmp(v53, v54, v51))
        {
          break;
        }
      }

LABEL_172:
      v47 += 8;
      if (v47 - v46 == 4096)
      {
        v55 = v45[1];
        ++v45;
        v46 = v55;
        v47 = v55;
      }
    }

    if ((*(*v49 + 24))(v49))
    {
      v46 = *v45;
      goto LABEL_172;
    }

    v81 = *v47;
LABEL_256:
    v9 = v43;
    a4 = v139;
LABEL_258:
    AudioDSPGraph::Language::V1::Preprocessor::undef(a2, v81);
LABEL_439:
    if (SHIBYTE(v190) < 0)
    {
      operator delete(__s);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = __p.__r_.__value_.__r.__words[0];
LABEL_443:
      operator delete(v23);
    }

LABEL_444:
    v13 = v195;
LABEL_445:
    v4 = v13;
  }

  while (v13);
LABEL_536:
  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(v196);
  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  v134 = *MEMORY[0x1E69E9840];
}