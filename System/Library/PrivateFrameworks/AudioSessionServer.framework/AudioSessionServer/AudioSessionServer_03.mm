void std::vector<avas::server::ControlValue>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 80;
      v7 = v4 - 80;
      v8 = v4 - 80;
      do
      {
        v9 = *v8;
        v8 -= 80;
        (*v9)(v7);
        v6 -= 80;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned int,NSDictionary * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<avas::RouteIdentifier>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **applesauce::CF::ObjectRef<__SecTask *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void avas::server::ConstAudioSessionInfo::~ConstAudioSessionInfo(avas::server::ConstAudioSessionInfo *this)
{
  *this = &unk_28535AA40;
  avas::server::ConstAudioSessionInfo::DisableMicrophoneMonitor(this);

  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<avas::server::mx::MXAccessor>::reset[abi:ne200100](this + 15, 0);

  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void avas::server::AudioSessionInfo::~AudioSessionInfo(avas::server::AudioSessionInfo *this)
{
  *this = &unk_28535AAC0;
  (*(**(*(this + 15) + 8) + 64))(&cf);
  if (cf)
  {
    CFRelease(cf);
    MXNotificationNames = avas::GetMXNotificationNames(v2);
    v4 = *MXNotificationNames;
    v5 = MXNotificationNames[1];
    while (v4 != v5)
    {
      v6 = *v4;
      avas::server::AudioSessionInfo::RemoveMXNotificationListener(this, v6);

      ++v4;
    }

    v8 = qword_281338FB8;
    while (v7 != v8)
    {
      avas::server::AudioSessionInfo::RemoveCFNotificationListener(this, *v7++);
    }
  }

  std::mutex::~mutex((this + 472));
  std::__list_imp<NSDictionary * {__strong}>::clear(this + 56);
  cf = this + 416;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&cf);
  std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::destroy(this + 384, *(this + 49));
  v9 = *(this + 45);
  if (v9)
  {
    *(this + 46) = v9;
    operator delete(v9);
  }

  if (*(this + 352) == 1)
  {
  }

  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  std::unique_ptr<avas::server::PickableRoute>::reset[abi:ne200100](this + 31, 0);

  avas::server::ConstAudioSessionInfo::~ConstAudioSessionInfo(this);
}

{
  avas::server::AudioSessionInfo::~AudioSessionInfo(this);

  JUMPOUT(0x245CEEB60);
}

uint64_t avas::server::AudioSessionInfo::RemoveMXNotificationListener(avas::server::AudioSessionInfo *this, NSString *a2)
{
  v3 = a2;
  CMNotificationCenterGetDefaultLocalCenter();
  avas::server::ConstAudioSessionInfo::ToOpaqueRef(this);
  (*(**(*(this + 15) + 8) + 64))(&cf);
  v4 = CMNotificationCenterRemoveListener();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void sub_241745F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);

  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::RemoveCFNotificationListener(avas::server::AudioSessionInfo *this, const __CFString *a2)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v5 = avas::server::ConstAudioSessionInfo::ToOpaqueRef(this);

  CFNotificationCenterRemoveObserver(LocalCenter, v5, a2, 0);
}

uint64_t avas::server::ConstAudioSessionInfo::GetSourceSessionID(avas::server::ConstAudioSessionInfo *this)
{
  result = (*(*this + 16))(this);
  if (*(this + 92) == 1)
  {
    return *(this + 22);
  }

  return result;
}

BOOL avas::server::ConstAudioSessionInfo::IsBackedByMXSession(avas::server::ConstAudioSessionInfo *this, CFTypeRef a2)
{
  (*(**(*(this + 15) + 8) + 64))(&cf);
  v3 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3 == a2;
}

void avas::server::AudioSessionInfo::ResetAllPlayers(__int128 **this)
{
  v1 = this;
  v17[24] = *MEMORY[0x277D85DE8];
  __p = 0;
  v15 = 0;
  v16 = 0;
  v2 = this[45];
  v3 = this[46];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      if ((*(v2 + 12) & 0x10) == 0)
      {
        if (v4 >= v16)
        {
          v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - __p) >> 3);
          v7 = v6 + 1;
          if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v16 - __p) >> 3) > v7)
          {
            v7 = 0x5555555555555556 * ((v16 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v16 - __p) >> 3) >= 0x555555555555555)
          {
            v8 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v8 = v7;
          }

          if (v8)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::AudioSessionInfo::PlayerState>>(&__p, v8);
          }

          v9 = 8 * ((v4 - __p) >> 3);
          v10 = *v2;
          *(v9 + 16) = *(v2 + 2);
          *v9 = v10;
          v4 = (24 * v6 + 24);
          memcpy((24 * v6 - (v15 - __p)), __p, v15 - __p);
          v11 = __p;
          __p = (24 * v6 - (v15 - __p));
          v15 = v4;
          v16 = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          v5 = *v2;
          *(v4 + 2) = *(v2 + 2);
          *v4 = v5;
          v4 += 24;
        }

        v15 = v4;
      }

      v2 = (v2 + 24);
    }

    while (v2 != v3);
    v1 = this;
    if (__p != v4)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v17);
    }
  }

  avas::server::ConstAudioSessionInfo::DisableMicrophoneMonitor(v1);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2417466D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::ConstAudioSessionInfo::DisableMicrophoneMonitor(avas::server::ConstAudioSessionInfo *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + 21);
  v3 = +[AVAudioMicrophoneMonitor sharedInstance];
  if (v3)
  {
    v4 = (*(*this + 16))(this);
    caulk::platform::process_name(v2);
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v6 = [v3 setState:0 clientType:0 clientID:v4 clientDescription:p_p];
    v7 = v6;
    if ((v10 & 0x80000000) == 0)
    {
      if (!v6)
      {
        goto LABEL_10;
      }

LABEL_9:
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[17],char [17],0>(&__p);
    }

    operator delete(__p);
    if (v7)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
}

void sub_241746BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v22 - 65) < 0)
  {
    operator delete(*(v22 - 88));
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a13);
  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::SetPickedRouteAtTimeOfInterruption(id **a1, id **a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *a2 = 0;
  v4 = std::unique_ptr<avas::server::PickableRoute>::reset[abi:ne200100](a1 + 31, v3);
  if (a1[31])
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(buf);
  }

  v5 = *avas::server::gSessionServerLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = ((*a1)[2])(a1);
    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(a1, v6, v12);
    v9[0] = 0;
    v10 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2417470BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va);
  if (*(v6 - 65) < 0)
  {
    operator delete(*(v6 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::AudioSessionInfo::CachedStateString@<X0>(avas::server::AudioSessionInfo *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "state: ", 7);
  v5 = *(this + 76);
  if (v5 >= 3)
  {
    v20 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v20 process:? delegate:?];
  }

  v6 = v4;
  v7 = off_278CEAD78[v5];
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  if (*(this + 76) == 2)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " by ", 4);
    v10 = *(this + 335);
    if (v10 >= 0)
    {
      v11 = this + 312;
    }

    else
    {
      v11 = *(this + 39);
    }

    if (v10 >= 0)
    {
      v12 = *(this + 335);
    }

    else
    {
      v12 = *(this + 40);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", category: ", 12);
  v13 = *(this + 279);
  if (v13 < 0)
  {
    if (*(this + 33))
    {
      goto LABEL_12;
    }

LABEL_20:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "(not set/unknown)", 17);
    goto LABEL_21;
  }

  if (!*(this + 279))
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v13 >= 0)
  {
    v14 = this + 256;
  }

  else
  {
    v14 = *(this + 32);
  }

  if (v13 >= 0)
  {
    v15 = *(this + 279);
  }

  else
  {
    v15 = *(this + 33);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v14, v15);
LABEL_21:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", mode: ", 8);
  v16 = *(this + 303);
  if (v16 < 0)
  {
    if (*(this + 36))
    {
      goto LABEL_23;
    }
  }

  else if (*(this + 303))
  {
LABEL_23:
    if (v16 >= 0)
    {
      v17 = this + 280;
    }

    else
    {
      v17 = *(this + 35);
    }

    if (v16 >= 0)
    {
      v18 = *(this + 303);
    }

    else
    {
      v18 = *(this + 36);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v17, v18);
    goto LABEL_32;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "(not set/unknown)", 17);
LABEL_32:
  std::ostringstream::str[abi:ne200100](&v21, a2);
  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x245CEEAC0](&v25);
}

void sub_24174741C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245CEEAC0](a1 + 112);
  return a1;
}

uint64_t avas::server::AudioSessionInfo::PlayStateString@<X0>(avas::server::AudioSessionInfo *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v4 = MEMORY[0x245CEE9C0](&v11, *(this + 48));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " running inputs, ", 17);
  v6 = MEMORY[0x245CEE9C0](v5, *(this + 47));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " running outputs, ", 18);
  v7 = MEMORY[0x245CEE9C0](&v11, *(this + 53));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " running processors, ", 21);
  v9 = MEMORY[0x245CEE9C0](v8, *(this + 54));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " active nodes", 13);
  std::ostringstream::str[abi:ne200100](&v11, a2);
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x245CEEAC0](&v15);
}

void sub_2417477A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::DebugStateStrings(avas::server::AudioSessionInfo *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  avas::server::AudioSessionInfo::CachedStateString(this, __p);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
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

    v36.__end_cap_.__value_ = a2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v10);
    }

    v11 = 24 * v7;
    v12 = *__p;
    *(v11 + 16) = v35;
    *v11 = v12;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v13 = 24 * v7 + 24;
    v14 = *(a2 + 8) - *a2;
    v15 = 24 * v7 - v14;
    memcpy((v11 - v14), *a2, v14);
    v16 = *a2;
    *a2 = v15;
    *(a2 + 8) = v13;
    v17 = *(a2 + 16);
    *(a2 + 16) = 0;
    v36.__end_ = v16;
    v36.__end_cap_.__value_ = v17;
    v36.__first_ = v16;
    v36.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v36);
    v18 = SHIBYTE(v35);
    *(a2 + 8) = v13;
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *__p;
    *(v5 + 16) = v35;
    *v5 = v6;
    *(a2 + 8) = v5 + 24;
  }

  avas::server::AudioSessionInfo::PlayStateString(this, __p);
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  if (v20 >= v19)
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3);
    v23 = v22 + 1;
    if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v24 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a2) >> 3);
    if (2 * v24 > v23)
    {
      v23 = 2 * v24;
    }

    if (v24 >= 0x555555555555555)
    {
      v25 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v25 = v23;
    }

    v36.__end_cap_.__value_ = a2;
    if (v25)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v25);
    }

    v26 = 24 * v22;
    v27 = *__p;
    *(v26 + 16) = v35;
    *v26 = v27;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v28 = 24 * v22 + 24;
    v29 = *(a2 + 8) - *a2;
    v30 = 24 * v22 - v29;
    memcpy((v26 - v29), *a2, v29);
    v31 = *a2;
    *a2 = v30;
    *(a2 + 8) = v28;
    v32 = *(a2 + 16);
    *(a2 + 16) = 0;
    v36.__end_ = v31;
    v36.__end_cap_.__value_ = v32;
    v36.__first_ = v31;
    v36.__begin_ = v31;
    std::__split_buffer<std::string>::~__split_buffer(&v36);
    v33 = SHIBYTE(v35);
    *(a2 + 8) = v28;
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v21 = *__p;
    *(v20 + 16) = v35;
    *v20 = v21;
    *(a2 + 8) = v20 + 24;
  }
}

void sub_241747A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::SetInterrupted(avas::server::AudioSessionInfo *this, int a2, const __CFString *a3)
{
  v4 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (!a2 && *(this + 225) == 1)
  {
    v6 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "AudioSessionInfo.mm";
      v14 = 1024;
      v15 = 501;
      _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session interrupt stopped", &v12, 0x12u);
    }

    v7 = this;
    v8 = 0;
    v9 = 0;
LABEL_11:
    avas::server::AudioSessionInfo::SetCachedActivationState(v7, v8, v9);
    goto LABEL_12;
  }

  if (a2 == 1 && !*(this + 225))
  {
    v10 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "AudioSessionInfo.mm";
      v14 = 1024;
      v15 = 504;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session interrupt started", &v12, 0x12u);
    }

    v7 = this;
    v8 = 2;
    v9 = a3;
    goto LABEL_11;
  }

LABEL_12:
  *(this + 225) = v4;
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t avas::server::AudioSessionInfo::SetSiblingPlayerState(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v37 = a2;
  if ((a4 & 2) == 0)
  {
    avas::server::AudioSessionInfo::SetSiblingPlayerState();
  }

  if ((a6 & 0x71756575) == 0)
  {
    avas::server::AudioSessionInfo::SetSiblingPlayerState();
  }

  for (i = *(a1 + 392); i; i = *i)
  {
    v12 = i[4];
    if (v12 <= a2)
    {
      if (v12 >= a2)
      {
        goto LABEL_9;
      }

      ++i;
    }
  }

  v38 = &v37;
  v13 = std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::__emplace_unique_key_args<void const*,std::piecewise_construct_t const&,std::tuple<void const* const&>,std::tuple<>>(a1 + 384, &v37);
  std::vector<avas::server::AudioSessionInfo::PlayerState>::__assign_with_size[abi:ne200100]<avas::server::AudioSessionInfo::PlayerState const*,avas::server::AudioSessionInfo::PlayerState const*>(v13 + 5, 0, 0, 0);
LABEL_9:
  v14 = std::map<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>::at(a1 + 384, &v37);
  v15 = v14;
  v16 = *v14;
  v17 = v14[1];
  if (*v14 == v17)
  {
LABEL_13:
    if (!a5)
    {
      goto LABEL_32;
    }

    v19 = v14[2];
    if (v17 >= v19)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3);
      if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v16) >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x555555555555555)
      {
        v24 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::AudioSessionInfo::PlayerState>>(v14, v24);
      }

      v29 = 24 * v21;
      *v29 = a3;
      *(v29 + 8) = a5;
      *(v29 + 12) = a4;
      *(v29 + 16) = a6;
      v17 = 24 * v21 + 24;
      v30 = v14[1] - *v14;
      v31 = v29 - v30;
      memcpy((v29 - v30), *v14, v30);
      v32 = *v15;
      *v15 = v31;
      v15[1] = v17;
      v15[2] = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      *v17 = a3;
      *(v17 + 8) = a5;
      *(v17 + 12) = a4;
      *(v17 + 16) = a6;
      v17 += 24;
    }
  }

  else
  {
    v18 = 0;
    while (*&v16[v18] != a3)
    {
      v18 += 24;
      if (&v16[v18] == v17)
      {
        goto LABEL_13;
      }
    }

    if (a5)
    {
      v20 = &v16[v18];
      *(v20 + 2) = a5;
      *(v20 + 3) = a4;
      goto LABEL_32;
    }

    v25 = &v16[v18];
    v26 = &v16[v18 + 24];
    v27 = v17 - v16 - v18;
    v28 = v27 - 24;
    if (v26 != v17)
    {
      memmove(v25, v26, v27 - 28);
    }

    v17 = &v25[v28];
  }

  v15[1] = v17;
LABEL_32:
  v33 = *v15;
  if (*v15 == v17)
  {
    v34 = 0;
  }

  else
  {
    LODWORD(v34) = 0;
    do
    {
      if (v33[2] == 1)
      {
        v34 = (v34 + 1);
      }

      else
      {
        v34 = v34;
      }

      v33 += 6;
    }

    while (v33 != v17);
  }

  v38 = &v37;
  v35 = std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::__emplace_unique_key_args<void const*,std::piecewise_construct_t const&,std::tuple<void const* const&>,std::tuple<>>(a1 + 384, &v37);
  if (v35[5] == v35[6])
  {
    std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::__erase_unique<void const*>((a1 + 384), &v37);
  }

  return v34;
}

void *std::map<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void ___ZN4avas6server16AudioSessionInfo27DeferPropertyChangeCallbackEPK8NSStringP12NSDictionaryb_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (v3 != v2)
  {
    v5 = *(a1 + 72);
    do
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        v7 = *v3;
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v8 = std::__shared_weak_count::lock(v6);
        if (v8)
        {
          v9 = v8;
          if (v7)
          {
            v10 = *(v7 + 2);
            v11 = *avas::server::gSessionServerLog(v8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              v16 = "AudioSessionInfo.mm";
              v17 = 1024;
              v18 = 729;
              v19 = 2112;
              v20 = v4;
              v21 = 1024;
              v22 = v10;
              _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Distributing %@ to remote client 0x%x", buf, 0x22u);
            }

            avas::server::AudioSessionRemoteClient::DeferPropertyChangeCallback(v7, v4, v14, v5);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        std::__shared_weak_count::__release_weak(v6);
      }

      v3 += 16;
    }

    while (v3 != v2);
  }

  v12 = v4;

  v13 = *MEMORY[0x277D85DE8];
}

void sub_241748050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  std::__shared_weak_count::__release_weak(v13);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_48c95_ZTSNSt3__16vectorINS_8weak_ptrIN4avas6server24AudioSessionRemoteClientEEENS_9allocatorIS5_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>::__init_with_size[abi:ne200100]<std::weak_ptr<avas::server::AudioSessionRemoteClient>*,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
}

void applesauce::CF::BooleanRef::~BooleanRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2417481E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<__CFString const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void avas::server::AudioSessionInfo::DebugState::~DebugState(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void OS::CF::String::~String(OS::CF::String *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x245CEEB60);
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_241748448(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *std::vector<avas::server::AudioSessionInfo::PlayerState>::__assign_with_size[abi:ne200100]<avas::server::AudioSessionInfo::PlayerState const*,avas::server::AudioSessionInfo::PlayerState const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<avas::server::AudioSessionInfo::PlayerState>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19 - 4);
    }

    v18 = &v8[v19];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        v16 += 24;
        v14 += 24;
        v15 += 24;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v6[1] = v18;
  return result;
}

