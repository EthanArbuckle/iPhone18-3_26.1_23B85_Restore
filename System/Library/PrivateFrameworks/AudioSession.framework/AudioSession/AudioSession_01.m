void sub_1DE8A6E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::client::TurnByTurnPref::writeTo(avas::client::TurnByTurnPref *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::Writer::write();
    if (v7 < 0)
    {
      operator delete(__p);
    }

    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(this + 32);
    PB::Writer::write(a2);
  }
}

void sub_1DE8A6F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::client::TurnByTurnPref::formatText(avas::client::TurnByTurnPref *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::TextFormatter::format();
    if (v9 < 0)
    {
      operator delete(__p);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(this + 32);
    PB::TextFormatter::format(a2, "allowed");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8A6FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::client::SessionState::~SessionState(avas::client::SessionState *this)
{
  avas::client::SessionState::~SessionState(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5998E20;
  v2 = *(this + 27);
  *(this + 27) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 26);
  *(this + 26) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  caulk::xstring::clear((this + 192));
  caulk::xstring::clear((this + 176));
  caulk::xstring::clear((this + 160));
  caulk::xstring::clear((this + 144));
  caulk::xstring::clear((this + 128));
  caulk::xstring::clear((this + 112));
  caulk::xstring::clear((this + 96));
  caulk::xstring::clear((this + 80));
  caulk::xstring::clear((this + 64));
  v4 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v4);
  PB::Base::~Base(this);
}

void avas::client::PortPrefs::~PortPrefs(avas::client::PortPrefs *this)
{
  avas::client::PortPrefs::~PortPrefs(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5998E58;
  caulk::xstring::clear((this + 40));
  v2 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

void avas::client::PolarPatternPref::~PolarPatternPref(avas::client::PolarPatternPref *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1E12C2EB0);
}

void avas::client::IOControllerPrefs::~IOControllerPrefs(avas::client::IOControllerPrefs *this)
{
  avas::client::IOControllerPrefs::~IOControllerPrefs(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5998EC8;
  caulk::xstring::clear((this + 64));
  v2 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

void avas::client::StreamPrefs::~StreamPrefs(avas::client::StreamPrefs *this)
{
  avas::client::StreamPrefs::~StreamPrefs(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5998F00;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 16);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::client::TurnByTurnPref::~TurnByTurnPref(avas::client::TurnByTurnPref *this)
{
  avas::client::TurnByTurnPref::~TurnByTurnPref(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5998F38;
  caulk::xstring::clear((this + 16));

  PB::Base::~Base(this);
}

uint64_t std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

unint64_t caulk::xstring::as_std_string@<X0>(caulk::xstring *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = caulk::xstring::c_str(this);
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v3, result);
  }

  a2[v5] = 0;
  return result;
}

caulk::xstring *std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(caulk::xstring **a1, caulk::xstring *a2, caulk::xstring *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<caulk::xstring>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<caulk::xstring>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 4)
  {
    while (v6 != a3)
    {
      caulk::xstring::assign(v8, v6);
      v6 = (v6 + 16);
      v8 = (v8 + 16);
    }

    return std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        caulk::xstring::assign(v8, v15);
        v15 = (v15 + 16);
        v8 = (v8 + 16);
        v14 -= 16;
      }

      while (v14);
      v12 = a1[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*,caulk::xstring*>(a1, (v6 + v13), a3, v12);
    a1[1] = result;
  }

  return result;
}

void std::vector<caulk::xstring>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<caulk::xstring>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<caulk::xstring>>(a1, a2);
  }

  std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
}

caulk::xstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*,caulk::xstring*>(uint64_t a1, caulk::xstring *a2, caulk::xstring *a3, caulk::xstring *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 1) = 0;
      caulk::xstring::assign(v4, v6);
      v6 = (v6 + 16);
      v4 = (v11 + 16);
      v11 = (v11 + 16);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>::operator()[abi:ne200100](uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v1 = (v1 - 16);
    result = caulk::xstring::clear(v1);
  }

  return result;
}

uint64_t std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](uint64_t result, caulk::xstring *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = caulk::xstring::clear(i))
  {
    i = (i - 16);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<caulk::xstring>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<caulk::xstring>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<caulk::xstring>>(a1, v5);
  }

  v6 = (16 * v1);
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v15 = 16 * v1 + 16;
  v7 = *(a1 + 8);
  v8 = 16 * v1 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*>(a1, *a1, v7, (v6 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<caulk::xstring>::~__split_buffer(&v13);
  return v12;
}

void sub_1DE8A77A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<caulk::xstring>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*>(uint64_t a1, caulk::xstring *this, caulk::xstring *a3, void *a4)
{
  v6 = a1;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (this != a3)
  {
    v7 = this;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      caulk::xstring::move();
      v7 = (v7 + 16);
      a4 = v12 + 2;
      v12 += 2;
    }

    while (v7 != a3);
  }

  v10 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*>(v6, this, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*>(int a1, caulk::xstring *this, caulk::xstring *a3)
{
  if (this != a3)
  {
    v4 = this;
    do
    {
      result = caulk::xstring::clear(v4);
      v4 = (v4 + 16);
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t std::__split_buffer<caulk::xstring>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<caulk::xstring>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<caulk::xstring>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(v3 + 16) = v4 - 16;
    result = caulk::xstring::clear((v4 - 16));
  }

  return result;
}

void std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

_BYTE *avas::mxsession_error_category::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 + 15685) > 5)
  {
    v3 = "unknown MXSessionError";
  }

  else
  {
    v3 = off_1E867A600[a1 + 15685];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void avas::mxsession_error_category::~mxsession_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C2EB0);
}

