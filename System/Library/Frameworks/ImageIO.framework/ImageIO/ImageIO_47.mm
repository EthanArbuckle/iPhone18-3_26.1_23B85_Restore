void sub_186125F24(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186125EA8);
}

void sub_186125FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SetLocalizedText_1(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, const char *a6, uint64_t a7, void *a8)
{
  v21 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v18 = "Empty schema namespace URI";
    v19 = 101;
    goto LABEL_17;
  }

  if (!a3 || !*a3)
  {
    v18 = "Empty array name";
    v19 = 102;
    goto LABEL_17;
  }

  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = "";
  }

  if (!a5 || !*a5)
  {
    v18 = "Empty specific language";
    v19 = 4;
LABEL_17:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v19;
    exception[1] = v18;
    *(exception + 16) = 0;
  }

  if (a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = "";
  }

  (*(*a1 + 128))(a1, a2, a3, v16, a5, v17, a7);
  XMP_AutoLock::~XMP_AutoLock(&v21);
}

void WXMPMeta_GetProperty_Bool_1(uint64_t a1, const char *a2, const char *a3, BOOL *a4, unsigned int *a5, uint64_t a6)
{
  v19 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_13;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty property name";
    v15 = 102;
LABEL_13:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  v18 = 0;
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = &v18;
  }

  v17 = 0;
  Property_Bool = XMPMeta::GetProperty_Bool(a1, a2, a3, &v17, v12);
  if (a4)
  {
    *a4 = v17;
  }

  *(a6 + 32) = Property_Bool;
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void sub_1861262FC(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186126298);
}

void sub_1861263B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetProperty_Int_1(uint64_t a1, const char *a2, const char *a3, int *a4, unsigned int *a5, uint64_t a6)
{
  v18 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_14;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty property name";
    v15 = 102;
LABEL_14:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  v17 = 0;
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = &v17 + 1;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = &v17;
  }

  *(a6 + 32) = XMPMeta::GetProperty_Int(a1, a2, a3, v12, v13);
  XMP_AutoLock::~XMP_AutoLock(&v18);
}

void sub_1861264C0(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x18612645CLL);
}

void sub_186126574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetProperty_Date_1(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4, int *a5, uint64_t a6)
{
  v18 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_16;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty property name";
    v15 = 102;
LABEL_16:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    WXMPMeta_GetProperty_Date_1_cold_1();
  }

  v17 = 0;
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = &unk_1ED56A1D0;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = &v17;
  }

  *(a6 + 32) = XMPMeta::GetProperty_Date(a1, a2, a3, v12, v13);
  XMP_AutoLock::~XMP_AutoLock(&v18);
}

void sub_1861266A0(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186126634);
}

void sub_186126754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SetProperty_Bool_1(uint64_t a1, const char *a2, const char *a3, int a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Bool(a1, a2, a3, a4 != 0, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_SetProperty_Int_1(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Int(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_SetProperty_Int64_1(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Int64(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_SetProperty_Float_1(uint64_t a1, const char *a2, const char *a3, uint64_t a4, void *a5, double a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Float(a1, a2, a3, a6, a4);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_SetProperty_Date_1(uint64_t a1, _BYTE *a2, _BYTE *a3, __int128 *a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Date(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_Clone_1(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1 + 16;
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a3 = 0;
  if (sUseNewCoreAPIs)
  {
    operator new();
  }

  operator new();
}

void sub_1861270D4(void *a1, int a2)
{
  MEMORY[0x186602850](v3, 0x10B3C4030275F38);
  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v6;
    v7 = *(v6 + 1);
    if (!v7)
    {
      v7 = "";
    }

    *v2 = v7;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v8 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v9 = (*(*v8 + 16))(v8);
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }

      *v2 = v10;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186127090);
}

void sub_18612723C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_CountArrayItems_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a4 = 0;
  if (!a2 || !*a2)
  {
    v8 = "Empty schema namespace URI";
    v9 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v8 = "Empty array name";
    v9 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v9;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  *(a4 + 32) = (*(*a1 + 184))(a1, a2, a3);
  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_186127340(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x1861272E0);
}

void sub_1861273F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SerializeToBuffer_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, void (*a8)(uint64_t, void *, uint64_t), void *a9)
{
  v24 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a9 = 0;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = "";
  }

  if (a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = "";
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  (*(*a1 + 208))(a1, &__p, a3, a4, v17, v18, a7);
  if (a2)
  {
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v23 >= 0)
    {
      v20 = HIBYTE(v23);
    }

    else
    {
      v20 = v22;
    }

    a8(a2, p_p, v20);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  XMP_AutoLock::~XMP_AutoLock(&v24);
}

void sub_186127528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    *(v14 + 32) = *v18;
    v19 = v18[1];
    if (!v19)
    {
      v19 = v15;
    }

    *v14 = v19;
    *(v14 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v14 + 32) = 13;
      v21 = (*(*v20 + 16))(v20);
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v15;
      }

      *v14 = v22;
      __cxa_end_catch();
    }

    else
    {
      *(v14 + 32) = 14;
      *v14 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186127500);
}

void sub_1861275E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_Initialize_1_cold_1(void *a1, uint64_t a2)
{
  v3 = __cxa_begin_catch(a1);
  *(a2 + 32) = *v3;
  v4 = *(v3 + 1);
  if (!v4)
  {
    v4 = "";
  }

  *a2 = v4;
  *(a2 + 8) = "XMP";

  __cxa_end_catch();
}

void WXMPMeta_GetProperty_Date_1_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_7))
  {
    qword_1ED56A1F0 = 0;
    unk_1ED56A1E0 = 0u;
    unk_1ED56A1D0 = 0u;

    __cxa_guard_release(&_MergedGlobals_7);
  }
}

void AdobeXMPCore_Int::NodeImpl::NodeImpl(AdobeXMPCore_Int::NodeImpl *this, const char *a2, AdobeXMPCore_Int::IUTF8String_I *a3, const char *a4)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 664)) = *(a2 + 1);
  *(this + *(*this - 544)) = *(a2 + 2);
  *(this + *(*this - 56)) = *(a2 + 3);
  *(this + *(*this - 64)) = *(a2 + 4);
  *(this + *(*this - 72)) = *(a2 + 5);
  *(this + *(*this - 552)) = *(a2 + 6);
  *(this + *(*this - 560)) = *(a2 + 7);
  *(this + *(*this - 672)) = *(a2 + 8);
  *(this + *(*this - 680)) = *(a2 + 9);
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a3, a4);
}

void sub_186127A44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *AdobeXMPCore_Int::VerifyNameSpace(_BYTE *this, const char *a2)
{
  v4 = a2;
  if (!this || !a2 || a2 == -1 && !*this)
  {
    v2 = 0;
    v3 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return this;
}

void sub_186127D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
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

const char *AdobeXMPCore_Int::VerifyName(const char *this, const char *a2)
{
  v2 = this;
  if (!this || !a2)
  {
    goto LABEL_67;
  }

  if (a2 != -1)
  {
    goto LABEL_6;
  }

  if (!*this)
  {
LABEL_67:
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  this = strlen(this);
  a2 = this;
LABEL_6:
  if (a2 == 2)
  {
    return this;
  }

  v3 = *v2;
  if (v3 == 91)
  {
    v4 = v2 + 1;
    if (v2[1] == 93)
    {
      return this;
    }

    if (a2 >= 1)
    {
      v5 = &a2[v2];
      v6 = 91;
      goto LABEL_14;
    }

LABEL_68:
    exception = __cxa_allocate_exception(0x18uLL);
    v15 = "Empty XML name";
LABEL_69:
    *exception = 102;
    exception[1] = v15;
    *(exception + 16) = 0;
  }

  if (a2 <= 0)
  {
    goto LABEL_68;
  }

  v5 = &a2[v2];
  if ((v3 & 0x80) == 0)
  {
    v4 = v2 + 1;
    v6 = *v2;
    if ((v3 - 97) < 0x1A)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (v3 == 95 || (v6 - 65) < 0x1A)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

  v17 = 0;
  v16 = 0;
  this = CodePoint_from_UTF8(v2, 4uLL, &v17, &v16);
  v4 = &v2[v16];
  if (v17 - 192 >= 0x17 && v17 - 216 >= 0x1F && v17 - 248 >= 0x208 && v17 - 880 >= 0xE && v17 - 895 >= 0x1C81 && (v17 & 0xFFFFFFFE) != 0x200C && v17 - 8304 >= 0x120 && v17 - 11264 >= 0x3F0 && v17 - 12289 >= 0xA7FF && v17 - 63744 >= 0x4D0 && v17 - 65008 >= 0x20E && (v17 - 0x10000) >> 17 > 6)
  {
LABEL_52:
    exception = __cxa_allocate_exception(0x18uLL);
    v15 = "Bad XML name";
    goto LABEL_69;
  }

LABEL_16:
  while (v4 < v5)
  {
    if (*v4 < 0)
    {
      v17 = 0;
      v16 = 0;
      this = CodePoint_from_UTF8(v4, 4uLL, &v17, &v16);
      v4 += v16;
      if (v17 - 192 >= 0x17 && v17 - 216 >= 0x1F)
      {
        v13 = v17 - 248 >= 0x208 && v17 - 880 >= 0xE;
        if (v13 && v17 - 895 >= 0x1C81 && (v17 & 0xFFFFFFFE) != 0x200C && v17 - 8304 >= 0x120 && v17 - 11264 >= 0x3F0 && v17 - 12289 >= 0xA7FF && v17 - 63744 >= 0x4D0 && v17 - 768 >= 0x70 && v17 - 65008 >= 0x20E && v17 - 0x10000 >= 0xE0000 && v17 - 8255 >= 2 && v17 != 183)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v7 = *v4++;
      if ((v7 - 97) >= 0x1A && v7 != 95 && (v7 - 65) >= 0x1A)
      {
        v9 = v7 - 48;
        v10 = v7 - 45;
        if (v9 >= 0xA && v10 >= 2)
        {
          goto LABEL_52;
        }
      }
    }
  }

  return this;
}

void sub_1861282C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1861282E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __cxa_begin_catch(a1);
  a12 = 0;
  a13 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186128490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  __cxa_end_catch();
  JUMPOUT(0x1861284B8);
}

void AdobeXMPCore_Int::NodeImpl::ChangeParent(AdobeXMPCore_Int::NodeImpl *this, AdobeXMPCore::INode_v1 *a2)
{
  memset(v13, 0, sizeof(v13));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v13, this + *(*this - 680) + 8, 1);
  v4 = *(this + 7);
  if (!v4)
  {
    v8 = atomic_load(this + 11);
    if (v8 >= 2)
    {
      v9 = *(this + 6);
      if (v9)
      {
        v10 = (*(*v9 + 280))(v9);
        (*(*v10 + 576))(v10);
      }

      if (!a2)
      {
        goto LABEL_14;
      }

      v11 = (*(*a2 + 280))(a2);
      (*(*v11 + 560))(v11);
LABEL_13:
      v12 = (*(*a2 + 280))(a2);
      (*(*v12 + 560))(v12);
      goto LABEL_14;
    }

LABEL_12:
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v4 == a2)
  {
    goto LABEL_16;
  }

  v5 = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = atomic_load(this + 11);
  if (v6 >= 2)
  {
    v7 = *(*(**(this + 6) + 280))(*(this + 6));
    (*(v7 + 576))();
    goto LABEL_12;
  }

LABEL_14:
  *(this + 6) = a2;
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 0);
  if (!*(this + 6))
  {
    *(this + 96) = 0;
    *(this + 5) = 0;
  }

LABEL_16:
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v13);
}

void sub_18612871C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(AdobeXMPCore_Int::NodeImpl *this, char a2)
{
  v3 = *(this + 7);
  if (a2)
  {
    if (v3)
    {
      v4 = atomic_load((this + *(*this - 672) + 8));
      if (v4 <= 2)
      {
        v5 = *(this + 8);
        *(this + 7) = 0;
        *(this + 8) = 0;
        if (v5)
        {

          std::__shared_weak_count::__release_shared[abi:fe200100](v5);
        }
      }
    }
  }

  else if (!v3)
  {
    v6 = atomic_load((this + *(*this - 672) + 8));
    if (v6 >= 2)
    {
      v7 = *(this + 6);
      if (v7)
      {
        AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore::INode_v1>(v7, 1, &v8);
      }
    }
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::GetRawParentPointer(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 680) + 8, 0);
  v2 = *(this + 6);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

void AdobeXMPCore_Int::NodeImpl::GetParent(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 680) + 8, 0);
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *v4;
    if (*(this + 96) == 1)
    {
      v6 = (*(v5 + 280))(v4);
      v4 = (*(*v6 + 528))(v6);
      v5 = *v4;
    }

    (**&v4[*(v5 - 56)])(&v4[*(v5 - 56)]);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a2, v4);
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void sub_186128A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore::INode_v1>(char *a1@<X0>, int a2@<W3>, void *a3@<X8>)
{
  if (a1 || !a2)
  {
    (**&a1[*(*a1 - 56)])(&a1[*(*a1 - 56)]);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, a1);
  }

  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186128BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::SetName(AdobeXMPCore_Int::NodeImpl *this, AdobeXMPCore_Int *a2, char *a3)
{
  AdobeXMPCore_Int::VerifyName(a2, a3);
  v5 = 0;
  v6 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, a3);
}

void sub_186129184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
  }

  v23 = *(v20 - 40);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::GetName(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  if ((*(*this + 160))(this))
  {
    v4 = *(**(this + 6) + 72);

    v4();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, this + *(*this - 680) + 8, 0);
    v5 = *(this + 4);
    *a2 = *(this + 3);
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
  }
}

void AdobeXMPCore_Int::NodeImpl::SetNameSpace(AdobeXMPCore_Int::NodeImpl *this, AdobeXMPCore_Int *a2, char *a3)
{
  AdobeXMPCore_Int::VerifyNameSpace(a2, a3);
  v5 = 0;
  v6 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, a3);
}

void sub_1861298B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
  }

  v23 = *(v20 - 40);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::GetNameSpace(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  if ((*(*this + 160))(this))
  {
    v4 = *(**(this + 6) + 88);

    v4();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, this + *(*this - 680) + 8, 0);
    v5 = *(this + 2);
    *a2 = *(this + 1);
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
  }
}

void AdobeXMPCore_Int::NodeImpl::GetPath(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  for (i = (this + *(*this - 544)); i; i = this)
  {
    v4 = (*(*i + 280))(i);
    v5 = v19;
    if (v19 >= v20)
    {
      v7 = (v19 - __p) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v8 = (v20 - __p) >> 2;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<AdobeXMPCore::INode_v1 const*>>(&__p, v9);
      }

      v10 = (8 * v7);
      *v10 = i;
      v6 = 8 * v7 + 8;
      v11 = v10 - (v19 - __p);
      memcpy(v11, __p, v19 - __p);
      v12 = __p;
      __p = v11;
      v19 = v6;
      v20 = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v19 = i;
      v6 = (v5 + 8);
    }

    v19 = v6;
    this = (*(*v4 + 528))(v4);
  }

  v13 = v19 - 8;
  if (__p != v19 && v13 > __p)
  {
    v15 = __p + 8;
    do
    {
      v16 = *(v15 - 1);
      *(v15 - 1) = *v13;
      *v13 = v16;
      v13 -= 8;
      v17 = v15 >= v13;
      v15 += 8;
    }

    while (!v17);
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore::IPath_v1::CreatePath(this);
}

void sub_186129EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_objecta, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::GetQualifier(AdobeXMPCore_Int::NodeImpl *this@<X0>, const char *a2@<X1>, const char *a3@<X3>, uint64_t a4@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  memset(v12, 0, sizeof(v12));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v12, this + *(*this - 680) + 8, 0);
  if (*(this + 9))
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
    (*(**(this + 9) + 648))(*(this + 9), a2, a4, a3, a5);
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
  }
}

void AdobeXMPCore_Int::NodeImpl::GetQualifier(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, a1 + *(*a1 - 680) + 8, 0);
  if (*(a1 + 72))
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
    v4 = *(*(**(a1 + 72) + 688))(*(a1 + 72));
    (*(v4 + 736))();
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::InsertQualifier(AdobeXMPCore_Int::NodeImpl *a1, uint64_t a2)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(a1);
  (*(**(a1 + 9) + 656))(*(a1 + 9), a2);
  v4 = *(*(*(**a2 + 280))() + 552);

  return v4();
}

void AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(AdobeXMPCore_Int::NodeImpl *this)
{
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
  if (!*(this + 9))
  {
    AdobeXMPCore::IStructureNode_v1::CreateStructureNode("http://qualifiers", 0xC, "_qualifiers_", 0xC);
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::ReplaceQualifier@<X0>(AdobeXMPCore_Int::NodeImpl *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(a1);
  *a3 = 0;
  a3[1] = 0;
  (*(**(a1 + 9) + 664))();
  v6 = *(*(**a2 + 280))();
  return (*(v6 + 552))();
}

void sub_18612A4A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::NodeImpl::RemoveQualifier(AdobeXMPCore_Int::NodeImpl *this, const char *a2, unint64_t a3, const char *a4)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(this);
  v5 = *(**(this + 9) + 672);

  return v5();
}

uint64_t virtual thunk toAdobeXMPCore_Int::NodeImpl::RemoveQualifier(AdobeXMPCore_Int::NodeImpl *this, const char *a2, unint64_t a3, const char *a4)
{
  v4 = (this + *(*this - 192));
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(v4);
  v5 = *(**(v4 + 9) + 672);

  return v5();
}

uint64_t AdobeXMPCore_Int::NodeImpl::RemoveQualifier(AdobeXMPCore_Int::NodeImpl *a1, uint64_t a2, uint64_t a3)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(a1);
  v6 = (*(**(a1 + 9) + 688))(*(a1 + 9));
  v7 = *(*v6 - 808);
  v8 = *(*(v6 + v7) + 520);
  v9 = v6 + v7;

  return v8(v9, a2, a3);
}

BOOL AdobeXMPCore_Int::NodeImpl::IsArrayItem(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 680) + 8, 0);
  v2 = *(this + 5) != 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::NodeImpl::HasQualifiers(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 680) + 8, 0);
  v2 = *(this + 9);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 9) + *(**(this + 9) - 688);
  return (*(*v3 + 560))(v3) != 0;
}

