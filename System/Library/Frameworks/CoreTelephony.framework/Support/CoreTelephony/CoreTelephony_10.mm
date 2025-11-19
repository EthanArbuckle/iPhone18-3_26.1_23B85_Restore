void sub_237474ABC(_Unwind_Exception *a1, uint64_t a2, std::locale a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x2383CBE70](va);
  _Unwind_Resume(a1);
}

uint64_t CallInfo::getCCDisconnectErrorCode(CallInfo *this)
{
  if (*(this + 360) == 1)
  {
    return *(this + 89);
  }

  else
  {
    return 0;
  }
}

uint64_t CallInfo::getLegacyFlags(CallInfo *this)
{
  v1 = *(this + 5) & 0xFFFCFFFF | (*(this + 15) << 16);
  if (*(this + 12) == 9)
  {
    v1 |= 0x20000000u;
  }

  v2 = *(this + 52);
  if (v2 == 2)
  {
    v1 |= 0x40000u;
  }

  if (v2 == 4)
  {
    v1 |= 0x80000u;
  }

  if (v2 == 8)
  {
    return v1 | 0x100000;
  }

  else
  {
    return v1;
  }
}

uint64_t CallInfo::getStartTime(CallInfo *this)
{
  v2 = time(0);
  v3 = *(this + 5);
  if (v3 == 9)
  {
    v5 = 0;
  }

  else
  {
    if (v3 == 6)
    {
      v4 = *(this + 56);
    }

    else
    {
      v4 = CSISystemTimeSecs();
    }

    v5 = (v4 - *(this + 55));
  }

  return v2 - v5;
}

uint64_t CallInfo::getDuration(CallInfo *this)
{
  v1 = *(this + 5);
  if (v1 == 9)
  {
    return 0;
  }

  if (v1 == 6)
  {
    v3 = *(this + 56);
  }

  else
  {
    v3 = CSISystemTimeSecs();
  }

  return (v3 - *(this + 55));
}

time_t CallInfo::getSessionStartTime(CallInfo *this)
{
  v2 = time(0);
  v3 = *(this + 56);
  if (!v3)
  {
    v3 = CSISystemTimeSecs();
  }

  return v2 - (v3 - *(this + 57));
}

uint64_t CallInfo::getSessionDuration(CallInfo *this)
{
  v2 = *(this + 56);
  if (!v2)
  {
    v2 = CSISystemTimeSecs();
  }

  return (v2 - *(this + 57));
}

void CallOperationContext::CallOperationContext(CallOperationContext *this)
{
  CallInfo::CallInfo(this);
  v1[55] = 0;
  v1[56] = 0;
  v1[57] = 0;
}

{
  CallInfo::CallInfo(this);
  v1[55] = 0;
  v1[56] = 0;
  v1[57] = 0;
}

void CallOperationContext::CallOperationContext(CallOperationContext *this, const CallInfo *a2)
{
  CallInfo::CallInfo(this, a2);
  v2[55] = 0;
  v2[56] = 0;
  v2[57] = 0;
}

{
  CallInfo::CallInfo(this, a2);
  v2[55] = 0;
  v2[56] = 0;
  v2[57] = 0;
}

uint64_t CallOperationContext::CallOperationContext(uint64_t a1, __int128 *a2)
{
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  CallInfo::CallInfo(a1);
  v5 = (v4 + 440);
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

  return a1;
}

CallInfo *CallOperationContext::CallOperationContext(CallInfo *a1, const CallInfo *a2, __int128 *a3)
{
  CallInfo::CallInfo(a1, a2);
  v6 = (v5 + 440);
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

  return a1;
}

void CallInfo::CallInfo(CallInfo *this)
{
  *this = 0;
  *(this + 8) = xmmword_2374B95A0;
  std::string::basic_string[abi:ne200100]<0>(this + 24, "NotSet");
  *(this + 12) = 1;
  *(this + 52) = 1;
  *(this + 7) = 0x200000004;
  *(this + 16) = 0;
  *(this + 68) = 0;
  *(this + 18) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 80, "");
  *(this + 68) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  std::string::basic_string[abi:ne200100]<0>(this + 144, "");
  *(this + 168) = 0;
  *(this + 43) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 208) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 241) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 1;
  *(this + 328) = 0;
  *(this + 332) = 0;
  *(this + 176) = 0;
  *(this + 356) = 0;
  *(this + 360) = 0;
  *(this + 368) = 0;
  *(this + 416) = 0;
  *(this + 424) = 0;
  *(this + 436) = 0;
  *(this + 339) = 0;
  *(this + 84) = 0;
  *(this + 86) = 0;
  *(this + 347) = 0;
}

void sub_237474FFC(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(v1);
  _Unwind_Resume(a1);
}

void CallInfo::CallInfo(CallInfo *this, const CallInfo *a2)
{
  *(ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::SharedRef(this, a2) + 1) = *(a2 + 8);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v4 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v4;
  }

  v5 = *(a2 + 3);
  *(this + 60) = *(a2 + 60);
  *(this + 3) = v5;
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v6 = *(a2 + 5);
    *(this + 12) = *(a2 + 12);
    *(this + 5) = v6;
  }

  *(this + 13) = *(a2 + 13);
  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v7 = *(a2 + 7);
    *(this + 16) = *(a2 + 16);
    *(this + 7) = v7;
  }

  *(this + 68) = *(a2 + 68);
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v8 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v8;
  }

  v9 = *(a2 + 21);
  v10 = *(a2 + 176);
  *(this + 184) = 0;
  *(this + 176) = v10;
  *(this + 21) = v9;
  *(this + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    *(this + 23) = 0;
    *(this + 24) = 0;
    *(this + 25) = 0;
    v12 = *(a2 + 23);
    v11 = *(a2 + 24);
    v13 = v11 - v12;
    if (v11 != v12)
    {
      if (!((v13 >> 2) >> 62))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<RegisteredNetworkInfoChange>>(v13 >> 2);
      }

      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    *(this + 208) = 1;
  }

  *(this + 216) = *(a2 + 216);
  if (*(a2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), *(a2 + 29), *(a2 + 30));
  }

  else
  {
    v14 = *(a2 + 232);
    *(this + 31) = *(a2 + 31);
    *(this + 232) = v14;
  }

  *(this + 32) = *(a2 + 32);
  if (*(a2 + 287) < 0)
  {
    std::string::__init_copy_ctor_external(this + 11, *(a2 + 33), *(a2 + 34));
  }

  else
  {
    v15 = *(a2 + 264);
    *(this + 35) = *(a2 + 35);
    *(this + 264) = v15;
  }

  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v16 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v16;
  }

  v17 = *(a2 + 312);
  v18 = *(a2 + 328);
  v19 = *(a2 + 360);
  *(this + 344) = *(a2 + 344);
  *(this + 360) = v19;
  *(this + 312) = v17;
  *(this + 328) = v18;
  v20 = *(a2 + 376);
  v21 = *(a2 + 392);
  v22 = *(a2 + 408);
  *(this + 421) = *(a2 + 421);
  *(this + 392) = v21;
  *(this + 408) = v22;
  *(this + 376) = v20;
}

void sub_237475294(_Unwind_Exception *a1)
{
  if (*(v1 + 287) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  if (*(v1 + 208) == 1)
  {
    v5 = *v3;
    if (*v3)
    {
      *(v1 + 192) = v5;
      operator delete(v5);
    }
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(v1);
  _Unwind_Resume(a1);
}

void CallInfo::~CallInfo(void **this)
{
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 208) == 1)
  {
    v2 = this[23];
    if (v2)
    {
      this[24] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(this);
}

uint64_t *PersonalitySpecificImpl::PersonalitySpecificImpl(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 56)) = a2[1];
  v4 = a3[1];
  result[1] = *a3;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *PersonalitySpecificImpl::PersonalitySpecificImpl(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_284A70EC0;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void PersonalitySpecificImpl::~PersonalitySpecificImpl(PersonalitySpecificImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 56)) = a2[1];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void PersonalitySpecificImpl::~PersonalitySpecificImpl(PersonalitySpecificImpl *this)
{
}

{

  JUMPOUT(0x2383CBEF0);
}

void virtual thunk toPersonalitySpecificImpl::~PersonalitySpecificImpl(PersonalitySpecificImpl *this)
{
}

{

  JUMPOUT(0x2383CBEF0);
}

void PersonalitySpecificImpl::personalityId(PersonalitySpecificImpl *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 1);
  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 24), *(v2 + 32));
  }

  else
  {
    v3 = *(v2 + 24);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 40);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void virtual thunk toPersonalitySpecificImpl::personalityId(PersonalitySpecificImpl *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + *(*this - 48) + 8);
  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 24), *(v2 + 32));
  }

  else
  {
    v3 = *(v2 + 24);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 40);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void *virtual thunk toPersonalitySpecificImpl::personalityInfo@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this + *(*this - 32);
  v4 = *(v2 + 1);
  v3 = *(v2 + 2);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

BOOL decodeBCDExtendedAddress(uint64_t a1, std::string *this)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 23) < 0;
  v4 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = v3 ? *a1 : a1;
      v10 = *(v9 + v8);
      if (v10 <= 9)
      {
        break;
      }

      v12 = v10 - 10;
      if (v12 <= 2)
      {
        v11 = 0x2C232Au >> (8 * (v12 & 0x1F));
        goto LABEL_13;
      }

LABEL_14:
      ++v8;
      v3 = (v2 & 0x80u) != 0;
      if ((v2 & 0x80u) == 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = v4;
      }

      if (v8 >= v13)
      {
        return v5 != 0;
      }
    }

    LOBYTE(v11) = v10 + 48;
LABEL_13:
    std::string::push_back(this, v11);
    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    goto LABEL_14;
  }

  return v5 != 0;
}