uint64_t avas::WorkloopPool::DispatchID::DispatchID(uint64_t a1, int a2, _OWORD *a3, uint64_t a4)
{
  *a1 = a2;
  v6 = a3[1];
  *v8.val = *a3;
  *&v8.val[4] = v6;
  *(a1 + 4) = audit_token_to_pid(&v8);
  *(a1 + 8) = a4;
  return a1;
}

{
  *a1 = a2;
  v6 = a3[1];
  *v8.val = *a3;
  *&v8.val[4] = v6;
  *(a1 + 4) = audit_token_to_pid(&v8);
  *(a1 + 8) = a4;
  return a1;
}

BOOL avas::WorkloopPool::DispatchID::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v2 == v3 && v2 != 0)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
  }

  return v2 == v3 && *a1 == *a2;
}

uint64_t avas::WorkloopPool::WorkloopPool(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  if (!a3)
  {
    v11 = _os_crash();
    avas::WorkloopPool::WorkloopPool(v11);
  }

  std::vector<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>::reserve((a1 + 24), a3);
  v12 = a1;
  v6 = 0;
  do
  {
    v16[1] = 0;
    v16[2] = 7;
    v15[2] = 7;
    v16[0] = v6;
    workloop = v21;
    *__len = xmmword_1DE8DDC20;
    v19 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v20 = 0;
    __src = v21;
    v15[0] = 1;
    v15[1] = v16;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&workloop, "AudioSession (WL{})", 19, v15);
    v7 = __len[1];
    if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (__len[1] >= 0x17)
    {
      operator new();
    }

    v14 = __len[1];
    if (__len[1])
    {
      memmove(&__dst, __src, __len[1]);
    }

    *(&__dst + v7) = 0;
    if (__src != v21)
    {
      operator delete(__src);
    }

    if (v14 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    workloop = dispatch_workloop_create_inactive(p_dst);
    dispatch_workloop_set_scheduler_priority();
    dispatch_workloop_set_autorelease_frequency(workloop, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_activate(workloop);
    std::vector<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>::push_back[abi:ne200100](v4, &workloop);

    if (v14 < 0)
    {
      operator delete(__dst);
    }

    ++v6;
  }

  while (a3 != v6);
  v9 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DE8A8138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (__p != v63)
  {
    operator delete(__p);
  }

  std::__tree<avas::WorkloopPool::DispatchID>::destroy(a9, *(a10 + 104));
  std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::~deque[abi:ne200100]((a10 + 48));
  std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&a26);
  v65 = *(a10 + 8);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  _Unwind_Resume(a1);
}

void *std::vector<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>>(result, a2);
    }

    std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DE8A8234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::allocator<std::shared_ptr<avas::WorkloopPool::BlockInfo> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::allocator<std::shared_ptr<avas::WorkloopPool::BlockInfo> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__tree<avas::WorkloopPool::DispatchID>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<avas::WorkloopPool::DispatchID>::destroy(a1, *a2);
    std::__tree<avas::WorkloopPool::DispatchID>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    operator new();
  }
}

uint64_t std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_1DE8A85A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F5999020;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12C2EB0);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
  }

  return std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
}

void *std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v27 = *a1;
        v28 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:ne200100]<char>(v60, "a character");
        *v27 = v28;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v30 = *a1;
        v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v30 = v31;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v17 = *a1;
        v18 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v17 = v18;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v37 = *a1;
        v38 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v37 = v38;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v33 = *a1;
        v34 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v33 = v34;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v43 = *a1;
        v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v43 = v44;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v24 = *a1;
        v25 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v24 = v25;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = *(a1 + 8);
        v54 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = *(a1 + 8);
        v58 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = *(a1 + 8);
      v56 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v49 = *a1;
        *v49 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      v13 = *v6;
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = *(a1 + 8);

      return v52(v50, v53, v51);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unsigned __int8 *std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = std::__format::__parse_number[abi:ne200100]<char const*>(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5);
  }
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v15[0] = *a2;
  v15[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v15) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v15[0];
  if (v15[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v15[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
LABEL_17:
      *a1 = *a1 & 0xF8 | v8;
      v13 = *a2;
      v14 = v6 - *a2;
      if (v14 == 1)
      {
        if (*v13 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v6 == v13)
      {
LABEL_22:
        v11 = &v13[v14];
        goto LABEL_23;
      }

      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    case '>':
      v8 = 3;
      goto LABEL_17;
    case '^':
      v8 = 2;
      goto LABEL_17;
  }

LABEL_7:
  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v6, a3);
  }

  *(a1 + 4) = v11;
  *a2 = v10;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v8 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = v4 + 2;
      v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
    }

    else
    {
      if ((v9 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v10;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 > 0x62)
  {
    if (**a2 <= 0x66u)
    {
      if (**a2 > 0x64u)
      {
        if (v3 == 101)
        {
          v4 = 13;
        }

        else
        {
          v4 = 15;
        }
      }

      else if (v3 == 99)
      {
        v4 = 10;
      }

      else
      {
        if (v3 != 100)
        {
          return result;
        }

        v4 = 5;
      }
    }

    else if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x46u)
  {
    if (**a2 > 0x44u)
    {
      if (v3 == 69)
      {
        v4 = 14;
      }

      else
      {
        v4 = 16;
      }
    }

    else if (v3 == 65)
    {
      v4 = 12;
    }

    else
    {
      if (v3 != 66)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else if (**a2 <= 0x57u)
  {
    if (v3 == 71)
    {
      v4 = 18;
    }

    else
    {
      if (v3 != 80)
      {
        return result;
      }

      v4 = 9;
    }
  }

  else
  {
    switch(v3)
    {
      case 'X':
        v4 = 7;
        break;
      case 'a':
        v4 = 11;
        break;
      case 'b':
        v4 = 2;
        break;
      default:
        return result;
    }
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_1DE8A9AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 >= 0x20)
    {
      std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
    }

    v5 = 1 << v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & a4) == 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a3);
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_1DE8A9D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, void **a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v17);
    v12 = std::locale::use_facet(&v17, MEMORY[0x1E69E5368]);
    std::locale::~locale(&v17);
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if ((v19 & 0x80u) == 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    v16 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, v15, *a2, a3, a4);
    if (v19 < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }
}