uint64_t AdobeXMPCore_Int::NodeImpl::IsEmpty(AdobeXMPCore_Int::NodeImpl *this)
{
  if ((*(*(this + *(*this - 544)) + 192))(this + *(*this - 544)))
  {
    return 0;
  }

  else
  {
    return (*(*this + 184))(this) ^ 1;
  }
}

void AdobeXMPCore_Int::NodeImpl::AcknowledgeChanges(AdobeXMPCore_Int::NodeImpl *this)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v6, this + *(*this - 680) + 8, 0);
  v2 = atomic_load(this + 11);
  if (v2 >= 2)
  {
    v3 = *(this + 6);
    if (v3)
    {
      v4 = (*(*v3 + 280))(v3);
      (*(*v4 + 576))(v4);
    }
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v6);
  (*(*this + 624))(this);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v6, this + *(*this - 680) + 8, 0);
  v5 = *(this + 9);
  if (v5)
  {
    (*(*&v5[*(*v5 - 544)] + 216))(&v5[*(*v5 - 544)]);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v6);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v6, this + *(*this - 680) + 8, 1);
  atomic_store(0, this + 11);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v6);
}

void sub_18612AB30(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::NodeImpl::Clear(uint64_t this, int a2, int a3)
{
  v4 = this;
  if (a3)
  {
    v5 = *(this + 72);
    if (v5)
    {
      this = (*(*&v5[*(*v5 - 544)] + 224))(&v5[*(*v5 - 544)], 1, 1);
    }
  }

  if (a2)
  {
    (*(*v4 + 608))(v4);
    v6 = *(*v4 + 560);

    return v6(v4);
  }

  return this;
}

void AdobeXMPCore_Int::NodeImpl::Clone(AdobeXMPCore_Int::NodeImpl *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(v18, 0, sizeof(v18));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v18, this + *(*this - 680) + 8, 0);
  v8 = *(this + 9);
  if (v8)
  {
    v9 = (*(*&v8[*(*v8 - 688)] + 560))(&v8[*(*v8 - 688)]);
    v17 = 0uLL;
    if (v9)
    {
      v15 = 0;
      v16 = 0;
      (*(*(*(this + 9) + *(**(this + 9) - 544)) + 264))(&v15, *(this + 9) + *(**(this + 9) - 544), a2, a3);
      if (v15 && ((*(*v15 + 240))(&v14), v17 = v14, v14))
      {
        v10 = (*(*(v14 + *(*v14 - 688)) + 560))(v14 + *(*v14 - 688));
      }

      else
      {
        v10 = 0;
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v16);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v17 = 0uLL;
  }

  *a4 = 0;
  a4[1] = 0;
  (*(*this + 616))(this, a2, a3, v10);
  if (*a4)
  {
    v11 = (*(**a4 + 280))(*a4);
    v12 = (*(**a4 + 168))();
    (*(*v11 + 552))(v11, v12);
    if (*a4)
    {
      if (v17 && v10)
      {
        v13 = (*(**a4 + 280))(*a4);
        (*(*v13 + 584))(v13, &v17);
      }
    }
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v17 + 1));
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v18);
}

void sub_18612AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a5);
  }

  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a7);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NodeImpl::SetQualifiers(void *a1, uint64_t *a2)
{
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, a1 + *(*a1 - 680) + 8, 1);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[10];
  a1[9] = v5;
  a1[10] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::QualifiersCount(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 680) + 8, 0);
  v2 = *(this + 9);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 9) + *(**(this + 9) - 688);
  return (*(*v3 + 560))(v3);
}

void AdobeXMPCore_Int::NodeImpl::QualifiersIterator(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 680) + 8, 0);
  if (*(this + 9))
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
    (*(*(*(this + 9) + *(**(this + 9) - 688)) + 552))(*(this + 9) + *(**(this + 9) - 688));
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::GetParentNodeType(AdobeXMPCore_Int::NodeImpl *this)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::NodeImpl::GetParentNodeType(AdobeXMPCore_Int::NodeImpl *this)
{
  result = *(this + *(*this - 88) + 48);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t AdobeXMPCore_Int::NodeImpl::GetQualifierNodeType(AdobeXMPCore_Int::NodeImpl *this, const char *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  memset(v12, 0, sizeof(v12));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v12, this + *(*this - 680) + 8, 0);
  v10 = *(this + 9);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
  if (v10)
  {
    return (*(**(this + 9) + 640))(*(this + 9), a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

atomic_ullong *AdobeXMPCore_Int::NodeImpl::UnRegisterChange(atomic_ullong *this)
{
  v2 = this + 11;
  if (atomic_load(this + 11))
  {
    atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!atomic_load(v2))
  {
    this = this[6];
    if (this)
    {
      v5 = *(*(*(*this + 280))(this) + 576);

      return v5();
    }
  }

  return this;
}

void AdobeXMPCore_Int::NodeImpl::Acquire(AdobeXMPCore_Int::NodeImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::Acquire(this + *(*this - 672));
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 0);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18612B574(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::NodeImpl::Release(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 1);
  AdobeXMPCore_Int::SharedObjectImpl::Release((this + *(*this - 672)));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18612B63C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::NodeImpl::AcquireInternal(AdobeXMPCore_Int::NodeImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::AcquireInternal(this + *(*this - 672));
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 0);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18612B704(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

atomic_ullong *AdobeXMPCore_Int::NodeImpl::RegisterChange(atomic_ullong *this)
{
  atomic_fetch_add(this + 11, 1uLL);
  v1 = atomic_load(this + 11);
  if (v1 == 1)
  {
    this = (*(*this + 528))(this);
    if (this)
    {
      v2 = *(*(*(*this + 280))(this) + 560);

      return v2();
    }
  }

  return this;
}

void *AdobeXMPCore::INode_v1::MakeShared@<X0>(void *this@<X0>, AdobeXMPCore::INode_v1 *a2@<X1>, void *a3@<X8>)
{
  if (this)
  {
    v4 = this;
    (**(this + *(*this - 56)))(this + *(*this - 56), a2);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, v4);
  }

  *a3 = 0;
  a3[1] = 0;
  return this;
}

void sub_18612B984(void *a1)
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

void std::__shared_ptr_pointer<AdobeXMPCore::INode_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INode_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::INode_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INode_v1>>::__on_zero_shared(void *a1)
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

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::INode_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INode_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<AdobeXMPCore::INode_v1 const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t **Common::HandlerRegistry::removeHandler(uint64_t ***this, unsigned int a2)
{
  v4 = *this;
  v5 = v4[1];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v4 + 1;
  do
  {
    v7 = *(v5 + 8);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = v5[v9];
  }

  while (v5);
  if (v6 != v4 + 1 && *(v6 + 8) <= a2)
  {
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(v4, v6);
    operator delete(v6);
    result = Common::HandlerRegistry::getHandlerInfo(this, a2);
    if (result)
    {
      Common::HandlerRegistry::removeHandler();
    }
  }

  else
  {
LABEL_9:
    v10 = this[1];
    v13 = v10[1];
    v11 = v10 + 1;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 8);
      v8 = v15 >= a2;
      v16 = v15 < a2;
      if (v8)
      {
        v14 = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
    if (v14 != v11 && *(v14 + 8) <= a2)
    {
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(this[1], v14);
      operator delete(v14);
      result = Common::HandlerRegistry::getHandlerInfo(this, a2);
      if (result)
      {
        Common::HandlerRegistry::removeHandler();
      }
    }

    else
    {
LABEL_17:
      result = this[2];
      v18 = result[1];
      if (v18)
      {
        v19 = result + 1;
        do
        {
          v20 = *(v18 + 8);
          v8 = v20 >= a2;
          v21 = v20 < a2;
          if (v8)
          {
            v19 = v18;
          }

          v18 = v18[v21];
        }

        while (v18);
        if (v19 != result + 1 && *(v19 + 8) <= a2)
        {
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(result, v19);
          operator delete(v19);
          result = Common::HandlerRegistry::getHandlerInfo(this, a2);
          if (result)
          {
            Common::HandlerRegistry::removeHandler();
          }
        }
      }
    }
  }

  return result;
}

uint64_t Common::HandlerRegistry::getFileFormat(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4)
  {
    v5 = 1346651680;
    v7 = *a2;
    v8 = &kFileExtMap;
    do
    {
      v9 = strlen(*v8);
      v10 = v9;
      if ((v2 & 0x80) != 0)
      {
        if (v9 == v3)
        {
          v11 = v7;
          if (v3 == -1)
          {
            std::string::__throw_out_of_range[abi:fe200100]();
          }

LABEL_11:
          if (!memcmp(v11, *v8, v10))
          {
            return v5;
          }
        }
      }

      else
      {
        v11 = a2;
        if (v10 == v2)
        {
          goto LABEL_11;
        }
      }

      v5 = *(v8 + 6);
      v8 += 2;
    }

    while (v5);
  }

  return 538976288;
}

uint64_t Common::HandlerRegistry::pickDefaultHandler(void *a1, unsigned int FileFormat, const void **a3)
{
  if (FileFormat == 538976288)
  {
    FileFormat = Common::HandlerRegistry::getFileFormat(a1, a3);
    if (FileFormat == 538976288)
    {
      return 0;
    }
  }

  v4 = a1[1];
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (v7)
  {
    v8 = v5;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= FileFormat;
      v11 = v9 < FileFormat;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 != v5 && FileFormat >= *(v8 + 32))
    {
      return v8 + 40;
    }
  }

  v12 = a1[2];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (v15)
  {
    v8 = v13;
    do
    {
      v16 = *(v14 + 32);
      v10 = v16 >= FileFormat;
      v17 = v16 < FileFormat;
      if (v10)
      {
        v8 = v14;
      }

      v14 = *(v14 + 8 * v17);
    }

    while (v14);
    if (v8 != v13 && FileFormat >= *(v8 + 32))
    {
      return v8 + 40;
    }
  }

  v18 = *(*a1 + 8);
  if (!v18)
  {
    return 0;
  }

  v19 = *a1 + 8;
  do
  {
    v20 = *(v18 + 32);
    v10 = v20 >= FileFormat;
    v21 = v20 < FileFormat;
    if (v10)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v21);
  }

  while (v18);
  if (v19 == *a1 + 8)
  {
    return 0;
  }

  v22 = *(v19 + 32);
  v23 = v19 + 40;
  if (FileFormat >= v22)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t (**Common::HandlerRegistry::selectSmartHandler(Common::HandlerRegistry *this, XMPFiles *a2, Host_IO *a3, uint64_t a4, int a5))(uint64_t, Host_IO *, uint64_t, XMPFiles *)
{
  memset(&v43, 0, sizeof(v43));
  memset(&v42, 0, sizeof(v42));
  memset(&__p, 0, sizeof(__p));
  memset(v40, 0, sizeof(v40));
  if ((a5 & 8) != 0)
  {
    v12 = Common::HandlerRegistry::pickDefaultHandler(this, a4, v40);
    goto LABEL_73;
  }

  if ((*(a2 + 391) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 47))
    {
LABEL_4:
      FileMode = Host_IO::GetFileMode(a3, a2);
      if ((FileMode & 0xFE) == 2)
      {
        goto LABEL_72;
      }

      MEMORY[0x186602520](&v43, a3);
      XIO::SplitLeafName(&v43, &v42);
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v42.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_72;
      }

      if (FileMode == 1)
      {
        XIO::SplitFileExtension(&v42, &__p, 1);
      }

      goto LABEL_13;
    }
  }

  else if (*(a2 + 391))
  {
    goto LABEL_4;
  }

  if (!*(a2 + 29))
  {
    v38 = "session->ioRef != 0";
    v39 = 591;
    goto LABEL_85;
  }

LABEL_13:
  *(a2 + 56) = 538976288;
  *(a2 + 60) = a5;
  if (a4 == 538976288)
  {
    goto LABEL_32;
  }

  v13 = Common::HandlerRegistry::pickDefaultHandler(this, a4, v40);
  v14 = a5;
  if (v13)
  {
    v12 = v13;
    v15 = *(a2 + 29);
    if (!v15)
    {
      if (*(v13 + 5))
      {
        v15 = 0;
      }

      else
      {
        v15 = XMPFiles_IO::New_XMPFiles_IO(a3, ((a5 & 2) == 0), a2 + 296);
        *(a2 + 29) = v15;
        if (!v15)
        {
          goto LABEL_72;
        }
      }
    }

    *(a2 + 56) = a4;
    v16 = *(v12 + 1);
    if ((v16 & 0x1000) != 0)
    {
      v14 = (a5 & 0x10) != 0 ? 0 : a5;
    }

    else
    {
      v17 = *(a2 + 391);
      if (v17 < 0)
      {
        v17 = *(a2 + 47);
      }

      if ((v16 & 0x900) == 0 || (v14 = a5, v17))
      {
        v18 = v12[1](a4, a3, v15, a2);
        v14 = a5;
        if (v18)
        {
          goto LABEL_73;
        }
      }
    }

    if (*(a2 + 32))
    {
      v38 = "foundHandler || (session->tempPtr == 0)";
      v39 = 668;
LABEL_85:
      __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", v39, v38);
    }
  }

  if ((v14 & 0x10) != 0)
  {
LABEL_72:
    v12 = 0;
    goto LABEL_73;
  }

LABEL_32:
  if ((*(a2 + 391) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 47))
    {
      goto LABEL_46;
    }

LABEL_36:
    v19 = Common::HandlerRegistry::pickDefaultHandler(this, 0x20202020u, &__p.__r_.__value_.__l.__data_);
    if (v19)
    {
      v12 = v19;
      v23 = *(a2 + 29);
      v24 = *(v19 + 4);
      if (v23)
      {
        if ((v24 & 0x100) != 0)
        {
          (*(*v23 + 72))(*(a2 + 29));
          v23 = 0;
          *(a2 + 29) = 0;
        }
      }

      else if ((v24 & 0x100) != 0)
      {
        v23 = 0;
      }

      else
      {
        v23 = XMPFiles_IO::New_XMPFiles_IO(a3, ((a5 & 2) == 0), a2 + 296);
        *(a2 + 29) = v23;
        if (!v23)
        {
          goto LABEL_72;
        }
      }

      v25 = *v12;
      *(a2 + 56) = v25;
      if ((v12[1])(v25, a3, v23, a2, v20, v21, v22))
      {
        goto LABEL_73;
      }

      if (*(a2 + 32))
      {
        __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", 771, "foundHandler || (session->tempPtr == 0)");
      }
    }

    goto LABEL_46;
  }

  if (*(a2 + 391))
  {
    goto LABEL_36;
  }

LABEL_46:
  if (!*(a2 + 29))
  {
    v26 = XMPFiles_IO::New_XMPFiles_IO(a3, ((a5 & 2) == 0), a2 + 296);
    *(a2 + 29) = v26;
    if (!v26)
    {
      goto LABEL_72;
    }
  }

  v27 = *(this + 1);
  v28 = *v27;
  if (*v27 == v27 + 1)
  {
LABEL_57:
    v32 = *(a2 + 391);
    if (v32 < 0)
    {
      v32 = *(a2 + 47);
    }

    if (!v32)
    {
      goto LABEL_72;
    }

    v33 = *(a2 + 29);
    if (v33)
    {
      (*(*v33 + 72))(v33);
    }

    *(a2 + 29) = 0;
    v34 = *(this + 2);
    v28 = *v34;
    if (*v34 == v34 + 1)
    {
      goto LABEL_72;
    }

    while (1)
    {
      *(a2 + 56) = 538976288;
      if ((v28[6])(*(v28 + 10), a3, *(a2 + 29), a2))
      {
        break;
      }

      if (*(a2 + 32))
      {
        __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", 811, "foundHandler || (session->tempPtr == 0)");
      }

      v35 = v28[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v28[2];
          v31 = *v36 == v28;
          v28 = v36;
        }

        while (!v31);
      }

      v12 = 0;
      v28 = v36;
      if (v36 == (*(this + 2) + 8))
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    while (1)
    {
      *(a2 + 56) = 538976288;
      if ((v28[6])(*(v28 + 10), a3, *(a2 + 29), a2))
      {
        break;
      }

      if (*(a2 + 32))
      {
        __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", 793, "foundHandler || (session->tempPtr == 0)");
      }

      v29 = v28[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v28[2];
          v31 = *v30 == v28;
          v28 = v30;
        }

        while (!v31);
      }

      v28 = v30;
      if (v30 == (*(this + 1) + 8))
      {
        goto LABEL_57;
      }
    }
  }

  v12 = (v28 + 5);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_18612C350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void Common::HandlerRegistry::registerNormalHandler()
{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 247, "! (flags & kXMPFiles_HandlerOwnsFile)");
}

{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 248, "! (flags & kXMPFiles_FolderBasedFormat)");
}

{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 249, "(flags & kXMPFiles_CanInjectXMP) ? (flags & kXMPFiles_CanExpand) : 1");
}

{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 245, "format != kXMP_UnknownFile");
}

void Common::HandlerRegistry::removeHandler()
{
  __assert_rtn("removeHandler", "HandlerRegistry.cpp", 362, "! this->getFormatInfo(format)");
}

{
  __assert_rtn("removeHandler", "HandlerRegistry.cpp", 369, "! this->getFormatInfo(format)");
}

{
  __assert_rtn("removeHandler", "HandlerRegistry.cpp", 376, "! this->getFormatInfo(format)");
}

unint64_t PNG_Support::OpenPNG(uint64_t a1, uint64_t a2)
{
  v7 = (*(*a1 + 16))(a1, 8, 0);
  if (v7 != 8)
  {
    return 0;
  }

  v6 = 0;
  v5 = 0;
    ;
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 72) - *(a2 + 64)) >> 3);
}

