void sub_7AE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](va);
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void *HSUtil::Buffer::slice<HSUtil::Buffer::CopyType>@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[5];
  if (v4)
  {
    v6 = result[6];
    v7 = v6 - a2;
    if (v6 < a2)
    {
      HSUtil::Buffer::slice<HSUtil::Buffer::CopyType>();
    }

    HSUtil::Buffer::Buffer(a3, v6 - a2, 0);
    result = *(a3 + 40);
    if (result)
    {
      result = memmove(result, (v4 + a2), v7);
      *(a3 + 48) = v7;
    }
  }

  else
  {
    *a3 = &off_108FA0;
    *(a3 + 8) = &off_108FF8;
    *(a3 + 16) = &off_109018;
    *(a3 + 24) = &off_109030;
    *(a3 + 32) = off_109048;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) &= 0xFCu;
  }

  return result;
}

uint64_t *HSUtil::DeferredFn<HSMapper::_messageHandler(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)::{lambda(void)#1}>::~DeferredFn(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v3;
  *v3 = 0;
  v6 = v4;
  HSMapper::_pushEncoderBuf(v2, &v6);
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](&v6);
  return a1;
}

void sub_7B024(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](va);
  __clang_call_terminate(a1);
}

uint64_t HSUtil::Decoder::decodeCodable<Message>(uint64_t result, Message *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<Message>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t HSUtil::Buffer::Buffer(uint64_t result)
{
  *result = &off_108FA0;
  *(result + 8) = &off_108FF8;
  *(result + 16) = &off_109018;
  *(result + 24) = &off_109030;
  *(result + 32) = off_109048;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) &= 0xFCu;
  return result;
}

uint64_t HSUtil::Decoder::_readCodable<Message>(uint64_t a1, unint64_t *a2, Message *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v10 = 0;
      v11 = *(a1 + 8);
      v12 = 0;
      v9 = *(a1 + 32);
      v13 = *(a1 + 24);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((Message::decode(a3, &v10) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t Message::decode(Message *this, HSUtil::Decoder *a2)
{
  HSUtil::Decoder::decodeArray(a2, v17);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v20);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Message::decode();
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  *this = HSUtil::Decoder::decodeUInt(v17);
  if (v17[0])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v20);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Message::decode();
    }

    goto LABEL_7;
  }

  HSUtil::Decoder::decodeString(v17, v15);
  if (v17[0])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v20);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Message::decode();
    }
  }

  else
  {
    if (!*str || (v7 = sel_registerName(str), (*(this + 1) = v7) != 0))
    {
      v8 = HSUtil::Decoder::decodeObject(v17);
      v9 = *(this + 2);
      *(this + 2) = v8;

      if (v17[0] || (HSUtil::Decoder::decodeObject(v17), v11 = objc_claimAutoreleasedReturnValue(), v12 = *(this + 3), *(this + 3) = v11, v12, v17[0]) || (HSUtil::Decoder::decodeObject(v17), v13 = objc_claimAutoreleasedReturnValue(), v14 = *(this + 4), *(this + 4) = v13, v14, v17[0]))
      {
        Message::PrintDecodeArgError(v17, str, v10);
      }

      v4 = 1;
      goto LABEL_23;
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v20);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Message::decode();
    }
  }

  v4 = 0;
LABEL_23:
  HSUtil::Buffer::~Buffer(v15);
LABEL_8:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v5 = v18;
  v18 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

void sub_7B4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  HSUtil::Buffer::~Buffer(&a9);
  HSUtil::Decoder::~Decoder(&a18);
  _Unwind_Resume(a1);
}

void sub_7B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  HSUtil::EncoderBuf::~EncoderBuf(&a27);
  HSUtil::Decoder::~Decoder(&a13);
  operator delete(v27);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::HexStringFromBuffer(HSUtil *this, const HSUtil::Buffer *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v3 = *(this + 5);
  v4 = *(this + 6);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v3 + v6);
      if (v6 == v4 - 1)
      {
        v8 = "";
      }

      else
      {
        v8 = " ";
      }

      snprintf(__str, 8uLL, "%02x%s", v7, v8);
      v9 = strlen(__str);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, __str, v9);
      v3 = *(this + 5);
      if (!v3)
      {
        break;
      }

      ++v6;
      v4 = *(this + 6);
    }

    while (v4 > v6);
  }

  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_7B8E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***std::ostringstream::basic_ostringstream[abi:ne200100](void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_7BA34(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_7BAF0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_7BD60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x7BD40);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_7BF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::function<BOOL ()(HSUtil::Encoder &,objc_object *)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::swap[abi:ne200100](void *result, void *a2)
{
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

void sub_7C3C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<HSMapper::_popEncoderBuf(void)::{lambda(HSUtil::Encoder &,objc_object *)#1},std::allocator<HSMapper::_popEncoderBuf(void)::{lambda(HSUtil::Encoder &,objc_object *)#1}>,BOOL ()(HSUtil::Encoder &,objc_object *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_109FF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HSMapper::_popEncoderBuf(void)::{lambda(HSUtil::Encoder &,objc_object *)#1},std::allocator<HSMapper::_popEncoderBuf(void)::{lambda(HSUtil::Encoder &,objc_object *)#1}>,BOOL ()(HSUtil::Encoder &,objc_object *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t HSMapper::_encodeObject(HSMapper *this, HSUtil::Encoder *a2, objc_object *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isa = v5[3].isa;
      if (isa && (isa = std::__shared_weak_count::lock(isa)) != 0)
      {
        v8 = v5[2].isa;
        std::__shared_weak_count::__release_shared[abi:ne200100](isa);
        if (v8 == this)
        {
LABEL_6:
          v9 = v5[1].isa;
          Type = LocalObject::GetType(isa);
          HSUtil::Encoder::encodeObjectStart(a2, Type, 4);
          if (!*a2)
          {
            HSUtil::Encoder::_encodeUInt(a2, v9);
            if (!*a2)
            {
              HSUtil::Encoder::_encodeContainerStop(a2);
            }
          }

LABEL_18:
          v11 = 1;
          goto LABEL_19;
        }
      }

      else if (!this)
      {
        goto LABEL_6;
      }
    }

    v12 = [objc_opt_class() hsProxyClass];
    if (v12)
    {
      v15 = v12;
      v16 = HSMapper::_idForObject(this, v5);
      v13 = RemoteObject::GetType(v16);
      HSUtil::Encoder::encodeObjectStart(a2, v13, 4);
      if (!*a2)
      {
        if ((*a2 != 0) | RemoteObject::encode(&v15, a2) & 1)
        {
          if (!*a2)
          {
            HSUtil::Encoder::_encodeContainerStop(a2);
          }
        }

        else
        {
          *a2 = 10;
        }
      }

      goto LABEL_18;
    }

    v11 = 0;
  }

  else
  {
    v11 = HSUtil::Encoder::EncodeObject(a2, v5, v6);
  }

LABEL_19:

  return v11;
}

uint64_t LocalObject::GetType(LocalObject *this)
{
  {
    LocalObject::GetType();
  }

  return LocalObject::GetType(void)::type;
}

uint64_t RemoteObject::GetType(RemoteObject *this)
{
  {
    RemoteObject::GetType();
  }

  return RemoteObject::GetType(void)::type;
}

uint64_t RemoteObject::encode(RemoteObject *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v6 = *(a2 + 17);
    DWORD2(v6) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
  }

  Name = class_getName(*this);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeString(a2, Name);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeUInt(a2, *(this + 1));
      if (!*a2)
      {
        HSUtil::Encoder::_encodeContainerStop(a2);
      }
    }
  }

  return 1;
}

uint64_t Message::encode(Message *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v8 = *(a2 + 17);
    DWORD2(v8) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v8);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xE8u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeUInt(a2, *this);
    }
  }

  v4 = *(this + 1);
  if (v4)
  {
    Name = sel_getName(v4);
    if (*a2)
    {
      goto LABEL_10;
    }

    v6 = Name;
  }

  else
  {
    if (*a2)
    {
      goto LABEL_10;
    }

    v6 = "";
  }

  HSUtil::Encoder::_encodeString(a2, v6);
LABEL_10:
  HSUtil::Encoder::encodeObject(a2, *(this + 2));
  HSUtil::Encoder::encodeObject(a2, *(this + 3));
  HSUtil::Encoder::encodeObject(a2, *(this + 4));
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

void HSMapper::_pushEncoderBuf(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 216));
  v5 = *(a1 + 288);
  v4 = *(a1 + 296);
  if (v5 >= v4)
  {
    v8 = *(a1 + 280);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v21[4] = a1 + 280;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<HSUtil::EncoderBuf>>>(a1 + 280, v14);
    }

    v15 = v10;
    v16 = (8 * v10);
    v17 = *a2;
    *a2 = 0;
    v18 = &v16[-v15];
    *v16 = v17;
    v7 = v16 + 1;
    memcpy(v18, v8, v9);
    v19 = *(a1 + 280);
    *(a1 + 280) = v18;
    *(a1 + 288) = v7;
    v20 = *(a1 + 296);
    *(a1 + 296) = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    std::__split_buffer<std::unique_ptr<HSUtil::EncoderBuf>>::~__split_buffer(v21);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  *(a1 + 288) = v7;
  std::mutex::unlock((a1 + 216));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<HSUtil::EncoderBuf>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<HSUtil::EncoderBuf>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1},std::allocator<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1}>,void ()(std::shared_ptr<HSUtil::Connection>)>::~__func(void *a1)
{
  *a1 = off_10A088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1},std::allocator<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1}>,void ()(std::shared_ptr<HSUtil::Connection>)>::~__func(void *a1)
{
  *a1 = off_10A088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1},std::allocator<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1}>,void ()(std::shared_ptr<HSUtil::Connection>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_10A088;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1},std::allocator<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1}>,void ()(std::shared_ptr<HSUtil::Connection>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1},std::allocator<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1}>,void ()(std::shared_ptr<HSUtil::Connection>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1},std::allocator<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1}>,void ()(std::shared_ptr<HSUtil::Connection>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = v4;
        v10 = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HSMapper::_statusHandler(v8, &v9);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_7CC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1},std::allocator<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>)#1}>,void ()(std::shared_ptr<HSUtil::Connection>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HSMapper::_statusHandler(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  std::mutex::lock((*a2 + 112));
  v4 = *(v3 + 224);
  std::mutex::unlock((v3 + 112));
  if (v4 != 1)
  {
    v7 = 0;
    v8 = 0;
    v5 = a1[1];
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v7 = *a1;
      }
    }

    v6 = a1[9];
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_7CD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,objc_object * {__strong}&>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_7CFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<objc_object * {__strong},unsigned long long>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},unsigned long long>,HSUtil::ObjectHasher,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},unsigned long long>,std::equal_to<objc_object * {__strong}>,HSUtil::ObjectHasher,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},unsigned long long>>>::__emplace_unique_key_args<objc_object * {__strong},objc_object * {__strong}&,unsigned long long &>(void *a1, unint64_t *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_7D2A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<HSStage * {__strong},void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<HSStage * {__strong},void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::function<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::swap[abi:ne200100](void *result, void *a2)
{
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

void sub_7D584(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<HSMapper::_init(std::weak_ptr<HSMapper>,HSUtil::FileDescriptor &&,NSObject  {objcproto17OS_dispatch_queue}*,HSMapper::Config const&)::{lambda(HSUtil::Decoder &,HSUtil::CoderKey const&)#1},std::allocator<HSUtil::CoderKey const&>,objc_object * ()(HSUtil::Decoder,HSUtil::CoderKey const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10A118;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HSMapper::_init(std::weak_ptr<HSMapper>,HSUtil::FileDescriptor &&,NSObject  {objcproto17OS_dispatch_queue}*,HSMapper::Config const&)::{lambda(HSUtil::Decoder &,HSUtil::CoderKey const&)#1},std::allocator<HSUtil::CoderKey const&>,objc_object * ()(HSUtil::Decoder,HSUtil::CoderKey const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__CFString *HSMapper::_decodeObject(HSMapper *this, HSUtil::Decoder *a2, const HSUtil::CoderKey *a3)
{
  Type = LocalObject::GetType(this);
  if (Type != a3)
  {
    if (RemoteObject::GetType(Type) != a3)
    {
      v8 = HSUtil::Decoder::DecodeObject(a2, a3, v7);
LABEL_4:
      v9 = v8;
      goto LABEL_15;
    }

    v14 = 0;
    v15 = 0;
    HSUtil::Decoder::decodeCodable<RemoteObject>(a2, &v14);
    if (!*a2)
    {
      v8 = HSMapper::_proxyForID(this, v14, v15);
      goto LABEL_4;
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v16);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSMapper::_decodeObject();
    }

    goto LABEL_11;
  }

  v14 = 0;
  HSUtil::Decoder::decodeCodable<LocalObject>(a2, &v14);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v16);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSMapper::_decodeObject();
    }

LABEL_11:
    v9 = 0;
    goto LABEL_15;
  }

  v10 = HSMapper::_objectForID(this, v14);
  v11 = v10;
  v12 = HSUtil::Decoder::DecodeObjectNil;
  if (v10)
  {
    v12 = v10;
  }

  v9 = v12;

LABEL_15:

  return v9;
}