void sub_1DE8A9EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  *(a1 + 12);
  std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, v13, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100]@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    MEMORY[0x1E12C2DB0](&v5);
    std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }
}

uint64_t std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, a2);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v9, v10);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t std::__width_estimation_table::__estimated_width[abi:ne200100](unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = &std::__width_estimation_table::__entries[abi:ne200100];
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[v2 >> 1];
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != &std::__width_estimation_table::__entries[abi:ne200100])
  {
    if ((*(v3 - 1) & 0x3FFF) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](a1, a2, a3);
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = std::__indic_conjunct_break::__get_property[abi:ne200100](a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v14[23] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 2) & 0x4000) != 0)
  {
    v4 = *(a1 + 4);
    v5 = a2[1];
    if (v5 <= v4)
    {
      LOBYTE(v6) = 0;
    }

    else if (v5 > 0xC)
    {
      v8 = a2[2] + 32 * v4;
      v4 = *v8;
      v2 = *(v8 + 8);
      LOBYTE(v6) = *(v8 + 16);
      v11[0] = *(v8 + 17);
      *(v11 + 7) = *(v8 + 24);
    }

    else
    {
      v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
      v7 = (a2[2] + 16 * v4);
      v4 = *v7;
      v2 = v7[1];
    }

    v12[0] = v4;
    v12[1] = v2;
    v13 = v6;
    *v14 = v11[0];
    *&v14[7] = *(v11 + 7);
    result = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v10, v12);
  }

  else
  {
    result = *(a1 + 4);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v14[23] = *MEMORY[0x1E69E9840];
  if (*(a1 + 2) < 0)
  {
    v4 = *(a1 + 8);
    v5 = a2[1];
    if (v5 <= v4)
    {
      LOBYTE(v6) = 0;
    }

    else if (v5 > 0xC)
    {
      v8 = a2[2] + 32 * v4;
      v4 = *v8;
      v2 = *(v8 + 8);
      LOBYTE(v6) = *(v8 + 16);
      v11[0] = *(v8 + 17);
      *(v11 + 7) = *(v8 + 24);
    }

    else
    {
      v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
      v7 = (a2[2] + 16 * v4);
      v4 = *v7;
      v2 = v7[1];
    }

    v12[0] = v4;
    v12[1] = v2;
    v13 = v6;
    *v14 = v11[0];
    *&v14[7] = *(v11 + 7);
    result = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v10, v12);
  }

  else
  {
    result = *(a1 + 8);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      return result;
    case 4:

      return std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(a1, a2);
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unint64_t std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
  }

  if (result >> 31)
  {
    std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
  }

  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned int>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_1DE8AB0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v13, v11, &v11[v29], std::__formatter::__hex_to_upper[abi:ne200100]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](v13, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v19, v15);
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v12, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v14, a1, a2, a6);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v14, v10, v11);
}

uint64_t std::__formatter::__hex_to_upper[abi:ne200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *std::__to_chars_integral[abi:ne200100]<unsigned int>(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = *(a1 + 1);
  if (v5 == 10 || v5 == 0)
  {
    v7 = *a3;
    v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
    __src = a2;
    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v7, v8, v9, 1);
  }

  else
  {
    v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v11, v12, 0);
  }
}

