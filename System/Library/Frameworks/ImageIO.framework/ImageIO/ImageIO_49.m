void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(result, a2);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::Size(AdobeXMPCore_Int::ConfigurableImpl *this)
{
  memset(v6, 0, sizeof(v6));
  (*(*(this + *(*this - 304)) + 256))(&v4, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v2 = *(this + 3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
  return v2;
}

void sub_18614FEE8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::GetDataType(AdobeXMPCore_Int::ConfigurableImpl *this, const unint64_t *a2)
{
  v3 = (*(*(this + *(*this - 304)) + 208))(this + *(*this - 304), a2);
  v4 = v3;
  if (*(this + 48) == 1)
  {
    v5 = v3.i32[0] >> 8;
    v6 = v3.u8[2];
    v7 = v3.u8[3];
    v8 = HIDWORD(*&v3);
    v9 = *&v3 >> 40;
    v10 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v3, 0xBFBFBFBFBFBFBFBFLL));
    v11 = HIWORD(*&v3);
    if (v10.i8[0])
    {
      v12 = v3.i8[0] | 0x20;
    }

    else
    {
      v12 = v3.i8[0];
    }

    if (v10.i8[1])
    {
      LOBYTE(v5) = v3.i8[1] | 0x20;
    }

    if (v10.i8[2])
    {
      v6 = v3.i8[2] | 0x20;
    }

    if (v10.i8[3])
    {
      v7 = v3.i8[3] | 0x20;
    }

    if (v10.i8[4])
    {
      LOBYTE(v8) = v3.i8[4] | 0x20;
    }

    if (v10.i8[5])
    {
      LOBYTE(v9) = v3.i8[5] | 0x20;
    }

    if (v10.i8[6])
    {
      LOBYTE(v11) = v3.i8[6] | 0x20;
    }

    if (v10.i8[7])
    {
      v13 = v3.u8[7] | 0x20u;
    }

    else
    {
      v13 = HIBYTE(*&v3);
    }

    v4 = (v11 << 48) | (v13 << 56) | (v9 << 40) | (v8 << 32) | (v7 << 24) | (v6 << 16) | (v5 << 8) | v12;
  }

  memset(v25, 0, sizeof(v25));
  (*(*(this + *(*this - 304)) + 256))(&v23, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v25, &v23, 0);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  v16 = *(this + 2);
  v15 = this + 16;
  v14 = v16;
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = v15;
  do
  {
    v18 = *(v14 + 4);
    v19 = v18 >= v4;
    v20 = v18 < v4;
    if (v19)
    {
      v17 = v14;
    }

    v14 = *&v14[8 * v20];
  }

  while (v14);
  if (v17 != v15 && v4 >= *(v17 + 4))
  {
    v21 = *(v17 + 10);
  }

  else
  {
LABEL_31:
    v21 = 0;
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v25);
  return v21;
}

void sub_186150164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ConfigurableImpl::SetAllowedKeys(AdobeXMPCore_Int::ConfigurableImpl *this, unint64_t *a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  (*(*(this + *(*this - 304)) + 256))(&v7, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v9, &v7, 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__tree<unsigned long long>::destroy(*(this + 4), *(v6 + 8));
    MEMORY[0x186602850](v6, 0x1020C4062D53EE8);
    *(this + 4) = 0;
  }

  if (a2 && a3)
  {
    operator new();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v9);
}

void sub_18615044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ConfigurableImpl::SetAllowedValueTypesForKeys(char *a1, uint64_t a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  (*(*&a1[*(*a1 - 304)] + 256))(&v7, &a1[*(*a1 - 304)]);
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v9, &v7, 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v6 = *(a1 + 5);
  if (v6)
  {
    std::__tree<unsigned long long>::destroy(*(a1 + 5), *(v6 + 8));
    MEMORY[0x186602850](v6, 0x1020C4062D53EE8);
    *(a1 + 5) = 0;
  }

  if (a2 && a3)
  {
    operator new();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v9);
}

void sub_186150744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(AdobeXMPCore_Int::ConfigurableImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 304)) = a2[1];
  *(this + *(*this - 216)) = a2[2];
  v4 = *(this + 4);
  if (v4)
  {
    std::__tree<unsigned long long>::destroy(*(this + 4), *(v4 + 8));
    MEMORY[0x186602850](v4, 0x1020C4062D53EE8);
    *(this + 4) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    std::__tree<unsigned long long>::destroy(*(this + 5), *(v5 + 8));
    MEMORY[0x186602850](v5, 0x1020C4062D53EE8);
    *(this + 5) = 0;
  }

  std::__tree<unsigned long long>::destroy(this + 8, *(this + 2));
}

void AdobeXMPCore_Int::NotifyError<BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      AdobeXMPCore_Int::NotifyError<BOOL,char const*>();
    }

    if (a6 == 16)
    {
      v9 = *a7;

      AdobeXMPCore_Int::NotifyError<BOOL,double>(v9);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:

        AdobeXMPCore_Int::NotifyError<BOOL,BOOL>();
      case 2:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<BOOL,unsigned long long>(a1, a2, a3, a4, a5, a6, v8);
      case 4:
        v7 = *a7;

        AdobeXMPCore_Int::NotifyError<BOOL,long long>(a1, a2, a3, a4, a5, a6, v7);
    }
  }

  AdobeXMPCore_Int::NotifyError<BOOL,void *>();
}

void AdobeXMPCore_Int::NotifyError<char const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      AdobeXMPCore_Int::NotifyError<char const*,char const*>();
    }

    if (a6 == 16)
    {
      v9 = *a7;

      AdobeXMPCore_Int::NotifyError<char const*,double>(v9);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:

        AdobeXMPCore_Int::NotifyError<char const*,BOOL>();
      case 2:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<char const*,unsigned long long>(a1, a2, a3, a4, a5, a6, v8);
      case 4:
        v7 = *a7;

        AdobeXMPCore_Int::NotifyError<char const*,long long>(a1, a2, a3, a4, a5, a6, v7);
    }
  }

  AdobeXMPCore_Int::NotifyError<char const*,void *>();
}

void AdobeXMPCore_Int::NotifyError<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      AdobeXMPCore_Int::NotifyError<unsigned long long,char const*>(a1, a2, a3, a4, a5);
    }

    if (a6 == 16)
    {
      v9 = *a7;

      AdobeXMPCore_Int::NotifyError<unsigned long long,double>(v9, a1, a2, a3, a4, a5);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:

        AdobeXMPCore_Int::NotifyError<unsigned long long,BOOL>(a1, a2, a3, a4, a5);
      case 2:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<unsigned long long,unsigned long long>(a1, a2, a3, a4, a5, a6, v8);
      case 4:
        v7 = *a7;

        AdobeXMPCore_Int::NotifyError<unsigned long long,long long>(a1, a2, a3, a4, a5, a6, v7);
    }
  }

  AdobeXMPCore_Int::NotifyError<unsigned long long,void *>(a1, a2, a3, a4, a5);
}

void AdobeXMPCore_Int::NotifyError<long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      AdobeXMPCore_Int::NotifyError<long long,char const*>(a1, a2, a3, a4, a5);
    }

    if (a6 == 16)
    {
      v9 = *a7;

      AdobeXMPCore_Int::NotifyError<long long,double>(v9, a1, a2, a3, a4, a5);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:

        AdobeXMPCore_Int::NotifyError<long long,BOOL>(a1, a2, a3, a4, a5);
      case 2:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<long long,unsigned long long>(a1, a2, a3, a4, a5, a6, v8);
      case 4:
        v7 = *a7;

        AdobeXMPCore_Int::NotifyError<long long,long long>(a1, a2, a3, a4, a5, a6, v7);
    }
  }

  AdobeXMPCore_Int::NotifyError<long long,void *>(a1, a2, a3, a4, a5);
}

void AdobeXMPCore_Int::NotifyError<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, double a7)
{
  if (a5 > 7)
  {
    if (a5 == 8)
    {
      AdobeXMPCore_Int::NotifyError<double,char const*>(a7);
    }

    if (a5 == 16)
    {
      v9 = *a6;

      AdobeXMPCore_Int::NotifyError<double,double>(a7, v9);
    }
  }

  else
  {
    switch(a5)
    {
      case 1:

        AdobeXMPCore_Int::NotifyError<double,BOOL>(a7);
      case 2:
        v8 = *a6;

        AdobeXMPCore_Int::NotifyError<double,unsigned long long>(a7, a1, a2, a3, a4, a5, v8);
      case 4:
        v7 = *a6;

        AdobeXMPCore_Int::NotifyError<double,long long>(a7, a1, a2, a3, a4, a5, v7);
    }
  }

  AdobeXMPCore_Int::NotifyError<double,void *>(a7);
}

void AdobeXMPCore_Int::NotifyError<void *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      AdobeXMPCore_Int::NotifyError<void *,char const*>();
    }

    if (a6 == 16)
    {
      v9 = *a7;

      AdobeXMPCore_Int::NotifyError<void *,double>(v9);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:

        AdobeXMPCore_Int::NotifyError<void *,BOOL>();
      case 2:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<void *,unsigned long long>(a1, a2, a3, a4, a5, a6, v8);
      case 4:
        v7 = *a7;

        AdobeXMPCore_Int::NotifyError<void *,long long>(a1, a2, a3, a4, a5, a6, v7);
    }
  }

  AdobeXMPCore_Int::NotifyError<void *,void *>();
}