uint64_t HSUtil::Decoder::decodeCodable<LocalObject>(uint64_t result, unint64_t *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<LocalObject>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::decodeCodable<RemoteObject>(uint64_t result, RemoteObject *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<RemoteObject>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

void *HSMapper::_proxyForID(HSMapper *this, objc_class *a2, unint64_t a3)
{
  v13[0] = a3;
  os_unfair_lock_lock(this + 52);
  v13[2] = v13;
  v4 = (std::__hash_table<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 21, v13) + 3);
  if (*v4)
  {
    v5 = *v4;
    goto LABEL_13;
  }

  v5 = objc_opt_new();
  v5[1] = v13[0];
  v6 = *(this + 1);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v7 = std::__shared_weak_count::lock(v6);
  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v10 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v9 = 0;
  v10 = *this;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
LABEL_8:
  v11 = v5[3];
  v5[2] = v10;
  v5[3] = v8;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if ((v9 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  objc_storeStrong(v4, v5);
LABEL_13:
  os_unfair_lock_unlock(this + 52);

  return v5;
}

id HSUtil::Decoder::DecodeObject(HSUtil::Decoder *this, HSUtil::Decoder *a2, const HSUtil::CoderKey *a3)
{
  if (HSUtil::Coder::_ObjectType == a2 && (v4 = HSUtil::Decoder::decodeKey(this), !*this))
  {
    objc_getClass(*v4);
    v7 = objc_opt_new();
    if (v7 && (HSUtil::Decoder::decodeHSCodable(this, v7), !*this))
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t HSUtil::Decoder::_readCodable<LocalObject>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v10 = 0;
      v11 = *(a1 + 8);
      v12 = 0;
      v9 = *(a1 + 32);
      v13 = *(a1 + 24);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      *a3 = HSUtil::Decoder::decodeUInt(&v10);
      if (v10)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::_readCodable<RemoteObject>(uint64_t a1, unint64_t *a2, RemoteObject *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v10 = 0;
      v11 = *(a1 + 8);
      v12 = 0;
      v9 = *(a1 + 32);
      v13 = *(a1 + 24);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((RemoteObject::decode(a3, &v10) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t RemoteObject::decode(RemoteObject *this, HSUtil::Decoder *a2)
{
  HSUtil::Decoder::decodeArray(a2, v10);
  if (!*a2)
  {
    HSUtil::Decoder::decodeString(v10, v8);
    if (v10[0])
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v13);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        RemoteObject::decode();
      }
    }

    else
    {
      Class = objc_getClass(name);
      *this = Class;
      if (Class)
      {
        *(this + 1) = HSUtil::Decoder::decodeUInt(v10);
        if (!v10[0])
        {
          v4 = 1;
          goto LABEL_9;
        }

        basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v13);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          RemoteObject::decode();
        }
      }

      else
      {
        basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v13);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          RemoteObject::decode();
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          RemoteObject::decode();
        }
      }
    }

    v4 = 0;
LABEL_9:
    HSUtil::Buffer::~Buffer(v8);
    goto LABEL_10;
  }

  basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v13);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    RemoteObject::decode();
  }

  v4 = 0;
LABEL_10:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

void sub_7DE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  HSUtil::Buffer::~Buffer(&a9);
  HSUtil::Decoder::~Decoder(&a18);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_7E100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_7E1E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,HSUtil::Connection::start(void)::{lambda(void)#1}>>(std::__thread_struct **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  HSUtil::Connection::_readThread(&v5[1]->__p_);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HSUtil::Connection::start(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_7E270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HSUtil::Connection::start(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::__thread_struct ***std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HSUtil::Connection::start(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](std::__thread_struct ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    operator delete();
  }

  return a1;
}

std::__thread_struct **std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

uint64_t *HSUtil::Connection::_readThread(HSUtil::FileDescriptor **this)
{
  v12 = this;
  v2 = (this + 14);
  v10 = (this + 14);
  v11 = 1;
  std::mutex::lock((this + 14));
  if (*(this + 56) == 1)
  {
    v5 = this[29];
    v4 = this[30];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    std::unique_lock<std::mutex>::unlock[abi:ne200100](&v10);
    for (i = HSUtil::FileDescriptor::fd(v5); ; HSUtil::Connection::_handleMessage(this, i, v8))
    {
      HSUtil::Connection::_readFromDescriptor(i, v8, &dword_4 + 2);
      if (v9 >= 0x4000001)
      {
        break;
      }
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 5;
  }

  std::mutex::unlock(v2);
  return HSUtil::DeferredFn<HSUtil::Connection::_readThread(void)::{lambda(void)#1}>::~DeferredFn(&v12);
}

void sub_7E400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, uint64_t a13)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    HSUtil::Connection::_close(v13, *v17, 0);
    __cxa_end_catch();
    JUMPOUT(0x7E360);
  }

  HSUtil::DeferredFn<HSUtil::Connection::_readThread(void)::{lambda(void)#1}>::~DeferredFn(&a13);
  _Unwind_Resume(a1);
}

ssize_t HSUtil::Connection::_readFromDescriptor(ssize_t this, uint64_t a2, unsigned __int8 *a3)
{
  if (a3)
  {
    v5 = this;
    for (i = 0; i < a3; i += this)
    {
      while (1)
      {
        this = read(v5, (a2 + i), &a3[-i]);
        if (this != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_9;
        }
      }

      if (this <= 0)
      {
LABEL_9:
        exception = __cxa_allocate_exception(4uLL);
        *exception = 3;
      }
    }
  }

  return this;
}

void HSUtil::Connection::_handleMessage(uint64_t *a1, ssize_t a2, int *a3)
{
  HSUtil::Buffer::Buffer(v19, *(a3 + 2), *(a3 + 2));
  if (!*v20)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8;
  }

  HSUtil::Connection::_readFromDescriptor(a2, *v20, *(a3 + 2));
  if (*a3)
  {
    std::mutex::lock((a1 + 44));
    if ((a1[58] & 1) == 0)
    {
      if (!a1[59] || *(a1 + 465) == 1)
      {
        v15 = __cxa_allocate_exception(4uLL);
        *v15 = 6;
      }

      v9 = *a3;
      *(a1 + 242) = *(a3 + 2);
      *(a1 + 120) = v9;
      v10 = (a1 + 66);
      if (a1[69])
      {
        free(*v10);
      }

      *v10 = *v20;
      *(a1 + 537) = *(&v20[2] + 1);
      memset(&v20[2], 0, 17);
      *v20 = HSUtil::Buffer::_EmptyData;
      *(a1 + 465) = 1;
      std::condition_variable::notify_one((a1 + 52));
    }

    v8 = (a1 + 44);
    goto LABEL_17;
  }

  std::mutex::lock((a1 + 70));
  if (a1[84])
  {
LABEL_9:
    v8 = (a1 + 70);
LABEL_17:
    std::mutex::unlock(v8);
    goto LABEL_18;
  }

  if (*(a1 + 673))
  {
    goto LABEL_30;
  }

  v6 = *a3;
  *(a1 + 346) = *(a3 + 2);
  *(a1 + 172) = v6;
  v7 = (a1 + 92);
  if (a1[95])
  {
    free(*v7);
  }

  *v7 = *v20;
  *(a1 + 745) = *(&v20[2] + 1);
  memset(&v20[2], 0, 17);
  *v20 = HSUtil::Buffer::_EmptyData;
  *(a1 + 673) = 1;
  if (a1[85])
  {
    std::condition_variable::notify_one(a1 + 13);
    goto LABEL_9;
  }

  if ((*a3 & 2) != 0)
  {
LABEL_30:
    v16 = __cxa_allocate_exception(4uLL);
    *v16 = 6;
  }

  std::mutex::unlock((a1 + 70));
  v11 = *a1;
  v12 = a1[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = ___ZN6HSUtil10Connection14_handleMessageEiRKNS0_6HeaderE_block_invoke;
  block[3] = &__block_descriptor_48_ea8_32c44_ZTSNSt3__18weak_ptrIN6HSUtil10ConnectionEEE_e5_v8__0l;
  block[4] = v11;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v13, block);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_18:
  HSUtil::Buffer::~Buffer(v19);
}

void sub_7E7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::mutex::unlock((v8 + 560));
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *HSUtil::DeferredFn<HSUtil::Connection::_readThread(void)::{lambda(void)#1}>::~DeferredFn(uint64_t *a1)
{
  v2 = *a1;
  std::mutex::lock((*a1 + 112));
  *(v2 + 264) = 1;
  std::condition_variable::notify_all((v2 + 176));
  std::mutex::unlock((v2 + 112));
  return a1;
}

void ___ZN6HSUtil10Connection14_handleMessageEiRKNS0_6HeaderE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        HSUtil::Connection::_handleInitialMessage(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void HSUtil::Connection::_handleInitialMessage(HSUtil::Connection *this)
{
  dispatch_assert_queue_V2(*(this + 2));
  std::mutex::lock((this + 560));
  if ((*(this + 672) & 1) == 0)
  {
    if ((*(this + 673) & 1) == 0)
    {
      __assert_rtn("_handleInitialMessage", "HSConnection.h", 419, "_reply.messageReady");
    }

    HSUtil::Buffer::Buffer(v11, this + 696);
    *(this + 673) = 0;
    std::mutex::unlock((this + 560));
    v9 = (this + 112);
    v10 = 1;
    std::mutex::lock((this + 112));
    if (*(this + 56) != 1)
    {
      goto LABEL_19;
    }

    if (*(this + 32))
    {
      __assert_rtn("_handleInitialMessage", "HSConnection.h", 433, "!_state.replyThread");
    }

    *(this + 32) = pthread_self();
    std::mutex::unlock((this + 112));
    v10 = 0;
    v6 = 0;
    v7 = 0;
    v2 = *(this + 1);
    if (v2)
    {
      v7 = std::__shared_weak_count::lock(v2);
      if (v7)
      {
        v6 = *this;
      }
    }

    v3 = *(this + 6);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (!v8[5])
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 7;
    }

    HSUtil::Connection::_sendMessage(this, v8, 3, this + 560, v5);
    HSUtil::Buffer::~Buffer(v5);
    std::unique_lock<std::mutex>::lock[abi:ne200100](&v9);
    if (*(this + 56) == 1)
    {
      *(this + 32) = 0;
      if ((v10 & 1) == 0)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
        return;
      }

      std::mutex::unlock(v9);
      v10 = 0;
    }

    HSUtil::Buffer::~Buffer(v8);
    if (v10)
    {
LABEL_19:
      std::mutex::unlock(v9);
    }

    HSUtil::Buffer::~Buffer(v11);
    return;
  }

  std::mutex::unlock((this + 560));
}

void sub_7EAD0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  HSUtil::Buffer::~Buffer((v21 - 104));
  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(a1);
    HSUtil::Connection::_close(v20, *v24, 1);
    __cxa_end_catch();
    JUMPOUT(0x7EA34);
  }

  _Unwind_Resume(a1);
}