void encodeBCDExtendedAddress(char *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[23];
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9)
  {
    while (std::string::find("0123456789*#,", *v8, 0) != -1)
    {
      ++v8;
      if (!--v9)
      {
        v4 = a1[23];
        v6 = *a1;
        v7 = *(a1 + 1);
        v5 = a1[23];
        goto LABEL_11;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
LABEL_11:
    if (v5 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = v6;
    }

    if (v5 >= 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = v7;
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (v11)
    {
      v12 = *v10;
      if ((v12 & 0x8000000000000000) == 0)
      {
        *(MEMORY[0x277D85DE0] + 4 * v12 + 60);
      }

      operator new();
    }
  }
}

void sub_237475A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void decodePackedBCDExtendedAddress(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (a1)
  {
    v4 = a2;
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    if (a2)
    {
      v5 = a1;
      do
      {
        v7 = *v5++;
        v6 = v7;
        v8 = v7 & 0xF;
        if (v8 <= 0xC)
        {
          v9 = v8 | 0x30;
          v10 = v8 >= 0xA;
          v11 = 0x2C232Au >> (8 * (v8 - 10));
          if (!v10)
          {
            LOBYTE(v11) = v9;
          }

          std::string::push_back(a3, v11);
        }

        if (v6 <= 0xCF)
        {
          v12 = v6 >> 4;
          if (v6 > 0x9F)
          {
            v13 = v12 - 10;
            if (v13 > 2)
            {
              LOBYTE(v12) = 0;
            }

            else
            {
              v12 = 0x2C232Au >> (8 * (v13 & 0x1F));
            }
          }

          else
          {
            LOBYTE(v12) = v12 | 0x30;
          }

          std::string::push_back(a3, v12);
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_237475BAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void encodePackedBCDExtendedAddress(std::string::value_type *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[23];
  v5 = *(a1 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = a1[23];
  }

  else
  {
    v7 = *(a1 + 1);
  }

  if (v7)
  {
    while (std::string::find("0123456789*#,", *v6, 0) != -1)
    {
      ++v6;
      if (!--v7)
      {
        v4 = a1[23];
        v5 = *(a1 + 1);
        goto LABEL_11;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
LABEL_11:
    v8 = (v4 & 0x80u) != 0;
    if ((v4 & 0x80u) == 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = MEMORY[0x277D85DE0];
      do
      {
        if (v8)
        {
          v13 = *a1;
        }

        else
        {
          v13 = a1;
        }

        v14 = v13[v11];
        if ((v14 & 0x8000000000000000) == 0 && (*(v12 + 4 * v14 + 60) & 0x400) != 0)
        {
          v17 = v14 - 48;
        }

        else
        {
          if (v13[v11] == 35)
          {
            v15 = 11;
          }

          else
          {
            v15 = -1;
          }

          if (v13[v11] == 42)
          {
            v16 = 10;
          }

          else
          {
            v16 = v15;
          }

          if (v14 == 44)
          {
            v17 = 12;
          }

          else
          {
            v17 = v16;
          }
        }

        v18 = v11 + 1;
        if (v8)
        {
          v4 = v5;
        }

        if (v18 >= v4)
        {
          v22 = v17 | 0xF0;
          ++v11;
        }

        else
        {
          v19 = v13[v18];
          if ((v19 & 0x8000000000000000) == 0 && (*(v12 + 4 * v19 + 60) & 0x400) != 0)
          {
            v21 = 16 * v19;
          }

          else if (v19 == 44)
          {
            v21 = -64;
          }

          else
          {
            v20 = v13[v18];
            if (v20 == 42)
            {
              v21 = -96;
            }

            else if (v20 == 35)
            {
              v21 = -80;
            }

            else
            {
              v21 = -16;
            }
          }

          v22 = v21 | v17;
          v11 += 2;
        }

        v23 = a2[2];
        if (v10 >= v23)
        {
          v24 = v10;
          v25 = (v10 + 1);
          if ((v10 + 1) < 0)
          {
            *a2 = 0;
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v23 > v25)
          {
            v25 = 2 * v23;
          }

          if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            operator new();
          }

          *v10++ = v22;
          memcpy(0, 0, v24);
          a2[1] = v24 + 1;
          a2[2] = 0;
        }

        else
        {
          *v10++ = v22;
        }

        a2[1] = v10;
        v4 = a1[23];
        v8 = a1[23] < 0;
        v5 = *(a1 + 1);
        if (a1[23] >= 0)
        {
          v27 = a1[23];
        }

        else
        {
          v27 = *(a1 + 1);
        }
      }

      while (v11 < v27);
    }

    *a2 = 0;
  }
}

void sub_237475E3C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void decodeString(char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    if (!*(a1 + 1))
    {
      return;
    }

    v3 = *a1;
  }

  else
  {
    v3 = a1;
    if (!a1[23])
    {
      return;
    }
  }

  v4 = *v3;
  if (v4 != -1)
  {
    if (v4 >= 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    decodeString(a1, v5, a2);
  }
}

void decodeString(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v22[0] = 0;
  v22[1] = 0;
  ctu::TextConverter::TextConverter(v22);
  v6 = a1[23];
  if (v6 >= 0)
  {
    v7 = a1[23];
  }

  else
  {
    v7 = *(a1 + 1);
  }

  if (a2 == 1)
  {
    v13 = *a1;
    if (v6 >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    ctu::TextConverter::setSource(v22, v14);
    ctu::TextConverter::pushConversion();
    goto LABEL_25;
  }

  if (a2 == 2)
  {
    v12 = *a1;
    if (v6 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    goto LABEL_20;
  }

  if (a2 == 3 && v7)
  {
    v8 = *a1;
    if (v6 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = *v9;
    if (v10 != 130)
    {
      if (v10 != 129)
      {
        if (v10 == 128)
        {
          v11 = &v9[!((v7 - 1) & 1)];
        }

        else
        {
          v11 = v9;
        }

LABEL_20:
        ctu::TextConverter::setSource(v22, v11);
LABEL_25:
        ctu::TextConverter::pushConversion();
        ctu::TextConverter::pushConversion();
        goto LABEL_26;
      }

      v15 = v7 - 3;
      if (v7 >= 4)
      {
        if (v6 < 0)
        {
          if (v15 >= *(v8 + 1))
          {
            goto LABEL_38;
          }
        }

        else if (v15 >= BYTE1(v8))
        {
          v8 = a1;
LABEL_38:
          v17 = v8[2];
          ctu::TextConverter::setSource(v22, v8 + 3);
          goto LABEL_25;
        }
      }

      goto LABEL_40;
    }

    v16 = v7 - 4;
    if (v7 > 4)
    {
      if (v6 < 0)
      {
        if (v16 >= *(v8 + 1))
        {
          goto LABEL_41;
        }
      }

      else if (v16 >= BYTE1(v8))
      {
        v8 = a1;
LABEL_41:
        v18 = *(v8 + 2);
        v19 = v8[3];
        ctu::TextConverter::setSource(v22, v8 + 4);
        goto LABEL_25;
      }
    }

LABEL_40:
    ctu::TextConverter::setSource(v22, 0);
  }

LABEL_26:
  ctu::TextConverter::readChars(v22);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v20;
  *(a3 + 16) = v21;
  ctu::TextConverter::~TextConverter(v22);
}

void sub_2374760FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::TextConverter::~TextConverter(va);
  _Unwind_Resume(a1);
}

void swapAndDecodeString(uint64_t *a1, int a2, uint64_t a3)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a1, a1[1], a1[1] - *a1);
  v5 = v10;
  if (__p != v10)
  {
    v6 = __p + 1;
    do
    {
      if (v6 == v5)
      {
        break;
      }

      v7 = *(v6 - 1);
      *(v6 - 1) = *v6;
      *v6 = v7;
      v8 = v6 + 1;
      v6 += 2;
    }

    while (v8 != v5);
  }

  decodeString(&__p, a2, a3);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2374761B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void decodeString(char **a1, int a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(__p, *a1, a1[1], a1[1] - *a1);
  decodeString(__p, a2, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_237476234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void decodeBuffer(_BYTE *__src@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, &__src[a2], a2);
  decodeString(__p, a3, a4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2374762B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void encodeBuffer(const char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v6[0] = 0;
  v6[1] = 0;
  ctu::TextConverter::TextConverter(v6);
  ctu::TextConverter::setSource(v6, a1);
  if (a2 > 1)
  {
    if (a2 != 2 && a2 != 3)
    {
      goto LABEL_11;
    }

    ctu::TextConverter::pushConversion();
    goto LABEL_10;
  }

  if (!a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_14;
  }

  if (a2 == 1)
  {
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::pushConversion();
LABEL_10:
    ctu::TextConverter::pushConversion();
  }

LABEL_11:
  ctu::TextConverter::readChars(v6);
  if (ctu::TextConverter::exceptionOccurred(v6))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
  }

LABEL_14:
  ctu::TextConverter::~TextConverter(v6);
}

void sub_237476490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  ctu::TextConverter::~TextConverter(&a16);
  _Unwind_Resume(a1);
}

void encodeString(const char *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = *(a1 + 1);
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  encodeBuffer(a1, a2, &__p);
  v5 = __p;
  v6 = v10;
  v7 = v10 - __p;
  if ((v10 - __p) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 > 0x16)
  {
    operator new();
  }

  a3[23] = v7;
  while (v5 != v6)
  {
    v8 = *v5++;
    *a3++ = v8;
  }

  *a3 = 0;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2374765C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::sDecodeDataCodingScheme(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 4;
  if (a2)
  {
    LOBYTE(__p[0]) = 0;
    if (ctu::TextConverter::decodeCbsDataCodingScheme())
    {
      goto LABEL_3;
    }

LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  v11 = 0;
  v10 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v3 = ctu::TextConverter::decodeSmsDataCodingScheme();
  ctu::OsLogContext::OsLogContext(buf, "com.apple.CommCenter", "stk.util");
  v4 = *&v15[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = __p;
    if (v9 < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    *v15 = v5;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else if (!v3)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v12 <= 2)
  {
    v2 = v12 + 1;
  }

  else
  {
    v2 = 0;
  }

LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_23747674C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_237476800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CodingUtility::SHA1@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result)
  {
    memset(md, 0, sizeof(md));
    std::vector<unsigned char>::vector[abi:ne200100](md);
  }

  a2[23] = 0;
  *a2 = 0;
  return result;
}

void sub_2374768BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **CodingUtility::generateUUID@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v7 = v4;
  if (v4)
  {
    v6 = CFUUIDCreateString(v3, v4);
    v8 = 0uLL;
    v9 = 0;
    ctu::cf::assign();
    *a1 = 0uLL;
    *(a1 + 16) = v9;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v6);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&v7);
}

void sub_23747696C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a10);
  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&a11);
  _Unwind_Resume(a1);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void std::vector<unsigned char>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_237476ABC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PBCapabilities::PrimaryNumber::PrimaryNumber(uint64_t this)
{
  *this = 6;
  *(this + 8) = 0;
  return this;
}

{
  *this = 6;
  *(this + 8) = 0;
  return this;
}

_WORD *PBCapabilities::Groups::Groups(_WORD *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

uint64_t PBCapabilities::AdditionaNumber::AdditionaNumber(uint64_t this)
{
  *this = 0;
  *(this + 2) = 0;
  return this;
}

{
  *this = 0;
  *(this + 2) = 0;
  return this;
}

_WORD *PBCapabilities::Email::Email(_WORD *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

_BYTE *PBCapabilities::SecondName::SecondName(_BYTE *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

_BYTE *PBCapabilities::HiddenRecords::HiddenRecords(_BYTE *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void cellplan::write_rest_value(cellplan *this@<X0>, xpc_object_t *a2@<X8>)
{
  v30 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v30 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v30 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v30 = v7;
LABEL_9:
  xpc_release(v6);
  if (*(this + 23) >= 0)
  {
    v8 = this;
  }

  else
  {
    v8 = *this;
  }

  v28 = xpc_string_create(v8);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v26 = &v30;
  v27 = "device_id";
  xpc::dict::object_proxy::operator=(&v26, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  if (*(this + 32) == 1)
  {
    if (*(this + 63) >= 0)
    {
      v10 = this + 40;
    }

    else
    {
      v10 = *(this + 5);
    }

    v24 = xpc_string_create(v10);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    v26 = &v30;
    v27 = "iccid";
    xpc::dict::object_proxy::operator=(&v26, &v24, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v24);
    v24 = 0;
  }

  if (*(this + 64) == 1)
  {
    if (*(this + 95) >= 0)
    {
      v11 = this + 72;
    }

    else
    {
      v11 = *(this + 9);
    }

    v22 = xpc_string_create(v11);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    v26 = &v30;
    v27 = "carrierName";
    xpc::dict::object_proxy::operator=(&v26, &v22, &v23);
    xpc_release(v23);
    v23 = 0;
    xpc_release(v22);
    v22 = 0;
  }

  v12 = *(this + 6);
  if ((v12 - 1) > 3)
  {
    v13 = "Unknown";
  }

  else
  {
    v13 = off_278A32218[v12 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v20, v12, v13, v9);
  v26 = &v30;
  v27 = "status";
  xpc::dict::object_proxy::operator=(&v26, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v15 = *(this + 24);
  if ((v15 - 1) > 2)
  {
    v16 = "kUnknown";
  }

  else
  {
    v16 = off_278A32200[v15 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v18, v15, v16, v14);
  v26 = &v30;
  v27 = "subscription_slot_id";
  xpc::dict::object_proxy::operator=(&v26, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v17 = v30;
  *a2 = v30;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v30);
}

{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v24 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v24 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v24 = v7;
LABEL_9:
  xpc_release(v6);
  if (*this == 1)
  {
    *&v25[1] = *(this + 1);
    v25[0] = 1;
    v22 = xpc_data_create(&v25[1], 0x10uLL);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    v20 = &v24;
    v21 = "csn";
    xpc::dict::object_proxy::operator=(&v20, &v22, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v22);
    v22 = 0;
  }

  boost::optional<std::string>::optional(v25, this + 24);
  if (v25[0] == 1)
  {
    if (v26 < 0)
    {
      operator delete(*&v25[8]);
    }

    boost::optional<std::string>::optional(v25, this + 24);
    if (v25[0] != 1 || (v26 >= 0 ? (v9 = &v25[8]) : (v9 = *&v25[8]), (v18 = xpc_string_create(v9)) == 0))
    {
      v18 = xpc_null_create();
    }

    v20 = &v24;
    v21 = "iccid";
    xpc::dict::object_proxy::operator=(&v20, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
    if (v25[0] == 1 && v26 < 0)
    {
      operator delete(*&v25[8]);
    }
  }

  v10 = *(this + 14);
  if ((v10 - 1) > 3)
  {
    v11 = "Unknown";
  }

  else
  {
    v11 = off_278A32218[v10 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v16, v10, v11, v8);
  *v25 = &v24;
  *&v25[8] = "status";
  xpc::dict::object_proxy::operator=(v25, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_BOOL_create(*(this + 60));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  *v25 = &v24;
  *&v25[8] = "non_esim";
  xpc::dict::object_proxy::operator=(v25, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = v24;
  *a2 = v24;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v24);
  v13 = *MEMORY[0x277D85DE8];
}

{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v17 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v17 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v17 = v7;
LABEL_9:
  xpc_release(v6);
  object = xpc_BOOL_create(*this);
  if (!object)
  {
    object = xpc_null_create();
  }

  v13 = &v17;
  v14 = "quick_switched";
  xpc::dict::object_proxy::operator=(&v13, &object, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(object);
  object = 0;
  cellplan::write_rest_value(this + 8, &v11);
  v13 = &v17;
  v14 = "device_id";
  xpc::dict::object_proxy::operator=(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  write_rest_value(this + 144, &v9);
  v13 = &v17;
  v14 = "vinyl_info";
  xpc::dict::object_proxy::operator=(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v17;
  *a2 = v17;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

void cellplan::read_rest_value(void **this, void **a2, const object *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v26[0] = 0;
  v29 = 0;
  v20 = 0;
  v21 = 0;
  p_xdict = 0;
  v22 = 0;
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = 0;
  this[1] = 0;
  this[2] = 0;
  HIBYTE(v21) = 0;
  LOBYTE(p_xdict) = 0;
  *(this + 6) = 0;
  boost::optional_detail::optional_base<std::string>::assign((this + 4), v23);
  boost::optional_detail::optional_base<std::string>::assign((this + 8), v26);
  *(this + 24) = v29;
  if (v26[0] == 1 && v28 < 0)
  {
    operator delete(__p);
  }

  if (v23[0] == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(p_xdict);
  }

  v5 = *a2;
  xdict = v5;
  v6 = MEMORY[0x277D86468];
  if (v5 && MEMORY[0x2383CC760](v5) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    xdict = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v6)
  {
    v14[0] = &xdict;
    v14[1] = "device_id";
    xpc::dict::object_proxy::operator xpc::object(v14, &object);
    p_xdict = 0;
    v20 = 0;
    v21 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v21) < 0)
    {
      operator delete(p_xdict);
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = *v17;
    this[2] = v18;
    xpc_release(object);
    if (xpc_dictionary_get_value(xdict, "iccid"))
    {
      p_xdict = &xdict;
      v20 = "iccid";
      xpc::dict::object_proxy::operator xpc::object(&p_xdict, v17);
      ctu::rest::read_rest_value<std::string>((this + 4), v17);
      xpc_release(v17[0]);
    }

    if (xpc_dictionary_get_value(xdict, "carrierName"))
    {
      p_xdict = &xdict;
      v20 = "carrierName";
      xpc::dict::object_proxy::operator xpc::object(&p_xdict, v17);
      ctu::rest::read_rest_value<std::string>((this + 8), v17);
      xpc_release(v17[0]);
    }

    p_xdict = &xdict;
    v20 = "status";
    xpc::dict::object_proxy::operator xpc::object(&p_xdict, v17);
    v7 = MEMORY[0x2383CC760](v17[0]);
    v9 = MEMORY[0x277D864C0];
    v10 = MEMORY[0x277D86448];
    if (v7 == MEMORY[0x277D864C0])
    {
      LODWORD(v14[0]) = *(this + 6);
      ctu::rest::detail::read_enum_string_value(v14, v17, v8);
      *(this + 6) = v14[0];
    }

    else if (v7 == MEMORY[0x277D86448] || v7 == MEMORY[0x277D86498] || v7 == MEMORY[0x277D864C8])
    {
      *(this + 6) = xpc::dyn_cast_or_default(v17, 0);
    }

    xpc_release(v17[0]);
    p_xdict = &xdict;
    v20 = "subscription_slot_id";
    xpc::dict::object_proxy::operator xpc::object(&p_xdict, v17);
    v11 = MEMORY[0x2383CC760](v17[0]);
    if (v11 == v9)
    {
      LODWORD(v14[0]) = *(this + 24);
      ctu::rest::detail::read_enum_string_value(v14, v17, v12);
      *(this + 24) = v14[0];
    }

    else if (v11 == v10 || v11 == MEMORY[0x277D86498] || v11 == MEMORY[0x277D864C8])
    {
      *(this + 24) = xpc::dyn_cast_or_default(v17, 0);
    }

    xpc_release(v17[0]);
  }

  xpc_release(xdict);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_237477318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2374774AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2374777B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void cellplan::read_rest_value(cellplan *this, void **a2, const object *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  LOBYTE(v21[0]) = 0;
  LOBYTE(v21[3]) = 0;
  DWORD2(v23) = 0;
  BYTE12(v23) = 0;
  if (*this == 1)
  {
    *this = 0;
  }

  boost::optional_detail::optional_base<std::string>::assign(this + 24, &v21[3]);
  *(this + 14) = DWORD2(v23);
  v5 = (this + 56);
  *(this + 60) = BYTE12(v23);
  if (LOBYTE(v21[3]) == 1 && SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *a2;
  object = v6;
  v7 = MEMORY[0x277D86468];
  if (v6 && MEMORY[0x2383CC760](v6) == v7)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v7)
  {
    v21[0] = &object;
    v21[1] = "non_esim";
    xpc::dict::object_proxy::operator xpc::object(v21, v20);
    v9 = xpc::dyn_cast_or_default(v20, 0);
    xpc_release(v20[0]);
    v21[0] = &object;
    v21[1] = "status";
    xpc::dict::object_proxy::operator xpc::object(v21, v20);
    v10 = MEMORY[0x2383CC760](v20[0]);
    if (v10 == MEMORY[0x277D864C0])
    {
      *v24 = 0;
      ctu::rest::detail::read_enum_string_value(v24, v20, v11);
      v12 = *v24;
    }

    else if (v10 == MEMORY[0x277D86448] || v10 == MEMORY[0x277D86498] || v10 == MEMORY[0x277D864C8])
    {
      v12 = xpc::dyn_cast_or_default(v20, 0);
    }

    else
    {
      v12 = 0;
    }

    xpc_release(v20[0]);
    memset(v20, 0, sizeof(v20));
    if (xpc_dictionary_get_value(object, "iccid"))
    {
      v17[0] = &object;
      v17[1] = "iccid";
      xpc::dict::object_proxy::operator xpc::object(v17, &v18);
      v13 = MEMORY[0x2383CC760](v18);
      v14 = MEMORY[0x277D864B0];
      v15 = v13 != MEMORY[0x277D864B0];
      if (v13 != MEMORY[0x277D864B0])
      {
        memset(&v20[1], 0, 24);
        memset(v21, 0, 24);
        LOBYTE(v20[0]) = 1;
        xpc::dyn_cast_or_default();
        if (SHIBYTE(v21[2]) < 0)
        {
          operator delete(v21[0]);
        }

        *&v20[1] = *v24;
        v20[3] = *&v24[16];
      }

      xpc_release(v18);
      if (v9)
      {
        if (v13 == v14)
        {
          goto LABEL_11;
        }

        cellplan::RemoteSimSelectionModel::nonEsimOverrideModel(&v20[1], v12, v21);
        if (*this == 1)
        {
          if (LOBYTE(v21[0]))
          {
            *(this + 1) = *(v21 + 1);
          }

          else
          {
            *this = 0;
          }
        }

        else if (LOBYTE(v21[0]))
        {
          *(this + 1) = *(v21 + 1);
          *this = 1;
        }

        boost::optional_detail::optional_base<std::string>::assign(this + 24, &v21[3]);
        *v5 = DWORD2(v23);
        *(this + 60) = BYTE12(v23);
        if (LOBYTE(v21[3]) == 1 && SBYTE7(v23) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v20[0] & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_11;
      }

      v15 = 0;
    }

    memset(v24, 0, 17);
    if (xpc_dictionary_get_value(object, "csn"))
    {
      v21[0] = &object;
      v21[1] = "csn";
      xpc::dict::object_proxy::operator xpc::object(v21, v17);
      if (MEMORY[0x2383CC760](v17[0]) == MEMORY[0x277D864B0])
      {
        if (v24[0])
        {
          v24[0] = 0;
        }
      }

      else
      {
        if ((v24[0] & 1) == 0)
        {
          *&v24[9] = 0;
          *&v24[1] = 0;
          v24[0] = 1;
        }

        ctu::rest::detail::read_raw_binary_value(&v24[1], 0x10, v17, v16);
      }

      xpc_release(v17[0]);
    }

    if ((v15 & v24[0]) == 1)
    {
      cellplan::RemoteSimSelectionModel::RemoteSimSelectionModel(v21, &v24[1], &v20[1], v12);
      if (*this == 1)
      {
        if (LOBYTE(v21[0]))
        {
          *(this + 1) = *(v21 + 1);
        }

        else
        {
          *this = 0;
        }
      }

      else if (LOBYTE(v21[0]))
      {
        *(this + 1) = *(v21 + 1);
        *this = 1;
      }

      boost::optional_detail::optional_base<std::string>::assign(this + 24, &v21[3]);
      *v5 = DWORD2(v23);
      *(this + 60) = BYTE12(v23);
      if (LOBYTE(v21[3]) == 1 && SBYTE7(v23) < 0)
      {
        operator delete(__p[0]);
      }

      v15 = 1;
    }

    else if (v12 == 1)
    {
      *__p = 0u;
      v23 = 0u;
      memset(v21, 0, sizeof(v21));
      DWORD2(v23) = 1;
      if (*this == 1)
      {
        *this = 0;
      }

      boost::optional_detail::optional_base<std::string>::assign(this + 24, &v21[3]);
      *v5 = DWORD2(v23);
      *(this + 60) = BYTE12(v23);
      if (LOBYTE(v21[3]) == 1 && SBYTE7(v23) < 0)
      {
        operator delete(__p[0]);
        if (!v15)
        {
          goto LABEL_11;
        }

        goto LABEL_66;
      }
    }

    if (!v15)
    {
      goto LABEL_11;
    }

LABEL_66:
    if (SHIBYTE(v20[3]) < 0)
    {
      operator delete(v20[1]);
    }
  }

LABEL_11:
  xpc_release(object);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  xdict = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    xdict = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v5)
  {
    p_xdict = &xdict;
    v12 = "device_id";
    xpc::dict::object_proxy::operator xpc::object(&p_xdict, &object);
    memset(&v17, 0, sizeof(v17));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = *v15;
    *(this + 2) = v16;
    xpc_release(object);
    if (xpc_dictionary_get_value(xdict, "imei"))
    {
      v17.__r_.__value_.__r.__words[0] = &xdict;
      v17.__r_.__value_.__l.__size_ = "imei";
      xpc::dict::object_proxy::operator xpc::object(&v17, v15);
      ctu::rest::read_rest_value<std::string>(this + 24, v15);
      xpc_release(v15[0]);
    }

    else if (*(this + 24) == 1)
    {
      if (*(this + 55) < 0)
      {
        operator delete(*(this + 4));
      }

      *(this + 24) = 0;
    }

    if (xpc_dictionary_get_value(xdict, "meid"))
    {
      v17.__r_.__value_.__r.__words[0] = &xdict;
      v17.__r_.__value_.__l.__size_ = "meid";
      xpc::dict::object_proxy::operator xpc::object(&v17, v15);
      ctu::rest::read_rest_value<std::string>(this + 56, v15);
      xpc_release(v15[0]);
    }

    else if (*(this + 56) == 1)
    {
      if (*(this + 87) < 0)
      {
        operator delete(*(this + 8));
      }

      *(this + 56) = 0;
    }

    if (xpc_dictionary_get_value(xdict, "radio_sku"))
    {
      v17.__r_.__value_.__r.__words[0] = &xdict;
      v17.__r_.__value_.__l.__size_ = "radio_sku";
      xpc::dict::object_proxy::operator xpc::object(&v17, v15);
      v6 = MEMORY[0x2383CC760](v15[0]);
      if (v6 == MEMORY[0x277D864C0])
      {
        LOBYTE(p_xdict) = *(this + 88);
        ctu::rest::detail::read_enum_string_value(&p_xdict, v15, v7);
        *(this + 88) = p_xdict;
      }

      else if (v6 == MEMORY[0x277D86448] || v6 == MEMORY[0x277D86498] || v6 == MEMORY[0x277D864C8])
      {
        *(this + 88) = xpc::dyn_cast_or_default(v15, 0);
      }

      xpc_release(v15[0]);
    }

    else
    {
      *(this + 88) = 0;
    }

    if (xpc_dictionary_get_value(xdict, "model"))
    {
      p_xdict = &xdict;
      v12 = "model";
      xpc::dict::object_proxy::operator xpc::object(&p_xdict, &object);
      memset(&v17, 0, sizeof(v17));
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (*(this + 119) < 0)
      {
        operator delete(*(this + 12));
      }

      *(this + 6) = *v15;
      *(this + 14) = v16;
      xpc_release(object);
    }

    value = xpc_dictionary_get_value(xdict, "gsmaSgp22Version");
    v9 = MEMORY[0x277D864B0];
    if (value)
    {
      v17.__r_.__value_.__r.__words[0] = &xdict;
      v17.__r_.__value_.__l.__size_ = "gsmaSgp22Version";
      xpc::dict::object_proxy::operator xpc::object(&v17, v15);
      if (MEMORY[0x2383CC760](v15[0]) == v9)
      {
        *(this + 120) = 0;
      }

      else
      {
        if ((*(this + 120) & 1) == 0)
        {
          *(this + 31) = 0;
          *(this + 120) = 1;
        }

        *(this + 31) = xpc::dyn_cast_or_default(v15, 0);
      }

      xpc_release(v15[0]);
    }

    else
    {
      *(this + 120) = 0;
    }

    if (xpc_dictionary_get_value(xdict, "simAllianceProfileVersion"))
    {
      v17.__r_.__value_.__r.__words[0] = &xdict;
      v17.__r_.__value_.__l.__size_ = "simAllianceProfileVersion";
      xpc::dict::object_proxy::operator xpc::object(&v17, v15);
      if (MEMORY[0x2383CC760](v15[0]) == v9)
      {
        *(this + 128) = 0;
      }

      else
      {
        if ((*(this + 128) & 1) == 0)
        {
          *(this + 33) = 0;
          *(this + 128) = 1;
        }

        *(this + 33) = xpc::dyn_cast_or_default(v15, 0);
      }

      xpc_release(v15[0]);
    }

    else
    {
      *(this + 128) = 0;
    }
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v29 = 0;
    memset(&v17, 0, sizeof(v17));
    v18 = 0;
    v26 = 0;
    v27 = 0;
    __p = 0;
    v28 = 0;
    cellplan::RemoteDeviceIdentifiers::operator=(this, &v17);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    if (v21 == 1)
    {
      if (v23 < 0)
      {
        operator delete(v22);
      }

      v21 = 0;
    }

    if (v18 == 1)
    {
      if (v20 < 0)
      {
        operator delete(v19);
      }

      v18 = 0;
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  xpc_release(xdict);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_237477D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t object, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((a13 & 1) != 0 && a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void cellplan::write_rest_value(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v28 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v28 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v28 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v26 = xpc_string_create(v7);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "device_id";
  xpc::dict::object_proxy::operator=(&v24, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 55) >= 0)
    {
      v8 = (a1 + 32);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    object = xpc_string_create(v8);
    if (!object)
    {
      object = xpc_null_create();
    }

    v24 = &v28;
    v25 = "imei";
    xpc::dict::object_proxy::operator=(&v24, &object, &v23);
    xpc_release(v23);
    v23 = 0;
    xpc_release(object);
    object = 0;
  }

  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 87) >= 0)
    {
      v9 = (a1 + 64);
    }

    else
    {
      v9 = *(a1 + 64);
    }

    v20 = xpc_string_create(v9);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v24 = &v28;
    v25 = "meid";
    xpc::dict::object_proxy::operator=(&v24, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  if (*(a1 + 88))
  {
    v18 = xpc_int64_create(*(a1 + 88));
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v24 = &v28;
    v25 = "radio_sku";
    xpc::dict::object_proxy::operator=(&v24, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
  }

  v10 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    if (!*(a1 + 104))
    {
      goto LABEL_40;
    }

    v10 = *v10;
  }

  else if (!*(a1 + 119))
  {
    goto LABEL_40;
  }

  v16 = xpc_string_create(v10);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v24 = &v28;
  v25 = "model";
  xpc::dict::object_proxy::operator=(&v24, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
LABEL_40:
  if (*(a1 + 120) == 1)
  {
    v14 = xpc_int64_create(*(a1 + 124));
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    v24 = &v28;
    v25 = "gsmaSgp22Version";
    xpc::dict::object_proxy::operator=(&v24, &v14, &v15);
    xpc_release(v15);
    v15 = 0;
    xpc_release(v14);
    v14 = 0;
  }

  if (*(a1 + 128) == 1)
  {
    v12 = xpc_int64_create(*(a1 + 132));
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v24 = &v28;
    v25 = "simAllianceProfileVersion";
    xpc::dict::object_proxy::operator=(&v24, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
    v12 = 0;
  }

  v11 = v28;
  *a2 = v28;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v28);
}

void sub_2374786E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object, xpc_object_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void cellplan::read_rest_value(void **this, xpc_object_t *a2, const object *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v12 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v12 = v4;
  }

  if (MEMORY[0x2383CC760](v4) == v5)
  {
    v14 = &v12;
    v15.__r_.__value_.__r.__words[0] = "quick_switched";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    *this = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v14 = &v12;
    v15.__r_.__value_.__r.__words[0] = "device_id";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    cellplan::read_rest_value((this + 1), &object, v10);
    xpc_release(object);
    v14 = &v12;
    v15.__r_.__value_.__r.__words[0] = "vinyl_info";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    read_rest_value((this + 18), &object);
    xpc_release(object);
    v4 = v12;
  }

  else
  {
    LOBYTE(v14) = 0;
    v19 = 0;
    v22 = 0;
    v27 = 0;
    v31 = 0;
    memset(&v15, 0, sizeof(v15));
    v16 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v26 = 0;
    v29 = 0;
    __p = 0uLL;
    v30[0] = 0;
    memset(&v30[4], 0, 34);
    *this = 0;
    cellplan::RemoteDeviceIdentifiers::operator=((this + 1), &v15);
    if (*(this + 167) < 0)
    {
      operator delete(this[18]);
    }

    *(this + 9) = __p;
    v6 = v29;
    HIBYTE(v29) = 0;
    LOBYTE(__p) = 0;
    v7 = *v30;
    this[20] = v6;
    this[21] = v7;
    std::vector<VinylInfo>::__vdeallocate(this + 22);
    *(this + 11) = *&v30[8];
    v8 = *&v30[24];
    memset(&v30[8], 0, 24);
    v9 = *&v30[32];
    this[24] = v8;
    this[25] = v9;
    *(this + 52) = v31;
    object = &v30[8];
    std::vector<VinylInfo>::__destroy_vector::operator()[abi:ne200100](&object);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    if (v19 == 1)
    {
      if (v21 < 0)
      {
        operator delete(v20);
      }

      v19 = 0;
    }

    if (v16 == 1)
    {
      if (v18 < 0)
      {
        operator delete(v17);
      }

      v16 = 0;
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  xpc_release(v4);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_237478CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::optional_detail::optional_base<std::string>::assign(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (*a1 == 1)
  {
    if (*a2)
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 8) = v5;
      a2[31] = 0;
      a2[8] = 0;
    }

    else
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v6;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
    *a1 = 1;
  }
}

{
  v3 = *a2;
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      v5 = (a2 + 8);

      std::string::operator=(v4, v5);
    }

    else
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    if (a2[31] < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v6 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 8) = v6;
    }

    *a1 = 1;
  }
}

void cellplan::RemoteDeviceIdentifiers::~RemoteDeviceIdentifiers(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 56) == 1)
  {
    if (*(this + 87) < 0)
    {
      operator delete(this[8]);
    }

    *(this + 56) = 0;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 55) < 0)
    {
      operator delete(this[4]);
    }

    *(this + 24) = 0;
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void cellplan::RemoteProvisioningDeviceInfo::~RemoteProvisioningDeviceInfo(void **this)
{
  v2 = this + 22;
  std::vector<VinylInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 64) == 1)
  {
    if (*(this + 95) < 0)
    {
      operator delete(this[9]);
    }

    *(this + 64) = 0;
  }

  if (*(this + 32) == 1)
  {
    if (*(this + 63) < 0)
    {
      operator delete(this[5]);
    }

    *(this + 32) = 0;
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t subscriber::makeSimSlotRange@<X0>(uint64_t result@<X0>, int **a2@<X8>)
{
  v2 = subscriber::makeSimSlotRange(subscriber::SimSlot)::$_3::__invoke;
  if ((result - 1) > 2)
  {
    v3 = &subscriber::makeSimSlotRange(std::shared_ptr<Registry const> const&,subscriber::SimSlot)::kValues;
  }

  else
  {
    v2 = off_284A71178[(result - 1)];
    v3 = &subscriber::makeSimSlotRange(subscriber::SimSlot)::kValues;
  }

  *a2 = v3;
  a2[1] = &subscriber::makeSimSlotRange(std::shared_ptr<Registry const> const&,subscriber::SimSlot)::kValues;
  a2[2] = v2;
  return result;
}

uint64_t subscriber::expectedSimCount(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  subscriber::makeSimSlotRange(a1, 3, &v9);
  v2 = v10;
  v1 = v11;
    ;
  }

  memset(__p, 0, sizeof(__p));
  if (i != v2)
  {
    v4 = 0;
    v5 = i;
    do
    {
      v6 = v4;
      do
      {
        ++v5;
      }

      while (v5 != v2 && (v1(*v5) & 1) == 0);
      v4 = v6 + 1;
    }

    while (v5 != v2);
    if (v6 < 0x3FFFFFFFFFFFFFFFLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EmergencySetupType>>(__p, v4);
    }

    std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

void sub_237479108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t subscriber::fromString(subscriber *this, const char *a2)
{
  if (!this)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = subscriber::makeSimSlotRange(subscriber::SimSlot)::kValues[v3];
    v5 = "kUnknown";
    if ((v4 - 1) <= 2)
    {
      v5 = off_278A322E0[(v4 - 1)];
    }

    if (!strcmp(v5, this))
    {
      break;
    }

    if (++v3 == 2)
    {
      return 0;
    }
  }

  return v4;
}

BOOL subscriber::isValidPin(uint64_t *a1)
{
  v1 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) - 9 >= 0xFFFFFFFB)
    {
      v2 = *(a1 + 23);
      goto LABEL_7;
    }

    return 0;
  }

  v2 = a1[1];
  if ((v2 - 9) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  v1 = *a1;
LABEL_7:
  v4 = 0;
  while (memchr("0123456789", *(v1 + v4), 0xAuLL))
  {
    if (v2 == ++v4)
    {
      return 1;
    }
  }

  return v4 == -1;
}

BOOL subscriber::isValidPuk(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 == 8 && subscriber::isValidPin(a1);
}

void *operator<<(void *a1, _DWORD *a2)
{
  v3 = *a2 - 1;
  if (v3 > 2)
  {
    v4 = "kAirplaneMode";
  }

  else
  {
    v4 = off_278A32368[v3];
  }

  v5 = strlen(v4);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
}

void sub_237479770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_237479C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t toCallMetricEmNumListType(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 1;
  }

  else
  {
    return dword_2374B981C[a1];
  }
}

uint64_t *DataConnectionAgentInterface::DataConnectionAgentInterface(uint64_t *a1, uint64_t *a2, uint64_t *a3, NSObject **a4, char *a5, uint64_t a6)
{
  ctu::OsLogContext::OsLogContext(&v16, "com.apple.CommCenter", a5);
  a1[1] = 0;
  a1[2] = 0;
  v12 = *a4;
  a1[3] = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger(v17, &v16);
  MEMORY[0x2383CB6C0](a1 + 5, v17);
  MEMORY[0x2383CB6D0](v17);
  ctu::OsLogContext::~OsLogContext(&v16);
  v13 = *a2;
  *a1 = *a2;
  *(a1 + *(v13 - 56)) = a2[1];
  v14 = a3[1];
  a1[6] = *a3;
  a1[7] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = a5;
  a1[9] = a6;
  return a1;
}

void DataConnectionAgentInterface::~DataConnectionAgentInterface(DataConnectionAgentInterface *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 56)) = a2[1];
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x2383CB6D0](this + 40);
  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(this + 1);
}

const void **carrier_space::getCarrierSpaceSettings@<X0>(const void ***a1@<X1>, void *a2@<X8>)
{
  result = *a1;
  if (*a1)
  {
    (*(*result + 12))(&v4);
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(a2, &v4);
    return ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v4);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_23747A0F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

BOOL carrier_space::isCarrierSpaceFeatureEnabled(uint64_t a1, const void ***a2)
{
  v4 = 0;
  carrier_space::getCarrierSpaceSettings(a2, &v4);
  v2 = v4 != 0;
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v4);
  return v2;
}

const void **carrier_space::getCarrierSpaceValueForKey@<X0>(const void ***a1@<X1>, const void *a2@<X2>, void *a3@<X8>)
{
  theDict = 0;
  carrier_space::getCarrierSpaceSettings(a1, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, a2);
    *a3 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  else
  {
    *a3 = 0;
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
}

void sub_23747A1B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateInterface::getUserPreferenceEnableLTE(MaxDataRateInterface *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6 = 0;
  dsema = dispatch_semaphore_create(0);
  v7[0] = &unk_284A716D8;
  v7[1] = &v6;
  v7[2] = &dsema;
  v7[3] = v7;
  (*(*this + 56))(this, 1, v7);
  std::__function::__value_func<void ()(DataRateUserPreference)>::~__value_func[abi:ne200100](v7);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v2 = v6;
  if (dsema)
  {
    dispatch_release(dsema);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_23747A2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(DataRateUserPreference)>::~__value_func[abi:ne200100](&a12);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateInterface::carrierAndDeviceSupportLTE(MaxDataRateInterface *this)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = 0;
  dsema = dispatch_semaphore_create(0);
  v6[0] = &unk_284A71768;
  v6[1] = &v5;
  v6[2] = &dsema;
  v6[3] = v6;
  (*(*this + 136))(this, 1, v6);
  std::__function::__value_func<void ()(std::optional<BOOL>)>::~__value_func[abi:ne200100](v6);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (dsema)
  {
    dispatch_release(dsema);
  }

  result = v5;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23747A3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(std::optional<BOOL>)>::~__value_func[abi:ne200100](&a12);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<MaxDataRateInterface::getUserPreferenceEnableLTE(void)::$_0,std::allocator<MaxDataRateInterface::getUserPreferenceEnableLTE(void)::$_0>,void ()(DataRateUserPreference)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A716D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

intptr_t std::__function::__func<MaxDataRateInterface::getUserPreferenceEnableLTE(void)::$_0,std::allocator<MaxDataRateInterface::getUserPreferenceEnableLTE(void)::$_0>,void ()(DataRateUserPreference)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  **(a1 + 8) = *a2;
  return dispatch_semaphore_signal(*v2);
}

uint64_t std::__function::__func<MaxDataRateInterface::getUserPreferenceEnableLTE(void)::$_0,std::allocator<MaxDataRateInterface::getUserPreferenceEnableLTE(void)::$_0>,void ()(DataRateUserPreference)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(DataRateUserPreference)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<MaxDataRateInterface::carrierAndDeviceSupportLTE(void)::$_0,std::allocator<MaxDataRateInterface::carrierAndDeviceSupportLTE(void)::$_0>,void ()(std::optional<BOOL>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A71768;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MaxDataRateInterface::carrierAndDeviceSupportLTE(void)::$_0,std::allocator<MaxDataRateInterface::carrierAndDeviceSupportLTE(void)::$_0>,void ()(std::optional<BOOL>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<BOOL>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t byte_order::big::operator()(uint64_t a1, unsigned int a2)
{
  return __rev16(a2);
}

{
  return bswap32(a2);
}

CFStringRef createActivationStringFromData(ctu *a1, const void *a2)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  p_p = &__p;
  ctu::hex(a1, a2);
  v3 = HIBYTE(v17);
  v4 = v16;
  if (v17 >= 0)
  {
    v5 = SHIBYTE(v17);
  }

  else
  {
    v5 = v16;
  }

  v6 = v5 - 1;
  if ((SHIBYTE(v17) & 0x8000000000000000) != 0)
  {
    p_p = __p;
    v10 = *(__p + v6);
    v8 = __p;
    v9 = v16;
    if (v10 == 70)
    {
      v8 = __p;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *(&__p + v6);
    v8 = __p;
    v9 = SHIBYTE(v17);
    if (v7 == 70)
    {
LABEL_11:
      v4 = SHIBYTE(v17);
      goto LABEL_12;
    }
  }

  if (p_p[v9 - 1] != 102)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = &__p;
  if (v17 < 0)
  {
    v11 = v8;
  }

  *(v11 + v4 - 1) = 0;
  v3 = HIBYTE(v17);
  v8 = __p;
LABEL_15:
  if (v3 >= 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = v8;
  }

  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v12, 0x8000100u);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_23747A89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t event::EventLogger<void ()(subscriber::SimSlot,BOOL),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71AC8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(subscriber::SimSlot),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71B88;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71BF8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(BOOL),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71C68;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(char const*),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71CD8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(int),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71D48;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(void),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71DB8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(BundleChangeType,BundleTechnologyType),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71E28;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::function<void ()(boost::signals2::connection const&,std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A72BC8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(IRatApplicationType,DataContextType,int),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71E98;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(BOOL,std::vector<std::string> const&),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71F08;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(subscriber::SimSlot,std::string const&),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71F78;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(double,double),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(double,double)>,boost::function<void ()(boost::signals2::connection const&,double,double)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73178;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(char const*),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(char const*)>,boost::function<void ()(boost::signals2::connection const&,char const*)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71CD8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71DB8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(unsigned int,unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int,unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int,unsigned int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73308;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(Operating_Mode),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71FE8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t event::EventLogger<void ()(PersonalityID const&,std::string),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A72058;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73758;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::function<void ()(boost::signals2::connection const&,unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A738E8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(AudioIOState),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(AudioIOState)>,boost::function<void ()(boost::signals2::connection const&,AudioIOState)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73A78;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73C08;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71AC8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71AC8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71B88;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71B88;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::function<void ()(boost::signals2::connection const&,ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71BF8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::function<void ()(boost::signals2::connection const&,ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71BF8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::function<void ()(boost::signals2::connection const&,ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71C68;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71C68;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::signals2::signal<void ()(char const*),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(char const*)>,boost::function<void ()(boost::signals2::connection const&,char const*)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71CD8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(char const*),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(char const*)>,boost::function<void ()(boost::signals2::connection const&,char const*)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(int)>,boost::function<void ()(boost::signals2::connection const&,int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71D48;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(int)>,boost::function<void ()(boost::signals2::connection const&,int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71D48;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(int)>,boost::function<void ()(boost::signals2::connection const&,int)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71DB8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(BundleChangeType,BundleTechnologyType),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BundleChangeType,BundleTechnologyType)>,boost::function<void ()(boost::signals2::connection const&,BundleChangeType,BundleTechnologyType)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71E28;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(BundleChangeType,BundleTechnologyType),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BundleChangeType,BundleTechnologyType)>,boost::function<void ()(boost::signals2::connection const&,BundleChangeType,BundleTechnologyType)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71E28;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(BundleChangeType,BundleTechnologyType),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BundleChangeType,BundleTechnologyType)>,boost::function<void ()(boost::signals2::connection const&,BundleChangeType,BundleTechnologyType)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(IRatApplicationType,DataContextType,int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(IRatApplicationType,DataContextType,int)>,boost::function<void ()(boost::signals2::connection const&,IRatApplicationType,DataContextType,int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71E98;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(IRatApplicationType,DataContextType,int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(IRatApplicationType,DataContextType,int)>,boost::function<void ()(boost::signals2::connection const&,IRatApplicationType,DataContextType,int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71E98;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(IRatApplicationType,DataContextType,int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(IRatApplicationType,DataContextType,int)>,boost::function<void ()(boost::signals2::connection const&,IRatApplicationType,DataContextType,int)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(BOOL,std::vector<std::string> const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL,std::vector<std::string> const&)>,boost::function<void ()(boost::signals2::connection const&,BOOL,std::vector<std::string> const&)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71F08;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(BOOL,std::vector<std::string> const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL,std::vector<std::string> const&)>,boost::function<void ()(boost::signals2::connection const&,BOOL,std::vector<std::string> const&)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71F08;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(BOOL,std::vector<std::string> const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL,std::vector<std::string> const&)>,boost::function<void ()(boost::signals2::connection const&,BOOL,std::vector<std::string> const&)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::string const&)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::string const&)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71F78;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(subscriber::SimSlot,std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::string const&)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::string const&)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71F78;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::string const&)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::string const&)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(Operating_Mode),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(Operating_Mode)>,boost::function<void ()(boost::signals2::connection const&,Operating_Mode)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71FE8;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(Operating_Mode),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(Operating_Mode)>,boost::function<void ()(boost::signals2::connection const&,Operating_Mode)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A71FE8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(Operating_Mode),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(Operating_Mode)>,boost::function<void ()(boost::signals2::connection const&,Operating_Mode)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::signals2::signal<void ()(PersonalityID const&,std::string),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(PersonalityID const&,std::string)>,boost::function<void ()(boost::signals2::connection const&,PersonalityID const&,std::string)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A72058;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(PersonalityID const&,std::string),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(PersonalityID const&,std::string)>,boost::function<void ()(boost::signals2::connection const&,PersonalityID const&,std::string)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A72058;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(PersonalityID const&,std::string),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(PersonalityID const&,std::string)>,boost::function<void ()(boost::signals2::connection const&,PersonalityID const&,std::string)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void event::EventLogger<void ()(subscriber::SimSlot,BOOL),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71AC8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(result + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::shared_ptr<boost::signals2::optional_last_value<void>>::shared_ptr<boost::signals2::optional_last_value<void>>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  operator new();
}

void sub_23747BA0C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x2383CBEF0](v1, 0xC400A2AC0F1);
  }

  __cxa_rethrow();
}

void sub_23747BA30(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

pthread_mutex_t *boost::signals2::mutex::mutex(pthread_mutex_t *this)
{
  if (pthread_mutex_init(this, 0))
  {
    __assert_rtn("mutex", "lwm_pthreads.hpp", 49, "pthread_mutex_init(&m_, 0) == 0");
  }

  return this;
}

void boost::shared_ptr<boost::signals2::mutex>::shared_ptr<boost::signals2::mutex>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  operator new();
}

void sub_23747BC14(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::mutex>(v1);
  __cxa_rethrow();
}

void sub_23747BC28(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

pthread_mutex_t *boost::checked_delete<boost::signals2::mutex>(pthread_mutex_t *result)
{
  if (result)
  {
    boost::signals2::mutex::~mutex(result);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

pthread_mutex_t *boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    boost::signals2::mutex::~mutex(result);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::mutex::~mutex(pthread_mutex_t *this)
{
  if (pthread_mutex_destroy(this))
  {
    __assert_rtn("~mutex", "lwm_pthreads.hpp", 55, "pthread_mutex_destroy(&m_) == 0");
  }
}

uint64_t boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    boost::detail::shared_count::~shared_count((result + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(subscriber::SimSlot),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71B88;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t a1)
{
  std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::destroy(a1 + 24, *(a1 + 32));
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(a1);
  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71BF8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),boost::function<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::function<void ()(boost::signals2::connection const&,ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::function<void ()(boost::signals2::connection const&,ActivationModelInterface::Status,ActivationModelInterface::Status,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A71C68;
  operator new();
}

void sub_23747C7A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_23747C7C0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

void sub_23747C7D8()
{
  MEMORY[0x2383CBEF0](v1, 0x1000C40FA0F61DDLL);
  boost::detail::shared_count::~shared_count(v2);
  MEMORY[0x2383CBEF0](v0, 0x20C40769AC3DALL);
  JUMPOUT(0x23747C974);
}

void sub_23747C7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(a10);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x23747C8A8);
}

void sub_23747C840(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747C860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](a10, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747C968);
}

void sub_23747C88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v16, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747C968);
}

void sub_23747C8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v17, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747C968);
}

void sub_23747C8DC()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x23747C940);
}

void sub_23747C8F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void event::EventLogger<void ()(BOOL),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71C68;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(char const*),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(char const*)>,boost::function<void ()(boost::signals2::connection const&,char const*)>,boost::signals2::mutex>::signal(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A71CD8;
  operator new();
}

void sub_23747D1B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_23747D1D0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

void sub_23747D1E8()
{
  MEMORY[0x2383CBEF0](v1, 0x1000C40FA0F61DDLL);
  boost::detail::shared_count::~shared_count(v2);
  MEMORY[0x2383CBEF0](v0, 0x20C40769AC3DALL);
  JUMPOUT(0x23747D384);
}

void sub_23747D208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(a10);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x23747D2B8);
}

void sub_23747D250(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747D270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](a10, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747D378);
}

void sub_23747D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v16, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747D378);
}

void sub_23747D2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v17, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747D378);
}

void sub_23747D2EC()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x23747D350);
}

void sub_23747D300(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void event::EventLogger<void ()(char const*),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71CD8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(char const*),boost::function<void ()(char const*)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(char const*),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(char const*)>,boost::function<void ()(boost::signals2::connection const&,char const*)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(char const*),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(char const*)>,boost::function<void ()(boost::signals2::connection const&,char const*)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(int)>,boost::function<void ()(boost::signals2::connection const&,int)>,boost::signals2::mutex>::signal(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A71D48;
  operator new();
}

void sub_23747DBC0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_23747DBE0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

void sub_23747DBF8()
{
  MEMORY[0x2383CBEF0](v1, 0x1000C40FA0F61DDLL);
  boost::detail::shared_count::~shared_count(v2);
  MEMORY[0x2383CBEF0](v0, 0x20C40769AC3DALL);
  JUMPOUT(0x23747DD94);
}

void sub_23747DC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(a10);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747DC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x23747DCC8);
}

void sub_23747DC60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](a10, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747DD88);
}

void sub_23747DCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v16, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747DD88);
}

void sub_23747DCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v17, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747DD88);
}

void sub_23747DCFC()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x23747DD60);
}