void AdobeXMPCore_Int::NotifyError<BOOL,BOOL>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186151220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,char const*>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861518B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186151BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,double>(double a1)
{
  v3 = a1;
  v1 = 0;
  v2 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186151F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,void *>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615228C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,BOOL>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861525D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,char const*>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186152928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186152C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186152FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,double>(double a1)
{
  v3 = a1;
  v1 = 0;
  v2 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615330C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,void *>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186153658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = a5;
  v5 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861539A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = a5;
  v5 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186153CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615402C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615436C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,double>(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a6;
  v8 = a1;
  v6 = 0;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861546B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,void *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = a5;
  v5 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861549F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = a5;
  v5 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186154D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = a5;
  v5 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615508C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861553CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615570C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,double>(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a6;
  v8 = a1;
  v6 = 0;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186155A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,void *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = a5;
  v5 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186155D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,BOOL>(double a1)
{
  v3 = a1;
  v1 = 0;
  v2 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861560E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,char const*>(double a1)
{
  v3 = a1;
  v1 = 0;
  v2 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615642C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,unsigned long long>(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186156770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,long long>(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186156AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,double>(double a1, double a2)
{
  v4 = a2;
  v5 = a1;
  v2 = 0;
  v3 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186156DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,void *>(double a1)
{
  v3 = a1;
  v1 = 0;
  v2 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615713C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,BOOL>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186157484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,char const*>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861577D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186157B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186157E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,double>(double a1)
{
  v3 = a1;
  v1 = 0;
  v2 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861581A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,void *>()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861584F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void AdobeXMPCore_Int::RDFDOMParserImpl::RDFDOMParserImpl(AdobeXMPCore_Int::RDFDOMParserImpl *this)
{
  v2 = (this + 16);
  *this = off_1EF4FA850;
  *(this + 6) = &off_1EF4FA998;
  *(this + 2) = &off_1EF4FA178;
  *(this + 13) = &unk_1EF4FA570;
  *(this + unk_1EF4FA090 + 16) = off_1EF4FA2D0;
  *(this + *(*(this + 2) - 312) + 16) = &off_1EF4FA418;
  *(this + *(*(this + 2) - 320) + 16) = &unk_1EF4FA570;
  AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl(this + 48, off_1EF4F9A08);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = off_1EF4FB0E0;
  AdobeXMPCore_Int::DOMParserImpl::DOMParserImpl(v2, off_1EF4F9940);
}

void sub_186158870(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4F9A20);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(v1, off_1EF4F9A08);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::RDFDOMParserImpl::ParseAsNode(AdobeXMPCore_Int::RDFDOMParserImpl *this, const char *a2)
{
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_186158AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    a13 = 0;
    v18 = *(v15 + 8);
    if (v18)
    {
      if (*(v18 + 24))
      {
        *(v18 + 12) = *(a14 + 364);
      }
    }

    XMPUtils::MapXMPErrorToIError(*v17, &a13 + 1, &a13);
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(AdobeXMPCore_Int::RDFDOMParserImpl *this)
{
  AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl((this + 16), off_1EF4F9940);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 104), off_1EF4F9A20);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 48), off_1EF4F9A08);
}

{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(void *a1)
{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(AdobeXMPCore_Int::RDFDOMParserImpl *this)
{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl(AdobeXMPCore_Int::DOMParserImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 368)) = a2[1];
  *(this + *(*this - 304)) = a2[2];
  *(this + *(*this - 216)) = a2[3];
  *(this + *(*this - 224)) = a2[4];
  *(this + *(*this - 232)) = a2[5];
  *(this + *(*this - 312)) = a2[6];
  *(this + *(*this - 320)) = a2[7];
  *(this + *(*this - 376)) = a2[8];
  *(this + *(*this - 384)) = a2[9];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void sub_186159218(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<XMPMeta>::shared_ptr[abi:fe200100]<XMPMeta,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<XMPMeta *,std::shared_ptr<XMPMeta>::__shared_ptr_default_delete<XMPMeta,XMPMeta>,std::allocator<XMPMeta>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<XMPMeta *,std::shared_ptr<XMPMeta>::__shared_ptr_default_delete<XMPMeta,XMPMeta>,std::allocator<XMPMeta>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XMPMeta *,std::shared_ptr<XMPMeta>::__shared_ptr_default_delete<XMPMeta,XMPMeta>,std::allocator<XMPMeta>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t AdobeXMPCore_Int::IError_I::AppendParameter(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 304);
  v4 = (*(**a2 + 192))();
  v5 = (*(**a2 + 208))();
  v6 = *(*v3 + 128);

  return v6(v3, v4, v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,AdobeXMPCommon::IError_v1::eErrorDomain>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,AdobeXMPCommon::IError_v1::eErrorSeverity>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186159AF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186159AD8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_186159EFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186159EE0);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1*,AdobeXMPCommon::IError_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E4572726F722020, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18615A278(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615A25CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IError_I::setNextError(AdobeXMPCore_Int::IError_I *this, AdobeXMPCommon::IError_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 304);
  AdobeXMPCommon::IError_v1::MakeShared(a2, &v8);
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1*,AdobeXMPCommon::IError_v1,std::shared_ptr<AdobeXMPCommon::IError_v1> const&>(a3, this + v5, AdobeXMPCommon::IError_v1::SetNextError, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IError_I.cpp", 60, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18615A4CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1*,AdobeXMPCommon::IError_v1,std::shared_ptr<AdobeXMPCommon::IError_v1> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6E4572726F722020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18615A654(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615A638);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IError_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void *AdobeXMPCore_Int::IError_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x6E55544638537472)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6E55544638537472, a3, exception);
      }

      return (this + *(*this - 304));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6E4572726F722020, a2, v5);
    }

    return 0;
  }

  return this;
}

void AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(uint64_t a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  v4 = a1;
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  *a3 = 0;
  a3[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::IError_I::CreateClientCodeExceptionError(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::ReportErrorAndContinueABISafe(AdobeXMPCore_Int *this, unsigned int a2, unsigned int a3, unsigned int a4, const char *a5, const AdobeXMPCommon::IError_v1 **a6)
{
  v6 = 0;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615B224(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v16 = *exception_ptr;
    v15 = *(exception_ptr + 1);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    *v12 = v16;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v15);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615B1D4);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateClientCodeExceptionError(&a11);
}

void std::vector<unsigned char>::__vallocate[abi:fe200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

unsigned __int16 *TIFF_MemoryReader::SortIFD(unsigned __int16 *result)
{
  v1 = result;
  v2 = *result;
  if (v2 < 2)
  {
    v6 = *result;
  }

  else
  {
    v3 = *(result + 1);
    v4 = *v3;
    v5 = 1;
    v6 = *result;
    do
    {
      v7 = &v3[6 * v5];
      v8 = *v7;
      if (v8 <= v4)
      {
        if (v8 == v4)
        {
          v9 = v7 - 6;
          v10 = 12 * (v2 - v5);
LABEL_8:
          result = memmove(v9, v7, v10);
          --v6;
          --v5;
        }

        else
        {
          v11 = &v3[6 * v5];
          v12 = 12 * v5 - 12 * v5;
          v13 = &v3[6 * v5];
          v14 = 1;
          while (1)
          {
            v15 = v11;
            v16 = v12;
            if (v5 + --v14 < 1)
            {
              break;
            }

            v11 -= 6;
            v12 += 12;
            v17 = v13 - 6;
            v18 = *(v13 - 6);
            v13 -= 6;
            if (v18 <= v8)
            {
              if (v18 == v8)
              {
                v19 = *v7;
                *(v17 + 2) = *(v7 + 2);
                *v17 = v19;
                v10 = 12 * (v2 - (v5 + 1));
                v9 = &v3[6 * v5];
                v7 = &v3[6 * v5 + 6];
                goto LABEL_8;
              }

              break;
            }
          }

          v20 = *v7;
          v21 = *(v7 + 2);
          result = memmove(v15 + 6, v15, v16);
          *v15 = v20;
          *(v15 + 2) = v21;
        }
      }

      else
      {
        v4 = *v7;
      }

      ++v5;
      v2 = v6;
    }

    while (v5 < v6);
  }

  *v1 = v6;
  return result;
}

BOOL TIFF_MemoryReader::GetIFD(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Invalid IFD requested";
    *(exception + 16) = 0;
  }

  v5 = a1 + 16 * a2;
  if (!a3)
  {
    return *(v5 + 112) != 0;
  }

  v6 = (a3 + 8);
  std::__tree<unsigned long long>::destroy(a3, *(a3 + 8));
  *a3 = v6;
  *(a3 + 16) = 0;
  *v6 = 0;
  v7 = *(v5 + 112);
  if (!*(v5 + 112))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v5 + 120);
    v11 = v10 + v8;
    if (*(v10 + v8 + 2) - 14 >= 0xFFFFFFF3)
    {
      v20 = 0;
      v19 = 0uLL;
      v12 = *(v11 + 2);
      v13 = *(v11 + 4);
      LOWORD(v19) = *v11;
      v14 = kTIFF_TypeSizes[v12];
      WORD1(v19) = v12;
      LODWORD(v20) = v13;
      DWORD1(v19) = v13 / v14;
      if (*(v11 + 4) > 4u)
      {
        v15 = *(a1 + 96) + *(v10 + v8 + 8);
      }

      else
      {
        v15 = v10 + v8 + 8;
      }

      *(&v19 + 1) = v15;
      v21 = &v19;
      v16 = std::__tree<std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_Manager::TagInfo>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a3, &v19);
      *(v16 + 5) = v19;
      *(v16 + 14) = v20;
      v7 = *(v5 + 112);
    }

    ++v9;
    v8 += 12;
  }

  while (v9 < v7);
  return 1;
}

unsigned __int16 *TIFF_MemoryReader::FindTagInIFD(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Invalid IFD requested";
    *(exception + 16) = 0;
  }

  v3 = this + 16 * a2;
  v6 = *(v3 + 56);
  v4 = v3 + 112;
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = *(v4 + 1);
  while (v5 >= 2)
  {
    v8 = v5 >> 1;
    v9 = &v7[6 * (v5 >> 1)];
    v10 = *v9;
    v5 -= v5 >> 1;
    if (v10 > a3)
    {
      v5 = v8;
    }

    else
    {
      v7 += 6 * v8;
    }

    if (v10 == a3)
    {
      v7 = v9;
      break;
    }
  }

  if (*v7 == a3)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *TIFF_MemoryReader::GetValueOffset(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 1) > 4u)
    {
      v6 = *(this + 12);
      v5 = v6 + *(result + 2);
    }

    else
    {
      v5 = result + 8;
      v6 = *(this + 12);
    }

    return (v5 - v6);
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag(TIFF_MemoryReader *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  TagInIFD = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (!TagInIFD)
  {
    return 0;
  }

  v7 = TagInIFD[1];
  v8 = (v7 - 1) < 0xD;
  if (a4 && (v7 - 1) <= 0xC)
  {
    v9 = *(TagInIFD + 1);
    *a4 = *TagInIFD;
    v10 = kTIFF_TypeSizes[v7];
    *(a4 + 2) = v7;
    *(a4 + 4) = v9 / v10;
    *(a4 + 16) = v9;
    if (*(TagInIFD + 1) > 4u)
    {
      v11 = (*(a1 + 12) + *(TagInIFD + 2));
    }

    else
    {
      v11 = TagInIFD + 4;
    }

    *(a4 + 8) = v11;
    return 1;
  }

  return v8;
}

uint64_t TIFF_MemoryReader::GetTag_Integer(uint64_t (**this)(unsigned __int16 *), unsigned int a2, unsigned int a3, unsigned int *a4)
{
  TagInIFD = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (!TagInIFD)
  {
    return 0;
  }

  v7 = TagInIFD[1];
  if (v7 > 0xD)
  {
    return 0;
  }

  v8 = *(TagInIFD + 1);
  if (kTIFF_TypeSizes[TagInIFD[1]] != v8)
  {
    return 0;
  }

  v9 = 0;
  if (TagInIFD[1] > 5u)
  {
    switch(v7)
    {
      case 6u:
        if (v8 > 4)
        {
          v13 = this[12] + *(TagInIFD + 2);
        }

        else
        {
          v13 = (TagInIFD + 4);
        }

        v15 = *v13;
        break;
      case 8u:
        if (v8 > 4)
        {
          v16 = (this[12] + *(TagInIFD + 2));
        }

        else
        {
          v16 = TagInIFD + 4;
        }

        v15 = this[1](v16);
        break;
      case 9u:
        goto LABEL_14;
      default:
        return v9;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 3)
      {
        v11 = this[1];
        goto LABEL_20;
      }

      if (v7 != 4)
      {
        return v9;
      }

LABEL_14:
      v11 = this[2];
LABEL_20:
      if (v8 > 4)
      {
        v14 = (this[12] + *(TagInIFD + 2));
      }

      else
      {
        v14 = TagInIFD + 4;
      }

      v15 = v11(v14);
      goto LABEL_32;
    }

    if (v8 > 4)
    {
      v12 = this[12] + *(TagInIFD + 2);
    }

    else
    {
      v12 = (TagInIFD + 4);
    }

    v15 = *v12;
  }

LABEL_32:
  if (a4)
  {
    *a4 = v15;
  }

  return 1;
}

uint64_t TIFF_MemoryReader::GetTag_Byte(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, unsigned __int8 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 1 && *(result + 4) == 1)
    {
      if (a4)
      {
        *a4 = *(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_SByte(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, signed __int8 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 6 && *(result + 4) == 1)
    {
      if (a4)
      {
        *a4 = *(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Short(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, unsigned __int16 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 3 && *(result + 4) == 2)
    {
      if (a4)
      {
        *a4 = (*(this + 1))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_SShort(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, __int16 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 8 && *(result + 4) == 2)
    {
      if (a4)
      {
        *a4 = (*(this + 1))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Long(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 4 && *(result + 4) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 2))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_SLong(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, int *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 9 && *(result + 4) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 2))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *TIFF_MemoryReader::GetTag_Rational(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    if (result[1] == 5 && *(result + 1) == 8)
    {
      if (a4)
      {
        v7 = *(a1 + 96) + *(result + 2);
        *a4 = (*(a1 + 16))(v7);
        a4[1] = (*(a1 + 16))(v7 + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *TIFF_MemoryReader::GetTag_SRational(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    if (result[1] == 10 && *(result + 1) == 8)
    {
      if (a4)
      {
        v7 = *(a1 + 96) + *(result + 2);
        *a4 = (*(a1 + 16))(v7);
        a4[1] = (*(a1 + 16))(v7 + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Float(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, float *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 11 && *(result + 4) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 3))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Double(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, double *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 12 && *(result + 4) == 8)
    {
      if (a4)
      {
        *a4 = (*(this + 4))(*(this + 12) + *(result + 8));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_ASCII(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, const char **a4, unsigned int *a5)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 2)
    {
      if (a4)
      {
        if (*(result + 4) > 4u)
        {
          v9 = (*(this + 12) + *(result + 8));
        }

        else
        {
          v9 = (result + 8);
        }

        *a4 = v9;
      }

      if (a5)
      {
        *a5 = *(result + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_EncodedString(TIFF_MemoryReader *a1, unsigned int a2, unsigned int a3, std::string *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    if (*(result + 2) == 7)
    {
      if (a4)
      {
        v7 = *(result + 4);
        if (v7 > 4)
        {
          v8 = (*(a1 + 12) + *(result + 8));
        }

        else
        {
          v8 = (result + 8);
        }

        return TIFF_Manager::DecodeString(a1, v8, v7, a4);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void TIFF_MemoryReader::ParseMemoryStream(void **this, const void *a2, size_t size, char a4, int a5)
{
  v7 = size;
  if (*(this + 88) == 1)
  {
    free(this[12]);
  }

  v10 = 0;
  *(this + 88) = 0;
  this[12] = 0;
  *(this + 26) = 0;
  do
  {
    v11 = &this[v10];
    *(v11 + 56) = 0;
    v11[15] = 0;
    v10 += 2;
  }

  while (v10 != 10);
  if (!v7)
  {
    return;
  }

  if (a4)
  {
    if (v7 >= 0x6400001)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 206;
      v39 = "Outrageous length for memory-based TIFF";
    }

    else
    {
      v12 = malloc_type_malloc(v7, 0x100004077774924uLL);
      this[12] = v12;
      if (v12)
      {
        memcpy(v12, a2, v7);
        *(this + 88) = 1;
        goto LABEL_11;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 15;
      v39 = "Out of memory";
    }

    exception[1] = v39;
    *(exception + 16) = 0;
  }

  this[12] = a2;
LABEL_11:
  *(this + 26) = v7;
  v13 = v7 - 6;
  if (a5)
  {
    *(this + 73) = 1;
    this[1] = GetUns16LE;
    this[2] = GetUns32LE;
    this[3] = GetFloatLE;
    this[4] = GetDoubleLE;
    this[5] = PutUns16LE;
    this[6] = PutUns32LE;
    this[7] = PutFloatLE;
    this[8] = PutDoubleLE;
    v14 = this;
    v15 = 0;
    v16 = 1;
    goto LABEL_15;
  }

  v17 = TIFF_Manager::CheckTIFFHeader(this, this[12], v7);
  if (v17)
  {
    v15 = v17;
    v14 = this;
    v16 = 0;
LABEL_15:
    v18 = TIFF_MemoryReader::ProcessOneIFD(v14, v15, 0, v16);
    v19 = v18;
    if (v18)
    {
      if (IsOffsetValid(v18, 8u, v13))
      {
        TIFF_MemoryReader::ProcessOneIFD(this, v19, 1u, 0);
      }

      else
      {
        v40 = 206;
        v41 = "Bad IFD offset";
        v42 = 0;
        (*(*this + 33))(this, 0, &v40);
      }
    }
  }

  v20 = *(this + 56);
  if (*(this + 56))
  {
    v21 = this[15];
    v22 = *(this + 56);
    while (v22 >= 2)
    {
      v23 = v22 >> 1;
      v24 = &v21[6 * (v22 >> 1)];
      v25 = *v24;
      v22 -= v22 >> 1;
      if (v25 > 0x8769)
      {
        v22 = v23;
      }

      else
      {
        v21 += 6 * v23;
      }

      if (v25 == 34665)
      {
        v21 = v24;
        goto LABEL_28;
      }
    }

    if (*v21 != 34665)
    {
      goto LABEL_31;
    }

LABEL_28:
    if (v21[1] == 4 && *(v21 + 1) == 4)
    {
      v26 = (this[2])(v21 + 4);
      TIFF_MemoryReader::ProcessOneIFD(this, v26, 2u, 0);
      v20 = *(this + 56);
    }

LABEL_31:
    if (v20)
    {
      v27 = this[15];
      while (v20 >= 2)
      {
        v28 = v20 >> 1;
        v29 = &v27[6 * (v20 >> 1)];
        v30 = *v29;
        v20 -= v20 >> 1;
        if (v30 > 0x8825)
        {
          v20 = v28;
        }

        else
        {
          v27 += 6 * v28;
        }

        if (v30 == 34853)
        {
          v27 = v29;
          goto LABEL_40;
        }
      }

      if (*v27 != 34853)
      {
        goto LABEL_45;
      }

LABEL_40:
      if (v27[1] == 4 && *(v27 + 1) == 4)
      {
        v31 = (this[2])(v27 + 4);
        if (IsOffsetValid(v31, 8u, v13))
        {
          TIFF_MemoryReader::ProcessOneIFD(this, v31, 3u, 0);
        }

        else
        {
          v40 = 206;
          v41 = "Bad IFD offset";
          v42 = 0;
          (*(*this + 33))(this, 0, &v40);
        }
      }
    }
  }

LABEL_45:
  v32 = *(this + 72);
  if (*(this + 72))
  {
    v33 = this[19];
    while (v32 >= 2)
    {
      v34 = v32 >> 1;
      v35 = &v33[6 * (v32 >> 1)];
      v36 = *v35;
      v32 -= v32 >> 1;
      if (v36 > 0xA005)
      {
        v32 = v34;
      }

      else
      {
        v33 += 6 * v34;
      }

      if (v36 == 40965)
      {
        v33 = v35;
        goto LABEL_54;
      }
    }

    if (*v33 != 40965)
    {
      return;
    }

LABEL_54:
    if (v33[1] == 4 && *(v33 + 1) == 4)
    {
      v37 = (this[2])(v33 + 4);
      if (IsOffsetValid(v37, 8u, v13))
      {
        TIFF_MemoryReader::ProcessOneIFD(this, v37, 4u, 0);
      }

      else
      {
        v40 = 206;
        v41 = "Bad IFD offset";
        v42 = 0;
        (*(*this + 33))(this, 0, &v40);
      }
    }
  }
}

uint64_t TIFF_MemoryReader::ProcessOneIFD(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, int a4)
{
  if (a4)
  {
    if (*(this + 26) >= a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    v26 = 206;
    v27 = "Bad IFD offset";
    v28 = 0;
    (*(*this + 264))(this, 2, &v26);
    goto LABEL_7;
  }

  if (a2 < 8 || *(this + 26) - 6 < a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = *(this + 12);
  v8 = v7 + a2;
  v9 = (*(this + 1))(v8);
  v10 = v9;
  if ((v9 & 0x8000) != 0)
  {
    v26 = 206;
    v27 = "Outrageous IFD count";
    v28 = 0;
    (*(*this + 264))(this, 2, &v26);
  }

  v11 = this + 16 * a3;
  if (12 * v9 + 6 > *(this + 26) - a2)
  {
    v26 = 206;
    v27 = "Out of bounds IFD";
    v28 = 0;
    (*(*this + 264))(this, 2, &v26);
  }

  v12 = (4 * ((3 * v9) & 0x3FFFF)) | 2;
  *(v11 + 56) = v10;
  *(v11 + 15) = v8 + 2;
  if (!v10)
  {
    return (*(this + 2))(v8 + v12);
  }

  v13 = 0;
  v14 = v10;
  v15 = *(this + 73);
  v16 = (a2 + v7 + 6);
  v17 = -1;
  do
  {
    v18 = *(v16 - 2);
    if (v15)
    {
      v19 = *(v16 - 1);
    }

    else
    {
      v18 = __rev16(v18);
      *(v16 - 2) = v18;
      v19 = bswap32(*(v16 - 1)) >> 16;
      *(v16 - 1) = v19;
      *v16 = bswap32(*v16);
    }

    v20 = v17 >= v18;
    if ((v19 - 14) >= 0xFFF3u)
    {
      v21 = *v16 * kTIFF_TypeSizes[v19];
      *v16 = v21;
      if (v21 >= 5)
      {
        v22 = v16[1];
        if ((v15 & 1) == 0)
        {
          v22 = bswap32(v22);
          v16[1] = v22;
        }

        if (v22 < 8 || (v23 = *(this + 26), v23 <= v22) || v21 > v23 - v22)
        {
          *v16 = 0;
        }
      }
    }

    v13 |= v20;
    v16 += 3;
    v17 = v18;
    --v14;
  }

  while (v14);
  v24 = (*(this + 2))(v8 + v12);
  if (v13)
  {
    TIFF_MemoryReader::SortIFD(v11 + 56);
  }

  return v24;
}

void TIFF_MemoryReader::SetTag(TIFF_MemoryReader *this, unsigned __int8 a2, unsigned __int16 a3, unsigned __int16 a4, unsigned int a5, const void *a6)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::DeleteTag(TIFF_MemoryReader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::SetTag_EncodedString()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::ParseFileStream()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::IntegrateFromPShop6(TIFF_MemoryReader *this, const void *a2)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

uint64_t TIFF_MemoryReader::UpdateMemoryStream(TIFF_MemoryReader *this, void **a2)
{
  if (a2)
  {
    *a2 = *(this + 12);
  }

  return *(this + 26);
}

void TIFF_MemoryReader::UpdateFileStream()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::~TIFF_MemoryReader(void **this)
{
  *this = &unk_1EF4FB250;
  if (*(this + 88) == 1)
  {
    free(this[12]);
  }
}

{
  *this = &unk_1EF4FB250;
  if (*(this + 88) == 1)
  {
    free(this[12]);
  }

  JUMPOUT(0x186602850);
}

uint64_t *std::__tree<std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_Manager::TagInfo>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

void *AdobeXMPCore_Int::IDOMSerializer_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63444F4D53726C7ALL)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63444F4D53726C7ALL, a3, exception);
      }

      return (this + *(*this - 288));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63444F4D53726C7ALL, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMSerializer_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMSerializer_v1,AdobeXMPCore::IDOMSerializer_v1*,AdobeXMPCore::IDOMSerializer_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 224)] + 16))(&v8[*(*v8 - 224)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 232)] + 16))(&v8[*(*v8 - 232)], 0x63444F4D53726C7ALL, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18615CFF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615CFDCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IDOMSerializer_I::serialize(AdobeXMPCore_Int::IDOMSerializer_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCore::INameSpacePrefixMap_v1 *a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 288);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v12);
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(a3, v8, &v14);
  v11 = v14;
  v9 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMSerializer_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(a4, this + v7, AdobeXMPCore::IDOMSerializer_v1::Serialize, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IDOMSerializer_I.cpp", 59, &v12, &v11);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v11 + 1));
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  return v9;
}

void sub_18615D274(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMSerializer_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_18615D418(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615D3FCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void *AdobeXMPCore_Int::IDOMImplementationRegistry_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63444F4D52677374)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63444F4D52677374, a3, exception);
      }

      return (this + *(*this - 152));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63444F4D52677374, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMImplementationRegistry_v1,AdobeXMPCore::IDOMParser_v1 *,AdobeXMPCore::IDOMParser_v1,char const*>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 224)] + 16))(&v11[*(*v11 - 224)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 232)] + 16))(&v11[*(*v11 - 232)], 0x63444F4D50727372, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18615DAB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615DA9CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMImplementationRegistry_v1,AdobeXMPCore::IDOMSerializer_v1 *,AdobeXMPCore::IDOMSerializer_v1,char const*>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 224)] + 16))(&v11[*(*v11 - 224)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 232)] + 16))(&v11[*(*v11 - 232)], 0x63444F4D53726C7ALL, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18615DE34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615DE18);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void sub_18615E098(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,unsigned int,BOOL,char const*,std::shared_ptr<AdobeXMPCore::IDOMParser_v1 const> const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void sub_18615E2DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,unsigned int,BOOL,char const*,std::shared_ptr<AdobeXMPCore::IDOMSerializer_v1 const> const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void sub_18615E4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_18615E590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,void *,void *,unsigned long long,unsigned int>(void *a1, void *a2)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  v6 = *exception_ptr;
  v5 = exception_ptr[1];
  if (v5)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(a1);
  *a2 = (*(*v6 + 200))(v6);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_0();
  (*(v7 + 16))();
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 40))();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  __cxa_end_catch();
}

void *virtual thunk toAdobeXMPCore_Int::SharedObjectImpl::Acquire(void *this)
{
  v1 = (this + *(*this - 24));
  if (atomic_load(v1 + 2))
  {
    atomic_fetch_add(v1 + 2, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    atomic_fetch_add(v1 + 1, 1uLL);
  }

  return this;
}

unint64_t *virtual thunk toAdobeXMPCore_Int::SharedObjectImpl::Release(AdobeXMPCore_Int::SharedObjectImpl *this)
{
  result = (this + *(*this - 32));
  v2 = atomic_load(result + 1);
  if (!v2 || atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return (*(*result + 32))();
  }

  return result;
}

void AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(AdobeXMPCore_Int::SharedObjectImpl *this)
{
}

{

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(AdobeXMPCore_Int::SharedObjectImpl *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::SharedObjectImpl::AcquireInternal(uint64_t this)
{
  atomic_fetch_add((this + 16), 1uLL);
  atomic_fetch_add((this + 8), 1uLL);
  return this;
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::RemovePrefix(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, AdobeXMPCore_Int::IUTF8String_I *__s, char *a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(1, 0, __s, 0, a3, 0))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(__s, a3);
  }

  return 0;
}

void sub_18615E9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a12);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::RemoveNameSpace(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, const char *a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(0, 1, 0, a2, 0, a3))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, a3);
  }

  return 0;
}

void sub_18615EB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a12);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::IsPrefixPresent(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, AdobeXMPCore_Int::IUTF8String_I *__s, char *a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(1, 0, __s, 0, a3, 0))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(__s, a3);
  }

  return 0;
}

void sub_18615ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::IsNameSpacePresent(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, const char *a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(0, 1, 0, a2, 0, a3))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, a3);
  }

  return 0;
}