uint64_t std::__format_spec::__process_parsed_char[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v6 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

uint64_t std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v4 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_1DE8AC3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v15 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = (v5 - 1);
      do
      {
        *v16-- = a0123456789abcd[(v4 % a4)];
        v17 = v4 >= a4;
        v4 /= a4;
      }

      while (v17);
      return v5;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (std::__itoa::__pow10_64[v8] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return v5;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  v2 %= 0x2710u;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v12 = 2;
    if (BYTE1(a4) == 2)
    {
      v11 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v11 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v13, v9, v11, v12);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 16;
    if (BYTE1(a4) == 6)
    {
      v11 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v11 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v14;
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v13, &v14 + 5, 0, 10);
    goto LABEL_19;
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v13, v15, v6, 8);
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = std::__to_chars_integral[abi:ne200100]<unsigned __int128>(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a3, &v44);
  v22 = std::locale::use_facet(&v44, MEMORY[0x1E69E5368]);
  std::locale::~locale(&v44);
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (v46 < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + v46;
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_1DE8ACE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned __int128>(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v17 = a1;
      v18 = a2 - a1;
      v19 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = (v7 - 1);
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= a5;
          *v20-- = a0123456789abcd[(v6 - v21 * a5)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < std::__itoa::__pow10_128[v11]) + 1)
      {
        return v7;
      }
    }

    return std::__itoa::__base_10_u128[abi:ne200100](a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (std::__itoa::__pow10_64[v12] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v6);
  }

  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *std::__itoa::__base_10_u128[abi:ne200100](char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = std::__itoa::__digits_base_10[v7 % 0x5F5E100 / 0xF4240uLL];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = std::__itoa::__digits_base_10[v8 / 0x2710uLL];
    v8 %= 0x2710u;
    *(v3 + 3) = std::__itoa::__digits_base_10[v8 / 0x64u];
    *(v3 + 4) = std::__itoa::__digits_base_10[v8 % 0x64u];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = std::__itoa::__digits_base_10[v14 / 0xF4240uLL];
  v14 %= 0xF4240u;
  *(v12 + 3) = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
  v14 %= 0x2710u;
  *(v12 + 5) = std::__itoa::__digits_base_10[v14 / 0x64u];
  *(v12 + 7) = std::__itoa::__digits_base_10[v14 % 0x64u];

  return std::__itoa::__append10[abi:ne200100]<unsigned long long>(v12 + 9, v13 % 0x2540BE400);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, a4, v8, v7, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, float a4)
{
  v45[32] = *MEMORY[0x1E69E9840];
  if ((LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v34 = *a1;
    v35 = *MEMORY[0x1E69E9840];

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v34, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabsf(a4);
    if (a3 == -1)
    {
      v8 = 149;
    }

    else
    {
      v8 = a3;
    }

    v41 = v8;
    v42 = 0;
    if (v8 < 150)
    {
      v43 = v8 + 45;
      if ((v8 + 45) >= 0x101)
      {
        operator new();
      }
    }

    else
    {
      v41 = 149;
      v42 = v8 - 149;
      v43 = 194;
    }

    __p = v45;
    std::__formatter::__format_buffer[abi:ne200100]<float,float>(&v41, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v37, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v38;
      v10 = *v40;
      if (v38 == *v40)
      {
        ++*v40;
        *v10 = 46;
        v11 = v39;
        v12 = (*v40 - 1);
        if (v39 != (*v40 - 1))
        {
          if (v39 + 1 == v12)
          {
            v14 = *v39;
            *v39 = v39[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v40 - 1);
            memmove(v39 + 1, v39, v12 - v39);
            *v11 = v13;
          }
        }

        v9 = v39;
        v38 = v39++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v39 == *v40)
        {
          v16 = v37 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v39[~v9];
        if (v18 < v17)
        {
          v42 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v36);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v26, &v41, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v19 = *v40;
      v20 = __p;
      v21 = *v40 - __p;
      v22 = v42;
      if (*v40 - __p + v42 >= a2 >> 32)
      {
        if (!v42 || (v28 = v39, v39 == *v40))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v40 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v39 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40, v23, v29, v30, v21, v39, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v43 >= 0x101)
    {
      operator delete(__p);
    }

    v32 = *MEMORY[0x1E69E9840];
    return v27;
  }
}

void sub_1DE8ADDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = v14;
  __src = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

char *std::__formatter::__format_buffer[abi:ne200100]<float,float>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x1E12C2E60](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<float,float>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_1DE8AE4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](v15, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v12, v14);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x1E12C2E60](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<float,float>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12C2E60](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 5), 112, 3uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x1E12C2E60](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

uint64_t std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v45[128] = *MEMORY[0x1E69E9840];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v34 = *a1;
    v35 = *MEMORY[0x1E69E9840];

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v34, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v41 = v8;
    v42 = 0;
    if (v8 >= 1075)
    {
      v41 = 1074;
      v42 = v8 - 1074;
      v43 = 1390;
      goto LABEL_8;
    }

    v43 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v45;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v41, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v37, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v38;
      v10 = *v40;
      if (v38 == *v40)
      {
        ++*v40;
        *v10 = 46;
        v11 = v39;
        v12 = (*v40 - 1);
        if (v39 != (*v40 - 1))
        {
          if (v39 + 1 == v12)
          {
            v14 = *v39;
            *v39 = v39[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v40 - 1);
            memmove(v39 + 1, v39, v12 - v39);
            *v11 = v13;
          }
        }

        v9 = v39;
        v38 = v39++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v39 == *v40)
        {
          v16 = v37 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v39[~v9];
        if (v18 < v17)
        {
          v42 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v36);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v41, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v19 = *v40;
      v20 = __p;
      v21 = *v40 - __p;
      v22 = v42;
      if (*v40 - __p + v42 >= a2 >> 32)
      {
        if (!v42 || (v28 = v39, v39 == *v40))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v40 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v39 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40, v23, v29, v30, v21, v39, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v43 >= 0x401)
    {
      operator delete(__p);
    }

    v32 = *MEMORY[0x1E69E9840];
    return v27;
  }
}

void sub_1DE8AED44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:ne200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x1E12C2E00](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_1DE8AF344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x1E12C2E00](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12C2E00](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x1E12C2E00](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v45[128] = *MEMORY[0x1E69E9840];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v34 = *a1;
    v35 = *MEMORY[0x1E69E9840];

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v34, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v41 = v8;
    v42 = 0;
    if (v8 >= 1075)
    {
      v41 = 1074;
      v42 = v8 - 1074;
      v43 = 1390;
      goto LABEL_8;
    }

    v43 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v45;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v41, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v37, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v38;
      v10 = *v40;
      if (v38 == *v40)
      {
        ++*v40;
        *v10 = 46;
        v11 = v39;
        v12 = (*v40 - 1);
        if (v39 != (*v40 - 1))
        {
          if (v39 + 1 == v12)
          {
            v14 = *v39;
            *v39 = v39[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v40 - 1);
            memmove(v39 + 1, v39, v12 - v39);
            *v11 = v13;
          }
        }

        v9 = v39;
        v38 = v39++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v39 == *v40)
        {
          v16 = v37 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v39[~v9];
        if (v18 < v17)
        {
          v42 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v36);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v41, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v19 = *v40;
      v20 = __p;
      v21 = *v40 - __p;
      v22 = v42;
      if (*v40 - __p + v42 >= a2 >> 32)
      {
        if (!v42 || (v28 = v39, v39 == *v40))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v40 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v39 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40, v23, v29, v30, v21, v39, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v40 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v43 >= 0x401)
    {
      operator delete(__p);
    }

    v32 = *MEMORY[0x1E69E9840];
    return v27;
  }
}