void std::vector<avas::server::AudioSessionInfo::PlayerState>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::AudioSessionInfo::PlayerState>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<avas::server::AudioSessionInfo> *,std::weak_ptr<avas::server::AudioSessionInfo> *,std::weak_ptr<avas::server::AudioSessionInfo> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>::__init_with_size[abi:ne200100]<std::weak_ptr<avas::server::AudioSessionRemoteClient>*,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241748894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionRemoteClient>>,std::weak_ptr<avas::server::AudioSessionRemoteClient>*,std::weak_ptr<avas::server::AudioSessionRemoteClient>*,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<avas::server::AudioSessionRemoteClient>>,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<avas::server::AudioSessionRemoteClient>>,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<avas::server::AudioSessionRemoteClient>>,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<avas::server::AudioSessionRemoteClient>>,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v1 -= 16;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void std::__shared_ptr_emplace<avas::server::AudioSessionRemoteClientManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535ABD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

void avas::server::AudioSessionRemoteClientManager::~AudioSessionRemoteClientManager(avas::server::AudioSessionRemoteClientManager *this)
{
  v3 = (this + 24);
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void avas::server::mx::MXAccessor::~MXAccessor(avas::server::mx::MXAccessor *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void std::__shared_ptr_emplace<avas::server::PropertyStorage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535AC08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

void std::__shared_ptr_emplace<avas::server::PropertyStorage>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
}

id **std::unique_ptr<avas::server::PickableRoute>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x245CEEB60);
  }

  return result;
}

void std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[13]>();
}

void *std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::__emplace_unique_key_args<void const*,std::piecewise_construct_t const&,std::tuple<void const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::__erase_unique<void const*>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t anonymous namespace::deviceSupportsAudioReturnChannel(_anonymous_namespace_ *this)
{
  {
  }
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
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

void anonymous namespace::UpdateAudioAppMuteState(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = (*(**a1 + 16))(*a1);
  v9 = avas::server::LegacySessionManager::Instance(v8);
  avas::server::LegacySessionManager::FindAudioApplicationForSession(v9, a1, 1, &v19);
  if (v19)
  {
    {
      avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
    }

    v11 = v19;
    if (avas::AudioSessionMuteEnabled(void)::enabled == 1)
    {
      avas::server::AudioApplicationInfo::UpdateSessionPlayStates(v19, v8, a3);
      if (a4)
      {
        avas::server::AudioApplicationInfo::IssueInputMuteNotification(v19);
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      updated = avas::server::AudioApplicationInfo::UpdateProperty(v11, @"InputMute", v13, 1634744890, a4);

      if (updated)
      {
        v16 = *avas::server::gSessionServerLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = avas::server::AudioApplicationInfo::DebugString(v19);
          *buf = 136316162;
          v22 = "AudioSessionServerImpPlayState.mm";
          v23 = 1024;
          v24 = 69;
          v25 = 1024;
          v26 = updated;
          v27 = 1024;
          v28 = v8;
          v29 = 2080;
          v30 = v17;
          _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d error (code: %d) updating inputMuted for session: 0x%x, audioApp: %s", buf, 0x28u);
        }
      }
    }
  }

  else
  {
    v12 = *avas::server::gSessionServerLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "AudioSessionServerImpPlayState.mm";
      v23 = 1024;
      v24 = 52;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d error - no audioApp instances found for session: 0x%x", buf, 0x18u);
    }
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2417493F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[26],char [26],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[26]>();
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[77],char [77],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[77]>();
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Could not construct");
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_241749918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[30],int &>(CFStringRef *a1, char *a2, _DWORD *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Could not construct");
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__p[0]) = *a3;
  v8 = CFNumberCreate(0, kCFNumberIntType, __p);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](v11, "Could not construct");
  }

  return a1;
}

void sub_241749B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15 + 1);
  applesauce::CF::TypeRef::~TypeRef(v15);
  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJjNS_10shared_ptrIN4avas6server16AudioSessionInfoEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJjSC_EEEEEEDcSM_DpT0_(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[15],char [15],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[15]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[44],char [44],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[44]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[89],char [89],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[89]>();
}

void avas::server::AudioAppSessionStates::GetSessions(avas::server::AudioAppSessionStates **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    while (1)
    {
      v5 = *(v3 + 6);
      if (v5)
      {
        break;
      }

LABEL_11:
      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
      if (v9 == v2)
      {
        return;
      }
    }

    v6 = *(v3 + 5);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *&v11 = 0;
    v7 = std::__shared_weak_count::lock(v5);
    *(&v11 + 1) = v7;
    if (v7)
    {
      *&v11 = v6;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else if (!v11)
    {
LABEL_8:
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      std::__shared_weak_count::__release_weak(v5);
      goto LABEL_11;
    }

    std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::push_back[abi:ne200100](a2, &v11);
    v7 = *(&v11 + 1);
    goto LABEL_8;
  }
}

void sub_241749F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_weak(v10);
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void avas::server::AudioAppSessionStates::RemoveSession(avas::server::AudioAppSessionStates *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = avas::server::AudioAppSessionStates::AppState(this);
  v7 = *this;
  if (*this != (this + 8))
  {
    v8 = v6;
    v9 = HIBYTE(v6);
    v10 = *(this + 2);
    do
    {
      if (*(v7 + 8) == a2)
      {
        v11 = std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::erase(this, v7);
      }

      else
      {
        v12 = *(v7 + 1);
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v11 = *(v7 + 2);
            v13 = *v11 == v7;
            v7 = v11;
          }

          while (!v13);
        }
      }

      v7 = v11;
    }

    while (v11 != (this + 8));
    if (v10 != *(this + 2))
    {
      v16 = avas::server::AudioAppSessionStates::AppState(this);
      if (v9 == HIBYTE(v16) && (v9 & 1) != 0)
      {
        if (v8 != v16)
        {
LABEL_18:
          *a3 = v16 | 0x10000;
LABEL_21:
          *(a3 + 8) = 1;
          return;
        }
      }

      else if (v9 != HIBYTE(v16))
      {
        goto LABEL_18;
      }

      *a3 = 0;
      goto LABEL_21;
    }
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = avas::server::AudioAppSessionStates::DebugString(this);
  v17 = [v14 stringWithFormat:@"SessionID 0x%x not found (%@)", a2, v15];

  *a3 = NSErrorWithString(v17);
  *(a3 + 8) = 0;
}

uint64_t avas::server::AudioAppSessionStates::IsAnySessionRecording(avas::server::AudioAppSessionStates **this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this == (this + 1))
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 6);
    if (v3)
    {
      break;
    }

LABEL_8:
    v7 = *(v2 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v2 + 2);
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
    if (v8 == v1)
    {
      return 0;
    }
  }

  v4 = *(v2 + 5);
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v5 = *(v2 + 65);
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v3);
    goto LABEL_8;
  }

  if (!v4 || (v5 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  std::__shared_weak_count::__release_weak(v3);
  return 1;
}

void avas::server::AudioAppSessionStates::UpdateSessionRecordingState(avas::server::AudioAppSessionStates *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v5 = *(this + 1);
  if (v5)
  {
    v8 = (this + 8);
    do
    {
      v9 = v5[8];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[2 * v11];
    }

    while (v5);
    if (v8 != (this + 8) && v8[8] <= a2)
    {
      v13 = std::map<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>::at(this, &v20);
      v14 = v13;
      if (v13[25] == a3)
      {
        v15 = *avas::server::gSessionServerLog(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v22 = "AudioAppSessionStates.mm";
          v23 = 1024;
          v24 = 178;
          v25 = 1024;
          v26 = a3;
          _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session already matches desired recording state: %d", buf, 0x18u);
        }

        goto LABEL_20;
      }

      v16 = avas::server::AudioAppSessionStates::AppState(this);
      v14[25] = a3;
      v17 = avas::server::AudioAppSessionStates::AppState(this);
      if (HIBYTE(v16) == HIBYTE(v17) && (v16 & 0x100) != 0)
      {
        if (v16 != v17)
        {
LABEL_18:
          *a4 = v17 | 0x10000;
LABEL_21:
          *(a4 + 8) = 1;
          v18 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      else if (HIBYTE(v16) != HIBYTE(v17))
      {
        goto LABEL_18;
      }

LABEL_20:
      *a4 = 0;
      goto LABEL_21;
    }
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find session 0x%x in session map", a2];
  *a4 = NSErrorWithString(v19);
  *(a4 + 8) = 0;
  v12 = *MEMORY[0x277D85DE8];
}

void avas::server::AudioAppSessionStates::UpdateSessionIsConsideredForInputMuteState(avas::server::AudioAppSessionStates *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v19 = a2;
  if ((a3 & 1) == 0)
  {
    avas::server::AudioAppSessionStates::UpdateSessionIsConsideredForInputMuteState();
  }

  v6 = *(this + 1);
  if (v6)
  {
    v8 = (this + 8);
    do
    {
      v9 = v6[8];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *&v6[2 * v11];
    }

    while (v6);
    if (v8 != (this + 8) && v8[8] <= a2)
    {
      v12 = std::map<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>::at(this, &v19);
      if (*(v12 + 26) == a3)
      {
LABEL_14:
        *a4 = 0;
LABEL_21:
        *(a4 + 8) = 1;
        return;
      }

      v13 = v12;
      v14 = avas::server::AudioAppSessionStates::AppState(this);
      v15 = v14;
      v16 = HIBYTE(v14);
      *(v13 + 26) = a3;
      v17 = avas::server::AudioAppSessionStates::AppState(this);
      if (v16 == HIBYTE(v17) && (v16 & 1) != 0)
      {
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

      else if (v16 == HIBYTE(v17))
      {
        goto LABEL_14;
      }

      *a4 = v17 | 0x10000;
      goto LABEL_21;
    }
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find session 0x%x in session map", a2];
  *a4 = NSErrorWithString(v18);
  *(a4 + 8) = 0;
}

uint64_t *std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

id avas::server::TranslateSetter_HostProcessAttribution(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = *MEMORY[0x277D27380];
    v8 = *MEMORY[0x277D27378];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v20[1] = v8;
        v21[0] = v10;
        v20[0] = v7;
        v11 = [MEMORY[0x277CBEA90] dataWithBytes:a2 length:32];
        v21[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
        [v4 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t avas::server::GetVirtualAudioPlugin(avas::server *this, unsigned int *a2)
{
  v11 = @"com.apple.audio.CoreAudio.VirtualAudio";
  ioDataSize = 32;
  *&inAddress.mSelector = *"ibipbolg";
  inAddress.mElement = 0;
  outData = &v11;
  v7 = 8;
  v8 = this;
  v9 = 4;
  LODWORD(result) = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &outData);
  if (*this)
  {
    v4 = 0;
  }

  else
  {
    v4 = -50;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

uint64_t avas::server::require_acq::MuteAudioSessions(avas::server *a1, uint64_t a2, uint64_t a3, const audit_token_t *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = *avas::server::gSessionServerLog(a1);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    v11 = "Unmuting";
    v12 = *(a3 + 8);
    *buf = 136315906;
    if (a2)
    {
      v11 = "Muting";
    }

    v33 = "AudioSessionServerImp_iOS.mm";
    v34 = 1024;
    v35 = 228;
    v36 = 2080;
    v37 = v11;
    v38 = 2048;
    v39 = v12;
    _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s %lu audio sessions", buf, 0x26u);
  }

  v14 = *a3;
  v13 = *(a3 + 8);
  if (!*a3 && v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v13)
  {
    v15 = "UNMUTED";
    if (a2)
    {
      v15 = "MUTED";
    }

    v29 = v15;
    v30 = 0;
    v16 = 4 * v13;
    *&v10 = 136315650;
    v28 = v10;
    do
    {
      if (!v14)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v17 = *avas::server::gSessionServerLog(v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v14;
        *buf = 136315906;
        v33 = "AudioSessionServerImp_iOS.mm";
        v34 = 1024;
        v35 = 233;
        v36 = 2080;
        v37 = v29;
        v38 = 1024;
        LODWORD(v39) = v18;
        _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting input mute: %s session: 0x%x", buf, 0x22u);
      }

      v19 = *(a1 + 1);
      v31[0] = *a1;
      v31[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *v14;
      v21 = [MEMORY[0x277CCABB0] numberWithBool:{a2, v28}];
      v22 = avas::server::require_acq::MuteSessionInput(v31, v20, a4, v21, 0);

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v22)
      {
        if (v22 != 561210739)
        {
          avas::server::require_acq::MuteAudioSessions(v14, v22);
        }

        v23 = *avas::server::gSessionServerLog(v9);
        v9 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          v24 = *v14;
          *buf = v28;
          v33 = "AudioSessionServerImp_iOS.mm";
          v34 = 1024;
          v35 = 241;
          v36 = 1024;
          LODWORD(v37) = v24;
          _os_log_impl(&dword_241701000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to input mute session 0x%x since not found (recently destroyed?)", buf, 0x18u);
        }

        LOBYTE(v30) = 1;
      }

      else
      {
        BYTE4(v30) = 1;
      }

      v14 = (v14 + 4);
      v16 -= 4;
    }

    while (v16);
    if (v30)
    {
      v25 = 561210739;
    }

    else
    {
      v25 = 0;
    }

    if ((v30 & 0x100000000) != 0)
    {
      result = 0;
    }

    else
    {
      result = v25;
    }
  }

  else
  {
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24174ABC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::forbid_acq::IsAudioAppAllInputSessionsMuted(avas::server::LegacySessionManager *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = avas::server::LegacySessionManager::Instance(a1);
  avas::server::LegacySessionManager::FindAudioApplicationForSession(v2, a1, 1, &v11);
  v3 = v11;
  if (v11)
  {
    avas::server::AudioApplicationInfo::GetProperty(v11, @"InputMute", 1634744890, buf);
    v4 = *&v14[4];
    v5 = v4;
    if (!*buf && v4)
    {
      v6 = [v4 BOOLValue];

      goto LABEL_9;
    }
  }

  v7 = *avas::server::gSessionServerLog(v3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = (*(**a1 + 16))();
    *buf = 136315650;
    *v14 = "AudioSessionServerImp_iOS.mm";
    *&v14[8] = 1024;
    *&v14[10] = 366;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to get audio app input muted state for session: 0x%x", buf, 0x18u);
  }

  v6 = 0;
LABEL_9:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_24174AD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::forbid_acq::MuteSessionInputsForAudioApp(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = avas::server::LegacySessionManager::Instance(v3);
    avas::server::LegacySessionManager::FindAudioApplicationForSession(v5, a1, 1, &v8);
    if (v8)
    {
      v6 = avas::server::AudioApplicationInfo::SetProperty(v8, @"InputMute", v4);
    }

    else
    {
      v6 = 561210739;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v6 = 4294967246;
  }

  return v6;
}

void sub_24174AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

os_unfair_lock_s *avas::server::forbid_acq::SpatialPreferences(void *a1, uint64_t a2, const audit_token_t *a3)
{
  v5 = a1;
  avas::server::ForbidAudioControlQueue(v5);
  if (!v5)
  {
    v21 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v21 process:? delegate:?];
  }

  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v30, a2, a3, 1);
  v6 = v30;
  if (!v30)
  {
    v22 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v22 process:? delegate:?];
  }

  v7 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_opaque_low = LOBYTE(v6[88]._os_unfair_lock_opaque);
  if (os_unfair_lock_opaque_low != 1)
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = *&v6[86]._os_unfair_lock_opaque;
  if (v7)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_10:
  if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    v10 = v30;
    if (!v30)
    {
      v23 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v23 process:? delegate:?];
    }

    v11 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(**(*&v10[30]._os_unfair_lock_opaque + 8) + 64))(&cf);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = v30;
    if (!v30)
    {
      v24 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v24 process:? delegate:?];
    }

    v13 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = v12;
    v28 = v13;
    v14 = avas::server::forbid_acq::CopyCMSessionAudioMode(&v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    avas::server::GetSpatialPreferences(v5, a2, v14, &v27);
    v15 = v30;
    if (!v30)
    {
      v25 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v25 process:? delegate:?];
    }

    v16 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::AudioSessionInfo::SetSpatialPreferences(v15, v27);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v17 = v30;
    if (!v30)
    {
      v26 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v26 process:? delegate:?];
    }

    v18 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v28];
    avas::server::ConstAudioSessionInfo::SetAVASProperty(v17, @"IsSpatialEnabled", v19);

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v9 = v27;

    if (cf)
    {
      CFRelease(cf);
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v30);

  return v9;
}

void sub_24174B104(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, const void *);

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va1);

  _Unwind_Resume(a1);
}

uint64_t avas::EnhanceDialogueBriocheEnabled(avas *this)
{
  {
    avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled = _os_feature_enabled_impl();
  }

  return avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled;
}

id anonymous namespace::TranslateGetter_HostProcessAttribution(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    v6 = *MEMORY[0x277D27380];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) valueForKey:{v6, v11}];
        [v2 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id avas::server::forbid_acq::SetPropertyMXOnAppSessions(_OWORD *a1, _OWORD *a2, unsigned int a3, void *a4, void *a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v36 = a4;
  v35 = a5;
  v9 = avas::server::LegacySessionManager::Instance(v35);
  v10 = a1[1];
  *buf = *a1;
  *&buf[16] = v10;
  v53 = 1;
  v11 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v11;
  v54 = audit_token_to_pid(&atoken);
  v12 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v12;
  v39 = 1;
  v13 = a2[1];
  *v45.val = *a2;
  *&v45.val[4] = v13;
  v40 = audit_token_to_pid(&v45);
  v45.val[0] = 0;
  LOBYTE(v45.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v9, buf, &atoken, a3, &v45, &v41);
  if (!v41 || !v43)
  {
    v24 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA450];
    v51 = @"Failed to verify AudioApp permissions";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277CCA590] code:1701737535 userInfo:v25];

    goto LABEL_26;
  }

  avas::server::AudioApplicationInfo::GetSessions(v41, &atoken);
  if (*atoken.val == *&atoken.val[2])
  {
    updated = avas::server::AudioApplicationInfo::UpdateProperty(v41, v36, v35, 1836595770, 0);
    if (!updated)
    {
      v26 = 0;
      goto LABEL_25;
    }

    v28 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:avas::server::AudioApplicationInfo::DebugString(v41)];
    v14 = [v28 stringWithFormat:@"Failed to update MX cache in audio application info (app: %@)", v29];

    v30 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    v47 = v14;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v23 = [v30 errorWithDomain:*MEMORY[0x277CCA590] code:updated userInfo:v31];
  }

  else
  {
    v14 = 0;
    v15 = *MEMORY[0x277CCA590];
    v34 = *MEMORY[0x277CCA450];
    v17 = **atoken.val;
    v16 = *(*atoken.val + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = (*(*v17 + 16))(v17);
    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v17, v18, &v45);
    (*(**(*(v17 + 15) + 8) + 64))(buf);
    if (*buf)
    {
      CFRelease(*buf);
      v37[0] = v17;
      v37[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::forbid_acq::PrivateSetPropertyMX(v37, v18, &v45, v36, v35);
    }

    v19 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = &v45;
      if ((v45.val[5] & 0x80000000) != 0)
      {
        v20 = *v45.val;
      }

      *buf = 136315650;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 511;
      *&buf[18] = 2080;
      *&buf[20] = v20;
      _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get MXSessionRef for session: %s", buf, 0x1Cu);
    }

    v21 = MEMORY[0x277CCA9B8];
    v48 = v34;
    v49 = @"Setting MX property failed due to invalid MXSessionRef";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v23 = [v21 errorWithDomain:v15 code:2003329396 userInfo:v22];

    if (SHIBYTE(v45.val[5]) < 0)
    {
      operator delete(*v45.val);
      if (!v16)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v16)
    {
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

LABEL_23:

  v26 = v23;
LABEL_25:
  *buf = &atoken;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_26:
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v26;
}

void sub_24174B9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v36 - 144) = &a19;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100]((v36 - 144));
  std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(&a25);

  _Unwind_Resume(a1);
}