void sub_18615EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::GetNameSpace@<X0>(char *__s@<X1>, char *a2@<X2>, void *a3@<X8>)
{
  result = AdobeXMPCore_Int::VerifyParameters(1, 0, __s, 0, a2, 0);
  if (result)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(__s, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_18615EEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NameSpacePrefixMapImpl::GetNameSpace(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = 0;
  if (!AdobeXMPCore_Int::VerifyParameters(1, 0, a2, &v8))
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v8, a1 + *(*a1 - 192) + 8, 1);
  v6 = std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::find<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>((a1 + 4), a2);
  if (a1 + 5 == v6)
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v8);
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v7 = *(v6 + 56);
  *a3 = *(v6 + 48);
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v8);
}

void sub_18615F014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::VerifyParameters(int a1, int a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!*a3)
    {
      v7 = 0;
      v8 = 0;
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    if (!(*(**a3 + 208))(*a3))
    {
      v7 = 0;
      v8 = 0;
      AdobeXMPCore_Int::IError_I::CreateError();
    }
  }

  result = 1;
  if (a2)
  {
    if (!*a4)
    {
      v7 = 0;
      v8 = 0;
      AdobeXMPCore_Int::IError_I::CreateError();
    }
  }

  return result;
}

void sub_18615F500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::GetPrefix@<X0>(char *a1@<X1>, const char *a2@<X2>, void *a3@<X8>)
{
  result = AdobeXMPCore_Int::VerifyParameters(0, 1, 0, a1, 0, a2);
  if (result)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a1, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_18615F624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NameSpacePrefixMapImpl::GetPrefix(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = 0;
  if (!AdobeXMPCore_Int::VerifyParameters(0, 1, &v8, a2))
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v8, a1 + *(*a1 - 192) + 8, 1);
  v6 = std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::find<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>((a1 + 1), a2);
  if (a1 + 2 == v6)
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v8);
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v7 = *(v6 + 56);
  *a3 = *(v6 + 48);
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v8);
}

void sub_18615F738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::Size(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 192) + 8, 0);
  v2 = *(this + 3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

void AdobeXMPCore_Int::NameSpacePrefixMapImpl::Clear(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this)
{
  v1 = this;
  memset(v3, 0, sizeof(v3));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v3, this + *(*this - 192) + 8, 1);
  std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(v1 + 8, *(v1 + 2));
  *(v1 + 1) = v1 + 16;
  *(v1 + 2) = 0;
  v2 = *(v1 + 5);
  v1 = (v1 + 40);
  *(v1 - 2) = 0;
  std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v3);
}

void sub_18615FAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void *AdobeXMPCore_Int::NameSpacePrefixMapImpl::Merge(uint64_t a1, void **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = result[4];
    v5 = result + 5;
    if (v4 != result + 5)
    {
      do
      {
        v6 = (*(*v4[4] + 192))(v4[4]);
        v7 = (*(*v4[4] + 208))(v4[4]);
        v8 = (*(*v4[6] + 192))(v4[6]);
        v9 = (*(*v4[6] + 208))(v4[6]);
        result = (*(*a1 + 112))(a1, v6, v7, v8, v9);
        v10 = v4[1];
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
            v11 = v4[2];
            v12 = *v11 == v4;
            v4 = v11;
          }

          while (!v12);
        }

        v4 = v11;
      }

      while (v11 != v5);
    }
  }

  return result;
}

double AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap@<D0>(_OWORD *a1@<X8>)
{
  AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(0, &v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

void *AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared@<X0>(void *this@<X0>, AdobeXMPCore::INameSpacePrefixMap_v1 *a2@<X1>, void *a3@<X8>)
{
  if (this)
  {
    v4 = this;
    (**(this + *(*this - 56)))(this + *(*this - 56), a2);

    std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INameSpacePrefixMap_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, v4);
  }

  *a3 = 0;
  a3[1] = 0;
  return this;
}

void std::__destroy_at[abi:fe200100]<std::pair<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_18615FF74(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 184) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::NameSpacePrefixMapImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::NameSpacePrefixMapImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::NameSpacePrefixMapImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::NameSpacePrefixMapImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_1861600E4(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore::INameSpacePrefixMap_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INameSpacePrefixMap_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::INameSpacePrefixMap_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INameSpacePrefixMap_v1>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::INameSpacePrefixMap_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INameSpacePrefixMap_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void TIFF_FileWriter::TIFF_FileWriter(TIFF_FileWriter *this)
{
  v5[1] = *MEMORY[0x1E69E9840];
  TIFF_Manager::TIFF_Manager(this);
  v2 = 0;
  *v3 = &unk_1EF4FC4C0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = 0;
  *(v3 + 92) = 0;
  do
  {
    *(this + v2 + 136) = 0;
    v4 = this + v2 + 136;
    *(v4 - 24) = 0;
    *(v4 - 11) = 0;
    *(v4 - 20) = 0;
    *(v4 + 1) = 0;
    v2 += 40;
    *(v4 - 1) = v4;
  }

  while (v2 != 200);
  v5[0] = 704662861;
  TIFF_Manager::CheckTIFFHeader(this, v5, 8u);
}

void TIFF_FileWriter::~TIFF_FileWriter(TIFF_FileWriter *this)
{
  *this = &unk_1EF4FC4C0;
  if (*(this + 90) == 1 && (*(this + 91) & 1) != 0)
  {
    v4 = "! (this->memParsed && this->fileParsed)";
    v5 = 60;
    goto LABEL_11;
  }

  if (*(this + 92) == 1)
  {
    v2 = *(this + 12);
    if (v2)
    {
      free(v2);
      goto LABEL_6;
    }

    v4 = "this->memStream != 0";
    v5 = 63;
LABEL_11:
    __assert_rtn("~TIFF_FileWriter", "TIFF_FileWriter.cpp", v5, v4);
  }

LABEL_6:
  for (i = 0; i != -200; i -= 40)
  {
    std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::destroy(this + i + 288, *(this + i + 296));
  }
}

{
  TIFF_FileWriter::~TIFF_FileWriter(this);

  JUMPOUT(0x186602850);
}

void TIFF_FileWriter::DeleteExistingInfo(TIFF_FileWriter *this)
{
  if (*(this + 90) == 1 && *(this + 91) == 1)
  {
    TIFF_FileWriter::DeleteExistingInfo();
  }

  if (*(this + 92) == 1)
  {
    free(*(this + 12));
  }

  v2 = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  do
  {
    v4 = (this + v2 + 136);
    v3 = *v4;
    *(v4 - 24) = 0;
    *(v4 - 11) = 0;
    *(v4 - 20) = 0;
    std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::destroy(this + v2 + 128, v3);
    *v4 = 0;
    *(this + v2 + 144) = 0;
    *(this + v2 + 128) = v4;
    v2 += 40;
  }

  while (v2 != 200);
  *(this + 92) = 0;
  *(this + 22) = 0;
}

uint64_t TIFF_FileWriter::PickIFD(uint64_t this)
{
  if (this >= 5)
  {
    v1 = this;
    exception = __cxa_allocate_exception(0x18uLL);
    if (v1 == 9)
    {
      *exception = 8;
      v3 = "kTIFF_KnownIFD not yet implemented";
    }

    else
    {
      *exception = 4;
      v3 = "Invalid IFD number";
    }

    exception[1] = v3;
    *(exception + 16) = 0;
  }

  return this;
}

char *TIFF_FileWriter::FindTagInIFD(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3)
{
  v4 = a2;
  TIFF_FileWriter::PickIFD(a2);
  v6 = this + 40 * v4;
  v9 = *(v6 + 17);
  v7 = v6 + 136;
  v8 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = v7;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= a3;
    v13 = v11 < a3;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == v7)
  {
    return 0;
  }

  v14 = *(v10 + 16);
  v15 = v10 + 40;
  if (v14 <= a3)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

BOOL TIFF_FileWriter::GetIFD(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Invalid IFD number";
    *(exception + 16) = 0;
  }

  v4 = a1 + 40 * a2;
  v5 = *(v4 + 128);
  v6 = (v4 + 136);
  if (!a3)
  {
    return v5 != v6;
  }

  v7 = (a3 + 8);
  std::__tree<unsigned long long>::destroy(a3, *(a3 + 8));
  *a3 = v7;
  *(a3 + 16) = 0;
  *v7 = 0;
  if (v5 == v6)
  {
    return 0;
  }

  do
  {
    v8 = *(v5 + 10);
    v9 = v5[7];
    v10 = *(v5 + 11);
    v11 = *(v5 + 12);
    v12 = std::__tree<std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_Manager::TagInfo>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a3, v5 + 20);
    *(v12 + 10) = v8;
    *(v12 + 11) = v10;
    v12[6] = v9;
    *(v12 + 14) = v11;
    v13 = v5[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v5[2];
        v15 = *v14 == v5;
        v5 = v14;
      }

      while (!v15);
    }

    v5 = v14;
  }

  while (v14 != v6);
  return 1;
}