void HSUtil::Connection::_sendMessage(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 40);
  if (v10)
  {
    v10 = *(a2 + 48);
    if (HIDWORD(v10))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 5;
    }
  }

  v40 = a3;
  v41 = v10;
  if ((a3 & 2) == 0)
  {
    std::mutex::lock(a4);
    if (*(a4 + 112) == 1)
    {
      v34 = __cxa_allocate_exception(4uLL);
      *v34 = 2;
    }

    if (*(a4 + 113) == 1)
    {
      __assert_rtn("_sendMessage", "HSConnection.h", 521, "!mailbox.messageReady");
    }

    ++*(a4 + 120);
    std::mutex::unlock(a4);
  }

  std::mutex::lock((a1 + 34));
  v11 = a1[42];
  if (!v11)
  {
    v32 = __cxa_allocate_exception(4uLL);
    *v32 = 2;
  }

  v12 = HSUtil::FileDescriptor::fd(v11);
  HSUtil::Connection::_writeToDescriptor(v12, &v40, &dword_4 + 2);
  v13 = HSUtil::FileDescriptor::fd(a1[42]);
  v14 = *(a2 + 40);
  if (v14)
  {
    v15 = *(a2 + 48);
  }

  else
  {
    v15 = 0;
  }

  HSUtil::Connection::_writeToDescriptor(v13, v14, v15);
  std::mutex::unlock((a1 + 34));
  if ((a3 & 2) != 0)
  {
    *a5 = &off_108FA0;
    *(a5 + 8) = &off_108FF8;
    *(a5 + 16) = &off_109018;
    *(a5 + 24) = &off_109030;
    v27 = HSUtil::Buffer::_EmptyData;
    *(a5 + 32) = off_109048;
    *(a5 + 40) = v27;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) &= 0xFCu;
    return;
  }

  while (2)
  {
    __lk.__m_ = a4;
    __lk.__owns_ = 1;
    std::mutex::lock(a4);
    while (1)
    {
      if (*(a4 + 112))
      {
        v30 = __cxa_allocate_exception(4uLL);
        *v30 = 2;
      }

      if (*(a4 + 113))
      {
        break;
      }

      v16 = a1[12];
      if (v16 < 0)
      {
        std::condition_variable::wait((a4 + 64), &__lk);
      }

      else
      {
        if (!v16)
        {
          goto LABEL_54;
        }

        v17.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v18.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (!v18.__d_.__rep_)
        {
          v19 = 0;
          goto LABEL_26;
        }

        if (v18.__d_.__rep_ < 1)
        {
          if (v18.__d_.__rep_ < 0xFFDF3B645A1CAC09)
          {
            v19 = 0x8000000000000000;
            goto LABEL_26;
          }
        }

        else if (v18.__d_.__rep_ > 0x20C49BA5E353F7)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_26;
        }

        v19 = 1000 * v18.__d_.__rep_;
LABEL_26:
        v20 = a1[12];
        if (v20)
        {
          if (v20 < 1)
          {
            if (v20 >= 0xFFDF3B645A1CAC09)
            {
LABEL_32:
              v20 *= 1000;
              goto LABEL_33;
            }

            v20 = 0x8000000000000000;
          }

          else
          {
            if (v20 <= 0x20C49BA5E353F7)
            {
              goto LABEL_32;
            }

            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

LABEL_33:
        v21 = v20 ^ 0x7FFFFFFFFFFFFFFFLL;
        v22 = v20 + v19;
        if (v19 <= v21)
        {
          v23.__d_.__rep_ = v22;
        }

        else
        {
          v23.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
        }

        std::condition_variable::__do_timed_wait((a4 + 64), &__lk, v23);
        if (std::chrono::steady_clock::now().__d_.__rep_ - v17.__d_.__rep_ >= 1000 * a1[12])
        {
LABEL_54:
          v29 = __cxa_allocate_exception(4uLL);
          *v29 = 4;
        }
      }
    }

    v24 = *(a4 + 128);
    HSUtil::Buffer::Buffer(a5, a4 + 136);
    *(a4 + 113) = 0;
    if ((v24 & 2) != 0)
    {
      v28 = *(a4 + 120);
      if (!v28)
      {
        __assert_rtn("_sendMessage", "HSConnection.h", 571, "mailbox.waiterCount > 0");
      }

      *(a4 + 120) = v28 - 1;
      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
      }
    }

    else
    {
      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        v36 = 0;
        v37 = 0;
        v25 = a1[1];
        if (v25)
        {
          v37 = std::__shared_weak_count::lock(v25);
          if (v37)
          {
            v36 = *a1;
          }
        }

        v26 = a1[6];
        if (!v26)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v26 + 48))(v38);
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (!v38[5])
        {
          v31 = __cxa_allocate_exception(4uLL);
          *v31 = 7;
        }

        HSUtil::Connection::_sendMessage(v35, a1, v38, a3 | 2u, a4);
        HSUtil::Buffer::~Buffer(v35);
        HSUtil::Buffer::~Buffer(v38);
        HSUtil::Buffer::~Buffer(a5);
        if (__lk.__owns_)
        {
          std::mutex::unlock(__lk.__m_);
        }

        continue;
      }

      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
    }

    break;
  }
}

ssize_t HSUtil::Connection::_writeToDescriptor(ssize_t this, uint64_t a2, const unsigned __int8 *a3)
{
  if (a3)
  {
    v5 = this;
    v6 = 0;
    while (1)
    {
      while (1)
      {
        this = write(v5, (a2 + v6), &a3[-v6]);
        if (this != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_10;
        }
      }

      if (!this)
      {
        break;
      }

      if (this < 0)
      {
LABEL_10:
        v7 = *__error();
        exception = __cxa_allocate_exception(4uLL);
        if (v7 == 35)
        {
          *exception = 4;
          goto LABEL_14;
        }

LABEL_13:
        *exception = 3;
LABEL_14:
      }

      v6 += this;
      if (v6 >= a3)
      {
        return this;
      }
    }

    exception = __cxa_allocate_exception(4uLL);
    goto LABEL_13;
  }

  return this;
}

void HSUtil::Connection::sendAsync(HSUtil::Connection *this, const HSUtil::Buffer *a2)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x7812000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v8[5] = &unk_FACCA;
  HSUtil::Buffer::slice<HSUtil::Buffer::CopyType>(a2, 0, v9);
  v3 = *this;
  v4 = *(this + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 13);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = ___ZN6HSUtil10Connection9sendAsyncERKNS_6BufferE_block_invoke;
  v6[3] = &unk_10A1B0;
  v6[5] = v3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v8;
  dispatch_async(v5, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Block_object_dispose(v8, 8);
  HSUtil::Buffer::~Buffer(v9);
}

void HSUtil::Connection::send(HSUtil::Connection *this@<X0>, const HSUtil::Buffer *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = pthread_self();
  __lk.__m_ = (this + 112);
  __lk.__owns_ = 1;
  std::mutex::lock((this + 112));
  if (*(this + 56) != 1)
  {
LABEL_6:
    *a3 = &off_108FA0;
    *(a3 + 8) = &off_108FF8;
    *(a3 + 16) = &off_109018;
    *(a3 + 24) = &off_109030;
    *(a3 + 32) = off_109048;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) &= 0xFCu;
    goto LABEL_21;
  }

  v7 = *(this + 32);
  if (v7 != v6)
  {
    while (1)
    {
      v8 = *(this + 31);
      if (v8 == v6)
      {
        break;
      }

      if (!v8)
      {
        *(this + 31) = v6;
        v9 = 1;
        goto LABEL_9;
      }

      std::condition_variable::wait((this + 176), &__lk);
      if (*(this + 56) != 1)
      {
        goto LABEL_6;
      }
    }
  }

  v9 = 0;
LABEL_9:
  if (!__lk.__owns_)
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
LABEL_26:
    __break(1u);
    JUMPOUT(0x7F6C4);
  }

  std::mutex::unlock(__lk.__m_);
  __lk.__owns_ = 0;
  v13[0] = &off_108FA0;
  v13[1] = &off_108FF8;
  v13[2] = &off_109018;
  v13[3] = &off_109030;
  v13[4] = off_109048;
  v14[0] = HSUtil::Buffer::_EmptyData;
  memset(&v14[1], 0, 17);
  v10 = 560;
  if (v7 != v6)
  {
    v10 = 352;
  }

  HSUtil::Connection::_sendMessage(this, a2, v7 == v6, this + v10, v11);
  if (v14[3])
  {
    free(v14[0]);
  }

  *v14 = *v12;
  *(&v14[1] + 1) = *&v12[9];
  *v12 = HSUtil::Buffer::_EmptyData;
  *&v12[16] = 0;
  v12[24] = 0;
  HSUtil::Buffer::~Buffer(v11);
  if ((v9 & 1) == 0)
  {
    goto LABEL_18;
  }

  std::unique_lock<std::mutex>::lock[abi:ne200100](&__lk);
  if (*(this + 56) != 1)
  {
    *a3 = &off_108FA0;
    *(a3 + 8) = &off_108FF8;
    *(a3 + 16) = &off_109018;
    *(a3 + 24) = &off_109030;
    *(a3 + 32) = off_109048;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) &= 0xFCu;
    goto LABEL_20;
  }

  *(this + 31) = 0;
  std::condition_variable::notify_one((this + 176));
  if (!__lk.__owns_)
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    goto LABEL_26;
  }

  std::mutex::unlock(__lk.__m_);
  __lk.__owns_ = 0;
LABEL_18:
  HSUtil::Buffer::Buffer(a3, v13);
LABEL_20:
  HSUtil::Buffer::~Buffer(v13);
LABEL_21:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

uint64_t *HSUtil::DeferredFn<HSMapper::send(unsigned long long,objc_selector *,objc_object *,objc_object *,objc_object *)::{lambda(void)#1}>::~DeferredFn(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v3;
  *v3 = 0;
  v6 = v4;
  HSMapper::_pushEncoderBuf(v2, &v6);
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](&v6);
  return a1;
}

void sub_7F784(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](va);
  __clang_call_terminate(a1);
}

void ___ZN6HSUtil10Connection9sendAsyncERKNS_6BufferE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[5];
      if (v5)
      {
        HSUtil::Connection::send(v5, (*(a1[4] + 8) + 48), v6);
        HSUtil::Buffer::~Buffer(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrIN6HSUtil10ConnectionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrIN6HSUtil10ConnectionEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

id proxyFn0(HSProxy *a1, objc_selector *a2)
{
  v3 = a1;
  cntrl = v3->mapper.__cntrl_;
  if (cntrl && (v5 = std::__shared_weak_count::lock(cntrl)) != 0)
  {
    v6 = v5;
    ptr = v3->mapper.__ptr_;
    if (ptr)
    {
      v8 = HSMapper::send(ptr, v3->objectID, a2, 0, 0, 0);
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_7F8F0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

id proxyFn2(HSProxy *a1, objc_selector *a2, objc_object *a3, objc_object *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  cntrl = v7->mapper.__cntrl_;
  if (cntrl && (v11 = std::__shared_weak_count::lock(cntrl)) != 0)
  {
    v12 = v11;
    ptr = v7->mapper.__ptr_;
    if (ptr)
    {
      v14 = HSMapper::send(ptr, v7->objectID, a2, v8, v9, 0);
    }

    else
    {
      v14 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_7F9CC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);

  _Unwind_Resume(a1);
}

id proxyFn3(HSProxy *a1, objc_selector *a2, objc_object *a3, objc_object *a4, objc_object *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  cntrl = v9->mapper.__cntrl_;
  if (cntrl && (v14 = std::__shared_weak_count::lock(cntrl)) != 0)
  {
    v15 = v14;
    ptr = v9->mapper.__ptr_;
    if (ptr)
    {
      v17 = HSMapper::send(ptr, v9->objectID, a2, v10, v11, v12);
    }

    else
    {
      v17 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_7FAC0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);

  _Unwind_Resume(a1);
}

void sub_7FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::shared_ptr<HSMapper>>::__emplace_unique_key_args<std::shared_ptr<HSMapper>,std::shared_ptr<HSMapper> const&>(uint64_t a1, unint64_t *a2)
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

uint64_t *std::__tree<std::shared_ptr<HSMapper>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::shared_ptr<HSMapper>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<HSMapper>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<HSMapper>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::shared_ptr<HSMapper>>::__erase_unique<std::shared_ptr<HSMapper>>(uint64_t **a1, unint64_t *a2)
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

  std::__tree<std::shared_ptr<HSMapper>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::shared_ptr<HSMapper>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::shared_ptr<HSMapper>>::__remove_node_pointer(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::shared_ptr<HSMapper>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_806BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void HSMapper::New()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSMapper::send()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSUtil::Connection::_init()
{
  __assert_rtn("_init", "HSConnection.h", 210, "config.messageHandler");
}

{
  __assert_rtn("_init", "HSConnection.h", 209, "config.handlerQueue");
}

void HSUtil::Connection::_close()
{
  __assert_rtn("_close", "HSConnection.h", 245, "status != Status::Active");
}

{
  __assert_rtn("_close", "HSConnection.h", 244, "status != Status::Idle");
}

void HSMapper::_messageHandler()
{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void Message::decode()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void LocalObject::GetType()
{
  {
    LocalObject::GetType(void)::type = HSUtil::CoderKey::New("com.apple.hid.HSRemoteObject.LocalObject", v0);
  }
}

void RemoteObject::GetType()
{
  {
    RemoteObject::GetType(void)::type = HSUtil::CoderKey::New("com.apple.hid.HSRemoteObject.RemoteObject", v0);
  }
}

void HSMapper::_decodeObject()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void RemoteObject::decode()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __cxx_global_var_init_52()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_53()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_54()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void sub_825C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_82638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HSRecordingStage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_827FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HSUtil::ObjectLock::~ObjectLock(va);
  _Unwind_Resume(a1);
}

void sub_82B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  HSUtil::Buffer::~Buffer(&a9);
  HSUtil::ObjectLock::~ObjectLock(&a18);
  _Unwind_Resume(a1);
}

void sub_82C0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::ObjectLock::~ObjectLock(va);
  _Unwind_Resume(a1);
}

void sub_82FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10)
{
  if (a10)
  {
    [(HSRecordingStage *)a10 _startRecording];
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSRecordingStage _startRecording];
    }

    [a9 _reset];
    __cxa_end_catch();
    JUMPOUT(0x82F88);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::unique_ptr<EncoderState>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 24))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t *std::vector<std::unique_ptr<EncoderState>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<HSUtil::EncoderBuf>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<EncoderState>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void newEncoderState(Writable *a1)
{
  {
    operator new();
  }

  operator new();
}

void sub_83720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v16);
  (*(*v15 + 24))(v15);
  operator delete(v14);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSRecordingStage _stopRecording];
    }

    [a9 _reset];
    __cxa_end_catch();
    JUMPOUT(0x835A0);
  }

  _Unwind_Resume(a1);
}