uint64_t ___ZN4avas6server10forbid_acq16SetPropertyLocalEjRK13audit_token_tP8NSStringPU25objcproto14NSSecureCoding11objc_object_block_invoke_123(uint64_t a1)
{
  result = avas::server::require_acq::SetRecordingFromRemoteInput(*(a1 + 56), *(a1 + 48), [*(a1 + 32) BOOLValue]);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t avas::server::require_acq::SetRecordingFromRemoteInput(unsigned int a1, uint64_t a2, int a3)
{
  v9[0] = 1;
  v10 = 3975;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  v8[0] = a1;
  v8[4] = 0;
  v6 = avas::server::require_acq::AudioSessionServerSetClientPlayState(v8, *a2, a2, 1, a3, 0, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
  if (!v6)
  {
    atomic_store(a3, (a2 + 4));
  }

  avas::ScopedTrace::~ScopedTrace(v9);
  return v6;
}

void sub_24174BBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  avas::ScopedTrace::~ScopedTrace(&a12);
  _Unwind_Resume(a1);
}

uint64_t avas::server::require_acq::AudioSessionSilenceOutput(avas::server::require_acq *this, uint64_t a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  avas::server::RequireAudioControlQueue(this);
  v28 = @"flags";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v29[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

  v6 = avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v20, this);
  v7 = v20;
  if (v20)
  {
    v8 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *(v7 + 84);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v10 = v20;
      if (!v20)
      {
        v18 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v18 process:? delegate:?];
      }

      v11 = v21;
      if (v21)
      {
        v12 = 0;
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v11 = 0;
      v9 = *(v20 + 84);
      v12 = 1;
      v10 = v20;
    }

    v14 = *(v10 + 112);
    if ((v12 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (!v14)
    {
      v19 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v19 process:? delegate:?];
    }
  }

  else
  {
    v13 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "AudioSessionServerImp_iOS.mm";
      v24 = 1024;
      v25 = 675;
      v26 = 1024;
      v27 = this;
      _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }

    v14 = 0;
    v9 = 0xFFFFFFFFLL;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v7)
  {
    [v14 handleInterruptionWithID:this clientPID:v9 interruptionState:32769 interruptionInfo:v5];
    v15 = 0;
  }

  else
  {
    v15 = 561210739;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_24174BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::require_acq::AudioSessionServerInterruptDummyPlayers(avas::server::require_acq *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v26, this);
  v3 = v26;
  if (v26)
  {
    v4 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = atomic_exchange(v3 + 232, 0);
    v6 = v26;
    if (!v26)
    {
      v17 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v17 process:? delegate:?];
    }

    v7 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = atomic_exchange(v6 + 240, 0);
    if (v5 & 1) != 0 || (v8)
    {
      v9 = v26;
      if (!v26)
      {
        v18 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v18 process:? delegate:?];
      }

      v10 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v9, this, &v24);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v12 = *avas::server::gSessionServerLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21[0] = 0;
        v22 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }
    }

    if (v26)
    {
      os_unfair_lock_unlock(v26 + 134);
      v28 = 0;
    }

    if (v5)
    {
      v20[0] = this;
      v20[4] = 0;
      avas::server::require_acq::AudioSessionServerSetClientPlayState(v20, *(v3 + 57), v3 + 228, 3, 0, 0, 0);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v20);
    }

    if (v8)
    {
      v19[0] = this;
      v19[4] = 0;
      avas::server::require_acq::AudioSessionServerSetClientPlayState(v19, *(v6 + 59), v6 + 236, 1, 0, 0, 0);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v19);
    }

    v13 = 0;
  }

  else
  {
    v13 = 561210739;
    v14 = *avas::server::gSessionServerLog(v2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "AudioSessionServerImp_iOS.mm";
      v31 = 1024;
      v32 = 696;
      v33 = 1024;
      v34 = this;
      _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Did not find matching audio session for session ID: 0x%x. Bailing.", buf, 0x18u);
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v26);
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_24174C1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, os_unfair_lock_s *a27)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a16);

  if (a26 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a27);
  _Unwind_Resume(a1);
}

uint64_t avas::server::ff_acq::AudioSessionServerActivateWithFlags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (!v8)
  {
    v40 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v40 process:? delegate:?];
  }

  v9 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v52, a2, a3, 1, a5);
  if (v52)
  {
    v12 = v52;
    if (!v52)
    {
      v41 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v41 process:? delegate:?];
    }

    v13 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v12, a2, &__p);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v14 = v52;
    if (!v52)
    {
      v42 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v42 process:? delegate:?];
    }

    v15 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = (*(**(*(v14 + 15) + 8) + 64))(&buf);
    v18 = *buf.val;
    if (*buf.val)
    {
      CFRelease(*buf.val);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v18)
    {
      InterruptionPriority = avas::server::ff_acq::GetInterruptionPriority(&v52, v17);
      cf = 0;
      if (!InterruptionPriority)
      {
        goto LABEL_41;
      }

      v20 = v52;
      if (!v52)
      {
        v43 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v43 process:? delegate:?];
      }

      v21 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(v20);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (SessionType != 1935830119)
      {
        v29 = *(a3 + 16);
        *buf.val = *a3;
        *&buf.val[4] = v29;
        InterruptionPriority = SecTaskCreateWithAuditToken(0, &buf);
        goto LABEL_32;
      }

      v23 = v52;
      if (!v52)
      {
        v44 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v44 process:? delegate:?];
      }

      InterruptionPriority = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *(v23 + 4);
        *buf.val = *(v23 + 3);
        *&buf.val[4] = v24;
        v25 = *(v23 + 80);
        std::__shared_weak_count::__release_shared[abi:ne200100](InterruptionPriority);
        if (v25)
        {
LABEL_26:
          token = buf;
          InterruptionPriority = SecTaskCreateWithAuditToken(0, &token);
LABEL_32:
          v30 = InterruptionPriority;
          goto LABEL_35;
        }
      }

      else
      {
        v31 = *(v52 + 4);
        *buf.val = *(v52 + 3);
        *&buf.val[4] = v31;
        if (*(v52 + 80))
        {
          goto LABEL_26;
        }
      }

      v30 = 0;
LABEL_35:
      cf = v30;
      if (!v30)
      {
        v47[0] = 0;
        v48 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
        v32 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
        if ((ProxyProcessPID & 0x100000000) != 0)
        {
          v45[0] = 5;
          v46 = ProxyProcessPID;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
          v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v47, "controlling_PID");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
          v34 = *v33;
          *v33 = v45[0];
          v45[0] = v34;
          v35 = *(v33 + 8);
          *(v33 + 8) = v46;
          v46 = v35;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v46, v45[0]);
        }

        v36 = *avas::server::gSessionServerLog(v32);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&token);
        }

        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v48, v47[0]);
      }

LABEL_41:
      strcpy(v54, "activate");
      v37 = *avas::server::gSessionServerLog(InterruptionPriority);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
      }
    }

    v26 = 2003329396;
    v28 = *avas::server::gSessionServerLog(v16);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      buf.val[0] = 136315394;
      *&buf.val[1] = "AudioSessionServerImp_iOS.mm";
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 871;
      _os_log_impl(&dword_241701000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d No valid CMSession", &buf, 0x12u);
    }

    if (v51 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v26 = 561210739;
    v27 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      buf.val[0] = 136315650;
      *&buf.val[1] = "AudioSessionServerImp_iOS.mm";
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 862;
      HIWORD(buf.val[4]) = 1024;
      buf.val[5] = a2;
      _os_log_impl(&dword_241701000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", &buf, 0x18u);
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v52);

  v38 = *MEMORY[0x277D85DE8];
  return v26;
}

void sub_24174D430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, const void *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, os_unfair_lock_s *a35)
{
  if ((v38 & 1) != 0 && v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a26);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a28);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a35);

  _Unwind_Resume(a1);
}

uint64_t ___ZN4avas6server6ff_acq35AudioSessionServerActivateWithFlagsEPU39objcproto28AVAudioSessionServerDelegate11objc_objectjRK13audit_token_tjb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 52);
  v4[0] = *(a1 + 48);
  v4[4] = 0;
  avas::server::require_acq::AudioSessionServerSetClientPlayState(v4, **(a1 + 40), *(a1 + 40), v2, 1, 0, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
  return [*(a1 + 32) setTelephonyClientSessionID:*(a1 + 48)];
}

void sub_24174D788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t avas::server::ff_acq::AudioSessionServerDeactivateAndSetPriority(void *a1, uint64_t a2, audit_token_t *a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a1;
  avas::server::ForbidAudioControlQueue(v7);
  if (!v7)
  {
    v33 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v33 process:? delegate:?];
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v37, a2, a3, 1);
  v8 = v37;
  if (!v37)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(cf);
  }

  v9 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(**(*(v8 + 120) + 8) + 64))(cf);
  v11 = *cf;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v11)
  {
    v23 = 2003329396;
    v27 = *avas::server::gSessionServerLog(v10);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *cf = 136315650;
    *&cf[4] = "AudioSessionServerImp_iOS.mm";
    v40 = 1024;
    *v41 = 1002;
    *&v41[4] = 1024;
    *&v41[6] = a2;
    v25 = "%25s:%-5d Cannot get MXSessionRef for id: 0x%x";
    v26 = v27;
    goto LABEL_32;
  }

  v12 = v37;
  if (!v37)
  {
    v34 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v34 process:? delegate:?];
  }

  v13 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = avas::server::mx::MXAccessor::SetMXProperty(*(v12 + 120), *MEMORY[0x277D27240], MEMORY[0x277CBEC38]);
  v15 = v14;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    v16 = *avas::server::gSessionServerLog(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315650;
      *&cf[4] = "AudioSessionServerImp_iOS.mm";
      v40 = 1024;
      *v41 = 1013;
      *&v41[4] = 1024;
      *&v41[6] = v15;
      _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting DoNotNotifyOtherSessionsOnNextInactive failed %d", cf, 0x18u);
    }
  }

  v17 = v37;
  if (!v37)
  {
    v35 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v35 process:? delegate:?];
  }

  v18 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = avas::server::mx::MXAccessor::SetMXProperty(*(v17 + 120), *MEMORY[0x277D27248], MEMORY[0x277CBEC38]);
  v20 = v19;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    v21 = *avas::server::gSessionServerLog(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315650;
      *&cf[4] = "AudioSessionServerImp_iOS.mm";
      v40 = 1024;
      *v41 = 1020;
      *&v41[4] = 1024;
      *&v41[6] = v20;
      _os_log_impl(&dword_241701000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting DoNotResetAudioCategoryOnNextInactive failed %d", cf, 0x18u);
    }
  }

  v22 = avas::server::ff_acq::AudioSessionServerDeactivateWithFlags(v7, a2, a3, 0, 1);
  v23 = v22;
  if (v22)
  {
    v24 = *avas::server::gSessionServerLog(v22);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *cf = 136315650;
    *&cf[4] = "AudioSessionServerImp_iOS.mm";
    v40 = 1024;
    *v41 = 1027;
    *&v41[4] = 1024;
    *&v41[6] = v23;
    v25 = "%25s:%-5d Deactivation of session failed with code %d";
    v26 = v24;
LABEL_32:
    _os_log_impl(&dword_241701000, v26, OS_LOG_TYPE_ERROR, v25, cf, 0x18u);
    goto LABEL_38;
  }

  v28 = v37;
  if (!v37)
  {
    v36 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v36 process:? delegate:?];
  }

  v29 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  v23 = avas::server::mx::MXAccessor::SetMXProperty(*(v28 + 120), *MEMORY[0x277D271F0], v30);

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

LABEL_38:
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_24174DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::ff_acq::AudioSessionServerDeactivateWithFlags(void *a1, uint64_t a2, audit_token_t *a3, uint64_t a4, BOOL a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (!v8)
  {
    v23 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v23 process:? delegate:?];
  }

  strcpy(v35, "deactivate");
  v9 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v30, a2, a3, 1, a5);
  if (v30)
  {
    v11 = v30;
    if (!v30)
    {
      v24 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v24 process:? delegate:?];
    }

    v12 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v11, a2, &v28);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = v30;
    if (!v30)
    {
      v25 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v25 process:? delegate:?];
    }

    v14 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
    }

    v15 = (*(**(*(v13 + 15) + 8) + 64))(buf);
    v16 = *buf;
    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v16)
    {
      v17 = *avas::server::gSessionServerLog(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
      }
    }

    v18 = 2003329396;
    v20 = *avas::server::gSessionServerLog(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1059;
      _os_log_impl(&dword_241701000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d No valid CMSession", buf, 0x12u);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    v18 = 561210739;
    v19 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1050;
      v33 = 1024;
      v34 = a2;
      _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v30);

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_24174EDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, os_unfair_lock_s *a41)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a24);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a23);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a33);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a41);

  _Unwind_Resume(a1);
}

uint64_t avas::server::ff_acq::GetCMPlayState(avas::server::ff_acq *this, avas::server::AudioSessionInfoAccessor *a2)
{
  v2 = *this;
  if (!*this)
  {
    avas::server::require_acq::GetAudioQueueOptions();
  }

  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::mx::MXAccessor::GetMXProperty(*(v2 + 120), *MEMORY[0x277D271C0], &v8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = [v9 BOOLValue];
  if (v8)
  {
    v7 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v7 process:? delegate:?];
  }

  v5 = v4;

  return v5;
}

void sub_24174F0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<int &,int,0>(uint64_t a1, int *a2)
{
  *(a1 + 8) = 0;
  v3 = *a2;
  *a1 = 5;
  *(a1 + 8) = v3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[30],int const&>(CFStringRef *a1, char *a2, _DWORD *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Could not construct");
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__p[0]) = *a3;
  v8 = CFNumberCreate(0, kCFNumberIntType, __p);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](v11, "Could not construct");
  }

  return a1;
}

void sub_24174F31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15 + 1);
  applesauce::CF::TypeRef::~TypeRef(v15);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[57],char [57],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[57]>();
}

void avas::server::mx::MXObjectStandard::~MXObjectStandard(avas::server::mx::MXObjectStandard *this)
{
  avas::server::mx::MXObjectBase::~MXObjectBase(this);

  JUMPOUT(0x245CEEB60);
}

void avas::server::mx::MXObjectBase::SetCMSessionRef(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 24);
  v4 = *a2;
  *(a1 + 24) = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

BOOL avas::server::DeviceTimeObserver::DeviceSupportsDynamicLatency(avas::server::DeviceTimeObserver *this)
{
  v2.mElement = 0;
  *&v2.mSelector = *"tptbbolg";
  return AudioObjectHasProperty(this, &v2) != 0;
}

avas::server::DeviceTimeObserver::SharedBlockOwner *avas::server::DeviceTimeObserver::SharedBlockOwner::SharedBlockOwner(avas::server::DeviceTimeObserver::SharedBlockOwner *this, avas::server::DeviceTimeObserver *a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  MEMORY[0x245CEE7A0](this + 16, 0x10000, 90);
  *(this + 15) = 0;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  if (!*(this + 3))
  {
    avas::server::DeviceTimeObserver::SharedBlockOwner::SharedBlockOwner();
  }

  v4 = 0;
  v5 = *(this + 2);
  *v5 = -1;
  v6 = v5 + 8;
  do
  {
    v5[v4 + 2] = 0;
    v7 = v6;
    v8 = 96;
    do
    {
      *(v7 - 4) = 1;
      *(v7 - 8) = -1;
      *v7 = 0;
      *(v7 + 8) = -1;
      *(v7 + 2) = 0;
      *(v7 + 24) = 0;
      v7 += 12;
      v8 -= 48;
    }

    while (v8);
    v4 += 26;
    v6 += 26;
  }

  while (v4 != 14118);
  v9 = v5 + 14120;
  v10 = 8976;
  do
  {
    *v9 = 0;
    v9[2] = 1;
    v9[18] = 1;
    v9 += 34;
    v10 -= 136;
  }

  while (v10);
  return this;
}

void avas::server::DeviceTimeObserver::SharedBlockOwner::~SharedBlockOwner(avas::server::DeviceTimeObserver::SharedBlockOwner *this)
{
  if (*(this + 3))
  {
    caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>(this + 2, 0);
  }

  caulk::ipc::mapped_memory::reset((this + 16));
}