char *TIFF_FileWriter::GetValueOffset(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 6))
    {
      return *(result + 7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL TIFF_FileWriter::GetTag(TIFF_FileWriter *a1, TIFF_FileWriter *a2, unsigned int a3, uint64_t a4)
{
  TagInIFD = TIFF_FileWriter::FindTagInIFD(a1, a2, a3);
  if (a4 && TagInIFD)
  {
    *a4 = *TagInIFD;
    v6 = *(TagInIFD + 1);
    *(a4 + 2) = v6;
    v7 = *(TagInIFD + 2);
    *(a4 + 4) = v7 / kTIFF_TypeSizes[v6];
    *(a4 + 16) = v7;
    *(a4 + 8) = *(TagInIFD + 2);
  }

  return TagInIFD != 0;
}

uint64_t TIFF_FileWriter::SetTag(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, int a4, unsigned int a5, const void *a6)
{
  if ((a4 - 14) <= 0xFFFFFFF2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v27 = "Invalid TIFF tag type";
    goto LABEL_33;
  }

  v10 = a2;
  v12 = kTIFF_TypeSizes[a4];
  TIFF_FileWriter::PickIFD(a2);
  v13 = this + 40 * v10;
  v16 = *(v13 + 17);
  v15 = (v13 + 136);
  v14 = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v15;
  do
  {
    v18 = *(v14 + 32);
    v19 = v18 >= a3;
    v20 = v18 < a3;
    if (v19)
    {
      v17 = v14;
    }

    v14 = *(v14 + 8 * v20);
  }

  while (v14);
  if (v17 == v15 || *(v17 + 32) > a3)
  {
LABEL_10:
    v28 = 0u;
    *v29 = 0u;
    v30 = 0u;
    v21 = *(this + 91);
    LOWORD(v28) = a3;
    WORD4(v28) = a3;
    WORD5(v28) = a4;
    HIDWORD(v28) = a5;
    v29[0] = 0;
    v29[1] = 0;
    *&v30 = 0;
    BYTE8(v30) = 0;
    BYTE9(v30) = v21;
    v17 = std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,TIFF_FileWriter::InternalTagInfo> const&>(v15 - 1, v15, &v28);
    if (BYTE9(v30))
    {
      if (LODWORD(v29[0]) < 5)
      {
LABEL_26:
        v24 = v12 * a5;
        *(v17 + 72) = 1;
        *(v17 + 48) = v24;
        if (v24 <= 4)
        {
          v25 = (v17 + 52);
          *(v17 + 56) = v17 + 52;
LABEL_29:
          result = memcpy(v25, a6, v24);
          *(v15 - 24) = 1;
          *(this + 88) = 1;
          return result;
        }

        v25 = malloc_type_malloc(v24, 0x100004077774924uLL);
        *(v17 + 56) = v25;
        if (v25)
        {
          goto LABEL_29;
        }

        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 15;
        v27 = "Out of memory";
LABEL_33:
        exception[1] = v27;
        *(exception + 16) = 0;
      }
    }

    else if (BYTE8(v30) != 1 || LODWORD(v29[0]) <= 4)
    {
      goto LABEL_26;
    }

    if (v29[1])
    {
      free(v29[1]);
    }

    goto LABEL_26;
  }

  if (*(v17 + 42) != a4 || *(v17 + 44) != a5 || (result = memcmp(a6, *(v17 + 56), *(v17 + 48)), result))
  {
    if (((*(v17 + 73) & 1) != 0 || *(v17 + 72) == 1) && *(v17 + 48) >= 5u)
    {
      v23 = *(v17 + 56);
      if (v23)
      {
        free(v23);
        *(v17 + 56) = 0;
      }
    }

    *(v17 + 42) = a4;
    *(v17 + 44) = a5;
    goto LABEL_26;
  }

  return result;
}

void sub_186160A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int a11, void *a12, uint64_t a13, char a14, char a15)
{
  if (a15)
  {
    if (a11 < 5)
    {
      goto LABEL_8;
    }
  }

  else if (a14 != 1 || a11 <= 4)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  if (a12)
  {
    free(a12);
  }

  goto LABEL_8;
}

void TIFF_FileWriter::InternalTagInfo::~InternalTagInfo(TIFF_FileWriter::InternalTagInfo *this)
{
  if (((*(this + 33) & 1) != 0 || *(this + 32) == 1) && *(this + 2) >= 5u)
  {
    v2 = *(this + 2);
    if (v2)
    {
      free(v2);
      *(this + 2) = 0;
    }
  }
}

void TIFF_FileWriter::DeleteTag(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3)
{
  v4 = a2;
  TIFF_FileWriter::PickIFD(a2);
  v6 = this + 40 * v4;
  v9 = *(v6 + 17);
  v7 = v6 + 136;
  v8 = v9;
  if (v9)
  {
    v10 = v7 - 24;
    v11 = v7;
    do
    {
      v12 = *(v8 + 32);
      v13 = v12 >= a3;
      v14 = v12 < a3;
      if (v13)
      {
        v11 = v8;
      }

      v8 = *(v8 + 8 * v14);
    }

    while (v8);
    if (v11 != v7 && *(v11 + 16) <= a3)
    {
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(v7 - 1, v11);
      TIFF_FileWriter::InternalTagInfo::~InternalTagInfo((v11 + 40));
      operator delete(v11);
      *v10 = 1;
      *(this + 88) = 1;
      if (v4 || a3 != 700)
      {
        *(this + 89) = 1;
      }
    }
  }
}

uint64_t TIFF_FileWriter::GetTag_Integer(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, unsigned int *a4)
{
  TagInIFD = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (!TagInIFD || *(TagInIFD + 1) != 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(TagInIFD + 1);
  if (v8 <= 5)
  {
    if (v8 == 1)
    {
      v9 = **(TagInIFD + 2);
      if (!a4)
      {
        return 1;
      }

      goto LABEL_19;
    }

    if (v8 == 3)
    {
      v9 = (*(this + 1))(*(TagInIFD + 2));
LABEL_18:
      if (!a4)
      {
        return 1;
      }

LABEL_19:
      *a4 = v9;
      return 1;
    }

    if (v8 != 4)
    {
      return v7;
    }

LABEL_12:
    v9 = (*(this + 2))(*(TagInIFD + 2));
    goto LABEL_18;
  }

  switch(v8)
  {
    case 6u:
      v9 = **(TagInIFD + 2);
      if (!a4)
      {
        return 1;
      }

      goto LABEL_19;
    case 8u:
      v9 = (*(this + 1))(*(TagInIFD + 2));
      if (!a4)
      {
        return 1;
      }

      goto LABEL_19;
    case 9u:
      goto LABEL_12;
  }

  return v7;
}

uint64_t TIFF_FileWriter::GetTag_Byte(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, unsigned __int8 *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 1 && *(result + 8) == 1)
    {
      if (a4)
      {
        *a4 = **(result + 16);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_SByte(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, signed __int8 *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 6 && *(result + 8) == 1)
    {
      if (a4)
      {
        *a4 = **(result + 16);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_Short(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, unsigned __int16 *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 3 && *(result + 8) == 2)
    {
      if (a4)
      {
        *a4 = (*(this + 1))(*(result + 16));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_SShort(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, __int16 *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 8 && *(result + 8) == 2)
    {
      if (a4)
      {
        *a4 = (*(this + 1))(*(result + 16));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_Long(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, unsigned int *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 4 && *(result + 8) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 2))(*(result + 16));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_SLong(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, int *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 9 && *(result + 8) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 2))(*(result + 16));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *TIFF_FileWriter::GetTag_Rational(TIFF_FileWriter *a1, TIFF_FileWriter *a2, unsigned int a3, _DWORD *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    v7 = *(result + 2);
    if (v7 && *(result + 1) == 5 && *(result + 2) == 8)
    {
      if (a4)
      {
        *a4 = (*(a1 + 2))(*(result + 2));
        a4[1] = (*(a1 + 2))(v7 + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *TIFF_FileWriter::GetTag_SRational(TIFF_FileWriter *a1, TIFF_FileWriter *a2, unsigned int a3, _DWORD *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    v7 = *(result + 2);
    if (v7 && *(result + 1) == 10 && *(result + 2) == 8)
    {
      if (a4)
      {
        *a4 = (*(a1 + 2))(*(result + 2));
        a4[1] = (*(a1 + 2))(v7 + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_Float(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, float *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 11 && *(result + 8) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 3))(*(result + 16));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_Double(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, double *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    v7 = result;
    result = *(result + 16);
    if (result)
    {
      if (*(v7 + 2) == 12 && *(v7 + 8) == 8)
      {
        if (a4)
        {
          *a4 = (*(this + 4))();
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_ASCII(TIFF_FileWriter *this, TIFF_FileWriter *a2, unsigned int a3, const char **a4, unsigned int *a5)
{
  result = TIFF_FileWriter::FindTagInIFD(this, a2, a3);
  if (result)
  {
    v8 = *(result + 8);
    if ((v8 < 5 || *(result + 16)) && *(result + 2) == 2)
    {
      if (a4)
      {
        *a4 = *(result + 16);
      }

      if (a5)
      {
        *a5 = v8;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::GetTag_EncodedString(TIFF_FileWriter *a1, TIFF_FileWriter *a2, unsigned int a3, std::string *a4)
{
  result = TIFF_FileWriter::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    if (*(result + 2) == 7)
    {
      if (a4)
      {
        v7 = *(result + 16);
        v8 = *(result + 8);

        return TIFF_Manager::DecodeString(a1, v7, v8, a4);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void TIFF_FileWriter::SetTag_EncodedString(uint64_t a1, uint64_t a2, uint64_t a3, const std::string::value_type *a4, int a5)
{
  memset(&__p, 0, sizeof(__p));
  TIFF_Manager::EncodeString(a1, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = LODWORD(__p.__r_.__value_.__r.__words[1]);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*a1 + 32))(a1, a2, a3, 7, v8, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_186161260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TIFF_FileWriter::IsLegacyChanged(TIFF_FileWriter *this)
{
  if (*(this + 88) != 1)
  {
    return 0;
  }

  if ((*(this + 89) & 1) == 0)
  {
    v2 = 0;
    while (1)
    {
      v3 = this + 40 * v2 + 112;
      if (*v3 == 1)
      {
        v4 = v3 + 24;
        v5 = *(v3 + 2);
        if (v5 != v4)
        {
          break;
        }
      }

LABEL_15:
      if (++v2 == 5)
      {
        return 0;
      }
    }

    while (v5[72] != 1 || *(v5 + 20) == 700)
    {
      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  return 1;
}

void TIFF_FileWriter::ParseMemoryStream(TIFF_FileWriter *this, void *a2, unsigned int a3, char a4)
{
  TIFF_FileWriter::DeleteExistingInfo(this);
  *(this + 90) = 1;
  if (!a3)
  {
    return;
  }

  if ((a4 & 1) == 0)
  {
    if (*(this + 92) == 1)
    {
      TIFF_FileWriter::ParseMemoryStream();
    }

    *(this + 12) = a2;
    goto LABEL_8;
  }

  if (a3 >= 0x6400001)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    v20 = "Outrageous length for memory-based TIFF";
    goto LABEL_33;
  }

  v8 = malloc_type_malloc(a3, 0x100004077774924uLL);
  *(this + 12) = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    v20 = "Out of memory";
LABEL_33:
    exception[1] = v20;
    *(exception + 16) = 0;
  }

  memcpy(v8, a2, a3);
  *(this + 92) = 1;
  a2 = *(this + 12);
LABEL_8:
  *(this + 26) = a3;
  v9 = a3 - 6;
  v10 = TIFF_Manager::CheckTIFFHeader(this, a2, a3);
  if (v10)
  {
    v11 = TIFF_FileWriter::ProcessMemoryIFD(this, v10, 0);
    if (v11)
    {
      v12 = v11;
      if (IsOffsetValid(v11, 8u, v9))
      {
        TIFF_FileWriter::ProcessMemoryIFD(this, v12, 1u);
      }

      else
      {
        v21 = 206;
        v22 = "Bad IFD offset";
        v23 = 0;
        (*(*this + 264))(this, 0, &v21);
        (*(*this + 40))(this, 0, 1);
      }
    }
  }

  TagInIFD = TIFF_FileWriter::FindTagInIFD(this, 0, 0x8769u);
  if (TagInIFD && *(TagInIFD + 1) == 4 && *(TagInIFD + 2) == 4)
  {
    v14 = (*(this + 2))(*(TagInIFD + 2));
    TIFF_FileWriter::ProcessMemoryIFD(this, v14, 2u);
  }

  v15 = TIFF_FileWriter::FindTagInIFD(this, 0, 0x8825u);
  if (v15 && *(v15 + 1) == 4 && *(v15 + 2) == 4)
  {
    v16 = (*(this + 2))(*(v15 + 2));
    if (IsOffsetValid(v16, 8u, v9))
    {
      TIFF_FileWriter::ProcessMemoryIFD(this, v16, 3u);
    }

    else
    {
      v21 = 206;
      v22 = "Bad IFD offset";
      v23 = 0;
      (*(*this + 264))(this, 0, &v21);
      (*(*this + 40))(this, 0, 34853);
    }
  }

  v17 = TIFF_FileWriter::FindTagInIFD(this, 2, 0xA005u);
  if (v17 && *(v17 + 1) == 4 && *(v17 + 2) == 4)
  {
    v18 = (*(this + 2))(*(v17 + 2));
    if (IsOffsetValid(v18, 8u, v9))
    {
      TIFF_FileWriter::ProcessMemoryIFD(this, v18, 4u);
    }

    else
    {
      v21 = 206;
      v22 = "Bad IFD offset";
      v23 = 0;
      (*(*this + 264))(this, 0, &v21);
      (*(*this + 40))(this, 2, 40965);
    }
  }
}

uint64_t TIFF_FileWriter::ProcessMemoryIFD(TIFF_FileWriter *this, unsigned int a2, unsigned int a3)
{
  v5 = this + 40 * a3;
  v26 = a2;
  if (a2 < 8 || *(this + 26) - 6 < a2)
  {
    v27 = 206;
    v28 = "Bad IFD offset";
    v29[0] = 0;
    (*(*this + 264))(this, 2, &v27);
  }

  v6 = v5 + 112;
  v7 = *(this + 12) + v26;
  v8 = (*(this + 1))(v7);
  if ((v8 & 0x8000) != 0)
  {
    v27 = 206;
    v28 = "Outrageous IFD count";
    v29[0] = 0;
    (*(*this + 264))(this, 2, &v27);
  }

  v24 = 12 * v8;
  if (12 * v8 + 6 > *(this + 26) - a2)
  {
    v27 = 206;
    v28 = "Out of bounds IFD";
    v29[0] = 0;
    (*(*this + 264))(this, 2, &v27);
  }

  *(v6 + 1) = a2;
  *(v6 + 1) = v8;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v25 = a2 + 10;
    v11 = 12 * v8;
    do
    {
      v12 = v7 + v9;
      v13 = (*(this + 1))(v7 + v9 + 4);
      if ((v13 - 14) >= 0xFFFFFFF3)
      {
        v14 = v13;
        v15 = (*(this + 1))(v12 + 2);
        v16 = (*(this + 2))(v12 + 6);
        v30 = 0u;
        v27 = v15;
        LOWORD(v28) = v15;
        WORD1(v28) = v14;
        HIDWORD(v28) = v16;
        v29[0] = 0;
        v29[1] = 0;
        *&v30 = 0;
        WORD4(v30) = 0;
        v17 = std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,TIFF_FileWriter::InternalTagInfo> const&>(v6 + 2, v6 + 3, &v27);
        v18 = *(v17 + 44) * kTIFF_TypeSizes[*(v17 + 42)];
        *(v17 + 64) = v18;
        *(v17 + 48) = v18;
        *(v17 + 52) = *(v7 + v9 + 10);
        if (v18 > 4)
        {
          v19 = (*(this + 2))(v7 + v9 + 10);
          *(v17 + 68) = v19;
          if (v19 >= 8 && (v20 = *(this + 26), v21 = v20 >= v19, v22 = v20 - v19, v22 != 0 && v21))
          {
            if (*(v17 + 48) > v22)
            {
              *(v17 + 48) = 0;
              *(v17 + 44) = 0;
              v19 = v26 + v9 + 10;
              *(v17 + 64) = 0;
              *(v17 + 68) = v19;
            }
          }

          else
          {
            *(v17 + 48) = 0;
            *(v17 + 44) = 0;
            v19 = v25 + 12 * v10;
            *(v17 + 64) = 0;
            *(v17 + 68) = v26 + v9 + 10;
          }
        }

        else
        {
          v19 = v25 + 12 * v10;
          *(v17 + 68) = v26 + v9 + 10;
        }

        *(v17 + 56) = *(this + 12) + v19;
        if (BYTE9(v30))
        {
          if (LODWORD(v29[0]) >= 5)
          {
            goto LABEL_24;
          }
        }

        else if (BYTE8(v30) == 1 && LODWORD(v29[0]) > 4)
        {
LABEL_24:
          if (v29[1])
          {
            free(v29[1]);
          }
        }
      }

      ++v10;
      v9 += 12;
    }

    while (v11 != v9);
  }

  result = (*(this + 2))(v7 + (v24 | 2u));
  *(v6 + 2) = result;
  return result;
}

void sub_186161A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, void *a14, uint64_t a15, char a16, char a17)
{
  if (a17)
  {
    if (a13 < 5)
    {
      goto LABEL_8;
    }
  }

  else if (a16 != 1 || a13 <= 4)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  if (a14)
  {
    free(a14);
  }

  goto LABEL_8;
}

uint64_t TIFF_FileWriter::ParseFileStream(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  TIFF_FileWriter::DeleteExistingInfo(a1);
  *(a1 + 91) = 1;
  result = (*(*a2 + 24))(a2);
  *(a1 + 104) = result;
  if (result >= 8)
  {
    (*(*a2 + 16))(a2, 0, 0);
    v5 = *(a1 + 104);
    *v20 = 0;
    (**a2)(a2, v20, 8, 1);
    result = TIFF_Manager::CheckTIFFHeader(a1, v20, *(a1 + 104));
    if (result)
    {
      v6 = v5 - 6;
      v7 = TIFF_FileWriter::ProcessFileIFD(a1, 0, result, a2);
      if (v7)
      {
        v8 = v7;
        if (IsOffsetValid(v7, 8u, v6))
        {
          TIFF_FileWriter::ProcessFileIFD(a1, 1u, v8, a2);
        }

        else
        {
          v17 = 206;
          v18 = "Bad IFD offset";
          v19 = 0;
          (*(*a1 + 264))(a1, 0, &v17);
          (*(*a1 + 40))(a1, 0, 1);
        }
      }

      TagInIFD = TIFF_FileWriter::FindTagInIFD(a1, 0, 0x8769u);
      if (TagInIFD)
      {
        v10 = *(TagInIFD + 1);
        if ((v10 == 13 || v10 == 4) && *(TagInIFD + 1) == 1)
        {
          v11 = (*(a1 + 16))(*(TagInIFD + 2));
          TIFF_FileWriter::ProcessFileIFD(a1, 2u, v11, a2);
        }
      }

      v12 = TIFF_FileWriter::FindTagInIFD(a1, 0, 0x8825u);
      if (v12)
      {
        v13 = *(v12 + 1);
        if ((v13 == 13 || v13 == 4) && *(v12 + 1) == 1)
        {
          v14 = (*(a1 + 16))(*(v12 + 2));
          if (IsOffsetValid(v14, 8u, v6))
          {
            TIFF_FileWriter::ProcessFileIFD(a1, 3u, v14, a2);
          }

          else
          {
            v17 = 206;
            v18 = "Bad IFD offset";
            v19 = 0;
            (*(*a1 + 264))(a1, 0, &v17);
            (*(*a1 + 40))(a1, 0, 34853);
          }
        }
      }

      result = TIFF_FileWriter::FindTagInIFD(a1, 2, 0xA005u);
      if (result)
      {
        v15 = *(result + 2);
        if ((v15 == 13 || v15 == 4) && *(result + 8) == 4)
        {
          v16 = (*(a1 + 16))(*(result + 16));
          if (IsOffsetValid(v16, 8u, v6))
          {
            return TIFF_FileWriter::ProcessFileIFD(a1, 4u, v16, a2);
          }

          else
          {
            v17 = 206;
            v18 = "Bad IFD offset";
            v19 = 0;
            (*(*a1 + 264))(a1, 0, &v17);
            return (*(*a1 + 40))(a1, 2, 40965);
          }
        }
      }
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::ProcessFileIFD(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  __p = 0;
  v46 = 0;
  v47 = 0;
  std::vector<unsigned char>::vector[abi:fe200100](&__p, 786432);
  v44 = 0;
  if (a3 < 8 || *(a1 + 104) - 6 < a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    exception[1] = "Bad IFD offset";
    *(exception + 16) = 0;
  }

  (*(*a4 + 16))(a4, a3, 0);
  v8 = (*(*a4 + 24))(a4);
  if (v8 - (*(*a4 + 16))(a4, 0, 1) >= 2)
  {
    (**a4)(a4, &v44, 2, 1);
    v9 = (*(a1 + 8))(&v44);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = (*(*a4 + 24))(a4);
      result = (*(*a4 + 16))(a4, 0, 1);
      if (v10 - result >= (12 * v9))
      {
        if (v46 == __p || (((**a4)(a4), v13 = (*(*a4 + 24))(a4), v13 - (*(*a4 + 16))(a4, 0, 1) < 4) ? (result = 0) : ((**a4)(a4, &v44, 4, 1), result = (*(a1 + 16))(&v44)), v14 = a1 + 40 * a2 + 112, *(v14 + 4) = a3, *(v14 + 8) = result, *(v14 + 2) = v9, v46 == __p))
        {
          __break(1u);
          return result;
        }

        if (!v9)
        {
LABEL_33:
          v28 = *(a1 + 40 * a2 + 128);
          if (v28 != (a1 + 40 * a2 + 136))
          {
            v29 = *(&sKnownTags + a2);
            do
            {
              if (*(v28 + 12) >= 5u)
              {
                v30 = *(v28 + 20);
                v29 -= 2;
                do
                {
                  v31 = *(v29 + 2);
                  v29 += 2;
                  v32 = v31 == v30;
                }

                while (v31 < v30);
                if (v32)
                {
                  (*(*a4 + 16))(a4, *(v28 + 17), 0);
                  v33 = malloc_type_malloc(*(v28 + 12), 0x100004077774924uLL);
                  v28[7] = v33;
                  if (!v33)
                  {
                    v37 = __cxa_allocate_exception(0x18uLL);
                    *v37 = 15;
                    v37[1] = "No data block";
                    *(v37 + 16) = 0;
                  }

                  (**a4)(a4, v33, *(v28 + 12), 1);
                }
              }

              v34 = v28[1];
              if (v34)
              {
                do
                {
                  v35 = v34;
                  v34 = *v34;
                }

                while (v34);
              }

              else
              {
                do
                {
                  v35 = v28[2];
                  v32 = *v35 == v28;
                  v28 = v35;
                }

                while (!v32);
              }

              v28 = v35;
            }

            while (v35 != (a1 + 40 * a2 + 136));
          }

          v12 = *(a1 + 40 * a2 + 120);
          goto LABEL_7;
        }

        v15 = a3 + 10;
        v16 = __p + 8;
        while (1)
        {
          v17 = (*(a1 + 8))(v16 - 6);
          if ((v17 - 14) >= 0xFFF3u)
          {
            v18 = (*(a1 + 8))(v16 - 2);
            v19 = (*(a1 + 16))(v16 - 1);
            v43 = 0u;
            v38 = v18;
            v39 = v18;
            v40 = v17;
            v41 = v19;
            v42[0] = 0;
            v42[1] = 0;
            *&v43 = 0;
            WORD4(v43) = 256;
            v20 = std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,TIFF_FileWriter::InternalTagInfo> const&>((a1 + 40 * a2 + 128), (a1 + 40 * a2 + 136), &v38);
            v21 = v20;
            v22 = *(v20 + 44) * kTIFF_TypeSizes[*(v20 + 42)];
            *(v20 + 64) = v22;
            *(v20 + 48) = v22;
            *(v20 + 52) = *v16;
            v23 = v20 + 52;
            if (v22 > 4)
            {
              v24 = (*(a1 + 16))(v16);
              *(v21 + 68) = v24;
              if (v24 < 8 || (v25 = *(a1 + 104), v26 = v25 >= v24, v27 = v25 - v24, v27 == 0 || !v26) || *(v21 + 48) > v27)
              {
                *(v21 + 48) = 0;
                *(v21 + 56) = v23;
                *(v21 + 64) = 0;
                *(v21 + 68) = v15;
                *(v21 + 44) = 0;
              }
            }

            else
            {
              *(v20 + 56) = v23;
              *(v20 + 68) = v15;
            }

            if (BYTE9(v43))
            {
              if (LODWORD(v42[0]) >= 5)
              {
                goto LABEL_30;
              }
            }

            else if (BYTE8(v43) == 1 && LODWORD(v42[0]) > 4)
            {
LABEL_30:
              if (v42[1])
              {
                free(v42[1]);
              }
            }
          }

          v15 += 12;
          v16 += 3;
          if (!--v9)
          {
            goto LABEL_33;
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_7:
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_1861624CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, void *a14, uint64_t a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (a17)
  {
    if (a13 < 5)
    {
      goto LABEL_8;
    }
  }

  else if (a16 != 1 || a13 <= 4)
  {
    goto LABEL_8;
  }

  if (a14)
  {
    free(a14);
  }

LABEL_8:
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TIFF_FileWriter::IntegrateFromPShop6(uint64_t (**this)(void), const void *a2, size_t a3)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  TIFF_MemoryReader::TIFF_MemoryReader(v6);
  TIFF_MemoryReader::ParseMemoryStream(v6, a2, a3, 1, 0);
  TIFF_FileWriter::ProcessPShop6IFD(this, v6, 0);
  TIFF_FileWriter::ProcessPShop6IFD(this, v6, 2);
  TIFF_FileWriter::ProcessPShop6IFD(this, v6, 3);
  *&v6[0] = &unk_1EF4FB250;
  if (BYTE8(v7) == 1)
  {
    free(v8[0]);
  }
}

void sub_186162624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21)
{
  if (a20 == 1)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void TIFF_FileWriter::ProcessPShop6IFD(uint64_t (**this)(void), const TIFF_MemoryReader *a2, TIFF_FileWriter *a3)
{
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  if ((*(*a2 + 16))(a2, a3, &v30))
  {
    v6 = v30;
    if (v30 != v31)
    {
      v7 = *(this + 72);
      v8 = *(a2 + 72);
      do
      {
        v9 = (v6 + 5);
        if (TIFF_FileWriter::FindTagInIFD(this, a3, *(v6 + 20)))
        {
          goto LABEL_15;
        }

        v10 = *v9;
        if (v7 != v8 && v10 == 37500)
        {
          goto LABEL_15;
        }

        if (*v9 > 0x8824u)
        {
          v11 = v10 == 34853;
          v12 = 40965;
        }

        else
        {
          v11 = v10 == 513;
          v12 = 34665;
        }

        if (v11 || v10 == v12)
        {
          goto LABEL_15;
        }

        v16 = TIFF_FileWriter::CopyTagToMainIFD(this, (v6 + 5), &this[5 * a3 + 14]);
        if (v7 == v8)
        {
          goto LABEL_15;
        }

        v17 = *(v6 + 21);
        if (v17 > 6)
        {
          if (*(v6 + 21) > 9u)
          {
            switch(v17)
            {
              case 0xAu:
                goto LABEL_49;
              case 0xBu:
LABEL_43:
                v19 = *(v6 + 11);
                if (v19)
                {
                  do
                  {
                    *v16 = bswap32(*v16);
                    v16 += 2;
                    --v19;
                  }

                  while (v19);
                }

                goto LABEL_15;
              case 0xCu:
                v18 = *(v6 + 11);
                if (v18)
                {
                  do
                  {
                    *v16 = bswap64(*v16);
                    v16 += 4;
                    --v18;
                  }

                  while (v18);
                }

                goto LABEL_15;
            }

LABEL_66:
            (*(*this + 5))(this, a3, *v9);
            goto LABEL_15;
          }

          if (v17 != 7)
          {
            if (v17 == 8)
            {
LABEL_46:
              v20 = *(v6 + 11);
              if (v20)
              {
                do
                {
                  *v16 = bswap32(*v16) >> 16;
                  ++v16;
                  --v20;
                }

                while (v20);
              }

              goto LABEL_15;
            }

            if (v17 == 9)
            {
              goto LABEL_43;
            }

            goto LABEL_66;
          }

          v22 = *v9;
          if (v22 <= 0xA301)
          {
            if (v22 != 34856 && v22 != 41484 || FlipOECFSFRTable(v16, *(v6 + 14), this[1]))
            {
              goto LABEL_15;
            }

            goto LABEL_66;
          }

          if (v22 == 41995)
          {
            v24 = *(v6 + 14);
            if (v24 < 4)
            {
              goto LABEL_66;
            }

            v25 = v24 >> 1;
            do
            {
              *v16 = bswap32(*v16) >> 16;
              ++v16;
              --v25;
            }

            while (v25);
          }

          else if (v22 == 41730)
          {
            v29 = *(v6 + 14);
            if (v29 < 4)
            {
              goto LABEL_66;
            }

            v23 = this[1];
            *v16 = bswap32(*v16) >> 16;
            v27 = v16 + 1;
            v28 = v23;
            v16[1] = bswap32(v16[1]) >> 16;
            v26 = v23();
            if ((v28)(v27) * v26 + 4 != v29)
            {
              goto LABEL_66;
            }
          }
        }

        else if (*(v6 + 21) > 3u)
        {
          if (v17 == 4)
          {
            goto LABEL_43;
          }

          if (v17 == 5)
          {
LABEL_49:
            v21 = (2 * *(v6 + 11));
            if (v21)
            {
              do
              {
                *v16 = bswap32(*v16);
                v16 += 2;
                --v21;
              }

              while (v21);
            }

            goto LABEL_15;
          }

          if (v17 != 6)
          {
            goto LABEL_66;
          }
        }

        else if (v17 - 1 >= 2)
        {
          if (v17 == 3)
          {
            goto LABEL_46;
          }

          goto LABEL_66;
        }

LABEL_15:
        v14 = v6[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v6[2];
            v11 = *v15 == v6;
            v6 = v15;
          }

          while (!v11);
        }

        v6 = v15;
      }

      while (v15 != v31);
    }
  }

  std::__tree<unsigned long long>::destroy(&v30, v31[0]);
}

uint64_t TIFF_FileWriter::CopyTagToMainIFD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  v7 = *(a1 + 91);
  LOWORD(v14) = *a2;
  WORD4(v14) = v14;
  WORD5(v14) = v5;
  HIDWORD(v14) = v6;
  v15[0] = 0;
  v15[1] = 0;
  *&v16 = 0;
  BYTE8(v16) = 0;
  BYTE9(v16) = v7;
  v8 = std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,TIFF_FileWriter::InternalTagInfo> const&>((a3 + 16), (a3 + 24), &v14);
  v9 = *(a2 + 16);
  *(v8 + 48) = v9;
  if (v9 > 4)
  {
    v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
    *(v8 + 56) = v10;
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 15;
      exception[1] = "Out of memory";
      *(exception + 16) = 0;
    }

    memcpy(v10, *(a2 + 8), *(v8 + 48));
  }

  else
  {
    *(v8 + 52) = **(a2 + 8);
    *(v8 + 56) = v8 + 52;
  }

  *(v8 + 72) = 1;
  if (*(v8 + 64) || *(v8 + 68))
  {
    __assert_rtn("CopyTagToMainIFD", "TIFF_FileWriter.cpp", 998, "(newTag.origDataLen == 0) && (newTag.origDataOffset == 0)");
  }

  *a3 = 1;
  v11 = *(v8 + 56);
  if (BYTE9(v16))
  {
    if (LODWORD(v15[0]) < 5)
    {
      return v11;
    }
  }

  else if (BYTE8(v16) != 1 || LODWORD(v15[0]) <= 4)
  {
    return v11;
  }

  if (v15[1])
  {
    free(v15[1]);
  }

  return v11;
}

void sub_186162BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int a11, void *a12, uint64_t a13, char a14, char a15)
{
  if (a15)
  {
    if (a11 < 5)
    {
      goto LABEL_8;
    }
  }

  else if (a14 != 1 || a11 <= 4)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  if (a12)
  {
    free(a12);
  }

  goto LABEL_8;
}

BOOL FlipOECFSFRTable(_WORD *a1, unsigned int a2, uint64_t (*a3)(void))
{
  *a1 = bswap32(*a1) >> 16;
  v6 = (a1 + 1);
  a1[1] = bswap32(a1[1]) >> 16;
  v7 = a3();
  v8 = (a3)(v6);
  v9 = v7 + 8 * v7 * v8 + 4;
  v10 = (2 * v7 * v8);
  if (v9 <= a2 && v10 != 0)
  {
    v12 = (a1 + a2 - 8 * v7 * v8);
    do
    {
      *v12 = bswap32(*v12);
      ++v12;
      --v10;
    }

    while (v10);
  }

  return v9 <= a2;
}

uint64_t TIFF_FileWriter::PreflightIFDLinkage(void (**this)(uint64_t, int *))
{
  v2 = *this;
  if (this[38])
  {
    if (((*(v2 + 3))(this, 2, 40965, 0) & 1) == 0)
    {
      TIFF_Manager::SetTag_Long(this, 2, 40965, 2880285613);
    }
  }

  else
  {
    (*(v2 + 5))(this, 2, 40965);
  }

  v3 = *this;
  if (this[33])
  {
    if (((*(v3 + 3))(this, 0, 34853, 0) & 1) == 0)
    {
      TIFF_Manager::SetTag_Long(this, 0, 34853, 2880285613);
    }
  }

  else
  {
    (*(v3 + 5))(this, 0, 34853);
  }

  v4 = *this;
  if (this[28])
  {
    result = (*(v4 + 3))(this, 0, 34665, 0);
    if ((result & 1) == 0)
    {
      result = TIFF_Manager::SetTag_Long(this, 0, 34665, 2880285613);
    }
  }

  else
  {
    result = (*(v4 + 5))(this, 0, 34665);
  }

  if (!this[18] && this[23])
  {

    return TIFF_Manager::SetTag_Short(this, 0, 296, 2);
  }

  return result;
}

uint64_t TIFF_FileWriter::DetermineVisibleLength(TIFF_FileWriter *this)
{
  v1 = 0;
  v2 = this + 112;
  result = 8;
  do
  {
    v4 = &v2[40 * v1];
    v5 = *(v4 + 4);
    if (v5)
    {
      v6 = v4 + 16;
      result = (result + 12 * v5 + 6);
      v9 = *v6;
      v7 = v6 + 1;
      v8 = v9;
      if (v9 != v7)
      {
        do
        {
          v10 = *(v8 + 12);
          if (v10 <= 4)
          {
            v11 = 0;
          }

          else
          {
            v11 = (v10 + 1) & 0xFFFFFFFE;
          }

          v12 = v8[1];
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
              v13 = v8[2];
              v14 = *v13 == v8;
              v8 = v13;
            }

            while (!v14);
          }

          result = v11 + result;
          v8 = v13;
        }

        while (v13 != v7);
      }
    }

    ++v1;
  }

  while (v1 != 5);
  return result;
}

uint64_t TIFF_FileWriter::DetermineAppendInfo(TIFF_FileWriter *this, int a2, BOOL *a3, unsigned int *a4, int a5)
{
  if (a2)
  {
    TIFF_FileWriter::DetermineAppendInfo();
  }

  if (a5)
  {
    v10 = 0;
    v11 = (this + 144);
    do
    {
      v12 = *v11;
      v11 += 5;
      a3[v10++] = v12 != 0;
    }

    while (v10 != 5);
    v13 = a3[4];
  }

  else
  {
    v13 = 0;
    *a3 = 0;
  }

  v14 = v13 || *(this + 38) > *(this + 137);
  a3[4] = v14;
  if (v14)
  {
    TIFF_Manager::SetTag_Long(this, 2, 40965, 2880285613);
  }

  v15 = a3[3] || *(this + 33) > *(this + 117);
  a3[3] = v15;
  if (v15)
  {
    TIFF_Manager::SetTag_Long(this, 0, 34853, 2880285613);
  }

  v16 = a3[2] || *(this + 28) > *(this + 97);
  a3[2] = v16;
  if (v16)
  {
    TIFF_Manager::SetTag_Long(this, 0, 34665, 2880285613);
  }

  v17 = 0;
  v18 = 0;
  *a3 |= *(this + 18) > *(this + 57);
  do
  {
    v19 = this + 40 * v17 + 112;
    v20 = *(v19 + 4);
    a4[v17] = *(v19 + 1);
    if (*v19 | a5)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      if (a3[v17])
      {
        a4[v17] = v18 + a2;
        v18 = (v18 + 12 * v20 + 6);
      }

      v22 = *(v19 + 2);
      v23 = v19 + 24;
      if (v22 != v19 + 24)
      {
        do
        {
          if (v22[72] | a5)
          {
            v24 = *(v22 + 12);
            if (v24 >= 5)
            {
              v25 = *(this + 6);
              if (v24 > *(v22 + 16) || (a5 & 1) != 0)
              {
                v25((v18 + a2), v22 + 52);
                v18 = ((*(v22 + 12) + 1) & 0xFFFFFFFE) + v18;
              }

              else
              {
                v25(*(v22 + 17), v22 + 52);
              }
            }
          }

          v26 = *(v22 + 1);
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = *(v22 + 2);
              v21 = *v27 == v22;
              v22 = v27;
            }

            while (!v21);
          }

          v22 = v27;
        }

        while (v27 != v23);
      }
    }

    ++v17;
  }

  while (v17 != 5);
  if (a3[2])
  {
    TIFF_Manager::SetTag_Long(this, 0, 34665, a4[2]);
  }

  if (a3[3])
  {
    TIFF_Manager::SetTag_Long(this, 0, 34853, a4[3]);
  }

  if (a3[4])
  {
    TIFF_Manager::SetTag_Long(this, 2, 40965, a4[4]);
  }

  return v18;
}

void *TIFF_FileWriter::UpdateMemByAppend(TIFF_FileWriter *this, unsigned __int8 **a2, unsigned int *a3, int a4, int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v45 = 0;
  *v44 = 0;
  *v46 = 0;
  v47 = 0;
  v48 = 0;
  v10 = *(this + 26) + 1;
  v11 = v10 & 0xFFFFFFFE;
  v43 = v11 + TIFF_FileWriter::DetermineAppendInfo(this, v10 & 0xFFFFFFFE, v44, v46, a4);
  v12 = malloc_type_malloc(v43 + a5, 0x100004077774924uLL);
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    exception[1] = "Out of memory";
    *(exception + 16) = 0;
  }

  v13 = v12;
  result = memcpy(v12, *(this + 12), *(this + 26));
  v15 = *(this + 26);
  if (v15 < v11)
  {
    if (v11 != v15 + 1)
    {
      TIFF_FileWriter::UpdateMemByAppend();
    }

    v13[v15] = 0;
  }

  v40 = a2;
  v41 = a3;
  v16 = 0;
  v17 = this + 112;
  do
  {
    v18 = &v17[40 * v16];
    v19 = *(v18 + 4);
    if (*v18 | a4)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = v46[v16];
      if (v44[v16])
      {
        if (v21 != v11)
        {
          __assert_rtn("UpdateMemByAppend", "TIFF_FileWriter.cpp", 1485, "newIFDOffsets[ifd] == appendedOffset");
        }

        v22 = (v11 + 12 * v19 + 6);
      }

      else
      {
        v22 = v11;
      }

      v23 = v13;
      v24 = &v13[v21];
      (*(this + 5))(*(v18 + 4), &v13[v21]);
      v25 = v24 + 2;
      v26 = *(v18 + 2);
      v42 = v18;
      v27 = (v18 + 24);
      if (v26 != v27)
      {
        do
        {
          (*(this + 5))(*(v26 + 20), v25);
          (*(this + 5))(*(v26 + 21), v25 + 2);
          (*(this + 6))(*(v26 + 11), v25 + 4);
          *(v25 + 2) = *(v26 + 13);
          if (v26[72] | a4 && *(v26 + 12) >= 5u)
          {
            v28 = (*(this + 2))();
            v29 = v28;
            v30 = *(v26 + 12);
            if (v30 > *(v26 + 16))
            {
              v31 = 1;
            }

            else
            {
              v31 = a4;
            }

            if (v31)
            {
              if (v28 != v22)
              {
                v36 = 1516;
                v37 = "valueOffset == appendedOffset";
                goto LABEL_47;
              }

              v22 = ((v30 + 1) & 0xFFFFFFFE) + v22;
            }

            else if (v28 != *(v26 + 17))
            {
              v36 = 1514;
              v37 = "valueOffset == currTag.origDataOffset";
LABEL_47:
              __assert_rtn("UpdateMemByAppend", "TIFF_FileWriter.cpp", v36, v37);
            }

            if (v43 < v28)
            {
              v36 = 1520;
              v37 = "valueOffset <= newLength";
              goto LABEL_47;
            }

            if (v30 > v43 - v28)
            {
              v38 = __cxa_allocate_exception(0x18uLL);
              *v38 = 9;
              v38[1] = "Buffer overrun";
              *(v38 + 16) = 0;
            }

            memcpy(&v23[v28], *(v26 + 7), v30);
            if (v31)
            {
              v32 = *(v26 + 12);
              if (v32)
              {
                v23[v32 + v29] = 0;
              }
            }
          }

          v33 = *(v26 + 1);
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = *(v26 + 2);
              v20 = *v34 == v26;
              v26 = v34;
            }

            while (!v20);
          }

          v25 += 12;
          v26 = v34;
        }

        while (v34 != v27);
      }

      v13 = v23;
      result = (*(this + 6))(*(v42 + 2), v25);
      v11 = v22;
      v17 = this + 112;
    }

    ++v16;
  }

  while (v16 != 5);
  if (v11 != v43)
  {
    __assert_rtn("UpdateMemByAppend", "TIFF_FileWriter.cpp", 1539, "appendedOffset == newLength");
  }

  if (v44[0])
  {
    result = (*(this + 6))(v46[0], v13 + 4);
  }

  if (v44[1])
  {
    v35 = *(this + 36);
    if (v35)
    {
      result = (*(this + 6))(v46[1], &v13[12 * v35 + 2 + v46[0]]);
    }
  }

  *v40 = v13;
  *v41 = v43;
  return result;
}

void sub_186163624(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    free(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_186163680(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x186163688);
  }

  __clang_call_terminate(a1);
}

void *TIFF_FileWriter::UpdateMemByRewrite(TIFF_FileWriter *this, unsigned __int8 **a2, unsigned int *a3)
{
  v6 = 0;
  v27 = *MEMORY[0x1E69E9840];
  do
  {
    for (i = 0; i != 10; ++i)
    {
      if (TIFF_FileWriter::FindTagInIFD(this, v6, kNoGoTags[i]))
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 8;
        exception[1] = "Tag not tolerated for TIFF rewrite";
        *(exception + 16) = 0;
      }
    }

    v8 = v6++;
  }

  while (v8 < 4);
  v9 = 0;
  do
  {
    v10 = v9;
    (*(*this + 40))(this, v9++, 37500);
  }

  while (v10 < 4);
  v11 = TIFF_FileWriter::DetermineVisibleLength(this);
  v26 = 0;
  __n = 0;
  v12 = (*(*this + 56))(this, 1, 514, &__n);
  if (v12 != (*(*this + 56))(this, 1, 513, &__n + 4))
  {
    v22 = __cxa_allocate_exception(0x18uLL);
    *v22 = 206;
    v22[1] = "Unpaired simple hidden content tag";
    *(v22 + 16) = 0;
  }

  if (__n)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    v26 = v11;
    TIFF_Manager::SetTag_Long(this, 1, 513, v11);
    v14 = (__n + 1) & 0xFFFFFFFE;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 12);
  v16 = *(this + 92);
  if (*(this + 72))
  {
    v17 = 77;
  }

  else
  {
    v17 = 73;
  }

  if (*(this + 72))
  {
    v18 = 0;
  }

  else
  {
    v18 = 42;
  }

  if (*(this + 72))
  {
    v19 = 42;
  }

  else
  {
    v19 = 0;
  }

  v23[0] = v17;
  v23[1] = v17;
  v23[2] = v18;
  v23[3] = v19;
  v24 = 0;
  *(this + 12) = v23;
  *(this + 26) = 8;
  *(this + 92) = 0;
  result = TIFF_FileWriter::UpdateMemByAppend(this, a2, a3, 1, v14);
  if (*a3 != v11)
  {
    TIFF_FileWriter::UpdateMemByRewrite();
  }

  *a3 = v11 + v14;
  if (__n)
  {
    result = memcpy(&(*a2)[v26], (v15 + HIDWORD(__n)), __n);
  }

  if (v16)
  {
    if (v15)
    {
      return MEMORY[0x186602850](v15, 0x1000C4077774924);
    }
  }

  return result;
}

uint64_t TIFF_FileWriter::UpdateMemoryStream(TIFF_FileWriter *this, void **a2, char a3)
{
  if (*(this + 91) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "Not memory based";
    *(exception + 16) = 0;
  }

  v6 = *(this + 88) | a3;
  *(this + 88) = v6;
  if (v6)
  {
    TIFF_FileWriter::PreflightIFDLinkage(this);
    v7 = 144;
    while (!*(this + v7))
    {
      v7 += 40;
      if (v7 == 344)
      {
        v12 = 0;
        v11 = 0;
        TIFF_FileWriter::DeleteExistingInfo(this);
        goto LABEL_14;
      }
    }

    v12 = 0;
    v11 = 0;
    if (!*(this + 26) || (a3 & 1) != 0)
    {
      TIFF_FileWriter::UpdateMemByRewrite(this, &v12, &v11);
    }

    else
    {
      TIFF_FileWriter::UpdateMemByAppend(this, &v12, &v11, 0, 0);
    }

LABEL_14:
    v8 = v11;
    (*(*this + 200))(this, v12, v11, 0, 0);
    if (*(this + 26) != v8)
    {
      TIFF_FileWriter::UpdateMemoryStream();
    }

    *(this + 92) = v8 != 0;
    if (a2)
    {
      *a2 = *(this + 12);
    }
  }

  else
  {
    if (a2)
    {
      *a2 = *(this + 12);
    }

    return *(this + 26);
  }

  return v8;
}

uint64_t TIFF_FileWriter::UpdateFileStream(uint64_t result, uint64_t a2, XMP_ProgressTracker *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(result + 90) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v43 = "Not file based";
    goto LABEL_84;
  }

  v3 = result;
  if (*(result + 88) != 1)
  {
    return result;
  }

  v6 = (*(*a2 + 24))(a2);
  if (HIDWORD(v6))
  {
    goto LABEL_83;
  }

  v7 = v6;
  v46 = 0;
  *v45 = 0;
  *v47 = 0;
  v48 = 0;
  v49 = 0;
  if (v6)
  {
    v7 = v6 + 1;
    (*(*a2 + 16))(a2, 0, 2);
    (*(*a2 + 8))(a2, &unk_186229BDE, 1);
  }

  TIFF_FileWriter::PreflightIFDLinkage(v3);
  if ((v7 ^ 0xFFFFFFFFuLL) < TIFF_FileWriter::DetermineAppendInfo(v3, v7, v45, v47, 0))
  {
LABEL_83:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    v43 = "TIFF files can't exceed 4GB";
LABEL_84:
    exception[1] = v43;
    *(exception + 16) = 0;
  }

  if (a3)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = v3 + 112 + 40 * v9;
      if (*v11 == 1)
      {
        v10 = v10 + (12 * *(v11 + 32) + 6);
        v12 = (v11 + 24);
        v13 = *(v11 + 16);
        if (v13 != v12)
        {
          do
          {
            if (*(v13 + 72) == 1)
            {
              v14 = *(v13 + 12);
              if (v14 >= 5)
              {
                v10 = v10 + v14;
              }
            }

            v15 = v13[1];
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v13[2];
                v17 = *v16 == v13;
                v13 = v16;
              }

              while (!v17);
            }

            v13 = v16;
          }

          while (v16 != v12);
        }
      }

      ++v9;
    }

    while (v9 != 5);
    if ((*(a3 + 32) & 1) == 0)
    {
      TIFF_FileWriter::UpdateFileStream();
    }

    if (v45[0])
    {
      v10 = v10 + 4.0;
    }

    v8.n128_f32[0] = XMP_ProgressTracker::AddTotalWork(a3, v10);
  }

  v18 = 0;
  v19 = v3 + 112;
  do
  {
    v20 = v19 + 40 * v18;
    if (*v20 == 1)
    {
      if (!v45[v18])
      {
        (*(*a2 + 16))(a2, *(v20 + 4), 0, v8);
        TIFF_FileWriter::WriteFileIFD(v3, a2, v19 + 40 * v18);
      }

      v21 = (v20 + 24);
      v22 = *(v20 + 16);
      if (v22 != v21)
      {
        do
        {
          if (*(v22 + 72) == 1)
          {
            v23 = *(v22 + 12);
            if (v23 >= 5 && v23 <= *(v22 + 16))
            {
              (*(*a2 + 16))(a2, *(v22 + 17), 0, v8);
              (*(*a2 + 8))(a2, v22[7], *(v22 + 12));
            }
          }

          v24 = v22[1];
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
              v25 = v22[2];
              v17 = *v25 == v22;
              v22 = v25;
            }

            while (!v17);
          }

          v22 = v25;
        }

        while (v25 != v21);
      }
    }

    ++v18;
  }

  while (v18 != 5);
  if ((*(*a2 + 16))(a2, 0, 2, v8) != v7)
  {
    TIFF_FileWriter::UpdateFileStream();
  }

  for (i = 0; i != 5; ++i)
  {
    v27 = v19 + 40 * i;
    if (*v27 == 1)
    {
      if (v45[i])
      {
        v28 = v47[i];
        if ((*(*a2 + 24))(a2) != v28)
        {
          TIFF_FileWriter::UpdateFileStream();
        }

        TIFF_FileWriter::WriteFileIFD(v3, a2, v19 + 40 * i);
      }

      v29 = (v27 + 24);
      v30 = *(v27 + 16);
      if (v30 != (v27 + 24))
      {
        do
        {
          if (*(v30 + 72) == 1)
          {
            v31 = *(v30 + 12);
            if (v31 >= 5 && v31 > *(v30 + 16))
            {
              v32 = (*(v3 + 16))(v30 + 52);
              if ((*(*a2 + 24))(a2) != v32)
              {
                TIFF_FileWriter::UpdateFileStream();
              }

              (*(*a2 + 8))(a2, v30[7], *(v30 + 12));
              if (v30[6])
              {
                (*(*a2 + 8))(a2, &unk_186229BDE, 1);
              }
            }
          }

          v33 = v30[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v30[2];
              v17 = *v34 == v30;
              v30 = v34;
            }

            while (!v17);
          }

          v30 = v34;
        }

        while (v34 != v29);
      }
    }
  }

  v44 = 0;
  if (v45[0])
  {
    (*(v3 + 48))(v47[0], &v44);
    (*(*a2 + 16))(a2, 4, 0);
    (*(*a2 + 8))(a2, &v44, 4);
  }

  for (j = 0; j != 5; ++j)
  {
    v36 = v19 + 40 * j;
    if (*v36 == 1)
    {
      *v36 = 0;
      *(v36 + 2) = *(v36 + 32);
      *(v36 + 4) = v47[j];
      v37 = (v36 + 24);
      v38 = *(v36 + 16);
      if (v38 != (v36 + 24))
      {
        do
        {
          if (*(v38 + 72) == 1)
          {
            *(v38 + 72) = 0;
            v39 = *(v38 + 12);
            *(v38 + 16) = v39;
            if (v39 >= 5)
            {
              *(v38 + 17) = (*(v3 + 16))(v38 + 52);
            }
          }

          v40 = v38[1];
          if (v40)
          {
            do
            {
              v41 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v41 = v38[2];
              v17 = *v41 == v38;
              v38 = v41;
            }

            while (!v17);
          }

          v38 = v41;
        }

        while (v41 != v37);
      }
    }
  }

  *(v3 + 104) = (*(*a2 + 24))(a2);
  return (*(*a2 + 16))(a2, 0, 2);
}

uint64_t TIFF_FileWriter::WriteFileIFD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  (*(a1 + 40))(*(a3 + 32), &v13);
  (*(*a2 + 8))(a2, &v13, 2);
  v6 = *(a3 + 16);
  if (v6 != (a3 + 24))
  {
    do
    {
      v12 = 0;
      v11 = 0;
      (*(a1 + 40))(*(v6 + 20), &v11);
      (*(a1 + 40))(*(v6 + 21), &v11 + 2);
      (*(a1 + 48))(*(v6 + 11), &v11 + 4);
      v12 = *(v6 + 13);
      (*(*a2 + 8))(a2, &v11, 12);
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != (a3 + 24));
  }

  LODWORD(v11) = 0;
  (*(a1 + 48))(*(a3 + 8), &v11);
  return (*(*a2 + 8))(a2, &v11, 4);
}

void std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::destroy(a1, a2[1]);
    TIFF_FileWriter::InternalTagInfo::~InternalTagInfo((a2 + 5));

    operator delete(a2);
  }
}

void TIFF_MemoryReader::TIFF_MemoryReader(TIFF_MemoryReader *this)
{
  TIFF_Manager::TIFF_Manager(this);
  v2 = 0;
  *v1 = &unk_1EF4FB250;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  do
  {
    v3 = v1 + v2;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    v2 += 16;
  }

  while (v2 != 80);
  *(v1 + 74) = 1;
}

uint64_t std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,TIFF_FileWriter::InternalTagInfo> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__find_equal<unsigned short>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__find_equal<unsigned short>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 16), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 16) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 16))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      TIFF_FileWriter::InternalTagInfo::~InternalTagInfo((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

void *std::vector<unsigned char>::vector[abi:fe200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:fe200100](result, a2);
  }

  return result;
}

void sub_1861647D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TIFF_FileWriter::TIFF_FileWriter(uint64_t a1)
{
  v1 = a1 + 288;
  v2 = -200;
  do
  {
    std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::destroy(v1, *(v1 + 8));
    v1 -= 40;
    v2 += 40;
  }

  while (v2);
}

void TIFF_FileWriter::UpdateFileStream()
{
  __assert_rtn("UpdateFileStream", "TIFF_FileWriter.cpp", 1892, "progressTracker->WorkInProgress()");
}

{
  __assert_rtn("UpdateFileStream", "TIFF_FileWriter.cpp", 1937, "fileEnd == appendedOrigin");
}

{
  __assert_rtn("UpdateFileStream", "TIFF_FileWriter.cpp", 1948, "newIFDOffsets[ifd] == fileRef->Length()");
}

{
  __assert_rtn("UpdateFileStream", "TIFF_FileWriter.cpp", 1962, "this->GetUns32(&thisTag.smallValue) == fileRef->Length()");
}

void sub_186164A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  _Unwind_Resume(a1);
}

void sub_186164B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  _Unwind_Resume(a1);
}