BOOL PNG_Support::ReadChunk(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t *a5)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v10 = *a5;
  v32[0] = 0;
  v11 = (**a1)(a1, v32, 8, 0);
  if (v11 == 8)
  {
    v12 = *a5;
    v13 = HIDWORD(v32[0]);
    v14 = bswap32(v32[0]);
    *a4 = v14;
    *a3 = bswap32(v13);
    v15 = v12 + v14 + 12;
    *a5 = v15;
    if (v15 > (*(*a1 + 24))(a1))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 213;
      exception[1] = "Invalid PNG chunk length";
      *(exception + 16) = 0;
    }

    *v30 = v10;
    *&v30[8] = 0;
    *&v30[24] = 0;
    v29 = &unk_1EF4DF7C8;
    *&v30[8] = *a4;
    *&v30[16] = *a3;
    if (*&v30[16] == 1767135348)
    {
      PNG_Support::CheckiTXtChunkHeader(a1, a2, &v29);
    }

    v16 = *(a2 + 72);
    v17 = *(a2 + 80);
    if (v16 >= v17)
    {
      v20 = *(a2 + 64);
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v20) >> 3);
      v22 = v21 + 1;
      if (v21 + 1 > 0x666666666666666)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v20) >> 3);
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v22;
      }

      v31[4] = a2 + 64;
      if (v24)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<PNG_Support::ChunkData>>(a2 + 64, v24);
      }

      v25 = 40 * v21;
      v31[0] = 0;
      v31[1] = v25;
      v31[3] = 0;
      *v25 = &unk_1EF4DF7C8;
      v26 = *v30;
      *(v25 + 17) = *&v30[9];
      *(v25 + 8) = v26;
      v31[2] = 40 * v21 + 40;
      std::vector<PNG_Support::ChunkData>::__swap_out_circular_buffer((a2 + 64), v31);
      v19 = *(a2 + 72);
      std::__split_buffer<PNG_Support::ChunkData>::~__split_buffer(v31);
    }

    else
    {
      *v16 = &unk_1EF4DF7C8;
      v18 = *v30;
      *(v16 + 17) = *&v30[9];
      *(v16 + 8) = v18;
      v19 = v16 + 40;
    }

    *(a2 + 72) = v19;
    (*(*a1 + 16))(a1, *a5, 0);
  }

  return v11 == 8;
}

void sub_18612C878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    std::__split_buffer<PNG_Support::ChunkData>::~__split_buffer(&a14);
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18612C8B4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18612C8BCLL);
  }

  __clang_call_terminate(a1);
}

__n128 PNG_Support::CheckiTXtChunkHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 16) >= 0x17u)
  {
    v6 = a3 + 8;
    (*(*a1 + 16))(a1, *(a3 + 8) + 8, 0);
    v10 = 0;
    v11[0] = 0;
    *(v11 + 6) = 0;
    if ((**a1)(a1, &v10, 22, 0) == 22 && v10 == 0x2E6D6F633A4C4D58 && v11[0] == 0x6D782E65626F6461 && *(v11 + 6) == 7368056)
    {
      *(a2 + 8) = *(a3 + 8) + 30;
      *(a2 + 16) = *(a3 + 16) - 22;
      result = *v6;
      *(a2 + 41) = *(v6 + 9);
      *(a2 + 32) = result;
      *(a3 + 32) = 1;
    }
  }

  return result;
}

void sub_18612CA2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18612C9C4);
  }

  _Unwind_Resume(a1);
}

BOOL PNG_Support::FindAndReadXMPChunk(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
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

  if (v4 >= 16)
  {
    if ((*(*a1 + 16))(a1, 8, 0) != -1)
    {
      operator new[]();
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 213;
    exception[1] = "seek failed";
    *(exception + 16) = 0;
  }

  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  return v5 != 0;
}

void sub_18612CCF0(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    __cxa_rethrow();
  }

  __cxa_rethrow();
}

uint64_t PNG_Support::ExtractXMPPacket(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 < 0x17)
  {
    return 0;
  }

  memset(&__str, 0, sizeof(__str));
  if (a2 <= a4)
  {
    MEMORY[0x186602530](&__str, a3, a2);
  }

  else
  {
    if (a2 + a5 + 8 + 4 > (*(*a1 + 24))(a1))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 213;
      exception[1] = "Invalid PNG chunk length";
      *(exception + 16) = 0;
    }

    MEMORY[0x186602530](&__str, a3, a4);
    *a7 = a5 + 30;
    memset(&__p, 0, sizeof(__p));
    std::string::reserve(&__p, a2 - a4);
    std::string::assign(&__p, a2 - a4, 32);
    (*(*a1 + 16))(a1, a5 + 8 + a4, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    (**a1)(a1, p_p, a2 - a4, 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v16, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(&__p.__r_.__value_.__r.__words[1] + 6) = 7368056;
  *&__p.__r_.__value_.__l.__data_ = *"XML:com.adobe.xmp";
  HIWORD(__p.__r_.__value_.__r.__words[2]) = 5632;
  v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
    if (__str.__r_.__value_.__l.__size_ >= 0x16)
    {
      v19 = 22;
    }

    else
    {
      v19 = __str.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) >= 0x16)
    {
      v19 = 22;
    }

    else
    {
      v19 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    p_str = &__str;
  }

  v21 = memcmp(p_str, &__p, v19);
  v22 = v19 > 0x15 && v21 == 0;
  v7 = v22;
  if (v22)
  {
    if (*(a6 + 23) < 0)
    {
      **a6 = 0;
      *(a6 + 8) = 0;
    }

    else
    {
      *a6 = 0;
      *(a6 + 23) = 0;
    }

    std::string::basic_string(&__p, &__str, 0x16uLL, 0xFFFFFFFFFFFFFFFFLL, &v27);
    if (*(a6 + 23) < 0)
    {
      operator delete(*a6);
    }

    *a6 = __p;
    v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v18 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_18612D044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18612D1E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D1B8);
}

unint64_t PNG_Support::CalculateCRC(PNG_Support *this, unsigned __int8 *a2)
{
  if ((CRC::crc_table_computed & 1) == 0)
  {
    for (i = 0; i != 256; ++i)
    {
      v3 = 8;
      v4 = i;
      do
      {
        if (v4)
        {
          v4 = (v4 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v4 >>= 1;
        }

        --v3;
      }

      while (v3);
      CRC::crc_table[i] = v4;
    }

    CRC::crc_table_computed = 1;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  v6 = 0xFFFFFFFFLL;
  do
  {
    v7 = *this;
    this = (this + 1);
    v6 = CRC::crc_table[(v7 ^ v6)] ^ (v6 >> 8);
    --v5;
  }

  while (v5);
  return v6 ^ 0xFFFFFFFF;
}

uint64_t PNG_Support::CopyChunk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 16))(a1, *(a3 + 8), 0);
  XIO::Copy(a1, a2);
  return 1;
}

void sub_18612D300(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D2F0);
}

void sub_18612D478(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D450);
}

uint64_t PNG_Support::WriteBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1)
  {
    if (a4)
    {
      (*(*a1 + 16))(a1, *a2, 0);
      (*(*a1 + 8))(a1, a4, a3);
      return 1;
    }
  }

  return result;
}

void sub_18612D548(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D538);
}

void (***std::vector<PNG_Support::ChunkData>::__swap_out_circular_buffer(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 8 * (v6 - result);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_1EF4DF7C8;
      v12 = *(v10 + 1);
      *(v11 + 17) = *(v10 + 17);
      *(v11 + 1) = v12;
      v10 += 5;
      v11 += 5;
      v9 += 40;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 5;
      (*v15)();
      v13 += 5;
      result = v14;
    }

    while (v14 != v6);
  }

  a2[1] = v8;
  v16 = *a1;
  *a1 = v8;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<PNG_Support::ChunkData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__split_buffer<PNG_Support::ChunkData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *AdobeXMPCore_Int::StructureNodeImpl::StructureNodeImpl(void *this, const char *a2, unint64_t a3, const char *a4)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 864)) = *(a2 + 1);
  *(this + *(*this - 792)) = *(a2 + 2);
  *(this + *(*this - 688)) = *(a2 + 3);
  *(this + *(*this - 544)) = *(a2 + 4);
  *(this + *(*this - 56)) = *(a2 + 5);
  *(this + *(*this - 64)) = *(a2 + 6);
  *(this + *(*this - 72)) = *(a2 + 7);
  *(this + *(*this - 800)) = *(a2 + 8);
  *(this + *(*this - 808)) = *(a2 + 9);
  *(this + *(*this - 816)) = *(a2 + 10);
  *(this + *(*this - 824)) = *(a2 + 11);
  *(this + *(*this - 872)) = *(a2 + 12);
  *(this + *(*this - 880)) = *(a2 + 13);
  *(this + *(*this - 888)) = *(a2 + 14);
  *(this + *(*this - 896)) = *(a2 + 15);
  this[3] = 0;
  this[2] = 0;
  this[1] = this + 2;
  return this;
}

void AdobeXMPCore_Int::StructureNodeImpl::StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3, const char *a4)
{
  *(this + 22) = &unk_1EF4E86C0;
  *this = &unk_1EF4E7EE8;
  *(this + 4) = off_1EF4E8190;
  *(this + unk_1EF4E7EA0) = &unk_1EF4E81F0;
  *this = &unk_1EF4E78A0;
  *(this + unk_1EF4E7860) = off_1EF4E7BA8;
  *(this + *(*this - 72)) = &unk_1EF4E7C08;
  *(this + 19) = &unk_1EF4EA258;
  *(this + 6) = &unk_1EF4E9A58;
  *this = &unk_1EF4E9EC8;
  *(this + 4) = off_1EF4EA0E8;
  *(this + 22) = &unk_1EF4EA1D0;
  *(this + unk_1EF4E9830 + 48) = &unk_1EF4EA148;
  *(this + *(*(this + 6) - 560) + 48) = &unk_1EF4EA1D0;
  *(this + 5) = &unk_1EF4E89D0;
  *this = &unk_1EF4E8F08;
  *(this + 4) = off_1EF4E91B0;
  *(this + 22) = &unk_1EF4E9780;
  *(this + unk_1EF4E8718 + 40) = &unk_1EF4E9460;
  *(this + *(*(this + 5) - 704) + 40) = &unk_1EF4E96F8;
  *(this + *(*(this + 5) - 712) + 40) = &unk_1EF4E9780;
  *this = &unk_1EF4E66E8;
  *(this + unk_1EF4E66B0) = &unk_1EF4E66E8;
  *(this + *(*this - 64)) = off_1EF4E6A10;
  *(this + *(*this - 72)) = &unk_1EF4E7548;
  *(this + *(*this - 800)) = &unk_1EF4E6D08;
  *(this + *(*this - 808)) = &unk_1EF4E7228;
  *(this + *(*this - 816)) = &unk_1EF4E74C0;
  *(this + *(*this - 824)) = &unk_1EF4E7548;
  *(this + 19) = off_1EF4EBFE8;
  *(this + 20) = 0;
  *this = off_1EF4EC048;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 21) = 0;
  *(this + 22) = off_1EF4EC0D0;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((this + 48), off_1EF4E6310, a2, a3);
}

void sub_18612E290(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF4E6378);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4E6360);
  _Unwind_Resume(a1);
}

uint64_t *AdobeXMPCore_Int::CompositeNodeImpl::CompositeNodeImpl(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 736)) = a2[1];
  *(this + *(*this - 688)) = a2[2];
  *(this + *(*this - 544)) = a2[3];
  *(this + *(*this - 56)) = a2[4];
  *(this + *(*this - 64)) = a2[5];
  *(this + *(*this - 72)) = a2[6];
  *(this + *(*this - 696)) = a2[7];
  *(this + *(*this - 704)) = a2[8];
  *(this + *(*this - 712)) = a2[9];
  *(this + *(*this - 744)) = a2[10];
  *(this + *(*this - 752)) = a2[11];
  *(this + *(*this - 760)) = a2[12];
  return this;
}

void AdobeXMPCore_Int::StructureNodeImpl::GetNode(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if ((*(**a2 + 208))() && (*(**a3 + 208))())
  {
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = a3[1];
    v15 = *a3;
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v12, 0, sizeof(v12));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v12, a1 + *(*a1 - 896) + 8, 0);
    v10 = std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>((a1 + 1), &v13);
    if (a1 + 2 != v10)
    {
      v11 = *(v10 + 64);
      (**&v11[*(*v11 - 56)])(&v11[*(*v11 - 56)]);
      std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a4, v11);
    }

    *a4 = 0;
    a4[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_18612E850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(AdobeXMPCore_Int::StructureNodeImpl::QualifiedName *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void AdobeXMPCore_Int::StructureNodeImpl::GetNode(AdobeXMPCore_Int::StructureNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3, const char *a4)
{
  v4 = 0;
  v5 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, a3);
}

void sub_18612E9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::StructureNodeImpl::RemoveNode(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*(**a2 + 208))() && (*(**a3 + 208))())
  {
    v8 = a2[1];
    v15 = *a2;
    v16 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = a3[1];
    v17 = *a3;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v14, 0, sizeof(v14));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v14, a1 + *(*a1 - 896) + 8, 1);
    v10 = std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(a1 + 8, &v15);
    if ((a1 + 16) == v10)
    {
      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      v12 = v10[8];
      v11 = v10[9];
      *a4 = v12;
      a4[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::erase((a1 + 8), v10);
      v13 = (*(*v12 + 280))(v12);
      (*(*v13 + 504))(v13, 0);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v14);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v18);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v16);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_18612EBD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(va1);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::RemoveNode(AdobeXMPCore_Int::StructureNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3, const char *a4)
{
  v4 = 0;
  v5 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, a3);
}

void sub_18612ED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::StructureNodeImpl::GetChildNodeType(AdobeXMPCore_Int::StructureNodeImpl *this, const char *a2, unint64_t a3, const char *a4)
{
  (*(*(this + *(*this - 792)) + 648))(&v7);
  v4 = v8;
  if (!v7)
  {
    v5 = 0;
    if (!v8)
    {
      return v5;
    }

    goto LABEL_3;
  }

  v5 = (*(*v7 + 40))(v7);
  if (v4)
  {
LABEL_3:
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  return v5;
}

void sub_18612EE30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::StructureNodeImpl::InsertNode(void *a1, uint64_t *a2)
{
  v4 = a1 + *(*a1 - 872);
  v5 = a2[1];
  *&v12 = *a2;
  *(&v12 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 656))(v4, &v12);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  if (v6)
  {
    v12 = 0u;
    v13 = 0u;
    (*(**a2 + 88))(&v9);
    (*(**a2 + 72))(&v11);
    v12 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v11 + 1));
      }
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v9 + 1));
    }

    v9 = 0uLL;
    v10 = 0;
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v9, a1 + *(*a1 - 896) + 8, 1);
    if (a1 + 2 == std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>((a1 + 1), &v12))
    {
      v7 = *a2;
      v8 = (*a2 + *(**a2 - 56));
      (**v8)(v8);
      std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(&v11, v7);
    }

    v11 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }
}

void sub_18612F358(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, std::__shared_weak_count *);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a3);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(va1);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::StructureNodeImpl::ReplaceNode@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2[1];
  v7 = a1 + *(*a1 - 872);
  v16 = *a2;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*v7 + 656))(v7, &v16))
  {
    (*(**a2 + 88))(&v12);
    (*(**a2 + 72))(&v10);
    (*(*a1 + 736))(&v14, a1, &v12, &v10);
    v8 = v14 != 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v15);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  if (!v8)
  {
    v16 = 0;
    v17 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  *a3 = 0;
  a3[1] = 0;
  (*(**a2 + 88))(&v16);
  (*(**a2 + 72))(&v14);
  (*(*a1 + 744))(a1, &v16, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  return (*(*a1 + 656))(a1, a2);
}

void sub_18612F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::StructureNodeImpl::Iterator(AdobeXMPCore_Int::StructureNodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 896) + 8, 0);
  v4 = *(this + 1);
  v5 = this + 16;
  v6 = v4;
  if (v4 != (this + 16))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void sub_18612FA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::TNodeIteratorImpl(void *result, void *a2, void *a3)
{
  result[4] = &unk_1EF4EC750;
  *result = &unk_1EF4EC478;
  result[3] = off_1EF4EC518;
  *(result + unk_1EF4EC3E8) = &unk_1EF4EC578;
  result[5] = 0;
  result[6] = 0;
  *result = &unk_1EF4EC200;
  result[3] = &unk_1EF4EC2A0;
  result[4] = &unk_1EF4EC308;
  result[1] = *a2;
  result[2] = *a3;
  return result;
}

uint64_t AdobeXMPCore_Int::StructureNodeImpl::ChildCount(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = *(this + 3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::StructureNodeImpl::HasContent(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = *(this + 3) != 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::StructureNodeImpl::ValidateNameOrNameSpaceChangeForAChild(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v23 = 0uLL;
  (*(*a1 + 736))(&v23);
  v10 = v23;
  if (!v23)
  {
    (*(*a1 + 744))(&v19, a1, a2, a3);
    v11 = v19;
    v19 = 0uLL;
    v12 = *(&v23 + 1);
    v23 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v19 + 1));
      }
    }

    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v22, a1 + *(*a1 - 896) + 8, 1);
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v22);
    v13 = a4[1];
    *&v19 = *a4;
    *(&v19 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = a5[1];
    v20 = *a5;
    v21 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = &v19;
    v15 = std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__emplace_unique_key_args<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName&&>,std::tuple<>>(a1 + 8, &v19);
    v16 = v23;
    if (*(&v23 + 1))
    {
      atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(v15 + 72);
    *(v15 + 64) = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v19 + 1));
    }
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
  }

  return v10 == 0;
}

void sub_18612FF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(&a9);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::ClearContents(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v9, 0, sizeof(v9));
  v2 = this + 8;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v9, this + *(*this - 896) + 8, 1);
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(*(**(v3 + 8) + 280))(*(v3 + 8));
      (*(v5 + 504))();
      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(v2, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v4;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v9);
}

void sub_186130108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::CloneContents(AdobeXMPCore_Int::StructureNodeImpl *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memset(v13, 0, sizeof(v13));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v13, this + *(*this - 896) + 8, 0);
  if (!a2 || *(this + 3) || !a3 && a4)
  {
    v10 = *this;
    v11 = *(this + *(*this - 880) + 16);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      v10 = *this;
    }

    v12 = *(this + *(v10 - 880) + 32);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::IStructureNode_I::CreateStructureNode();
  }

  *a5 = 0;
  a5[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v13);
}