void avas::server::DeviceTimeObserver::SharedBlockOwner::deallocateSessionSlot(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>((a1 + 16), 0);
  if (a3 >= 0x21FuLL)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  v6[0] = -1;
  v7 = 0;
  v8 = -1;
  v9 = 0;
  v10 = 0;
  caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::store((v5 + 104 * a3 + 8), v6);
  *(a1 + ((a3 >> 3) & 0x1FFFFFF8) + 56) &= ~(1 << a3);
}

double avas::server::DeviceTimeObserver::DeviceSlot::updateMinimalTimestamp(uint64_t a1, double **a2, unint64_t a3, unint64_t a4, uint64_t a5, char a6, double a7)
{
  *a1 = 1;
  *(a1 + 1) = a6;
  v11 = (*a2 + 1);
  *(a1 + 40) = **a2;
  *(a1 + 48) = a7;
  *(a1 + 32) = a5;
  v12 = atomic_load(v11);
  *(a1 + 24) = v12;
  caulk::concurrent::atomic_value<std::optional<avas::server::DeviceTimeObserver::AnchorInfo>,2,6>::load(*a2 + 16, &v20);
  if (v23 == 1)
  {
    if (v21 <= a4 && v22 <= a4)
    {
      v13 = v21;
      if (v22 < v21)
      {
        avas::server::DeviceTimeObserver::DeviceSlot::updateMinimalTimestamp();
      }

      *(a1 + 8) = a3;
      v22 = a4;
      v14 = *a2;
      v15 = **a2;
      if (v15 == 0.0)
      {
        v16 = 0;
      }

      else
      {
        v16 = llround(1000000000.0 / v15 * (a4 - v13));
      }

      *(a1 + 16) = v16 + v20;
      goto LABEL_13;
    }

    v23 = 0;
  }

  if (a3 < *(a1 + 8))
  {
    avas::server::DeviceTimeObserver::DeviceSlot::updateMinimalTimestamp();
  }

  v17 = *(a1 + 16);
  v18 = __udivti3();
  *(a1 + 8) = a3;
  *(a1 + 16) = v17 + v18;
  v20 = v17 + v18;
  v21 = a4;
  v22 = a4;
  v23 = 1;
  v14 = *a2;
LABEL_13:
  *&result = caulk::concurrent::atomic_value<std::optional<avas::server::DeviceTimeObserver::AnchorInfo>,2,6>::store(v14 + 16, &v20).n128_u64[0];
  return result;
}

id avas::server::DeviceTimeObserver::DeviceSlot::timestampWriterBTPts(avas::server::DeviceTimeObserver::DeviceSlot *this)
{
  v2 = avas::server::DeviceTimeObserver::DeviceSlot::timestamp(this);
  v3 = *(this + 2);
  v4 = *(**this + 48);
  if (0xAAAAAAAAAAAAAAABLL * ((*(**this + 56) - v4) >> 5) <= v3)
  {
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = (v4 + 96 * v3);
  v6 = *v5;
  v7 = *(v5 + 9);
  v8 = *(v5 + 10);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = ___ZN4avas6server18DeviceTimeObserver10DeviceSlot20timestampWriterBTPtsEv_block_invoke;
  v11[3] = &__block_descriptor_60_ea8_32c69_ZTSNSt3__110shared_ptrIN4avas6server18DeviceTimeObserver8TimeInfoEEE_e18_v16__0r____Qdddd_8l;
  v11[4] = v7;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = v6;
  v13 = v2;
  v9 = MEMORY[0x245CEF0E0](v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v9;
}

void ___ZN4avas6server18DeviceTimeObserver10DeviceSlot20timestampWriterBTPtsEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = atomic_load((*(a1 + 32) + 256));
  if (v3)
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::load(*(a1 + 48), v42);
    if (*a2 >= *(&v42[0] + 1))
    {
      if (*(a2 + 16))
      {
        _X0 = 0;
        v16 = *(a1 + 32);
        v17 = *(v16 + 32);
        do
        {
          _X5 = *(v16 + 40);
          __asm { CASPAL          X4, X5, X0, X1, [X8] }

          _ZF = _X4 == v17;
          v17 = _X4;
        }

        while (!_ZF);
        v24 = *(a2 + 8);
        v25 = *(a2 + 16);
        if (v24 >= v25)
        {
          v30 = *(a1 + 32);
          if (*v30 == 0.0)
          {
            _X4 = 0;
          }

          else
          {
            _X4 = llround(1000000000.0 / *v30 * (v24 - v25));
          }

          *buf = _X4;
          *&buf[8] = 1;
          v31 = *(v30 + 32);
          do
          {
            _X3 = *(v30 + 40);
            __asm { CASPAL          X2, X3, X4, X5, [X9] }

            _ZF = _X2 == v31;
            v31 = _X2;
          }

          while (!_ZF);
        }

        else
        {
          _X4 = 0;
        }

        v34 = *(a1 + 40);
        v36[0] = *(a1 + 32);
        v36[1] = v34;
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        avas::server::DeviceTimeObserver::DeviceSlot::updateMinimalTimestamp(v42, v36, *a2, *(a2 + 8), _X4, 1, *(a2 + 32));
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::store(*(a1 + 48), v42);
      }

      else
      {
        v27 = *avas::server::gSessionServerLog(v5);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a2 + 8);
          v28 = *(a2 + 16);
          *buf = 136315906;
          *&buf[4] = "DeviceTimeObserver.mm";
          *&buf[12] = 1024;
          *&buf[14] = 187;
          v38 = 2048;
          v39 = v28;
          v40 = 2048;
          v41 = v29;
          v8 = "%25s:%-5d Warning - ignoring btPts has zero/bad PTS! %.5f (sampleTime: %.5f)";
          v9 = buf;
          v10 = v27;
          v11 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v6 = *avas::server::gSessionServerLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *a2;
        *buf = 136315906;
        *&buf[4] = "DeviceTimeObserver.mm";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        v38 = 2048;
        v39 = v7;
        v40 = 2048;
        v41 = *(&v42[0] + 1);
        v8 = "%25s:%-5d Warning - ignoring btPts that has bad host time: %llu (expected > previousMts i.e.: %llu)";
        v9 = buf;
        v10 = v6;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_15:
        v14 = 38;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v12 = *avas::server::gSessionServerLog(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 56);
      LODWORD(v42[0]) = 136315650;
      *(v42 + 4) = "DeviceTimeObserver.mm";
      WORD6(v42[0]) = 1024;
      *(v42 + 14) = 174;
      WORD1(v42[1]) = 1024;
      DWORD1(v42[1]) = v13;
      v8 = "%25s:%-5d BTPts block shouldn't be called when inactive! (device ID: %u)";
      v9 = v42;
      v10 = v12;
      v11 = OS_LOG_TYPE_ERROR;
      v14 = 24;
LABEL_16:
      _os_log_impl(&dword_241701000, v10, v11, v8, v9, v14);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_24174FC5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_ea8_32c69_ZTSNSt3__110shared_ptrIN4avas6server18DeviceTimeObserver8TimeInfoEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c69_ZTSNSt3__110shared_ptrIN4avas6server18DeviceTimeObserver8TimeInfoEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

avas::server::DeviceTimeObserver::SharedBlockOwner *avas::server::DeviceTimeObserver::createDevice(void *a1, uint64_t a2, const void *a3, int a4)
{
  v7 = a1;
  v9 = a1[6];
  v10 = a1[7];
  v8 = a1 + 6;
  if (v9 != v10)
  {
    while (1)
    {
      a1 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v9 + 1, (a2 + 8));
      if (!a1 || *v9 == *a2)
      {
        break;
      }

      v9 += 12;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }

    v10 = v7[7];
  }

  if (v9 != v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "DeviceTimeObserver: duplicate DeviceKey");
  }

  v11 = *v7;
  v12 = v7[1];
  if (*v7 != v12)
  {
    v13 = *v7;
    while (2)
    {
      v14 = 0;
      v15 = (v13 + 40);
      do
      {
        v16 = v15[v14 >> 6];
        if (((1 << v14) & v16) == 0)
        {
          v15[v14 >> 6] = (1 << v14) | v16;
          goto LABEL_23;
        }

        ++v14;
      }

      while (v14 != 66);
      v13 = (v13 + 128);
      if (v13 != v12)
      {
        continue;
      }

      break;
    }
  }

  v37 = (v12 - v11) >> 7;
  v29[0] = v7;
  if (v12 >= v7[2])
  {
    a1 = std::vector<avas::server::DeviceTimeObserver::SharedBlockOwner>::__emplace_back_slow_path<avas::server::DeviceTimeObserver*,unsigned long const&>(v7, v29, &v37);
  }

  else
  {
    avas::server::DeviceTimeObserver::SharedBlockOwner::SharedBlockOwner(v12, v7, (v12 - v11) >> 7);
    a1 = (v12 + 128);
    v7[1] = (v12 + 128);
  }

  v14 = 0;
  v7[1] = a1;
  v13 = (a1 - 16);
  v17 = a1 - 11;
  while (1)
  {
    v18 = v17[v14 >> 6];
    if (((1 << v14) & v18) == 0)
    {
      break;
    }

    if (++v14 == 66)
    {
      avas::server::DeviceTimeObserver::createDevice();
    }
  }

  v17[v14 >> 6] = (1 << v14) | v18;
LABEL_23:
  v48 = v13;
  LODWORD(v49) = v14;
  v19 = 66 * *(v13 + 1) + v14;
  if (v19 >= 0x100)
  {
    v37 = &unk_28535A5C0;
    gsl::details::terminate(a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v7[7] - v7[6]) >> 5) <= v19)
  {
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::resize(v8, v19 + 1);
  }

  v20 = operator new(0x180uLL, 0x40uLL);
  v20->__shared_owners_ = 0;
  v20->__shared_weak_owners_ = 0;
  v20->__vftable = &unk_28535AE10;
  *&v20[3].__shared_owners_ = 0u;
  v20[4].std::__shared_count = 0u;
  *&v20[4].__shared_weak_owners_ = 0u;
  *&v20[5].__shared_owners_ = 0u;
  v20[6].std::__shared_count = 0u;
  *&v20[6].__shared_weak_owners_ = 0u;
  *&v20[7].__shared_owners_ = 0u;
  v20[8].std::__shared_count = 0u;
  *&v20[8].__shared_weak_owners_ = 0u;
  *&v20[9].__shared_owners_ = 0u;
  v20[10].std::__shared_count = 0u;
  *&v20[10].__shared_weak_owners_ = 0u;
  *&v20[11].__shared_owners_ = 0u;
  v20[12].std::__shared_count = 0u;
  *&v20[12].__shared_weak_owners_ = 0u;
  *&v20[13].__shared_owners_ = 0u;
  v20[14].std::__shared_count = 0u;
  *&v20[14].__shared_weak_owners_ = 0u;
  *&v20[2].__shared_weak_owners_ = 0u;
  *&v20[15].__shared_owners_ = 0u;
  v20[2].__shared_weak_owners_ = 0x40E7700000000000;
  v20[3].__vftable = 0;
  v20[3].__shared_owners_ = 0;
  v20[4].__vftable = 0;
  v20[4].__shared_owners_ = 0;
  LODWORD(v20[8].__vftable) = 1;
  LODWORD(v20[10].__shared_weak_owners_) = 1;
  LODWORD(v37) = *a2;
  cf = *(a2 + 8);
  *(a2 + 8) = 0;
  LOBYTE(v39) = *(a2 + 16);
  v40 = 0;
  v41 = 0;
  v29[0] = 0;
  v29[1] = 0;
  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  v44 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  p_shared_weak_owners = &v20[2].__shared_weak_owners_;
  v46 = v20;
  v30 = 0;
  v34 = 0;
  v35 = 0;
  v21 = v7[6];
  v22 = (v7[7] - v21) >> 5;
  v36 = 0;
  v47 = 0;
  if (0xAAAAAAAAAAAAAAABLL * v22 <= v19)
  {
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__throw_out_of_range[abi:ne200100]();
  }

  std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::operator=[abi:ne200100](v21 + 96 * v19, &v37);
  v23 = v47;
  v47 = 0;
  if (v23)
  {
    std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](&v47, v23);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v44)
  {
    operator delete(__p[1]);
  }

  if (__p[0])
  {
    operator delete(v40);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v24 = v36;
  v36 = 0;
  if (v24)
  {
    std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](&v36, v24);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v33)
  {
    operator delete(v31);
  }

  if (v30)
  {
    operator delete(v29[0]);
  }

  if (a4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7[7] - v7[6]) >> 5) > v19)
    {
      avas::server::DeviceTimeObserver::DeviceSlot::timestampWriterBTPts(&v48);
      objc_claimAutoreleasedReturnValue();
      operator new();
    }

    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = 0;
  cf = a3;
  v25 = __udivti3();
  v40 = 0;
  v41 = 0;
  v39 = v25;
  *__p = xmmword_241782A10;
  v26 = avas::server::DeviceTimeObserver::DeviceSlot::timestamp(&v48);
  caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::store(v26, &v37);
  return v48;
}

void std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 96 * a2);
  }
}

uint64_t std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::~pair(uint64_t a1)
{
  v4 = *(a1 + 88);
  v2 = (a1 + 88);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](v2, v3);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 64))
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 40))
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  return a1;
}

BOOL avas::server::DeviceTimeObserver::removeSession(avas::server::DeviceTimeObserver *this, unsigned int a2)
{
  v27 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(this + 9, &v27);
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::erase(this + 9, v3);
    return 1;
  }

  else
  {
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(this + 3, &v27, &v26);
    v6 = *(this + 3);
    v7 = *(this + 4);
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (!v8)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v9 = v6 + 32 * v7;
    v10 = v26;
    v4 = v26 != v9;
    if (v26 != v9)
    {
      v12 = *(v26 + 8);
      v11 = *(v26 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(v10 + 26);
      if (*(v12 + 4) == 1)
      {
        v14 = *v12;
        v15 = *v12 / 0x21FuLL;
        if (v15 >= (*(this + 1) - *this) >> 7)
        {
          LOBYTE(v23) = 0;
          v25 = 0;
          v19 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v19 process:? delegate:?];
        }

        v23 = *this + (v15 << 7);
        LODWORD(v24) = v14 % 0x21F;
        v25 = 1;
        v16 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(&v23);
        caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load(v16, v21);
        LODWORD(v28) = v27;
        std::set<unsigned int>::set[abi:ne200100](v20, &v28, 1);
        if ((v13 & 1) == 0)
        {
          std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v20, *(v12 + 2), v12 + 6);
        }

        avas::server::DeviceTimeObserver::removeReferringSessionsFromDevice(this, 0, v22, v20);
        avas::server::DeviceTimeObserver::removeReferringSessionsFromDevice(this, 1, LOBYTE(v21[0]), v20);
        if ((v13 & 1) == 0)
        {
          v17 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(&v23);
          v28 = 0u;
          v29 = 0u;
          v30 = 0;
          LOBYTE(v28) = -1;
          LOBYTE(v29) = -1;
          caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::store(v17, &v28);
          if (*(v12 + 4) == 1)
          {
            *(v12 + 4) = 0;
          }

          avas::server::DeviceTimeObserver::SharedBlockOwner::deallocateSessionSlot(v23, v23, v24);
        }

        std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::destroy(v20, v20[1]);
      }

      if (v13 && std::__tree<unsigned int>::__erase_unique<unsigned int>((v12 + 4), &v27) != 1)
      {
        v18 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v18 process:? delegate:?];
      }

      *&v28 = v26;
      boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::erase(this + 3, &v28, v21);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  return v4;
}

void sub_241750470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::DeviceTimeObserver::addNodeSession(avas::server::DeviceTimeObserver *a1, os_unfair_lock_s **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (avas::server::IONodeSessionInfo::GetBindingType(*a2) == 1651733091)
  {
    avas::server::IONodeSessionInfo::GetSiblingSession(*a2, &v16);
    if (v16)
    {
      v4 = (*(*v16 + 16))(v16);
      avas::server::DeviceTimeObserver::findSessionSlot(a1, v4, buf);
      if ((v20 & 0x10000) == 0)
      {
        v5 = (*(*v16 + 24))(v16);
        avas::server::DeviceTimeObserver::createSession(a1, v4, v5 | 0x100000000, &v13);
        if (v15 == 1)
        {
          v7 = v14 + 543 * *(v13 + 8);
          if (HIDWORD(v7))
          {
            *buf = &unk_28535A5C0;
            gsl::details::terminate(v6);
          }

          v16[110] = v7;
        }

        else
        {
          v8 = *avas::server::gSessionServerLog(v6);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "DeviceTimeObserver.mm";
            v19 = 1024;
            v20 = 526;
            v21 = 1024;
            v22 = v4;
            _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Session creation in DTO failed, session ID = 0x%x", buf, 0x18u);
          }
        }

        v9 = (*(*&(*a2)->_os_unfair_lock_opaque + 16))();
        v10 = v9;
        v11 = *avas::server::gSessionServerLog(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          *&buf[4] = "DeviceTimeObserver.mm";
          v19 = 1024;
          v20 = 531;
          v21 = 1024;
          v22 = v10;
          v23 = 1024;
          v24 = v4;
          _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Adding node session 0x%x and container session 0x%x to DTO container map", buf, 0x1Eu);
        }

        *buf = v10 | (v4 << 32);
        std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int>>(a1 + 9, buf);
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241750754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IONodeSessionInfo::GetBindingType(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  v2 = *&this[14]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
    v3 = 1852796517;
  }

  os_unfair_lock_unlock(this + 8);
  return v3;
}

void avas::server::IONodeSessionInfo::GetSiblingSession(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 8);
  v4 = *&this[14]._os_unfair_lock_opaque;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  os_unfair_lock_unlock(this + 8);
}

void avas::server::DeviceTimeObserver::sessionHasIOEventListeners(avas::server::DeviceTimeObserver *this, unsigned int a2, int a3, char a4)
{
  v12 = a2;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(this + 3, &v12, &v11);
  v7 = *(this + 3);
  v8 = *(this + 4);
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v11 != v7 + 32 * v8)
  {
    v10 = 24;
    if (a3)
    {
      v10 = 25;
    }

    *(v11 + v10) = a4;
  }
}