void sub_186164C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_186164CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::shared_ptr<AdobeXMPCore::IDOMImplementationRegistry_v1>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void AdobeXMPCore_Int::DOMImplementationRegistryImpl::~DOMImplementationRegistryImpl(AdobeXMPCore_Int::DOMImplementationRegistryImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 64), off_1EF4FC898);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 64), off_1EF4FC898);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::DOMImplementationRegistryImpl::~DOMImplementationRegistryImpl(AdobeXMPCore_Int::DOMImplementationRegistryImpl *this)
{
  v2 = (v1 + 64);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4FC898);
}

{
  AdobeXMPCore_Int::DOMImplementationRegistryImpl::~DOMImplementationRegistryImpl((this + *(*this - 24)));
}

void virtual thunk toAdobeXMPCore_Int::DOMImplementationRegistryImpl::~DOMImplementationRegistryImpl(void *a1)
{
  v2 = (v1 + 64);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4FC898);
}

{
  AdobeXMPCore_Int::DOMImplementationRegistryImpl::~DOMImplementationRegistryImpl((a1 + *(*a1 - 48)));
}

void *AdobeXMPCore_Int::DOMImplementationRegistryImpl::DOMImplementationRegistryImpl(void *this)
{
  this[8] = &unk_1EF4FCC50;
  *this = &unk_1EF4FC970;
  this[7] = off_1EF4FCA30;
  *(this + unk_1EF4FC8D0) = &unk_1EF4FCA90;
  this[9] = 0;
  this[10] = 0;
  *this = &unk_1EF4FC6B8;
  this[6] = 0;
  this[7] = &unk_1EF4FC778;
  this[8] = &unk_1EF4FC7E0;
  this[2] = 0;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  return this;
}