unint64_t HSUtil::IOUtil::Rotate(Readable *a1, uint64_t (***a2)(HSUtil::IOUtil *, Writable *, uint64_t, unint64_t), uint64_t a3, unint64_t a4)
{
  if (a3 == 0x8000000000000000)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSIOUtil.h", v26);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::IOUtil::Rotate();
    }

    v4 = 0;
    v5 = 34;
  }

  else
  {
    v7 = a3 > 0;
    if (a3 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = -a3;
    }

    v9 = v8 % a4;
    v10 = v9 > a4 >> 1;
    if (v9 <= a4 >> 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = a4 - v9;
    }

    if (v11)
    {
      HSUtil::Buffer::Buffer(v24, 0x8000uLL, 0);
      if (v25)
      {
        if ((v7 ^ v10))
        {
          while (1)
          {
            v14 = v11 >= 0x8000 ? 0x8000 : v11;
            v16 = HSUtil::Buffer::readFrom(v24, 0, a1, a4 - v14, v14);
            if (v16)
            {
              break;
            }

            if (v15 != v14)
            {
              goto LABEL_42;
            }

            v16 = HSUtil::IOUtil::Copy(a2, v14, a1, 0, a4 - v14);
            if (v16)
            {
              break;
            }

            if (v17 != a4 - v14)
            {
              goto LABEL_42;
            }

            if (!v25)
            {
              goto LABEL_43;
            }

            v16 = (**a2)(a2, 0);
            if (v16)
            {
              break;
            }

            if (v18 != v14)
            {
              goto LABEL_42;
            }

            v11 -= v14;
            if (!v11)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          while (1)
          {
            v19 = v11 >= 0x8000 ? 0x8000 : v11;
            v16 = HSUtil::Buffer::readFrom(v24, 0, a1, 0, v19);
            if (v16)
            {
              break;
            }

            if (v20 != v19)
            {
              goto LABEL_42;
            }

            v16 = HSUtil::IOUtil::Copy(a2, 0, a1, v19, a4 - v19);
            if (v16)
            {
              break;
            }

            if (v21 != a4 - v19)
            {
              goto LABEL_42;
            }

            if (!v25)
            {
LABEL_43:
              v16 = 22;
              break;
            }

            v16 = (**a2)(a2, a4 - v19);
            if (v16)
            {
              break;
            }

            if (v22 != v19)
            {
LABEL_42:
              v4 = 0;
              LODWORD(v16) = 5;
              goto LABEL_45;
            }

            v11 -= v19;
            if (!v11)
            {
LABEL_37:
              LODWORD(v16) = 0;
              v4 = 0;
              goto LABEL_45;
            }
          }
        }

        v4 = v16 & 0xFFFFFFFF00000000;
      }

      else
      {
        basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSIOUtil.h", v26);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          HSUtil::IOUtil::Rotate();
        }

        v4 = 0;
        LODWORD(v16) = 12;
      }

LABEL_45:
      HSUtil::Buffer::~Buffer(v24);
      v5 = v16;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }
  }

  return v4 | v5;
}

void sub_83D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_83ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSRecordingStage _recordStateFrame];
    }

    [v10 _reset];
    __cxa_end_catch();
    JUMPOUT(0x83EB8);
  }

  _Unwind_Resume(exception_object);
}

void sub_84048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v16);

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSRecordingStage _recordConsumeFrame:];
    }

    [v15 _reset];
    __cxa_end_catch();
    JUMPOUT(0x83FF0);
  }

  _Unwind_Resume(a1);
}

void sub_841FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v14);
  std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void EncoderStateMemoryable::EncoderStateMemoryable(EncoderStateMemoryable *this, Writable *a2)
{
  EncoderState::EncoderState(this, a2, 0, -1);
  *(v4 + 200) = 1;
  *v4 = &off_10A370;
  *(v4 + 8) = &off_10A3D0;
  *(v4 + 208) = off_10A3F0;
  *(v4 + 216) = &off_10A418;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  *(this + 28) = v5;
}

void EncoderState::~EncoderState(EncoderState *this)
{
  *this = &off_10A4B0;
  *(this + 1) = &off_10A4F0;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](this + 24);
}

{
  EncoderState::~EncoderState(this);

  operator delete();
}

unint64_t EncoderState::read(EncoderState *this, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = *(this + 21);
  if (v5)
  {
    v6 = *(this + 23);
    v7 = v6 >= a2;
    v8 = v6 - a2;
    if (v7)
    {
      if (v8 < a4)
      {
        a4 = v8;
      }

      v11 = (**v5)(v5, *(this + 22) + a2, a3, a4);
      v9 = v11 & 0xFFFFFFFF00000000;
      v10 = v11;
    }

    else
    {
      v9 = 0;
      v10 = 34;
    }
  }

  else
  {
    v9 = 0;
    v10 = 45;
  }

  return v10 | v9;
}

void EncoderStateMemoryable::~EncoderStateMemoryable(EncoderStateMemoryable *this)
{
  EncoderState::~EncoderState(this);

  operator delete();
}

unint64_t EncoderState::write(EncoderState *this, unint64_t a2, const void *a3, unint64_t a4)
{
  v4 = *(this + 24);
  v6 = v4 >= a2;
  v5 = v4 - a2;
  v6 = v6 && v5 >= a4;
  if (v6)
  {
    v12 = (***(this + 20))(*(this + 20), *(this + 22) + a2, a3);
    v8 = v12;
    if (v12)
    {
      v7 = v12 & 0xFFFFFFFF00000000;
    }

    else if (v13 == a4)
    {
      v8 = 0;
      v7 = 0;
      if (a4 + a2 > *(this + 23))
      {
        *(this + 23) = a4 + a2;
      }
    }

    else
    {
      v7 = 0;
      v8 = 5;
    }
  }

  else
  {
    v7 = 0;
    v8 = 34;
  }

  return v7 | v8;
}

uint64_t EncoderState::writeLength(EncoderState *this, unint64_t a2)
{
  if (*(this + 24) < a2)
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"virtual IO::Result EncoderState::writeLength(size_t)"];
    [v5 handleFailureInFunction:v6 file:@"HSRecordingStage.mm" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"len <= _cap"}];
  }

  *(this + 23) = a2;
  if (*(this + 200) == 1)
  {
    return (*(**(this + 20) + 8))(*(this + 20), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t EncoderStateMemoryable::memory(EncoderStateMemoryable *this)
{
  result = (***(this + 28))(*(this + 28));
  if (result)
  {
    result += *(this + 22);
  }

  return result;
}

unint64_t EncoderStateMemoryable::memoryReadableLength(EncoderStateMemoryable *this)
{
  v2 = (*(**(this + 28) + 8))(*(this + 28));
  v3 = *(this + 22);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 >= *(this + 23))
  {
    return *(this + 23);
  }

  return v5;
}

unint64_t EncoderStateMemoryable::memoryWritableLength(EncoderStateMemoryable *this)
{
  v2 = (*(**(this + 28) + 16))(*(this + 28));
  v3 = *(this + 22);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 >= *(this + 24))
  {
    return *(this + 24);
  }

  return v5;
}

unint64_t EncoderStateMemoryable::writeTo(EncoderStateMemoryable *this, unint64_t a2, Writable *a3, uint64_t a4, unint64_t a5)
{
  v10 = (*(*this + 48))(this);
  if (v10)
  {
    v11 = v10;
    v12 = (*(*this + 56))(this);
    if (v12 >= a2)
    {
      if (v12 - a2 < a5)
      {
        a5 = v12 - a2;
      }

      v15 = (*a3->var0)(a3, a4, v11 + a2, a5);
      v14 = v15;
      if (v15)
      {
        v13 = v15 & 0xFFFFFFFF00000000;
      }

      else
      {
        v13 = 0;
        v14 = 5;
        if (v16 == a5)
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v13 = 0;
      v14 = 34;
    }
  }

  else
  {
    v13 = 0;
    v14 = 12;
  }

  return v13 | v14;
}

uint64_t non-virtual thunk toEncoderStateMemoryable::memory(EncoderStateMemoryable *this)
{
  result = (***(this + 2))(*(this + 2));
  if (result)
  {
    result += *(this - 4);
  }

  return result;
}

unint64_t non-virtual thunk toEncoderStateMemoryable::memoryReadableLength(EncoderStateMemoryable *this)
{
  v2 = (*(**(this + 2) + 8))(*(this + 2));
  v3 = *(this - 4);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 >= *(this - 3))
  {
    return *(this - 3);
  }

  return v5;
}

unint64_t non-virtual thunk toEncoderStateMemoryable::memoryWritableLength(EncoderStateMemoryable *this)
{
  v2 = (*(**(this + 2) + 16))(*(this + 2));
  v3 = *(this - 4);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 >= *(this - 2))
  {
    return *(this - 2);
  }

  return v5;
}

void EncoderState::EncoderState(EncoderState *this, Writable *lpsrc, uint64_t a3, uint64_t a4)
{
  v7 = (this + 8);
  *this = &off_10A4B0;
  *(this + 1) = &off_10A4F0;
  *(this + 4) = 0;
  v8 = (this + 16);
  *(this + 3) = off_109D20;
  *(this + 4) = HSUtil::Encoder::EncodeObject;
  *(this + 6) = this + 24;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 113) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = lpsrc;
  *(this + 22) = a3;
  *(this + 23) = 0;
  *(this + 24) = a4;
  *(this + 200) = 0;
  HSUtil::Encoder::setWritable(v8, v7);
}

void EncoderStateMemoryable::EncoderStateMemoryable(EncoderStateMemoryable *this, Writable *a2, uint64_t a3, uint64_t a4)
{
  EncoderState::EncoderState(this, a2, a3, a4);
  *v6 = &off_10A370;
  v6[1] = &off_10A3D0;
  v6[26] = off_10A3F0;
  v6[27] = &off_10A418;
  if (!v7)
  {
    __cxa_bad_cast();
  }

  *(this + 28) = v7;
}

HSRecordingTypes::StateFrame *HSRecordingTypes::StateFrame::StateFrame(HSRecordingTypes::StateFrame *this, HSStage *a2)
{
  *(this + 8) = 2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = off_10A510;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 1065353216;
  HSRecordingTypes::populateStageMap(this + 4, a2);
  return this;
}

void HSRecordingTypes::populateStageMap(void *a1, void *a2)
{
  v4 = a2;
  v5 = [v4 name];
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);

  if (!std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::find<std::string>(a1, __p))
  {
    v18 = __p;
    v6 = std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, __p);
    objc_storeStrong(v6 + 5, a2);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v4 consumers];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          HSRecordingTypes::populateStageMap(a1, v11);

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
      }

      while (v8);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_850AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void HSRecordingTypes::StateFrame::encodeToMap(__int128 **this, HSUtil::Encoder *a2)
{
  HSRecordingTypes::Frame::encodeToMap(this, a2);
  HSUtil::Encoder::encodeMapStart(a2, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key, 4);
  v4 = this[6];
  if (v4)
  {
    while (1)
    {
      std::pair<std::string const,HSStage * {__strong}>::pair[abi:ne200100](&__p, v4 + 1);
      if (*a2)
      {
        break;
      }

      v6 = *(a2 + 17);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v8 = HSUtil::CoderKey::New(p_p, v5);
      HSUtil::Encoder::encodeHSCodable(a2, v8, v11);
      if (*a2)
      {
        v9 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v20);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v13 = "virtual void HSRecordingTypes::StateFrame::encodeToMap(Encoder &) const";
          v14 = 2080;
          v15 = v9;
          v16 = 2048;
          v17 = 144;
          v18 = 2080;
          v19 = "coder";
          _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
        }

        if (*a2)
        {
          HSUtil::Encoder::revert(a2, v6);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v20);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::StateFrame::encodeToMap();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_14:
    if (!*a2)
    {
      HSUtil::Encoder::_encodeContainerStop(a2);
    }
  }
}