void avas::server::DeviceTimeObserver::sessionDeviceIOPeriod(avas::server::DeviceTimeObserver *this@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  avas::server::DeviceTimeObserver::findSessionSlot(this, a2, v21);
  if ((v21[16] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(v21);
  caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load(v7, v19);
  v8 = &v20;
  if (a3)
  {
    v8 = v19;
  }

  v9 = *v8;
  v10 = *(this + 6);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v10) >> 5) > v9)
  {
    v11 = *(v10 + 96 * v9);
    outData = 0u;
    v18 = 0u;
    *&inAddress.mSelector = 0x676C6F626E737274;
    inAddress.mElement = 0;
    ioDataSize = 8;
    PropertyData = AudioObjectGetPropertyData(v11, &inAddress, 0, 0, &ioDataSize, &outData);
    if (PropertyData || (v15 = 0, *&inAddress.mSelector = 0x676C6F626673697ALL, inAddress.mElement = 0, ioDataSize = 4, PropertyData = AudioObjectGetPropertyData(v11, &inAddress, 0, 0, &ioDataSize, &v15), *&v18 = v15, PropertyData))
    {
      v13 = 0;
      *a4 = PropertyData;
    }

    else
    {
      if (*&outData > 0.0)
      {
        *(&outData + 1) = v15 / *&outData;
      }

      v14 = v18;
      *a4 = outData;
      *(a4 + 16) = v14;
      v13 = 1;
    }

    *(a4 + 32) = v13;
  }

  else
  {
LABEL_9:
    *a4 = -1;
    *(a4 + 32) = 0;
  }
}

void avas::server::DeviceTimeObserver::sessionsObservingDeviceEvent(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v66 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  v10 = a1[6];
  v9 = a1[7];
  if (v10 != v9)
  {
    while (*v10 != a2)
    {
      v10 += 96;
      if (v10 == v9)
      {
        goto LABEL_65;
      }
    }
  }

  if (v10 == v9)
  {
LABEL_65:
    v47 = *avas::server::gSessionServerLog(a1);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "DeviceTimeObserver.mm";
      v62 = 1024;
      v63 = 766;
      v64 = 1024;
      v65 = a2;
      _os_log_impl(&dword_241701000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - device ID not found: %u", buf, 0x18u);
    }
  }

  else
  {
    v11 = *(v10 + 16);
    *(a5 + 24) = v11;
    _ZF = v11 == 0;
    v12 = 48;
    if (!_ZF)
    {
      v12 = 24;
    }

    v13 = (v10 + v12);
    v15 = *v13;
    v14 = v13[1];
    if (v15)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v14 == 0;
    }

    if (!_ZF)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v14)
    {
      for (i = 4 * v14; i; i -= 4)
      {
        if (!v15)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        v18 = *v15;
        v60 = *v15;
        boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(a1 + 3, &v60, buf);
        v19 = a1[3];
        v20 = a1[4];
        if (v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20 == 0;
        }

        if (!v21)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v22 = *buf;
        if (*buf == v19 + 32 * v20)
        {
          goto LABEL_51;
        }

        if (*(v10 + 16) == 1)
        {
          if ((*(*buf + 25) & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (*(*buf + 24) != 1)
        {
          goto LABEL_45;
        }

        v23 = *(*buf + 8);
        if ((*(v23 + 12) & 1) == 0)
        {
          if (v5 == 1)
          {
            v27 = 1;
            goto LABEL_50;
          }

          if (v5 != 2)
          {
            goto LABEL_51;
          }

          if (*(v23 + 13) != 1)
          {
            v27 = 0;
            goto LABEL_50;
          }
        }

        v25 = *(a5 + 8);
        v24 = *(a5 + 16);
        if (v25 >= v24)
        {
          v28 = *a5;
          v29 = v25 - *a5;
          v30 = v29 >> 2;
          v31 = (v29 >> 2) + 1;
          if (v31 >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v32 = v24 - v28;
          if (v32 >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          _CF = v32 >= 0x7FFFFFFFFFFFFFFCLL;
          v34 = 0x3FFFFFFFFFFFFFFFLL;
          if (!_CF)
          {
            v34 = v31;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a5, v34);
          }

          *(4 * v30) = v18;
          v26 = 4 * v30 + 4;
          memcpy(0, v28, v29);
          v35 = *a5;
          *a5 = 0;
          *(a5 + 8) = v26;
          *(a5 + 16) = 0;
          if (v35)
          {
            operator delete(v35);
          }

          v5 = a3;
        }

        else
        {
          *v25 = v18;
          v26 = (v25 + 1);
        }

        *(a5 + 8) = v26;
LABEL_45:
        if (v5 == 1)
        {
          v27 = 1;
LABEL_49:
          v23 = *(v22 + 8);
LABEL_50:
          *(v23 + 13) = v27;
          goto LABEL_51;
        }

        if (v5 == 2)
        {
          v27 = 0;
          goto LABEL_49;
        }

LABEL_51:
        ++v15;
      }
    }

    if (v5 == 1)
    {
      v49 = *(v10 + 72);
      v48 = *(v10 + 80);
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      _X0 = 0;
      v51 = *(v49 + 32);
      v52 = *(v49 + 40);
      do
      {
        _X5 = *(v49 + 40);
        __asm { CASPAL          X4, X5, X0, X1, [X8] }

        _ZF = _X4 == v51;
        v51 = _X4;
      }

      while (!_ZF);
      if (a4 && (*(v10 + 16) & 1) == 0 && *(v10 + 88))
      {
        v55 = *avas::server::gSessionServerLog(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "DeviceTimeObserver.mm";
          v62 = 1024;
          v63 = 801;
          v64 = 1024;
          v65 = a2;
          _os_log_impl(&dword_241701000, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting BT presentation time poller for device ID: %u)", buf, 0x18u);
        }

        atomic_store(1u, (v49 + 256));
        avas::server::BTPresentationTimePoll::start(*(v10 + 88));
      }

      if (v48)
      {
        v46 = v48;
        goto LABEL_80;
      }
    }

    else if (v5 == 2)
    {
      v37 = *(v10 + 72);
      v36 = *(v10 + 80);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      _X0 = 0;
      atomic_store(0, (v37 + 64));
      atomic_store(1u, (v37 + 128));
      atomic_store(1u, (v37 + 192));
      v39 = *(v37 + 32);
      v40 = *(v37 + 40);
      do
      {
        _X5 = *(v37 + 40);
        __asm { CASPAL          X4, X5, X0, X1, [X8] }

        _ZF = _X4 == v39;
        v39 = _X4;
      }

      while (!_ZF);
      if (*(v10 + 88))
      {
        v45 = *avas::server::gSessionServerLog(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "DeviceTimeObserver.mm";
          v62 = 1024;
          v63 = 813;
          v64 = 1024;
          v65 = a2;
          _os_log_impl(&dword_241701000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopping BT presentation time poller for device ID: %u)", buf, 0x18u);
        }

        avas::server::BTPresentationTimePoll::stop(*(v10 + 88));
        atomic_store(0, (v37 + 256));
      }

      if (v36)
      {
        v46 = v36;
LABEL_80:
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }
    }
  }

  v56 = *MEMORY[0x277D85DE8];
}

void sub_241750FEC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

unint64_t avas::server::DeviceTimeObserver::nanosecondLatency(avas::server::DeviceTimeObserver *this, int a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(this + 6);
  v5 = *(this + 7);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      v4 += 96;
      if (v4 == v5)
      {
        goto LABEL_12;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_12:
    v10 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "DeviceTimeObserver.mm";
      v22 = 1024;
      v23 = 878;
      v24 = 1024;
      v25 = a2;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - device ID not found: %u", &v20, 0x18u);
    }

    v9 = 0;
    goto LABEL_19;
  }

  v7 = *(v4 + 72);
  v6 = *(v4 + 80);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    if (a3)
    {
      v8 = 8;
LABEL_11:
      v9 = atomic_load((v7 + v8));
      goto LABEL_17;
    }

    if ((*(v4 + 16) & 1) == 0)
    {
      _X20 = 0;
      _X21 = 0;
      __asm { CASPAL          X20, X21, X20, X21, [X8] }

      v8 = 16;
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_17:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t std::vector<avas::server::DeviceTimeObserver::SharedBlockOwner>::__emplace_back_slow_path<avas::server::DeviceTimeObserver*,unsigned long const&>(uint64_t a1, avas::server::DeviceTimeObserver **a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 7;
  v4 = v3 + 1;
  if ((v3 + 1) >> 57)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 6 > v4)
  {
    v4 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::DeviceTimeObserver::SharedBlockOwner>>(a1, v8);
  }

  v15 = 0;
  v16 = (v3 << 7);
  v17 = (v3 << 7);
  avas::server::DeviceTimeObserver::SharedBlockOwner::SharedBlockOwner((v3 << 7), *a2, *a3);
  *&v17 = (v3 << 7) + 128;
  v9 = *(a1 + 8);
  v10 = (v3 << 7) + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<avas::server::DeviceTimeObserver::SharedBlockOwner>,avas::server::DeviceTimeObserver::SharedBlockOwner*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<avas::server::DeviceTimeObserver::SharedBlockOwner>::~__split_buffer(&v15);
  return v14;
}

void sub_2417512DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<avas::server::DeviceTimeObserver::SharedBlockOwner>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::DeviceTimeObserver::SharedBlockOwner>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<avas::server::DeviceTimeObserver::SharedBlockOwner>,avas::server::DeviceTimeObserver::SharedBlockOwner*>(uint64_t a1, avas::server::DeviceTimeObserver::SharedBlockOwner *a2, avas::server::DeviceTimeObserver::SharedBlockOwner *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = *(v6 + 1);
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      v7 = *(a4 + 32);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 32) = v7;
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      v9 = *(v6 + 72);
      v10 = *(v6 + 88);
      v11 = *(v6 + 104);
      *(a4 + 120) = *(v6 + 15);
      *(a4 + 104) = v11;
      *(a4 + 88) = v10;
      *(a4 + 72) = v9;
      v6 = (v6 + 128);
      a4 += 128;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      avas::server::DeviceTimeObserver::SharedBlockOwner::~SharedBlockOwner(v5);
      v5 = (v12 + 128);
    }
  }
}

uint64_t std::__split_buffer<avas::server::DeviceTimeObserver::SharedBlockOwner>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    avas::server::DeviceTimeObserver::SharedBlockOwner::~SharedBlockOwner((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 96 * a2;
      v11 = 96 * a2;
      do
      {
        result = std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::pair[abi:ne200100]<true,0>(v5);
        v5 += 96;
        v11 -= 96;
      }

      while (v11);
      v5 = v10;
    }

    v3[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>>(result, v9);
    }

    v12 = 96 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 3 * a2;
    v14 = v12 + 96 * a2;
    v15 = 32 * v13;
    do
    {
      std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::pair[abi:ne200100]<true,0>(v12);
      v12 += 96;
      v15 -= 96;
    }

    while (v15);
    *&v22 = v14;
    v16 = v3[1];
    v17 = v21 + *v3 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>,std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>*>(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_2417515AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>,std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 32) = *(v7 + 32);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v8 = *(v7 + 88);
      *(v7 + 88) = 0;
      *(a4 + 88) = v8;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>>::destroy[abi:ne200100]<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>,void,0>(a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>,std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::allocator_traits<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>>::destroy[abi:ne200100]<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 88);
  v4 = *(a2 + 88);
  *v3 = 0;
  if (v4)
  {
    std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](v3, v4);
  }

  v5 = *(a2 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a2 + 64))
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 40))
  {
    operator delete(*(a2 + 24));
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>,std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>,std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>,std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 96;
      std::allocator_traits<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>>::destroy[abi:ne200100]<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>>::destroy[abi:ne200100]<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>,void,0>(v5, v4 - 96);
  }
}

void std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>>::destroy[abi:ne200100]<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>,void,0>(a1, i))
  {
    i -= 96;
  }

  *(a1 + 8) = a2;
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_28535AD98;
  exception[1] = this;
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x245CEEB60);
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

void avas::server::DeviceTimeObserver::DeviceKey::~DeviceKey(avas::server::DeviceTimeObserver::DeviceKey *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void avas::server::DeviceTimeObserver::DeviceInfo::~DeviceInfo(avas::server::DeviceTimeObserver::DeviceInfo *this)
{
  v4 = *(this + 8);
  v2 = (this + 64);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](v2, v3);
  }

  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 5))
  {
    operator delete(*(this + 3));
  }

  if (*(this + 2))
  {
    operator delete(*this);
  }
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<avas::server::DeviceTimeObserver::CommonSessionInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535ADC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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

void std::__shared_ptr_emplace<avas::server::DeviceTimeObserver::TimeInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535AE10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB50);
}

void std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x245CEEB60);
  }
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >> 58)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(32 * v11);
  boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

uint64_t boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 24) = v6;
  return a1;
}

unint64_t boost::container::vector_alloc_holder<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 - v2 >= a2)
  {
    boost::container::vector_alloc_holder<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>();
  }

  v4 = 0x3FFFFFFFFFFFFFFLL;
  if (0x3FFFFFFFFFFFFFFLL - v3 < &a2[v2 - v3])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v3 >> 61;
  v6 = 8 * v3;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v2];
  if (v8 < 0x3FFFFFFFFFFFFFFLL)
  {
    v4 = v8;
  }

  if (v9 <= v4)
  {
    return v4;
  }

  else
  {
    return v9;
  }
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>(a1, *a1, a4, *a1 + 32 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 16);
      do
      {
        if (*v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v12);
        }

        v12 += 4;
        --v11;
      }

      while (v11);
    }

    operator delete(*a1);
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_241751F2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a5;
  if (a2 != a3)
  {
    v7 = a5;
    do
    {
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v8 = *(a2 + 24);
      *(v7 + 26) = *(a2 + 26);
      *(v7 + 24) = v8;
      a2 += 32;
      v7 += 32;
    }

    while (a2 != a3);
  }

  if (a6 != 1)
  {
    __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 209, "n == 1");
  }

  *v7 = *a7;
  result = *(a7 + 8);
  *(v7 + 8) = result;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v10 = *(a7 + 24);
  *(v7 + 26) = *(a7 + 26);
  *(v7 + 24) = v10;
  if (a3 != a4)
  {
    v11 = v7 + 56;
    do
    {
      *(v11 - 24) = *a3;
      result = *(a3 + 8);
      *(v11 - 16) = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v12 = *(a3 + 24);
      *(v11 + 2) = *(a3 + 26);
      *v11 = v12;
      v11 += 32;
      a3 += 32;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v4, a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::erase(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = *a1;
  if (*a1 > *a2)
  {
    goto LABEL_14;
  }

  v7 = a1[1];
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = v5 + 32 * v7;
  if (v4 >= v9)
  {
LABEL_14:
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::erase();
  }

  if (v4 + 32 != v9)
  {
    v10 = *a2;
    do
    {
      boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>::operator=(v10, v10 + 32);
      v11 = v10 + 64;
      v10 += 32;
    }

    while (v11 != v9);
  }

  v12 = *(v9 - 16);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  --a1[1];
  *a3 = v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int>>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(uint64_t *a1@<X0>, char *a2@<X1>, const char *a3@<X2>, const void **a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::new_allocator<unsigned int>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >> 61)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(4 * v11);
  v15 = *a4;
  boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(a1, v14, v13, a2, a3, &v15);
  *a5 = &a2[*a1 - v10];
}

unint64_t boost::container::vector_alloc_holder<boost::container::new_allocator<unsigned int>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 - v2 >= a2)
  {
    boost::container::vector_alloc_holder<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>();
  }

  v4 = 0x1FFFFFFFFFFFFFFFLL;
  if (0x1FFFFFFFFFFFFFFFLL - v3 < &a2[v2 - v3])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v3 >> 61;
  v6 = 8 * v3;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v2];
  if (v8 < 0x1FFFFFFFFFFFFFFFLL)
  {
    v4 = v8;
  }

  if (v9 <= v4)
  {
    return v4;
  }

  else
  {
    return v9;
  }
}

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(uint64_t a1, char *__dst, uint64_t a3, char *__src, uint64_t a5, const void **a6)
{
  v11 = *a1;
  v12 = (*a1 + 4 * *(a1 + 8));
  v14 = *a6;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int *,boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(a1, v11, __src, v12, __dst, a5, &v14);
  if (v11)
  {
    operator delete(*a1);
  }

  v13 = *(a1 + 8) + a5;
  *a1 = __dst;
  *(a1 + 8) = v13;
  *(a1 + 16) = a3;
}

void sub_241752A0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