void sub_23747DD10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void event::EventLogger<void ()(int),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71D48;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(int),boost::function<void ()(int)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(int)>,boost::function<void ()(boost::signals2::connection const&,int)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(int)>,boost::function<void ()(boost::signals2::connection const&,int)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::signal(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A71DB8;
  operator new();
}

void sub_23747E5D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_23747E5F0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

void sub_23747E608()
{
  MEMORY[0x2383CBEF0](v1, 0x1000C40FA0F61DDLL);
  boost::detail::shared_count::~shared_count(v2);
  MEMORY[0x2383CBEF0](v0, 0x20C40769AC3DALL);
  JUMPOUT(0x23747E7A4);
}

void sub_23747E628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(a10);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x23747E6D8);
}

void sub_23747E670(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](a10, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747E798);
}

void sub_23747E6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v16, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747E798);
}

void sub_23747E6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v17, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747E798);
}

void sub_23747E70C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x23747E770);
}

void sub_23747E720(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void event::EventLogger<void ()(void),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71DB8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(BundleChangeType,BundleTechnologyType),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71E28;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BundleChangeType,BundleTechnologyType),boost::function<void ()(BundleChangeType,BundleTechnologyType)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BundleChangeType,BundleTechnologyType),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BundleChangeType,BundleTechnologyType)>,boost::function<void ()(boost::signals2::connection const&,BundleChangeType,BundleTechnologyType)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BundleChangeType,BundleTechnologyType),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BundleChangeType,BundleTechnologyType)>,boost::function<void ()(boost::signals2::connection const&,BundleChangeType,BundleTechnologyType)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::function<void ()(boost::signals2::connection const&,std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A72BC8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::function<void ()(boost::signals2::connection const&,std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>),boost::function<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::function<void ()(boost::signals2::connection const&,std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::function<void ()(boost::signals2::connection const&,std::vector<std::pair<ctu::cf::CFSharedRef<void const>,BundleUpdateResult>>)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(IRatApplicationType,DataContextType,int),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71E98;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(IRatApplicationType,DataContextType,int),boost::function<void ()(IRatApplicationType,DataContextType,int)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(IRatApplicationType,DataContextType,int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(IRatApplicationType,DataContextType,int)>,boost::function<void ()(boost::signals2::connection const&,IRatApplicationType,DataContextType,int)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(IRatApplicationType,DataContextType,int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(IRatApplicationType,DataContextType,int)>,boost::function<void ()(boost::signals2::connection const&,IRatApplicationType,DataContextType,int)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(BOOL,std::vector<std::string> const&),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71F08;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL,std::vector<std::string> const&),boost::function<void ()(BOOL,std::vector<std::string> const&)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL,std::vector<std::string> const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL,std::vector<std::string> const&)>,boost::function<void ()(boost::signals2::connection const&,BOOL,std::vector<std::string> const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL,std::vector<std::string> const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL,std::vector<std::string> const&)>,boost::function<void ()(boost::signals2::connection const&,BOOL,std::vector<std::string> const&)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(subscriber::SimSlot,std::string const&),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71F78;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,std::string const&),boost::function<void ()(subscriber::SimSlot,std::string const&)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::string const&)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::string const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::string const&)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::string const&)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(double,double),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(double,double)>,boost::function<void ()(boost::signals2::connection const&,double,double)>,boost::signals2::mutex>::signal(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A73178;
  operator new();
}