void sub_186130414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::resetChangesForChildren(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 896) + 8, 0);
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != v3)
  {
    do
    {
      (*(**(v2 + 8) + 216))(*(v2 + 8));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((v2 + 48), off_1EF4E6310);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 176), off_1EF4E6378);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 152), off_1EF4E6360);
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(void *a1)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 864)) = a2[1];
  *(this + *(*this - 792)) = a2[2];
  *(this + *(*this - 688)) = a2[3];
  *(this + *(*this - 544)) = a2[4];
  *(this + *(*this - 56)) = a2[5];
  *(this + *(*this - 64)) = a2[6];
  *(this + *(*this - 72)) = a2[7];
  *(this + *(*this - 800)) = a2[8];
  *(this + *(*this - 808)) = a2[9];
  *(this + *(*this - 816)) = a2[10];
  *(this + *(*this - 824)) = a2[11];
  *(this + *(*this - 872)) = a2[12];
  *(this + *(*this - 880)) = a2[13];
  *(this + *(*this - 888)) = a2[14];
  *(this + *(*this - 896)) = a2[15];
  std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(this + 8, *(this + 2));
}

void std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *>>>::destroy[abi:fe200100]<std::pair<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const,std::shared_ptr<AdobeXMPCore::INode_v1>>,void,0>(a1, a2 + 4);

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *>>>::destroy[abi:fe200100]<std::pair<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const,std::shared_ptr<AdobeXMPCore::INode_v1>>,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  v4 = a2[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = a2[1];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }
}

uint64_t std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(uint64_t a1, uint64_t *a2)
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
    a1 = AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, (v3 + 32), a2);
    if (a1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!a1)
    {
      v5 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v5 == v2 || AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *>>>::destroy[abi:fe200100]<std::pair<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const,std::shared_ptr<AdobeXMPCore::INode_v1>>,void,0>(a1, a2 + 4);
  operator delete(a2);
  return v4;
}

uint64_t std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__emplace_unique_key_args<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  result = *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__find_equal<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__find_equal<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(uint64_t a1, void *a2, uint64_t *a3)
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
        a1 = AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, a3, (v4 + 4));
        if (!a1)
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

      a1 = AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, v7 + 4, a3);
      if (!a1)
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

void AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::~TNodeIteratorImpl(uint64_t a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + 32), off_1EF4EC3C0);

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::GetNodeType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != *(a1 + 16))
  {
    v2 = *(v1 + 64);
    (**&v2[*(*v2 - 56)])(&v2[*(*v2 - 56)]);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(&v4, v2);
  }

  return 0;
}

void sub_1861314D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::GetNode@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 != *(result + 16))
  {
    v4 = *(v3 + 64);
    (**&v4[*(*v4 - 56)])(&v4[*(*v4 - 56)]);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a2, v4);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

char *AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::Next@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = v4[1];
  if (v5)
  {
    do
    {
      v6 = v5;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    do
    {
      v6 = v4[2];
      v7 = *v6 == v4;
      v4 = v6;
    }

    while (!v7);
  }

  *(result + 1) = v6;
  if (v6 != *(result + 2))
  {
    (**&result[*(*result - 176)])(&result[*(*result - 176)]);
    std::shared_ptr<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(&v8, v2);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void virtual thunk toAdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::~TNodeIteratorImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4EC3C0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4EC3C0);

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EC3C0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EC3C0);

  JUMPOUT(0x186602850);
}

void sub_186131834(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186131A20(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::StructureNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::StructureNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::StructureNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::StructureNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::StructureNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::StructureNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__emplace_unique_key_args<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName&&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__find_equal<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL TIFF_CheckFormat(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1414088262)
  {
    TIFF_CheckFormat();
  }

  (*(*a3 + 16))(a3, 0, 0);
  v4 = (*(*a3 + 24))(a3);
  v5 = (*(*a3 + 16))(a3, 0, 1);
  result = 0;
  if (v4 - v5 >= 26)
  {
    v8 = 0;
    (**a3)(a3, &v8, 4, 0);
    return v8 == 2771273 || v8 == 704662861;
  }

  return result;
}

void TIFF_MetaHandler::TIFF_MetaHandler(TIFF_MetaHandler *this, XMPFiles *a2)
{
  XMPFileHandler::XMPFileHandler(this);
  *v4 = &unk_1EF4EC990;
  TIFF_FileWriter::TIFF_FileWriter((v4 + 12));
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 1) = a2;
  *(this + 4) = 8831;
  *(this + 20) = 0;
}

void TIFF_MetaHandler::~TIFF_MetaHandler(TIFF_MetaHandler *this)
{
  *this = &unk_1EF4EC990;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  TIFF_FileWriter::~TIFF_FileWriter((this + 96));

  XMPFileHandler::~XMPFileHandler(this);
}

{
  TIFF_MetaHandler::~TIFF_MetaHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t TIFF_MetaHandler::CacheFileData(TIFF_MetaHandler *this)
{
  if (*(this + 21) == 1)
  {
    TIFF_MetaHandler::CacheFileData();
  }

  v2 = *(this + 1);
  v3 = v2[29];
  v4 = v2[34];
  if (v4 && v4(v2[35]))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 12;
    v8 = "TIFF_MetaHandler::CacheFileData - User abort";
    goto LABEL_14;
  }

  TIFF_FileWriter::ParseFileStream(this + 96, v3);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (TIFF_FileWriter::GetTag((this + 96), 0, 0xC612u, &v12))
  {
    v5 = *v13;
    if (TIFF_FileWriter::GetTag((this + 96), 0, 0xC613u, &v12))
    {
      v5 = *v13;
    }

    if (v5 >= 2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 206;
      v8 = "DNG version beyond 1.x";
LABEL_14:
      exception[1] = v8;
      *(exception + 16) = 0;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = TIFF_FileWriter::GetTag((this + 96), 0, 0x2BCu, &v9);
  if (result)
  {
    *(this + 4) = TIFF_FileWriter::GetValueOffset((this + 96), 0, 0x2BCu);
    *(this + 5) = v11;
    *(this + 24) = 257;
    result = MEMORY[0x186602530](this + 56, v10);
    *(this + 21) = 1;
  }

  return result;
}

void TIFF_MetaHandler::ProcessXMP(TIFF_MetaHandler *this)
{
  *(this + 22) = 1;
  if ((*(*(this + 1) + 240) & 2) == 0)
  {
    operator new();
  }

  operator new();
}

void sub_18613251C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1861324A8);
}

void TIFF_MetaHandler::UpdateFile(TIFF_MetaHandler *this, int a2)
{
  if (a2)
  {
    TIFF_MetaHandler::UpdateFile();
  }

  v3 = *(*(this + 1) + 232);
  v4 = *(this + 10);
  if (*(this + 4) == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 4);
  }

  if (v4 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  ExportPhotoData(1414088262, this + 80, this + 96, *(this + 52), *(this + 51));
  if (v5 != 0 && v6 != 0)
  {
    v7 = 576;
  }

  else
  {
    v7 = 64;
  }

  v8 = this + 56;
  TXMPMeta<std::string>::SerializeToBuffer(this + 80, this + 56, v7, v6);
  if (v5 != 0 && v6 != 0)
  {
    v9 = *(this + 79);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(this + 8);
    }

    v10 = v9 <= v6;
  }

  else
  {
    v10 = 0;
  }

  IsLegacyChanged = TIFF_FileWriter::IsLegacyChanged((this + 96));
  v13 = *(this + 1);
  v14 = *(v13 + 288);
  if (!IsLegacyChanged && v10)
  {
    LODWORD(v15) = *(this + 79);
    if ((v15 & 0x80000000) != 0)
    {
      v17 = *(this + 8);
      v16 = *(this + 10);
      if (v17 >= v16)
      {
        v19 = *(v13 + 232);
LABEL_37:
        v25 = *(this + 8);
        v24 = 1;
LABEL_38:
        if (v25 != v6)
        {
          TIFF_MetaHandler::UpdateFile();
        }

        if (v14)
        {
          if (*(v14 + 32) != 1)
          {
            if (v24)
            {
              v15 = *(this + 8);
            }

            else
            {
              v15 = v15;
            }

            XMP_ProgressTracker::BeginWork(v14, v15);
            v26 = 1;
            goto LABEL_50;
          }

          if (v24)
          {
            v15 = *(this + 8);
          }

          else
          {
            v15 = v15;
          }

          v12.n128_f32[0] = XMP_ProgressTracker::AddTotalWork(v14, v15);
        }

        v26 = 0;
LABEL_50:
        (*(*v19 + 16))(v19, v5, 0, v12);
        v27 = *(this + 79);
        if (v27 < 0)
        {
          v8 = *(this + 7);
          v27 = *(this + 8);
        }

        (*(*v19 + 8))(v19, v8, v27);
        if ((v26 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_32:
        XMP_ProgressTracker::WorkComplete(v14, v21, v22, v23);
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(this + 10);
      if (v16 <= v15)
      {
        v19 = *(v13 + 232);
        goto LABEL_35;
      }

      v17 = *(this + 79);
    }

    std::string::append((this + 56), v16 - v17, 32);
    LODWORD(v15) = *(this + 79);
    v19 = *(*(this + 1) + 232);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    v24 = 0;
    v25 = v15;
    goto LABEL_38;
  }

  if (v14 && (*(v14 + 32) & 1) == 0)
  {
    XMP_ProgressTracker::BeginWork(*(v13 + 288), 0.0);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v20 = *(this + 79);
  if ((v20 & 0x80000000) != 0)
  {
    v20 = *(this + 16);
    v8 = *(this + 7);
  }

  TIFF_FileWriter::SetTag((this + 96), 0, 0x2BCu, 7, v20, v8);
  TIFF_FileWriter::UpdateFileStream(this + 96, v3, v14);
  if (v18)
  {
    goto LABEL_32;
  }

LABEL_33:
  *(this + 23) = 0;
}

void TIFF_MetaHandler::WriteTempFile(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1[1] + 232);
  v5 = (*(*v4 + 24))(v4);
  if (v5 >= 0x100000000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    exception[1] = "TIFF fles can't exceed 4GB";
    *(exception + 16) = 0;
  }

  v6 = a1[1];
  v7 = *(v6 + 288);
  if (v7)
  {
    XMP_ProgressTracker::BeginWork(*(v6 + 288), v5);
  }

  (*(*v4 + 16))(v4, 0, 0);
  (*(*a2 + 32))(a2, 0);
  XIO::Copy(v4, a2);
  v8 = *a1;
  *(a1[1] + 232) = a2;
  (*(v8 + 72))(a1, 0);
  *(a1[1] + 232) = v4;
  if (v7)
  {

    XMP_ProgressTracker::WorkComplete(v7, v9, v10, v11);
  }
}

void sub_186132994(void *a1)
{
  __cxa_begin_catch(a1);
  *(*(v2 + 8) + 232) = v1;
  __cxa_rethrow();
}

void IPTC_Reader::SetDataSet_UTF8(IPTC_Reader *this, unsigned __int8 a2, const void *a3)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for IPTC_Reader";
  *(exception + 16) = 0;
}

void IPTC_Reader::DeleteDataSet(IPTC_Reader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for IPTC_Reader";
  *(exception + 16) = 0;
}

void IPTC_Reader::UpdateMemoryDataSets(IPTC_Reader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for IPTC_Reader";
  *(exception + 16) = 0;
}

void IPTC_Reader::~IPTC_Reader(void **this)
{
  IPTC_Manager::~IPTC_Manager(this);

  JUMPOUT(0x186602850);
}

void IPTC_Manager::~IPTC_Manager(void **this)
{
  *this = &unk_1EF4ECA88;
  if (*(this + 45) == 1)
  {
    free(this[4]);
  }

  std::__tree<unsigned long long>::destroy((this + 1), this[2]);
}

void TIFF_MetaHandler::UpdateFile()
{
  __assert_rtn("UpdateFile", "TIFF_Handler.cpp", 362, "this->xmpPacket.size() == (size_t)oldPacketLength");
}

{
  __assert_rtn("UpdateFile", "TIFF_Handler.cpp", 294, "! doSafeUpdate");
}

void AdobeXMPCore_Int::PathImpl::RegisterNameSpacePrefixMap(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 40);
  *a3 = *(a1 + 32);
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  (*(**a2 + 112))(&v7);
  v5 = v7;
  v7 = 0uLL;
  v6 = *(a1 + 40);
  *(a1 + 32) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v7 + 1));
    }
  }
}

void sub_186132C80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::PathImpl::Serialize(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(0, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_186133864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  v42 = *(v40 - 120);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v42);
  }

  v43 = *(v40 - 96);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v43);
  }

  v44 = *(v39 + 8);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void **AdobeXMPCore_Int::PathImpl::AppendPathSegment(uint64_t a1, __int128 *a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v2 = (a1 + 8);

  return std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::push_back[abi:fe200100](v2, a2);
}

void sub_186133C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void AdobeXMPCore_Int::PathImpl::RemovePathSegment(AdobeXMPCore_Int::PathImpl *this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v12[2] = a2;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (a2 - 1 >= ((v4 - v5) >> 4))
  {
    v12[0] = 0;
    v12[1] = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v6 = *(v5 + 16 * (a2 - 1));
  *a3 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  v7 = 16 * a2 - 16;
  if (v4 == (v7 + v5))
  {
    __break(1u);
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(v12, (v5 + 16 * a2), v4, v5 + v7);
    v9 = v8;
    for (i = *(this + 2); i != v9; i -= 16)
    {
      v11 = *(i - 8);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      }
    }

    *(this + 2) = v9;
  }
}

void sub_186133F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::PathImpl::GetPathSegment@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = a2;
  v3 = *(this + 8);
  if (a2 - 1 >= ((*(this + 16) - v3) >> 4))
  {
    v5 = 0;
    v6 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v4 = *(v3 + 16 * (a2 - 1));
  *a3 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1861341EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
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

void AdobeXMPCore_Int::PathImpl::Clone(AdobeXMPCore_Int::PathImpl *this, uint64_t a2)
{
  v3 = a2;
  if (a2 - 1 < ((*(this + 2) - *(this + 1)) >> 4))
  {
    operator new();
  }

  v2 = 0uLL;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18613467C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore::IPath_v1::MakeShared@<X0>(void *this@<X0>, AdobeXMPCore::IPath_v1 *a2@<X1>, void *a3@<X8>)
{
  if (this)
  {
    v4 = this;
    (**(this + *(*this - 56)))(this + *(*this - 56), a2);

    std::shared_ptr<AdobeXMPCore::IPath_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::IPath_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, v4);
  }

  *a3 = 0;
  a3[1] = 0;
  return this;
}

void AdobeXMPCore::IPath_v1::ParsePath()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186134A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void AdobeXMPCore_Int::PathImpl::~PathImpl(AdobeXMPCore_Int::PathImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 56), off_1EF4ECDA8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 56), off_1EF4ECDA8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::PathImpl::~PathImpl(AdobeXMPCore_Int::PathImpl *this)
{
  v2 = (v1 + 56);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4ECDA8);
}

{
  AdobeXMPCore_Int::PathImpl::~PathImpl((this + *(*this - 24)));
}

void virtual thunk toAdobeXMPCore_Int::PathImpl::~PathImpl(void *a1)
{
  v2 = (v1 + 56);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4ECDA8);
}

{
  AdobeXMPCore_Int::PathImpl::~PathImpl((a1 + *(*a1 - 48)));
}

void AdobeXMPCore_Int::PathImpl::~PathImpl(AdobeXMPCore_Int::PathImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 232)) = a2[1];
  *(this + *(*this - 200)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 208)) = a2[5];
  *(this + *(*this - 240)) = a2[6];
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = (this + 8);
  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&v5);
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        std::__shared_weak_count::__release_shared[abi:fe200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_186134F38(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 240) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::PathImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 240) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186135124(void *a1)
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

void std::__shared_ptr_pointer<AdobeXMPCore::IPath_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPath_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPath_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPath_v1>>::__on_zero_shared(void *a1)
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

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPath_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPath_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::ConfigurationManagerImpl::~ConfigurationManagerImpl(AdobeXMPCore_Int::ConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 24), off_1EF4ED6C8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 24), off_1EF4ED6C8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ConfigurationManagerImpl::~ConfigurationManagerImpl(AdobeXMPCore_Int::ConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 24), off_1EF4ED6C8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 24), off_1EF4ED6C8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ConfigurationManagerImpl::~ConfigurationManagerImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 24), off_1EF4ED6C8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 24), off_1EF4ED6C8);

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::ThreadSafeImpl::ShareMutex(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }
}

void AdobeXMPCore_Int::ThreadSafeImpl::UnShareMutex(std::__shared_weak_count **this)
{
  if (this[1])
  {
    AdobeXMPCore_Int::ISharedMutex::CreateSharedMutex(this);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }
}

void AdobeXMPCore_Int::ThreadSafeImpl::DisableThreadSafety(AdobeXMPCore_Int::ThreadSafeImpl *this)
{
  if (*(this + 1))
  {
    v2 = *(this + 2);
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v2);
    }
  }
}

void AdobeXMPCore_Int::PathSegmentImpl::PathSegmentImpl(void *a1, AdobeXMPCore_Int::IUTF8String_I *this, char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a1[10] = &unk_1EF4EE3D8;
  *a1 = &unk_1EF4EE0E8;
  a1[9] = off_1EF4EE1A8;
  *(a1 + unk_1EF4EE040) = &unk_1EF4EE208;
  a1[11] = 0;
  a1[12] = 0;
  *a1 = &unk_1EF4EDE30;
  a1[9] = &unk_1EF4EDEF0;
  a1[10] = &unk_1EF4EDF58;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(this, a3);
}