int **boost::movelib::pdqsort_detail::pdqsort_loop<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(int **a1, int **a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = *a2;
  for (i = *a2 - *a1; i >= 0x18; i = *a2 - v4)
  {
    v12 = i >> 1;
    if (i < 0x81)
    {
      if (!v4)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v51 = &v4[v12];
      v54 = v4;
      if (!v5)
      {
        __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
      }

      v53 = v5 - 1;
      boost::movelib::pdqsort_detail::sort3<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v51, &v54, &v53);
    }

    else
    {
      v51 = v4;
      if (!v4)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v54 = &v4[v12];
      if (!v5)
      {
        __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
      }

      v53 = v5 - 1;
      boost::movelib::pdqsort_detail::sort3<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v51, &v54, &v53);
      v13 = *a1;
      if (!*a1)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v51 = v13 + 1;
      v54 = &v13[v12 - 1];
      if (!*a2)
      {
        __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
      }

      v53 = *a2 - 2;
      boost::movelib::pdqsort_detail::sort3<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v51, &v54, &v53);
      v14 = *a1;
      if (!*a1)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v51 = v14 + 2;
      v54 = &v14[v12 + 1];
      if (!*a2)
      {
        __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
      }

      v53 = *a2 - 3;
      boost::movelib::pdqsort_detail::sort3<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v51, &v54, &v53);
      v15 = *a1;
      if (v12 != 1 && !v15)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v51 = &v15[v12 - 1];
      if (!v15)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v53 = &v15[v12 + 1];
      v54 = &v15[v12];
      boost::movelib::pdqsort_detail::sort3<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v51, &v54, &v53);
      v16 = *a1;
      v51 = v16;
      if (!v16)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v54 = &v16[v12];
      boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v51, &v54);
    }

    v17 = *a1;
    if (a4)
    {
      goto LABEL_26;
    }

    if (!v17)
    {
      __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
    }

    if (*(v17 - 1) < *v17)
    {
LABEL_26:
      v54 = *a1;
      v53 = *a2;
      result = boost::movelib::pdqsort_detail::partition_right<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v54, &v53, &v51);
      v18 = v51;
      if (!v51)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      v19 = *a1;
      v20 = v51 - *a1;
      v4 = v51 + 1;
      v21 = *a2;
      v22 = *a2 - (v51 + 1);
      if (v20 < i >> 3 || v22 < i >> 3)
      {
        if (!--a3)
        {
          v53 = *a2;
          v54 = v19;
          return boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort(&v54, &v53);
        }

        if (v20 >= 0x18)
        {
          v54 = *a1;
          if (!v19)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v42 = v20 >> 2;
          v53 = &v19[v20 >> 2];
          boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
          v53 = &v18[-(v20 >> 2)];
          v54 = v18 - 1;
          boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
          if (v20 >= 0x81)
          {
            v43 = *a1;
            if (!*a1)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v53 = &v43[v42 + 1];
            v54 = v43 + 1;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
            v44 = *a1;
            if (!*a1)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v53 = &v44[v42 + 2];
            v54 = v44 + 2;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
            v53 = &v18[~v42];
            v54 = v18 - 2;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
            v53 = &v18[-2 - v42];
            v54 = v18 - 3;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
          }
        }

        if (v22 >= 0x18)
        {
          v45 = v22 >> 2;
          v46 = &v18[v22 >> 2];
          v53 = v46 + 1;
          v54 = v18 + 1;
          boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
          v47 = *a2;
          if (!*a2)
          {
            __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
          }

          v53 = &v47[-v45];
          v54 = v47 - 1;
          boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
          if (v22 >= 0x81)
          {
            v53 = v46 + 2;
            v54 = v18 + 2;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
            v53 = v46 + 3;
            v54 = v18 + 3;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
            v48 = *a2;
            if (!*a2)
            {
              __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
            }

            v53 = &v48[~v45];
            v54 = v48 - 2;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
            v49 = *a2;
            if (!*a2)
            {
              __assert_rtn("operator-", "vector.hpp", 196, "left.m_ptr || !off");
            }

            v53 = &v49[-2 - v45];
            v54 = v49 - 3;
            boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v54, &v53);
          }
        }
      }

      else if (v52)
      {
        if (v19 == v51)
        {
          goto LABEL_96;
        }

        if (!v19)
        {
          __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
        }

        v23 = v19 + 1;
        if (v19 + 1 == v51)
        {
          goto LABEL_96;
        }

        v24 = 0;
        v25 = 4;
        v26 = *a1;
        do
        {
          v28 = *v26;
          v27 = v26[1];
          v26 = v23;
          if (v27 < v28)
          {
            v29 = v25;
            while (1)
            {
              *(v19 + v29) = v28;
              v30 = v29 - 4;
              if (v29 == 4)
              {
                break;
              }

              v28 = *(v19 + v29 - 8);
              v29 -= 4;
              if (v27 >= v28)
              {
                v31 = (v19 + v30);
                goto LABEL_40;
              }
            }

            v31 = v19;
LABEL_40:
            *v31 = v27;
            v24 += v26 - v31;
          }

          v23 = v26 + 1;
          if (v26 + 1 == v18)
          {
            break;
          }

          v25 += 4;
        }

        while (v24 < 9);
        if (v23 == v18)
        {
LABEL_96:
          if (v4 == v21)
          {
            return result;
          }

          v32 = v18 + 2;
          if (v18 + 2 == v21)
          {
            return result;
          }

          v33 = 0;
          v34 = 0;
          v35 = 2;
          v36 = (v18 + 1);
          do
          {
            v37 = &v18[v35];
            v38 = v18[v35];
            v39 = *v36;
            if (v38 < *v36)
            {
              v40 = v32;
              result = v33;
              while (1)
              {
                *v40 = v39;
                if (!result)
                {
                  break;
                }

                v39 = *(v40 - 2);
                result = (result + 4);
                --v40;
                if (v38 >= v39)
                {
                  v41 = ((v18 + 2) - result);
                  goto LABEL_53;
                }
              }

              v41 = v18 + 1;
              v40 = v18 + 1;
LABEL_53:
              *v40 = v38;
              v34 += v37 - v41;
            }

            if (&v18[++v35] == v21)
            {
              break;
            }

            v33 = (v33 - 4);
            ++v32;
            v36 = v37;
          }

          while (v34 < 9);
          if (&v18[v35] == v21)
          {
            return result;
          }
        }
      }

      v50 = *a1;
      v53 = v18;
      v54 = v50;
      boost::movelib::pdqsort_detail::pdqsort_loop<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v54, &v53, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v54 = *a1;
      v53 = *a2;
      boost::movelib::pdqsort_detail::partition_left<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v54, &v53, &v51);
      if (!v51)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      a4 = 0;
      v4 = v51 + 1;
    }

    *a1 = v4;
    v5 = *a2;
  }

  v51 = v4;
  v54 = v5;
  return boost::movelib::insertion_sort<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::container::vec_iterator<unsigned int *,false>>(&v51, &v54);
}

unsigned int **boost::movelib::insertion_sort<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::container::vec_iterator<unsigned int *,false>>(unsigned int **result, unsigned int **a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result != *a2)
  {
    if (!v2)
    {
      __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
    }

    v4 = v2 + 1;
    if (v2 + 1 != v3)
    {
      v5 = 0;
      v6 = *result;
      do
      {
        v7 = v4;
        v8 = v6[1];
        if (v8 < *v6)
        {
          v6[1] = *v6;
          v9 = v2;
          if (v6 != v2)
          {
            v10 = v5;
            while (1)
            {
              v9 = (v2 + v10);
              v11 = *(v2 + v10 - 4);
              if (v8 >= v11)
              {
                break;
              }

              *v9 = v11;
              v10 -= 4;
              if (!v10)
              {
                v9 = v2;
                break;
              }
            }
          }

          *v9 = v8;
        }

        v4 = v7 + 1;
        v5 += 4;
        v6 = v7;
      }

      while (v7 + 1 != v3);
    }
  }

  return result;
}

int **boost::movelib::pdqsort_detail::sort3<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(int **result, int **a2, int **a3)
{
  v3 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v4 = result;
  v5 = *result;
  if (!*result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v3 < *v5)
  {
    v9 = *a2;
    v10 = v5;
    result = boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v10, &v9);
    v3 = *a2;
  }

  if (!*a3)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (!v3)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (**a3 < *v3)
  {
    v9 = *a3;
    v10 = v3;
    result = boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v10, &v9);
    v3 = *a2;
    if (!*a2)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }
  }

  v8 = *v4;
  if (!*v4)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v3 < *v8)
  {
    v9 = v3;
    v10 = v8;
    return boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v10, &v9);
  }

  return result;
}

int **boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(int **result, int **a2)
{
  v2 = *result;
  if (!*result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v3 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v4 = *v2;
  *v2 = *v3;
  *v3 = v4;
  return result;
}

int **boost::movelib::pdqsort_detail::partition_left<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>@<X0>(int **result@<X0>, int **a2@<X1>, int **a3@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v4 = result;
  v6 = *v3;
  v7 = *a2;
  v8 = -4;
  do
  {
    if (!v7)
    {
      __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
    }

    v10 = *--v7;
    v9 = v10;
    v8 += 4;
  }

  while (v6 < v10);
  v11 = *result;
  if (v8)
  {
    do
    {
      v12 = v11[1];
      ++v11;
    }

    while (v6 >= v12);
  }

  else
  {
    do
    {
      if (v11 >= v7)
      {
        break;
      }

      v13 = v11[1];
      ++v11;
    }

    while (v6 >= v13);
  }

  if (v11 < v7)
  {
    do
    {
      v16 = v7;
      v17 = v11;
      result = boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v17, &v16);
      do
      {
        v14 = *--v7;
        v9 = v14;
      }

      while (v6 < v14);
      do
      {
        v15 = v11[1];
        ++v11;
      }

      while (v6 >= v15);
    }

    while (v11 < v7);
    v3 = *v4;
  }

  *a3 = v7;
  if (!v3)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  *v3 = v9;
  *v7 = v6;
  return result;
}

int **boost::movelib::pdqsort_detail::partition_right<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>@<X0>(int **result@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (!*result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v5 = result;
  v6 = 0;
  v7 = *v4;
  v8 = *a2;
  do
  {
    v9 = v4[++v6];
  }

  while (v9 < v7);
  v10 = &v4[v6];
  if (v6 == 1)
  {
    do
    {
      if (v10 >= v8)
      {
        break;
      }

      v12 = *--v8;
    }

    while (v12 >= v7);
  }

  else
  {
    do
    {
      if (!v8)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      v11 = *--v8;
    }

    while (v11 >= v7);
  }

  if (v10 >= v8)
  {
    v17 = v10 - 1;
  }

  else
  {
    v13 = &v4[v6];
    v14 = v8;
    do
    {
      v18 = v14;
      v19 = v13;
      result = boost::adl_move_iter_swap<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>>(&v19, &v18);
      do
      {
        v15 = v13[1];
        ++v13;
      }

      while (v15 < v7);
      do
      {
        v16 = *--v14;
      }

      while (v16 >= v7);
    }

    while (v13 < v14);
    v4 = *v5;
    v17 = v13 - 1;
  }

  if (!v4)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  *v4 = *v17;
  *v17 = v7;
  *a3 = v17;
  *(a3 + 8) = v10 >= v8;
  return result;
}

BOOL boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort(_DWORD **a1, uint64_t *a2)
{
  v4 = *a1;
  v8 = *a2;
  v9 = v4;
  boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::make_heap(&v9, &v8);
  v5 = *a1;
  v8 = *a2;
  v9 = v5;
  boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort_heap(&v9, &v8);
  v6 = *a1;
  v8 = *a2;
  v9 = v6;
  result = boost::movelib::is_sorted<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v9, &v8);
  if (!result)
  {
    boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort();
  }

  return result;
}

uint64_t *boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::make_heap(uint64_t *result, void *a2)
{
  v2 = (*a2 - *result) >> 2;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = (v2 >> 1) - 1;
    do
    {
      v5 = *v3;
      if (v4 && !v5)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = *(v5 + 4 * v4);
      v6 = v5;
      result = boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::adjust_heap(&v6, v4--, v2, &v7);
    }

    while (v4 != -1);
  }

  return result;
}

uint64_t *boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort_heap(uint64_t *result, uint64_t *a2)
{
  v2 = (*a2 - *result) >> 2;
  if (v2 >= 2)
  {
    v4 = result;
    do
    {
      v5 = *a2;
      if (!*a2)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      v6 = (v5 - 4);
      *a2 = v5 - 4;
      v9 = *(v5 - 4);
      v7 = *v4;
      if (!*v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      *v6 = *v7;
      v8 = v7;
      result = boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::adjust_heap(&v8, 0, --v2, &v9);
    }

    while (v2 > 1);
  }

  return result;
}

BOOL boost::movelib::is_sorted<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(_DWORD **a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  do
  {
    if (!v2)
    {
      __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
    }

    result = ++v2 == v3;
  }

  while (v2 != v3 && *v2 >= *(v2 - 1));
  return result;
}

uint64_t *boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::adjust_heap(uint64_t *result, unint64_t a2, unint64_t a3, unsigned int *a4)
{
  v4 = 2 * a2;
  v5 = 2 * a2 + 2;
  if (v5 >= a3)
  {
    v8 = a2;
  }

  else
  {
    v6 = *result;
    v7 = a2;
    do
    {
      if (v5 && !v6)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (*(v6 + 4 * v5) < *(v6 + 4 * (v4 | 1)))
      {
        v8 = v4 + 1;
      }

      else
      {
        v8 = v5;
      }

      *(v6 + 4 * v7) = *(v6 + 4 * v8);
      v4 = 2 * v8;
      v5 = 2 * v8 + 2;
      v7 = v8;
    }

    while (v5 < a3);
  }

  if (v5 == a3)
  {
    if (!*result)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }

    v9 = v4 | 1;
    *(*result + 4 * v8) = *(*result + 4 * v9);
    v8 = v9;
  }

  v10 = *result;
  if (v8 > a2)
  {
    while (1)
    {
      if (v8 - 1 >= 2 && v10 == 0)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

      if (!v10)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v12 = (v8 - 1) >> 1;
      v13 = *(v10 + 4 * v12);
      if (v13 >= *a4)
      {
        break;
      }

      *(v10 + 4 * v8) = v13;
      v8 = (v8 - 1) >> 1;
      if (v12 <= a2)
      {
        goto LABEL_25;
      }
    }

    v12 = v8;
LABEL_25:
    v10 = *result;
    v8 = v12;
  }

  if (v8 && !v10)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

  if (!v10)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  *(v10 + 4 * v8) = *a4;
  return result;
}

unsigned int **boost::movelib::set_unique_difference<boost::move_iterator<boost::container::vec_iterator<unsigned int *,false>>,boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, unsigned int **a3@<X2>, unsigned int **a4@<X3>, unsigned int **a5@<X4>, unsigned int **a6@<X8>)
{
  while (1)
  {
    v6 = *result;
    if (*result == *a2)
    {
      break;
    }

    v7 = *a3;
    if (*a3 == *a4)
    {
      if (!v6)
      {
LABEL_23:
        __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
      }

      v12 = *result;
      while (1)
      {
        *result = ++v6;
        if (v6 == *a2)
        {
          break;
        }

        if (!v12)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        if (*v12 < *v6)
        {
          v13 = *a5;
          if (!*a5)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          *v13 = *v12;
          *a5 = v13 + 1;
          v6 = *result;
          v12 = *result;
        }

        if (!v6)
        {
          goto LABEL_23;
        }
      }

      if (!v12)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v14 = *a5;
      if (!*a5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      *v14 = *v12;
      *a5 = v14 + 1;
      break;
    }

    if (!v6)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (!v7)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v8 = *v6;
    if (*v6 >= *v7)
    {
      if (*v7 >= v8)
      {
        v11 = result;
      }

      else
      {
        v6 = *a3;
        v11 = a3;
      }
    }

    else
    {
      v9 = v6 + 1;
      do
      {
        *result = v9;
        if (v9 == *a2)
        {
          break;
        }

        v10 = *v9++;
      }

      while (v8 >= v10);
      v6 = *a5;
      if (!*a5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      *v6 = v8;
      v11 = a5;
    }

    *v11 = v6 + 1;
  }

  *a6 = *a5;
  return result;
}

char *boost::movelib::adaptive_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (result != a2 && a2 != a3)
  {
    v10[3] = v5;
    v10[4] = v6;
    v7 = a2 - result;
    while (*a2 >= *result)
    {
      result += 4;
      v7 -= 4;
      if (result == a2)
      {
        return result;
      }
    }

    for (i = a3 - a2; ; i -= 4)
    {
      v9 = *(a3 - 1);
      a3 -= 4;
      if (v9 < *(a2 - 1))
      {
        break;
      }

      if (a3 == a2)
      {
        return result;
      }
    }

    v10[0] = a4;
    v10[1] = 0;
    v10[2] = a5;
    return boost::movelib::detail_adaptive::adaptive_merge_impl<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(result, v7 >> 2, i >> 2, v10);
  }

  return result;
}

char *boost::movelib::detail_adaptive::adaptive_merge_impl<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(char *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a4 + 16);
  if (a2 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  if (v8 >= v9)
  {
    v22 = &a1[4 * a2];
    v23 = &v22[4 * a3];

    return boost::movelib::op_buffered_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(a1, v22, v23, a4);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = -32;
    v13 = a3 + a2;
    do
    {
      v10 *= 2;
      *(&v15 + 1) = v11;
      *&v15 = v13;
      v14 = v15 >> 62;
      v13 *= 4;
      v16 = v10 >= v14;
      if (v10 < v14)
      {
        v17 = ~v10;
      }

      else
      {
        v17 = 0;
      }

      v11 = v17 + v14;
      if (!v16)
      {
        v10 += 2;
      }

      v16 = __CFADD__(v12++, 1);
    }

    while (!v16);
    v18 = v10 >> 1;
    if ((a3 + a2) % (v10 >> 1))
    {
      ++v18;
    }

    if (2 * v18 >= a2 || 2 * v18 >= a3)
    {
      v20 = &a1[4 * a2];
      v21 = &v20[4 * a3];
LABEL_42:

      return boost::movelib::merge_bufferless_ONlogN_recursive<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(a1, v20, v21, a2, a3);
    }

    if (v8 >= v18)
    {
      v25 = 0;
    }

    else
    {
      v25 = v18;
    }

    if (v8 <= v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = *(a4 + 16);
    }

    v27 = a3 / v26;
    v28 = a3 / v26 + a2 / v26;
    do
    {
      v29 = v28;
      v30 = (a2 - (v25 + v28--)) / v26 + v27;
    }

    while (v29 >= v30);
    v31 = v29 + 1;
    if (v29 + 1 < (a2 - v25 + ~v29) / v26 + v27)
    {
      boost::movelib::detail_adaptive::adaptive_merge_impl<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
    }

    if (v8)
    {
      v32 = *a4 + 4 * v8;
      v33 = (*a4 + 4 * v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v32 - v33) >> 3 >= (a2 - v25) / v26 + v27 && v32 >= v33)
      {
        v31 = 0;
      }
    }

    v35 = v31 + v25;
    v43 = &a1[4 * a2];
    v36 = boost::movelib::detail_adaptive::collect_unique<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(a1, v43, v31 + v25, a4);
    v37 = v36;
    if (v36 != v31 + v25 && v36 <= 3)
    {
      boost::movelib::merge_bufferless_ONlogN_recursive<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v7, &v7[4 * v36], v43, v36, (4 * a2 - 4 * v36) >> 2);
      v21 = &v43[a3];
      a1 = v7;
      v20 = v43;
      goto LABEL_42;
    }

    v44 = v36 == v35;
    if (v36 == v35)
    {
      v38 = *(a4 + 16) >= v26;
      v39 = 1;
    }

    else
    {
      v40 = boost::movelib::detail_adaptive::lblock_for_combine<unsigned long>(0, v36, a3 + a2, &v44);
      v26 = v40;
      v38 = 0;
      v39 = v44;
      if (v44)
      {
        v25 = v40;
      }

      else
      {
        v25 = 0;
      }

      v31 = v37;
    }

    result = boost::movelib::detail_adaptive::adaptive_merge_combine_blocks<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(v7, a2, a3, v37, v31, v26, v39, v38, a4);
    if (v37 != v25 || !v38)
    {
      if (*(a4 + 8))
      {
        *(a4 + 8) = 0;
      }

      if (v37 != v25 && v38)
      {
        v41 = v25;
      }

      else
      {
        v41 = 0;
      }

      v42 = &v7[4 * (v37 - v41)];
      boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort(v7, v42);
      return boost::movelib::detail_adaptive::stable_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(v7, v42, &v43[a3], a4);
    }
  }

  return result;
}