void AdobeXMPCore_Int::RDFDOMSerializerImpl::RDFDOMSerializerImpl(AdobeXMPCore_Int::RDFDOMSerializerImpl *this)
{
  v2 = (this + 8);
  v3 = this + 88;
  *(this + 11) = &unk_1EF4FCDF0;
  *this = &unk_1EF4F1560;
  v4 = off_1EF500100;
  v5 = off_1EF500108;
  *(this + 1) = off_1EF500108;
  v6 = off_1EF500118;
  *(v2 + *(v5 - 27)) = off_1EF500110;
  *(v2 + *(*(this + 1) - 224)) = v6;
  v7 = off_1EF500128;
  *(v2 + *(*(this + 1) - 232)) = off_1EF500120;
  *(this + 4) = v7;
  v8 = off_1EF500138;
  *(*(v7 - 27) + this + 32) = off_1EF500130;
  *(this + 11) = v8;
  *&v3[*(v8 - 7)] = off_1EF500140;
  v9 = off_1EF5000D8[0];
  v10 = off_1EF5000D0[0];
  *(this + 1) = off_1EF5000D0[0];
  *(*(v10 - 36) + v2) = v9;
  v11 = off_1EF5000E8;
  *(v2 + *(*(this + 1) - 216)) = off_1EF5000E0;
  *(v2 + *(*(this + 1) - 224)) = v11;
  v12 = off_1EF5000F8;
  *(v2 + *(*(this + 1) - 232)) = off_1EF5000F0;
  *(v2 + *(*(this + 1) - 296)) = v12;
  *(v2 + *(*(this + 1) - 304)) = v4;
  AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl(this + 32, off_1EF500148);
  v13 = off_1EF500168[0];
  v14 = off_1EF500160[0];
  *(this + 11) = off_1EF500160[0];
  *(*(v14 - 9) + v3) = v13;
  *&v3[*(*(this + 11) - 56)] = off_1EF500170;
  *(this + 12) = 0;
  *(this + 13) = 0;
  AdobeXMPCore_Int::DOMSerializerImpl::DOMSerializerImpl(v2, off_1EF500080);
}