void sub_186135750(_Unwind_Exception *a1)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v1, off_1EF4EE010);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::PathSegmentImpl::GetNameSpace@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AdobeXMPCore_Int::PathSegmentImpl::GetName@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AdobeXMPCore_Int::PathSegmentImpl::GetValue@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 48);
  *a2 = *(this + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AdobeXMPCore::IPathSegment_v1::CreatePropertyPathSegment(AdobeXMPCore::IPathSegment_v1 *this, const char *a2, char *a3, const char *a4)
{
  v4 = a4;
  v6 = a2;
  v10 = a4;
  v11 = a2;
  if (this && a2 == -1)
  {
    v6 = strlen(this);
    v11 = v6;
  }

  if (a3 && v4 == -1)
  {
    v4 = strlen(a3);
    v10 = v4;
  }

  if (this && a3 && v6)
  {
    if (v4)
    {
      operator new();
    }
  }

  v8 = 0;
  v9 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore::IPathSegment_v1::CreateArrayIndexPathSegment(AdobeXMPCore::IPathSegment_v1 *this, const char *a2)
{
  v2 = a2;
  v6 = a2;
  if (this && a2 == -1)
  {
    v2 = strlen(this);
    v6 = v2;
  }

  if (this)
  {
    if (v2)
    {
      operator new();
    }
  }

  v4 = 0;
  v5 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore::IPathSegment_v1::CreateQualifierPathSegment(AdobeXMPCore::IPathSegment_v1 *this, const char *a2, char *a3, const char *a4)
{
  v4 = a4;
  v6 = a2;
  v10 = a4;
  v11 = a2;
  if (this && a2 == -1)
  {
    v6 = strlen(this);
    v11 = v6;
  }

  if (a3 && v4 == -1)
  {
    v4 = strlen(a3);
    v10 = v4;
  }

  if (this && a3 && v6)
  {
    if (v4)
    {
      operator new();
    }
  }

  v8 = 0;
  v9 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore::IPathSegment_v1::CreateQualifierSelectorPathSegment(AdobeXMPCore::IPathSegment_v1 *this, const char *a2, char *a3, const char *a4, char *a5, const char *a6)
{
  v6 = a6;
  v8 = a4;
  v10 = a2;
  v15 = a4;
  v16 = a2;
  v14 = a6;
  if (this && a2 == -1)
  {
    v10 = strlen(this);
    v16 = v10;
  }

  if (a3 && v8 == -1)
  {
    v8 = strlen(a3);
    v15 = v8;
  }

  if (a5 && v6 == -1)
  {
    v6 = strlen(a5);
    v14 = v6;
  }

  if (this && a3 && a5 && v10 && v8)
  {
    if (v6)
    {
      operator new();
    }
  }

  v12 = 0;
  v13 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void *AdobeXMPCore::IPathSegment_v1::MakeShared@<X0>(void *this@<X0>, AdobeXMPCore::IPathSegment_v1 *a2@<X1>, void *a3@<X8>)
{
  if (this)
  {
    v4 = this;
    (**(this + *(*this - 56)))(this + *(*this - 56), a2);

    std::shared_ptr<AdobeXMPCore::IPathSegment_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::IPathSegment_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, v4);
  }

  *a3 = 0;
  a3[1] = 0;
  return this;
}

void AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(AdobeXMPCore_Int::PathSegmentImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 80), off_1EF4EE010);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 80), off_1EF4EE010);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(AdobeXMPCore_Int::PathSegmentImpl *this)
{
  v2 = (v1 + 80);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4EE010);
}

{
  AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl((this + *(*this - 24)));
}

void virtual thunk toAdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(void *a1)
{
  v2 = (v1 + 80);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4EE010);
}

{
  AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl((a1 + *(*a1 - 48)));
}

void AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(AdobeXMPCore_Int::PathSegmentImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 200)) = a2[1];
  *(this + *(*this - 160)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 168)) = a2[5];
  *(this + *(*this - 208)) = a2[6];
  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void sub_186137678(void *a1)
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

void std::__shared_ptr_pointer<AdobeXMPCore_Int::PathSegmentImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathSegmentImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathSegmentImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathSegmentImpl>>::__on_zero_shared(void *a1)
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

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathSegmentImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathSegmentImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186137864(void *a1)
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

void std::__shared_ptr_pointer<AdobeXMPCore::IPathSegment_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPathSegment_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPathSegment_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPathSegment_v1>>::__on_zero_shared(void *a1)
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

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPathSegment_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPathSegment_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

AdobeXMPCore_Int::CoreConfigurationManagerImpl *AdobeXMPCore_Int::CoreConfigurationManagerImpl::CoreConfigurationManagerImpl(AdobeXMPCore_Int::CoreConfigurationManagerImpl *this)
{
  *(this + 2) = &unk_1EF4EF098;
  *(this + 1) = off_1EF4EF208;
  *(this + 4) = &unk_1EF4EF268;
  *this = &unk_1EF4EEB30;
  *(this + unk_1EF4EEAF0) = off_1EF4EEBD8;
  *(this + *(*this - 160)) = &unk_1EF4EEC90;
  *(this + *(*this - 168)) = &unk_1EF4EED40;
  *(this + 4) = off_1EF4EF658;
  *(this + 5) = 0;
  *this = off_1EF4EF6B8;
  *(this + 6) = 0;
  AdobeXMPCore_Int::ConfigurationManagerImpl::ConfigurationManagerImpl(this + 16, &off_1EF4EEA28);
  *this = &unk_1EF4EE6D8;
  *(this + 1) = &unk_1EF4EE780;
  *(this + 2) = &unk_1EF4EE848;
  *(this + 4) = &unk_1EF4EE900;
  return this;
}

uint64_t AdobeXMPCore_Int::ConfigurationManagerImpl::ConfigurationManagerImpl(uint64_t this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 160)) = a2[1];
  *(this + *(*this - 128)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 136)) = a2[5];
  *(this + *(*this - 168)) = a2[6];
  *(this + 8) = 1;
  return this;
}

uint64_t std::shared_ptr<AdobeXMPCore::ICoreConfigurationManager_v1>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void AdobeXMPCore_Int::CoreConfigurationManagerImpl::~CoreConfigurationManagerImpl(AdobeXMPCore_Int::CoreConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 32), off_1EF4EEA60);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 32), off_1EF4EEA60);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::CoreConfigurationManagerImpl::~CoreConfigurationManagerImpl(AdobeXMPCore_Int::CoreConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 32), off_1EF4EEA60);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 32), off_1EF4EEA60);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::CoreConfigurationManagerImpl::~CoreConfigurationManagerImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EEA60);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EEA60);

  JUMPOUT(0x186602850);
}

void *std::shared_ptr<AdobeXMPCore::ICoreConfigurationManager_v1>::operator=[abi:fe200100]<AdobeXMPCore_Int::CoreConfigurationManagerImpl,0>(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (v3 + *(*v3 - 152));
  }

  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  return a1;
}

void sub_186138138(void *a1)
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

void std::__shared_ptr_pointer<AdobeXMPCore_Int::CoreConfigurationManagerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CoreConfigurationManagerImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CoreConfigurationManagerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CoreConfigurationManagerImpl>>::__on_zero_shared(void *a1)
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

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CoreConfigurationManagerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CoreConfigurationManagerImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::ClientDOMSerializerWrapperImpl(void *a1)
{
  v2 = (a1 + 2);
  *a1 = off_1EF4F0C68;
  a1[5] = &off_1EF4F0DB0;
  a1[2] = &off_1EF4F05C8;
  a1[12] = &unk_1EF4F09A8;
  *(a1 + unk_1EF4F04E0 + 16) = off_1EF4F0708;
  *(a1 + *(a1[2] - 296) + 16) = &off_1EF4F0850;
  *(a1 + *(a1[2] - 304) + 16) = &unk_1EF4F09A8;
  AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl((a1 + 5), off_1EF4EFEA0);
  a1[13] = 0;
  a1[14] = 0;
  a1[12] = off_1EF4F14F8;
  AdobeXMPCore_Int::DOMSerializerImpl::DOMSerializerImpl(v2, off_1EF4EFDD8);
}

void sub_186138774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl(v18, off_1EF4EFDD8);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v16, off_1EF4EFEB8);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(v17, off_1EF4EFEA0);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl(uint64_t this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 304)) = a2[1];
  *(this + *(*this - 216)) = a2[2];
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

void AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl(AdobeXMPCore_Int::DOMSerializerImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 344)) = a2[1];
  *(this + *(*this - 288)) = a2[2];
  *(this + *(*this - 216)) = a2[3];
  *(this + *(*this - 224)) = a2[4];
  *(this + *(*this - 232)) = a2[5];
  *(this + *(*this - 296)) = a2[6];
  *(this + *(*this - 304)) = a2[7];
  *(this + *(*this - 352)) = a2[8];
  *(this + *(*this - 360)) = a2[9];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 48)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  *(this + *(*this - 72)) = a2[4];
  *(this + *(*this - 80)) = a2[5];
  *(this + *(*this - 88)) = a2[6];
  *(this + *(*this - 96)) = a2[7];
  *(this + *(*this - 104)) = a2[8];
  *(this + *(*this - 112)) = a2[9];
  *(this + *(*this - 120)) = a2[10];
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 32))(v4);
    *(this + 1) = 0;
  }
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *this)
{
  AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl((v2 + 16), off_1EF4EFDD8);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 96), off_1EF4EFEB8);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 40), off_1EF4EFEA0);
}

{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(void *a1)
{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *this)
{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::Serialize(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(0, 0);
}

void sub_1861395D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::ValidateValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(**(a1 + 8) + 80))(*(a1 + 8), a2, a3, a4, &v8, &v7);
  if (v8)
  {
    AdobeXMPCommon::IError_v1::MakeShared(v8, &v9);
    v6 = v9;
    (*(*(v8 + *(*v8 - 56)) + 8))(v8 + *(*v8 - 56));
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = v6;
  }

  if (v7)
  {
    v9 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_186139894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void IPTC_Manager::ParseMemoryDataSets(IPTC_Manager *this, char *a2, int a3, char a4)
{
  LODWORD(v5) = a3;
  v8 = *(this + 1);
  v40 = this + 8;
  v9 = (this + 16);
  if (v8 != (this + 16))
  {
    do
    {
      IPTC_Manager::DisposeLooseValue(this, (v8 + 5));
      v10 = v8[1];
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
          v11 = v8[2];
          v25 = *v11 == v8;
          v8 = v11;
        }

        while (!v25);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  std::__tree<unsigned long long>::destroy(v40, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v9;
  if (*(this + 45) == 1)
  {
    free(*(this + 4));
  }

  *(this + 4) = 0;
  v12 = (this + 32);
  *(this + 38) = 0;
  if (v5)
  {
    if (a2 && *a2 == 28)
    {
      if (v5 > 0xA00000)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 210;
        v39 = "Outrageous length for memory-based IPTC";
      }

      else
      {
        *(this + 10) = v5;
        if ((a4 & 1) == 0)
        {
          *v12 = a2;
          v5 = v5;
          goto LABEL_18;
        }

        v5 = v5;
        v13 = malloc_type_malloc(v5, 0x100004077774924uLL);
        *v12 = v13;
        if (v13)
        {
          memcpy(v13, a2, v5);
          *(this + 45) = 1;
          a2 = *(this + 4);
LABEL_18:
          v14 = &a2[v5];
          v15 = (v14 - 5);
          *(this + 46) = 0;
          while (1)
          {
            if (a2 > v15 || *a2 != 28)
            {
              return;
            }

            v16 = a2[1];
            v17 = a2[2];
            v18 = bswap32(*(a2 + 3));
            v19 = HIWORD(v18);
            v20 = a2 + 5;
            if ((v18 & 0x80000000) != 0)
            {
              v21 = HIWORD(v18) & 0x7FFF;
              if ((v21 - 5) < 0xFFFFFFFC || v20 > &v14[-v21])
              {
                return;
              }

              v19 = 0;
              v23 = v21;
              do
              {
                v24 = *v20++;
                v19 = v24 | (v19 << 8);
                --v23;
              }

              while (v23);
              v20 = &a2[v21 + 5];
            }

            if (v20 > &v14[-v19])
            {
              return;
            }

            if (v16 == 1 && v17 == 90 && v19 == 3)
            {
              v25 = *v20 == 9499 && v20[2] == 71;
              if (v25)
              {
                *(this + 46) = 1;
              }

              v26 = 1090;
            }

            else
            {
              v26 = v17 + 1000 * v16;
              if (!v19)
              {
                v27 = 0;
                goto LABEL_42;
              }
            }

            v27 = v20;
LABEL_42:
            v28 = *v9;
            if (!*v9)
            {
              goto LABEL_50;
            }

            v29 = v9;
            v30 = *v9;
            do
            {
              v31 = *(v30 + 32);
              v32 = v31 >= v26;
              v33 = v31 < v26;
              if (v32)
              {
                v29 = v30;
              }

              v30 = *(v30 + 8 * v33);
            }

            while (v30);
            if (v29 == v9 || *(v29 + 16) > v26)
            {
LABEL_50:
              v29 = v9;
            }

            v34 = kKnownDataSets;
            do
            {
              v35 = *v34;
              v34 += 32;
              v36 = v35 == v17;
            }

            while (v35 < v17);
            if (!v36 || (*(v34 - 31) != 2 ? (v37 = v17 == 12) : (v37 = 1), v37 || v17 == 80 || v29 == v9))
            {
                ;
              }

              std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__emplace_hint_multi<std::pair<unsigned short const,IPTC_Manager::DataSetInfo> &>();
            }

            IPTC_Manager::DisposeLooseValue(this, (v29 + 5));
            *(v29 + 40) = v16;
            *(v29 + 41) = v17;
            *(v29 + 21) = 0;
            *(v29 + 11) = v19;
            v29[6] = v27;
            a2 = &v20[v19];
            v15 = (v14 - 5);
          }
        }

        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 15;
        v39 = "Out of memory";
      }
    }

    else
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 210;
      v39 = "Not valid IPTC, no leading 0x1C";
    }

    exception[1] = v39;
    *(exception + 16) = 0;
  }
}

void IPTC_Manager::DisposeLooseValue(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *(a1 + 32);
      if (v4 < v5 || v4 >= v5 + *(a1 + 40))
      {
        free(v4);
        *(a2 + 8) = 0;
      }
    }
  }
}

__n128 IPTC_Manager::GetDataSet(uint64_t a1, int a2, __n128 *a3, unint64_t a4)
{
  v4 = a2 + 2000;
  v19 = a2 + 2000;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    v9 = a1 + 8;
    v10 = v5;
    do
    {
      v11 = *(v6 + 32);
      v12 = v11 >= v4;
      v13 = v11 < v4;
      if (v12)
      {
        v10 = v6;
      }

      v6 = *(v6 + 8 * v13);
    }

    while (v6);
    if (v10 != v5 && *(v10 + 40) == 2 && *(v10 + 41) == a2 && std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>(v9, &v19) > a4 && a3)
    {
      if (a4)
      {
        v15 = 0;
        do
        {
          v16 = v10[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v10[2];
              v18 = *v17 == v10;
              v10 = v17;
            }

            while (!v18);
          }

          ++v15;
          v10 = v17;
        }

        while (v15 != a4);
      }

      else
      {
        v17 = v10;
      }

      result = *(v17 + 5);
      *a3 = result;
    }
  }

  return result;
}

void IPTC_Manager::GetDataSet_UTF8(uint64_t a1, int a2, std::string *this, unint64_t a4)
{
  if (this)
  {
    std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  }

  v12 = 0uLL;
  IPTC_Manager::GetDataSet(a1, a2, &v12, a4);
  if (v8)
  {
    v9 = v12.n128_u32[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || v12.n128_u64[1] == 0;
  if (this && (v11 & 1) == 0)
  {
    if (*(a1 + 46) == 1)
    {
LABEL_15:
      MEMORY[0x186602530](this);
      return;
    }

    if (ignoreLocalText)
    {
      if (ReconcileUtils::IsASCII(v12.n128_u64[1], v12.n128_u32[1]))
      {
        goto LABEL_15;
      }
    }

    else
    {
      ReconcileUtils::LocalToUTF8(v12.n128_u64[1], v12.n128_u32[1], this);
    }
  }
}

void IPTC_Writer::~IPTC_Writer(IPTC_Writer *this)
{
  *this = &unk_1EF4F1590;
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != this + 16)
  {
    do
    {
      IPTC_Manager::DisposeLooseValue(this, (v2 + 40));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  IPTC_Manager::~IPTC_Manager(this);
}

{
  IPTC_Writer::~IPTC_Writer(this);

  JUMPOUT(0x186602850);
}

void IPTC_Writer::SetDataSet_UTF8(IPTC_Writer *this, unsigned int a2, _BYTE *a3, unsigned int a4, uint64_t a5)
{
  if (!a4)
  {
    return;
  }

  v6 = a4;
  v10 = &off_1E6F41F48;
  do
  {
    v11 = *(v10 + 32);
    v10 += 4;
    v12 = v11 == a2;
  }

  while (v11 < a2);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v35 = "Can only set known IPTC DataSets";
    goto LABEL_69;
  }

  if ((*(this + 46) & 1) == 0)
  {
    IPTC_Writer::ConvertToUTF8(this);
  }

  v14 = v10[1];
  if (v14 < v6)
  {
    if (*(this + 46) == 1 && v14 && (a3[v14] & 0xC0) == 0x80)
    {
      while (a3[v14] <= 0xBFu)
      {
        LODWORD(v14) = v14 - 1;
        if (!v14)
        {
          v6 = 0;
          goto LABEL_19;
        }
      }
    }

    v6 = v14;
  }

LABEL_19:
  v15 = a2 + 2000;
  v36 = a2 + 2000;
  v17 = (this + 16);
  v16 = *(this + 2);
  if (!v16)
  {
    goto LABEL_27;
  }

  v18 = this + 16;
  do
  {
    v19 = *(v16 + 16);
    v20 = v19 >= v15;
    v21 = v19 < v15;
    if (v20)
    {
      v18 = v16;
    }

    v16 = *&v16[8 * v21];
  }

  while (v16);
  if (v18 == v17 || v15 < *(v18 + 16))
  {
LABEL_27:
    v18 = this + 16;
  }

  v22 = std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>(this + 8, &v36);
  if (*(v13 + 1) == 2 || a2 == 12 || a2 == 80)
  {
    if (a5 >= 0)
    {
      v23 = a5;
    }

    else
    {
      v23 = v22;
    }

    if (v23 > v22)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v35 = "Invalid index for IPTC DataSet";
LABEL_69:
      exception[1] = v35;
      *(exception + 16) = 0;
    }

    if (v23 == v22)
    {
      v24 = 0;
      v18 = this + 16;
      goto LABEL_60;
    }

    v25 = *v17;
    v26 = this + 16;
    if (*v17)
    {
      v26 = this + 16;
      do
      {
        v27 = *(v25 + 16);
        v20 = v27 >= v36;
        v28 = v27 < v36;
        if (v20)
        {
          v26 = v25;
        }

        v25 = *&v25[8 * v28];
      }

      while (v25);
    }

    if (v23 < 1)
    {
      v18 = v26;
    }

    else
    {
      do
      {
        v29 = *(v26 + 1);
        if (v29)
        {
          do
          {
            v18 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v18 = *(v26 + 2);
            v12 = *v18 == v26;
            v26 = v18;
          }

          while (!v12);
        }

        v26 = v18;
      }

      while (v23-- > 1);
    }
  }

  else if (a5 >= 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v35 = "Non-repeatable IPTC DataSet";
    goto LABEL_69;
  }

  if (v18 == v17)
  {
    v24 = 0;
  }

  else
  {
    if (*(v18 + 11) == v6 && !memcmp(*(v18 + 6), a3, v6))
    {
      return;
    }

    v24 = 1;
  }

LABEL_60:
  v31 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v31)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    v35 = "Out of memory";
    goto LABEL_69;
  }

  v32 = v31;
  memcpy(v31, a3, v6);
  if (!v24)
  {
      ;
    }

    std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__emplace_hint_multi<std::pair<unsigned short const,IPTC_Manager::DataSetInfo> &>();
  }

  IPTC_Manager::DisposeLooseValue(this, (v18 + 40));
  v18[40] = 2;
  v18[41] = a2;
  *(v18 + 21) = 0;
  *(v18 + 11) = v6;
  *(v18 + 6) = v32;
  *(this + 44) = 1;
}