unint64_t boost::movelib::detail_adaptive::collect_unique<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(char *a1, unsigned int *a2, unint64_t a3, int **a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = a1;
  v8 = (a1 + 4);
  if (a4[2] >= a3)
  {
    v19 = boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::add<unsigned int *>(a4, a1);
    v9 = 1;
    if (v8 != a2 && a3 != 1)
    {
      v20 = v19;
      v9 = 1;
      v21 = v7;
      v22 = v8;
      do
      {
        v23 = &(*a4)[a4[1]];
        v24 = v20;
        if (v23 != v20)
        {
          v25 = (v23 - v20) >> 2;
          v24 = v20;
          do
          {
            v26 = v25 >> 1;
            v27 = &v24[v25 >> 1];
            v29 = *v27;
            v28 = v27 + 1;
            v25 += ~(v25 >> 1);
            if (v29 < *v8)
            {
              v24 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        if (v24 == v23 || *v8 < *v24)
        {
          while (v22 != v8)
          {
            v30 = *v22++;
            *v21 = v30;
            v21 += 4;
          }

          v22 = (v8 + 1);
          ++v9;
          boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::insert<unsigned int *>(a4, v24, v8);
        }

        ++v8;
      }

      while (v8 != a2 && v9 < a3);
      if (v21 != v7)
      {
        v31 = v21;
        do
        {
          v32 = *(v31 - 1);
          v31 -= 4;
          *&v21[4 * v9 - 4] = v32;
          v21 = v31;
        }

        while (v31 != v7);
      }
    }

    v33 = a4[1];
    if (v33)
    {
      v34 = *a4;
      v35 = 4 * v33;
      do
      {
        v36 = *v34++;
        *v7 = v36;
        v7 += 4;
        v35 -= 4;
      }

      while (v35);
    }
  }

  else
  {
    v9 = 1;
    v10 = a1;
    if (v8 != a2 && a3 != 1)
    {
      v9 = 1;
      v10 = a1;
      v11 = a1 + 4;
      do
      {
        v12 = v10;
        if (v11 != v10)
        {
          v13 = (v11 - v10) >> 2;
          v12 = v10;
          do
          {
            v14 = v13 >> 1;
            v15 = &v12[4 * (v13 >> 1)];
            v17 = *v15;
            v16 = v15 + 4;
            v13 += ~(v13 >> 1);
            if (v17 < *v8)
            {
              v12 = v16;
            }

            else
            {
              v13 = v14;
            }
          }

          while (v13);
        }

        if (v12 == v11 || *v8 < *v12)
        {
          v18 = boost::movelib::rotate_gcd<unsigned int *>(v10, v11, v8);
          v11 = (v8 + 1);
          ++v9;
          boost::movelib::rotate_gcd<unsigned int *>(&v12[v18 - v10], v8, v8 + 4);
          v10 = v18;
        }

        ++v8;
      }

      while (v8 != a2 && v9 < a3);
    }

    boost::movelib::rotate_gcd<unsigned int *>(v7, v10, &v10[4 * v9]);
  }

  return v9;
}

unint64_t boost::movelib::detail_adaptive::lblock_for_combine<unsigned long>(unint64_t result, unint64_t a2, unint64_t a3, BOOL *a4)
{
  if (a3 <= 1)
  {
    boost::movelib::detail_adaptive::lblock_for_combine<unsigned long>();
  }

  if (result)
  {
    *a4 = 1;
    return result;
  }

  if (a2 <= 3)
  {
    boost::movelib::detail_adaptive::lblock_for_combine<unsigned long>();
  }

  v4 = a2 - (a2 >> 1);
  if (v4 < 4)
  {
    *a4 = 0;
    return a3 / a2;
  }

  result = a2 >> 1;
  *a4 = v4 >= a3 / (a2 >> 1);
  if (v4 < a3 / (a2 >> 1))
  {
    return a3 / a2;
  }

  return result;
}

char *boost::movelib::detail_adaptive::adaptive_merge_combine_blocks<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8, uint64_t *a9)
{
  v11 = a3 + a2 - a4;
  v12 = a2 - a4;
  if (a5)
  {
    v13 = &a1[a4];
    if (a8)
    {
      v14 = a9[1];
      if (v14 < a6)
      {
        boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::initialize_until(a9, a6, a1);
        v14 = a9[1];
      }

      if (v14 < a6)
      {
        boost::movelib::detail_adaptive::adaptive_merge_combine_blocks<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
      }

      v22 = 0;
      v23 = 0;
      v20 = 0;
      v21 = 0;
      boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(a1, v11, v12, a6, a9, &v23, &v22, &v21, &v20, 1);
      return boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>(a1, v13, a6, v21, v23, v22, v20, *a9);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v20 = 0;
      v21 = 0;
      boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(a1, a3 + a2 - a4, v12, a6, a9, &v23, &v22, &v21, &v20, 1);
      if (a7)
      {
        return boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op,unsigned int *>(a1, v13, a6, v21, v23, v22, v20, &v13[-a6]);
      }

      else
      {
        return boost::movelib::detail_adaptive::merge_blocks_bufferless<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(a1, v13, a6, v21, v23, v22, v20);
      }
    }
  }

  else
  {
    v16 = a9[1];
    if (v16 <= a6)
    {
      if (v16 < a6)
      {
        boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::initialize_until(a9, a6, a1);
      }
    }

    else
    {
      a9[1] = a6;
    }

    v18 = *a9;
    v22 = 0;
    v23 = 0;
    v19 = v18 + 4 * a6 + 7;
    v20 = 0;
    v21 = 0;
    boost::movelib::detail_adaptive::combine_params<unsigned long *,boost::movelib::detail_adaptive::less,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(v19 & 0xFFFFFFFFFFFFFFF8, v11, v12, a6, a9, &v23, &v22, &v21, &v20, 1);
    if (a9[1] < a6)
    {
      boost::movelib::detail_adaptive::adaptive_merge_combine_blocks<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
    }

    result = boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned long *,boost::movelib::detail_adaptive::less,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>((v19 & 0xFFFFFFFFFFFFFFF8), a1, a6, v21, v23, v22, v20, *a9);
    if (a9[1])
    {
      a9[1] = 0;
    }
  }

  return result;
}

char *boost::movelib::op_buffered_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(char *result, char *a2, char *a3, char **a4)
{
  if (result != a2 && a2 != a3)
  {
    v6 = *(a2 - 1);
    if (*a2 < v6)
    {
      v8 = result;
      if (a2 - result <= (a3 - a2))
      {
        v17 = (a2 - result) >> 2;
        do
        {
          v18 = v17 >> 1;
          v19 = &v8[v17 >> 1];
          v21 = *v19;
          v20 = v19 + 1;
          v17 += ~(v17 >> 1);
          if (*a2 >= v21)
          {
            v8 = v20;
          }

          else
          {
            v17 = v18;
          }
        }

        while (v17);
        boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::move_assign<unsigned int *>(a4, v8, (a2 - v8) >> 2);
        v22 = *a4;
        v23 = &(*a4)[4 * a4[1]];

        return boost::movelib::op_merge_with_right_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,unsigned int *,boost::movelib::move_op>(v22, v23, v8, a2, a3);
      }

      else
      {
        v9 = (a3 - a2) >> 2;
        v10 = a2;
        do
        {
          v11 = v9 >> 1;
          v12 = (v10 + 4 * (v9 >> 1));
          v14 = *v12;
          v13 = v12 + 1;
          v9 += ~(v9 >> 1);
          if (v14 < v6)
          {
            v10 = v13;
          }

          else
          {
            v9 = v11;
          }
        }

        while (v9);
        boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::move_assign<unsigned int *>(a4, a2, (v10 - a2) >> 2);
        v15 = *a4;
        v16 = &(*a4)[4 * a4[1]];

        return boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>(v8, a2, v10, v15, v16);
      }
    }
  }

  return result;
}

uint64_t boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::move_assign<unsigned int *>(uint64_t result, int *a2, unint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= a3)
  {
    if (a3)
    {
      v10 = *result;
      v11 = 4 * a3;
      do
      {
        v12 = *a2++;
        *v10++ = v12;
        v11 -= 4;
      }

      while (v11);
    }
  }

  else
  {
    v4 = &a2[v3];
    v5 = *result;
    if (v3)
    {
      v6 = 4 * v3;
      do
      {
        v7 = *a2++;
        *v5++ = v7;
        v6 -= 4;
      }

      while (v6);
    }

    v8 = 4 * a3 - 4 * v3;
    do
    {
      v9 = *v4++;
      *v5++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  *(result + 8) = a3;
  return result;
}

char *boost::movelib::op_merge_with_right_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,unsigned int *,boost::movelib::move_op>(char *result, char *a2, char *a3, char *a4, char *a5)
{
  if (a2 - result != a4 - a3)
  {
    boost::movelib::op_merge_with_right_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,unsigned int *,boost::movelib::move_op>();
  }

  while (result != a2)
  {
    if (a4 == a5)
    {
      do
      {
        v7 = *result;
        result += 4;
        *a3 = v7;
        a3 += 4;
      }

      while (result != a2);
      if (a3 != a5)
      {
        boost::movelib::op_merge_with_right_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,unsigned int *,boost::movelib::move_op>();
      }

      return result;
    }

    v5 = *a4;
    v6 = *a4 >= *result;
    if (*a4 >= *result)
    {
      v5 = *result;
    }

    a4 += 4 * (*a4 < *result);
    result += 4 * v6;
    *a3 = v5;
    a3 += 4;
  }

  return result;
}

uint64_t boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 - a2 != a5 - a4)
  {
    boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>();
  }

  while (a5 != a4)
  {
    if (a2 == result)
    {
      do
      {
        v8 = *(a5 - 4);
        a5 -= 4;
        *(a3 - 4) = v8;
        a3 -= 4;
      }

      while (a5 != a4);
      if (a3 != result)
      {
        boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>();
      }

      return result;
    }

    v5 = *(a5 - 4);
    v6 = *(a2 - 4);
    v7 = v5 >= v6;
    if (v5 <= v6)
    {
      v5 = *(a2 - 4);
    }

    *(a3 - 4) = v5;
    a3 -= 4;
    if (v7)
    {
      a5 -= 4;
    }

    if (!v7)
    {
      a2 -= 4;
    }
  }

  return result;
}

char *boost::movelib::merge_bufferless_ONlogN_recursive<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(char *result, char *a2, char *a3, unint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = a4;
    if (a4)
    {
      v6 = a5;
      v7 = result;
      while ((v5 | v6) != 1)
      {
        if (v5 + v6 <= 0xF)
        {

          return boost::movelib::merge_bufferless_ON2<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v7, a2, a3);
        }

        if (v5 <= v6)
        {
          v16 = v6 >> 1;
          v11 = &a2[4 * (v6 >> 1)];
          if (a2 == v7)
          {
            v9 = v7;
          }

          else
          {
            v17 = (a2 - v7) >> 2;
            v9 = v7;
            do
            {
              v18 = v17 >> 1;
              v19 = &v9[4 * (v17 >> 1)];
              v21 = *v19;
              v20 = v19 + 4;
              v17 += ~(v17 >> 1);
              if (*v11 >= v21)
              {
                v9 = v20;
              }

              else
              {
                v17 = v18;
              }
            }

            while (v17);
          }

          v8 = (v9 - v7) >> 2;
        }

        else
        {
          v8 = v5 >> 1;
          v9 = &v7[4 * (v5 >> 1)];
          if (a3 == a2)
          {
            v11 = a2;
          }

          else
          {
            v10 = (a3 - a2) >> 2;
            v11 = a2;
            do
            {
              v12 = v10 >> 1;
              v13 = &v11[4 * (v10 >> 1)];
              v15 = *v13;
              v14 = v13 + 4;
              v10 += ~(v10 >> 1);
              if (v15 < *v9)
              {
                v11 = v14;
              }

              else
              {
                v10 = v12;
              }
            }

            while (v10);
          }

          v16 = (v11 - a2) >> 2;
        }

        v22 = boost::movelib::rotate_gcd<unsigned int *>(v9, a2, v11);
        v23 = v22;
        if (v16 + v8 >= v5 + v6 - (v16 + v8))
        {
          result = boost::movelib::merge_bufferless_ONlogN_recursive<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v22, v11, a3, v5 - v8, v6 - v16);
          v6 = v16;
          v5 = v8;
          a3 = v23;
          a2 = v9;
          if (!v16)
          {
            return result;
          }
        }

        else
        {
          result = boost::movelib::merge_bufferless_ONlogN_recursive<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v7, v9, v22, v8, v16);
          v5 -= v8;
          v6 -= v16;
          a2 = v11;
          v7 = v23;
          if (!v6)
          {
            return result;
          }
        }

        if (!v5)
        {
          return result;
        }
      }

      v24 = *v7;
      if (*a2 < *v7)
      {
        *v7 = *a2;
        *a2 = v24;
      }
    }
  }

  return result;
}

char *boost::movelib::merge_bufferless_ON2<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(char *result, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  if (a2 - result >= a3 - a2)
  {
    if (a2 != a3)
    {
      if (a2 == result)
      {
LABEL_27:

        return boost::movelib::rotate_gcd<unsigned int *>(v5, v4, v3);
      }

      else
      {
LABEL_17:
        v14 = v4;
        v15 = (v4 - v5) >> 2;
        v4 = v5;
        do
        {
          v16 = v15 >> 1;
          v17 = &v4[4 * (v15 >> 1)];
          v19 = *v17;
          v18 = v17 + 4;
          v15 += ~(v15 >> 1);
          if (*(v3 - 1) >= v19)
          {
            v4 = v18;
          }

          else
          {
            v15 = v16;
          }
        }

        while (v15);
        result = boost::movelib::rotate_gcd<unsigned int *>(v4, v14, v3);
        if (v4 != v5)
        {
          v20 = result - 4;
          while (v20 != v4)
          {
            v21 = *(v20 - 1);
            v20 -= 4;
            if (v21 < *(v4 - 1))
            {
              v3 = v20 + 4;
              if (v4 != v5)
              {
                goto LABEL_17;
              }

              goto LABEL_27;
            }
          }
        }
      }
    }
  }

  else if (result != a2)
  {
    v6 = a2;
LABEL_4:
    if (v4 != v3)
    {
      v7 = (v3 - v4) >> 2;
      v6 = v4;
      do
      {
        v8 = v7 >> 1;
        v9 = &v6[4 * (v7 >> 1)];
        v11 = *v9;
        v10 = v9 + 4;
        v7 += ~(v7 >> 1);
        if (v11 < *v5)
        {
          v6 = v10;
        }

        else
        {
          v7 = v8;
        }
      }

      while (v7);
    }

    result = boost::movelib::rotate_gcd<unsigned int *>(v5, v4, v6);
    if (v6 != v3)
    {
      v12 = result + 4;
      while (v12 != v6)
      {
        v13 = *v12;
        v12 += 4;
        if (*v6 < v13)
        {
          v5 = v12 - 4;
          v4 = v6;
          goto LABEL_4;
        }
      }
    }
  }

  return result;
}

char *boost::movelib::rotate_gcd<unsigned int *>(char *a1, char *a2, char *a3)
{
  v3 = a3;
  if (a1 != a2)
  {
    v4 = a1;
    if (a2 == a3)
    {
      return a1;
    }

    else
    {
      v5 = a2 - a1;
      v6 = &a3[-(a2 - a1)];
      if (v6 == a2)
      {
        v16 = a2;
        do
        {
          v17 = *v4;
          *v4 = *v16;
          v4 += 4;
          *v16 = v17;
          v16 += 4;
        }

        while (v4 != a2);
      }

      else
      {
        v7 = v5 >> 2;
        v8 = boost::movelib::gcd<unsigned long>((a3 - a1) >> 2, v5 >> 2);
        if (v8)
        {
          v9 = &v4[4 * v8];
          v10 = &v4[v5];
          do
          {
            v11 = *v4;
            v12 = &v4[4 * v7];
            v13 = v4;
            do
            {
              v14 = v12;
              *v13 = *v12;
              v15 = v3 - v12;
              if (v7 >= v15 >> 2)
              {
                v12 = &v10[-v15];
              }

              else
              {
                v12 = &v14[4 * v7];
              }

              v13 = v14;
            }

            while (v12 != v4);
            *v14 = v11;
            v4 += 4;
          }

          while (v4 != v9);
        }
      }

      return v6;
    }
  }

  return v3;
}