void sub_1DE8AFAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x1E12C2E30](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v17, v9, a6);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x1E12C2E30](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12C2E30](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x1E12C2E30](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

  return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, v6, v7, v9, v8);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

unsigned __int8 *std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
  }

  return result;
}

void *std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_1DE8B0670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<avas::WorkloopPool>::__shared_ptr_emplace[abi:ne200100]<avas::WorkloopPool::ConstructionTag,unsigned long &,std::allocator<avas::WorkloopPool>,0>(void *a1, uint64_t a2, unint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5999048;
  avas::WorkloopPool::WorkloopPool((a1 + 3), a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<avas::WorkloopPool>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5999048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C2EB0);
}

void std::__shared_ptr_emplace<avas::WorkloopPool>::__on_zero_shared(uint64_t a1)
{
  std::__tree<avas::WorkloopPool::DispatchID>::destroy(a1 + 120, *(a1 + 128));
  std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::~deque[abi:ne200100]((a1 + 72));
  v3 = (a1 + 48);
  std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::shared_ptr<avas::WorkloopPool>::__enable_weak_this[abi:ne200100]<avas::WorkloopPool,avas::WorkloopPool,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void *_ZNSt3__120__shared_ptr_emplaceIN5caulk9semaphoreENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5999080;
  caulk::semaphore::semaphore((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<caulk::semaphore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5999080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C2EB0);
}

void std::__shared_ptr_emplace<avas::WorkloopPool::BlockInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59990B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C2EB0);
}

const void **std::__split_buffer<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::allocator<std::shared_ptr<avas::WorkloopPool::BlockInfo> *>>::emplace_front<std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(result, v9);
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

void *avas::gSessionUtilityLog(avas *this)
{
  {
    caulk::log_category::log_category(&avas::gSessionUtilityLog(void)::sLogCat, "com.apple.coreaudio", "as_util");
  }

  return &avas::gSessionUtilityLog(void)::sLogCat;
}

caulk::log_category *caulk::log_category::log_category(caulk::log_category *this, const char *subsystem, const char *category)
{
  *this = 0;
  *(this + 1) = 0;
  v4 = os_log_create(subsystem, category);
  v5 = *this;
  *this = v4;

  return this;
}

uint64_t avas::server::HardwareInfo::default_instance(avas::server::HardwareInfo *this)
{
  {
    operator new();
  }

  return avas::server::HardwareInfo::default_instance(void)::gInstance;
}

double avas::server::HardwareInfo::HardwareInfo(avas::server::HardwareInfo *this)
{
  *this = &unk_1F59990F0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

{
  *this = &unk_1F59990F0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

avas::server::HardwareInfo *avas::server::HardwareInfo::HardwareInfo(avas::server::HardwareInfo *this, const avas::server::HardwareInfo *a2)
{
  *this = &unk_1F59990F0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  avas::server::HardwareInfo::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59990F0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  avas::server::HardwareInfo::copy_from(this, a2);
  return this;
}

uint64_t avas::server::HardwareInfo::copy_from(avas::server::HardwareInfo *this, const avas::server::HardwareInfo *a2)
{
  caulk::xstring::assign((this + 16), (a2 + 16));
  caulk::xstring::assign((this + 32), (a2 + 32));
  result = caulk::xstring::assign((this + 48), (a2 + 48));
  *(this + 2) = *(a2 + 2);
  return result;
}

uint64_t avas::server::HardwareInfo::HardwareInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F59990F0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  avas::server::HardwareInfo::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F59990F0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  avas::server::HardwareInfo::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::HardwareInfo::move_from(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v5);
  v5 = 0;
  v6 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v5);
  v5 = 0;
  v6 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(&v5);
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t avas::server::HardwareInfo::clear(avas::server::HardwareInfo *this)
{
  caulk::xstring::clear((this + 16));
  caulk::xstring::clear((this + 32));
  result = caulk::xstring::clear((this + 48));
  *(this + 2) = 0;
  return result;
}

BOOL avas::server::HardwareInfo::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 & 1) == 0;
          }

          v21 = *v19;
          a2[1] = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          a2[1] = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        return (v4 & 1) == 0;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 5)
      {
        PB::Reader::read();
        caulk::xstring::assign();
        v23 = *(a1 + 8) | 4;
      }

      else if (v22 == 4)
      {
        PB::Reader::read();
        caulk::xstring::assign();
        v23 = *(a1 + 8) | 2;
      }

      else
      {
        if (v22 != 2)
        {
          goto LABEL_29;
        }

        PB::Reader::read();
        caulk::xstring::assign();
        v23 = *(a1 + 8) | 1;
      }

      *(a1 + 8) = v23;