void IPTC_Writer::ConvertToUTF8(IPTC_Writer *this)
{
  if (*(this + 46) == 1)
  {
    IPTC_Writer::ConvertToUTF8();
  }

  memset(&__p, 0, sizeof(__p));
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 == this + 16)
  {
    *(this + 46) = 1;
  }

  else
  {
    do
    {
      v4 = *(v2 + 11);
      if (v4)
      {
        ReconcileUtils::LocalToUTF8(*(v2 + 6), v4, &__p);
        IPTC_Manager::DisposeLooseValue(this, (v2 + 40));
        v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = __p.__r_.__value_.__r.__words[1];
        }

        *(v2 + 11) = v5;
        v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
        *(v2 + 6) = v6;
        if (!v6)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 15;
          exception[1] = "Out of memory";
          *(exception + 16) = 0;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memcpy(v6, p_p, *(v2 + 11));
      }

      v8 = *(v2 + 1);
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
          v9 = *(v2 + 2);
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
    v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(this + 46) = 1;
    if (v11 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_18613A45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *IPTC_Writer::DeleteDataSet(uint64_t *this, int a2, uint64_t a3)
{
  v3 = a2 + 2000;
  v23 = a2 + 2000;
  v5 = this + 2;
  v4 = this[2];
  if (v4)
  {
    v6 = a3;
    v7 = this;
    v8 = (this + 1);
    v9 = this + 2;
    v10 = this[2];
    do
    {
      v11 = *(v10 + 32);
      v12 = v11 >= v3;
      v13 = v11 < v3;
      if (v12)
      {
        v9 = v10;
      }

      v10 = *(v10 + 8 * v13);
    }

    while (v10);
    do
    {
      if (v3 < *(v4 + 32))
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (v3 >= *(v4 + 32)));
    }

    while (v4);
    if (v9 != v5)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        this = std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>(v8, &v23);
        if (this <= v6)
        {
          return this;
        }

        if (v6)
        {
          do
          {
            v14 = v9[1];
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
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v6-- > 1);
        }

        else
        {
          v15 = v9;
        }

        v18 = v15[1];
        if (v18)
        {
          do
          {
            v5 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          v5 = v15;
          do
          {
            v19 = v5;
            v5 = v5[2];
          }

          while (*v5 != v19);
        }

        v9 = v15;
      }

      if (v9 != v5)
      {
        v20 = v9;
        do
        {
          IPTC_Manager::DisposeLooseValue(v7, (v20 + 5));
          v21 = v20[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v20[2];
              v16 = *v22 == v20;
              v20 = v22;
            }

            while (!v16);
          }

          v20 = v22;
        }

        while (v22 != v5);
      }

      this = std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::erase(v8, v9, v5);
      *(v7 + 44) = 1;
    }
  }

  return this;
}

void IPTC_Writer::UpdateMemoryDataSets(IPTC_Writer *this)
{
  if (*(this + 44) == 1)
  {
    v2 = this + 16;
    if (*(this + 46))
    {
      v3 = 15;
    }

    else
    {
      v3 = 7;
    }

    v4 = *(this + 1);
    if (v4 != v2)
    {
      do
      {
        v5 = *(v4 + 16);
        if (v5 != 1090 && v5 != 2000)
        {
          v6 = *(v4 + 11);
          v7 = v3 + v6;
          v8 = v7 + 5;
          v3 = v7 + 9;
          if (!(v6 >> 15))
          {
            v3 = v8;
          }
        }

        v9 = *(v4 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v4 + 2);
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
      }

      while (v10 != v2);
    }

    v12 = v3;
    v13 = malloc_type_malloc(v3, 0x100004077774924uLL);
    if (!v13)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 15;
      exception[1] = "Out of memory";
      *(exception + 16) = 0;
    }

    v14 = v13;
    v15 = *(this + 1);
    if (v15 == v2)
    {
      v22 = *(this + 1);
      v16 = v13;
    }

    else
    {
      v16 = v13;
      while (!v15[40])
      {
        *v16 = 28;
        v16[1] = v15[40];
        v16[2] = v15[41];
        v17 = *(v15 + 11);
        if (v17 >> 15)
        {
          *(v16 + 5) = bswap32(v17);
          LOWORD(v18) = 1152;
          v19 = 9;
        }

        else
        {
          v18 = bswap32(v17) >> 16;
          v19 = 5;
        }

        v20 = &v16[v19];
        *(v16 + 3) = v18;
        memcpy(&v16[v19], *(v15 + 6), v17);
        v21 = *(v15 + 1);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = *(v15 + 2);
            v11 = *v22 == v15;
            v15 = v22;
          }

          while (!v11);
        }

        v16 = &v20[v17];
        v15 = v22;
        if (v22 == v2)
        {
          goto LABEL_32;
        }
      }

      v22 = v15;
    }

LABEL_32:
    if (*(this + 46) == 1)
    {
      *v16 = 0x47251B03005A011CLL;
      v16 += 8;
    }

    if (v22 != v2)
    {
      while (1)
      {
        v23 = v22[40];
        if (v23 > 1)
        {
          break;
        }

        if (v23 != 1)
        {
          IPTC_Writer::UpdateMemoryDataSets();
        }

        if (v22[41] != 90)
        {
          *v16 = 28;
          v16[1] = v22[40];
          v16[2] = v22[41];
          v24 = *(v22 + 11);
          if (v24 >> 15)
          {
            *(v16 + 5) = bswap32(v24);
            LOWORD(v25) = 1152;
            v26 = 9;
          }

          else
          {
            v25 = bswap32(v24) >> 16;
            v26 = 5;
          }

          v27 = &v16[v26];
          *(v16 + 3) = v25;
          memcpy(&v16[v26], *(v22 + 6), v24);
          v16 = &v27[v24];
        }

        v28 = *(v22 + 1);
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = *(v22 + 2);
            v11 = *v29 == v22;
            v22 = v29;
          }

          while (!v11);
        }

        v22 = v29;
        if (v29 == v2)
        {
          goto LABEL_51;
        }
      }
    }

    v29 = v22;
LABEL_51:
    if (*(this + 46) == 1)
    {
      v30 = 67109376;
    }

    else
    {
      v30 = 33554944;
    }

    *(v16 + 3) = v30;
    *v16 = 540;
    v31 = v16 + 7;
    if (v29 != v2)
    {
      do
      {
        if (v29[40] <= 1u)
        {
          IPTC_Writer::UpdateMemoryDataSets();
        }

        if (*(v29 + 16) != 2000)
        {
          *v31 = 28;
          v31[1] = v29[40];
          v31[2] = v29[41];
          v32 = *(v29 + 11);
          if (v32 >> 15)
          {
            *(v31 + 5) = bswap32(v32);
            LOWORD(v33) = 1152;
            v34 = 9;
          }

          else
          {
            v33 = bswap32(v32) >> 16;
            v34 = 5;
          }

          v35 = &v31[v34];
          *(v31 + 3) = v33;
          memcpy(&v31[v34], *(v29 + 6), v32);
          v31 = &v35[v32];
        }

        v36 = *(v29 + 1);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v29 + 2);
            v11 = *v37 == v29;
            v29 = v37;
          }

          while (!v11);
        }

        v29 = v37;
      }

      while (v37 != v2);
    }

    if (v31 != &v14[v12])
    {
      IPTC_Writer::UpdateMemoryDataSets();
    }

    IPTC_Manager::ParseMemoryDataSets(this, v14, v12, 0);
    if (*(this + 10) != v12)
    {
      IPTC_Writer::UpdateMemoryDataSets();
    }

    *(this + 45) = v12 != 0;
  }
}

void *std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__find_leaf(void *a1, void *a2, void *a3, unsigned __int16 *a4)
{
  v4 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v5 = *a4;
    if (*(a2 + 16) < v5)
    {
      while (1)
      {
        v6 = *v4;
        a2 = v4;
        if (!*v4)
        {
          break;
        }

        while (1)
        {
          v4 = v6;
          if (*(v6 + 32) >= v5)
          {
            break;
          }

          v6 = *(v6 + 8);
          if (!v6)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_20:
      *a3 = v4;
      return a2;
    }
  }

  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v9 = v10[2];
        v11 = *v9 == v10;
        v10 = v9;
      }

      while (v11);
    }

    v12 = *a4;
    if (v12 < *(v9 + 16))
    {
      while (1)
      {
        v13 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v13;
          if (v12 < *(v13 + 32))
          {
            break;
          }

          v13 = *(v13 + 8);
          if (!v13)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

uint64_t std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  while (1)
  {
    v6 = *(v3 + 16);
    if (v5 >= v6)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (v6 < v5)
  {
    ++v3;
    goto LABEL_7;
  }

  v9 = *v3;
  v10 = v3;
  if (*v3)
  {
    v10 = v3;
    do
    {
      v11 = *(v9 + 16);
      v12 = v11 >= v5;
      v13 = v11 < v5;
      if (v12)
      {
        v10 = v9;
      }

      v9 = v9[v13];
    }

    while (v9);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v5 >= *(i + 32))))
  {
    if (v5 < *(i + 32))
    {
      v2 = i;
    }
  }

  if (v10 == v2)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v15 = v10[1];
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
        v16 = v10[2];
        v17 = *v16 == v10;
        v10 = v16;
      }

      while (!v17);
    }

    ++v7;
    v10 = v16;
  }

  while (v16 != v2);
  return v7;
}

uint64_t *std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::erase(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void IPTC_Writer::UpdateMemoryDataSets()
{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 638, "currDS.recNum == 1");
}

{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 659, "currDS.recNum > 1");
}

{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 664, "dsPtr == (newContent + newLength)");
}

{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 669, "this->iptcLength == newLength");
}

BOOL IsInternalProperty(const void **a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *(a1 + 23);
  v5 = a1[1];
  if (v4 < 0 && v5 == 32)
  {
    if (**a1 == 0x702F2F3A70747468 && *(*a1 + 1) == 0x2F67726F2E6C7275 && *(*a1 + 2) == 0x656D656C652F6364 && *(*a1 + 3) == 0x2F312E312F73746ELL)
    {
      if (*(a2 + 23) < 0)
      {
        if (a2[1] == 9 && **a2 == 0x616D726F663A6364 && *(*a2 + 8) == 116)
        {
          return 1;
        }

        if (a2[1] != 11)
        {
          return 0;
        }

        v2 = *a2;
      }

      else
      {
        v9 = *(a2 + 23);
        if (v9 == 9)
        {
          return *a2 == 0x616D726F663A6364 && *(a2 + 8) == 116;
        }

        if (v9 != 11)
        {
          return 0;
        }
      }

      return *v2 == 0x75676E616C3A6364 && *(v2 + 3) == 0x65676175676E616CLL;
    }

    goto LABEL_82;
  }

  if (v4 < 0 && v5 == 28)
  {
    v10 = *a1;
    if (**a1 != 0x6E2F2F3A70747468 || *(*a1 + 1) != 0x2E65626F64612E73 || *(*a1 + 2) != 0x2F7061782F6D6F63 || *(*a1 + 6) != 791686705)
    {
      v14 = *v10;
      v15 = v10[1];
      v16 = v10[2];
      v17 = *(v10 + 6);
      if (v14 != 0x6E2F2F3A70747468 || v15 != 0x2E65626F64612E73 || v16 != 0x2F6664702F6D6F63 || v17 != 791883313)
      {
        goto LABEL_82;
      }

      v21 = *(a2 + 23);
      if (v21 < 0)
      {
        if (a2[1] == 11 && **a2 == 0x657361423A666470 && *(*a2 + 3) == 0x4C5255657361423ALL)
        {
          return 1;
        }

        if (a2[1] == 11 && **a2 == 0x616572433A666470 && *(*a2 + 3) == 0x726F74616572433ALL)
        {
          return 1;
        }

        if (a2[1] == 11)
        {
          v24 = *a2;
          goto LABEL_174;
        }
      }

      else if (v21 == 11)
      {
        if (*a2 == 0x657361423A666470 && *(a2 + 3) == 0x4C5255657361423ALL)
        {
          return 1;
        }

        v23 = *a2 == 0x616572433A666470 && *(a2 + 3) == 0x726F74616572433ALL;
        v24 = a2;
        if (v23)
        {
          return 1;
        }

LABEL_174:
        v62 = *v24;
        v63 = *(v24 + 3);
        if (v62 == 0x44646F4D3A666470 && v63 == 0x65746144646F4D3ALL)
        {
          return 1;
        }
      }

      if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "pdf:PDFVersion"))
      {
        return 1;
      }

      v37 = "pdf:Producer";
      goto LABEL_85;
    }

    if (*(a2 + 23) < 0)
    {
      if (a2[1] == 11 && **a2 == 0x657361423A706D78 && *(*a2 + 3) == 0x4C5255657361423ALL)
      {
        return 1;
      }

      if (a2[1] == 15 && **a2 == 0x616572433A706D78 && *(*a2 + 7) == 0x6C6F6F54726F7461)
      {
        return 1;
      }

      if (a2[1] == 10 && **a2 == 0x6D726F463A706D78 && *(*a2 + 8) == 29793)
      {
        return 1;
      }

      if (a2[1] != 10)
      {
        goto LABEL_219;
      }

      v57 = *a2;
    }

    else
    {
      v42 = *(a2 + 23);
      if (v42 != 10)
      {
        if (v42 == 11)
        {
          v43 = *(a2 + 3);
          v44 = *a2 == 0x657361423A706D78;
          v45 = 0x4C5255657361423ALL;
LABEL_205:
          if (v44 && v43 == v45)
          {
            return 1;
          }

          goto LABEL_219;
        }

        if (v42 == 15)
        {
          v43 = *(a2 + 7);
          v44 = *a2 == 0x616572433A706D78;
          v45 = 0x6C6F6F54726F7461;
          goto LABEL_205;
        }

LABEL_219:
        if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "xmp:MetadataDate"))
        {
          return 1;
        }

        v37 = "xmp:ModifyDate";
LABEL_85:
        result = std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, v37);
        if (!result)
        {
          return result;
        }

        return 1;
      }

      v71 = *a2 == 0x6D726F463A706D78 && *(a2 + 4) == 29793;
      v57 = a2;
      if (v71)
      {
        return 1;
      }
    }

    v72 = *v57;
    v73 = *(v57 + 4);
    if (v72 == 0x61636F4C3A706D78 && v73 == 25964)
    {
      return 1;
    }

    goto LABEL_219;
  }

  if ((v4 & 0x80000000) == 0 || v5 != 29)
  {
    if (v4 < 0 && v5 == 33 && !memcmp(*a1, "http://ns.adobe.com/exif/1.0/aux/", 0x21uLL))
    {
      return 1;
    }

    goto LABEL_82;
  }

  v25 = *a1;
  if (**a1 == 0x6E2F2F3A70747468 && *(*a1 + 1) == 0x2E65626F64612E73 && *(*a1 + 2) == 0x666669742F6D6F63 && *(*a1 + 21) == 0x2F302E312F666669)
  {
    if (*(a2 + 23) < 0)
    {
      if (a2[1] == 21)
      {
        v65 = **a2 == 0x616D493A66666974 && *(*a2 + 8) == 0x6972637365446567;
        if (v65 && *(*a2 + 13) == 0x6E6F697470697263)
        {
          return 0;
        }
      }

      if (a2[1] != 11)
      {
LABEL_194:
        v48 = "tiff:Copyright";
        return !std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, v48);
      }

      v50 = *a2;
    }

    else
    {
      v49 = *(a2 + 23);
      v50 = a2;
      if (v49 != 11)
      {
        if (v49 == 21)
        {
          v51 = *a2 == 0x616D493A66666974 && a2[1] == 0x6972637365446567;
          if (v51 && *(a2 + 13) == 0x6E6F697470697263)
          {
            return 0;
          }
        }

        goto LABEL_194;
      }
    }

    v67 = *v50;
    v68 = *(v50 + 3);
    if (v67 == 0x7472413A66666974 && v68 == 0x7473697472413A66)
    {
      return 0;
    }

    goto LABEL_194;
  }

  v29 = *v25;
  v30 = v25[1];
  v31 = v25[2];
  v32 = *(v25 + 21);
  if (v29 == 0x6E2F2F3A70747468 && v30 == 0x2E65626F64612E73 && v31 == 0x666978652F6D6F63 && v32 == 0x2F302E312F666978)
  {
    v36 = *(a2 + 23);
    if (v36 < 0)
    {
      if (a2[1] != 16)
      {
        return 1;
      }

      v2 = *a2;
    }

    else if (v36 != 16)
    {
      return 1;
    }

    v75 = 0x657869663A557365;
    v76 = bswap64(*v2);
    if (v76 == 0x657869663A557365 && (v75 = 0x72436F6D6D656E74, v76 = bswap64(v2[1]), v76 == 0x72436F6D6D656E74))
    {
      v77 = 0;
    }

    else if (v76 < v75)
    {
      v77 = -1;
    }

    else
    {
      v77 = 1;
    }

    return v77 != 0;
  }