void sub_23747FA9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_23747FABC(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

void sub_23747FAD4()
{
  MEMORY[0x2383CBEF0](v1, 0x1000C40FA0F61DDLL);
  boost::detail::shared_count::~shared_count(v2);
  MEMORY[0x2383CBEF0](v0, 0x20C40769AC3DALL);
  JUMPOUT(0x23747FC70);
}

void sub_23747FAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(a10);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747FB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x23747FBA4);
}

void sub_23747FB3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23747FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](a10, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747FC64);
}

void sub_23747FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v16, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747FC64);
}

void sub_23747FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  MEMORY[0x2383CBEF0](v17, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x23747FC64);
}

void sub_23747FBD8()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x23747FC3CLL);
}

void sub_23747FBEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void boost::signals2::signal<void ()(double,double),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(double,double)>,boost::function<void ()(boost::signals2::connection const&,double,double)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73178;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(double,double),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(double,double)>,boost::function<void ()(boost::signals2::connection const&,double,double)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(double,double),boost::function<void ()(double,double)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(double,double),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(double,double)>,boost::function<void ()(boost::signals2::connection const&,double,double)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(double,double),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(double,double)>,boost::function<void ()(boost::signals2::connection const&,double,double)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(unsigned int,unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int,unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int,unsigned int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73308;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(unsigned int,unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int,unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int,unsigned int)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int,unsigned int),boost::function<void ()(unsigned int,unsigned int)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned int,unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int,unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int,unsigned int)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned int,unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int,unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int,unsigned int)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(Operating_Mode),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A71FE8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(Operating_Mode),boost::function<void ()(Operating_Mode)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(Operating_Mode),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(Operating_Mode)>,boost::function<void ()(boost::signals2::connection const&,Operating_Mode)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(Operating_Mode),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(Operating_Mode)>,boost::function<void ()(boost::signals2::connection const&,Operating_Mode)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void event::EventLogger<void ()(PersonalityID const&,std::string),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A72058;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(PersonalityID const&,std::string),boost::function<void ()(PersonalityID const&,std::string)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(PersonalityID const&,std::string),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(PersonalityID const&,std::string)>,boost::function<void ()(boost::signals2::connection const&,PersonalityID const&,std::string)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(PersonalityID const&,std::string),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(PersonalityID const&,std::string)>,boost::function<void ()(boost::signals2::connection const&,PersonalityID const&,std::string)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73758;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::function<void ()(boost::signals2::connection const&,unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A738E8;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::function<void ()(boost::signals2::connection const&,unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL),boost::function<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::function<void ()(boost::signals2::connection const&,unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::function<void ()(boost::signals2::connection const&,unsigned char,RadioAccessTechnology,BOOL,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(AudioIOState),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(AudioIOState)>,boost::function<void ()(boost::signals2::connection const&,AudioIOState)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73A78;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(AudioIOState),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(AudioIOState)>,boost::function<void ()(boost::signals2::connection const&,AudioIOState)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(AudioIOState),boost::function<void ()(AudioIOState)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(AudioIOState),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(AudioIOState)>,boost::function<void ()(boost::signals2::connection const&,AudioIOState)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(AudioIOState),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(AudioIOState)>,boost::function<void ()(boost::signals2::connection const&,AudioIOState)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void boost::signals2::signal<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A73C08;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CBEF0);
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>),boost::function<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,std::optional<VinylProfileDetails>)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void _GLOBAL__sub_I_EventDefinitions_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  event::activation::serviceProvisioned = &unk_284A71AC8;
  operator new();
}