LABEL_29:
      v2 = a2[1];
      v3 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (a2[3] & 1) == 0);
  }

  return (v4 & 1) == 0;
}

void sub_1DE8B12A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::HardwareInfo::writeTo(avas::server::HardwareInfo *this, PB::Writer *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    caulk::xstring::as_std_string((this + 16), __p);
    PB::Writer::write();
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(this + 2);
  }

  if ((v3 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 32), __p);
    PB::Writer::write();
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(this + 2);
  }

  if ((v3 & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 48), __p);
    PB::Writer::write();
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DE8B1394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::HardwareInfo::formatText(avas::server::HardwareInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    caulk::xstring::as_std_string((this + 16), __p);
    PB::TextFormatter::format();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 32), __p);
    PB::TextFormatter::format();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 48), __p);
    PB::TextFormatter::format();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8B14A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::HardwareInfo::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 4), (a2 + 4)) || caulk::xstring::compare((a1 + 8), (a2 + 8)))
  {
    return 0;
  }

  return caulk::xstring::compare((a1 + 12), (a2 + 12)) == 0;
}

uint64_t avas::server::Clock::default_instance(avas::server::Clock *this)
{
  {
    operator new();
  }

  return avas::server::Clock::default_instance(void)::gInstance;
}

double avas::server::Clock::Clock(avas::server::Clock *this)
{
  *this = &unk_1F5999128;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  return result;
}

{
  *this = &unk_1F5999128;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  return result;
}

avas::server::Clock *avas::server::Clock::Clock(avas::server::Clock *this, const avas::server::Clock *a2)
{
  *this = &unk_1F5999128;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  avas::server::Clock::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999128;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  avas::server::Clock::copy_from(this, a2);
  return this;
}

__n128 avas::server::Clock::copy_from(avas::server::Clock *this, const avas::server::Clock *a2)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = avas::server::Clock::mutableHardwareInfo(this);
    avas::server::HardwareInfo::copy_from(v5, v4);
  }

  caulk::xstring::assign((this + 64), (a2 + 64));
  caulk::xstring::assign((this + 80), (a2 + 80));
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  if (*(a2 + 5) != *(a2 + 6))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  result = *(a2 + 104);
  *(this + 120) = *(a2 + 120);
  *(this + 104) = result;
  return result;
}

uint64_t avas::server::Clock::hardwareInfo(avas::server::Clock *this)
{
  result = *(this + 12);
  if (!result)
  {
    return avas::server::HardwareInfo::default_instance(0);
  }

  return result;
}

uint64_t avas::server::Clock::mutableHardwareInfo(avas::server::Clock *this)
{
  if (!*(this + 12))
  {
    operator new();
  }

  return *(this + 12);
}

avas::server::ControlAndValue *avas::server::ControlAndValue::ControlAndValue(avas::server::ControlAndValue *this, const avas::server::ControlAndValue *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5999358;
  avas::server::ControlAndValue::copy_from(this, a2);
  return this;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5999358;
  avas::server::ControlAndValue::copy_from(this, a2);
  return this;
}

uint64_t avas::server::Clock::Clock(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999128;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  avas::server::Clock::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999128;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  avas::server::Clock::move_from(a1, a2);
  return a1;
}

__n128 avas::server::Clock::move_from(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  v7 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v7;
  v12 = 0;
  v13 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v12);
  v12 = 0;
  v13 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v12);
  v8 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v8;
  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v10;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = result;
  return result;
}

double avas::server::Clock::clear(avas::server::Clock *this)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::xstring::clear((this + 64));
  caulk::xstring::clear((this + 80));
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  *(this + 2) = 0;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

BOOL avas::server::Clock::isInitialized(avas::server::Clock *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    if (!avas::SampleRateRange::isInitialized(*v2))
    {
      return 0;
    }

    ++v2;
  }

  if (!*(this + 12))
  {
    return 0;
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  while (v4 != v5)
  {
    if (!avas::server::ControlAndValue::isInitialized(*v4))
    {
      return 0;
    }

    ++v4;
  }

  return (~*(this + 2) & 0xBF) == 0;
}

BOOL avas::server::ControlAndValue::isInitialized(avas::server::ControlAndValue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    if (v2 == v3)
    {
LABEL_5:
      if ((~*(v1 + 8) & 0x3F) == 0)
      {
        v4 = *(this + 2);
        if (v4)
        {
          return (~*(v4 + 8) & 3) == 0;
        }
      }
    }

    else
    {
      while ((~*(*v2 + 8) & 3) == 0)
      {
        v2 += 8;
        if (v2 == v3)
        {
          goto LABEL_5;
        }
      }
    }
  }

  return 0;
}