void sub_1861655BC(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v1, (v3 + 312));
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(v2, (v3 + 288));
  _Unwind_Resume(a1);
}

void sub_18616565C(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::RDFDOMParserImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::RDFDOMParserImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::RDFDOMParserImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::RDFDOMParserImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::RDFDOMParserImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::RDFDOMParserImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186165848(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::RDFDOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::RDFDOMSerializerImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::RDFDOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::RDFDOMSerializerImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::RDFDOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::RDFDOMSerializerImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186165A34(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 208) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMImplementationRegistryImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMImplementationRegistryImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMImplementationRegistryImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMImplementationRegistryImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 208) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMImplementationRegistryImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMImplementationRegistryImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::DOMImplementationRegistryImpl::~DOMImplementationRegistryImpl(AdobeXMPCore_Int::DOMImplementationRegistryImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 200)) = a2[1];
  *(this + *(*this - 152)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 160)) = a2[5];
  *(this + *(*this - 208)) = a2[6];
  std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(this + 8, *(this + 2));
}

uint64_t std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCore::IDOMParser_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCore::IDOMParser_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCore::IDOMParser_v1 const>>>>::__emplace_unique_key_args<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::pair<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCore::IDOMParser_v1 const>>>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::__find_equal<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t DumpNodeOptions(unsigned int a1, uint64_t (*a2)(void *, const char *, uint64_t), void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *__str = 0;
  v12 = 0;
  memset(v13, 0, 15);
  if (a1)
  {
    result = a2(a3, "(0x", 3);
    if (!result)
    {
      snprintf(__str, 0x20uLL, "%lX", a1);
      v13[15] = 0;
      v6 = strlen(__str);
      result = a2(a3, __str, v6);
      if (!result)
      {
        result = a2(a3, " :", 2);
        if (!result)
        {
          v7 = 0;
          for (i = 0x80000000; ; i >>= 1)
          {
            if ((i & a1) != 0)
            {
              v9 = strlen(DumpNodeOptions(unsigned int,int (*)(void *,char const*,unsigned int),void *)::optNames[v7]);
              result = a2(a3, DumpNodeOptions(unsigned int,int (*)(void *,char const*,unsigned int),void *)::optNames[v7], v9);
              if (result)
              {
                break;
              }
            }

            if (++v7 == 32)
            {
              return a2(a3, ")", 1);
            }
          }
        }
      }
    }
  }

  else
  {

    return a2(a3, "(0x0)", 5);
  }

  return result;
}

uint64_t XMPMeta::DumpObject(XMPMeta *this, uint64_t (*a2)(void *, const char *, uint64_t), void *a3)
{
  if (!a2)
  {
    XMPMeta::DumpObject();
  }

  result = a2(a3, "Dumping XMPMeta object ", 24);
  if (!result)
  {
    DumpClearString(this + 240, a2, a3);
    result = a2(a3, "  ", 3);
    if (!result)
    {
      DumpNodeOptions(*(this + 58), a2, a3);
      result = a2(a3, "\n", 1);
      if (!result)
      {
        v7 = *(this + 287);
        if (v7 < 0)
        {
          v7 = *(this + 34);
        }

        if (!v7 || (result = a2(a3, "** bad root value **  ", 23), !result) && (DumpClearString(this + 264, a2, a3), result = a2(a3, "", 1), !result) && (result = a2(a3, "\n", 1), !result))
        {
          if (*(this + 40) != *(this + 41))
          {
            result = a2(a3, "** bad root qualifiers **", 25);
            if (result)
            {
              return result;
            }

            result = a2(a3, "\n", 1);
            if (result)
            {
              return result;
            }

            v8 = *(this + 41) - *(this + 40);
            if (v8)
            {
              v9 = 0;
              v10 = v8 >> 3;
              if (v10 <= 1)
              {
                v11 = 1;
              }

              else
              {
                v11 = v10;
              }

              do
              {
                v12 = *(this + 40);
                if (v9 >= (*(this + 41) - v12) >> 3)
                {
                  goto LABEL_52;
                }

                result = DumpPropertyTree(*(v12 + 8 * v9++), 3, 0, a2, a3);
              }

              while (v11 != v9);
            }
          }

          v13 = *(this + 37);
          v14 = *(this + 38);
          if (v13 != v14)
          {
            v15 = 0;
            v16 = (v14 - v13) >> 3;
            if (v16 <= 1)
            {
              v17 = 1;
            }

            else
            {
              v17 = v16;
            }

            while (1)
            {
              v18 = *(this + 37);
              if (v15 >= (*(this + 38) - v18) >> 3)
              {
                break;
              }

              v19 = *(v18 + 8 * v15);
              result = a2(a3, "\n", 1);
              if (result)
              {
                return result;
              }

              result = a2(a3, "   ", 3);
              if (result)
              {
                return result;
              }

              DumpClearString(v19 + 40, a2, a3);
              result = a2(a3, "  ", 2);
              if (result)
              {
                return result;
              }

              DumpClearString(v19 + 16, a2, a3);
              result = a2(a3, "  ", 2);
              if (result)
              {
                return result;
              }

              DumpNodeOptions(*(v19 + 8), a2, a3);
              result = a2(a3, "\n", 1);
              if (result)
              {
                return result;
              }

              if ((*(v19 + 8) & 0x80000000) == 0)
              {
                result = a2(a3, "** bad schema options **", 24);
                if (result)
                {
                  return result;
                }

                result = a2(a3, "\n", 1);
                if (result)
                {
                  return result;
                }
              }

              if (*(v19 + 96) != *(v19 + 104))
              {
                result = a2(a3, "** bad schema qualifiers **", 27);
                if (result)
                {
                  return result;
                }

                result = a2(a3, "\n", 1);
                if (result)
                {
                  return result;
                }

                v20 = *(v19 + 104) - *(v19 + 96);
                if (v20)
                {
                  v21 = 0;
                  v22 = v20 >> 3;
                  if (v22 <= 1)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = v22;
                  }

                  do
                  {
                    v24 = *(v19 + 96);
                    if (v21 >= (*(v19 + 104) - v24) >> 3)
                    {
                      goto LABEL_52;
                    }

                    result = DumpPropertyTree(*(v24 + 8 * v21++), 3, 0, a2, a3);
                  }

                  while (v23 != v21);
                }
              }

              v25 = *(v19 + 80) - *(v19 + 72);
              if (v25)
              {
                v26 = 0;
                v27 = v25 >> 3;
                if (v27 <= 1)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = v27;
                }

                do
                {
                  v29 = *(v19 + 72);
                  if (v26 >= (*(v19 + 80) - v29) >> 3)
                  {
                    goto LABEL_52;
                  }

                  result = DumpPropertyTree(*(v29 + 8 * v26++), 2, 0, a2, a3);
                }

                while (v28 != v26);
              }

              if (++v15 == v17)
              {
                return result;
              }
            }

LABEL_52:
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

uint64_t DumpPropertyTree(const XMP_Node *a1, int a2, uint64_t a3, uint64_t (*a4)(void *, const char *, uint64_t), void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_5:
    *__str = 0u;
    v40 = 0u;
    if (a3)
    {
      result = a4(a5, "[", 1);
      if (result)
      {
        return result;
      }

      snprintf(__str, 0x20uLL, "%ld", a3);
      HIBYTE(v40) = 0;
      v12 = strlen(__str);
      result = a4(a5, __str, v12);
      if (result)
      {
        return result;
      }

      result = a4(a5, "]", 1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if ((*(a1 + 8) & 0x20) != 0)
      {
        result = a4(a5, "? ", 2);
        if (result)
        {
          return result;
        }
      }

      DumpClearString(a1 + 16, a4, a5);
    }

    if ((*(a1 + 9) & 0x1F) == 0)
    {
      result = a4(a5, " = ", 4);
      if (result)
      {
        return result;
      }

      DumpClearString(a1 + 40, a4, a5);
      result = a4(a5, "", 1);
      if (result)
      {
        return result;
      }

      if (!*(a1 + 2))
      {
        goto LABEL_33;
      }
    }

    result = a4(a5, "  ", 2);
    if (result)
    {
      return result;
    }

    DumpNodeOptions(*(a1 + 2), a4, a5);
    v13 = *(a1 + 2);
    if ((v13 & 0x40) == 0)
    {
LABEL_29:
      if ((v13 & 0x1F00) != 0)
      {
        if ((v13 & 0x200) != 0)
        {
          if ((v13 & 0x100) == 0)
          {
            goto LABEL_38;
          }
        }

        else if ((v13 & 0x1F00) == 0x100)
        {
          goto LABEL_38;
        }

        result = a4(a5, "  ** bad comp flags **", 22);
LABEL_37:
        if (result)
        {
          return result;
        }

        goto LABEL_38;
      }

LABEL_33:
      if (*(a1 + 9) != *(a1 + 10))
      {
        result = a4(a5, "  ** bad children **", 20);
        goto LABEL_37;
      }

LABEL_38:
      result = a4(a5, "\n", 1);
      if (result)
      {
        return result;
      }

      v18 = *(a1 + 13) - *(a1 + 12);
      if (v18)
      {
        v19 = 0;
        v20 = v18 >> 3;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        do
        {
          v22 = *(a1 + 12);
          if (v19 >= (*(a1 + 13) - v22) >> 3)
          {
LABEL_93:
            __break(1u);
          }

          v23 = *(v22 + 8 * v19);
          if (*(v23 + 64) != a1)
          {
            result = a4(a5, "** bad parent link => ", 22);
            if (result)
            {
              return result;
            }
          }

          v24 = (v23 + 16);
          v25 = *(v23 + 39);
          if (v25 < 0)
          {
            if (*(v23 + 24) != 2)
            {
              goto LABEL_54;
            }

            v26 = *v24;
          }

          else
          {
            v26 = (v23 + 16);
            if (v25 != 2)
            {
              goto LABEL_54;
            }
          }

          if (*v26 == 23899)
          {
            result = a4(a5, "** bad qual name => ", 20);
            if (result)
            {
              return result;
            }
          }

LABEL_54:
          if ((*(v23 + 8) & 0x20) == 0)
          {
            result = a4(a5, "** bad qual flag => ", 20);
            if (result)
            {
              return result;
            }
          }

          v27 = *(v23 + 39);
          if (v27 < 0)
          {
            if (*(v23 + 24) != 8)
            {
              goto LABEL_65;
            }

            v24 = *v24;
          }

          else if (v27 != 8)
          {
            goto LABEL_65;
          }

          if (*v24 == 0x676E616C3A6C6D78 && (v19 || (*(a1 + 8) & 0x40) == 0))
          {
            result = a4(a5, "** bad lang qual => ", 20);
            if (result)
            {
              return result;
            }
          }

LABEL_65:
          result = DumpPropertyTree(v23, a2 + 2, 0, a4, a5);
          ++v19;
        }

        while (v21 != v19);
      }

      v28 = *(a1 + 10) - *(a1 + 9);
      if (!v28)
      {
        return result;
      }

      v29 = 0;
      v30 = v28 >> 3;
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      while (1)
      {
        v32 = *(a1 + 9);
        if (v29 >= (*(a1 + 10) - v32) >> 3)
        {
          goto LABEL_93;
        }

        v33 = *(v32 + 8 * v29);
        if (*(v33 + 64) != a1)
        {
          result = a4(a5, "** bad parent link => ", 22);
          if (result)
          {
            return result;
          }
        }

        if ((*(v33 + 8) & 0x20) != 0)
        {
          result = a4(a5, "** bad qual flag => ", 20);
          if (result)
          {
            return result;
          }
        }

        if ((*(a1 + 9) & 2) == 0)
        {
          break;
        }

        v36 = v29 + 1;
        v37 = (v33 + 16);
        v38 = *(v33 + 39);
        if (v38 < 0)
        {
          if (*(v33 + 24) != 2)
          {
            goto LABEL_90;
          }

          v37 = *v37;
        }

        else if (v38 != 2)
        {
          goto LABEL_90;
        }

        if (*v37 != 23899)
        {
LABEL_90:
          result = a4(a5, "** bad item name => ", 20);
          if (result)
          {
            return result;
          }
        }

LABEL_91:
        result = DumpPropertyTree(v33, a2 + 1, v36, a4, a5);
        if (v31 == ++v29)
        {
          return result;
        }
      }

      v34 = (v33 + 16);
      v35 = *(v33 + 39);
      if (v35 < 0)
      {
        if (*(v33 + 24) != 2)
        {
LABEL_86:
          v36 = 0;
          goto LABEL_91;
        }

        v34 = *v34;
      }

      else if (v35 != 2)
      {
        goto LABEL_86;
      }

      if (*v34 == 23899)
      {
        result = a4(a5, "** bad field name => ", 21);
        if (result)
        {
          return result;
        }
      }

      goto LABEL_86;
    }

    v14 = *(a1 + 12);
    if (v14 != *(a1 + 13))
    {
      v15 = *v14;
      v16 = (*v14 + 16);
      v17 = *(v15 + 39);
      if ((v17 & 0x80000000) == 0)
      {
        if (v17 != 8)
        {
          goto LABEL_27;
        }

LABEL_26:
        if (*v16 == 0x676E616C3A6C6D78)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (*(v15 + 24) == 8)
      {
        v16 = *v16;
        goto LABEL_26;
      }
    }

LABEL_27:
    result = a4(a5, "  ** bad lang flag **", 21);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 2);
    goto LABEL_29;
  }

  v10 = a2;
  while (1)
  {
    result = a4(a5, "   ", 3);
    if (result)
    {
      return result;
    }

    if (!--v10)
    {
      goto LABEL_5;
    }
  }
}

uint64_t XMPMeta::CountArrayItems(XMPMeta *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta::CountArrayItems();
  }

  memset(v8, 0, sizeof(v8));
  ExpandXPath(a2, a3, v8);
  Node = FindNode(this + 224, v8, 0, 0, 0);
  if (Node)
  {
    if ((*(Node + 9) & 2) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "The named property is not an array";
      *(exception + 16) = 0;
    }

    v5 = (*(Node + 80) - *(Node + 72)) >> 3;
  }

  else
  {
    v5 = 0;
  }

  v9 = v8;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v9);
  return v5;
}

void sub_186166A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t XMPMeta::GetObjectName(uint64_t this, const char **a2, unsigned int *a3)
{
  v3 = (this + 240);
  if (*(this + 263) < 0)
  {
    v3 = *v3;
  }

  *a2 = v3;
  v4 = *(this + 263);
  if (v4 < 0)
  {
    v4 = *(this + 248);
  }

  *a3 = v4;
  return this;
}

uint64_t XMPMeta::SetObjectName(XMPMeta *this, char *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = a2;
    do
    {
      if (v4 >= 1)
      {
        do
        {
          v7 = *++v5;
          v6 = v7;
        }

        while (v7 > 0);
        if ((v6 & 0x80000000) == 0)
        {
          break;
        }
      }

      v10 = 0;
      v9 = 0;
      CodePoint_from_UTF8(v5, 4uLL, &v10, &v9);
      v5 += v9;
      v4 = *v5;
    }

    while (*v5);
  }

  return MEMORY[0x186602520](this + 240, a2);
}

uint64_t *XMPMeta::Sort(XMPMeta *this)
{
  v2 = *(this + 41);
  v3 = *(this + 40);
  if (v3 != v2)
  {
    v6 = CompareNodeNames;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(v3, v2, &v6, 126 - 2 * __clz((v2 - v3) >> 3), 1);
    SortWithinOffspring(this + 40);
  }

  result = *(this + 37);
  v5 = *(this + 38);
  if (result != v5)
  {
    v6 = CompareNodeValues;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(result, v5, &v6, 126 - 2 * __clz(v5 - result), 1);
    return SortWithinOffspring(this + 37);
  }

  return result;
}

BOOL CompareNodeNames(XMP_Node *a1, XMP_Node *a2)
{
  v3 = (a1 + 16);
  v4 = *(a1 + 39);
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 3) != 8)
    {
      goto LABEL_7;
    }

    v5 = *v3;
  }

  else
  {
    v5 = v3;
    if (v4 != 8)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == 0x676E616C3A6C6D78)
  {
    return 1;
  }