void sub_237486DD4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,BOOL)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,BOOL)>,boost::signals2::mutex>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_237486DEC(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(&qword_280CE8A40);
  _Unwind_Resume(a1);
}

void sub_237487818(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot)>,boost::signals2::mutex>::invocation_state>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_237487838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x237487FB0);
}

void sub_237487860(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,BOOL),boost::function<void ()(subscriber::SimSlot,BOOL)>>,boost::signals2::mutex>>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_237487880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x237487F98);
}

void sub_237487890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a16);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(&a12);
  JUMPOUT(0x237487F98);
}

void sub_2374879B0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::detail::shared_count::~shared_count((v3 + 8));
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::~grouped_list(va);
  JUMPOUT(0x237487FACLL);
}

void sub_237487A04()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487C48);
}

void sub_237487A0C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487C88);
}

void sub_237487A14()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487CC8);
}

void sub_237487A1C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487D08);
}

void sub_237487A24()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487D48);
}

void sub_237487A2C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487D88);
}

void sub_237487A34()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487DC8);
}

void sub_237487A3C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487E08);
}

void sub_237487A44()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487E48);
}

void sub_237487A4C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487E88);
}

void sub_237487A54()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487EC8);
}

void sub_237487A5C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487F08);
}

void sub_237487A64()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487F48);
}

void sub_237487A6C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot),boost::function<void ()(subscriber::SimSlot)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CBEF0](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237487F88);
}