LABEL_82:
  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/photoshop/1.0/"))
  {
    if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "photoshop:ICCProfile"))
    {
      return 1;
    }

    v37 = "photoshop:TextLayers";
    goto LABEL_85;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/camera-raw-settings/1.0/"))
  {
    return 1;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"))
  {
    v39 = kLastExternalxmpDM;
    if (!kLastExternalxmpDM)
    {
      v39 = &unk_1EA8DB4B8;
      do
      {
        v40 = v39[1];
        ++v39;
      }

      while (v40);
      kLastExternalxmpDM = v39;
    }

    if (*(v2 + 23) >= 0)
    {
      v41 = v2;
    }

    else
    {
      v41 = *v2;
    }

    v78 = v41;
    return !std::binary_search[abi:fe200100]<char const**,char const*,int (*)(char const*,char const*)>(kExternalxmpDM, v39, &v78, CharStarLess);
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xmp/1.0/Script/"))
  {
    if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:action") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:character") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:dialog") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:sceneSetting"))
    {
      return 0;
    }

    v48 = "xmpScript:sceneTimeOfDay";
    return !std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, v48);
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/bwf/bext/1.0/"))
  {
    v58 = "bext:version";
    v59 = v2;
  }

  else
  {
    if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/StockPhoto/1.0/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/mm/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/t/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/t/pg/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/g/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/g/img/"))
    {
      return 1;
    }

    v58 = "http://ns.adobe.com/xap/1.0/sType/Font#";
    v59 = a1;
  }

  return std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v59, v58);
}

BOOL std::binary_search[abi:fe200100]<char const**,char const*,int (*)(char const*,char const*)>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a1;
  if (a2 != a1)
  {
    v8 = a2 - a1;
    do
    {
      v9 = &v7[v8 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = a4(v11, *a3);
      if (v12)
      {
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }

      if (v12)
      {
        v7 = v10;
      }
    }

    while (v8);
  }

  return v7 != a2 && a4(*a3, *v7) == 0;
}

void XMPUtils::CatenateArrayItems_v2(const void *a1, char *a2, _BYTE *a3, const char *a4, const char *a5, unsigned int a6, std::string *a7)
{
  if (!sUseNewCoreAPIs)
  {
    return;
  }

  if (!v13)
  {
    __cxa_bad_cast();
  }

  if (!a2 || !a3)
  {
    XMPUtils::CatenateArrayItems_v2();
  }

  if (!a4 || !a5 || !a7)
  {
    XMPUtils::CatenateArrayItems_v2();
  }

  v14 = v13;
  v39 = a6;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v15 = strlen(a4);
  if (!v15)
  {
    goto LABEL_76;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  v19 = "Separator can have only one semicolon";
  do
  {
    while (1)
    {
      ClassifyCharacter(a4, v18, &v54, &v55, &v53);
      v18 += v55;
      if (v54 == 1)
      {
        break;
      }

      if (v54 != 3)
      {
        v19 = "Separator can have only spaces and one semicolon";
        goto LABEL_75;
      }

      if (v17)
      {
        goto LABEL_75;
      }

      v17 = 1;
      if (v18 >= v16)
      {
        goto LABEL_18;
      }
    }
  }

  while (v18 < v16);
  if ((v17 & 1) == 0)
  {
LABEL_76:
    v19 = "Separator must have one semicolon";
    goto LABEL_75;
  }

LABEL_18:
  v20 = strlen(a5);
  ClassifyCharacter(a5, 0, &v54, &v55, &v52);
  if (v54 != 4)
  {
    goto LABEL_77;
  }

  v21 = v55;
  if (v55 == v20)
  {
    v22 = v52;
    v51 = v52;
    v23 = v52;
    goto LABEL_24;
  }

  ClassifyCharacter(a5, v55, &v54, &v55, &v51);
  if (v54 != 4)
  {
LABEL_77:
    v19 = "Invalid quoting character";
    goto LABEL_75;
  }

  if (v55 + v21 != v20)
  {
    v19 = "Quoting string too long";
LABEL_75:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = v19;
    *(exception + 16) = 0;
  }

  v23 = v51;
  v22 = v52;
LABEL_24:
  if (v23 != GetClosingQuote(v22))
  {
    v19 = "Mismatched quote pair";
    goto LABEL_75;
  }

  std::string::erase(a7, 0, 0xFFFFFFFFFFFFFFFFLL);
  memset(v45, 0, sizeof(v45));
  ExpandXPath(a2, a3, v45);
  XMPUtils::FindCnstNode(v14 + 50, v45, &v49, &v48, 0);
  if (v49)
  {
    if ((v48 & 0xA00) != 0x200)
    {
      v37 = __cxa_allocate_exception(0x18uLL);
      *v37 = 4;
      v37[1] = "Named property must be non-alternate array";
      *(v37 + 16) = 0;
    }

    __p[0] = v49;
    __p[1] = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    NodeChildCount = XMPUtils::GetNodeChildCount(__p);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
    }

    if (NodeChildCount)
    {
      v44 = 0uLL;
      __p[0] = v49;
      __p[1] = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      XMPUtils::GetNodeChildIterator(__p, &v44);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
      }

      if ((XMPUtils::GetIXMPOptions(&v46) & 0x1F00) != 0)
      {
        v38 = __cxa_allocate_exception(0x18uLL);
        *v38 = 4;
        v38[1] = "Array items must be simple";
        *(v38 + 16) = 0;
      }

      (*(*v44 + 48))(__p);
      v25 = __p[1];
      (*(*__p[0] + 232))(__p);
      v26 = __p[1];
      (*(*__p[0] + 504))(&v56);
      v27 = (*(*v56 + 192))(v56);
      MEMORY[0x186602520](a7, v27);
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v57);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v26);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v25);
      }

      ApplyQuotes(a7, v22, v23, (v39 >> 28) & 1);
      (*(*v44 + 56))(__p);
      v28 = *(&v44 + 1);
      v44 = *__p;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v28);
        i = v44;
        if (v44)
        {
          goto LABEL_47;
        }
      }

      else
      {
        for (i = __p[0]; __p[0]; i = __p[0])
        {
          while (1)
          {
LABEL_47:
            __p[0] = 0;
            __p[1] = 0;
            v43 = 0;
            (*(*i + 48))(&v56);
            v30 = v57;
            (*(*v56 + 232))(&v56);
            v31 = v57;
            (*(*v56 + 504))(&v40);
            v32 = (*(*v40 + 192))(v40);
            std::string::basic_string[abi:fe200100]<0>(__p, v32);
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v41);
            }

            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v31);
            }

            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v30);
            }

            ApplyQuotes(__p, v22, v23, (v39 >> 28) & 1);
            std::string::append(a7, a4);
            if (v43 >= 0)
            {
              v33 = __p;
            }

            else
            {
              v33 = __p[0];
            }

            if (v43 >= 0)
            {
              v34 = HIBYTE(v43);
            }

            else
            {
              v34 = __p[1];
            }

            std::string::append(a7, v33, v34);
            if (SHIBYTE(v43) < 0)
            {
              operator delete(__p[0]);
            }

            (*(*v44 + 56))(__p);
            v35 = *(&v44 + 1);
            v44 = *__p;
            if (!v35)
            {
              break;
            }

            std::__shared_weak_count::__release_shared[abi:fe200100](v35);
            i = v44;
            if (!v44)
            {
              goto LABEL_65;
            }
          }
        }
      }

LABEL_65:
      if (*(&v44 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v44 + 1));
      }
    }
  }

  __p[0] = v45;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](__p);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v47);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v50);
  }
}

void sub_18613BEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20, std::__shared_weak_count *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  a20 = &a22;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a20);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a26);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a29);
  }

  _Unwind_Resume(a1);
}

const char *ClassifyCharacter(const char *__s, uint64_t a2, int *a3, void *a4, uint64_t *a5)
{
  *a3 = 0;
  v8 = __s[a2];
  if ((__s[a2] & 0x80000000) == 0)
  {
    *a4 = 1;
    *a5 = v8;
    if (v8 >= 0x23)
    {
      if (v8 != 44)
      {
        if (v8 != 59)
        {
          return __s;
        }

        goto LABEL_5;
      }

LABEL_47:
      v9 = 2;
      goto LABEL_54;
    }

    v18 = v8 - 32;
    if (v18 < 3u)
    {
      v9 = dword_1862294B4[v18];
      goto LABEL_54;
    }

LABEL_53:
    v9 = 5;
    goto LABEL_54;
  }

  v11 = __s;
  *a4 = 0;
  *a5 = v8;
  do
  {
    ++*a4;
    v12 = *a5;
    v13 = 2 * *a5;
    *a5 = v13;
  }

  while ((v12 & 0x40) != 0);
  v14 = *a4 + a2;
  __s = strlen(__s);
  if (v14 > __s)
  {
    ClassifyCharacter();
  }

  *a5 = v13 & 0x7E;
  v15 = (v13 & 0x7E) >> *a4;
  *a5 = v15;
  v16 = a2 + 1;
  if (a2 + 1 >= (*a4 + a2))
  {
    v17 = v15;
  }

  else
  {
    do
    {
      v17 = v11[v16] & 0x3F | (v15 << 6);
      *a5 = v17;
      ++v16;
      v15 = v17;
    }

    while (v16 < *a4 + a2);
  }

  v19 = v17 >> 8;
  if ((v17 >> 8) <= 31)
  {
    if (v19 > 4)
    {
      if (v19 == 5)
      {
        if (v17 != 1373)
        {
          return __s;
        }

        goto LABEL_47;
      }

      if (v19 != 6)
      {
        return __s;
      }

      if (v17 == 1548)
      {
        goto LABEL_47;
      }

      if (v17 != 1563)
      {
        return __s;
      }

      goto LABEL_5;
    }

    if (v19)
    {
      if (v19 != 3 || v17 != 894)
      {
        return __s;
      }

LABEL_5:
      v9 = 3;
LABEL_54:
      *a3 = v9;
      return __s;
    }

    if ((v17 | 0x10) != 0xBB)
    {
      return __s;
    }

LABEL_41:
    v9 = 4;
    goto LABEL_54;
  }

  if (v19 <= 253)
  {
    if (v19 == 32)
    {
      if (v17 - 0x2000 >= 0xC)
      {
        v9 = 4;
        if (v17 == 8213 || (v17 & 0xFFFFFFFFFFFFFFF8) == 0x2018)
        {
          goto LABEL_54;
        }

        if (v17 - 8232 < 2)
        {
          goto LABEL_53;
        }

        if (v17 - 8249 > 1)
        {
          return __s;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v19 != 48)
      {
        return __s;
      }

      if (v17 != 12288)
      {
        if (v17 == 12289)
        {
          goto LABEL_47;
        }

        if (v17 >> 3 == 1537)
        {
          goto LABEL_41;
        }

        if (v17 != 12351)
        {
          if (v17 - 12317 >= 3)
          {
            return __s;
          }

          goto LABEL_41;
        }
      }
    }

    v9 = 1;
    goto LABEL_54;
  }

  if (v19 == 254)
  {
    if (v17 - 65104 < 2)
    {
      goto LABEL_47;
    }

    v20 = 65108;
  }

  else
  {
    if (v19 != 255)
    {
      return __s;
    }

    v9 = 2;
    if (v17 == 65292 || v17 == 65380)
    {
      goto LABEL_54;
    }

    v20 = 65307;
  }

  if (v17 == v20)
  {
    goto LABEL_5;
  }

  return __s;
}

uint64_t GetClosingQuote(uint64_t result)
{
  if (result <= 8221)
  {
    if (result <= 8212)
    {
      switch(result)
      {
        case 34:
          return result;
        case 171:
          return 187;
        case 187:
          return 171;
      }
    }

    else if (result > 8217)
    {
      if (result == 8218)
      {
        return 8219;
      }

      if (result == 8220)
      {
        return 8221;
      }
    }

    else
    {
      if (result == 8213)
      {
        return result;
      }

      if (result == 8216)
      {
        return 8217;
      }
    }
  }

  else if (result > 12297)
  {
    if (result > 12301)
    {
      if (result == 12302)
      {
        return 12303;
      }

      if (result == 12317)
      {
        return 12319;
      }
    }

    else
    {
      if (result == 12298)
      {
        return 12299;
      }

      if (result == 12300)
      {
        return 12301;
      }
    }
  }

  else if (result > 8249)
  {
    if (result == 8250)
    {
      return 8249;
    }

    if (result == 12296)
    {
      return 12297;
    }
  }

  else
  {
    if (result == 8222)
    {
      return 8223;
    }

    if (result == 8249)
    {
      return 8250;
    }
  }

  return 0;
}

void ApplyQuotes(const char *a1, unint64_t a2, unint64_t a3, int a4)
{
  v7 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  __n = 0;
  v24 = 0;
  v23 = 0;
  ClassifyCharacter(a1, 0, &v24, &__n, &v23);
  v8 = 0;
  if (v24 != 4)
  {
    v15 = 0;
    v8 = 0;
    while (1)
    {
      size = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        if (v8 >= v7->__r_.__value_.__l.__size_)
        {
          goto LABEL_5;
        }

        v16 = v7->__r_.__value_.__r.__words[0];
      }

      else
      {
        v16 = v7;
        if (v8 >= size)
        {
          goto LABEL_6;
        }
      }

      ClassifyCharacter(v16, v8, &v24, &__n, &v23);
      switch(v24)
      {
        case 1:
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        case 2:
          if (!a4)
          {
            goto LABEL_4;
          }

          break;
        case 3:
        case 5:
          goto LABEL_4;
      }

      v8 += __n;
      v15 = v24 == 1;
    }
  }

LABEL_4:
  size = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
LABEL_5:
    size = v7->__r_.__value_.__l.__size_;
  }

LABEL_6:
  if (v8 >= size)
  {
    return;
  }

  v10 = 0;
  memset(&__str, 0, sizeof(__str));
  do
  {
    v11 = v7;
    if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
    {
      v11 = v7->__r_.__value_.__r.__words[0];
    }

    ClassifyCharacter(v11, v10, &v24, &__n, &v23);
    if (v24 == 4)
    {
      break;
    }

    ++v10;
  }

  while (v10 <= v8);
  CodePointToUTF8(a2, &__str);
  std::string::append(&__str, v7, 0, v10);
  while (1)
  {
    v12 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    v13 = v7;
    if (v10 >= v12)
    {
      goto LABEL_40;
    }

LABEL_18:
    ClassifyCharacter(v13, v10, &v24, &__n, &v23);
    v14 = __n;
    std::string::append(&__str, v7, v10, __n);
    if (v24 == 4 && (v23 == a2 || v23 == a3 || a2 == 12317 && (v23 & 0xFFFFFFFFFFFFFFFELL) == 0x301E))
    {
      std::string::append(&__str, v7, v10, v14);
    }

    v10 += v14;
  }

  if (v10 < v7->__r_.__value_.__l.__size_)
  {
    v13 = v7->__r_.__value_.__r.__words[0];
    goto LABEL_18;
  }

LABEL_40:
  __p = 0;
  v20 = 0;
  v21 = 0;
  CodePointToUTF8(a3, &__p);
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v21 >= 0)
  {
    v18 = HIBYTE(v21);
  }

  else
  {
    v18 = v20;
  }

  std::string::append(&__str, p_p, v18);
  std::string::operator=(v7, &__str);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_18613C688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::CatenateArrayItems(const void *a1, char *a2, _BYTE *a3, char *__s, const char *a5, unsigned int a6, std::string *a7)
{
  if (!sUseNewCoreAPIs)
  {
    if (!a2 || !a3)
    {
      XMPUtils::CatenateArrayItems();
    }

    if (!__s || !a5 || !a7)
    {
      XMPUtils::CatenateArrayItems();
    }

    v45 = 0;
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v14 = strlen(__s);
    if (!v14)
    {
      goto LABEL_53;
    }

    v15 = v14;
    v16 = 0;
    v17 = 0;
    do
    {
      while (1)
      {
        ClassifyCharacter(__s, v16, &v44, &v45, &v43);
        v16 += v45;
        if (v44 == 1)
        {
          break;
        }

        if (v44 != 3)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Separator can have only spaces and one semicolon";
          goto LABEL_51;
        }

        if (v17)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Separator can have only one semicolon";
          goto LABEL_51;
        }

        v17 = 1;
        if (v16 >= v15)
        {
          goto LABEL_20;
        }
      }
    }

    while (v16 < v15);
    if ((v17 & 1) == 0)
    {
LABEL_53:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v36 = "Separator must have one semicolon";
      goto LABEL_51;
    }