void sub_85330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string const,HSStage * {__strong}>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t HSRecordingTypes::StateFrame::decodeFromMap(HSRecordingTypes::StateFrame *this, HSUtil::Decoder *a2)
{
  if ((HSRecordingTypes::Frame::decodeFromMap(this, a2) & 1) == 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v32);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::StateFrame::decodeFromMap();
    }

    return 0;
  }

  HSUtil::Decoder::decodeMap(a2, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key, v19);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v32);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::StateFrame::decodeFromMap();
    }

    goto LABEL_5;
  }

  v4 = 1;
  while (1)
  {
    v7 = HSUtil::Decoder::decodeKey(v19);
    if (LODWORD(v19[0]))
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, *v7);
    v8 = std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::find<std::string>(this + 4, __p);
    if (v8)
    {
      v9 = v8[5];
      HSUtil::Decoder::decodeHSCodable(v19, v9);
      if (LODWORD(v19[0]))
      {
        v10 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v32);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v25 = "virtual BOOL HSRecordingTypes::StateFrame::decodeFromMap(Decoder &)";
          v26 = 2080;
          v27 = v10;
          v28 = 2048;
          v29 = 178;
          v30 = 2080;
          v31 = "submap";
          _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
        }

        v11 = 1;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      HSUtil::Decoder::decodeElement(v19, v14);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v12 = v15;
      v15 = 0;
      if (v12)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v12);
        operator delete();
      }

      if (LODWORD(v19[0]))
      {
        v13 = basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v32);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v25 = "virtual BOOL HSRecordingTypes::StateFrame::decodeFromMap(Decoder &)";
          v26 = 2080;
          v27 = v13;
          v28 = 2048;
          v29 = 170;
          v30 = 2080;
          v31 = "submap";
          _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
        }

        v11 = 1;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          HSRecordingTypes::StateFrame::decodeFromMap(v22, &v18, __p, &v23);
        }

        v11 = 3;
      }
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    else if (v11)
    {
LABEL_35:
      if (v11 != 3)
      {
        goto LABEL_5;
      }
    }
  }

  if (LODWORD(v19[0]) != 3)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v32);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::StateFrame::decodeFromMap();
    }

LABEL_5:
    v4 = 0;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v5 = v20;
  v20 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

HSUtil::Encoder *HSRecordingTypes::Frame::encodeToMap(HSRecordingTypes::Frame *this, HSUtil::Encoder *a2)
{
  MonotonicTime = HSUtil::GetMonotonicTime(this);
  UnixTime = HSUtil::GetUnixTime(MonotonicTime);
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key, *(this + 8));
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, MonotonicTime);
  v6 = HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key;

  return HSUtil::Encoder::encodeUInt(a2, v6, UnixTime);
}

uint64_t HSRecordingTypes::Frame::decodeFromMap(HSRecordingTypes::Frame *this, HSUtil::Decoder *a2)
{
  *(this + 8) = HSUtil::Decoder::decodeUInt(a2, HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::Frame::decodeFromMap();
    }

    return 0;
  }

  *(this + 2) = HSUtil::Decoder::decodeUInt(a2, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::Frame::decodeFromMap();
    }

    return 0;
  }

  *(this + 3) = HSUtil::Decoder::decodeUInt(a2, HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::Frame::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_861C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,HSStage * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,HSStage * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,HSStage * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,HSStage * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,HSStage * {__strong}>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,HSStage * {__strong}>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::pair<std::string const,HSStage * {__strong}>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,HSStage * {__strong}>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

HSUtil::Encoder *HSUtil::Encoder::encodeMapStart(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, int a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSUtil::Encoder::_encodeMapStart(v4, a3);
    }
  }

  return result;
}

uint64_t HSUtil::Encoder::revert(uint64_t this, unint64_t a2)
{
  v2 = *(this + 104);
  if (__CFADD__(v2, a2))
  {
    v3 = 14;
  }

  else
  {
    v4 = *(this + 56);
    v5 = *(this + 64);
    if (v4 != v5)
    {
      v6 = v5 - 2;
      do
      {
        if (*v6 < a2)
        {
          break;
        }

        *(this + 64) = v6;
        v7 = v6 == v4;
        v6 -= 2;
      }

      while (!v7);
    }

    *(this + 112) = 0;
    v8 = *(this + 80);
    v9 = *(this + 88) - v8;
    if (v9)
    {
      v10 = v2 + a2;
      v11 = v9 >> 4;
      v12 = (v8 + 8);
      v13 = 1;
      do
      {
        v14 = *(v12 - 2);
        if (v14)
        {
          if (*v12 >= v10)
          {
            *(v12 - 2) = 0;
            *v12 = 0;
          }

          else if (v14 == 1)
          {
            *(this + 112) = 1;
          }
        }

        v12 += 2;
      }

      while (v11 > v13++);
    }

    v3 = 0;
    *(this + 136) = a2;
  }

  *this = v3;
  return this;
}

std::string *std::pair<std::string const,HSStage * {__strong}>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  return this;
}

unint64_t *HSUtil::Decoder::decodeMap@<X0>(unint64_t *this@<X0>, const HSUtil::CoderKey *a2@<X1>, uint64_t a3@<X8>)
{
  if (*this >= 5 || (v4 = this, v8 = this[9], this = HSUtil::Decoder::_findKey(this, &v8, a2), *v4))
  {
    *a3 = 5;
    *(a3 + 8) = a3;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
  }

  else
  {
    HSUtil::Decoder::_readMap(v4, &v8, v5);
    if (*v4 == 3)
    {
      *v4 = 13;
      *a3 = 5;
      *(a3 + 8) = a3;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
    }

    else
    {
      v4[9] = v8;
      HSUtil::Decoder::Decoder(a3, v5);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    this = v6;
    v6 = 0;
    if (this)
    {
      std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](this);
      operator delete();
    }
  }

  return this;
}

void sub_866E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

void HSRecordingTypes::ConsumeFrame::encodeToMap(objc_object **this, HSUtil::Encoder *a2)
{
  HSRecordingTypes::Frame::encodeToMap(this, a2);
  v4 = HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key;
  v5 = this[4];

  HSUtil::Encoder::encodeObject(a2, v4, v5);
}

uint64_t HSRecordingTypes::ConsumeFrame::decodeFromMap(HSRecordingTypes::ConsumeFrame *this, HSUtil::Decoder *a2)
{
  if ((HSRecordingTypes::Frame::decodeFromMap(this, a2) & 1) == 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::ConsumeFrame::decodeFromMap();
    }

    return 0;
  }

  v4 = HSUtil::Decoder::decodeObject(a2, HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key);
  v5 = *(this + 4);
  *(this + 4) = v4;

  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::ConsumeFrame::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

void HSUtil::Encoder::encodeObject(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, objc_object *a3)
{
  v5 = a3;
  if (!*this)
  {
    HSUtil::Encoder::_encodeKey(this, a2);
  }

  HSUtil::Encoder::encodeObject(this, v5);
}

id HSUtil::Decoder::decodeObject(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  if (*this > 4 || (v7 = *(this + 9), HSUtil::Decoder::_findKey(this, &v7, a2), *this))
  {
    v3 = 0;
  }

  else
  {
    v5 = HSUtil::Decoder::_readObject(this, &v7);
    v6 = v5;
    if (*this == 3)
    {
      v3 = 0;
      *this = 13;
    }

    else
    {
      *(this + 9) = v7;
      v3 = v5;
    }
  }

  return v3;
}

HSRecordingTypes::HeaderFrame *HSRecordingTypes::HeaderFrame::HeaderFrame(HSRecordingTypes::HeaderFrame *this)
{
  *(this + 8) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *this = off_10A590;
  *(this + 10) = 0;
  v4 = time(0);
  if (localtime_r(&v4, &v3))
  {
    *(this + 10) = v3.tm_gmtoff;
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::HeaderFrame::HeaderFrame();
    }
  }

  return this;
}

HSUtil::Encoder *HSRecordingTypes::HeaderFrame::encodeToMap(HSRecordingTypes::HeaderFrame *this, HSUtil::Encoder *a2)
{
  HSRecordingTypes::Frame::encodeToMap(this, a2);
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key, 0);
  v4 = HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key;
  v5 = *(this + 10);

  return HSUtil::Encoder::encodeInt(a2, v4, v5);
}

uint64_t HSRecordingTypes::HeaderFrame::decodeFromMap(HSRecordingTypes::HeaderFrame *this, HSUtil::Decoder *a2)
{
  if ((HSRecordingTypes::Frame::decodeFromMap(this, a2) & 1) == 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v6);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::HeaderFrame::decodeFromMap();
    }

    return 0;
  }

  v4 = HSUtil::Decoder::decodeUInt(a2, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key);
  *(this + 4) = v4;
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v6);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::HeaderFrame::decodeFromMap();
    }

    return 0;
  }

  if (v4)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v6);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::HeaderFrame::decodeFromMap();
    }

    return 0;
  }

  *(this + 10) = HSUtil::Decoder::decodeInt(a2, HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v6);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::HeaderFrame::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

void std::vector<std::unique_ptr<EncoderState>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<EncoderState>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double _ZNSt3__120__shared_ptr_emplaceIN6HSUtil6BufferENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = off_10A5C8;
  *(a1 + 24) = &off_108FA0;
  *(a1 + 32) = &off_108FF8;
  *(a1 + 40) = &off_109018;
  *(a1 + 48) = &off_109030;
  v2 = HSUtil::Buffer::_EmptyData;
  *(a1 + 56) = off_109048;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0u;
  *(a1 + 88) &= 0xFCu;
  return result;
}

void std::__shared_ptr_emplace<HSUtil::Buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10A5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t std::__split_buffer<std::unique_ptr<EncoderState>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<EncoderState>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<EncoderState>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
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
        result = (*(*result + 24))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t HSRecordingTypes::Frame::encode(HSRecordingTypes::Frame *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  (**this)(this, a2);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

void HSUtil::IOUtil::Rotate()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::StateFrame::encodeToMap()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::StateFrame::decodeFromMap()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::StateFrame::decodeFromMap(uint8_t *buf, char *a2, void *a3, void *a4)
{
  if (*a2 >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  *buf = 136315138;
  *a4 = v4;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "No stage for state: %s", buf, 0xCu);
}

void HSRecordingTypes::Frame::decodeFromMap()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::ConsumeFrame::decodeFromMap()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::HeaderFrame::HeaderFrame()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::HeaderFrame::decodeFromMap()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void __cxx_global_var_init_55()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_52(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_52(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void sub_880F8(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);

  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

id std::vector<objc_object * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HIDEvent * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<HIDEvent * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_8820C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_88610(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  HSUtil::ObjectLock::~ObjectLock(va);
  _Unwind_Resume(a1);
}

void sub_88AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, char a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  if (a18 == 1)
  {
    a33 = &a15;
    std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a33);
  }

  a33 = &a20;
  std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a33);
  HSUtil::ObjectLock::~ObjectLock(&a23);
  _Unwind_Resume(a1);
}

Playback *Playback::resetTime(Playback *this, int64_t a2)
{
  this->_time = a2;
  begin = this->_frames.__begin_;
  end = this->_frames.__end_;
  if (end != begin)
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3);
    end = this->_frames.__begin_;
    do
    {
      v5 = v4 >> 1;
      v6 = &end[v4 >> 1];
      var2 = v6->var2;
      v8 = v6 + 1;
      v4 += ~(v4 >> 1);
      if (var2 < a2)
      {
        end = v8;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  this->_nextFrame.__i_ = end;
  return this;
}

void sub_88EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  HSUtil::Buffer::~Buffer(&a9);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  HSUtil::ObjectLock::~ObjectLock(&a18);
  _Unwind_Resume(a1);
}

void HSUtil::IOUtil::ReadAll(Readable *this@<X0>, Readable *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*this + 8))(this))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 >= a2;
  }

  if (v7)
  {
    v8[0] = &off_108FA0;
    v8[1] = &off_108FF8;
    v8[2] = &off_109018;
    v8[3] = &off_109030;
    v8[4] = off_109048;
    v8[5] = HSUtil::Buffer::_EmptyData;
    v8[6] = 0;
    v8[7] = 0;
    v9 = 0;
    if (HSUtil::Buffer::readFrom(v8, 0, this, a2, v6 - a2))
    {
      *a3 = &off_108FA0;
      *(a3 + 8) = &off_108FF8;
      *(a3 + 16) = &off_109018;
      *(a3 + 24) = &off_109030;
      *(a3 + 32) = off_109048;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      *(a3 + 64) &= 0xFCu;
    }

    else
    {
      HSUtil::Buffer::Buffer(a3, v8);
    }

    HSUtil::Buffer::~Buffer(v8);
  }

  else
  {
    *a3 = &off_108FA0;
    *(a3 + 8) = &off_108FF8;
    *(a3 + 16) = &off_109018;
    *(a3 + 24) = &off_109030;
    *(a3 + 32) = off_109048;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) &= 0xFCu;
  }
}

void sub_891E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

void sub_894C0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  HSRecordingTypes::PlaybackDecoder::~PlaybackDecoder(va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void $_0::$_1::~$_1($_0::$_1 *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](this + 3, 0);
}

void HSRecordingTypes::PlaybackDecoder::decodeFrame(HSRecordingTypes::PlaybackDecoder *this, const PlayFrame *a2, HSRecordingTypes::Frame *a3)
{
  if (*this < 5)
  {
    HSUtil::Decoder::setOffset(this, a2->var4);
    if (*this)
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v5);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSRecordingTypes::PlaybackDecoder::decodeFrame();
      }
    }

    else
    {
      HSUtil::Decoder::decodeCodable<HSRecordingTypes::Frame>(this, a3);
      if (*this)
      {
        basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v5);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          HSRecordingTypes::PlaybackDecoder::decodeFrame();
        }
      }
    }
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::PlaybackDecoder::decodeFrame();
    }
  }
}