void sub_237487B58(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B60(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B68(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B70(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B78(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B80(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B88(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B90(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487B98(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BA0(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BA8(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BB0(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BB8(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BC0(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BC8(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x237487BD4);
  }

  JUMPOUT(0x237487FC8);
}

void sub_237487BD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x237487BDCLL);
  }

  __clang_call_terminate();
}

void sub_237487C0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void PDPMetricInfo::~PDPMetricInfo(void **this)
{
  *this = &unk_284A73ED0;
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  PDPMetricInfo::~PDPMetricInfo(this);

  JUMPOUT(0x2383CBEF0);
}

uint64_t PDPMetricInfo::clear(uint64_t this)
{
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  if (*(this + 55) < 0)
  {
    **(this + 32) = 0;
    *(this + 40) = 0;
  }

  else
  {
    *(this + 32) = 0;
    *(this + 55) = 0;
  }

  if (*(this + 79) < 0)
  {
    **(this + 56) = 0;
    *(this + 64) = 0;
  }

  else
  {
    *(this + 56) = 0;
    *(this + 79) = 0;
  }

  if (*(this + 103) < 0)
  {
    **(this + 80) = 0;
    *(this + 88) = 0;
  }

  else
  {
    *(this + 80) = 0;
    *(this + 103) = 0;
  }

  if (*(this + 127) < 0)
  {
    **(this + 104) = 0;
    *(this + 112) = 0;
  }

  else
  {
    *(this + 104) = 0;
    *(this + 127) = 0;
  }

  if (*(this + 151) < 0)
  {
    **(this + 128) = 0;
    *(this + 136) = 0;
  }

  else
  {
    *(this + 128) = 0;
    *(this + 151) = 0;
  }

  *(this + 152) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0;
  return this;
}

uint64_t PDPMetricInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __str = *(a2 + 8);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=((a1 + 8), &__str);
    v5 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v5 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v23 = *(a2 + 32);
  }

  v6 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  v7 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v23.__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    std::string::operator=((a1 + 32), &v23);
    v7 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  if (v7 < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v22 = *(a2 + 56);
  }

  v8 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v22.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    std::string::operator=((a1 + 56), &v22);
    v9 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  if (v9 < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v21 = *(a2 + 80);
  }

  v10 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v21.__r_.__value_.__l.__size_;
  }

  if (v10)
  {
    std::string::operator=((a1 + 80), &v21);
    v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  if (v11 < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v20 = *(a2 + 104);
  }

  v12 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  v13 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v20.__r_.__value_.__l.__size_;
  }

  if (v12)
  {
    std::string::operator=((a1 + 104), &v20);
    v13 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  if (v13 < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 128), *(a2 + 136));
  }

  else
  {
    __p = *(a2 + 128);
  }

  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  if (v14)
  {
    std::string::operator=((a1 + 128), &__p);
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v15 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = *(a2 + 152);
  if (v16)
  {
    *(a1 + 152) = v16;
  }

  v17 = *(a2 + 160);
  if (v17)
  {
    *(a1 + 160) = v17;
  }

  return a1;
}

void sub_237488404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL PDPMetricInfo::empty(PDPMetricInfo *this)
{
  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (!*(this + 5))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(this + 55))
  {
    return 0;
  }

LABEL_5:
  if ((*(this + 151) & 0x8000000000000000) != 0)
  {
    if (*(this + 17))
    {
      return 0;
    }
  }

  else if (*(this + 151))
  {
    return 0;
  }

  return *(this + 38) == 0;
}

void DataBBResetThrottling::DataBBResetThrottling(DataBBResetThrottling *this)
{
  *this = 180;
  *(this + 1) = std::chrono::steady_clock::now().__d_.__rep_ - 86400000000000;
}

{
  *this = 180;
  *(this + 1) = std::chrono::steady_clock::now().__d_.__rep_ - 86400000000000;
}

uint64_t DataBBResetThrottling::getTimeout(DataBBResetThrottling *this)
{
  if (*(TelephonyCapabilitiesGetHardwareModel() + 8) == 4)
  {
    return 518400;
  }

  else
  {
    return *this;
  }
}

uint64_t *DataBBResetThrottling::incTimeout(uint64_t *this)
{
  v1 = 2 * *this;
  if (v1 >= 86400)
  {
    v1 = 86400;
  }

  *this = v1;
  return this;
}

BOOL DataBBResetThrottling::toThrottle(DataBBResetThrottling *this)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *(this + 1);
  if (*(TelephonyCapabilitiesGetHardwareModel() + 8) == 4)
  {
    v4 = 518400;
  }

  else
  {
    v4 = *this;
  }

  return (v2.__d_.__rep_ - v3) / 1000000000 < v4;
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep DataBBResetThrottling::resetHappened(DataBBResetThrottling *this)
{
  result = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = 2 * *this;
  if (v3 >= 86400)
  {
    v3 = 86400;
  }

  *this = v3;
  *(this + 1) = result;
  return result;
}

void DataIPFilter::adjust(DataIPFilter *this)
{
  v1 = *(this + 7);
  if (v1 != 41)
  {
    if (v1 == 4)
    {
      *(this + 148) = 0;
      *(this + 152) = 0;
    }

    else
    {
      std::__optional_copy_base<DataIPFilterEndpoint,false>::__optional_copy_base[abi:ne200100](&__p, this + 32);
      if (v9 == 1 && v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v3 & 1) == 0)
      {
        std::__optional_copy_base<DataIPFilterEndpoint,false>::__optional_copy_base[abi:ne200100](&v4, this + 88);
        if (v6 == 1 && v5 == 1 && SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v4.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_237488790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18 == 1 && a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataIPFilter::toString@<X0>(DataIPFilter *this@<X0>, _BYTE *a2@<X8>)
{
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  DataIPFilter::operator<<(this, &v5);
  std::stringbuf::str[abi:ne200100](a2, &v5 + 8);
  *&v5 = *MEMORY[0x277D82828];
  *(&v6[-1] + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v5 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v5 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v10);
}

void *DataIPFilter::operator<<(unsigned int *a1, void *a2)
{
  if (*a1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "filterId:", 9);
    MEMORY[0x2383CBD30](v4, *a1);
  }

  if (*(a1 + 1))
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " filterIOSQueueId:", 18);
    MEMORY[0x2383CBD50](v5, *(a1 + 1));
  }

  if (*(a1 + 17) == 1)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ims:", 5);
    if ((*(a1 + 17) & 1) == 0)
    {
      goto LABEL_33;
    }

    MEMORY[0x2383CBD10](v6, *(a1 + 16));
  }

  if (a1[5])
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " precedence:", 12);
    MEMORY[0x2383CBD30](v7, a1[5]);
  }

  if (a1[6])
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " protocol:", 10);
    MEMORY[0x2383CBD30](v8, a1[6]);
  }

  if (a1[7])
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " family:", 8);
    MEMORY[0x2383CBD30](v9, a1[7]);
  }

  if (*(a1 + 80) == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " src:[", 6);
    if ((a1[20] & 1) == 0)
    {
      goto LABEL_33;
    }

    v11 = v10;
    DataIPFilterEndpoint::operator<<((a1 + 8), v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "]", 1);
  }

  if (*(a1 + 136) == 1)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " dst:[", 6);
    if ((a1[34] & 1) == 0)
    {
      goto LABEL_33;
    }

    v13 = v12;
    DataIPFilterEndpoint::operator<<((a1 + 22), v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "]", 1);
  }

  if (*(a1 + 145) == 1)
  {
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " tos:", 5);
    if ((*(a1 + 145) & 1) == 0)
    {
      goto LABEL_33;
    }

    MEMORY[0x2383CBD20](v14, *(a1 + 144));
  }

  if (*(a1 + 147) == 1)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " tosMask:", 9);
    if ((*(a1 + 147) & 1) == 0)
    {
      goto LABEL_33;
    }

    MEMORY[0x2383CBD20](v15, *(a1 + 146));
  }

  if (*(a1 + 152) == 1)
  {
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " flowLabel:", 11);
    if ((a1[38] & 1) == 0)
    {
      goto LABEL_33;
    }

    MEMORY[0x2383CBD30](v16, a1[37]);
  }

  if (*(a1 + 157) == 1)
  {
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " uplink:", 8);
    if (*(a1 + 157))
    {
      MEMORY[0x2383CBD10](v17, *(a1 + 156));
      return a2;
    }

LABEL_33:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return a2;
}

uint64_t DataIPFilterEndpoint::toString@<X0>(DataIPFilterEndpoint *this@<X0>, _BYTE *a2@<X8>)
{
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  DataIPFilterEndpoint::operator<<(this, &v5);
  std::stringbuf::str[abi:ne200100](a2, &v5 + 8);
  *&v5 = *MEMORY[0x277D82828];
  *(&v6[-1] + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v5 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v5 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v10);
}

void *DataIPFilterEndpoint::operator<<(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "addr:", 5);
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  }

  if (*(a1 + 33) == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " maskLen:", 9);
    if ((*(a1 + 33) & 1) == 0)
    {
      goto LABEL_20;
    }

    MEMORY[0x2383CBD20](v8, *(a1 + 32));
  }

  if (*(a1 + 36) == 1)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " port:", 6);
    if ((*(a1 + 36) & 1) == 0)
    {
      goto LABEL_20;
    }

    MEMORY[0x2383CBD40](v9, *(a1 + 34));
  }

  if (*(a1 + 40) == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " portRange:", 11);
    if (*(a1 + 40))
    {
      MEMORY[0x2383CBD40](v10, *(a1 + 38));
      return a2;
    }

LABEL_20:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return a2;
}

void TrafficDescriptor::TrafficDescriptor(TrafficDescriptor *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 208) = 0;
  *(this + 212) = 0;
  *(this + 214) = 0;
  *(this + 216) = 0;
  *(this + 220) = 0;
  *(this + 222) = 0;
  *(this + 224) = 0;
  *(this + 228) = 0;
  *(this + 232) = 0;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 272) = 0;
  *(this + 296) = 0;
  *(this + 36) = 0;
}

void TrafficDescriptor::TrafficDescriptor(TrafficDescriptor *this, const TrafficDescriptor *a2)
{
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 16), a2 + 1);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 2, a2 + 3);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 80), a2 + 5);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 112), a2 + 7);
  *(this + 72) = *(a2 + 72);
  *(this + 73) = *(a2 + 73);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 152), (a2 + 152));
  *(this + 184) = 0;
  *(this + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    *(this + 50) = *(a2 + 50);
    *(this + 204) = *(a2 + 204);
    *(this + 184) = *(a2 + 184);
    *(this + 208) = 1;
  }

  *(this + 53) = *(a2 + 53);
  v4 = *(a2 + 54);
  *(this + 110) = *(a2 + 110);
  *(this + 54) = v4;
  *(this + 222) = *(a2 + 222);
  *(this + 228) = *(a2 + 228);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 10, a2 + 15);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 272), a2 + 17);
}

void sub_237489010(_Unwind_Exception *exception_object)
{
  if (*(v1 + 264) == 1 && *(v1 + 263) < 0)
  {
    operator delete(*(v1 + 240));
  }

  if (*(v1 + 176) == 1 && *(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 136) == 1 && *(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 104) == 1 && *(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 72) == 1 && *(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

__n128 TrafficDescriptor::TrafficDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 4);
  *(a1 + 16) = 0;
  *(a1 + 4) = v2;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    result = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = result;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    result = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = result;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a1 + 72) = 1;
  }

  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    result = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = result;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    result = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = result;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 1;
  }

  *(a1 + 144) = *(a2 + 144);
  v4 = *(a2 + 146);
  *(a1 + 152) = 0;
  *(a1 + 146) = v4;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    result = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = result;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    *(a1 + 176) = 1;
  }

  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 204) = *(a2 + 204);
    result = *(a2 + 184);
    *(a1 + 184) = result;
    *(a1 + 208) = 1;
  }

  *(a1 + 212) = *(a2 + 212);
  v5 = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 216) = v5;
  *(a1 + 222) = *(a2 + 222);
  v6 = *(a2 + 228);
  *(a1 + 240) = 0;
  *(a1 + 228) = v6;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    result = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = result;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 240) = 0;
    *(a1 + 264) = 1;
  }

  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    result = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = result;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = 0;
    *(a1 + 296) = 1;
  }

  return result;
}

void TrafficDescriptor::~TrafficDescriptor(void **this)
{
  if (*(this + 296) == 1 && *(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  if (*(this + 176) == 1 && *(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 136) == 1 && *(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t TrafficDescriptor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    v4 = *(a2 + 4);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 4) = v4;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 16), (a2 + 16));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 48), (a2 + 48));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 80), (a2 + 80));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 112), (a2 + 112));
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 146) = *(a2 + 146);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 152), (a2 + 152));
    if (*(a1 + 208) == *(a2 + 208))
    {
      if (*(a1 + 208))
      {
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 204) = *(a2 + 204);
        *(a1 + 184) = *(a2 + 184);
      }
    }

    else if (*(a1 + 208))
    {
      *(a1 + 208) = 0;
    }

    else
    {
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 204) = *(a2 + 204);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 208) = 1;
    }

    v5 = *(a2 + 214);
    *(a1 + 212) = *(a2 + 212);
    *(a1 + 214) = v5;
    if (*(a1 + 220) == *(a2 + 220))
    {
      if (*(a1 + 220))
      {
        *(a1 + 216) = *(a2 + 216);
      }
    }

    else if (*(a1 + 220))
    {
      *(a1 + 220) = 0;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 220) = 1;
    }

    v6 = *(a2 + 222);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 222) = v6;
    v7 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v7;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 240), (a2 + 240));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 272), (a2 + 272));
  }

  return a1;
}

{
  if (a1 != a2)
  {
    *a1 = *a2;
    v4 = *(a2 + 4);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 4) = v4;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 16, (a2 + 16));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 48, (a2 + 48));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 80, (a2 + 80));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 112, (a2 + 112));
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 146) = *(a2 + 146);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 152, (a2 + 152));
    if (*(a1 + 208) == *(a2 + 208))
    {
      if (*(a1 + 208))
      {
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 204) = *(a2 + 204);
        *(a1 + 184) = *(a2 + 184);
      }
    }

    else if (*(a1 + 208))
    {
      *(a1 + 208) = 0;
    }

    else
    {
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 204) = *(a2 + 204);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 208) = 1;
    }

    v5 = *(a2 + 214);
    *(a1 + 212) = *(a2 + 212);
    *(a1 + 214) = v5;
    if (*(a1 + 220) == *(a2 + 220))
    {
      if (*(a1 + 220))
      {
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 218) = *(a2 + 218);
      }
    }

    else if (*(a1 + 220))
    {
      *(a1 + 220) = 0;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 220) = 1;
    }

    v6 = *(a2 + 222);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 222) = v6;
    v7 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v7;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 240, (a2 + 240));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 272, (a2 + 272));
  }

  return a1;
}