LABEL_20:
    v18 = strlen(a5);
    ClassifyCharacter(a5, 0, &v44, &v45, &v42);
    if (v44 == 4)
    {
      v19 = v45;
      if (v45 == v18)
      {
        v20 = v42;
        v21 = v42;
        goto LABEL_26;
      }

      ClassifyCharacter(a5, v45, &v44, &v45, &v41);
      if (v44 == 4)
      {
        if (v45 + v19 != v18)
        {
LABEL_60:
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Quoting string too long";
LABEL_51:
          exception[1] = v36;
          *(exception + 16) = 0;
        }

        v21 = v41;
        v20 = v42;
LABEL_26:
        if (v21 != GetClosingQuote(v20))
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Mismatched quote pair";
          goto LABEL_51;
        }

        std::string::erase(a7, 0, 0xFFFFFFFFFFFFFFFFLL);
        memset(v40, 0, sizeof(v40));
        ExpandXPath(a2, a3, v40);
        Node = FindNode(a1 + 224, v40, 0, 0, 0);
        v23 = Node;
        if (!Node)
        {
          goto LABEL_47;
        }

        if ((*(Node + 8) & 0xA00) == 0x200)
        {
          v24 = *(Node + 72);
          if (v24 == *(Node + 80))
          {
            goto LABEL_47;
          }

          v25 = *v24;
          v26 = "Array items must be simple";
          if ((*(v25 + 9) & 0x1F) == 0)
          {
            std::string::operator=(a7, (v25 + 40));
            v27 = (a6 >> 28) & 1;
            ApplyQuotes(a7, v20, v21, v27);
            v28 = *(v23 + 80) - *(v23 + 72);
            if (v28 != 8)
            {
              v29 = v28 >> 3;
              v30 = 1;
              while (1)
              {
                v31 = *(v23 + 72);
                if (v30 >= (*(v23 + 80) - v31) >> 3)
                {
                  break;
                }

                v32 = *(v31 + 8 * v30);
                if ((*(v32 + 9) & 0x1F) != 0)
                {
                  v37 = __cxa_allocate_exception(0x18uLL);
                  *v37 = 4;
                  v37[1] = "Array items must be simple";
                  *(v37 + 16) = 0;
                }

                memset(&__p, 0, sizeof(__p));
                if (*(v32 + 63) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p, *(v32 + 40), *(v32 + 48));
                }

                else
                {
                  __p = *(v32 + 40);
                }

                ApplyQuotes(&__p, v20, v21, v27);
                std::string::append(a7, __s);
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

                std::string::append(a7, p_p, size);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v29 == ++v30)
                {
                  goto LABEL_47;
                }
              }

              __break(1u);
              goto LABEL_60;
            }

LABEL_47:
            __p.__r_.__value_.__r.__words[0] = v40;
            std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
            return;
          }
        }

        else
        {
          v26 = "Named property must be non-alternate array";
        }

        v38 = __cxa_allocate_exception(0x18uLL);
        *v38 = 4;
        v38[1] = v26;
        *(v38 + 16) = 0;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v36 = "Invalid quoting character";
    goto LABEL_51;
  }

  XMPUtils::CatenateArrayItems_v2(a1, a2, a3, __s, a5, a6, a7);
}

void sub_18613CB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  __p = &a16;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPUtils::SeparateArrayItems_v2(XMPUtils *this, XMPMeta *a2, char *a3, const char *a4, char *a5, const char *a6)
{
  v90 = a4;
  v9 = 0;
  if (this && sUseNewCoreAPIs)
  {
  }

  if (!a2 || !a3 || !a5)
  {
    XMPUtils::SeparateArrayItems_v2();
  }

  memset(&v114, 0, sizeof(v114));
  v112 = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v108 = 0;
  v10 = VerifySetOptions(v90 & 0xEFFFFFFF, 0);
  if ((v10 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Options can only provide array form";
    *(exception + 16) = 0;
  }

  v105 = 0;
  v106 = 0;
  v107 = 0;
  ExpandXPath(a2, a3, &v105);
  v104 = 0uLL;
  XMPUtils::FindCnstNode(v9 + 50, &v105, &v104, &v108, 0);
  __s = a5;
  if (!v11)
  {
    memset(&__str, 0, 32);
    v15 = v106;
    if (v105 != v106)
    {
      if (*(v106 - 9) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(v106 - 32), *(v106 - 24));
      }

      else
      {
        v16 = *(v106 - 32);
        __str.__end_ = *(v106 - 16);
        *&__str.__first_ = v16;
      }

      LODWORD(__str.__end_cap_.__value_) = *(v15 - 8);
      memset(&v103, 0, sizeof(v103));
      if (SHIBYTE(__str.__end_) < 0)
      {
        std::string::__init_copy_ctor_external(&v103, __str.__first_, __str.__begin_);
      }

      else
      {
        *&v103.__r_.__value_.__l.__data_ = *&__str.__first_;
        v103.__r_.__value_.__r.__words[2] = __str.__end_;
      }

      v92[0] = 0;
      v92[1] = 0;
      LODWORD(v91) = 0;
      XMPUtils::FindNode(v9 + 50, &v105, 1, v10, v92, &v91, 1u);
      if (v17)
      {
        v100 = 0;
        v101 = 0;
        v102 = 0;
        __p = 0;
        v98 = 0;
        v99 = 0;
        v96 = 0uLL;
        AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v96);
        v108 = v10;
        XMPUtils::GetNameSpaceAndNameFromStepValue(&__str, &v96, &v100, &__p);
        if ((v108 & 0x800) == 0)
        {
          if ((v108 & 0x400) == 0)
          {
            if ((v108 & 0x200) != 0)
            {
              if (v102 >= 0)
              {
                v18 = &v100;
              }

              else
              {
                v18 = v100;
              }

              if (v102 >= 0)
              {
                v19 = HIBYTE(v102);
              }

              else
              {
                v19 = v101;
              }

              if (v99 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if (v99 >= 0)
              {
                v21 = HIBYTE(v99);
              }

              else
              {
                v21 = v98;
              }

              AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode(v18, v19, p_p, v21);
            }

            v88 = __cxa_allocate_exception(0x18uLL);
            *v88 = 102;
            v88[1] = "Failure creating array node";
            *(v88 + 16) = 0;
          }

          if (v102 >= 0)
          {
            v26 = &v100;
          }

          else
          {
            v26 = v100;
          }

          if (v102 >= 0)
          {
            v27 = HIBYTE(v102);
          }

          else
          {
            v27 = v101;
          }

          if (v99 >= 0)
          {
            v28 = &__p;
          }

          else
          {
            v28 = __p;
          }

          if (v99 >= 0)
          {
            v29 = HIBYTE(v99);
          }

          else
          {
            v29 = v98;
          }

          AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode(v26, v27, v28, v29);
        }

        if (v102 >= 0)
        {
          v22 = &v100;
        }

        else
        {
          v22 = v100;
        }

        if (v102 >= 0)
        {
          v23 = HIBYTE(v102);
        }

        else
        {
          v23 = v101;
        }

        if (v99 >= 0)
        {
          v24 = &__p;
        }

        else
        {
          v24 = __p;
        }

        if (v99 >= 0)
        {
          v25 = HIBYTE(v99);
        }

        else
        {
          v25 = v98;
        }

        AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode(v22, v23, v24, v25);
      }

      v87 = __cxa_allocate_exception(0x18uLL);
      *v87 = 102;
      v87[1] = "Failure creating array node";
      *(v87 + 16) = 0;
    }

    goto LABEL_209;
  }

  v12 = "Named property must be non-alternate array";
  if ((v108 & 0x1E00) == 0 || (v108 & 0x800) != 0)
  {
LABEL_14:
    v14 = __cxa_allocate_exception(0x18uLL);
    *v14 = 102;
    v14[1] = v12;
    *(v14 + 16) = 0;
  }

  v13 = __s;
  if (v10 && v10 != (v108 & 0x1E00))
  {
    v12 = "Mismatch of specified and existing array form";
    goto LABEL_14;
  }

  *&__str.__first_ = v104;
  if (*(&v104 + 1))
  {
    atomic_fetch_add_explicit((*(&v104 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  NodeChildCount = XMPUtils::GetNodeChildCount(&__str);
  if (__str.__begin_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__str.__begin_);
  }

  memset(&v103, 0, sizeof(v103));
  v100 = 0;
  v101 = 0;
  v102 = 0;
  __p = 0;
  v98 = 0;
  v99 = 0;
  LOBYTE(__str.__first_) = 0;
  std::vector<BOOL>::vector(&__p, NodeChildCount);
  v96 = 0uLL;
  *&__str.__first_ = v104;
  if (*(&v104 + 1))
  {
    atomic_fetch_add_explicit((*(&v104 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  XMPUtils::GetNodeChildIterator(&__str, &v96);
  if (__str.__begin_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__str.__begin_);
  }

  first = v96;
  if (v96)
  {
    while (1)
    {
      (*(first->__r_.__value_.__r.__words[0] + 48))(&__str);
      begin = __str.__begin_;
      (*(__str.__first_->__r_.__value_.__l.__data_ + 29))(&__str);
      v33 = __str.__begin_;
      (*(__str.__first_->__r_.__value_.__l.__data_ + 63))(&v94);
      v34 = (*(*v94 + 192))(v94);
      std::string::basic_string[abi:fe200100]<0>(v92, v34);
      size = v103.__r_.__value_.__l.__size_;
      if (v103.__r_.__value_.__l.__size_ >= v103.__r_.__value_.__r.__words[2])
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]) >> 3);
        v38 = v37 + 1;
        if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        if (0x5555555555555556 * ((v103.__r_.__value_.__r.__words[2] - v103.__r_.__value_.__r.__words[0]) >> 3) > v38)
        {
          v38 = 0x5555555555555556 * ((v103.__r_.__value_.__r.__words[2] - v103.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v103.__r_.__value_.__r.__words[2] - v103.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v39 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v39 = v38;
        }

        __str.__end_cap_.__value_ = &v103;
        if (v39)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(&v103, v39);
        }

        v40 = 8 * ((v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]) >> 3);
        v41 = *v92;
        *(v40 + 16) = v93;
        *v40 = v41;
        v92[1] = 0;
        v93 = 0;
        v92[0] = 0;
        v42 = (24 * v37 - (v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]));
        memcpy(v42, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]);
        v43 = v103.__r_.__value_.__r.__words[0];
        v44 = v103.__r_.__value_.__r.__words[2];
        v103.__r_.__value_.__r.__words[0] = v42;
        *&v103.__r_.__value_.__r.__words[1] = 24 * v37 + 24;
        __str.__end_ = v43;
        __str.__end_cap_.__value_ = v44;
        __str.__first_ = v43;
        __str.__begin_ = v43;
        std::__split_buffer<std::string>::~__split_buffer(&__str);
        v103.__r_.__value_.__l.__size_ = 24 * v37 + 24;
        v13 = __s;
        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92[0]);
        }
      }

      else
      {
        v36 = *v92;
        *(v103.__r_.__value_.__l.__size_ + 16) = v93;
        *size = v36;
        v92[1] = 0;
        v93 = 0;
        v92[0] = 0;
        v103.__r_.__value_.__l.__size_ = size + 24;
      }

      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v95);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v33);
      }

      if (begin)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](begin);
      }

      (*(*v96 + 48))(&__str);
      v45 = __str.__begin_;
      v46 = (*(__str.__first_->__r_.__value_.__l.__data_ + 23))(__str.__first_);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v45);
      }

      if (v46)
      {
        break;
      }

      *&__str.__first_ = 0uLL;
      std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](&v100, &__str);
      v48 = __str.__begin_;
      if (__str.__begin_)
      {
        goto LABEL_100;
      }

LABEL_101:
      (*(*v96 + 56))(&__str);
      v49 = *(&v96 + 1);
      v96 = *&__str.__first_;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v49);
        first = v96;
        if (!v96)
        {
          goto LABEL_105;
        }
      }

      else
      {
        first = __str.__first_;
        if (!__str.__first_)
        {
          goto LABEL_105;
        }
      }
    }

    (*(*v96 + 48))(&__str);
    v47 = __str.__begin_;
    (*(__str.__first_->__r_.__value_.__l.__data_ + 33))(v92);
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](&v100, v92);
    if (v92[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v92[1]);
    }

    if (!v47)
    {
      goto LABEL_101;
    }

    v48 = v47;
LABEL_100:
    std::__shared_weak_count::__release_shared[abi:fe200100](v48);
    goto LABEL_101;
  }

LABEL_105:
  (*(*v104 + 224))(v104, 1, 0);
  v92[0] = 0;
  v92[1] = 0;
  (*(*v104 + 248))(v92);
  v50 = strlen(v13);
  if (!v50)
  {
LABEL_193:
    if (v92[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v92[1]);
    }

    if (*(&v96 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
    }

    if (__p)
    {
      operator delete(__p);
    }

    __str.__first_ = &v100;
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&__str);
    __str.__first_ = &v103;
    std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&__str);
    if (*(&v104 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v104 + 1));
    }

    __str.__first_ = &v105;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__str);
    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
    }

    return;
  }

  v51 = v50;
  v52 = 0;
  while (1)
  {
    ClassifyCharacter(v13, v52, &v111, &v112, &v109);
    if ((v111 & 0xFFFFFFFB) == 0)
    {
      break;
    }

    v52 += v112;
    if (v52 >= v51)
    {
      goto LABEL_193;
    }
  }

  if (v111 != 4)
  {
    v74 = v52;
    if (v52 < v51)
    {
      v74 = v52;
      do
      {
        ClassifyCharacter(v13, v74, &v111, &v112, &v109);
        v76 = (v90 & 0x10000000) == 0 || v111 != 2;
        if ((v111 & 0xFFFFFFFB) != 0 && v76)
        {
          if (v111 != 1)
          {
            break;
          }

          v77 = v112 + v74;
          if (v112 + v74 >= v51)
          {
            break;
          }

          ClassifyCharacter(v13, v112 + v74, &v111 + 1, &v113, &v110);
          v78 = (v90 & 0x10000000) != 0 && HIDWORD(v111) == 2;
          v79 = !v78;
          if ((v111 & 0xFFFFFFFB00000000) != 0 && v79)
          {
            break;
          }
        }

        else
        {
          v77 = v112 + v74;
        }

        v74 = v77;
      }

      while (v77 < v51);
    }

    std::string::basic_string[abi:fe200100]<0>(&__str, v13);
    std::string::assign(&v114, &__str, v52, v74 - v52);
    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    if (NodeChildCount)
    {
      goto LABEL_134;
    }

    goto LABEL_178;
  }

  v53 = v109;
  ClosingQuote = GetClosingQuote(v109);
  v55 = v112;
  std::string::erase(&v114, 0, 0xFFFFFFFFFFFFFFFFLL);
  v56 = v55 + v52;
  if (v55 + v52 >= v51)
  {
    if (NodeChildCount)
    {
      goto LABEL_134;
    }

    goto LABEL_178;
  }

  while (1)
  {
    ClassifyCharacter(__s, v56, &v111, &v112, &v109);
    if (v111 != 4 || ((v57 = v109, v109 != v53) ? (v58 = v109 == ClosingQuote) : (v58 = 1), !v58 && (v53 != 12317 || (v109 & 0xFFFFFFFFFFFFFFFELL) != 0x301E)))
    {
      std::string::basic_string[abi:fe200100]<0>(&__str, __s);
      v59 = v112;
      std::string::append(&v114, &__str, v56, v112);
      goto LABEL_130;
    }

    v59 = v112;
    if (v112 + v56 >= v51)
    {
      HIDWORD(v111) = 3;
      v113 = 0;
      v60 = 59;
      v110 = 59;
    }

    else
    {
      ClassifyCharacter(__s, v112 + v56, &v111 + 1, &v113, &v110);
      v60 = v110;
    }

    if (v57 != v60)
    {
      break;
    }

    std::string::basic_string[abi:fe200100]<0>(&__str, __s);
    std::string::append(&v114, &__str, v56, v59);
    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    v56 += v113;
LABEL_132:
    v56 += v59;
    if (v56 >= v51)
    {
      goto LABEL_133;
    }
  }

  if (v57 != ClosingQuote && (v53 != 12317 || (v57 & 0xFFFFFFFFFFFFFFFELL) != 0x301E))
  {
    std::string::basic_string[abi:fe200100]<0>(&__str, __s);
    std::string::append(&v114, &__str, v56, v59);
LABEL_130:
    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    goto LABEL_132;
  }

LABEL_133:
  if (!NodeChildCount)
  {
LABEL_178:
    v73 = 1;
LABEL_179:
    if (v73 == NodeChildCount + 1)
    {
      (*(*v104 + 88))(&v94);
      v80 = (*(*v94 + 192))(v94);
      (*(*v104 + 88))(&v91);
      v81 = (*(*v91 + 208))(v91);
      if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = &v114;
      }

      else
      {
        v82 = v114.__r_.__value_.__r.__words[0];
      }

      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v80, v81, "[]", 0xFFFFFFFFFFFFFFFFLL, v82, 0xFFFFFFFFFFFFFFFFLL);
    }

    (*(*v104 + 88))(&v94);
    v83 = (*(*v94 + 192))(v94);
    (*(*v104 + 88))(&v91);
    v84 = (*(*v91 + 208))(v91);
    if (0xAAAAAAAAAAAAAAABLL * ((v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]) >> 3) > v73 - 1)
    {
      v85 = v103.__r_.__value_.__r.__words[0] + 24 * (v73 - 1);
      if (*(v85 + 23) < 0)
      {
        v85 = *v85;
      }

      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v83, v84, "[]", 0xFFFFFFFFFFFFFFFFLL, v85, 0xFFFFFFFFFFFFFFFFLL);
    }

    goto LABEL_209;
  }

LABEL_134:
  v61 = 0;
  v63 = __p;
  v62 = v98;
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v64 = v114.__r_.__value_.__l.__size_;
  }

  v65 = v103.__r_.__value_.__r.__words[0];
  v66 = 0xAAAAAAAAAAAAAAABLL * ((v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]) >> 3);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v67 = &v114;
  }

  else
  {
    v67 = v114.__r_.__value_.__r.__words[0];
  }

  while (v62 != v61)
  {
    if (((*&v63[(v61 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v61) & 1) == 0)
    {
      if (v66 <= v61)
      {
        break;
      }

      v68 = *(v65 + 23);
      v69 = v68;
      if ((v68 & 0x80u) != 0)
      {
        v68 = *(v65 + 8);
      }

      if (v64 == v68)
      {
        v70 = v69 >= 0 ? v65 : *v65;
        if (!memcmp(v67, v70, v64))
        {
          v73 = v61 + 1;
          goto LABEL_179;
        }
      }
    }

    v71 = v61 + 1;
    v72 = v61 + 2;
    v65 += 24;
    ++v61;
    if (v72 > NodeChildCount)
    {
      v73 = v71 + 1;
      goto LABEL_179;
    }
  }

LABEL_209:
  __break(1u);
}

void sub_18613DEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, char a45)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a23);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a15);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a44);
  }

  a36 = &a45;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a36);
  if (*(v45 - 145) < 0)
  {
    operator delete(*(v45 - 168));
  }

  _Unwind_Resume(a1);
}