uint64_t avas::server::Clock::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        return (v4 ^ 1) & 1;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 6)
      {
        if (v22 <= 3)
        {
          if (v22 == 1)
          {
            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v38 = 0;
              v56 = v2 >= v13;
              v57 = v2 - v13;
              if (!v56)
              {
                v57 = 0;
              }

              v58 = (v7 + v13);
              v59 = v13 + 1;
              while (v57)
              {
                v60 = *v58;
                a2[1] = v59;
                v38 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  goto LABEL_123;
                }

                v54 += 7;
                --v57;
                ++v58;
                ++v59;
                v56 = v55++ >= 9;
                if (v56)
                {
LABEL_87:
                  v38 = 0;
                  goto LABEL_123;
                }
              }

              v38 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = (v7 + v13);
              v40 = v13 + 1;
              while (1)
              {
                a2[1] = v40;
                v41 = *v39++;
                v38 |= (v41 & 0x7F) << v36;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                ++v40;
                v15 = v37++ > 8;
                if (v15)
                {
                  goto LABEL_87;
                }
              }
            }

LABEL_123:
            *(a1 + 112) = v38;
            v79 = *(a1 + 8) | 1;
          }

          else
          {
            if (v22 != 3)
            {
              goto LABEL_133;
            }

            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v32 = 0;
              v56 = v2 >= v13;
              v63 = v2 - v13;
              if (!v56)
              {
                v63 = 0;
              }

              v64 = (v7 + v13);
              v65 = v13 + 1;
              while (v63)
              {
                v66 = *v64;
                a2[1] = v65;
                v32 |= (v66 & 0x7F) << v61;
                if ((v66 & 0x80) == 0)
                {
                  goto LABEL_125;
                }

                v61 += 7;
                --v63;
                ++v64;
                ++v65;
                v56 = v62++ >= 9;
                if (v56)
                {
LABEL_95:
                  LODWORD(v32) = 0;
                  goto LABEL_125;
                }
              }

              LODWORD(v32) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v7 + v13);
              v34 = v13 + 1;
              while (1)
              {
                a2[1] = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v15 = v31++ > 8;
                if (v15)
                {
                  goto LABEL_95;
                }
              }
            }

LABEL_125:
            *(a1 + 120) = v32;
            v79 = *(a1 + 8) | 2;
          }
        }

        else
        {
          switch(v22)
          {
            case 4:
              if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
              {
                *(a2 + 24) = 1;
              }

              else
              {
                *(a1 + 104) = *(v7 + v13);
                a2[1] += 8;
              }

              v79 = *(a1 + 8) | 4;
              break;
            case 5:
              operator new();
            case 6:
              if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
              {
                v73 = 0;
                v74 = 0;
                v26 = 0;
                v56 = v2 >= v13;
                v75 = v2 - v13;
                if (!v56)
                {
                  v75 = 0;
                }

                v76 = (v7 + v13);
                v77 = v13 + 1;
                while (v75)
                {
                  v78 = *v76;
                  a2[1] = v77;
                  v26 |= (v78 & 0x7F) << v73;
                  if ((v78 & 0x80) == 0)
                  {
                    goto LABEL_129;
                  }

                  v73 += 7;
                  --v75;
                  ++v76;
                  ++v77;
                  v56 = v74++ >= 9;
                  if (v56)
                  {
LABEL_111:
                    LODWORD(v26) = 0;
                    goto LABEL_129;
                  }
                }

                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v24 = 0;
                v25 = 0;
                v26 = 0;
                v27 = (v7 + v13);
                v28 = v13 + 1;
                while (1)
                {
                  a2[1] = v28;
                  v29 = *v27++;
                  v26 |= (v29 & 0x7F) << v24;
                  if ((v29 & 0x80) == 0)
                  {
                    break;
                  }

                  v24 += 7;
                  ++v28;
                  v15 = v25++ > 8;
                  if (v15)
                  {
                    goto LABEL_111;
                  }
                }
              }

LABEL_129:
              *(a1 + 124) = v26;
              v79 = *(a1 + 8) | 8;
              break;
            default:
              goto LABEL_133;
          }
        }
      }

      else if (v22 > 9)
      {
        if (v22 == 10)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          v23 = *(a1 + 8) | 0x40;
LABEL_79:
          *(a1 + 8) = v23;
          goto LABEL_133;
        }

        if (v22 != 11)
        {
          if (v22 == 12)
          {
            operator new();
          }

          goto LABEL_133;
        }

        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v67 = 0;
          v68 = 0;
          v44 = 0;
          v56 = v2 >= v13;
          v69 = v2 - v13;
          if (!v56)
          {
            v69 = 0;
          }

          v70 = (v7 + v13);
          v71 = v13 + 1;
          while (v69)
          {
            v72 = *v70;
            a2[1] = v71;
            v44 |= (v72 & 0x7F) << v67;
            if ((v72 & 0x80) == 0)
            {
              goto LABEL_127;
            }

            v67 += 7;
            --v69;
            ++v70;
            ++v71;
            v56 = v68++ >= 9;
            if (v56)
            {
LABEL_103:
              LODWORD(v44) = 0;
              goto LABEL_127;
            }
          }

          LODWORD(v44) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v7 + v13);
          v46 = v13 + 1;
          while (1)
          {
            a2[1] = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            ++v46;
            v15 = v43++ > 8;
            if (v15)
            {
              goto LABEL_103;
            }
          }
        }

LABEL_127:
        *(a1 + 132) = v44;
        v79 = *(a1 + 8) | 0x80;
      }

      else
      {
        if (v22 != 7)
        {
          if (v22 == 8)
          {
            operator new();
          }

          if (v22 != 9)
          {
            goto LABEL_133;
          }

          PB::Reader::read();
          caulk::xstring::assign();
          v23 = *(a1 + 8) | 0x20;
          goto LABEL_79;
        }

        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v80 = 0;
          v81 = 0;
          v50 = 0;
          v56 = v2 >= v13;
          v82 = v2 - v13;
          if (!v56)
          {
            v82 = 0;
          }

          v83 = (v7 + v13);
          v84 = v13 + 1;
          while (v82)
          {
            v85 = *v83;
            a2[1] = v84;
            v50 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_131;
            }

            v80 += 7;
            --v82;
            ++v83;
            ++v84;
            v56 = v81++ >= 9;
            if (v56)
            {
LABEL_121:
              LODWORD(v50) = 0;
              goto LABEL_131;
            }
          }

          LODWORD(v50) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v7 + v13);
          v52 = v13 + 1;
          while (1)
          {
            a2[1] = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            ++v52;
            v15 = v49++ > 8;
            if (v15)
            {
              goto LABEL_121;
            }
          }
        }