unint64_t boost::movelib::gcd<unsigned long>(unint64_t result, unint64_t a2)
{
  if ((a2 - 1) & a2 | (result - 1) & result)
  {
    if ((a2 | result))
    {
      v2 = 1;
      if (!result)
      {
        return (a2 + result) * v2;
      }
    }

    else
    {
      v2 = 1;
      do
      {
        v2 *= 2;
        result >>= 1;
        a2 >>= 1;
      }

      while (((a2 | result) & 1) == 0);
      if (!result)
      {
        return (a2 + result) * v2;
      }
    }

    if (a2)
    {
      do
      {
        v3 = (a2 - result) >> 1;
        v4 = (result - a2) >> 1;
        if (result >= a2)
        {
          v3 = a2;
        }

        else
        {
          v4 = result;
        }

        if ((a2 & 1) == 0)
        {
          v4 = result;
          v3 = a2 >> 1;
        }

        v5 = (result & 1) == 0;
        if (result)
        {
          result = v4;
        }

        else
        {
          result >>= 1;
        }

        if (!v5)
        {
          a2 = v3;
        }
      }

      while (result && a2);
    }

    return (a2 + result) * v2;
  }

  if (result >= a2)
  {
    return a2;
  }

  return result;
}

_DWORD *boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::add<unsigned int *>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (v2 >= a1[2])
  {
    boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::add<unsigned int *>();
  }

  v3 = (*a1 + 4 * v2);
  *v3 = *a2;
  a1[1] = v2 + 1;
  return v3;
}

_DWORD *boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::insert<unsigned int *>(void *a1, _DWORD *a2, _DWORD *a3)
{
  v5 = *a1 + 4 * a1[1];
  if (v5 == a2)
  {

    return boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::add<unsigned int *>(a1, a3);
  }

  else
  {
    result = boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::add<unsigned int *>(a1, (v5 - 4));
    v8 = *a1 + 4 * a1[1];
    if ((v8 - 8) != a2)
    {
      v9 = (v8 - 12);
      do
      {
        v9[1] = *v9;
      }

      while (v9-- != a2);
    }

    *a2 = *a3;
  }

  return result;
}

uint64_t *boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::initialize_until(uint64_t *result, unint64_t a2, int *a3)
{
  v3 = result[1];
  if (v3 >= result[2])
  {
    boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::initialize_until();
  }

  if (v3 < a2)
  {
    v4 = *result;
    v5 = *a3;
    *(*result + 4 * v3) = *a3;
    if (v3 + 1 != a2)
    {
      v6 = 0;
      v7 = ~v3 + a2;
      v8 = vdupq_n_s64(v7 - 1);
      v9 = (v4 + 4 * v3 + 8);
      do
      {
        v10 = vdupq_n_s64(v6);
        v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_241782A30)));
        if (vuzp1_s16(v11, *v8.i8).u8[0])
        {
          *(v9 - 1) = v5;
        }

        if (vuzp1_s16(v11, *&v8).i8[2])
        {
          *v9 = v5;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_241782A20)))).i32[1])
        {
          v9[1] = v5;
          v9[2] = v5;
        }

        v6 += 4;
        v9 += 4;
      }

      while (((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v6);
    }

    result[1] = a2;
    *a3 = v5;
  }

  return result;
}

uint64_t boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, unint64_t *a7, unint64_t *a8, unint64_t *a9, char a10)
{
  v10 = a3 / a4;
  *a8 = a3 % a4;
  v11 = (a2 - a3 % a4) % a4;
  *a9 = v11;
  v12 = a2 - (v11 + *a8);
  v13 = v12 / a4;
  if (v12 % a4)
  {
    boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
  }

  *a6 = v10;
  v14 = v13 - v10;
  *a7 = v14;
  if (v13 < *a6)
  {
    boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
  }

  if (a10)
  {
    v15 = result + 4 * v14 + 4 * *a6;

    return boost::movelib::detail_adaptive::initialize_keys<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(result, v15);
  }

  return result;
}

uint64_t boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>(_DWORD *a1, int *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v8 = a3;
  v9 = a2;
  v10 = &a1[a5];
  v84 = a8;
  v85 = a8;
  v11 = &a2[a4];
  v83 = v11;
  v12 = a6 + a5;
  v66 = &v11[(a6 + a5) * a3];
  if (!(a6 + a5))
  {
    goto LABEL_74;
  }

  v68 = a8;
  if (a6)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0;
  }

  if (v13 + 1 < v12)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = a6 + a5;
  }

  v70 = &a1[v12];
  v64 = a5;
  v65 = 4 * a3;
  v15 = 1;
  v62 = a1;
  v63 = a6;
  v16 = a6;
  v17 = v11;
  v18 = a1;
  while (1)
  {
    v73 = a5;
    v75 = v15;
    v19 = v10;
    v20 = boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v18, v11, v8, v13, v14);
    v15 = v75;
    v10 = v19;
    v21 = v20;
    if (v14 <= v20 + 2)
    {
      v14 = v20 + 2;
    }

    v22 = v14 >= v12 ? v12 : v14;
    v23 = v83;
    v24 = v84;
    v25 = &v83[v21 * v8];
    v11 = &v83[v8];
    v26 = v85;
    v27 = &v17[v8];
    v74 = v12;
    if (!v16)
    {
      if (!a7)
      {
        if (v75)
        {
          a8 = v68;
          goto LABEL_67;
        }

        v28 = &v18[v21];
        if (v19 == v70)
        {
          v29 = 1;
          goto LABEL_35;
        }

LABEL_18:
        v29 = *v28 < *v19;
        if (((v75 ^ v29) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }

      if (*v66 < *v25)
      {
        break;
      }
    }

    v28 = &v18[v21];
    if (v19 != v70)
    {
      goto LABEL_18;
    }

    v29 = 1;
    if (v75)
    {
LABEL_21:
      if (v85 != v84)
      {
        do
        {
          v30 = *v26++;
          *v9++ = v30;
        }

        while (v26 != v24);
        v84 = v68;
        v85 = v68;
        if (v9 != v17)
        {
          boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
        }
      }

      v85 = v68;
      v24 = v68;
      if (v21 * v8)
      {
        if (a3)
        {
          v31 = v65;
          v32 = v65 * v21;
          v33 = v23;
          v24 = v68;
          do
          {
            *v24++ = *(v33 + v32);
            *(v33 + v32) = *v33;
            ++v33;
            v31 -= 4;
          }

          while (v31);
        }

        v34 = *v28;
        *v28 = *v18;
        *v18 = v34;
        v35 = v18;
        if (v19 == v28 || (v35 = v28, v19 == v18))
        {
          v10 = v35;
        }
      }

      v84 = v24;
      v26 = v68;
      v36 = v73;
      goto LABEL_56;
    }

LABEL_35:
    v69 = v28;
    v71 = v29;
    v37 = v22;
    v38 = v9;
    v39 = v17;
    v40 = v11;
    v41 = v25;
    v42 = v27;
    v23 = boost::movelib::detail_adaptive::op_partial_merge_and_save<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(v38, v39, &v83, v11, v25, &v85, &v84, v75 & 1);
    v27 = v42;
    v44 = v84;
    v43 = v85;
    if (v84 != v85 && v84 - v85 != v42 - v23)
    {
      boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
    }

    if (v85 == v84)
    {
      v85 = v68;
      v48 = v83;
      v11 = v40;
      v49 = (&v41[a3] + v83 - v40);
      v10 = v19;
      v22 = v37;
      v24 = v68;
      if (v83 == v49)
      {
        v36 = v73;
        v29 = v71;
      }

      else
      {
        v29 = v71;
        if (v83 != v40)
        {
          v24 = v68;
          do
          {
            *v24++ = *v49;
            v50 = *v48++;
            *v49++ = v50;
          }

          while (v48 != v40);
        }

        v51 = *v69;
        *v69 = *v18;
        *v18 = v51;
        v52 = v18;
        if (v19 == v69 || (v52 = v69, v19 == v18))
        {
          v10 = v52;
        }

        v36 = v73;
      }

      v84 = v24;
      v26 = v68;
      v12 = v74;
      v47 = v75;
    }

    else
    {
      v10 = v19;
      v11 = v40;
      v22 = v37;
      if (v21)
      {
        v45 = *v69;
        *v69 = *v18;
        *v18 = v45;
        v46 = v18;
        v47 = v75;
        v36 = v73;
        v29 = v71;
        if (v19 == v69 || (v46 = v69, v19 == v18))
        {
          v24 = v44;
          v26 = v43;
          v10 = v46;
        }

        else
        {
          v24 = v44;
          v26 = v43;
        }

        v12 = v74;
      }

      else
      {
        v24 = v84;
        v26 = v85;
        v36 = v73;
        v12 = v74;
        v47 = v75;
        v29 = v71;
      }
    }

    v15 = v47 ^ (v43 == v44);
LABEL_56:
    if (v36)
    {
      v53 = !v29;
    }

    else
    {
      v53 = 1;
    }

    if (v16)
    {
      v54 = v29;
    }

    else
    {
      v54 = 1;
    }

    if (v53 == 1 && v54)
    {
      boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
    }

    a5 = v36 - v29;
    v16 -= !v29;
    v83 = v11;
    ++v18;
    v13 -= v13 != 0;
    v14 = v22 - (v14 != 0);
    v9 = v23;
    v17 = v27;
    --v12;
    v8 = a3;
    if (!v12)
    {
      v9 = v23;
      v17 = v27;
      goto LABEL_66;
    }
  }

  v27 = v17;
  v23 = v9;
LABEL_66:
  v11 = v27;
  a8 = v68;
  if ((v15 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_67:
  v27 = v9;
  v11 = v17;
  v23 = v9;
LABEL_68:
  if (v26 == v24)
  {
    v9 = v27;
    a6 = v63;
    a5 = v64;
  }

  else
  {
    a6 = v63;
    a5 = v64;
    do
    {
      v55 = *v26++;
      *v23++ = v55;
    }

    while (v26 != v24);
    v9 = v27;
  }

  a1 = v62;
LABEL_74:
  v56 = v11;
  if (a7)
  {
    v57 = v66;
    v58 = 4 * a7;
    v59 = a8;
    do
    {
      v60 = *v57++;
      *v59++ = v60;
      v58 -= 4;
    }

    while (v58);
  }

  v84 = &a8[a7];
  v85 = a8;
  v82 = v84;
  v79 = v10;
  v80 = &a1[a6 + a5];
  v78 = v66;
  v76 = &v66[a7];
  v77 = a8;
  boost::movelib::detail_adaptive::op_merge_blocks_with_irreg<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(&v80, &v79, 0, &v78, &v82, &v77, &v76, v8, &v81, v12, 0, v12, 0, 1u);
  v84 = v82;
  if ((v81 - v56) != (v82 - v85))
  {
    boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
  }

  return boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>(v9, v56, v81, v85, v82);
}

char *boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op,unsigned int *>(_DWORD *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v8 = a3;
  v9 = a2;
  v10 = &a1[a5];
  v86 = a8;
  v87 = a8;
  v11 = &a2[4 * a4];
  v85 = v11;
  v12 = a6 + a5;
  v68 = &v11[(a6 + a5) * a3];
  if (!(a6 + a5))
  {
    goto LABEL_75;
  }

  v70 = a8;
  if (a6)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0;
  }

  if (v13 + 1 < v12)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = a6 + a5;
  }

  v72 = &a1[v12];
  v66 = a5;
  v67 = 4 * a3;
  v15 = 1;
  v64 = a1;
  v65 = a6;
  v16 = a6;
  v17 = v11;
  v18 = a1;
  while (1)
  {
    v75 = a5;
    v77 = v15;
    v19 = v10;
    v20 = boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v18, v11, v8, v13, v14);
    v15 = v77;
    v10 = v19;
    v21 = v20;
    v22 = v14 <= v20 + 2 ? v20 + 2 : v14;
    v23 = v22 >= v12 ? v12 : v22;
    v24 = v85;
    v25 = v86;
    v26 = &v85[v21 * v8];
    v11 = &v85[v8];
    v27 = v87;
    v28 = &v17[v8];
    v76 = v12;
    if (!v16)
    {
      if (!a7)
      {
        if (v77)
        {
          a8 = v70;
          goto LABEL_68;
        }

        v29 = &v18[v21];
        if (v19 == v72)
        {
          v30 = 1;
          goto LABEL_36;
        }

LABEL_19:
        v30 = *v29 < *v19;
        if (((v77 ^ v30) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }

      if (*v68 < *v26)
      {
        break;
      }
    }

    v29 = &v18[v21];
    if (v19 != v72)
    {
      goto LABEL_19;
    }

    v30 = 1;
    if (v77)
    {
LABEL_22:
      if (v87 != v86)
      {
        do
        {
          v31 = *v27;
          *v27++ = *v9;
          *v9 = v31;
          v9 += 4;
        }

        while (v27 != v25);
        v86 = v70;
        v87 = v70;
        if (v9 != v17)
        {
          boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
        }
      }

      v87 = v70;
      v25 = v70;
      if (v21 * v8)
      {
        if (a3)
        {
          v32 = v67;
          v33 = v67 * v21;
          v34 = v24;
          v25 = v70;
          do
          {
            v35 = *v25;
            *v25++ = *(v34 + v33);
            *(v34 + v33) = *v34;
            *v34++ = v35;
            v32 -= 4;
          }

          while (v32);
        }

        v36 = *v29;
        *v29 = *v18;
        *v18 = v36;
        v37 = v18;
        if (v19 == v29 || (v37 = v29, v19 == v18))
        {
          v10 = v37;
        }
      }

      v86 = v25;
      v27 = v70;
      v38 = v75;
      goto LABEL_57;
    }

LABEL_36:
    v71 = v29;
    v73 = v30;
    v39 = v22;
    v40 = v23;
    v41 = v9;
    v42 = v17;
    v43 = v11;
    v44 = v28;
    v24 = boost::movelib::detail_adaptive::op_partial_merge_and_save<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(v41, v42, &v85, v11, v26, &v87, &v86, v77 & 1);
    v28 = v44;
    v46 = v86;
    v45 = v87;
    if (v86 != v87 && v86 - v87 != v44 - v24)
    {
      boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
    }

    if (v87 == v86)
    {
      v87 = v70;
      v50 = v85;
      v11 = v43;
      v51 = (&v26[a3] + v85 - v43);
      v10 = v19;
      v23 = v40;
      v22 = v39;
      v25 = v70;
      if (v85 == v51)
      {
        v38 = v75;
        v30 = v73;
      }

      else
      {
        v30 = v73;
        if (v85 != v43)
        {
          v25 = v70;
          do
          {
            v52 = *v25;
            *v25++ = *v51;
            *v51++ = *v50;
            *v50++ = v52;
          }

          while (v50 != v43);
        }

        v53 = *v71;
        *v71 = *v18;
        *v18 = v53;
        v54 = v18;
        if (v19 == v71 || (v54 = v71, v19 == v18))
        {
          v10 = v54;
        }

        v38 = v75;
      }

      v86 = v25;
      v27 = v70;
      v12 = v76;
      v49 = v77;
    }

    else
    {
      v10 = v19;
      v11 = v43;
      v23 = v40;
      v22 = v39;
      if (v21)
      {
        v47 = *v71;
        *v71 = *v18;
        *v18 = v47;
        v48 = v18;
        v49 = v77;
        v38 = v75;
        v30 = v73;
        if (v19 == v71 || (v48 = v71, v19 == v18))
        {
          v25 = v46;
          v27 = v45;
          v10 = v48;
        }

        else
        {
          v25 = v46;
          v27 = v45;
        }

        v12 = v76;
      }

      else
      {
        v25 = v86;
        v27 = v87;
        v38 = v75;
        v12 = v76;
        v49 = v77;
        v30 = v73;
      }
    }

    v15 = v49 ^ (v45 == v46);
LABEL_57:
    if (v38)
    {
      v55 = !v30;
    }

    else
    {
      v55 = 1;
    }

    if (v16)
    {
      v56 = v30;
    }

    else
    {
      v56 = 1;
    }

    if (v55 == 1 && v56)
    {
      boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
    }

    a5 = v38 - v30;
    v16 -= !v30;
    v85 = v11;
    ++v18;
    v13 -= v13 != 0;
    v14 = v23 - (v22 != 0);
    v9 = v24;
    v17 = v28;
    --v12;
    v8 = a3;
    if (!v12)
    {
      v9 = v24;
      v17 = v28;
      goto LABEL_67;
    }
  }

  v28 = v17;
  v24 = v9;
LABEL_67:
  v11 = v28;
  a8 = v70;
  if ((v15 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_68:
  v28 = v9;
  v11 = v17;
  v24 = v9;
LABEL_69:
  if (v27 == v25)
  {
    v9 = v28;
    a6 = v65;
    a5 = v66;
  }

  else
  {
    a6 = v65;
    a5 = v66;
    do
    {
      v57 = *v27;
      *v27++ = *v24;
      *v24++ = v57;
    }

    while (v27 != v25);
    v9 = v28;
  }

  a1 = v64;
LABEL_75:
  v58 = v11;
  if (a7)
  {
    v59 = v68;
    v60 = 4 * a7;
    v61 = a8;
    do
    {
      v62 = *v59;
      *v59++ = *v61;
      *v61++ = v62;
      v60 -= 4;
    }

    while (v60);
  }

  v86 = &a8[a7];
  v87 = a8;
  v84 = v86;
  v81 = v10;
  v82 = &a1[a6 + a5];
  v80 = v68;
  v78 = &v68[a7];
  v79 = a8;
  boost::movelib::detail_adaptive::op_merge_blocks_with_irreg<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(&v82, &v81, 0, &v80, &v84, &v79, &v78, v8, &v83, v12, 0, v12, 0, 0, 1u);
  v86 = v84;
  if (v83 - v58 != v84 - v87)
  {
    boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
  }

  return boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op,unsigned int *,unsigned int *>(v9, v58, v83, v87, v84);
}