uint64_t TrafficDescriptor::hasTrafficInfo(TrafficDescriptor *this)
{
  if (*(this + 176) == 1)
  {
    if ((*(this + 175) & 0x8000000000000000) != 0)
    {
      if (*(this + 20))
      {
        goto LABEL_17;
      }
    }

    else if (*(this + 175))
    {
      goto LABEL_17;
    }
  }

  if (*(this + 208) == 1)
  {
    v1 = 4;
    if (*(this + 50) == 30)
    {
      v1 = 16;
    }

    if (*(this + 184))
    {
      goto LABEL_17;
    }

    v2 = 0;
    while (v1 - 1 != v2)
    {
      if (*(this + v2++ + 185))
      {
        if (v2 < v1)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  if ((*(this + 214) & 1) == 0 && (*(this + 220) & 1) == 0 && (*(this + 224) & 1) == 0)
  {
    v4 = *(this + 232);
    return v4 & 1;
  }

LABEL_17:
  v4 = 1;
  return v4 & 1;
}

uint64_t TrafficDescriptor::hasIPTupleInfo(TrafficDescriptor *this)
{
  if (*(this + 176) == 1)
  {
    if ((*(this + 175) & 0x8000000000000000) != 0)
    {
      if (*(this + 20))
      {
        goto LABEL_15;
      }
    }

    else if (*(this + 175))
    {
      goto LABEL_15;
    }
  }

  if (*(this + 208) == 1)
  {
    v1 = 4;
    if (*(this + 50) == 30)
    {
      v1 = 16;
    }

    if (*(this + 184))
    {
      goto LABEL_15;
    }

    v2 = 0;
    while (v1 - 1 != v2)
    {
      if (*(this + v2++ + 185))
      {
        if (v2 < v1)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  if ((*(this + 214) & 1) == 0)
  {
    v4 = *(this + 220);
    return v4 & 1;
  }

LABEL_15:
  v4 = 1;
  return v4 & 1;
}

BOOL TrafficDescriptor::hasAppInfo(TrafficDescriptor *this)
{
  if (*(this + 40) == 1)
  {
    if ((*(this + 39) & 0x8000000000000000) != 0)
    {
      if (*(this + 3))
      {
        return 1;
      }
    }

    else if (*(this + 39))
    {
      return 1;
    }
  }

  return TrafficDescriptor::hasBundleInfo(this);
}

BOOL TrafficDescriptor::hasBundleInfo(TrafficDescriptor *this)
{
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, this + 3);
  hasBundleInfo = TrafficDescriptor::hasBundleInfo(&__p);
  if (v4 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return hasBundleInfo;
}

BOOL TrafficDescriptor::hasBundleInfo(uint64_t *a1)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      if (*(a1 + 23) != 7)
      {
        return 1;
      }

      return *a1 != *"unknown" || *(a1 + 3) != *"nown";
    }

    return 0;
  }

  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  if (v1 != 7)
  {
    return 1;
  }

  a1 = *a1;
  return *a1 != *"unknown" || *(a1 + 3) != *"nown";
}

uint64_t TrafficDescriptor::isXR(TrafficDescriptor *this)
{
  if (*(this + 145) == 1)
  {
    v1 = *(this + 144);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t TrafficDescriptor::notXR(TrafficDescriptor *this)
{
  if (*(this + 145) == 1)
  {
    v1 = *(this + 144) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL TrafficDescriptor::hasAppCategoryInfo(TrafficDescriptor *this)
{
  if (*(this + 104) != 1)
  {
    return 0;
  }

  v1 = *(this + 103);
  if (v1 < 0)
  {
    v1 = *(this + 11);
  }

  return v1 != 0;
}

BOOL TrafficDescriptor::hasAccountInfo(TrafficDescriptor *this)
{
  if (*(this + 136) != 1)
  {
    return 0;
  }

  v1 = *(this + 135);
  if (v1 < 0)
  {
    v1 = *(this + 15);
  }

  return v1 != 0;
}

BOOL TrafficDescriptor::hasDnnInfo(TrafficDescriptor *this)
{
  if (*(this + 264) != 1)
  {
    return 0;
  }

  v1 = this + 240;
  if ((*(this + 263) & 0x80000000) == 0)
  {
    if (*(this + 263))
    {
      if (*(this + 263) != 1)
      {
        return 1;
      }

      return *v1 != 42;
    }

    return 0;
  }

  v2 = *(this + 31);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    v1 = *v1;
    return *v1 != 42;
  }

  return 1;
}

BOOL TrafficDescriptor::hasRsDnnInfo(TrafficDescriptor *this)
{
  if (*(this + 296) != 1)
  {
    return 0;
  }

  v1 = this + 272;
  if ((*(this + 295) & 0x80000000) == 0)
  {
    if (*(this + 295))
    {
      if (*(this + 295) != 1)
      {
        return 1;
      }

      return *v1 != 42;
    }

    return 0;
  }

  v2 = *(this + 35);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    v1 = *v1;
    return *v1 != 42;
  }

  return 1;
}

BOOL TrafficDescriptor::empty(TrafficDescriptor *this)
{
  if (TrafficDescriptor::hasTrafficInfo(this))
  {
    return 0;
  }

  if (*(this + 40) == 1)
  {
    if ((*(this + 39) & 0x8000000000000000) == 0)
    {
      if (!*(this + 39))
      {
        goto LABEL_7;
      }

      return 0;
    }

    if (*(this + 3))
    {
      return 0;
    }
  }

LABEL_7:
  if (TrafficDescriptor::hasBundleInfo(this) || TrafficDescriptor::hasDnnInfo(this))
  {
    return 0;
  }

  if (*(this + 136) != 1)
  {
    return 1;
  }

  v3 = *(this + 135);
  if (v3 < 0)
  {
    v3 = *(this + 15);
  }

  return v3 == 0;
}

BOOL TrafficDescriptor::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208) == 1)
  {
    if (!*(a2 + 208) || !CSIPacketAddress::fullMatch((a1 + 184), (a2 + 184)))
    {
      return 0;
    }
  }

  else if (*(a2 + 208))
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 == v5 && v4 != 0)
  {
    v4 = *(a1 + 4);
    v5 = *(a2 + 4);
  }

  if (v4 != v5 || !std::operator==[abi:ne200100]<std::string,std::string>((a1 + 16), (a2 + 16)) || !std::operator==[abi:ne200100]<std::string,std::string>((a1 + 48), (a2 + 48)) || !std::operator==[abi:ne200100]<std::string,std::string>((a1 + 80), (a2 + 80)) || !std::operator==[abi:ne200100]<std::string,std::string>((a1 + 112), (a2 + 112)))
  {
    return 0;
  }

  v7 = *(a1 + 145);
  v8 = *(a2 + 145);
  if (v7 == v8 && *(a1 + 145))
  {
    v7 = *(a1 + 144);
    v8 = *(a2 + 144);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a1 + 147);
  v10 = *(a2 + 147);
  if (v9 == v10 && *(a1 + 147))
  {
    v9 = *(a1 + 146);
    v10 = *(a2 + 146);
  }

  if (v9 != v10 || !std::operator==[abi:ne200100]<std::string,std::string>((a1 + 152), (a2 + 152)))
  {
    return 0;
  }

  v11 = *(a1 + 214);
  v12 = *(a2 + 214);
  if (v11 == v12 && *(a1 + 214))
  {
    v11 = *(a1 + 212);
    v12 = *(a2 + 212);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v13 = *(a1 + 220);
  v14 = *(a2 + 220);
  if (v13 == v14 && *(a1 + 220))
  {
    if (*(a1 + 216) == *(a2 + 216))
    {
      v13 = *(a1 + 218);
      v14 = *(a2 + 218);
      goto LABEL_34;
    }

    return 0;
  }

LABEL_34:
  if (v13 != v14)
  {
    return 0;
  }

  v15 = *(a1 + 224);
  v16 = *(a2 + 224);
  if (v15 == v16 && *(a1 + 224))
  {
    v15 = *(a1 + 222);
    v16 = *(a2 + 222);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v17 = *(a1 + 232);
  v18 = *(a2 + 232);
  if (v17 == v18 && *(a1 + 232))
  {
    v17 = *(a1 + 228);
    v18 = *(a2 + 228);
  }

  if (v17 != v18 || !std::operator==[abi:ne200100]<std::string,std::string>((a1 + 240), (a2 + 240)))
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<std::string,std::string>((a1 + 272), (a2 + 272));
}

BOOL std::operator==[abi:ne200100]<std::string,std::string>(void *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  v3 = v2 == a2[24];
  if (v2 == a2[24] && v2 != 0)
  {
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = a2[23];
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v6 == v7)
    {
      if (v5 < 0)
      {
        a1 = *a1;
      }

      v9 = *a2;
      if (v8 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v6) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

BOOL TrafficDescriptor::equalsTraffic(TrafficDescriptor *this, const TrafficDescriptor *a2)
{
  if (*(this + 208) == 1)
  {
    if (!*(a2 + 208) || !CSIPacketAddress::fullMatch((this + 184), (a2 + 184)))
    {
      return 0;
    }
  }

  else if (*(a2 + 208))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<std::string,std::string>(this + 10, a2 + 80);
  if (!result)
  {
    return result;
  }

  result = std::operator==[abi:ne200100]<std::string,std::string>(this + 14, a2 + 112);
  if (!result)
  {
    return result;
  }

  v5 = *(this + 147);
  v6 = *(a2 + 147);
  if (v5 == v6 && *(this + 147))
  {
    v5 = *(this + 146);
    v6 = *(a2 + 146);
  }

  if (v5 != v6)
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<std::string,std::string>(this + 19, a2 + 152);
  if (!result)
  {
    return result;
  }

  v7 = *(this + 214);
  v8 = *(a2 + 214);
  if (v7 == v8 && *(this + 214))
  {
    v7 = *(this + 106);
    v8 = *(a2 + 106);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(this + 220);
  v10 = *(a2 + 220);
  if (v9 != v10 || !*(this + 220))
  {
    if (v9 == v10)
    {
      goto LABEL_24;
    }

    return 0;
  }

  result = 0;
  if (*(this + 108) != *(a2 + 108) || *(this + 109) != *(a2 + 109))
  {
    return result;
  }

LABEL_24:
  v11 = *(this + 224);
  v12 = *(a2 + 224);
  if (v11 == v12 && *(this + 224))
  {
    v11 = *(this + 111);
    v12 = *(a2 + 111);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v13 = *(a2 + 232);
  v14 = *(this + 232);
  result = v14 == v13;
  if (v14 == v13)
  {
    if (*(this + 232))
    {
      return *(this + 57) == *(a2 + 57);
    }
  }

  return result;
}

uint64_t TrafficDescriptor::operator<(uint64_t a1, uint64_t a2)
{
  if (TrafficDescriptor::operator==(a1, a2))
  {
    return 0;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 > *a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5 == 1 && (v6 & 1) != 0)
  {
    v7 = *(a1 + 4);
    v8 = *(a2 + 4);
    if (v7 < v8)
    {
      return 1;
    }

    if (v7 != v8)
    {
      return 0;
    }
  }

  else
  {
    result = (v5 ^ 1) & v6;
    if (v5 & 1) != 0 || (v6)
    {
      return result;
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9 == 1 && (v10 & 1) != 0)
  {
    v11 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 16), (a2 + 16));
  }

  else
  {
    if (((v9 ^ 1) & v10) != 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if ((v9 ^ 1) != ((v9 ^ 1) & v10))
    {
      goto LABEL_23;
    }
  }

  if (v11 < 0)
  {
    return 1;
  }

  v10 = *(a2 + 40);
  LOBYTE(v9) = *(a1 + 40);
LABEL_23:
  if (v9 & 1) != 0 && (v10)
  {
    v12 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 16), (a2 + 16));
    goto LABEL_30;
  }

  v13 = (v9 & 1) == 0;
  v14 = v13 & v10;
  if (v14)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v13 == v14)
  {
LABEL_30:
    if (v12 > 0)
    {
      return 0;
    }
  }

  if ((std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 48, a2 + 48) & 0x80) != 0)
  {
    return 1;
  }

  if (std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 48, a2 + 48) > 0)
  {
    return 0;
  }

  if ((std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 80, a2 + 80) & 0x80) != 0)
  {
    return 1;
  }

  if (std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 80, a2 + 80) > 0)
  {
    return 0;
  }

  if ((std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 112, a2 + 112) & 0x80) != 0)
  {
    return 1;
  }

  if (std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 112, a2 + 112) > 0)
  {
    return 0;
  }

  v15 = *(a1 + 145);
  v16 = *(a2 + 145);
  if (v15 == 1 && (v16 & 1) != 0)
  {
    v17 = *(a1 + 144);
    v18 = *(a2 + 144);
    if (v17 < v18)
    {
      return 1;
    }

    if (v17 != v18)
    {
      return 0;
    }
  }

  else
  {
    result = (v15 ^ 1) & v16;
    if (v15 & 1) != 0 || (v16)
    {
      return result;
    }
  }

  v19 = *(a1 + 147);
  v20 = *(a2 + 147);
  if (v19 == 1 && (v20 & 1) != 0)
  {
    v21 = *(a1 + 146);
    v22 = *(a2 + 146);
    if (v21 < v22)
    {
      return 1;
    }

    if (v21 != v22)
    {
      return 0;
    }
  }

  else
  {
    result = (v19 ^ 1) & v20;
    if (v19 & 1) != 0 || (v20)
    {
      return result;
    }
  }

  if ((std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 152, a2 + 152) & 0x80) != 0)
  {
    return 1;
  }

  if (std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 152, a2 + 152) > 0)
  {
    return 0;
  }

  if (*(a2 + 208) == 1)
  {
    if (!*(a1 + 208) || (CSIPacketAddress::operator<((a1 + 184), (a2 + 184)) & 1) != 0)
    {
      return 1;
    }

    if (CSIPacketAddress::operator<((a2 + 184), (a1 + 184)))
    {
      return 0;
    }
  }

  else if (*(a1 + 208))
  {
    return 0;
  }

  v23 = *(a1 + 214);
  v24 = *(a2 + 214);
  if (v23 == 1 && (v24 & 1) != 0)
  {
    v25 = *(a1 + 212);
    v26 = *(a2 + 212);
    if (v25 < v26)
    {
      return 1;
    }

    if (v25 != v26)
    {
      return 0;
    }
  }

  else
  {
    result = (v23 ^ 1) & v24;
    if (v23 & 1) != 0 || (v24)
    {
      return result;
    }
  }

  v27 = std::operator<=>[abi:ne200100]<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>>((a1 + 216), (a2 + 216));
  if (v27 < 0)
  {
    return 1;
  }

  if (v27)
  {
    return 0;
  }

  v28 = *(a1 + 224);
  v29 = *(a2 + 224);
  if (v28 == 1 && (v29 & 1) != 0)
  {
    v30 = *(a1 + 222);
    v31 = *(a2 + 222);
    if (v30 < v31)
    {
      return 1;
    }

    if (v30 != v31)
    {
      return 0;
    }
  }

  else
  {
    result = (v28 ^ 1) & v29;
    if (v28 & 1) != 0 || (v29)
    {
      return result;
    }
  }

  v32 = *(a1 + 232);
  v33 = *(a2 + 232);
  if (v32 == 1 && (v33 & 1) != 0)
  {
    v34 = *(a1 + 228);
    v35 = *(a2 + 228);
    if (v34 < v35)
    {
      return 1;
    }

    if (v34 != v35)
    {
      return 0;
    }

    goto LABEL_82;
  }

  result = (v32 ^ 1) & v33;
  if ((v32 & 1) == 0 && (v33 & 1) == 0)
  {
LABEL_82:
    if ((std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 240, a2 + 240) & 0x80) != 0)
    {
      return 1;
    }

    if (std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 240, a2 + 240) <= 0)
    {
      if ((std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 272, a2 + 272) & 0x80) == 0)
      {
        std::operator<=>[abi:ne200100]<std::string,std::string>(a1 + 272, a2 + 272);
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t std::operator<=>[abi:ne200100]<std::string,std::string>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 == 1 && (v3 & 1) != 0)
  {
    return std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2);
  }

  if (((v2 ^ 1) & v3) != 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if ((v3 | v2))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t std::operator<=>[abi:ne200100]<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 1 && (v3 & 1) != 0)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = v4 == v5;
    if (v4 < v5)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = 1;
    }

    if (v6)
    {
      v8 = a1[1];
      v9 = a2[1];
      v10 = v8 == v9;
      if (v8 < v9)
      {
        LODWORD(v7) = -1;
      }

      else
      {
        LODWORD(v7) = 1;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    if (((v2 ^ 1) & v3) != 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if ((v3 | v2))
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t TrafficDescriptor::toString@<X0>(TrafficDescriptor *this@<X0>, _BYTE *a2@<X8>)
{
  v70 = 0;
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  *v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v63 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v63);
  if (*(this + 72) == 1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "bundleId:", 9);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 104) == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "appCategory:", 12);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 136) == 1)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "accountId:", 10);
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 145) == 1)
  {
    if (*(this + 144))
    {
      v16 = "XR ";
    }

    else
    {
      v16 = "!XR ";
    }

    if (*(this + 144))
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, v16, v17);
  }

  if (*(this + 176) == 1)
  {
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "host:", 5);
    v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 40) == 1)
  {
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "effectiveApp:", 13);
    v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 8) == 1)
  {
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "pid:", 4);
    if (*(this + 8) == 1)
    {
      std::to_string(&__p, *(this + 1));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 264) == 1)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "dnn:", 4);
    v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v32 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 296) == 1)
  {
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "rsDnn:", 6);
    v35 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v36 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 208) == 1)
  {
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "address:", 8);
    if ((*(this + 208) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v39 = v38;
    CSIPacketAddress::operator std::string(this + 46, &__p);
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

    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 214) == 1)
  {
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "port:", 5);
    if (*(this + 214) == 1)
    {
      std::to_string(&__p, *(this + 106));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v44 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v45 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 220) == 1)
  {
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "port begin:", 11);
    if (*(this + 220) != 1 || (v48 = MEMORY[0x2383CBD40](v47, *(this + 108)), v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " port end:", 10), (*(this + 220) & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v50 = MEMORY[0x2383CBD40](v49, *(this + 109));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " ", 1);
  }

  if (*(this + 224) == 1)
  {
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "ipProtocol:", 11);
    if (*(this + 224) == 1)
    {
      std::to_string(&__p, *(this + 111));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v52 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v53 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 232) == 1)
  {
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "trafficClass:", 13);
    if (*(this + 232) == 1)
    {
      std::to_string(&__p, *(this + 57));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v56 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v57 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "o: ", 3);
  MEMORY[0x2383CBD30](v59, *this);
  std::stringbuf::str[abi:ne200100](a2, &v64 + 8);
  *&v63 = *MEMORY[0x277D82818];
  v60 = *(MEMORY[0x277D82818] + 72);
  *(&v63 + *(v63 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v64 = v60;
  *(&v64 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[1]);
  }

  *(&v64 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v69);
}