void Playback::Playback(Playback *this)
{
  this->status = 0;
  this->_master = this;
  *&this->_callbacks.__ptr_ = 0u;
  *&this->_keys.__cntrl_ = 0u;
  *&this->_mem = 0u;
  *&this->_len = 0u;
  this->_source = 0u;
  *&this->_frames.__begin_ = 0u;
  *&this->_frames.__cap_ = 0u;
  Playback::resetTime(this, 0);
}

void HSRecordingTypes::PlaybackDecoder::~PlaybackDecoder(HSRecordingTypes::PlaybackDecoder *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](this + 2, 0);
}

void Playback::Playback(Playback *this, uint64_t *a2)
{
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HSRecordingTypes::PlaybackDecoder::PlaybackDecoder(this, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  this->_nextFrame.__i_ = 0;
  Playback::resetTime(this, 0);
}

HSUtil::Decoder *HSRecordingTypes::PlaybackDecoder::PlaybackDecoder(HSUtil::Decoder *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = this;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v4 = *a2;
  *(this + 10) = v4;
  v5 = *(a2 + 8);
  *(this + 11) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *(this + 10);
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  HSUtil::Decoder::setReadable(this, v4);
  *v17 = off_10A618;
  v18 = HSUtil::Decoder::DecodeObject;
  v19 = v17;
  HSUtil::Decoder::setCallbacks(this, v17);
  std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v17);
  v6 = 0;
  v7 = 0;
  for (i = 0; ; i = v10)
  {
    v9 = *(this + 9);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v12 = off_10A6B8;
    v16 = 0;
    HSUtil::Decoder::decodeCodable<HSRecordingTypes::PlayFrame>(this, &v12);
    if (*this)
    {
      break;
    }

    v10 = v14;
    if (v14 < i)
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v17);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSRecordingTypes::PlaybackDecoder::PlaybackDecoder();
      }

      *this = 12;
      return this;
    }

    if ((v7 & 1) == 0)
    {
      v6 = v14;
    }

    v14 -= v6;
    v16 = v9;
    std::vector<HSRecordingTypes::PlayFrame>::push_back[abi:ne200100](this + 12, &v12);
    v7 = 1;
  }

  if (*this == 3)
  {
    *this = 0;
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::PlaybackDecoder::PlaybackDecoder();
    }
  }

  return this;
}

void sub_8A058(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 13) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  HSUtil::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::Decoder::decodeCodable<HSRecordingTypes::PlayFrame>(uint64_t result, HSRecordingTypes::Frame *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSRecordingTypes::PlayFrame>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t std::vector<HSRecordingTypes::PlayFrame>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<HSRecordingTypes::PlayFrame>::__emplace_back_slow_path<HSRecordingTypes::PlayFrame const&>(a1, a2);
  }

  else
  {
    *v3 = off_10A6F0;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *v3 = off_10A6B8;
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::__function::__func<objc_object * (*)(HSUtil::Decoder &,HSUtil::CoderKey const&),std::allocator<objc_object * (*)(HSUtil::Decoder &,HSUtil::CoderKey const&)>,objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10A618;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<objc_object * (*)(HSUtil::Decoder &,HSUtil::CoderKey const&),std::allocator<objc_object * (*)(HSUtil::Decoder &,HSUtil::CoderKey const&)>,objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t HSUtil::Decoder::_readCodable<HSRecordingTypes::PlayFrame>(uint64_t a1, unint64_t *a2, HSRecordingTypes::Frame *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v10 = 0;
      v11 = *(a1 + 8);
      v12 = 0;
      v9 = *(a1 + 32);
      v13 = *(a1 + 24);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((HSRecordingTypes::Frame::decode(a3, &v10) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t HSRecordingTypes::Frame::decode(HSRecordingTypes::Frame *this, HSUtil::Decoder *a2)
{
  HSUtil::Decoder::decodeMap(a2, v7);
  if (*a2)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v10);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::Frame::decode();
    }
  }

  else
  {
    if ((*(*this + 8))(this, v7))
    {
      v4 = 1;
      goto LABEL_9;
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingTypes.h", v10);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSRecordingTypes::Frame::decode();
    }
  }

  v4 = 0;
LABEL_9:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = v8;
  v8 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

void sub_8A4D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<HSRecordingTypes::PlayFrame>::__emplace_back_slow_path<HSRecordingTypes::PlayFrame const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HSRecordingTypes::PlayFrame>>(a1, v6);
  }

  v7 = 40 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = off_10A6F0;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *v7 = off_10A6B8;
  *(v7 + 32) = *(a2 + 32);
  v13 = 40 * v2 + 40;
  std::vector<HSRecordingTypes::PlayFrame>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 40) % 0x28uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_8A668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<HSRecordingTypes::PlayFrame>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = *result;
  v4 = result[1];
  v5 = v2 - (v4 - *result);
  if (v4 != *result)
  {
    v6 = v2 - 8 * ((v4 - *result) >> 3);
    v7 = v5;
    do
    {
      *v7 = off_10A6F0;
      v8 = *(v3 + 8);
      *(v7 + 24) = *(v3 + 24);
      *(v7 + 8) = v8;
      *v7 = off_10A6B8;
      *(v7 + 32) = *(v3 + 32);
      v3 += 40;
      v7 += 40;
      v6 += 40;
    }

    while (v3 != v4);
    v3 = *result;
  }

  a2[1] = v5;
  *result = v5;
  result[1] = v3;
  a2[1] = v3;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HSRecordingTypes::PlayFrame>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t HSUtil::Decoder::setOffset(uint64_t this, unint64_t a2)
{
  if (*this <= 4)
  {
    if (*(this + 64) < a2)
    {
      HSUtil::Decoder::setOffset();
    }

    *(this + 72) = a2;
    *this = 0;
  }

  return this;
}

uint64_t HSUtil::Decoder::decodeCodable<HSRecordingTypes::Frame>(uint64_t result, HSRecordingTypes::Frame *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSRecordingTypes::Frame>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::_readCodable<HSRecordingTypes::Frame>(uint64_t a1, unint64_t *a2, HSRecordingTypes::Frame *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v10 = 0;
      v11 = *(a1 + 8);
      v12 = 0;
      v9 = *(a1 + 32);
      v13 = *(a1 + 24);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((HSRecordingTypes::Frame::decode(a3, &v10) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

void *std::__shared_ptr_emplace<HSUtil::Buffer>::__shared_ptr_emplace[abi:ne200100]<HSUtil::Buffer::CopyType const&,NSData * {__strong}&,std::allocator<HSUtil::Buffer>,0>(void *a1, uint64_t a2, void **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10A5C8;
  HSUtil::Buffer::Buffer((a1 + 3), *a3);
  return a1;
}

HSUtil::Buffer *HSUtil::Buffer::Buffer(HSUtil::Buffer *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bytes];
  v5 = [v3 length];
  HSUtil::Buffer::Buffer(a1, v5, 0);
  v6 = *(a1 + 5);
  if (v6)
  {
    memmove(v6, v4, v5);
    *(a1 + 6) = v5;
  }

  return a1;
}

void HSRecordingTypes::PlaybackDecoder::decodeFrame()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::PlaybackDecoder::PlaybackDecoder()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSRecordingTypes::Frame::decode()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void __cxx_global_var_init_56()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_53(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_53(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_9_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)80,(char)108,(char)97,(char)121,(char)98,(char)97,(char)99,(char)107,(char)83,(char)116,(char)97,(char)103,(char)101,(char)80,(char)114,(char)111,(char)103,(char)114,(char)101,(char)115,(char)115,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSPlaybackStageProgressEvent", a2);
  }
}

void sub_8BB90(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  HSUtil::ObjectLock::~ObjectLock(va);
  _Unwind_Resume(a1);
}

void sub_8C08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void createRecordingBuffer(uint64_t a1)
{
  if (a1)
  {
    std::allocate_shared[abi:ne200100]<HSUtil::Buffer,std::allocator<HSUtil::Buffer>,HSUtil::Buffer::FixedType const&,unsigned long &,0>();
  }

  _ZNSt3__115allocate_sharedB8ne200100IN6HSUtil6BufferENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_8C284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_8C3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<HSUtil::Buffer>::__shared_ptr_emplace[abi:ne200100]<HSUtil::Buffer::FixedType const&,unsigned long &,std::allocator<HSUtil::Buffer>,0>(uint64_t a1, uint64_t a2, size_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10A5C8;
  HSUtil::Buffer::Buffer((a1 + 24), *a3, 0);
  if (*(a1 + 64))
  {
    *(a1 + 88) |= 2u;
  }

  return a1;
}

double std::__shared_ptr_emplace<HSUtil::Buffer>::__shared_ptr_emplace[abi:ne200100]<HSUtil::Buffer::InvalidType const&,std::allocator<HSUtil::Buffer>,0>(uint64_t a1)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = off_10A5C8;
  *(a1 + 24) = &off_108FA0;
  *(a1 + 32) = &off_108FF8;
  *(a1 + 40) = &off_109018;
  *(a1 + 48) = &off_109030;
  *(a1 + 56) = off_109048;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) &= 0xFCu;
  return result;
}

void createRecordingBuffer(uint8_t *buf, uint64_t *a2, void *a3)
{
  v3 = *a2;
  *buf = 134217984;
  *a3 = v3;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to allocate buffer with size 0x%zx", buf, 0xCu);
}

void __cxx_global_var_init_57()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_54(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_54(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

id HSProxySynth::HSRecordingPlaybackStageProxy_0mode_call0<HSRecordingPlaybackStageMode>(void *a1)
{
  v1 = a1;
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 mode]);

  return v2;
}

uint64_t HSProxySynth::HSRecordingPlaybackStageProxy_setMode_call1<void>(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectAtIndexedSubscript:0];
  [v3 setMode:{objc_msgSend(v4, "intValue")}];

  return 0;
}

uint64_t HSProxySynth::HSRecordingPlaybackStageProxy_recordingSetMaxSize_call1<void>(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectAtIndexedSubscript:0];
  [v3 recordingSetMaxSize:{objc_msgSend(v4, "unsignedLongValue")}];

  return 0;
}

id HSProxySynth::HSRecordingPlaybackStageProxy_0recordingSize_call0<unsigned long>(void *a1)
{
  v1 = a1;
  v2 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v1 recordingSize]);

  return v2;
}

id HSProxySynth::HSRecordingPlaybackStageProxy_0playbackProgress_call0<float>(void *a1)
{
  v1 = a1;
  [v1 playbackProgress];
  v2 = [NSNumber numberWithFloat:?];

  return v2;
}

uint64_t HSProxySynth::HSRecordingPlaybackStageProxy_playbackSetProgressdispatchEvent_call2<void>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 floatValue];
  v7 = v6;
  v8 = [v4 objectAtIndexedSubscript:1];
  v9 = [v8 BOOLValue];
  LODWORD(v10) = v7;
  [v3 playbackSetProgress:v9 dispatchEvent:v10];

  return 0;
}

void __cxx_global_var_init_58()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void sub_8D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  HSUtil::ObjectLock::~ObjectLock(&a9);

  _Unwind_Resume(a1);
}