LABEL_131:
        *(a1 + 128) = v50;
        v79 = *(a1 + 8) | 0x10;
      }

      *(a1 + 8) = v79;
LABEL_133:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void avas::server::Clock::writeTo(avas::server::Clock *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_29:
    v18 = *(this + 30);
    PB::Writer::writeVarInt(a2);
    if ((*(this + 2) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v17 = *(this + 14);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 2) != 0)
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((v4 & 4) != 0)
  {
LABEL_4:
    PB::Writer::write(a2, *(this + 13));
  }

LABEL_5:
  v5 = *(this + 2);
  v6 = *(this + 3);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(this + 2);
  if ((v8 & 8) != 0)
  {
    v9 = *(this + 31);
    PB::Writer::writeVarInt(a2);
    v8 = *(this + 2);
  }

  if ((v8 & 0x10) != 0)
  {
    v10 = *(this + 32);
    PB::Writer::writeVarInt(a2);
  }

  v11 = *(this + 12);
  if (v11)
  {
    PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(this + 2);
  if ((v12 & 0x20) != 0)
  {
    caulk::xstring::as_std_string((this + 64), __p);
    PB::Writer::write();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(this + 2);
  }

  if ((v12 & 0x40) != 0)
  {
    caulk::xstring::as_std_string((this + 80), __p);
    PB::Writer::write();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(this + 2);
  }

  if ((v12 & 0x80) != 0)
  {
    v13 = *(this + 33);
    PB::Writer::writeVarInt(a2);
  }

  v15 = *(this + 5);
  v14 = *(this + 6);
  while (v15 != v14)
  {
    v16 = *v15++;
    PB::Writer::writeSubmessage(a2, v16);
  }
}

void sub_1DE8B2AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::Clock::formatText(avas::server::Clock *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v19 = *(this + 14);
    PB::TextFormatter::format(a2, "objectToken");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v20 = *(this + 30);
  PB::TextFormatter::format(a2, "transportType");
  if ((*(this + 2) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "sampleRate", *(this + 13));
  }

LABEL_5:
  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "availableSampleRates");
  }

  v9 = *(this + 2);
  if ((v9 & 8) != 0)
  {
    v10 = *(this + 31);
    PB::TextFormatter::format(a2, "outputLatency");
    v9 = *(this + 2);
  }

  if ((v9 & 0x10) != 0)
  {
    v11 = *(this + 32);
    PB::TextFormatter::format(a2, "inputLatency");
  }

  v12 = *(this + 12);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "hardwareInfo");
  }

  v13 = *(this + 2);
  if ((v13 & 0x20) != 0)
  {
    caulk::xstring::as_std_string((this + 64), __p);
    PB::TextFormatter::format();
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = *(this + 2);
  }

  if ((v13 & 0x40) != 0)
  {
    caulk::xstring::as_std_string((this + 80), __p);
    PB::TextFormatter::format();
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = *(this + 2);
  }

  if ((v13 & 0x80) != 0)
  {
    v14 = *(this + 33);
    PB::TextFormatter::format(a2, "clockDomain");
  }

  v15 = *(this + 5);
  v16 = *(this + 6);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "controls");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8B2D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::Clock::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 - v9 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v8 != v9)
  {
    v10 = 0;
    if (((v8 - v9) >> 3) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v8 - v9) >> 3;
    }

    do
    {
      v12 = *(*(a1 + 16) + 8 * v10);
      v13 = *(*(a2 + 16) + 8 * v10);
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (v12 | v13)
        {
          return 0;
        }
      }

      else if (!avas::SampleRateRange::operator==(v12, v13))
      {
        return 0;
      }

      ++v10;
    }

    while (v11 != v10);
  }

  v15 = *(a1 + 96);
  v16 = *(a2 + 96);
  if (v15 && v16)
  {
    if (!avas::server::HardwareInfo::operator==(v15, v16))
    {
      return 0;
    }
  }

  else if (v15 | v16)
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 64), (a2 + 64)))
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 80), (a2 + 80)))
  {
    return 0;
  }

  v18 = *(a1 + 40);
  v17 = *(a1 + 48);
  v19 = v17 - v18;
  if (v17 - v18 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v17 == v18)
  {
    return 1;
  }

  v20 = 0;
  v21 = v19 >> 3;
  if ((v19 >> 3) <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v19 >> 3;
  }

  do
  {
    v23 = *(*(a1 + 40) + 8 * v20);
    v24 = *(*(a2 + 40) + 8 * v20);
    if (v23)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      if (v23 | v24)
      {
        return 0;
      }
    }

    else if (!avas::server::ControlAndValue::operator==(v23, v24))
    {
      return 0;
    }

    ++v20;
  }

  while (v22 != v20);
  return v20 >= v21;
}

void avas::server::Clock::addAvailableSampleRates(avas::server::Clock *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}