void anonymous namespace::asString<std::string>(std::string *a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a2;
      a1->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "null");
  }
}

void *operator<<(void *a1, TrafficDescriptor *this)
{
  TrafficDescriptor::toString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_23748AD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TrafficDescriptor::toKey@<X0>(TrafficDescriptor *this@<X0>, _BYTE *a2@<X8>)
{
  v55 = 0;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  *v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v48 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v48);
  if (*(this + 176) == 1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "host:", 5);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 40) == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "effectiveApp:", 13);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 8) == 1)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "pid:", 4);
    if (*(this + 8) == 1)
    {
      std::to_string(&__p, *(this + 1));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 136) == 1)
  {
    if ((*(this + 135) & 0x8000000000000000) != 0)
    {
      if (!*(this + 15))
      {
        goto LABEL_44;
      }
    }

    else if (!*(this + 135))
    {
      goto LABEL_44;
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "accountId:", 10);
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

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_44:
  if (*(this + 208) == 1)
  {
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "address:", 8);
    if ((*(this + 208) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v21 = v20;
    CSIPacketAddress::operator std::string(this + 46, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = __p.__r_.__value_.__l.__size_;
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 214) == 1)
  {
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "port:", 5);
    if (*(this + 214) == 1)
    {
      std::to_string(&__p, *(this + 106));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 220) == 1)
  {
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "port begin:", 11);
    if (*(this + 220) != 1 || (v30 = MEMORY[0x2383CBD40](v29, *(this + 108)), v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " port end:", 10), (*(this + 220) & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v32 = MEMORY[0x2383CBD40](v31, *(this + 109));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " ", 1);
  }

  if (*(this + 224) == 1)
  {
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "ipProtocol:", 11);
    if (*(this + 224) == 1)
    {
      std::to_string(&__p, *(this + 111));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v34 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v35 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 232) == 1)
  {
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "trafficClass:", 13);
    if (*(this + 232) == 1)
    {
      std::to_string(&__p, *(this + 57));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v38 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 147) == 1)
  {
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "callKitUdp:", 11);
    if (*(this + 147) == 1)
    {
      std::to_string(&__p, *(this + 146));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "null");
    }

    v42 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v43 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " ", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str[abi:ne200100](a2, &v49 + 8);
  *&v48 = *MEMORY[0x277D82818];
  v45 = *(MEMORY[0x277D82818] + 72);
  *(&v48 + *(v48 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v49 = v45;
  *(&v49 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[1]);
  }

  *(&v49 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v50);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v54);
}

BOOL IPCContextConfig::operator==(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && (v2 = a1[2], v2 == a2[3]))
  {
    return a1[3] == v2;
  }

  else
  {
    return 0;
  }
}

BOOL IPCContextConfig::operator!=(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && (v2 = a1[2], v2 == a2[3]))
  {
    return a1[3] != v2;
  }

  else
  {
    return 1;
  }
}

BOOL IPCConfigSet::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6) && *(v7 + 7) == *(v6 + 7) && v7[4] == v6[4] && *(v7 + 10) == *(v6 + 10);
}

uint64_t UrspTrafficDescriptor::toString@<X0>(UrspTrafficDescriptor *this@<X0>, _BYTE *a2@<X8>)
{
  v64 = 0;
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  *v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  v57 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v57);
  if (*this == 1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, " matchAll:true", 14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  }

  v5 = *(this + 1);
  for (i = *(this + 2); v5 != i; v5 += 24)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "dnn:", 4);
    v8 = *(v5 + 23);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = *v5;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
  }

  v12 = *(this + 4);
  for (j = *(this + 5); v12 != j; v12 += 24)
  {
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "appId:", 6);
    v15 = *(v12 + 23);
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = *v12;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
  }

  v19 = *(this + 7);
  for (k = *(this + 8); v19 != k; v19 += 6)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "address:", 8);
    CSIPacketAddress::operator std::string(v19, __p);
    if ((v56 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v56 & 0x80u) == 0)
    {
      v23 = v56;
    }

    else
    {
      v23 = __p[1];
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v25 = *(this + 10);
  for (m = *(this + 11); v25 != m; ++v25)
  {
    v27 = *v25;
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "protocolId:", 11);
    LOBYTE(__p[0]) = v27;
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, __p, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " ", 1);
  }

  v30 = *(this + 13);
  for (n = *(this + 14); v30 != n; ++v30)
  {
    v32 = *v30;
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "port:", 5);
    v34 = MEMORY[0x2383CBD40](v33, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
  }

  v35 = *(this + 16);
  for (ii = *(this + 17); v35 != ii; v35 += 2)
  {
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "port begin:", 11);
    v38 = MEMORY[0x2383CBD40](v37, *v35);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " port end:", 10);
    v40 = MEMORY[0x2383CBD40](v39, v35[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " ", 1);
  }

  v41 = *(this + 19);
  for (jj = *(this + 20); v41 != jj; v41 += 24)
  {
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "fqdn:", 5);
    v44 = *(v41 + 23);
    if (v44 >= 0)
    {
      v45 = v41;
    }

    else
    {
      v45 = *v41;
    }

    if (v44 >= 0)
    {
      v46 = *(v41 + 23);
    }

    else
    {
      v46 = *(v41 + 8);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " ", 1);
  }

  v48 = *(this + 22);
  for (kk = *(this + 23); v48 != kk; ++v48)
  {
    v50 = *v48;
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "connCap:", 8);
    v52 = MEMORY[0x2383CBD20](v51, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " ", 1);
  }

  std::stringbuf::str[abi:ne200100](a2, &v58 + 8);
  *&v57 = *MEMORY[0x277D82818];
  v53 = *(MEMORY[0x277D82818] + 72);
  *(&v57 + *(v57 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v58 = v53;
  *(&v58 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[1]);
  }

  *(&v58 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v59);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v63);
}

uint64_t RouteSelectionDescriptor::toString@<X0>(RouteSelectionDescriptor *this@<X0>, _BYTE *a2@<X8>)
{
  v52 = 0;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  *__p = 0u;
  v49 = 0u;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v45 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v45);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "precedence:", 11);
  std::to_string(&v44, *this);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v44;
  }

  else
  {
    v5 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (*(this + 2) == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "sscMmode:", 9);
    if ((*(this + 2) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v9 = v8;
    std::to_string(&v44, *(this + 1));
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v44;
    }

    else
    {
      v10 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v44.__r_.__value_.__l.__size_;
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  v13 = *(this + 1);
  for (i = *(this + 2); v13 != i; v13 += 24)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "snssai-sst:", 11);
    std::to_string(&v44, *v13);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v44;
    }

    else
    {
      v16 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v44.__r_.__value_.__l.__size_;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v13[8] == 1)
    {
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "sd:", 3);
      if ((v13[8] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v20 = v19;
      std::to_string(&v44, *(v13 + 1));
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v44;
      }

      else
      {
        v21 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v44.__r_.__value_.__l.__size_;
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ", 1);
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }
    }
  }

  v24 = *(this + 4);
  for (j = *(this + 5); v24 != j; v24 += 24)
  {
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "dnn:", 4);
    v27 = *(v24 + 23);
    if (v27 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = *v24;
    }

    if (v27 >= 0)
    {
      v29 = *(v24 + 23);
    }

    else
    {
      v29 = *(v24 + 8);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ", 1);
  }

  if (*(this + 57))
  {
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "pduType:", 8);
    if ((*(this + 57) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v32 = v31;
    std::to_string(&v44, *(this + 56));
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v44;
    }

    else
    {
      v33 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v44.__r_.__value_.__l.__size_;
    }

    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " ", 1);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 59) == 1)
  {
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "accessType:", 11);
    if ((*(this + 59) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v37 = v36;
    std::to_string(&v44, *(this + 58));
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v44;
    }

    else
    {
      v38 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v44.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 60) == 1)
  {
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "multiAccPref:true", 17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " ", 1);
  }

  if (*(this + 61) == 1)
  {
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "nonSeamLessOffld:true", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " ", 1);
  }

  std::stringbuf::str[abi:ne200100](a2, &v46 + 8);
  *&v45 = *MEMORY[0x277D82818];
  v42 = *(MEMORY[0x277D82818] + 72);
  *(&v45 + *(v45 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v46 = v42;
  *(&v46 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v46 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v47);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v51);
}

void sub_23748C138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

void CIPFamily::CIPFamily(CIPFamily *this, const CIPFamily *a2)
{
  *this = &unk_284A73EA0;
  v2 = *(a2 + 2);
  *(this + 12) = *(a2 + 12);
  *(this + 2) = v2;
}

{
  *this = &unk_284A73EA0;
  v2 = *(a2 + 2);
  *(this + 12) = *(a2 + 12);
  *(this + 2) = v2;
}

uint64_t CIPFamily::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

void *operator<<(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x2383CBD20](a1, *(a2 + 8));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(def:", 5);
  v5 = MEMORY[0x2383CBD10](v4, *(a2 + 12));

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ")", 1);
}

_BYTE *CIPFamily::asString@<X0>(CIPFamily *this@<X0>, _BYTE *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  v3 = "";
  if (*(this + 12))
  {
    v3 = " def";
  }

  snprintf(__str, 0x64uLL, "0x%x%s", *(this + 2), v3);
  result = std::string::basic_string[abi:ne200100]<0>(a2, __str);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t anonymous namespace::sAdjustFilter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    return 0;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, a2);
  if (v10 != 1)
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  CSIPacketAddress::CSIPacketAddress(v11, &__p);
  v3 = 4;
  if (v12 == 30)
  {
    v3 = 16;
  }

  if (LOBYTE(v11[0]))
  {
LABEL_6:
    if (v12 == 30 || v12 == 2)
    {
      if (v12 == 2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 41;
      }

      *(a1 + 28) = v4;
      v5 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = 0;
    while (v3 - 1 != v7)
    {
      if (*(v11 + ++v7))
      {
        if (v7 < v3)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v5 = 0;
LABEL_19:
  if ((v10 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}