void collectStages(void *a1, void *a2)
{
  v12 = a2;
  if (!std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::find<HSStage * {__strong}>(a1, &v12))
  {
    std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::__emplace_unique_key_args<HSStage * {__strong},HSStage * const {__strong}&>(a1, &v12);
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [v12 consumers];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          collectStages(a1, v7);

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

void sub_8E5A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

id HSUtil::Decoder::decodeNSString(HSUtil::Decoder *this)
{
  if (*this <= 4)
  {
    v6 = *(this + 9);
    v3 = HSUtil::Decoder::_readNSString(this, &v6);
    v4 = v3;
    if (*this)
    {
      v1 = 0;
    }

    else
    {
      *(this + 9) = v6;
      v1 = v3;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t HSUtil::Decoder::getElementType(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  LODWORD(result) = HSUtil::Decoder::_readType(this, v5);
  if (*this)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t HSUtil::Decoder::_readType(HSUtil::Decoder *this, unint64_t *a2)
{
  result = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if (result > 232)
  {
    if (result > 239)
    {
      if ((result - 240) > 0xF)
      {
        goto LABEL_32;
      }

      return 132;
    }

    if ((result - 233) < 3)
    {
      return 233;
    }

    if ((result - 236) < 3)
    {
      return 236;
    }

    if (result == 239)
    {
      return result;
    }

LABEL_32:
    if ((result - 144) < 0x50)
    {
      return 141;
    }

    return 0;
  }

  if (result <= 139)
  {
    if (result > 135)
    {
      if ((result - 136) < 2)
      {
        return 136;
      }

      if ((result - 138) < 2)
      {
        return 138;
      }
    }

    else
    {
      if ((result - 128) < 4)
      {
        return 0;
      }

      if ((result - 132) < 4)
      {
        return 132;
      }
    }

    goto LABEL_32;
  }

  if (result > 226)
  {
    if ((result - 227) < 3)
    {
      return 227;
    }

    if ((result - 230) < 3)
    {
      return 230;
    }

    goto LABEL_32;
  }

  if ((result - 141) < 3)
  {
    return 141;
  }

  if ((result - 224) < 3)
  {
    return 224;
  }

  if (result != 140)
  {
    goto LABEL_32;
  }

  return result;
}

void std::__hash_table<HSStage  {objcproto15HSPreferencable}* {__weak},HSUtil::ObjectHasher,std::equal_to<HSStage  {objcproto15HSPreferencable}* {__weak}>,std::allocator<HSStage  {objcproto15HSPreferencable}* {__weak}>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

id *std::__hash_table<HSStage  {objcproto15HSPreferencable}* {__weak},HSUtil::ObjectHasher,std::equal_to<HSStage  {objcproto15HSPreferencable}* {__weak}>,std::allocator<HSStage  {objcproto15HSPreferencable}* {__weak}>>::__emplace_unique_key_args<HSStage  {objcproto15HSPreferencable}* {__weak},HSStage  {objcproto15HSPreferencable}* {__weak}>(void *a1, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = WeakRetained;
    if (*&v5 <= WeakRetained)
    {
      v8 = WeakRetained % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & WeakRetained;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == WeakRetained)
    {
      break;
    }

    if (v7 > 1)
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

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<objc_object  {objcproto15HSStageObserver}* {__weak}>::operator()[abi:ne200100](a1, v10 + 2, location))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_8EB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<objc_object  {objcproto15HSStageObserver}* {__weak},void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_59()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_55(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_55(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)80,(char)114,(char)101,(char)102,(char)101,(char)114,(char)101,(char)110,(char)99,(char)101>::Key = HSUtil::CoderKey::New("HSPreference", a2);
  }
}

void sub_8F340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

void sub_8FBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  std::mutex::unlock((v15 + 32));
  _Unwind_Resume(a1);
}

void sub_8FFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, id location, uint64_t a18, std::__shared_weak_count *a19, char a20, uint64_t a21, uint64_t a22)
{
  objc_destroyWeak((v23 + 32));
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  objc_destroyWeak(&location);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void sub_900CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c30_ZTSNSt3__18weak_ptrI6ClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c30_ZTSNSt3__18weak_ptrI6ClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_90428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::mutex::unlock((v3 + 32));
  HSUtil::FileDescriptor::~FileDescriptor(va);
  HSUtil::FileDescriptor::~FileDescriptor(va1);
  _Unwind_Resume(a1);
}

void sub_907B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  HSUtil::DecoderBuf::~DecoderBuf(&a22);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectory _handleDataFromClient:];
    }

    v26 = v23[1];
    a9 = *v23;
    a10 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v22 _removeClient:&a9];
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    __cxa_end_catch();
    JUMPOUT(0x906B4);
  }

  std::mutex::unlock((v22 + 32));
  _Unwind_Resume(a1);
}

uint64_t HSUtil::Buffer::slice<HSUtil::Buffer::RefType>@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 40);
  if (v4)
  {
    v5 = *(result + 48);
    v6 = v5 - a2;
    if (v5 < a2)
    {
      HSUtil::Buffer::slice<HSUtil::Buffer::CopyType>();
    }

    v7 = v4 + a2;

    return HSUtil::Buffer::Buffer(a3, v7, v6);
  }

  else
  {
    *a3 = &off_108FA0;
    *(a3 + 8) = &off_108FF8;
    *(a3 + 16) = &off_109018;
    *(a3 + 24) = &off_109030;
    *(a3 + 32) = off_109048;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) &= 0xFCu;
  }

  return result;
}

void sub_90EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  __cxa_free_exception(v32);

  HSUtil::Decoder::~Decoder(&a19);
  _Unwind_Resume(a1);
}

uint64_t sendMessage(HSUtil::FileDescriptor *a1, HSUtil::EncoderBuf *this)
{
  v3 = HSUtil::EncoderBuf::buffer(this);
  if (!*(v3 + 40))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "encode message failed");
LABEL_19:
    v17 = &std::runtime_error::~runtime_error;
LABEL_20:
    __cxa_throw(exception, v16, v17);
  }

  v4 = v3;
  v18 = *(v3 + 48);
  v5 = (*(*a1 + 16))(a1, 0, &v18, 4);
  if (v5)
  {
    v13 = v5;
    exception = __cxa_allocate_exception(0x20uLL);
    v14 = std::system_category();
    std::system_error::system_error(exception, v13, v14, "msgLenBuf.writeTo() failed");
LABEL_17:
    v17 = &std::system_error::~system_error;
    goto LABEL_20;
  }

  if (v6 != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "failed to write entire message length");
    goto LABEL_19;
  }

  if (v4[5])
  {
    v7 = v4[6];
  }

  else
  {
    v7 = 0;
  }

  result = (*(*v4 + 40))(v4, 0, a1 + 8, 0, v7);
  v10 = result;
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v15 = std::system_category();
    std::system_error::system_error(exception, v10, v15, "reply.writeTo() failed");
    goto LABEL_17;
  }

  if (v4[5])
  {
    v11 = v4[6];
  }

  else
  {
    v11 = 0;
  }

  if (v9 != v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "failed to write entire reply");
    goto LABEL_19;
  }

  return result;
}

id HSUtil::Decoder::decodeNSDictionary(HSUtil::Decoder *this)
{
  if (*this <= 4)
  {
    v6 = *(this + 9);
    v3 = HSUtil::Decoder::_readNSDictionary(this, &v6);
    v4 = v3;
    if (*this)
    {
      v1 = 0;
    }

    else
    {
      *(this + 9) = v6;
      v1 = v3;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t __copy_helper_block_ea8_48c33_ZTSNSt3__110shared_ptrI6ClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c33_ZTSNSt3__110shared_ptrI6ClientEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_91B48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  HSUtil::Decoder::~Decoder(&a9);
  HSUtil::DecoderBuf::~DecoderBuf(&a19);
  HSUtil::EncoderBuf::~EncoderBuf(&a39);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectoryClient services];
    }

    v42 = *(v39 + 24);
    if ((v42 & 0x80000000) == 0)
    {
      close(v42);
      *(v39 + 24) = -1;
    }

    __cxa_end_catch();
    JUMPOUT(0x91994);
  }

  _Unwind_Resume(a1);
}

void Client::~Client(Client *this)
{
  HSUtil::Buffer::~Buffer((this + 32));

  HSUtil::FileDescriptor::~FileDescriptor(this);
}

void std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::destroy(uint64_t a1, id *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::destroy(a1, a2[1]);
    objc_destroyWeak(a2 + 5);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},objc_object  {objcproto22HSServiceDirectoryable}*>>(uint64_t a1, id *a2)
{
  result = *std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::__find_equal<NSString * {__strong}>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::__construct_node<std::pair<NSString * const {__strong},objc_object  {objcproto22HSServiceDirectoryable}*>>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::__find_equal<NSString * {__strong}>(uint64_t a1, void *a2, id *a3)
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
        if ([*a3 compare:v4[4]] != -1)
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

      if ([v7[4] compare:*a3] != -1)
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

uint64_t std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::find<NSString * {__strong}>(uint64_t a1, id *a2)
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
    v6 = [*(v3 + 32) compare:*a2];
    if (v6 != -1)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 == -1));
  }

  while (v3);
  if (v5 == v2 || [*a2 compare:*(v5 + 32)] == -1)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__shared_ptr_emplace<Client>::__shared_ptr_emplace[abi:ne200100]<Client,std::allocator<Client>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10A7A8;
  *(a1 + 24) = &off_1093A0;
  *(a1 + 32) = &off_1093D0;
  *(a1 + 40) = -1;
  *(a1 + 40) = *(a2 + 16);
  *(a2 + 16) = -1;
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 48) = v3;
  HSUtil::Buffer::Buffer(a1 + 56, a2 + 32);
  return a1;
}

void sub_92448(_Unwind_Exception *a1)
{
  HSUtil::FileDescriptor::~FileDescriptor(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Client>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10A7A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<Client>::__on_zero_shared_impl[abi:ne200100]<std::allocator<Client>,0>(id *a1)
{
  HSUtil::Buffer::~Buffer((a1 + 7));

  HSUtil::FileDescriptor::~FileDescriptor((a1 + 3));
}

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::__emplace_unique_key_args<int,std::pair<int const,std::shared_ptr<Client>>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::__erase_unique<int>(uint64_t a1, int *a2)
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
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::shared_ptr<HSMapper>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

void OUTLINED_FUNCTION_4_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __cxx_global_var_init_60()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_56(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_56(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_52(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_93CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HSMachPortListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_94074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  HSUtil::SendRight::~SendRight(va);

  HSUtil::SendRight::~SendRight(va1);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::ReceiveRight::ReceiveRight(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = &off_10A820;
  name = 0;
  if (mach_port_allocate(mach_task_self_, 1u, &name))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSPortRight.h", v4);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::ReceiveRight::ReceiveRight();
    }
  }

  else
  {
    *(a1 + 8) = name;
  }

  return a1;
}

uint64_t HSUtil::ReceiveRight::reset(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 - 1 <= 0xFFFFFFFD)
  {
    v2 = this;
    this = mach_port_mod_refs(mach_task_self_, v1, 1u, -1);
    if (this)
    {
      HSUtil::ReceiveRight::reset();
    }

    *(v2 + 8) = 0;
  }

  return this;
}

uint64_t std::__shared_ptr_emplace<HSUtil::ReceiveRight>::__shared_ptr_emplace[abi:ne200100]<HSUtil::ReceiveRight,std::allocator<HSUtil::ReceiveRight>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10A850;
  *(a1 + 32) = 0;
  *(a1 + 24) = &off_10A820;
  HSUtil::ReceiveRight::reset(a1 + 24);
  *(a1 + 32) = *(a2 + 8);
  *(a2 + 8) = 0;
  return a1;
}

void std::__shared_ptr_emplace<HSUtil::ReceiveRight>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10A850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void HSUtil::ReceiveRight::ReceiveRight()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void __cxx_global_var_init_61()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_57(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_57(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_52(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_52(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_52(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_52(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_53(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_953D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HSSocketListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_955BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::FileDescriptor::~FileDescriptor(va);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_62()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_53(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_53(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_53(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_53(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_54(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void HSUtil::CreateServerSocket(HSUtil *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (!this)
  {
    HSUtil::CreateServerSocket();
  }

  if (!a2)
  {
    HSUtil::CreateServerSocket();
  }

  *&v12.sa_len = 512;
  *&v12.sa_data[6] = 0;
  *v12.sa_data = __rev16(a2);
  if (inet_pton(2, this, &v12.sa_data[2]) != 1)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v11);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::CreateServerSocket();
    }

    goto LABEL_12;
  }

  v4 = socket(2, 1, 6);
  if (v4 < 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v11);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::CreateServerSocket();
    }

LABEL_12:
    *a3 = &off_1093A0;
    *(a3 + 8) = &off_1093D0;
    *(a3 + 16) = -1;
    return;
  }

  v9[0] = &off_1093A0;
  v9[1] = &off_1093D0;
  v10 = v4;
  v8 = 1;
  v5 = HSUtil::FileDescriptor::fd(v9);
  if (setsockopt(v5, 0xFFFF, 512, &v8, 4u))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v11);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::CreateServerSocket();
    }
  }

  else
  {
    v6 = HSUtil::FileDescriptor::fd(v9);
    if (bind(v6, &v12, 0x10u))
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v11);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSUtil::CreateServerSocket();
      }
    }

    else
    {
      v7 = HSUtil::FileDescriptor::fd(v9);
      if (!listen(v7, 20))
      {
        *a3 = &off_1093A0;
        *(a3 + 8) = &off_1093D0;
        *(a3 + 16) = v10;
        v10 = -1;
        goto LABEL_20;
      }

      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v11);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSUtil::CreateServerSocket();
      }
    }
  }

  *a3 = &off_1093A0;
  *(a3 + 8) = &off_1093D0;
  *(a3 + 16) = -1;
LABEL_20:
  HSUtil::FileDescriptor::~FileDescriptor(v9);
}

void sub_95D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HSUtil::FileDescriptor::~FileDescriptor(va);
  _Unwind_Resume(a1);
}

void HSUtil::CreateClientSocket(HSUtil *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (!this)
  {
    HSUtil::CreateClientSocket();
  }

  if (!a2)
  {
    HSUtil::CreateClientSocket();
  }

  *&v11.sa_len = 512;
  *&v11.sa_data[6] = 0;
  *v11.sa_data = __rev16(a2);
  if (inet_pton(2, this, &v11.sa_data[2]) != 1)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v10);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::CreateClientSocket();
    }

    goto LABEL_19;
  }

  v4 = socket(2, 1, 6);
  if (v4 < 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v10);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::CreateClientSocket();
    }