LABEL_7:
  v6 = (a2 + 16);
  v7 = *(a2 + 39);
  if (*(a2 + 39) < 0)
  {
    if (*(a2 + 3) != 8)
    {
      goto LABEL_13;
    }

    v8 = *v6;
  }

  else
  {
    v8 = (a2 + 16);
    if (v7 != 8)
    {
      goto LABEL_13;
    }
  }

  if (*v8 == 0x676E616C3A6C6D78)
  {
    return 0;
  }

LABEL_13:
  if ((v4 & 0x80) != 0)
  {
    if (*(a1 + 3) != 8)
    {
      goto LABEL_19;
    }

    v9 = *v3;
LABEL_18:
    if (*v9 != 0x657079743A666472)
    {
      goto LABEL_19;
    }

    return 1;
  }

  v9 = v3;
  if (v4 == 8)
  {
    goto LABEL_18;
  }

LABEL_19:
  if ((v7 & 0x80) == 0)
  {
    v10 = (a2 + 16);
    if (v7 != 8)
    {
      goto LABEL_26;
    }

LABEL_25:
    if (*v10 != 0x657079743A666472)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (*(a2 + 3) == 8)
  {
    v10 = *v6;
    goto LABEL_25;
  }

LABEL_26:
  if ((v4 & 0x80) != 0)
  {
    v3 = *(a1 + 2);
    v12 = *(a1 + 3);
  }

  else
  {
    v12 = *(a1 + 39);
  }

  if ((v7 & 0x80u) == 0)
  {
    v13 = *(a2 + 39);
  }

  else
  {
    v13 = *(a2 + 3);
  }

  if ((v7 & 0x80u) == 0)
  {
    v14 = a2 + 16;
  }

  else
  {
    v14 = *(a2 + 2);
  }

  if (v13 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = memcmp(v3, v14, v15);
  if (v16)
  {
    return v16 < 0;
  }

  else
  {
    return v12 < v13;
  }
}

uint64_t *SortWithinOffspring(uint64_t *result)
{
  v1 = result[1] - *result;
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v4 = v1 >> 3;
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    while (1)
    {
      if (v3 >= (v2[1] - *v2) >> 3)
      {
        __break(1u);
        return result;
      }

      v6 = *(*v2 + 8 * v3);
      v7 = *(v6 + 96);
      if (v7 != *(&v7 + 1))
      {
        v11 = CompareNodeNames;
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(v7, *(&v7 + 1), &v11, 126 - 2 * __clz((*(&v7 + 1) - v7) >> 3), 1);
        SortWithinOffspring(v6 + 96);
      }

      v8 = *(v6 + 80);
      result = *(v6 + 72);
      if (result != v8)
      {
        break;
      }

LABEL_17:
      if (v5 == ++v3)
      {
        return result;
      }
    }

    v9 = *(v6 + 8);
    if ((v9 & 0x80000100) != 0)
    {
      v10 = CompareNodeNames;
    }

    else
    {
      if ((v9 & 0x200) == 0)
      {
        goto LABEL_16;
      }

      if ((v9 & 0x400) == 0)
      {
        v11 = CompareNodeValues;
        std::__stable_sort_impl[abi:fe200100]<std::_ClassicAlgPolicy,std::__wrap_iter<XMP_Node **>,BOOL (*)(XMP_Node *,XMP_Node *)>(result, v8, &v11);
        goto LABEL_16;
      }

      if ((v9 & 0x1000) == 0)
      {
        goto LABEL_16;
      }

      v10 = CompareNodeLangs;
    }

    v11 = v10;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(result, v8, &v11, 126 - 2 * __clz(v8 - result), 1);
LABEL_16:
    result = SortWithinOffspring(v6 + 72);
    goto LABEL_17;
  }

  return result;
}

BOOL CompareNodeValues(XMP_Node *a1, XMP_Node *a2)
{
  if (*(a1 + 2) & 0x1F00 | *(a2 + 2) & 0x1F00)
  {
    return (*(a1 + 2) & 0x1F00u) < (*(a2 + 2) & 0x1F00u);
  }

  v4 = *(a2 + 5);
  v2 = a2 + 40;
  v3 = v4;
  v5 = v2[23];
  v6 = *(a1 + 63);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v9 = a1 + 40;
    v7 = *(a1 + 5);
    v6 = *(v9 + 1);
  }

  else
  {
    v7 = a1 + 40;
  }

  if (v5 >= 0)
  {
    v10 = v2[23];
  }

  else
  {
    v10 = *(v2 + 1);
  }

  if (v5 < 0)
  {
    v2 = v3;
  }

  if (v10 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = memcmp(v7, v2, v11);
  if (v12)
  {
    return v12 < 0;
  }

  else
  {
    return v6 < v10;
  }
}

void *XMPMeta::Erase(XMPMeta *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 43) = 0;
  }

  return XMP_Node::ClearNode((this + 224));
}

void *XMPMeta::Clone(XMPMeta *this, XMPMeta *a2, int a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v9 = "Null clone pointer";
    goto LABEL_10;
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v9 = "No options are defined yet";
LABEL_10:
    exception[1] = v9;
    *(exception + 16) = 0;
  }

  if (*(this + 36))
  {
    XMPMeta::Clone();
  }

  XMP_Node::ClearNode((a2 + 224));
  *(a2 + 58) = *(this + 58);
  std::string::operator=(a2 + 10, this + 10);
  std::string::operator=(a2 + 11, this + 11);
  v5 = *(this + 45);
  *(a2 + 368) = *(this + 368);
  *(a2 + 45) = v5;
  v6 = *(this + 49);
  *(a2 + 376) = *(this + 376);
  *(a2 + 49) = v6;

  return CloneOffspring(this + 28, (a2 + 224), 0);
}

void XMP_Node::GetFullQualifiedName(XMP_Node *this, const char **a2, unsigned int *a3, const char **a4, unsigned int *a5)
{
  if (a2)
  {
    *a2 = "";
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = "";
  }

  if (a5)
  {
    *a5 = 0;
  }

  v10 = *(this + 39);
  if (v10 < 0)
  {
    if (!*(this + 3))
    {
      return;
    }
  }

  else if (!*(this + 39))
  {
    return;
  }

  v11 = this + 16;
  if ((*(this + 2) & 0x80000000) != 0)
  {
    if (a2)
    {
      if ((v10 & 0x80000000) != 0)
      {
        v11 = *v11;
      }

      *a2 = v11;
    }

    if (a3)
    {
      v16 = *(this + 39);
      if (v16 < 0)
      {
        v16 = *(this + 3);
      }

      *a3 = v16;
    }

    if (a4)
    {
      v17 = this + 40;
      if (*(this + 63) < 0)
      {
        v17 = *v17;
      }

      *a4 = v17;
    }

    if (a5)
    {
      v18 = *(this + 63);
      if (v18 < 0)
      {
        v18 = *(this + 6);
      }

      *a5 = v18;
    }
  }

  else
  {
    v12 = std::string::find((this + 16), 58, 0);
    if (v12 != -1)
    {
      v13 = v12;
      memset(&v20, 0, sizeof(v20));
      std::string::basic_string(&v20, (this + 16), 0, v12, &v19);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v20;
      }

      else
      {
        v14 = v20.__r_.__value_.__r.__words[0];
      }

      XMP_NamespaceTable::GetURI(sRegisteredNamespaces, v14, a2, a3);
      if (*(this + 39) < 0)
      {
        v11 = *v11;
      }

      *a4 = &v11[v13 + 1];
      v15 = *(this + 39);
      if (v15 < 0)
      {
        v15 = *(this + 3);
      }

      *a5 = v15 + ~v13;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_186167270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta::ResetErrorCallbackLimit(uint64_t this, int a2)
{
  *(this + 360) = a2;
  *(this + 364) = 0;
  *(this + 368) = 0;
  return this;
}

BOOL XMPMeta::ErrorCallbackInfo::CanNotify(XMPMeta::ErrorCallbackInfo *this)
{
  v1 = *(this + 4);
  if (v1 && !*(this + 3))
  {
    XMPMeta::ErrorCallbackInfo::CanNotify();
  }

  return v1 != 0;
}

void std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
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

void std::__allocate_at_least[abi:fe200100]<std::allocator<XPathStepInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<XPathStepInfo>,XPathStepInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<XPathStepInfo>,XPathStepInfo*>>::~__exception_guard_exceptions[abi:fe200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<XPathStepInfo>,XPathStepInfo*>>::~__exception_guard_exceptions[abi:fe200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<XPathStepInfo>,XPathStepInfo*>::operator()[abi:fe200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<XPathStepInfo>,XPathStepInfo*>::operator()[abi:fe200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__split_buffer<XPathStepInfo>::__destruct_at_end[abi:fe200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

BOOL std::less<std::string>::operator()[abi:fe200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::string::compare[abi:fe200100](const void **a1, _BYTE *a2)
{
  v2 = a2[23];
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = a1;
    a1 = *a1;
    v3 = v4[1];
  }

  if (v2 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(result) = memcmp(a1, a2, v6);
  if (v3 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v5 < v3;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

void std::vector<XPathStepInfo>::__assign_with_size[abi:fe200100]<XPathStepInfo*,XPathStepInfo*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<XPathStepInfo>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<XPathStepInfo>::__vallocate[abi:fe200100](a1, v11);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v14 = v12[-1].__r_.__value_.__s.__data_[15];
      v12 = (v12 - 32);
      if (v14 < 0)
      {
        operator delete(v12->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (v12 + __str - v8);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:fe200100]<std::allocator<XPathStepInfo>,XPathStepInfo*,XPathStepInfo*,XPathStepInfo*>(a1, v13, a3, v12);
  }
}

void std::vector<XPathStepInfo>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<XPathStepInfo>::clear[abi:fe200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<XPathStepInfo>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<XPathStepInfo>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:fe200100]<std::allocator<XPathStepInfo>,XPathStepInfo*,XPathStepInfo*,XPathStepInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<XPathStepInfo>,XPathStepInfo*>>::~__exception_guard_exceptions[abi:fe200100](v10);
  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<XPathStepInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<XPathStepInfo>>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::vector<XPathStepInfo>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<XPathStepInfo>>::pair[abi:fe200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return this;
}

void std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::vector<XPathStepInfo>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

std::string *std::pair<std::string const,std::vector<XPathStepInfo>>::pair[abi:fe200100]<std::string&,std::vector<XPathStepInfo>&,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<XPathStepInfo>::__init_with_size[abi:fe200100]<XPathStepInfo*,XPathStepInfo*>(&this[1], *a3, a3[1], (a3[1] - *a3) >> 5);
  return this;
}

void sub_186167A44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XPathStepInfo>::__init_with_size[abi:fe200100]<XPathStepInfo*,XPathStepInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<XPathStepInfo>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_186167AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::vector<XPathStepInfo>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t CompareNodeLangs(XMP_Node *a1, XMP_Node *a2)
{
  v2 = *(a1 + 12);
  if (v2 == *(a1 + 13))
  {
    return 0;
  }

  v3 = *v2;
  v4 = (v3 + 16);
  v5 = *(v3 + 39);
  if (v5 < 0)
  {
    if (*(v3 + 24) != 8)
    {
      return 0;
    }

    v4 = *v4;
  }

  else if (v5 != 8)
  {
    return 0;
  }

  if (*v4 != 0x676E616C3A6C6D78)
  {
    return 0;
  }

  v7 = *(a2 + 12);
  if (v7 == *(a2 + 13))
  {
    return 0;
  }

  v8 = *v7;
  v9 = (v8 + 16);
  v10 = *(v8 + 39);
  if (v10 < 0)
  {
    if (*(v8 + 24) == 8)
    {
      v9 = *v9;
      goto LABEL_15;
    }

    return 0;
  }

  if (v10 != 8)
  {
    return 0;
  }

LABEL_15:
  if (*v9 != 0x676E616C3A6C6D78)
  {
    return 0;
  }

  v11 = (v3 + 40);
  v12 = *(v3 + 63);
  if (v12 < 0)
  {
    if (*(v3 + 48) != 9)
    {
      goto LABEL_25;
    }

    v13 = *v11;
  }

  else
  {
    v13 = (v3 + 40);
    if (v12 != 9)
    {
      goto LABEL_25;
    }
  }

  v14 = *v13;
  v15 = v13[8];
  if (v14 != 0x6C75616665642D78 || v15 != 116)
  {
LABEL_25:
    v17 = (v8 + 40);
    v18 = *(v8 + 63);
    if (v18 < 0)
    {
      if (*(v8 + 48) != 9)
      {
        return std::string::compare[abi:fe200100](v11, v17) >> 31;
      }

      v19 = *v17;
    }

    else
    {
      v19 = (v8 + 40);
      if (v18 != 9)
      {
        return std::string::compare[abi:fe200100](v11, v17) >> 31;
      }
    }

    v20 = *v19;
    v21 = *(v19 + 8);
    if (v20 == 0x6C75616665642D78 && v21 == 116)
    {
      return 0;
    }

    return std::string::compare[abi:fe200100](v11, v17) >> 31;
  }

  return 1;
}

void std::__stable_sort_impl[abi:fe200100]<std::_ClassicAlgPolicy,std::__wrap_iter<XMP_Node **>,BOOL (*)(XMP_Node *,XMP_Node *)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v8 = 0;
    v12 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}