LABEL_19:
    *a3 = &off_1093A0;
    *(a3 + 8) = &off_1093D0;
    *(a3 + 16) = -1;
    return;
  }

  v8[0] = &off_1093A0;
  v8[1] = &off_1093D0;
  v9 = v4;
  while (1)
  {
    v5 = HSUtil::FileDescriptor::fd(v8);
    printf("connect(%d)\n", v5);
    v6 = HSUtil::FileDescriptor::fd(v8);
    v7 = connect(v6, &v11, 0x10u);
    if (v7 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_13;
    }
  }

  if (!v7)
  {
    *a3 = &off_1093A0;
    *(a3 + 8) = &off_1093D0;
    *(a3 + 16) = v9;
    v9 = -1;
    goto LABEL_16;
  }

LABEL_13:
  basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v10);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    HSUtil::CreateClientSocket();
  }

  *a3 = &off_1093A0;
  *(a3 + 8) = &off_1093D0;
  *(a3 + 16) = -1;
LABEL_16:
  HSUtil::FileDescriptor::~FileDescriptor(v8);
}

void sub_96078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HSUtil::FileDescriptor::~FileDescriptor(va);
  _Unwind_Resume(a1);
}

BOOL HSUtil::ConfigureSocket(HSUtil::FileDescriptor *a1, unsigned __int8 *a2)
{
  LODWORD(v24) = *a2 ^ 1;
  v4 = HSUtil::FileDescriptor::fd(a1);
  if (setsockopt(v4, 0xFFFF, 4130, &v24, 4u))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v26);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::ConfigureSocket();
    }

    return 0;
  }

  v7 = HSUtil::FileDescriptor::fd(a1);
  v8 = fcntl(v7, 3, 0, v24);
  if (v8 == -1)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v26);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::ConfigureSocket();
    }

    return 0;
  }

  if (a2[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = 4;
  }

  v10 = v9 | v8 & 0xFFFFFFFB;
  v11 = HSUtil::FileDescriptor::fd(a1);
  if (fcntl(v11, 4, v10))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v26);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::ConfigureSocket();
    }

    return 0;
  }

  v12 = *(a2 + 1);
  v13 = 1;
  v14 = v12 / 0xF4240uLL;
  if (v12)
  {
    v13 = v12 % 0xF4240uLL;
  }

  else
  {
    v14 = 0;
  }

  v15 = v12 >= 0;
  if (v12 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v24 = v17;
  v25 = v16;
  v18 = HSUtil::FileDescriptor::fd(a1);
  if (setsockopt(v18, 0xFFFF, 4102, &v24, 0x10u))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v26);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::ConfigureSocket();
    }

    return 0;
  }

  v19 = *(a2 + 2);
  if ((v19 & 0x8000000000000000) != 0)
  {
    v21 = 0;
    v20 = 0;
  }

  else if (v19)
  {
    v20 = v19 / 0xF4240;
    v21 = v19 % 0xF4240;
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  v24 = v20;
  v25 = v21;
  v22 = HSUtil::FileDescriptor::fd(a1);
  v23 = setsockopt(v22, 0xFFFF, 4101, &v24, 0x10u);
  v5 = v23 == 0;
  if (v23)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSSocket.mm", v26);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSUtil::ConfigureSocket();
    }
  }

  return v5;
}

void HSUtil::CreateServerSocket()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  __assert_rtn("CreateServerSocket", "HSSocket.mm", 12, "port > 0");
}

{
  __assert_rtn("CreateServerSocket", "HSSocket.mm", 11, "addr");
}

void HSUtil::CreateClientSocket()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  __assert_rtn("CreateClientSocket", "HSSocket.mm", 49, "port > 0");
}

{
  __assert_rtn("CreateClientSocket", "HSSocket.mm", 48, "addr");
}

void HSUtil::ConfigureSocket()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void *HSUtil::CoderKey::keyState(HSUtil::CoderKey *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    HSUtil::CoderKey::keyState();
  }

  return &unk_122598;
}

void HSUtil::CoderKey::KeyState::~KeyState(HSUtil::CoderKey::KeyState *this)
{
  std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::~__hash_table(this + 32);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void HSUtil::CoderKey::keyState()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_1225D0 = 0;
    xmmword_1225B0 = 0u;
    unk_1225C0 = 0u;
    xmmword_1225A0 = 0u;
    dword_1225D8 = 1065353216;
    __cxa_atexit(HSUtil::CoderKey::KeyState::~KeyState, &unk_122598, &dword_0);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void __cxx_global_var_init_63()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

uint64_t HSUtil::MachTimeFromNanoseconds(HSUtil *this)
{
  if (HSUtil::getMachTimebase(void)::once != -1)
  {
    HSUtil::NanosecondsFromMachTime();
  }

  return *algn_1225EC * this / HSUtil::getMachTimebase(void)::timebase;
}

void sub_9709C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void HSAccessProvider::RegisterServer(HSAccessProvider *this, const HSUtil::SendRight *a2, const char *a3)
{
  v5 = xpc_connection_create("com.apple.hid.HIDSensingInternalSupport.HIDSensingAccessProvider", 0);
  connection = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "xpc_connection_create returned null");
  }

  xpc_connection_set_event_handler(v5, &__block_literal_global_92);
  xpc_connection_activate(connection);
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "CommandKey", 4uLL);
  HSUtil::PortRight::port(this);
  xpc_dictionary_set_mach_send();
  xpc_dictionary_set_string(v6, "ServerNameKey", a2);
  v7 = xpc_connection_send_message_with_reply_sync(connection, v6);
  HSAccessProvider::validateSendMessageReply(v7);
}

void sub_97294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v10);

  _Unwind_Resume(a1);
}

void sub_974B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HSTServerStage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_978BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, id a15)
{
  HSUtil::FileDescriptor::~FileDescriptor(&a9);
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = MTLoggingPlugin();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [HSTServerStage setPreferenceValue:v20 forKey:?];
    }

    __cxa_end_catch();
    JUMPOUT(0x977D4);
  }

  HSUtil::FileDescriptor::~FileDescriptor(&a12);

  HSUtil::ObjectLock::~ObjectLock(&a15);
  _Unwind_Resume(a1);
}

void HSAccessProvider::CreateServerSocket(HSAccessProvider *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = this;
  if (!v14)
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"HSUtil::FileDescriptor HSAccessProvider::CreateServerSocket(NSString *__strong, uint16_t)"];
    [v10 handleFailureInFunction:v11 file:@"HSAccessProvider.h" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"address"}];
  }

  v5 = xpc_connection_create("com.apple.hid.HIDSensingInternalSupport.HIDSensingAccessProvider", 0);
  v6 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "xpc_connection_create returned null");
  }

  xpc_connection_set_event_handler(v5, &__block_literal_global_112);
  xpc_connection_activate(v6);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "CommandKey", 1uLL);
  xpc_dictionary_set_string(v7, "AddressKey", [(HSAccessProvider *)v14 UTF8String]);
  xpc_dictionary_set_uint64(v7, "PortKey", v3);
  v8 = xpc_connection_send_message_with_reply_sync(v6, v7);
  HSAccessProvider::validateSendMessageReply(v8);
  v9 = xpc_dictionary_dup_fd(v8, "DescriptorKey");
  if (v9 < 0)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "xpc_dictionary_dup_fd failed");
  }

  *a3 = &off_1093A0;
  *(a3 + 8) = &off_1093D0;
  *(a3 + 16) = v9;
}

HSUtil::Encoder *HSUtil::Encoder::encodeString(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, const char *a3)
{
  if (!*this)
  {
    v4 = this;
    this = HSUtil::Encoder::_encodeKey(this, a2);
    if (!*v4)
    {

      return HSUtil::Encoder::_encodeString(v4, a3);
    }
  }

  return this;
}

uint64_t HSUtil::SendRight::SendRight(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *a1 = &off_109360;
  if (v3 - 1 <= 0xFFFFFFFD && mach_port_insert_right(mach_task_self_, v3, v3, 0x14u))
  {
    HSUtil::SendRight::SendRight();
  }

  return a1;
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __cxx_global_var_init_64()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_59(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_59(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_54(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_54(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_54(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_54(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_55(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_9_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)114,(char)111,(char)106,(char)101,(char)99,(char)116,(char)86,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("projectVersion", a2);
  }
}

void std::vector<HSTPipeline::Contact>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<HSTPipeline::Contact>::__append(a1, a2 - v2);
  }
}

void sub_99CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::DriverNotification>(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  if ([v1 length] >= 3)
  {
    if (*v2 != 64)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTPipeline::SurfaceCoordinates>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTPipeline::SurfaceCoordinates *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = HSTPipeline::SurfaceCoordinates::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTPipeline::SensorSize>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTPipeline::SensorSize *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = HSTPipeline::SensorSize::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTPipeline::SurfaceCoordinates>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTPipeline::SurfaceCoordinates *a3)
{
  if (*result <= 4)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = result;
    v7[0] = *(result + 9);
    result = HSUtil::Decoder::_findKey(result, v7, a2);
    if (!*v6)
    {
      result = HSUtil::Decoder::_readCodable<HSTPipeline::SurfaceCoordinates>(v6, v7, a3);
      if (*v6 == 3)
      {
        *v6 = 13;
      }

      else
      {
        *(v6 + 72) = v7[0];
      }
    }
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTPipeline::SensorSize>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTPipeline::SensorSize *a3)
{
  if (*result <= 4)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = result;
    v7[0] = *(result + 9);
    result = HSUtil::Decoder::_findKey(result, v7, a2);
    if (!*v6)
    {
      result = HSUtil::Decoder::_readCodable<HSTPipeline::SensorSize>(v6, v7, a3);
      if (*v6 == 3)
      {
        *v6 = 13;
      }

      else
      {
        *(v6 + 72) = v7[0];
      }
    }
  }

  return result;
}

void std::vector<HSTPipeline::Contact>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<HSTPipeline::Contact>::__assign_with_size[abi:ne200100]<HSTPipeline::Contact*,HSTPipeline::Contact*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 6)
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

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<HSTPipeline::Contact>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 6)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<HSTPipeline::Contact>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

uint64_t HSUtil::Decoder::_readCodable<HSTPipeline::SurfaceCoordinates>(uint64_t a1, unint64_t *a2, HSTPipeline::SurfaceCoordinates *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v11[1] = *(a1 + 8);
      v11[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((HSTPipeline::SurfaceCoordinates::decode(a3, v11) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::_readCodable<HSTPipeline::SensorSize>(uint64_t a1, unint64_t *a2, HSTPipeline::SensorSize *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v11[1] = *(a1 + 8);
      v11[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((HSTPipeline::SensorSize::decode(a3, v11) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

void __cxx_global_var_init_65()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_60(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_60(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_55(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_55(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_55(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_55(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_56(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_15_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115>::Key = HSUtil::CoderKey::New("surfaceCoordinates", a2);
  }
}

void __cxx_global_var_init_16_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)110,(char)115,(char)111,(char)114,(char)83,(char)105,(char)122,(char)101>::Key = HSUtil::CoderKey::New("sensorSize", a2);
  }
}

void __cxx_global_var_init_17_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)67,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key = HSUtil::CoderKey::New("inRangeContacts", a2);
  }
}

void sub_9CF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HSTPencilVirtualService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __cxx_global_var_init_66()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_61(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_61(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_56(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_56(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_56(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_56(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_57(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_15_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)110,(char)100,(char)111,(char)114,(char)73,(char)68>::Key = HSUtil::CoderKey::New("vendorID", a2);
  }
}

void __cxx_global_var_init_16_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)114,(char)111,(char)100,(char)117,(char)99,(char)116,(char)73,(char)68>::Key = HSUtil::CoderKey::New("productID", a2);
  }
}

void __cxx_global_var_init_17_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)111,(char)119,(char)110,(char)101,(char)114,(char)82,(char)101,(char)103,(char)105,(char)115,(char)116,(char)114,(char)121,(char)73,(char)68>::Key = HSUtil::CoderKey::New("ownerRegistryID", a2);
  }
}

void __cxx_global_var_init_18_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)70,(char)111,(char)114,(char)99,(char)101>::Key = HSUtil::CoderKey::New("minForce", a2);
  }
}

void __cxx_global_var_init_19_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)97,(char)99,(char)99,(char)117,(char)114,(char)97,(char)116,(char)101,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key = HSUtil::CoderKey::New("accurateMaxForce", a2);
  }
}

void __cxx_global_var_init_20_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)120,(char)116,(char)101,(char)110,(char)100,(char)101,(char)100,(char)77,(char)97,(char)120,(char)70,(char)111,(char)114,(char)99,(char)101>::Key = HSUtil::CoderKey::New("extendedMaxForce", a2);
  }
}

void __cxx_global_var_init_21_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)72,(char)111,(char)118,(char)101,(char)114,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key = HSUtil::CoderKey::New("maxHoverHeight", a2);
  }
}

void __cxx_global_var_init_22_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)111,(char)118,(char)101,(char)114,(char)68,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("hoverDisabled", a2);
  }
}

void __cxx_global_var_init_23_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)105,(char)100,(char)116,(char)104,(char)77,(char)109>::Key = HSUtil::CoderKey::New("widthMm", a2);
  }
}