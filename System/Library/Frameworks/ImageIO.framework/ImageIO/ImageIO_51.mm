uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPathSegment_v1 const*,AdobeXMPCore::IPathSegment_v1 const,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6350617468536567, 1);
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

void sub_18617AE34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x18617AE18);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*,AdobeXMPCore::IPath_v1,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6350617468202020, 1);
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

void sub_18617B1BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x18617B1A0);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

std::string *XIO::SplitLeafName(std::string *this, std::string *a2)
{
  v3 = this;
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
LABEL_9:
      std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
      v8 = v3;
      v9 = 0;
LABEL_44:

      return std::string::erase(v8, v9, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (!*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_9;
    }
  }

  v6 = size - 1;
  if (size == 1)
  {
    v7 = this;
    if ((v4 & 0x80000000) != 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    if (v7->__r_.__value_.__s.__data_[0] == 47)
    {
      goto LABEL_9;
    }
  }

  if ((v4 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v10 < v6)
  {
LABEL_47:
    __break(1u);
    return this;
  }

  v11 = this;
  if ((v4 & 0x80000000) != 0)
  {
    v11 = this->__r_.__value_.__r.__words[0];
  }

  if (v11->__r_.__value_.__s.__data_[v6] == 47)
  {
    this = std::string::erase(this, v6, 0xFFFFFFFFFFFFFFFFLL);
    LOBYTE(v4) = *(&v3->__r_.__value_.__s + 23);
  }

  v12 = size - 2;
  if (v12)
  {
    while (1)
    {
      v13 = v4;
      if ((v4 & 0x80) != 0)
      {
        v13 = v3->__r_.__value_.__l.__size_;
      }

      if (v13 < v12)
      {
        goto LABEL_47;
      }

      v14 = v3;
      if ((v4 & 0x80) != 0)
      {
        v14 = v3->__r_.__value_.__r.__words[0];
      }

      v15 = v14->__r_.__value_.__s.__data_[v12];
      v16 = v15 == 47;
      v17 = v15 != 47;
      if (!v16)
      {
        if (--v12)
        {
          continue;
        }
      }

      if ((v4 & 0x80) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  v17 = 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_29:
    v18 = v3->__r_.__value_.__l.__size_;
  }

  else
  {
LABEL_27:
    v18 = v4;
  }

  if (v18 < v12)
  {
    goto LABEL_47;
  }

  v19 = v3;
  if ((v4 & 0x80) != 0)
  {
    v19 = v3->__r_.__value_.__r.__words[0];
  }

  if (v19->__r_.__value_.__s.__data_[v12] == 47)
  {
    v20 = v12 + 1;
    if ((v4 & 0x80) != 0)
    {
      v21 = v3->__r_.__value_.__l.__size_;
    }

    else
    {
      v21 = v4;
    }

    if (v21 >= v20)
    {
      v25 = v3;
      if ((v4 & 0x80) != 0)
      {
        v25 = v3->__r_.__value_.__r.__words[0];
      }

      MEMORY[0x186602520](a2, v25 + v20);
      v8 = v3;
      v9 = v12;
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  if (v17)
  {
    this = std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
    v22 = a2->__r_.__value_.__r.__words[2];
    v23 = *&a2->__r_.__value_.__l.__data_;
    v24 = v3->__r_.__value_.__r.__words[2];
    *&a2->__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = v24;
    *&v3->__r_.__value_.__l.__data_ = v23;
    v3->__r_.__value_.__r.__words[2] = v22;
  }

  return this;
}

std::string *XIO::SplitFileExtension(std::string *a1, std::string *this, int a3)
{
  result = std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
      return result;
    }
  }

  else
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      return result;
    }
  }

  v9 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v10 = size - 1;
  do
  {
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v7 & 0x80000000) != 0)
    {
      v12 = a1->__r_.__value_.__l.__size_;
    }

    if (v12 < v11)
    {
      goto LABEL_49;
    }

    v13 = a1;
    if ((v7 & 0x80000000) != 0)
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    v14 = v13->__r_.__value_.__s.__data_[v11];
    v10 = v11 - 1;
  }

  while (v14 != 46);
  v15 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80000000) != 0)
  {
    v15 = a1->__r_.__value_.__l.__size_;
  }

  if (v15 < v11)
  {
    goto LABEL_49;
  }

  v16 = a1;
  if ((v7 & 0x80000000) != 0)
  {
    v16 = a1->__r_.__value_.__r.__words[0];
  }

  if (v16->__r_.__value_.__s.__data_[v11] == 46)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v9 = a1->__r_.__value_.__l.__size_;
    }

    if (v9 >= v11 + 1)
    {
      v17 = a1;
      if ((v7 & 0x80000000) != 0)
      {
        v17 = a1->__r_.__value_.__r.__words[0];
      }

      result = MEMORY[0x186602520](this, &v17->__r_.__value_.__l.__data_ + v11 + 1);
      if (!a3)
      {
        goto LABEL_46;
      }

      v18 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x8000000000000000) != 0)
      {
        v18 = this->__r_.__value_.__l.__size_;
        if (!v18)
        {
LABEL_46:

          return std::string::erase(a1, v11, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      else if (!*(&this->__r_.__value_.__s + 23))
      {
        goto LABEL_46;
      }

      v19 = 0;
      while (1)
      {
        v20 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        v21 = v20 < 0 ? this->__r_.__value_.__l.__size_ : SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if (v21 < v19)
        {
          break;
        }

        v22 = this;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = this->__r_.__value_.__r.__words[0];
        }

        if (v22->__r_.__value_.__s.__data_[v19] - 65 <= 0x19)
        {
          if ((v20 & 0x80000000) != 0)
          {
            v23 = this->__r_.__value_.__l.__size_;
          }

          else
          {
            v23 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          }

          if (v23 < v19)
          {
            break;
          }

          v24 = this;
          if ((v20 & 0x80000000) != 0)
          {
            v24 = this->__r_.__value_.__r.__words[0];
          }

          v24->__r_.__value_.__s.__data_[v19] += 32;
        }

        if (v18 == ++v19)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_49:
    __break(1u);
  }

  return result;
}

void XIO::Copy(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = *MEMORY[0x1E69E9840];
  if (v4 >= 1)
  {
    v7 = v6;
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    bzero(v15, 0x10000uLL);
    do
    {
      if (v8 && v8(v7))
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 12;
        exception[1] = "XIO::Copy, user abort";
        *(exception + 16) = 0;
      }

      if (v9 >= 0x10000)
      {
        v12 = 0x10000;
      }

      else
      {
        v12 = v9;
      }

      (**v11)(v11, v15, v12, 1);
      (*(*v10 + 8))(v10, v15, v12);
      v13 = v9 <= v12;
      v9 -= v12;
    }

    while (!v13);
  }
}

uint64_t XMP_ProgressTracker::XMP_ProgressTracker(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 1065353216;
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  if (*(a2 + 1))
  {
    if (!*a2)
    {
      XMP_ProgressTracker::XMP_ProgressTracker();
    }

    v2 = *a2;
    *(result + 13) = *(a2 + 13);
    *result = v2;
    if (*(result + 24) < 0.0)
    {
      *(result + 24) = 1065353216;
    }
  }

  return result;
}

void XMP_ProgressTracker::BeginWork(XMP_ProgressTracker *this, float a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 32) = 1;
  v3 = PerfUtils::NoteThisMoment();
  *(this + 6) = v3;
  *(this + 7) = v3;
  if (*(this + 28) == 1)
  {

    XMP_ProgressTracker::NotifyClient(this, 1, v4, v5, v6);
  }
}

void XMP_ProgressTracker::NotifyClient(XMP_ProgressTracker *this, int a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = *this;
    if (!*this)
    {
      XMP_ProgressTracker::NotifyClient();
    }

    if (*(this + 9) < 0.0 || (v8 = *(this + 10), v8 < 0.0) || *(this + 6) < 0.0)
    {
      XMP_ProgressTracker::NotifyClient();
    }

    if (a2)
    {
      if (v8 <= 0.0)
      {
        a3.n128_u64[0] = 0;
        a4.n128_u64[0] = 0;
      }

      else
      {
        v9 = *(this + 6);
        v10 = PerfUtils::NoteThisMoment();
        a3.n128_f64[0] = PerfUtils::GetElapsedSeconds(v9, v10);
        a3.n128_f32[0] = a3.n128_f64[0];
        v7 = *this;
        v6 = *(this + 1);
        a4.n128_u32[0] = 1.0;
      }

      v15 = *(this + 2);
      a5.n128_u64[0] = 0;
    }

    else
    {
      v11 = PerfUtils::NoteThisMoment();
      a3.n128_f64[0] = PerfUtils::GetElapsedSeconds(*(this + 7), v11);
      a3.n128_f32[0] = a3.n128_f64[0];
      if (*(this + 6) > a3.n128_f32[0])
      {
        return;
      }

      v12 = *(this + 9);
      a5.n128_u64[0] = 0;
      if (v12 <= 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v13 = *(this + 10);
        v14 = 0.0;
        if (v13 > 0.0)
        {
          if ((v13 / v12) <= 1.0)
          {
            v14 = v13 / v12;
          }

          else
          {
            v14 = 1.0;
          }

          a3.n128_f64[0] = PerfUtils::GetElapsedSeconds(*(this + 6), v11);
          a3.n128_f32[0] = a3.n128_f64[0];
          a5.n128_f32[0] = (1.0 - v14) * (a3.n128_f32[0] / v14);
        }
      }

      *(this + 7) = v11;
      v7 = *this;
      v6 = *(this + 1);
      v15 = *(this + 2);
      a4.n128_f32[0] = v14;
    }

    if (!v7(v6, v15, a3, a4, a5))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 16;
      exception[1] = "Abort signaled by progress reporting callback";
      *(exception + 16) = 0;
    }
  }
}

float XMP_ProgressTracker::AddTotalWork(XMP_ProgressTracker *this, float a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  result = a2 + *(this + 9);
  *(this + 9) = result;
  return result;
}

float XMP_ProgressTracker::AddWorkDone(XMP_ProgressTracker *this, __n128 a2, __n128 a3, __n128 a4)
{
  a3.n128_u32[1] = 0;
  if (a2.n128_f32[0] < 0.0)
  {
    a2.n128_f32[0] = 0.0;
  }

  a3.n128_u32[0] = *(this + 10);
  a2.n128_f32[0] = a2.n128_f32[0] + a3.n128_f32[0];
  *(this + 10) = a2.n128_u32[0];
  XMP_ProgressTracker::NotifyClient(this, 0, a2, a3, a4);
  return result;
}

void XMP_ProgressTracker::WorkComplete(XMP_ProgressTracker *this, __n128 _Q0, __n128 a3, __n128 a4)
{
  _Q0.n128_u32[0] = *(this + 9);
  if (_Q0.n128_f32[0] == 0.0)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *(this + 36) = _Q0.n128_u64[0];
  }

  else
  {
    *(this + 10) = _Q0.n128_u32[0];
    if (_Q0.n128_f32[0] <= 0.0)
    {
      XMP_ProgressTracker::WorkComplete();
    }
  }

  XMP_ProgressTracker::NotifyClient(this, *(this + 28), _Q0, a3, a4);
  *(this + 32) = 0;
}

void XMP_ProgressTracker::NotifyClient()
{
  __assert_rtn("NotifyClient", "XMP_ProgressTracker.cpp", 126, "(this->totalWork >= 0.0) && (this->workDone >= 0.0) && (this->cbInfo.interval >= 0.0)");
}

{
  __assert_rtn("NotifyClient", "XMP_ProgressTracker.cpp", 125, "this->cbInfo.wrapperProc != 0");
}

void sub_18617C15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::RDFDOMSerializerImpl::ValidateValue(uint64_t a1, void *a2, int a3, void *a4)
{
  if (*a2 == qword_1EA8DB710 && (a3 != 2 || (*a4 <= 0x20uLL ? (v4 = ((1 << *a4) & 0x100010100) == 0) : (v4 = 1), v4)))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t virtual thunk toAdobeXMPCore_Int::RDFDOMSerializerImpl::ValidateValue(uint64_t a1, void *a2, int a3, void *a4)
{
  if (*a2 == qword_1EA8DB710 && (a3 != 2 || (*a4 <= 0x20uLL ? (v4 = ((1 << *a4) & 0x100010100) == 0) : (v4 = 1), v4)))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::RDFDOMSerializerImpl::SerializeInternal(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(a2);
}

void sub_18617C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(AdobeXMPCore_Int::RDFDOMSerializerImpl *this)
{
  AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl((this + 8), off_1EF500080);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 88), off_1EF500160);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 32), off_1EF500148);
}

{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(void *a1)
{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(AdobeXMPCore_Int::RDFDOMSerializerImpl *this)
{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

uint64_t PSIR_MemoryReader::GetImgRsrc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v3 = a1 + 32;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
    return 0;
  }

  if (a3)
  {
    v11 = *(v6 + 40);
    *(a3 + 16) = *(v6 + 56);
    *a3 = v11;
  }

  return 1;
}

void PSIR_MemoryReader::ParseMemoryResources(void **this, char *a2, unsigned int a3, char a4)
{
  if (*(this + 8) == 1)
  {
    free(this[2]);
  }

  v9 = (this + 4);
  v8 = this[4];
  *(this + 8) = 0;
  this[2] = 0;
  *(this + 3) = 0;
  std::__tree<unsigned long long>::destroy((this + 3), v8);
  this[4] = 0;
  this[5] = 0;
  this[3] = this + 4;
  if (a3)
  {
    if (a4)
    {
      if (a3 >= 0x6400001)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 209;
        v27 = "Outrageous length for memory-based PSIR";
      }

      else
      {
        v10 = a3;
        v11 = malloc_type_malloc(a3, 0x100004077774924uLL);
        this[2] = v11;
        if (v11)
        {
          memcpy(v11, a2, a3);
          *(this + 8) = 1;
          a2 = this[2];
LABEL_10:
          *(this + 3) = a3;
          for (i = &a2[v10]; a2 <= i - 12; a2 = v15 + ((v17 + 1) & 0xFFFFFFFE))
          {
            v13 = &a2[((a2[6] + 2) & 0x1FE) + 6];
            if (v13 > i - 1)
            {
              break;
            }

            v16 = *v13;
            v15 = v13 + 1;
            v14 = v16;
            v17 = bswap32(v16);
            if (v17 > a3 || v15 > (i - v17))
            {
              break;
            }

            if (*a2 == 1296646712)
            {
              v19 = bswap32(*(a2 + 2)) >> 16;
              v20 = v15 - *(this + 4);
              v21 = *v9;
              if (!*v9)
              {
                goto LABEL_26;
              }

              v22 = (this + 4);
              do
              {
                v23 = *(v21 + 16);
                v24 = v23 >= v19;
                v25 = v23 < v19;
                if (v24)
                {
                  v22 = v21;
                }

                v21 = *&v21[8 * v25];
              }

              while (v21);
              if (v22 != v9 && v19 >= *(v22 + 16))
              {
                if (v14)
                {
                  if (!*(v22 + 11))
                  {
                    *(v22 + 20) = v19;
                    *(v22 + 21) = 0;
                    *(v22 + 11) = v17;
                    v22[6] = v15;
                    *(v22 + 14) = v20;
                  }
                }
              }

              else
              {
LABEL_26:
                v28[0] = v19;
                v28[4] = v19;
                v28[5] = 0;
                v29 = v17;
                v30 = v15;
                v31 = v20;
                v32 = 0;
                std::__tree<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_Manager::ImgRsrcInfo>>(this + 3, this + 4, v28);
              }
            }
          }

          return;
        }

        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 15;
        v27 = "Out of memory";
      }

      exception[1] = v27;
      *(exception + 16) = 0;
    }

    this[2] = a2;
    if (this[1])
    {
      PSIR_MemoryReader::ParseMemoryResources();
    }

    v10 = a3;
    goto LABEL_10;
  }
}

void PSIR_MemoryReader::SetImgRsrc(PSIR_MemoryReader *this, unsigned __int16 a2, const void *a3)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

void PSIR_MemoryReader::DeleteImgRsrc(PSIR_MemoryReader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

void PSIR_MemoryReader::ParseFileResources()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

uint64_t PSIR_MemoryReader::UpdateMemoryResources(PSIR_MemoryReader *this, void **a2)
{
  if (a2)
  {
    *a2 = *(this + 2);
  }

  return *(this + 3);
}

void PSIR_MemoryReader::UpdateFileResources()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

void PSIR_MemoryReader::~PSIR_MemoryReader(void **this)
{
  PSIR_MemoryReader::~PSIR_MemoryReader(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF501808;
  if (*(this + 8) == 1)
  {
    free(this[2]);
  }

  std::__tree<unsigned long long>::destroy((this + 3), this[4]);
}

uint64_t std::__tree<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_Manager::ImgRsrcInfo>>(void *a1, uint64_t *a2, unsigned __int16 *a3)
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

void WXMPUtils_ComposeArrayItemPath_1(char *a1, char *a2, int a3, uint64_t a4, void (*a5)(uint64_t, std::string *, uint64_t), void *a6)
{
  *a6 = 0;
  if (!a1 || !*a1)
  {
    v10 = "Empty schema namespace URI";
    v11 = 101;
    goto LABEL_18;
  }

  if (!a2 || !*a2)
  {
    v10 = "Empty array name";
    v11 = 102;
LABEL_18:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v11;
    exception[1] = v10;
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeArrayItemPath(a1, a2, a3, &__p);
  if (a4)
  {
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
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a5(a4, p_p, v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617CB10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v18;
    v19 = *(v18 + 1);
    if (!v19)
    {
      v19 = "";
    }

    *v15 = v19;
    *(v15 + 8) = "XMP";
  }

  else
  {
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v21 = (*(*v20 + 16))(v20);
      v22 = "";
      if (v21)
      {
        v22 = v21;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v22 = "Caught unknown exception";
    }

    *v15 = v22;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617CAB8);
}

void WXMPUtils_ComposeStructFieldPath_1(char *a1, char *a2, char *a3, _BYTE *a4, uint64_t a5, void (*a6)(uint64_t, std::string *, uint64_t), void *a7)
{
  *a7 = 0;
  if (!a1 || !*a1)
  {
    v11 = "Empty schema namespace URI";
LABEL_23:
    v12 = 101;
    goto LABEL_26;
  }

  if (!a2 || !*a2)
  {
    v11 = "Empty struct name";
LABEL_25:
    v12 = 102;
LABEL_26:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v12;
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  if (!a3 || !*a3)
  {
    v11 = "Empty field namespace URI";
    goto LABEL_23;
  }

  if (!a4 || !*a4)
  {
    v11 = "Empty field name";
    goto LABEL_25;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a1, a2, a3, a4, &__p);
  if (a5)
  {
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
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a6(a5, p_p, v10);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617CCEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v18;
    v19 = *(v18 + 1);
    if (!v19)
    {
      v19 = "";
    }

    *v15 = v19;
    *(v15 + 8) = "XMP";
  }

  else
  {
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v21 = (*(*v20 + 16))(v20);
      v22 = "";
      if (v21)
      {
        v22 = v21;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v22 = "Caught unknown exception";
    }

    *v15 = v22;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617CC7CLL);
}

void WXMPUtils_ConvertFromFloat_1(const char *a1, uint64_t a2, void (*a3)(uint64_t, std::string *, uint64_t), void *a4, double a5)
{
  *a4 = 0;
  if (!a1)
  {
    a1 = "";
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromFloat(a1, &__p, a5);
  if (a2)
  {
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
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a3(a2, p_p, v8);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617CE4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v19 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v19;
    v20 = *(v19 + 1);
    if (!v20)
    {
      v20 = v16;
    }

    *(v15 + 8) = "XMP";
  }

  else
  {
    v21 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v22 = (*(*v21 + 16))(v21);
      if (v22)
      {
        v20 = v22;
      }

      else
      {
        v20 = v16;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v20 = "Caught unknown exception";
    }
  }

  *v15 = v20;
  __cxa_end_catch();
  JUMPOUT(0x18617CE38);
}

uint64_t WXMPUtils_ConvertToBool_1(XMPUtils *a1, uint64_t a2)
{
  *a2 = 0;
  if (!a1 || !*a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Empty string value";
    *(exception + 16) = 0;
  }

  result = XMPUtils::ConvertToBool(a1, a2);
  *(a2 + 32) = result;
  return result;
}

void sub_18617CF64(void *a1, int a2)
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
    }

    else
    {
      *(v2 + 32) = 14;
      v8 = "Caught unknown exception";
    }

    *v2 = v8;
  }

  __cxa_end_catch();
}

uint64_t WXMPUtils_ConvertToDate_1(char *a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output date";
    *(exception + 16) = 0;
  }

  return XMPUtils::ConvertToDate(a1, a2);
}

uint64_t WXMPUtils_ConvertToUTCTime_1(uint64_t a1, void *a2)
{
  *a2 = 0;
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output date";
    *(exception + 16) = 0;
  }

  return XMPUtils::ConvertToUTCTime(a1);
}

void WXMPUtils_PackageForJPEG_1(const std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t), void *a6)
{
  *a6 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v19, 0, sizeof(v19));
  memset(&__p, 0, sizeof(__p));
  v17 = &a1->__r_.__value_.__r.__words[2];
  XMP_ReadWriteLock::Acquire(&a1->__r_.__value_.__r.__words[2], 0);
  XMPUtils::PackageForJPEG(a1, &v20, &v19, &__p);
  if (a2)
  {
    if (v22 >= 0)
    {
      v11 = &v20;
    }

    else
    {
      v11 = v20;
    }

    if (v22 >= 0)
    {
      v12 = HIBYTE(v22);
    }

    else
    {
      v12 = v21;
    }

    a5(a2, v11, v12);
  }

  if (a3)
  {
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v19;
    }

    else
    {
      v13 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = LODWORD(v19.__r_.__value_.__r.__words[1]);
    }

    a5(a3, v13, v14);
  }

  if (a4)
  {
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
      v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a5(a4, p_p, v16);
  }

  XMP_AutoLock::~XMP_AutoLock(&v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_18617D398(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a2 == 3)
  {
    v30 = __cxa_begin_catch(a1);
    *(v27 + 32) = *v30;
    v31 = *(v30 + 1);
    if (!v31)
    {
      v31 = "";
    }

    *v27 = v31;
    *(v27 + 8) = "XMP";
  }

  else
  {
    v32 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v27 + 32) = 13;
      v33 = (*(*v32 + 16))(v32);
      v34 = "";
      if (v33)
      {
        v34 = v33;
      }
    }

    else
    {
      *(v27 + 32) = 14;
      v34 = "Caught unknown exception";
    }

    *v27 = v34;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D380);
}

void WXMPUtils_MergeFromJPEG_1(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (!a1)
  {
    v6 = "Output XMP pointer is null";
    goto LABEL_6;
  }

  if (a1 == a2)
  {
    v6 = "Full and extended XMP pointers match";
LABEL_6:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  v9 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  v8 = (a2 + 16);
  XMP_ReadWriteLock::Acquire((a2 + 16), 0);
  XMPUtils::MergeFromJPEG(a1, a2, v5);
  XMP_AutoLock::~XMP_AutoLock(&v8);
  XMP_AutoLock::~XMP_AutoLock(&v9);
}

void sub_18617D54C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, XMP_ReadWriteLock *a10)
{
  XMP_AutoLock::~XMP_AutoLock(&a9);
  XMP_AutoLock::~XMP_AutoLock(&a10);
  if (a2 == 3)
  {
    v13 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v13;
    v14 = *(v13 + 1);
    if (!v14)
    {
      v14 = "";
    }

    *v10 = v14;
    *(v10 + 8) = "XMP";
  }

  else
  {
    v15 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v16 = (*(*v15 + 16))(v15);
      v17 = "";
      if (v16)
      {
        v17 = v16;
      }
    }

    else
    {
      *(v10 + 32) = 14;
      v17 = "Caught unknown exception";
    }

    *v10 = v17;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D4F8);
}

void WXMPUtils_CatenateArrayItems_1(uint64_t a1, char *a2, _BYTE *a3, char *a4, const char *a5, unsigned int a6, uint64_t a7, void (*a8)(uint64_t, std::string *, uint64_t), void *a9)
{
  *a9 = 0;
  if (!a2 || !*a2)
  {
    v21 = "Empty schema namespace URI";
    v22 = 101;
    goto LABEL_24;
  }

  if (!a3 || !*a3)
  {
    v21 = "Empty array name";
    v22 = 102;
LABEL_24:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v22;
    exception[1] = v21;
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  v24 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = "";
  }

  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = "; ";
  }

  XMPUtils::CatenateArrayItems(a1, a2, a3, v18, v17, a6, &__p);
  if (a7)
  {
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
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a8(a7, p_p, v20);
  }

  XMP_AutoLock::~XMP_AutoLock(&v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617D780(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 3)
  {
    v17 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v17;
    v18 = *(v17 + 1);
    if (!v18)
    {
      v18 = "";
    }

    *v15 = v18;
    *(v15 + 8) = "XMP";
  }

  else
  {
    v19 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v20 = (*(*v19 + 16))(v19);
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v21 = "Caught unknown exception";
    }

    *v15 = v21;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D71CLL);
}

void WXMPUtils_SeparateArrayItems_1(uint64_t a1, XMPMeta *a2, char *a3, const char *a4, char *a5, void *a6)
{
  *a6 = 0;
  if (!a1)
  {
    v13 = "Output XMP pointer is null";
    v14 = 4;
LABEL_13:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v14;
    exception[1] = v13;
    *(exception + 16) = 0;
  }

  if (!a2 || !*a2)
  {
    v13 = "Empty schema namespace URI";
    v14 = 101;
    goto LABEL_13;
  }

  if (!a3 || !*a3)
  {
    v13 = "Empty array name";
    v14 = 102;
    goto LABEL_13;
  }

  v16 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = "";
  }

  XMPUtils::SeparateArrayItems(a1, a2, a3, a4, v12, v11);
  XMP_AutoLock::~XMP_AutoLock(&v16);
}

void sub_18617D950(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    *(v3 + 32) = *v6;
    v7 = *(v6 + 1);
    if (!v7)
    {
      v7 = "";
    }

    *v3 = v7;
    *(v3 + 8) = "XMP";
  }

  else
  {
    v8 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v3 + 32) = 13;
      v9 = (*(*v8 + 16))(v8);
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }
    }

    else
    {
      *(v3 + 32) = 14;
      v10 = "Caught unknown exception";
    }

    *v3 = v10;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D8E4);
}

void WXMPUtils_RemoveProperties_1(uint64_t a1, XMPMeta *a2, char *a3, const char *a4, void *a5)
{
  *a5 = 0;
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Output XMP pointer is null";
    *(exception + 16) = 0;
  }

  v12 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = "";
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = "";
  }

  XMPUtils::RemoveProperties(a1, v10, v9, a4);
  XMP_AutoLock::~XMP_AutoLock(&v12);
}

void sub_18617DAD4(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    *(v3 + 32) = *v6;
    v7 = *(v6 + 1);
    if (!v7)
    {
      v7 = "";
    }

    *v3 = v7;
    *(v3 + 8) = "XMP";
  }

  else
  {
    v8 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v3 + 32) = 13;
      v9 = (*(*v8 + 16))(v8);
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }
    }

    else
    {
      *(v3 + 32) = 14;
      v10 = "Caught unknown exception";
    }

    *v3 = v10;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617DA88);
}

void WXMPUtils_DuplicateSubtree_1(uint64_t a1, uint64_t a2, XMPMeta *a3, char *a4, char *a5, char *a6, const char *a7, void *a8)
{
  *a8 = 0;
  if (!a2)
  {
    v15 = "Output XMP pointer is null";
    v16 = 4;
LABEL_18:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v16;
    exception[1] = v15;
    *(exception + 16) = 0;
  }

  if (!a3 || !*a3)
  {
    v15 = "Empty source schema URI";
    v16 = 101;
    goto LABEL_18;
  }

  if (!a4 || !*a4)
  {
    v15 = "Empty source root name";
    v16 = 102;
    goto LABEL_18;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = a3;
  }

  if (a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = a4;
  }

  v19 = 0;
  if (a1 != a2)
  {
    v19 = (a1 + 16);
    XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  }

  v18 = (a2 + 16);
  XMP_ReadWriteLock::Acquire((a2 + 16), 1);
  XMPUtils::DuplicateSubtree(a1, a2, a3, a4, v13, v14, a7);
  XMP_AutoLock::~XMP_AutoLock(&v18);
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void sub_18617DCCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v12;
    v13 = *(v12 + 1);
    if (!v13)
    {
      v13 = "";
    }

    *v10 = v13;
    *(v10 + 8) = "XMP";
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v15 = (*(*v14 + 16))(v14);
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }
    }

    else
    {
      *(v10 + 32) = 14;
      v16 = "Caught unknown exception";
    }

    *v10 = v16;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617DC5CLL);
}

void *AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x635374724E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x635374724E6F6465, a3, exception);
      }

      return (this + *(*this - 792));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 800)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x635374724E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::IStructureNode_I::GetInterfacePointer(AdobeXMPCore_Int::IStructureNode_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 720)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IStructureNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IStructureNode_I::getInterfacePointer(AdobeXMPCore_Int::IStructureNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::IStructureNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::getInterfacePointer((this + *(*this - 728)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a3;
  *a1 = 0;
  v15 = 0;
  v16 = 0;
  v11 = (a2 + (a4 >> 1));
  if (a4)
  {
    v10 = *(*v11 + a3);
  }

  v10(&v15, v11, a7, a8, a9, a10);
  if (v15)
  {
    v12 = (*(*&v15[*(*v15 - 56)] + 16))(&v15[*(*v15 - 56)]);
    (*(*v12 + 40))(v12);
    v13 = (*(*&v15[*(*v15 - 64)] + 16))(&v15[*(*v15 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v13 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  return v13;
}

void sub_18617E374(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x18617E358);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::IStructureNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a4;
  *a1 = 0;
  v12 = (a2 + (a5 >> 1));
  if (a5)
  {
    v11 = *(*v12 + a4);
  }

  return v11(v12, a8, a9, a10, a11);
}

void AdobeXMPCore_Int::IStructureNode_I::insertNode(AdobeXMPCore_Int::IStructureNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 792);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v6);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IStructureNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::IStructureNode_v1::InsertNode, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IStructureNode_I.cpp", 65, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

void sub_18617E800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IStructureNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

uint64_t AdobeXMPCore_Int::IStructureNode_I::replaceNode(AdobeXMPCore_Int::IStructureNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 792);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v8);
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::IStructureNode_v1::ReplaceNode, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IStructureNode_I.cpp", 75, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18617EB00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E6F6465202020, 1);
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

void sub_18617EC88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x18617EC6CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void *AdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63436F6E664D6772)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63436F6E664D6772, a3, exception);
      }

      return (this + *(*this - 152));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::IConfigurationManager_I::GetInterfacePointerInternal((this + *(*this - 160)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63436F6E664D6772, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointer(AdobeXMPCore_Int::ICoreConfigurationManager_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointerInternal((this + *(*this - 144)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ICoreConfigurationManager_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::ICoreConfigurationManager_I::getInterfacePointer(AdobeXMPCore_Int::ICoreConfigurationManager_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::getInterfacePointer((this + *(*this - 152)), a2, a3, a4);
}

void *AdobeXMPCore_Int::IDOMParser_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63444F4D50727372)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63444F4D50727372, a3, exception);
      }

      return (this + *(*this - 304));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63444F4D50727372, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMParser_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMParser_v1,AdobeXMPCore::IDOMParser_v1*,AdobeXMPCore::IDOMParser_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
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
    v6 = (*(*&v8[*(*v8 - 232)] + 16))(&v8[*(*v8 - 232)], 0x63444F4D50727372, 1);
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

void sub_18617F6E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x18617F6C8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMParser_v1,AdobeXMPCore::IMetadata_v1 *,AdobeXMPCore::IMetadata_v1,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x634D657461646174, 1);
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

void sub_18617FA70(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x18617FA54);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::IDOMParser_I::parseWithSpecificAction(AdobeXMPCore_Int::IDOMParser_I *this, AdobeXMPCore::INode_v1 *a2, uint64_t a3, unsigned int a4, AdobeXMPCore::INode_v1 *a5, const AdobeXMPCommon::IError_v1 **a6)
{
  v11 = 0;
  v12 = 0;
  AdobeXMPCore::INode_v1::MakeShared(a5, a2, &v11);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IDOMParser_v1,char const*,unsigned long long,AdobeXMPCore::IDOMParser_v1::eActionType,std::shared_ptr<AdobeXMPCore::INode_v1> &>(a6, this + *(*this - 304), AdobeXMPCore::IDOMParser_v1::ParseWithSpecificAction, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IDOMParser_I.cpp", 63, a2, a3, a4, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }
}

void sub_18617FCE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IDOMParser_v1,char const*,unsigned long long,AdobeXMPCore::IDOMParser_v1::eActionType,std::shared_ptr<AdobeXMPCore::INode_v1> &>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v10 = a3;
  *a1 = 0;
  v11 = (a2 + (a4 >> 1));
  if (a4)
  {
    v10 = *(*v11 + a3);
  }

  return v10(v11, a7, a8, a9, a10);
}

void AdobeXMPCore_Int::MetadataImpl::MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this)
{
  *(this + 26) = &unk_1EF506868;
  *this = &unk_1EF506090;
  *(this + 4) = off_1EF506338;
  *(this + unk_1EF506048) = &unk_1EF506398;
  *this = &unk_1EF505A48;
  *(this + unk_1EF505A08) = off_1EF505D50;
  *(this + *(*this - 72)) = &unk_1EF505DB0;
  *this = &unk_1EF505360;
  *(this + unk_1EF505328) = &unk_1EF505360;
  *(this + *(*this - 64)) = off_1EF5056A0;
  *(this + *(*this - 72)) = &unk_1EF505700;
  *(this + 23) = &unk_1EF509BF0;
  *(this + 10) = &unk_1EF5093F0;
  *this = &unk_1EF509860;
  *(this + 4) = off_1EF509A80;
  *(this + 26) = &unk_1EF509B68;
  *(this + unk_1EF5091C8 + 80) = &unk_1EF509AE0;
  *(this + *(*(this + 10) - 560) + 80) = &unk_1EF509B68;
  *(this + 9) = &unk_1EF508368;
  *this = &unk_1EF5088A0;
  *(this + 4) = off_1EF508B48;
  *(this + 26) = &unk_1EF509118;
  *(this + unk_1EF5080B0 + 72) = &unk_1EF508DF8;
  *(this + *(*(this + 9) - 704) + 72) = &unk_1EF509090;
  *(this + *(*(this + 9) - 712) + 72) = &unk_1EF509118;
  *(this + 5) = &unk_1EF506BF8;
  *this = &unk_1EF507208;
  *(this + 4) = off_1EF507510;
  *(this + 26) = &unk_1EF508048;
  *(this + unk_1EF5068D8 + 40) = &unk_1EF507808;
  *(this + *(*(this + 5) - 808) + 40) = &unk_1EF507D28;
  *(this + *(*(this + 5) - 816) + 40) = &unk_1EF507FC0;
  *(this + *(*(this + 5) - 824) + 40) = &unk_1EF508048;
  *this = &unk_1EF503AE8;
  *(this + unk_1EF5038C8) = &unk_1EF503AE8;
  *(this + *(*this - 56)) = &unk_1EF503AE8;
  *(this + *(*this - 64)) = off_1EF503E38;
  *(this + *(*this - 72)) = &unk_1EF504FC8;
  *(this + *(*this - 864)) = &unk_1EF5041B0;
  *(this + *(*this - 872)) = &unk_1EF504788;
  *(this + *(*this - 880)) = &unk_1EF504CA8;
  *(this + *(*this - 888)) = &unk_1EF504F40;
  *(this + *(*this - 896)) = &unk_1EF504FC8;
  *(this + 23) = off_1EF50D270;
  *(this + 24) = 0;
  *this = off_1EF50D2D0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 25) = 0;
  *(this + 26) = off_1EF50D358;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((this + 80), off_1EF5036D8, "http://metadata", 0xF);
}

void sub_1861807D4(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(v4, &off_1EF5035F0);
  AdobeXMPCore_Int::NodeImpl::~NodeImpl(v3, off_1EF5036D8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF503740);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF503728);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataImpl::GetAboutURI(AdobeXMPCore_Int::MetadataImpl *this@<X0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 960) + 8, 0);
  v4 = *(this + 2);
  *a2 = *(this + 1);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void AdobeXMPCore_Int::MetadataImpl::SetAboutURI(AdobeXMPCore_Int::MetadataImpl *this, const char *a2)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 960) + 8, 1);
  (*(**(this + 1) + 56))(&v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void sub_186180964(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::MetadataImpl::ClearContents(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::StructureNodeImpl::ClearContents((this + *(*this - 928)));
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 960) + 8, 1);
  (*(**(this + 1) + 200))(*(this + 1));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::ClearContents(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::MetadataImpl::ClearContents((this + *(*this - 912)));
}

{
  AdobeXMPCore_Int::MetadataImpl::ClearContents((this + *(*this - 696)));
}

void AdobeXMPCore_Int::MetadataImpl::CloneContents(AdobeXMPCore_Int::MetadataImpl *this)
{
  v1 = 0;
  v2 = 0;
  AdobeXMPCore::IMetadata_v1::CreateMetadata(this);
}

void sub_186180DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::CloneContents(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::MetadataImpl::CloneContents((this + *(*this - 920)));
}

{
  AdobeXMPCore_Int::MetadataImpl::CloneContents((this + *(*this - 704)));
}

void AdobeXMPCore_Int::MetadataImpl::EnableFeature(AdobeXMPCore_Int::MetadataImpl *this, char *a2, size_t a3)
{
  memset(&__dst, 0, sizeof(__dst));
  std::string::basic_string[abi:fe200100](&__dst, a2, a3);
  if (!std::string::compare(&__dst, "alias"))
  {
    *(this + 24) = 1;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void AdobeXMPCore_Int::MetadataImpl::DisableFeature(AdobeXMPCore_Int::MetadataImpl *this, char *a2, size_t a3)
{
  memset(&__dst, 0, sizeof(__dst));
  std::string::basic_string[abi:fe200100](&__dst, a2, a3);
  if (!std::string::compare(&__dst, "alias"))
  {
    *(this + 24) = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void AdobeXMPCore_Int::IsNodeAlias()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(0, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_186181350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  v24 = *(v22 - 48);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *AdobeXMPCore_Int::HandleConstAlias(void *a1, AdobeXMPCore::INode_v1 **a2, char **a3, uint64_t *a4)
{
  v5 = *a3;
  if (*a3 == a3[1])
  {
    __p = 0;
    v56 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if ((*(v5 + 6) & 0x80000000) == 0)
  {
    return 0;
  }

  v56 = 0;
  v57 = 0;
  __p = 0;
  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  result = std::string::basic_string[abi:fe200100]<0>(&__p, v5);
  v11 = *a3;
  if ((a3[1] - *a3) > 0x20)
  {
    v12 = (v11 + 4);
    v13 = *(v11 + 55);
    if (v13 < 0)
    {
      v14 = v11[4];
      v13 = v11[5];
    }

    else
    {
      v14 = (v11 + 4);
    }

    if (v13 < 1)
    {
      goto LABEL_24;
    }

    v15 = &v14[v13];
    v16 = v14;
    while (1)
    {
      v17 = memchr(v16, 58, v13);
      if (!v17)
      {
        goto LABEL_24;
      }

      if (*v17 == 58)
      {
        break;
      }

      v16 = v17 + 1;
      v13 = v15 - v16;
      if (v15 - v16 < 1)
      {
        goto LABEL_24;
      }
    }

    if (v17 == v15 || v17 - v14 == -1)
    {
LABEL_24:
      __assert_rtn("HandleConstAlias", "MetadataImpl.cpp", 141, "colonPos != std::string::npos");
    }

    memset(&v54, 0, sizeof(v54));
    std::string::basic_string(&v54, v12, v17 - v14 + 1, 0xFFFFFFFFFFFFFFFFLL, &v53);
    (*(*(*a1 + *(**a1 - 792)) + 648))(&v53);
    v18 = v53;
    v53 = 0uLL;
    v19 = a2[1];
    *a2 = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v19);
      if (*(&v53 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
      }

      v20 = *a2;
      if (!*a2)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v20 = v18;
      if (!v18)
      {
        goto LABEL_88;
      }
    }

    if (a3[1] - *a3 == 64)
    {
      goto LABEL_27;
    }

    result = (*(*v20 + 40))(v20);
    if (result != 2)
    {
      v46 = "destNode->GetNodeType() == INode::kNTArray";
      v47 = 148;
      goto LABEL_98;
    }

    v21 = *a3;
    if ((a3[1] - *a3) > 0x40)
    {
      v22 = (v21 + 8);
      v23 = *(v21 + 22);
      if (v23 == 5)
      {
        if (*(v21 + 87) < 0 && v21[9] == 23)
        {
          v25 = *v22;
          v26 = *v25;
          v27 = v25[1];
          v28 = *(v25 + 15);
          v29 = v26 == 0x616C3A6C6D783F5BLL && v27 == 0x65642D78223D676ELL;
          if (v29 && v28 == 0x5D22746C75616665)
          {
            if (*a2 && (*(**a2 + 40))(*a2) == 2)
            {
              v53 = 0uLL;
              (*(**a2 + 248))(&v51);
              (*(*(v51 + *(*v51 - 688)) + 552))(&v53);
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v52);
              }

              v31 = 1;
              do
              {
                v6 = v53 != 0;
                if (!v53)
                {
                  break;
                }

                v51 = 0;
                v52 = 0;
                (*(*v53 + 48))(&v51);
                v50 = 0uLL;
                AdobeXMPCore::INode_v1::GetSimpleQualifier(v51, &v50);
                (*(*v50 + 504))(&v48);
                v32 = v48;
                v33 = (*(*v48 + 208))(v48);
                v34 = (*(*v32 + 160))(v32, 0, v33, "x-default", -1);
                if (v49)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v49);
                }

                if (v34)
                {
                  if (*(&v50 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v50 + 1));
                  }

                  (*(*v53 + 56))(&v50);
                  v35 = v50;
                  v50 = 0uLL;
                  v36 = *(&v53 + 1);
                  v53 = v35;
                  if (v36)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v36);
                    if (*(&v50 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v50 + 1));
                    }
                  }

                  ++v31;
                  v37 = 1;
                }

                else
                {
                  v39 = v51;
                  v38 = v52;
                  if (v52)
                  {
                    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v40 = a2[1];
                  *a2 = v39;
                  a2[1] = v38;
                  if (v40)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v40);
                  }

                  if (*a4)
                  {
                    *a4 = v31;
                  }

                  if (*(&v50 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v50 + 1));
                  }

                  v37 = 0;
                }

                if (v52)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v52);
                }
              }

              while ((v37 & 1) != 0);
              if (*(&v53 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
              }

              goto LABEL_89;
            }

            goto LABEL_88;
          }
        }

        v46 = "expandedXPath[ 2 ].step == [?xml:lang=\\x-default\\]";
        v47 = 160;
LABEL_98:
        __assert_rtn("HandleConstAlias", "MetadataImpl.cpp", v47, v46);
      }

      if (v23 == 3)
      {
        v24 = *(v21 + 87);
        if (v24 < 0)
        {
          if (v21[9] != 3)
          {
LABEL_97:
            v46 = "expandedXPath[ 2 ].step == [1]";
            v47 = 151;
            goto LABEL_98;
          }

          v22 = *v22;
        }

        else if (v24 != 3)
        {
          goto LABEL_97;
        }

        v41 = *v22;
        v42 = *(v22 + 2);
        if (v41 != 12635 || v42 != 93)
        {
          goto LABEL_97;
        }

        (*(**a2 + 248))(&v51);
        (*(*v51 + 656))(&v53);
        v44 = v53;
        v53 = 0uLL;
        v45 = a2[1];
        *a2 = v44;
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v45);
          if (*(&v53 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
          }
        }

        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v52);
        }

        if (*a2)
        {
          if (*a4)
          {
            v6 = 1;
            *a4 = 1;
            goto LABEL_89;
          }

LABEL_27:
          v6 = 1;
LABEL_89:
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p);
          }

          return v6;
        }
      }

LABEL_88:
      v6 = 0;
      goto LABEL_89;
    }
  }

  __break(1u);
  return result;
}

void sub_186181CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore::INode_v1::GetSimpleQualifier(AdobeXMPCore::INode_v1 *this@<X0>, void *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(*this + 128))(&v5);
  if (v5)
  {
    (*(*v5 + 232))(v5);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void sub_186181DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::MetadataImpl::ReplaceNode@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v8 = 0u;
    v9 = 0u;
    (*(**a2 + 88))(&v7);
    (*(**a2 + 72))(&v6);
    v8 = v7;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
      if (*(&v6 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v6 + 1));
      }
    }

    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v7 + 1));
    }

    (*(**a2 + 88))(&v7);
    (*(*v7 + 192))(v7);
    (*(**a2 + 72))(&v6);
    (*(*v6 + 192))(v6);
    AdobeXMPCore_Int::IsNodeAlias();
  }

  v4 = a1 + *(*a1 - 928);

  return AdobeXMPCore_Int::StructureNodeImpl::ReplaceNode(v4, a2, a3);
}

void sub_186182684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void **a19)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(&a19);
  a19 = (v19 - 88);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a19);
  _Unwind_Resume(a1);
}

void sub_186182734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  JUMPOUT(0x18618271CLL);
}

_BYTE *AdobeXMPCore_Int::HandleNonConstAlias(char **a1, char **a2, char **a3, void *a4, void *a5)
{
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a3, a1);
  if (*a5 && (*(**a5 + 40))(*a5) == 1)
  {
    (*(**a5 + 232))(&v96);
    (*(*v96.__r_.__value_.__l.__data_ + 504))(&v97);
    v11 = v97;
    v10 = v98;
    v97 = 0;
    v98 = 0;
    if (v96.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v96.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = v13 - *a2;
  if (v13 == *a2)
  {
    v97 = 0;
    v98 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if ((*(v12 + 6) & 0x80000000) != 0)
  {
    v98 = 0;
    v99 = 0;
    v97 = 0;
    if (v12[23] < 0)
    {
      v12 = *v12;
    }

    result = std::string::basic_string[abi:fe200100]<0>(&v97, v12);
    v17 = *a2;
    if ((a2[1] - *a2) <= 0x20)
    {
      __break(1u);
      return result;
    }

    v18 = (v17 + 4);
    v19 = *(v17 + 55);
    if (v19 < 0)
    {
      v20 = v17[4];
      v19 = v17[5];
    }

    else
    {
      v20 = (v17 + 4);
    }

    if (v19 < 1)
    {
      goto LABEL_35;
    }

    v21 = &v20[v19];
    v22 = v20;
    while (1)
    {
      v23 = memchr(v22, 58, v19);
      if (!v23)
      {
        goto LABEL_35;
      }

      if (*v23 == 58)
      {
        break;
      }

      v22 = v23 + 1;
      v19 = v21 - v22;
      if (v21 - v22 < 1)
      {
        goto LABEL_35;
      }
    }

    if (v23 == v21 || v23 - v20 == -1)
    {
LABEL_35:
      __assert_rtn("HandleNonConstAlias", "MetadataImpl.cpp", 224, "colonPos != std::string::npos");
    }

    memset(&v96, 0, sizeof(v96));
    std::string::basic_string(&v96, v18, v23 - v20 + 1, 0xFFFFFFFFFFFFFFFFLL, &v95);
    (*(*&(*a1)[*(**a1 - 792)] + 648))(&v95);
    v24 = *(&v95 + 1);
    v25 = *a2;
    v26 = (a2[1] - *a2) >> 5;
    if (v26 == 2)
    {
      if (!v95)
      {
        v95 = 0uLL;
        if (v14 == 64)
        {
          if (v99 >= 0)
          {
            v27 = &v97;
          }

          else
          {
            v27 = v97;
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v96;
          }

          else
          {
            v28 = v96.__r_.__value_.__r.__words[0];
          }
        }

        else
        {
          if (v99 >= 0)
          {
            v27 = &v97;
          }

          else
          {
            v27 = v97;
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v96;
          }

          else
          {
            v28 = v96.__r_.__value_.__r.__words[0];
          }
        }

        v92 = 0;
        v93 = 0;
        AdobeXMPCore_Int::CreateTerminalNode(v27, v28, 0, &v92, &v94);
        v56 = v94;
        v94 = 0uLL;
        v57 = *(&v95 + 1);
        v95 = v56;
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v57);
          if (*(&v94 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v94 + 1));
          }
        }

        if (v95)
        {
          if (v11)
          {
            (*(*v95 + 232))(&v94);
            v58 = v94;
            v59 = (*(*v11 + 192))(v11);
            v60 = (*(*v11 + 208))(v11);
            (*(*v58 + 512))(v58, v59, v60);
            if (*(&v94 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v94 + 1));
            }
          }

          v61 = *a3;
          v62 = *a1;
          if (*a1)
          {
            v63 = &v62[*(*v62 - 544)];
          }

          else
          {
            v63 = 0;
          }

          if (v61 == v63)
          {
            (*(*&v62[*(*v62 - 792)] + 656))(&v62[*(*v62 - 792)], &v95);
          }

          else
          {
            (*(*v61 + 240))(&v94);
            (*(*(v94 + *(*v94 - 688)) + 520))(v94 + *(*v94 - 688), &v95);
            if (*(&v94 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v94 + 1));
            }
          }

          v83 = *(&v95 + 1);
          v82 = v95;
          if (*(&v95 + 1))
          {
            atomic_fetch_add_explicit((*(&v95 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v84 = a3[1];
          *a3 = v82;
          a3[1] = v83;
          if (v84)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v84);
            v82 = *a3;
          }

          v15 = v82 != 0;
        }

        else
        {
          v15 = 0;
        }

        if (*(&v95 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
        }

        goto LABEL_178;
      }

      goto LABEL_177;
    }

    if (v26 != 3)
    {
      v85 = "expandedXPath.size() == 3";
      v86 = 246;
      goto LABEL_187;
    }

    v29 = (v25 + 8);
    v30 = *(v25 + 22);
    if (v30 == 5)
    {
      v87 = *(&v95 + 1);
      if ((*(v25 + 87) & 0x80000000) == 0 || v25[9] != 23 || ((v32 = *v29, v33 = *v32, v34 = v32[1], v35 = *(v32 + 15), v33 == 0x616C3A6C6D783F5BLL) ? (v36 = v34 == 0x65642D78223D676ELL) : (v36 = 0), v36 ? (v37 = v35 == 0x5D22746C75616665) : (v37 = 0), !v37))
      {
        v85 = "expandedXPath[ 2 ].step == [?xml:lang=\\x-default\\]";
        v86 = 272;
        goto LABEL_187;
      }

      (*(*&(*a1)[*(**a1 - 792)] + 648))(&v95);
      v38 = v95;
      v95 = 0uLL;
      v39 = a3[1];
      *a3 = v38;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v39);
        if (*(&v95 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
        }
      }

      v95 = 0uLL;
      if (v99 >= 0)
      {
        v40 = &v97;
      }

      else
      {
        v40 = v97;
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v96;
      }

      else
      {
        v41 = v96.__r_.__value_.__r.__words[0];
      }

      v94 = 0uLL;
      AdobeXMPCore_Int::CreateTerminalNode(v40, v41, 4608, &v94, &v95);
      v42 = &(*a1)[*(**a1 - 688)];
      (*(*v42 + 520))(v42, &v95);
      v44 = *(&v95 + 1);
      v43 = v95;
      if (*(&v95 + 1))
      {
        atomic_fetch_add_explicit((*(&v95 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v45 = a3[1];
      *a3 = v43;
      a3[1] = v44;
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v45);
        v43 = *a3;
      }

      v94 = 0uLL;
      (*(*v43 + 248))(&v92);
      (*(*&v92[*(*v92 - 688)] + 552))(&v94);
      if (v93)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v93);
      }

      v46 = 1;
      do
      {
        if (!v94)
        {
          v92 = 0;
          v93 = 0;
          AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode("http://www.w3.org/XML/1998/namespace", 0xFFFFFFFFFFFFFFFFLL, "lang", 0xFFFFFFFFFFFFFFFFLL, "x-default", 0xFFFFFFFFFFFFFFFFLL);
        }

        v92 = 0;
        v93 = 0;
        (*(*v94 + 48))(&v92);
        v91 = 0uLL;
        (*(*v92 + 128))(&v91);
        if ((*(*v91 + 40))(v91) != 1)
        {
          goto LABEL_75;
        }

        (*(*v91 + 232))(&v88);
        (*(*v88 + 504))(&v90);
        v47 = v90;
        v48 = (*(*v90 + 208))(v90);
        v49 = (*(*v47 + 160))(v47, 0, v48, "x-default", -1);
        if (*(&v90 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v90 + 1));
        }

        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v89);
        }

        if (!v49)
        {
          v54 = v92;
          v53 = v93;
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = a3[1];
          *a3 = v54;
          a3[1] = v53;
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v55);
          }

          v52 = 0;
          if (*a4)
          {
            *a4 = v46;
          }
        }

        else
        {
LABEL_75:
          (*(*v94 + 56))(&v90);
          v50 = v90;
          v90 = 0uLL;
          v51 = *(&v94 + 1);
          v94 = v50;
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v51);
            if (*(&v90 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v90 + 1));
            }
          }

          ++v46;
          v52 = 1;
        }

        if (*(&v91 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v91 + 1));
        }

        if (v93)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v93);
        }
      }

      while ((v52 & 1) != 0);
      if (*(&v94 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v94 + 1));
      }

      v24 = v87;
      if (*(&v95 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
      }
    }

    else
    {
      if (v30 != 3)
      {
        v15 = 0;
LABEL_178:
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v24);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99) < 0)
        {
          operator delete(v97);
        }

        goto LABEL_9;
      }

      v31 = *(v25 + 87);
      if (v31 < 0)
      {
        if (v25[9] != 3)
        {
LABEL_186:
          v85 = "expandedXPath[ 2 ].step == [1]";
          v86 = 248;
LABEL_187:
          __assert_rtn("HandleNonConstAlias", "MetadataImpl.cpp", v86, v85);
        }

        v29 = *v29;
      }

      else if (v31 != 3)
      {
        goto LABEL_186;
      }

      v64 = *v29;
      v65 = *(v29 + 2);
      if (v64 != 12635 || v65 != 93)
      {
        goto LABEL_186;
      }

      (*(*&(*a1)[*(**a1 - 792)] + 648))(&v95);
      v67 = v95;
      v95 = 0uLL;
      v68 = a3[1];
      *a3 = v67;
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v68);
        if (*(&v95 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
        }

        v69 = *a3;
      }

      else
      {
        v69 = v67;
      }

      if (!v69)
      {
        v95 = 0uLL;
        if (v99 >= 0)
        {
          v70 = &v97;
        }

        else
        {
          v70 = v97;
        }

        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v96;
        }

        else
        {
          v71 = v96.__r_.__value_.__r.__words[0];
        }

        v94 = 0uLL;
        AdobeXMPCore_Int::CreateTerminalNode(v70, v71, 1536, &v94, &v95);
        v72 = &(*a1)[*(**a1 - 688)];
        (*(*v72 + 520))(v72, &v95);
        v73 = v95;
        if (*(&v95 + 1))
        {
          atomic_fetch_add_explicit((*(&v95 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v74 = a3[1];
        *a3 = v73;
        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v74);
        }

        if (*(&v95 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
        }

        v69 = *a3;
      }

      (*(*v69 + 248))(&v94);
      (*(*v94 + 656))(&v95);
      v75 = v95;
      if (*(&v95 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
      }

      if (*(&v94 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v94 + 1));
      }

      if (!v75)
      {
        v95 = 0uLL;
        if (v99 >= 0)
        {
          v78 = &v97;
        }

        else
        {
          v78 = v97;
        }

        if (v99 >= 0)
        {
          v79 = HIBYTE(v99);
        }

        else
        {
          v79 = v98;
        }

        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &v96;
        }

        else
        {
          v80 = v96.__r_.__value_.__r.__words[0];
        }

        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v96.__r_.__value_.__l.__size_;
        }

        AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v78, v79, v80, size, 0, 0xFFFFFFFFFFFFFFFFLL);
      }

      (*(**a3 + 248))(&v94);
      (*(*v94 + 656))(&v95);
      v76 = v95;
      v95 = 0uLL;
      v77 = a3[1];
      *a3 = v76;
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v77);
        if (*(&v95 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
        }
      }

      if (*(&v94 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v94 + 1));
      }

      if (*a4)
      {
        v15 = 1;
        *a4 = 1;
        goto LABEL_178;
      }
    }

LABEL_177:
    v15 = 1;
    goto LABEL_178;
  }

  v15 = 0;
LABEL_9:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  return v15;
}

void sub_186183C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataImpl::InsertNode(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *a2;
    if (*a2)
    {
      memset(&v6[2], 0, 24);
      (*(*v3 + 88))(&v5);
      (*(*v5 + 192))(v5);
      (*(**a2 + 72))(v6);
      (*(*v6[0] + 192))(v6[0]);
      AdobeXMPCore_Int::IsNodeAlias();
    }
  }

  else
  {
    v4 = (a1 + *(*a1 - 928));

    AdobeXMPCore_Int::StructureNodeImpl::InsertNode(v4, a2);
  }
}

void sub_186184154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a14);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a19);
  }

  a14 = (v19 - 56);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataImpl::RemoveNode(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    (*(**a2 + 192))();
    (*(**a3 + 192))();
    AdobeXMPCore_Int::IsNodeAlias();
  }

  v5 = a1 + *(*a1 - 928);

  AdobeXMPCore_Int::StructureNodeImpl::RemoveNode(v5, a2, a3, a4);
}

void sub_18618453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a14);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  a14 = (v21 - 72);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataImpl::GetNode(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    (*(**a2 + 192))();
    (*(**a3 + 192))();
    AdobeXMPCore_Int::IsNodeAlias();
  }

  v5 = (a1 + *(*a1 - 928));

  AdobeXMPCore_Int::StructureNodeImpl::GetNode(v5, a2, a3, a4);
}

void sub_186184860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a14);
  v21 = *(v18 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v21);
  }

  a14 = &a18;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataImpl::~MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((v2 + 40), &off_1EF5035F0);
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((this + 80), off_1EF5036D8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 208), off_1EF503740);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 184), off_1EF503728);
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::~MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::~MetadataImpl(void *a1)
{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::CreateTerminalNode(AdobeXMPCore::ISimpleNode_v1 *a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  if (*a4)
  {
    (*(**a4 + 264))(&v8, *a4, 0, 0);
    v6 = v8;
    v8 = 0uLL;
    v7 = a5[1];
    *a5 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v7);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
      }
    }
  }

  else
  {
    if ((a3 & 0x1F00) == 0)
    {
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(a1, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL, 0, 0xFFFFFFFFFFFFFFFFLL);
    }

    if ((a3 & 0x100) != 0)
    {
      AdobeXMPCore::IStructureNode_v1::CreateStructureNode(a1, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
    }

    if ((a3 & 0x200) != 0)
    {
      if ((a3 & 0x1000) == 0)
      {
        if ((a3 & 0x400) == 0)
        {
          AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode(a1, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
        }

        AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode(a1, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
      }

      AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode(a1, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void sub_186184C44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataImpl::~MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 920)) = a2[1];
  *(this + *(*this - 856)) = a2[2];
  *(this + *(*this - 792)) = a2[3];
  *(this + *(*this - 688)) = a2[4];
  *(this + *(*this - 544)) = a2[5];
  *(this + *(*this - 56)) = a2[6];
  *(this + *(*this - 64)) = a2[7];
  *(this + *(*this - 72)) = a2[8];
  *(this + *(*this - 864)) = a2[9];
  *(this + *(*this - 872)) = a2[10];
  *(this + *(*this - 880)) = a2[11];
  *(this + *(*this - 888)) = a2[12];
  *(this + *(*this - 896)) = a2[13];
  *(this + *(*this - 928)) = a2[14];
  *(this + *(*this - 936)) = a2[15];
  *(this + *(*this - 944)) = a2[16];
  *(this + *(*this - 952)) = a2[17];
  *(this + *(*this - 960)) = a2[18];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void sub_1861852E8(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 944) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::MetadataImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::MetadataImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::MetadataImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::MetadataImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 944) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::MetadataImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::MetadataImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL PhotoDataUtils::CheckIPTCDigest(PhotoDataUtils *this, const void *a2, void *a3, const void *a4)
{
  v5 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  memset(&v11, 0, sizeof(v11));
  MD5Init(&v11);
  MD5Update(&v11, this, v5);
  MD5Final(&v9, &v11);
  return v9 == *a3 && v10 == a3[1];
}

uint64_t PhotoDataUtils::SetIPTCDigest(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  memset(&v9, 0, sizeof(v9));
  MD5Init(&v9);
  MD5Update(&v9, a1, a2);
  v6 = MD5Final(v8, &v9);
  return (*(*a3 + 8))(a3, 1061, v8, 16, v6);
}

void PhotoDataUtils::ImportIPTC_Simple(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5)
{
  memset(&__p, 0, sizeof(__p));
  IPTC_Manager::GetDataSet_UTF8(a1, a3, &__p, 0);
  if (v8)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v13 = (p_p + size);
      do
      {
        if (p_p->__r_.__value_.__s.__data_[0] == 13)
        {
          p_p->__r_.__value_.__s.__data_[0] = 10;
        }

        p_p = (p_p + 1);
      }

      while (p_p < v13);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = v11;
    }

    TXMPMeta<std::string>::SetProperty(a2, a4, a5, v14, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_186185790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::ImportIPTC_LangAlt(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5)
{
  memset(&__p, 0, sizeof(__p));
  IPTC_Manager::GetDataSet_UTF8(a1, a3, &__p, 0);
  if (v8)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v13 = (p_p + size);
      do
      {
        if (p_p->__r_.__value_.__s.__data_[0] == 13)
        {
          p_p->__r_.__value_.__s.__data_[0] = 10;
        }

        p_p = (p_p + 1);
      }

      while (p_p < v13);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = v11;
    }

    TXMPMeta<std::string>::SetLocalizedText(a2, a4, a5, "", "x-default", v14, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_186185894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::ImportIPTC_Array(uint64_t a1, uint64_t a2, int a3, char *a4, char *a5)
{
  memset(&__p, 0, sizeof(__p));
  IPTC_Manager::GetDataSet(a1, a3, 0, 0);
  v11 = v10;
  TXMPMeta<std::string>::DeleteProperty(a2, a4, a5);
  v12 = 512;
  if (!strcmp(a4, "http://purl.org/dc/elements/1.1/"))
  {
    if (!strcmp(a5, "creator"))
    {
      v12 = 1024;
    }

    else
    {
      v12 = 512;
    }

    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  for (i = 0; i != v11; ++i)
  {
    IPTC_Manager::GetDataSet_UTF8(a1, a3, &__p, i);
    if (v14)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v17 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size >= 1)
      {
        v19 = (p_p + size);
        do
        {
          if (p_p->__r_.__value_.__s.__data_[0] == 13)
          {
            p_p->__r_.__value_.__s.__data_[0] = 10;
          }

          p_p = (p_p + 1);
        }

        while (p_p < v19);
        v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v17 = __p.__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        v20 = &__p;
      }

      else
      {
        v20 = v17;
      }

      TXMPMeta<std::string>::AppendArrayItem(a2, a4, a5, v12, v20, 0);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_186185A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::ImportIPTC_Date(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 55)
  {
    v5 = 60;
    v6 = "http://ns.adobe.com/photoshop/1.0/";
    v7 = "DateCreated";
  }

  else
  {
    if (a1 != 62)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Unrecognized dateID";
      *(exception + 16) = 0;
    }

    v5 = 63;
    v6 = "http://ns.adobe.com/xap/1.0/";
    v7 = "CreateDate";
  }

  v60 = 0uLL;
  IPTC_Manager::GetDataSet(a2, a1, &v60, 0);
  if (!v8 || !v60.n128_u32[1] || !v60.n128_u64[1])
  {
    return;
  }

  v9 = 3;
  if (v60.n128_u32[1] - 1 < 3)
  {
    v9 = v60.n128_u32[1] - 1;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v10 = *v60.n128_u64[1];
  if ((v10 - 58) < 0xFFFFFFF6)
  {
    v11 = 0;
LABEL_18:
    if (*(v60.n128_u64[1] + v11) == 45)
    {
      ++v11;
    }

    goto LABEL_20;
  }

  v12 = 0;
  v11 = 0;
  while (1)
  {
    v13 = v11;
    v12 = v10 + 10 * v12 - 48;
    LODWORD(v57) = v12;
    if (v9 == v11)
    {
      break;
    }

    v10 = *(v60.n128_u64[1] + 1 + v11++);
    if ((v10 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_17;
    }
  }

  v11 = v9 + 1;
LABEL_17:
  if (v13 + 1 < v60.n128_u32[1])
  {
    goto LABEL_18;
  }

LABEL_20:
  if (v11 >= v60.n128_u32[1])
  {
    DWORD1(v57) = 1;
    goto LABEL_34;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = *(v60.n128_u64[1] + v11);
    if ((v16 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v14 = v16 + 10 * v14 - 48;
    DWORD1(v57) = v14;
    v17 = ++v11 < v60.n128_u32[1];
    v18 = v15 & v17;
    v15 = 0;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = 1;
LABEL_27:
  if (v14 <= 0)
  {
    v19 = 1;
LABEL_31:
    DWORD1(v57) = v19;
    if (!v17)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v14 >= 0xD)
  {
    v19 = 12;
    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (*(v60.n128_u64[1] + v11) == 45)
  {
    ++v11;
  }

LABEL_34:
  if (v11 >= v60.n128_u32[1])
  {
    goto LABEL_41;
  }

  v20 = 0;
  v21 = 1;
  do
  {
    v22 = *(v60.n128_u64[1] + v11);
    if ((v22 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v20 = v22 + 10 * v20 - 48;
    DWORD2(v57) = v20;
    v23 = v21 & (++v11 < v60.n128_u32[1]);
    v21 = 0;
  }

  while ((v23 & 1) != 0);
  if (v20 < 1)
  {
LABEL_41:
    v24 = 1;
  }

  else
  {
    if (v20 < 0x20)
    {
      goto LABEL_43;
    }

    v24 = 28;
  }

  DWORD2(v57) = v24;
LABEL_43:
  if (v11 != v60.n128_u32[1])
  {
    return;
  }

  BYTE8(v58) = 1;
  IPTC_Manager::GetDataSet(a2, v5, &v60, 0);
  if (!v25 || !v60.n128_u32[1] || !v60.n128_u64[1])
  {
    goto LABEL_90;
  }

  v26 = 1;
  if (v60.n128_u32[1] == 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  v28 = *v60.n128_u64[1];
  if ((v28 - 58) >= 0xFFFFFFF6)
  {
    v29 = 0;
    v31 = 1;
    while (1)
    {
      v32 = v31;
      v29 = v28 + 10 * v29 - 48;
      HIDWORD(v57) = v29;
      if (v27 == v31)
      {
        break;
      }

      v28 = *(v60.n128_u64[1] + v31++);
      if ((v28 - 58) < 0xFFFFFFF6)
      {
        v27 = v32;
        break;
      }
    }

    v26 = v32 < v60.n128_u32[1];
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 0;
      goto LABEL_62;
    }
  }

  else
  {
    v29 = 0;
    v27 = 0;
  }

  if (v29 < 0x18)
  {
    goto LABEL_63;
  }

  v30 = 23;
LABEL_62:
  HIDWORD(v57) = v30;
LABEL_63:
  if (v26 && *(v60.n128_u64[1] + v27) == 58)
  {
    ++v27;
  }

  if (v27 >= v60.n128_u32[1])
  {
    goto LABEL_82;
  }

  v33 = 0;
  v34 = 1;
  do
  {
    v35 = *(v60.n128_u64[1] + v27);
    if ((v35 - 58) < 0xFFFFFFF6)
    {
      if ((v33 & 0x80000000) != 0)
      {
        v37 = 0;
      }

      else
      {
        if (v33 <= 0x3B)
        {
          goto LABEL_80;
        }

        v37 = 59;
      }

      LODWORD(v58) = v37;
LABEL_80:
      if (*(v60.n128_u64[1] + v27) == 58)
      {
        ++v27;
      }

      goto LABEL_82;
    }

    v33 = v35 + 10 * v33 - 48;
    LODWORD(v58) = v33;
    v36 = v34 & (++v27 < v60.n128_u32[1]);
    v34 = 0;
  }

  while ((v36 & 1) != 0);
  if ((v33 & 0x80000000) != 0)
  {
    LODWORD(v58) = 0;
  }

  else if (v33 > 0x3B)
  {
    LODWORD(v58) = 59;
  }

  if (v27 < v60.n128_u32[1])
  {
    goto LABEL_80;
  }

LABEL_82:
  if (v27 >= v60.n128_u32[1])
  {
    BYTE9(v58) = 1;
LABEL_90:
    TXMPMeta<std::string>::SetProperty_Date(a3, v6, v7, &v57, 0);
    return;
  }

  v38 = 0;
  v39 = 1;
  while (2)
  {
    v40 = *(v60.n128_u64[1] + v27);
    if ((v40 - 58) < 0xFFFFFFF6)
    {
      if ((v38 & 0x80000000) != 0)
      {
        v42 = 0;
      }

      else
      {
        if (v38 <= 0x3B)
        {
LABEL_97:
          BYTE9(v58) = 1;
          goto LABEL_100;
        }

        v42 = 59;
      }

      DWORD1(v58) = v42;
      goto LABEL_97;
    }

    v38 = v40 + 10 * v38 - 48;
    DWORD1(v58) = v38;
    v41 = v39 & (++v27 < v60.n128_u32[1]);
    v39 = 0;
    if (v41)
    {
      continue;
    }

    break;
  }

  if ((v38 & 0x80000000) != 0)
  {
    DWORD1(v58) = 0;
  }

  else if (v38 > 0x3B)
  {
    DWORD1(v58) = 59;
  }

  BYTE9(v58) = 1;
  if (v27 >= v60.n128_u32[1])
  {
    goto LABEL_90;
  }

LABEL_100:
  v43 = *(v60.n128_u64[1] + v27);
  if (v43 > 0x2A)
  {
    if (v43 == 43)
    {
      v44 = 1;
    }

    else
    {
      if (v43 != 45)
      {
        return;
      }

      v44 = -1;
    }

    BYTE11(v58) = v44;
    v45 = v27 + 1;
    if (v27 + 1 < v60.n128_u32[1])
    {
      v46 = *(v60.n128_u64[1] + v45);
      if ((v46 - 58) < 0xFFFFFFF6)
      {
        v47 = 0;
LABEL_116:
        if ((v47 & 0x80000000) != 0)
        {
          v49 = 0;
        }

        else
        {
          if (v47 <= 0x17)
          {
            goto LABEL_121;
          }

          v49 = 23;
        }

        HIDWORD(v58) = v49;
LABEL_121:
        v50 = v27 + 2;
        if (*(v60.n128_u64[1] + v45) == 58)
        {
          v45 = v50;
        }

        goto LABEL_123;
      }

      v47 = 0;
      v48 = 1;
      while (1)
      {
        v47 = v46 + 10 * v47 - 48;
        HIDWORD(v58) = v47;
        v45 = v27 + 2;
        if ((v48 & 1) == 0 || v45 >= v60.n128_u32[1])
        {
          break;
        }

        v48 = 0;
        v46 = *(v60.n128_u64[1] + 2 + v27++);
        if ((v46 - 58) < 0xFFFFFFF6)
        {
          v45 = v27 + 1;
          goto LABEL_116;
        }
      }

      ++v27;
      if ((v47 & 0x80000000) != 0)
      {
        HIDWORD(v58) = 0;
      }

      else if (v47 > 0x17)
      {
        HIDWORD(v58) = 23;
      }

      if (v45 < v60.n128_u32[1])
      {
        goto LABEL_121;
      }
    }

LABEL_123:
    if (v45 < v60.n128_u32[1])
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = *(v60.n128_u64[1] + v45);
        if ((v53 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v51 = v53 + 10 * v51 - 48;
        LODWORD(v59) = v51;
        v54 = v52 & (++v45 < v60.n128_u32[1]);
        v52 = 0;
      }

      while ((v54 & 1) != 0);
      if ((v51 & 0x80000000) != 0)
      {
        v55 = 0;
        goto LABEL_131;
      }

      if (v51 >= 0x3C)
      {
        v55 = 59;
LABEL_131:
        LODWORD(v59) = v55;
      }
    }

    if (v45 != v60.n128_u32[1])
    {
      return;
    }

    BYTE10(v58) = 1;
    goto LABEL_90;
  }

  if (!*(v60.n128_u64[1] + v27) || v43 == 32)
  {
    goto LABEL_90;
  }
}

void PhotoDataUtils::Import2WayIPTC(PhotoDataUtils *a1, uint64_t a2, uint64_t a3)
{
  memset(v33, 0, sizeof(v33));
  v32[0] = &unk_1EF4F1590;
  v32[1] = v33;
  if (!a3)
  {
    PhotoDataUtils::ExportIPTC(a2, v32);
  }

  v31 = 0uLL;
  if (kKnownDataSets[0] != 255)
  {
    v6 = 0;
    v7 = &__s1.__r_.__value_.__s.__data_[4];
    v8 = kKnownDataSets;
    while (1)
    {
      if (v8[1] > 3u)
      {
        goto LABEL_27;
      }

      DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a2, *(v8 + 2), *(v8 + 3));
      v10 = DoesPropertyExist;
      if (!PhotoDataUtils::GetNativeInfo(a1, *v8, a3, DoesPropertyExist, &v31) || v31.n128_u32[1] == 0)
      {
        goto LABEL_27;
      }

      if (a3 == 1 || a3 == -1)
      {
        if (v10)
        {
          goto LABEL_27;
        }
      }

      else if (!PhotoDataUtils::IsValueDifferent(a1, v32, *v8))
      {
        goto LABEL_27;
      }

      TXMPMeta<std::string>::DeleteProperty(a2, *(v8 + 2), *(v8 + 3));
      v12 = v8[1];
      if (v12 <= 1)
      {
        if (v8[1])
        {
          if (v12 == 1)
          {
            PhotoDataUtils::ImportIPTC_LangAlt(a1, a2, *v8, *(v8 + 2), *(v8 + 3));
          }
        }

        else
        {
          PhotoDataUtils::ImportIPTC_Simple(a1, a2, *v8, *(v8 + 2), *(v8 + 3));
        }

        goto LABEL_27;
      }

      if (v12 == 2)
      {
        PhotoDataUtils::ImportIPTC_Array(a1, a2, *v8, *(v8 + 2), *(v8 + 3));
        goto LABEL_27;
      }

      if (v12 == 3)
      {
        break;
      }

LABEL_27:
      ++v6;
      v8 = &kKnownDataSets[32 * v6];
      if (*v8 == 255)
      {
        goto LABEL_77;
      }
    }

    v13 = *v8;
    if (v13 != 4)
    {
      if (v13 != 12)
      {
        if (v13 != 55)
        {
          __assert_rtn("Import2WayIPTC", "ReconcileIPTC.cpp", 423, "false");
        }

        PhotoDataUtils::ImportIPTC_Date(55, a1, a2);
        goto LABEL_27;
      }

      memset(&__s1, 0, sizeof(__s1));
      IPTC_Manager::GetDataSet_UTF8(a1, 12, 0, 0);
      v15 = v14;
      if (!v14)
      {
        goto LABEL_27;
      }

      v16 = 0;
      do
      {
        IPTC_Manager::GetDataSet_UTF8(a1, 12, &__s1, v16);
        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s1 = &__s1;
        }

        else
        {
          p_s1 = __s1.__r_.__value_.__r.__words[0];
        }

        while (p_s1->__r_.__value_.__s.__data_[0])
        {
          if (p_s1->__r_.__value_.__s.__data_[0] == 58)
          {
            v18 = 0;
            do
            {
              v19 = p_s1->__r_.__value_.__s.__data_[++v18];
            }

            while (v19 != 58 && v19 != 0);
            if (v18 == 8)
            {
              p_s1->__r_.__value_.__s.__data_[8] = 0;
              TXMPMeta<std::string>::AppendArrayItem(a2, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode", 512, p_s1, 0);
            }

            break;
          }

          p_s1 = (p_s1 + 1);
        }

        ++v16;
      }

      while (v16 != v15);
      if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_73;
    }

    memset(&__s1, 0, sizeof(__s1));
    IPTC_Manager::GetDataSet_UTF8(a1, 4, &__s1, 0);
    v21 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if (!v22)
    {
LABEL_72:
      if ((v21 & 0x80) != 0)
      {
        goto LABEL_73;
      }

      goto LABEL_27;
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__s1;
    }

    else
    {
      v23 = __s1.__r_.__value_.__r.__words[0];
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __s1.__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v25 = (v23 + size);
      do
      {
        if (v23->__r_.__value_.__s.__data_[0] == 13)
        {
          v23->__r_.__value_.__s.__data_[0] = 10;
        }

        v23 = (v23 + 1);
      }

      while (v23 < v25);
      v21 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    }

    if ((v21 & 0x80) != 0)
    {
      v27 = __s1.__r_.__value_.__r.__words[0];
      if (__s1.__r_.__value_.__l.__size_ < 5)
      {
        goto LABEL_65;
      }

      v26 = __s1.__r_.__value_.__r.__words[0] + 4;
    }

    else
    {
      v26 = v7;
      if (v21 <= 4)
      {
        v27 = &__s1;
LABEL_65:
        if (!"001")
        {
          goto LABEL_72;
        }

        v30 = v7;
        v28 = kIntellectualGenreMappings;
        if (strncmp(v27, "001", 3uLL))
        {
          while (1)
          {
            v29 = v28[2];
            if (!v29)
            {
              break;
            }

            v28 += 2;
            if (!strncmp(v27, v29, 3uLL))
            {
              goto LABEL_69;
            }
          }

          v7 = v30;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_27;
          }

LABEL_73:
          operator delete(__s1.__r_.__value_.__l.__data_);
          goto LABEL_27;
        }

LABEL_69:
        v26 = v28[1];
        v7 = v30;
      }
    }

    TXMPMeta<std::string>::SetProperty(a2, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "IntellectualGenre", v26, 0);
    LOBYTE(v21) = *(&__s1.__r_.__value_.__s + 23);
    goto LABEL_72;
  }

LABEL_77:
  IPTC_Writer::~IPTC_Writer(v32);
}

void sub_186186488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IPTC_Writer::~IPTC_Writer(va);
  _Unwind_Resume(a1);
}

void PhotoDataUtils::ExportIPTC(uint64_t a1, uint64_t a2)
{
  LOBYTE(v2) = kKnownDataSets[0];
  if (kKnownDataSets[0] != 255)
  {
    v5 = 0;
    v6 = kKnownDataSets;
    do
    {
      v7 = v6[1];
      if (v7 <= 4)
      {
        if (v6[1] <= 1u)
        {
          if (!v6[1])
          {
            v19 = *(v6 + 2);
            v20 = *(v6 + 3);
            __p = 0;
            v51 = 0;
            v52 = 0;
            LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
            if (TXMPMeta<std::string>::GetProperty(a1, v19, v20, &__p, &__dst))
            {
              if ((__dst.__r_.__value_.__s.__data_[1] & 0x1F) == 0)
              {
                v21 = HIBYTE(v52);
                if (v52 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                if (v52 < 0)
                {
                  v21 = v51;
                }

                if (v21 >= 1)
                {
                  v23 = &p_p[v21];
                  do
                  {
                    if (*p_p == 10)
                    {
                      *p_p = 13;
                    }

                    ++p_p;
                  }

                  while (p_p < v23);
                }

                DataSet = IPTC_Manager::GetDataSet(a2, v2, 0, 0);
                if (v25 > 1)
                {
                  (*(*a2 + 8))(a2, v2, -1, DataSet);
                }

                if (v52 >= 0)
                {
                  v26 = &__p;
                }

                else
                {
                  v26 = __p;
                }

                if (v52 >= 0)
                {
                  v27 = HIBYTE(v52);
                }

                else
                {
                  v27 = v51;
                }

                (**a2)(a2, v2, v26, v27, 0);
              }
            }

            else
            {
              (*(*a2 + 8))(a2, v2, -1);
            }

            goto LABEL_100;
          }

          ExportIPTC_LangAlt(a1, a2, *(v6 + 2), *(v6 + 3), v2);
        }

        else if (v7 == 2)
        {
          ExportIPTC_Array(a1, a2, *(v6 + 2), *(v6 + 3), v2);
        }

        else
        {
          if (v7 == 3)
          {
            if (v2 != 55)
            {
              if (v2 == 12)
              {
                __p = 0;
                v51 = 0;
                v52 = 0;
                memset(&__dst, 0, sizeof(__dst));
                v48 = 0;
                if (TXMPMeta<std::string>::GetProperty(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode", 0, &v48))
                {
                  if ((v48 & 0x200) != 0)
                  {
                    v30 = TXMPMeta<std::string>::CountArrayItems(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode");
                    v31 = IPTC_Manager::GetDataSet(a2, 12, 0, 0);
                    if (v30 != v32)
                    {
                      (*(*a2 + 8))(a2, 12, -1, v31);
                    }

                    if (v30 >= 1)
                    {
                      v33 = 0;
                      v34 = v30;
                      do
                      {
                        v35 = v33 + 1;
                        TXMPMeta<std::string>::GetArrayItem(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode", v33 + 1, &__p, &v48);
                        if ((v48 & 0x1F00) == 0)
                        {
                          v36 = HIBYTE(v52);
                          if (v52 < 0)
                          {
                            v36 = v51;
                          }

                          if (v36 == 8)
                          {
                            MEMORY[0x186602520](&__dst, "IPTC:");
                            if (v52 >= 0)
                            {
                              v37 = &__p;
                            }

                            else
                            {
                              v37 = __p;
                            }

                            if (v52 >= 0)
                            {
                              v38 = HIBYTE(v52);
                            }

                            else
                            {
                              v38 = v51;
                            }

                            std::string::append(&__dst, v37, v38);
                            std::string::append(&__dst, ":::");
                            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              p_dst = &__dst;
                            }

                            else
                            {
                              p_dst = __dst.__r_.__value_.__r.__words[0];
                            }

                            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v40 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              v40 = LODWORD(__dst.__r_.__value_.__r.__words[1]);
                            }

                            (**a2)(a2, 12, p_dst, v40, v33);
                          }
                        }

                        ++v33;
                      }

                      while (v34 != v35);
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_119;
                      }
                    }
                  }
                }

                else
                {
                  (*(*a2 + 8))(a2, 12, -1);
                }
              }

              else
              {
                if (v2 != 4)
                {
                  v28 = 776;
LABEL_121:
                  __assert_rtn("ExportIPTC", "ReconcileIPTC.cpp", v28, "false");
                }

                __p = 0;
                v51 = 0;
                v52 = 0;
                v48 = 0;
                if (TXMPMeta<std::string>::GetProperty(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "IntellectualGenre", &__p, &v48))
                {
                  if ((v48 & 0x1F00) == 0)
                  {
                    v8 = HIBYTE(v52);
                    v9 = HIBYTE(v52);
                    v10 = __p;
                    if (v52 >= 0)
                    {
                      v11 = &__p;
                    }

                    else
                    {
                      v11 = __p;
                    }

                    if (v52 < 0)
                    {
                      v8 = v51;
                    }

                    if (v8 >= 1)
                    {
                      v12 = &v11[v8];
                      do
                      {
                        if (*v11 == 10)
                        {
                          *v11 = 13;
                        }

                        ++v11;
                      }

                      while (v11 < v12);
                      v9 = HIBYTE(v52);
                      v10 = __p;
                    }

                    v13 = (v9 >= 0 ? &__p : v10);
                    if ("Current")
                    {
                      v14 = kIntellectualGenreMappings;
                      if (strcmp(v13, "Current"))
                      {
                        do
                        {
                          v15 = v14[3];
                          if (!v15)
                          {
                            goto LABEL_100;
                          }

                          v14 += 2;
                        }

                        while (strcmp(v13, v15));
                      }

                      memset(&__dst, 0, sizeof(__dst));
                      v16 = *v14;
                      v17 = strlen(v16);
                      if (v17 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        std::string::__throw_length_error[abi:fe200100]();
                      }

                      v18 = v17;
                      if (v17 >= 0x17)
                      {
                        operator new();
                      }

                      *(&__dst.__r_.__value_.__s + 23) = v17;
                      if (v17)
                      {
                        memmove(&__dst, v16, v17);
                      }

                      __dst.__r_.__value_.__s.__data_[v18] = 0;
                      std::string::push_back(&__dst, 58);
                      if (v52 >= 0)
                      {
                        v42 = &__p;
                      }

                      else
                      {
                        v42 = __p;
                      }

                      if (v52 >= 0)
                      {
                        v43 = HIBYTE(v52);
                      }

                      else
                      {
                        v43 = v51;
                      }

                      std::string::append(&__dst, v42, v43);
                      v44 = IPTC_Manager::GetDataSet(a2, 4, 0, 0);
                      if (v45 > 1)
                      {
                        (*(*a2 + 8))(a2, 4, -1, v44);
                      }

                      v46 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
                      v47 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : LODWORD(__dst.__r_.__value_.__r.__words[1]);
                      (**a2)(a2, 4, v46, v47, 0);
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
LABEL_119:
                        operator delete(__dst.__r_.__value_.__l.__data_);
                      }
                    }
                  }
                }

                else
                {
                  (*(*a2 + 8))(a2, 4, -1);
                }
              }

LABEL_100:
              if (SHIBYTE(v52) < 0)
              {
                operator delete(__p);
              }

              goto LABEL_4;
            }

            goto LABEL_97;
          }

          v28 = 792;
          if (v2 > 0x73u)
          {
            v29 = "rights";
            if (v2 != 116)
            {
              if (v2 != 120)
              {
                goto LABEL_121;
              }

              v29 = "description";
            }

            ExportIPTC_LangAlt(a1, a2, "http://purl.org/dc/elements/1.1/", v29, v2);
          }

          else if (v2 == 62)
          {
            IPTC_Manager::GetDataSet(a2, 62, 0, 0);
            if (v41)
            {
              LOBYTE(v2) = *v6;
LABEL_97:
              ExportIPTC_Date(v2, a1, a2);
            }
          }

          else
          {
            if (v2 != 80)
            {
              goto LABEL_121;
            }

            ExportIPTC_Array(a1, a2, "http://purl.org/dc/elements/1.1/", "creator", 80);
          }
        }
      }

LABEL_4:
      ++v5;
      v6 = &kKnownDataSets[32 * v5];
      v2 = *v6;
    }

    while (v2 != 255);
  }
}

void PhotoDataUtils::ImportPSIR(unsigned int (***a1)(void, uint64_t, void **), uint64_t a2, int a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3 != 1)
  {
    if ((**a1)(a1, 1034, &v9))
    {
      DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/xap/1.0/rights/", "Marked");
      v6 = HIDWORD(v9) != 1 || DoesPropertyExist;
      if (!v6 && *v10)
      {
        TXMPMeta<std::string>::SetProperty_Bool(a2, "http://ns.adobe.com/xap/1.0/rights/", "Marked", 1, 0);
      }
    }

    if ((**a1)(a1, 1035, &v9) && !TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/xap/1.0/rights/", "WebStatement"))
    {
      memset(&__p, 0, sizeof(__p));
      if (ReconcileUtils::IsUTF8(v10, HIDWORD(v9)))
      {
        MEMORY[0x186602530](&__p, v10, HIDWORD(v9));
      }

      else
      {
        if (ignoreLocalText)
        {
          return;
        }

        ReconcileUtils::LocalToUTF8(v10, HIDWORD(v9), &__p);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/xap/1.0/rights/", "WebStatement", p_p, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_186186E30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186186E20);
}

void sub_186186E5C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186186D44);
}

void ExportIPTC_LangAlt(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  if (!TXMPMeta<std::string>::GetProperty(a1, a3, a4, 0, &v17))
  {
    goto LABEL_20;
  }

  if ((v17 & 0x1000) == 0)
  {
    goto LABEL_21;
  }

  if (TXMPMeta<std::string>::GetLocalizedText(a1, a3, a4, "", "x-default", 0, &__p, 0))
  {
    v10 = HIBYTE(v20);
    p_p = &__p;
    if (v20 < 0)
    {
      p_p = __p;
      v10 = v19;
    }

    if (v10 >= 1)
    {
      v12 = &p_p[v10];
      do
      {
        if (*p_p == 10)
        {
          *p_p = 13;
        }

        ++p_p;
      }

      while (p_p < v12);
    }

    DataSet = IPTC_Manager::GetDataSet(a2, a5, 0, 0);
    if (v14 > 1)
    {
      (*(*a2 + 8))(a2, a5, -1, DataSet);
    }

    if (v20 >= 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if (v20 >= 0)
    {
      v16 = HIBYTE(v20);
    }

    else
    {
      v16 = v19;
    }

    (**a2)(a2, a5, v15, v16, 0);
  }

  else
  {
LABEL_20:
    (*(*a2 + 8))(a2, a5, -1);
  }

LABEL_21:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }
}

void sub_186187034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ExportIPTC_Array(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  if (TXMPMeta<std::string>::GetProperty(a1, a3, a4, 0, &v25))
  {
    if ((v25 & 0x200) != 0)
    {
      v10 = TXMPMeta<std::string>::CountArrayItems(a1, a3, a4);
      DataSet = IPTC_Manager::GetDataSet(a2, a5, 0, 0);
      if (v10 != v12)
      {
        (*(*a2 + 8))(a2, a5, -1, DataSet);
      }

      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10;
        do
        {
          v15 = v13 + 1;
          TXMPMeta<std::string>::GetArrayItem(a1, a3, a4, v13 + 1, &__p, &v25);
          if ((v25 & 0x1F00) == 0)
          {
            v16 = HIBYTE(v28);
            v17 = HIBYTE(v28);
            v19 = __p;
            v18 = v27;
            if (v28 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v28 >= 0)
            {
              v21 = HIBYTE(v28);
            }

            else
            {
              v21 = v27;
            }

            if (v21 >= 1)
            {
              v22 = &p_p[v21];
              do
              {
                if (*p_p == 10)
                {
                  *p_p = 13;
                }

                ++p_p;
              }

              while (p_p < v22);
              v16 = HIBYTE(v28);
              v19 = __p;
              v18 = v27;
              v17 = HIBYTE(v28);
            }

            if (v17 >= 0)
            {
              v23 = &__p;
            }

            else
            {
              v23 = v19;
            }

            if (v17 >= 0)
            {
              v24 = v16;
            }

            else
            {
              v24 = v18;
            }

            (**a2)(a2, a5, v23, v24, v13);
          }

          ++v13;
        }

        while (v15 != v14);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    (*(*a2 + 8))(a2, a5, -1);
  }
}

uint64_t ExportIPTC_Date(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 == 55)
  {
    v6 = 60;
    v7 = "http://ns.adobe.com/photoshop/1.0/";
    v8 = "DateCreated";
  }

  else
  {
    if (a1 != 62)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Unrecognized dateID";
      *(exception + 16) = 0;
    }

    v6 = 63;
    v7 = "http://ns.adobe.com/xap/1.0/";
    v8 = "CreateDate";
  }

  (*(*a3 + 8))(a3, a1, -1);
  (*(*a3 + 8))(a3, v6, -1);
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  result = TXMPMeta<std::string>::GetProperty_Date(a2, v7, v8, &v12, 0);
  if (result)
  {
    *__str = 0;
    v16 = 0;
    snprintf(__str, 0x10uLL, "%04d%02d%02d", v12, DWORD1(v12), DWORD2(v12));
    (**a3)(a3, a1, __str, 8, -1);
    if (BYTE10(v13))
    {
      v10 = 43;
      if (BYTE11(v13) == 255)
      {
        v10 = 45;
      }

      snprintf(__str, 0x10uLL, "%02d%02d%02d%c%02d%02d", HIDWORD(v12), v13, DWORD1(v13), v10, HIDWORD(v13), v14);
      return (**a3)(a3, v6, __str, 11, -1);
    }

    else if (BYTE9(v13))
    {
      snprintf(__str, 0x10uLL, "%02d%02d%02d", HIDWORD(v12), v13, DWORD1(v13));
      return (**a3)(a3, v6, __str, 6, -1);
    }

    else
    {
      return (*(*a3 + 8))(a3, v6, -1);
    }
  }

  return result;
}

void PhotoDataUtils::ExportPSIR(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/xap/1.0/rights/", "Marked", &__p, 0))
  {
    v12.__r_.__value_.__s.__data_[0] = TXMPUtils<std::string>::ConvertToBool(&__p);
    (*(*a2 + 8))(a2, 1034, &v12, 1);
  }

  else
  {
    (*(*a2 + 16))(a2, 1034);
  }

  if (!TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/xap/1.0/rights/", "WebStatement", &__p, 0))
  {
    goto LABEL_20;
  }

  if (ignoreLocalText)
  {
    if (v15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v15 >= 0)
    {
      v5 = HIBYTE(v15);
    }

    else
    {
      v5 = v14;
    }

    if (ReconcileUtils::IsASCII(p_p, v5))
    {
      if (v15 >= 0)
      {
        v6 = &__p;
      }

      else
      {
        v6 = __p;
      }

      if (v15 >= 0)
      {
        v7 = HIBYTE(v15);
      }

      else
      {
        v7 = v14;
      }

      (*(*a2 + 8))(a2, 1035, v6, v7);
      goto LABEL_21;
    }

LABEL_20:
    (*(*a2 + 16))(a2, 1035);
    goto LABEL_21;
  }

  memset(&v12, 0, sizeof(v12));
  if (v15 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14;
  }

  ReconcileUtils::UTF8ToLocal(v8, v9, &v12);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = LODWORD(v12.__r_.__value_.__r.__words[1]);
  }

  (*(*a2 + 8))(a2, 1035, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1861877D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186187728);
}

void sub_186187810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AdobeXMPCore_Int::ErrorImpl::ErrorImpl(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *(a1 + 104) = &unk_1EF50DE00;
  *a1 = &unk_1EF50D960;
  *(a1 + 96) = off_1EF50DAB0;
  *(a1 + unk_1EF50D828) = &unk_1EF50DB10;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *a1 = &unk_1EF50D588;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_1EF50D6D8;
  *(a1 + 104) = &unk_1EF50D740;
  *(a1 + 8) = a3;
  *(a1 + 12) = a2;
  *(a1 + 16) = a4;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void AdobeXMPCore_Int::ErrorImpl::~ErrorImpl(AdobeXMPCore_Int::ErrorImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 344)) = a2[1];
  *(this + *(*this - 304)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 312)) = a2[5];
  *(this + *(*this - 352)) = a2[6];
  v4 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }

  v10 = (this + 56);
  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&v10);
  v8 = *(this + 6);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }
}

void AdobeXMPCore_Int::ErrorImpl::~ErrorImpl(AdobeXMPCore_Int::ErrorImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 104), off_1EF50D7F8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 104), off_1EF50D7F8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ErrorImpl::~ErrorImpl(void *a1)
{
  v2 = (v1 + 104);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF50D7F8);
}

{
  AdobeXMPCore_Int::ErrorImpl::~ErrorImpl((a1 + *(*a1 - 48)));
}

void virtual thunk toAdobeXMPCore_Int::ErrorImpl::~ErrorImpl(AdobeXMPCore_Int::ErrorImpl *this)
{
  v2 = (v1 + 104);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF50D7F8);
}

{
  AdobeXMPCore_Int::ErrorImpl::~ErrorImpl((this + *(*this - 24)));
}

uint64_t AdobeXMPCore_Int::ErrorImpl::GetMessage@<X0>(uint64_t this@<X0>, void *a2@<X8>)
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

uint64_t AdobeXMPCore_Int::ErrorImpl::GetLocation@<X0>(uint64_t this@<X0>, void *a2@<X8>)
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

uint64_t AdobeXMPCore_Int::ErrorImpl::GetParameter@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = a2;
  v3 = *(this + 56);
  if (a2 >= (*(this + 64) - v3) >> 4)
  {
    v5 = 0;
    v6 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v4 = *(v3 + 16 * a2);
  *a3 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_186187FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::ErrorImpl::GetNextError@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 88);
  *a2 = *(this + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AdobeXMPCore_Int::ErrorImpl::SetNextError(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 88);
  *a3 = *(a1 + 80);
  a3[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 88);
  *(a1 + 80) = v5;
  *(a1 + 88) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void AdobeXMPCore_Int::ErrorImpl::SetMessage(AdobeXMPCore_Int::ErrorImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3)
{
  v3 = *(this + 5);
  if (!v3)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, a3);
  }

  (*(*v3 + 56))(&v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }
}

uint64_t AdobeXMPCore_Int::ErrorImpl::SetLocation(AdobeXMPCore_Int::ErrorImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, uint64_t a3)
{
  v5 = *(this + 3);
  if (!v5)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(a2, 0xFFFFFFFFFFFFFFFFLL);
  }

  (*(*v5 + 56))(&v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  (*(**(this + 3) + 40))(&v26);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](&v18);
  MEMORY[0x1866026A0](&v19, a3);
  v6 = *(this + 3);
  std::stringbuf::str();
  std::stringbuf::str();
  if (v15 >= 0)
  {
    v7 = &v14;
  }

  else
  {
    v7 = v14;
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  (*(*v6 + 40))(&v16, v6, v7, v8);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  *&v18 = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v19 = v9;
  *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1866027D0](v24);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:fe200100]((a1 + 3), 24);
  return a1;
}

void sub_1861887A8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](a1 + 128);
  return a1;
}

void sub_186188A44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&a9 + 1));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::ErrorImpl::AppendParameter(AdobeXMPCore_Int::ErrorImpl *this, void *a2)
{
  v30 = 0;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](&v23);
  *(&v23 + *(v23 - 24) + 8) |= 8u;
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  *v15 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](v15);
  *(&v15[1] + *(v15[0] - 3)) |= 8u;
  v4 = std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v16, "0x", 2);
  MEMORY[0x186602640](v4, a2);
  std::stringbuf::str();
  v5 = MEMORY[0x1E69E54D8];
  if (v14 < 0)
  {
    operator delete(__p);
    if (v13 < 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v14 > 4u)
  {
LABEL_5:
    std::stringbuf::str();
  }

LABEL_6:
  v6 = *v5;
  v15[0] = *v5;
  v7 = v5[8];
  v8 = v5[9];
  *(v15 + *(v15[0] - 3)) = v7;
  *&v16 = v8;
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](v21);
  v9 = std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v24, "0x", 2);
  MEMORY[0x186602640](v9, a2);
  std::stringbuf::str();
  if ((SBYTE7(v16) & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v15[0];
  }

  (*(*this + 128))(this, v10, -1);
  if (SBYTE7(v16) < 0)
  {
    operator delete(v15[0]);
  }

  *&v23 = v6;
  *(&v23 + *(v6 - 3)) = v7;
  *&v24 = v8;
  *(&v24 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*(&v26 + 1));
  }

  *(&v24 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x1866027D0](v29);
}

void sub_18618903C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a49);
  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<double>(uint64_t a1, double *a2)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v8);
  v4 = v8;
  *(&v9[-1] + *(v8 - 24) + 8) = *(&v9[-1] + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v9 + *(v4 - 24)) = 6;
  MEMORY[0x186602650](&v8, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *&v8 = *MEMORY[0x1E69E54E8];
  *(&v9[-1] + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v8 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  *(&v8 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v13);
}

void sub_1861892B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1866027D0](a1 + 112);
  return a1;
}

uint64_t AdobeXMPCore_Int::TAppendParameter<float>(uint64_t a1)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v6 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v6);
  v2 = v6;
  *(&v7[-1] + *(v6 - 24) + 8) = *(&v7[-1] + *(v6 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v7 + *(v2 - 24)) = 6;
  std::ostream::operator<<();
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  *&v6 = *MEMORY[0x1E69E54E8];
  *(&v7[-1] + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v6 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  *(&v6 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v11);
}

void sub_186189628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ErrorImpl::AppendParameter(AdobeXMPCore_Int::ErrorImpl *this, unsigned int *a2)
{
  return AdobeXMPCore_Int::TAppendParameter<unsigned int>(this, a2);
}

{
  return AdobeXMPCore_Int::TAppendParameter<int>(this, a2);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x186602680](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<unsigned long long>(uint64_t a1, void *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x1866026A0](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<int>(uint64_t a1, unsigned int *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x186602670](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<long long>(uint64_t a1, void *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x186602690](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::ErrorImpl>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  if (a1 || !a4)
  {
    (**&a1[*(*a1 - 352)])(&a1[*(*a1 - 352)]);

    std::shared_ptr<AdobeXMPCore_Int::ErrorImpl>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::ErrorImpl,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(a5, a1);
  }

  v12 = 0;
  v13 = 0;
  AdobeXMPCore_Int::IError_I::CreateError(&v12, 1, 6, 2);
  v9 = v12;
  (*(*&v12[*(*v12 - 304)] + 120))(&v12[*(*v12 - 304)], a2, a3);
  (*(*&v9[*(*v9 - 304)] + 112))(&v9[*(*v9 - 304)], "NULL pointer provided for creating shared pointer", -1);
  exception = __cxa_allocate_exception(0x10uLL);
  v11 = v13;
  *exception = v9;
  exception[1] = v11;
}

void *std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x186602610](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
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

    if (!std::__pad_and_output[abi:fe200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x186602620](v13);
  return a1;
}

void sub_18618A1D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x186602620](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x18618A1B8);
}

uint64_t std::__pad_and_output[abi:fe200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:fe200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
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

void sub_18618A414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18618A4AC(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 352) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::ErrorImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ErrorImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ErrorImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ErrorImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 352) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ErrorImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ErrorImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void PSIR_FileWriter::DeleteExistingInfo(PSIR_FileWriter *this)
{
  if (*(this + 10) == 1)
  {
    if (*(this + 11))
    {
      PSIR_FileWriter::DeleteExistingInfo();
    }

    if (*(this + 12) == 1)
    {
      free(*(this + 3));
    }
  }

  else if (*(this + 11))
  {
    v2 = *(this + 4);
    if (v2 != (this + 40))
    {
      do
      {
        *(v2 + 40) = 1;
        v3 = *(v2 + 1);
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = *(v2 + 2);
            v5 = *v4 == v2;
            v2 = v4;
          }

          while (!v5);
        }

        v2 = v4;
      }

      while (v4 != (this + 40));
    }
  }

  v7 = *(this + 5);
  v6 = (this + 40);
  std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 2) = 0;
  *(v6 - 1) = v6;
  *(v6 - 6) = 0;
  *(v6 - 8) = 0;
  *(v6 - 28) = 0;
}

void PSIR_FileWriter::~PSIR_FileWriter(PSIR_FileWriter *this)
{
  *this = &unk_1EF50DFF0;
  if (*(this + 10) == 1 && (*(this + 11) & 1) != 0)
  {
    v4 = "! (this->memParsed && this->fileParsed)";
    v5 = 76;
    goto LABEL_11;
  }

  if (*(this + 12) != 1)
  {
    goto LABEL_6;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    v4 = "this->memContent != 0";
    v5 = 79;
LABEL_11:
    __assert_rtn("~PSIR_FileWriter", "PSIR_FileWriter.cpp", v5, v4);
  }

  free(v2);
LABEL_6:
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(this + 32, *(this + 5));
}

{
  PSIR_FileWriter::~PSIR_FileWriter(this);

  JUMPOUT(0x186602850);
}

uint64_t PSIR_FileWriter::GetImgRsrc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v3 = a1 + 40;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(v6 + 42);
    *(a3 + 4) = *(v6 + 44);
    *(a3 + 8) = *(v6 + 48);
    *(a3 + 16) = *(v6 + 56);
  }

  return 1;
}

uint64_t PSIR_FileWriter::SetImgRsrc(PSIR_FileWriter *this, unsigned int a2, const void *__s2, size_t __n)
{
  v4 = __n;
  v8 = (this + 40);
  v7 = *(this + 5);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = (this + 40);
  do
  {
    v10 = *(v7 + 16);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = v7[v12];
  }

  while (v7);
  if (v9 != v8 && *(v9 + 16) <= a2)
  {
    if (*(v9 + 11) == __n)
    {
      result = memcmp(v9[6], __s2, __n);
      if (!result)
      {
        return result;
      }
    }

    v14 = (v9 + 5);
    if ((*(v9 + 41) & 1) != 0 || *v14 == 1)
    {
      v17 = v9[6];
      if (v17)
      {
        free(v17);
        v9[6] = 0;
      }
    }

    *(v9 + 11) = v4;
  }

  else
  {
LABEL_9:
    v13 = *(this + 11);
    LOBYTE(v19[0]) = 0;
    BYTE1(v19[0]) = v13;
    WORD1(v19[0]) = a2;
    HIDWORD(v19[0]) = __n;
    v19[1] = 0;
    LODWORD(v20) = 0;
    v21 = 0;
    v23[0] = v19[0];
    v23[1] = v20;
    v22 = a2;
    PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v19);
    v14 = std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(v8 - 1, v8, &v22) + 40;
    PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v23);
  }

  *v14 = 1;
  v15 = malloc_type_malloc(v4, 0xA6A8DB08uLL);
  *(v14 + 8) = v15;
  if (!v15)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    exception[1] = "Out of memory";
    *(exception + 16) = 0;
  }

  result = memcpy(v15, __s2, v4);
  *(this + 8) = 1;
  return result;
}

uint64_t PSIR_FileWriter::DeleteImgRsrc(uint64_t this, unsigned int a2)
{
  v9 = a2;
  v2 = this + 40;
  v3 = *(this + 40);
  if (v3)
  {
    v4 = this;
    this += 32;
    v5 = v2;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= a2)
    {
      this = std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__erase_unique<unsigned short>(this, &v9);
      *(v4 + 8) = 1;
      if (v9 != 1060)
      {
        *(v4 + 9) = 1;
      }
    }
  }

  return this;
}

uint64_t PSIR_FileWriter::IsLegacyChanged(PSIR_FileWriter *this)
{
  if (*(this + 8) == 1)
  {
    if (*(this + 9))
    {
      return 1;
    }

    v2 = *(this + 4);
    if (v2 != (this + 40))
    {
      while (*(v2 + 40) != 1 || *(v2 + 21) == 1060)
      {
        v3 = *(v2 + 1);
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = *(v2 + 2);
            v5 = *v4 == v2;
            v2 = v4;
          }

          while (!v5);
        }

        v2 = v4;
        if (v4 == (this + 40))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

void PSIR_FileWriter::ParseMemoryResources(char **this, char *a2, unsigned int a3, char a4)
{
  PSIR_FileWriter::DeleteExistingInfo(this);
  *(this + 10) = 1;
  if (!a3)
  {
    return;
  }

  if ((a4 & 1) == 0)
  {
    this[3] = a2;
    if (*(this + 12))
    {
      PSIR_FileWriter::ParseMemoryResources();
    }

    v8 = a3;
    goto LABEL_8;
  }

  if (a3 >= 0x6400001)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 209;
    v31 = "Outrageous length for memory-based PSIR";
    goto LABEL_44;
  }

  v8 = a3;
  v9 = malloc_type_malloc(a3, 0x100004077774924uLL);
  this[3] = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    v31 = "Out of memory";
LABEL_44:
    exception[1] = v31;
    *(exception + 16) = 0;
  }

  memcpy(v9, a2, a3);
  *(this + 12) = 1;
  a2 = this[3];
LABEL_8:
  *(this + 4) = a3;
  v10 = &a2[v8];
  v11 = &a2[v8 - 12];
  if (a2 <= v11)
  {
    v12 = this + 5;
    do
    {
      v13 = a2[6];
      v14 = &a2[((v13 + 2) & 0x1FE) + 6];
      if (v14 > v10 - 1)
      {
        break;
      }

      v17 = *v14;
      v16 = v14 + 1;
      v15 = v17;
      v18 = bswap32(v17);
      if (v18 > a3 || v16 > (v10 - v18))
      {
        break;
      }

      v20 = this[3];
      v21 = v16 + ((v18 + 1) & 0xFFFFFFFE);
      if (*a2 == 1296646712)
      {
        v22 = bswap32(*(a2 + 2)) >> 16;
        LOWORD(v34) = 0;
        v35 = 0u;
        WORD1(v34) = v22;
        DWORD1(v34) = v18;
        *(&v34 + 1) = v16;
        LODWORD(v35) = v16 - v20;
        if (v13)
        {
          *(&v35 + 1) = a2 + 6;
        }

        v23 = *v12;
        if (!*v12)
        {
          goto LABEL_27;
        }

        v24 = this + 5;
        do
        {
          v25 = *(v23 + 16);
          v26 = v25 >= v22;
          v27 = v25 < v22;
          if (v26)
          {
            v24 = v23;
          }

          v23 = *&v23[8 * v27];
        }

        while (v23);
        if (v24 != v12 && v22 >= *(v24 + 16))
        {
          if (v15 && !*(v24 + 11))
          {
            if ((*(v24 + 41) & 1) != 0 || *(v24 + 40) == 1)
            {
              v28 = v24[6];
              if (v28)
              {
                free(v28);
                v24[6] = 0;
              }
            }

            v29 = v35;
            *(v24 + 5) = v34;
            *(v24 + 7) = v29;
            *(&v34 + 1) = 0;
            *(&v35 + 1) = 0;
          }
        }

        else
        {
LABEL_27:
          LOWORD(v32) = v22;
          v33[0] = v34;
          v33[1] = v35;
          std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(this + 4, this + 5, &v32);
          PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v33);
        }

        PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(&v34);
      }

      else
      {
        if ((v21 - a2))
        {
          PSIR_FileWriter::ParseMemoryResources();
        }

        LODWORD(v32) = a2 - v20;
        HIDWORD(v32) = v21 - a2;
        std::vector<PSIR_FileWriter::OtherRsrcInfo>::push_back[abi:fe200100]((this + 7), &v32);
      }

      a2 = v21;
    }

    while (v21 <= v11);
  }
}

void sub_18618ADAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((v7 + 8));
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(va);
  _Unwind_Resume(a1);
}

void std::vector<PSIR_FileWriter::OtherRsrcInfo>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void PSIR_FileWriter::ParseFileResources(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  PSIR_FileWriter::DeleteExistingInfo(a1);
  v37 = a1;
  *(a1 + 11) = 1;
  if (a3)
  {
    v6 = (*(*a2 + 16))(a2, 0, 1) + a3;
    v44 = 0;
    memset(__src, 0, sizeof(__src));
    v36 = v6;
    if ((*(*a2 + 16))(a2, 0, 1) < v6)
    {
      v35 = a1 + 5;
      while (1)
      {
        v7 = (*(*a2 + 24))(a2);
        if (v7 - (*(*a2 + 16))(a2, 0, 1) < 12)
        {
          return;
        }

        v8 = (*(*a2 + 16))(a2, 0, 1);
        LODWORD(v39) = 0;
        (**a2)(a2, &v39, 4, 1);
        v9 = v39;
        LOWORD(v39) = 0;
        (**a2)(a2, &v39, 2, 1);
        v38 = v39;
        LOBYTE(v39) = 0;
        (**a2)(a2, &v39, 1, 1);
        v10 = v39;
        v11 = (*(*a2 + 24))(a2);
        v12 = (v10 + 2) & 0x1FE;
        if (v11 - (*(*a2 + 16))(a2, 0, 1) < v12 + 4)
        {
          return;
        }

        LOBYTE(__src[0]) = v10;
        (**a2)(a2, __src + 1, (v12 - 1), 1);
        LODWORD(v39) = 0;
        (**a2)(a2, &v39, 4, 1);
        v13 = v39;
        v14 = (*(*a2 + 24))(a2);
        v15 = bswap32(v13);
        v16 = (v15 + 1) & 0xFFFFFFFE;
        if (v14 - (*(*a2 + 16))(a2, 0, 1) < v16)
        {
          return;
        }

        v17 = (*(*a2 + 16))(a2, 0, 1);
        v18 = v17;
        v19 = v17 + v16;
        if (v9 == 1296646712)
        {
          break;
        }

        LODWORD(v39) = v8;
        HIDWORD(v39) = v19 - v8;
        std::vector<PSIR_FileWriter::OtherRsrcInfo>::push_back[abi:fe200100]((v37 + 7), &v39);
        (*(*a2 + 16))(a2, v19, 0);
LABEL_30:
        if ((*(*a2 + 16))(a2, 0, 1) >= v36)
        {
          return;
        }
      }

      v20 = __rev16(v38);
      v41 = 0u;
      v42 = 0u;
      BYTE1(v41) = 1;
      WORD1(v41) = v20;
      DWORD1(v41) = v15;
      LODWORD(v42) = 0;
      v21 = *v35;
      if (!*v35)
      {
        goto LABEL_16;
      }

      v22 = v35;
      do
      {
        v23 = *(v21 + 32);
        v24 = v23 >= v20;
        v25 = v23 < v20;
        if (v24)
        {
          v22 = v21;
        }

        v21 = *(v21 + 8 * v25);
      }

      while (v21);
      if (v22 != v35 && v20 >= *(v22 + 32))
      {
        if (*(v22 + 44))
        {
          v31 = 1;
        }

        else
        {
          v31 = v13 == 0;
        }

        if (v31)
        {
          goto LABEL_28;
        }

        if ((*(v22 + 41) & 1) != 0 || *(v22 + 40) == 1)
        {
          v32 = *(v22 + 48);
          if (v32)
          {
            free(v32);
            *(v22 + 48) = 0;
          }
        }

        v33 = v42;
        *(v22 + 40) = v41;
        *(v22 + 56) = v33;
        *(&v41 + 1) = 0;
        *(&v42 + 1) = 0;
      }

      else
      {
LABEL_16:
        LOWORD(v39) = v20;
        v40[0] = v41;
        v40[1] = v42;
        v22 = std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(v37 + 4, v35, &v39);
        PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v40);
      }

      *(v22 + 56) = v18;
      if (v10)
      {
        v26 = malloc_type_malloc((v10 + 2) & 0x1FE, 0x100004077774924uLL);
        *(v22 + 64) = v26;
        if (!v26)
        {
          goto LABEL_44;
        }

        memcpy(v26, __src, (v10 + 2) & 0x1FE);
      }

      if (v38)
      {
        v27 = &word_1862F1C56;
        do
        {
          v28 = *v27++;
          v29 = v28 == v20;
        }

        while (v28 > v20);
        if (v29)
        {
          v30 = malloc_type_malloc((v15 + 1) & 0xFFFFFFFE, 0xFCD8C27AuLL);
          *(v22 + 48) = v30;
          if (!v30)
          {
LABEL_44:
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 15;
            exception[1] = "Out of memory";
            *(exception + 16) = 0;
          }

          (**a2)(a2, v30, (v15 + 1) & 0xFFFFFFFE, 1);
          goto LABEL_29;
        }
      }

LABEL_28:
      (*(*a2 + 16))(a2, v19, 0);
LABEL_29:
      PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(&v41);
      goto LABEL_30;
    }
  }
}

void sub_18618B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(va);
  _Unwind_Resume(a1);
}

uint64_t PSIR_FileWriter::UpdateMemoryResources(PSIR_FileWriter *this, void **a2)
{
  if (*(this + 11) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v37 = "Not memory based";
    goto LABEL_49;
  }

  v3 = *(this + 4);
  v4 = this + 40;
  if (v3 == this + 40)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v5 + ((*(v3 + 11) + 1) & 0xFFFFFFFE) + 10;
      v7 = *(v3 + 8);
      if (v7)
      {
        v5 = ((*v7 + 2) & 0x1FE) + v6;
      }

      else
      {
        v5 = v6 + 2;
      }

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
    }

    while (v9 != v4);
  }

  v11 = *(this + 7);
  v12 = *(this + 8) - v11;
  if (v12)
  {
    v13 = v12 >> 3;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = (v11 + 4);
    do
    {
      v15 = *v14;
      v14 += 2;
      v5 += v15;
      --v13;
    }

    while (v13);
  }

  v16 = v5;
  v17 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v17)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    v37 = "Out of memory";
    goto LABEL_49;
  }

  v18 = v17;
  v19 = *(this + 4);
  v20 = v17;
  if (v19 != v4)
  {
    v21 = &v17[v16];
    v20 = v17;
    do
    {
      *v20 = 1296646712;
      *(v20 + 2) = bswap32(*(v19 + 21)) >> 16;
      v22 = *(v19 + 8);
      if (v22)
      {
        v23 = *v22;
        if (!*v22)
        {
          PSIR_FileWriter::UpdateMemoryResources();
        }

        v24 = v20 + 6;
        if (v21 - v24 < v23 + 1)
        {
          goto LABEL_48;
        }

        memcpy(v24, v22, v23 + 1);
        v25 = &v24[v23 + 1];
        if ((v23 & 1) == 0)
        {
          *v25++ = 0;
        }
      }

      else
      {
        *(v20 + 3) = 0;
        v25 = v20 + 8;
      }

      *v25 = bswap32(*(v19 + 11));
      v26 = v25 + 4;
      v27 = *(v19 + 11);
      if (v21 - v26 < v27)
      {
        goto LABEL_48;
      }

      memcpy(v26, *(v19 + 6), v27);
      v28 = *(v19 + 11);
      v20 = &v26[v28];
      if (v28)
      {
        *v20++ = 0;
      }

      v29 = *(v19 + 1);
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
          v30 = *(v19 + 2);
          v10 = *v30 == v19;
          v19 = v30;
        }

        while (!v10);
      }

      v19 = v30;
    }

    while (v30 != v4);
  }

  v31 = *(this + 7);
  if (*(this + 8) != v31)
  {
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v34 = *(v31 + v32 + 4);
      if (&v18[v16] - v20 < v34)
      {
        break;
      }

      memcpy(v20, (*(this + 3) + *(v31 + v32)), v34);
      v20 += v34;
      ++v33;
      v31 = *(this + 7);
      v32 += 8;
      if (v33 >= (*(this + 8) - v31) >> 3)
      {
        goto LABEL_42;
      }
    }

LABEL_48:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v37 = "Buffer overrun";
LABEL_49:
    exception[1] = v37;
    *(exception + 16) = 0;
  }

LABEL_42:
  if (v20 != &v18[v16])
  {
    PSIR_FileWriter::UpdateMemoryResources();
  }

  (*(*this + 40))(this, v18, v16, 0);
  *(this + 12) = v16 != 0;
  if (a2)
  {
    *a2 = v18;
  }

  return v16;
}

uint64_t PSIR_FileWriter::UpdateFileResources(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, XMP_ProgressTracker *this)
{
  v39 = 0;
  if (*(a1 + 10) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "Not file based";
    *(exception + 16) = 0;
  }

  v9 = (a1 + 40);
  if (this)
  {
    v10 = *(a1 + 32);
    v11 = 8.0;
    if (v10 != v9)
    {
      do
      {
        v12 = v10[1];
        v13 = v10;
        if (v12)
        {
          do
          {
            v14 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v14 = v13[2];
            v15 = *v14 == v13;
            v13 = v14;
          }

          while (!v15);
        }

        v11 = v11 + (*(v10 + 11) + 12);
        v10 = v14;
      }

      while (v14 != v9);
    }

    v16 = *(a1 + 56);
    v17 = *(a1 + 64) - v16;
    if (v17)
    {
      v18 = v17 >> 3;
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v19 = (v16 + 4);
      do
      {
        v20 = *v19;
        v19 += 2;
        v11 = v11 + v20;
        --v18;
      }

      while (v18);
    }

    if ((*(this + 32) & 1) == 0)
    {
      PSIR_FileWriter::UpdateFileResources();
    }

    XMP_ProgressTracker::AddTotalWork(this, v11);
  }

  v38 = 0;
  v21 = (*(*a3 + 16))(a3, 0, 1);
  (*(*a3 + 8))(a3, &v38, 4);
  v37 = 1296646712;
  v22 = *(a1 + 32);
  if (v22 != v9)
  {
    do
    {
      WORD2(v37) = bswap32(*(v22 + 21)) >> 16;
      (*(*a3 + 8))(a3, &v37, 6);
      v38 += 6;
      v23 = v22[8];
      if (v23)
      {
        if (!*v23)
        {
          goto LABEL_40;
        }

        v24 = (*v23 + 2) & 0x1FE;
        (*(*a3 + 8))(a3);
        v25 = v38 + v24;
      }

      else
      {
        (*(*a3 + 8))(a3, &v39, 2);
        v25 = v38 + 2;
      }

      v38 = v25;
      v36 = bswap32(*(v22 + 11));
      (*(*a3 + 8))(a3, &v36, 4);
      v26 = v22[6];
      if (v26)
      {
        (*(*a3 + 8))(a3, v26, *(v22 + 11));
      }

      else
      {
        (*(*a2 + 16))(a2, *(v22 + 14), 0);
        XIO::Copy(a2, a3);
      }

      v27 = *(v22 + 11);
      v38 += v27 + 4;
      if (v27)
      {
        (*(*a3 + 8))(a3, &v39, 1);
        ++v38;
      }

      v28 = v22[1];
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
          v29 = v22[2];
          v15 = *v29 == v22;
          v22 = v29;
        }

        while (!v15);
      }

      v22 = v29;
    }

    while (v29 != v9);
  }

  v30 = *(a1 + 56);
  if (*(a1 + 64) != v30)
  {
    v31 = 0;
    v32 = 0;
    while (1)
    {
      (*(*a2 + 16))(a2, *(v30 + v31), 0);
      if (v32 >= (*(a1 + 64) - *(a1 + 56)) >> 3)
      {
        break;
      }

      XIO::Copy(a2, a3);
      v30 = *(a1 + 56);
      v33 = (*(a1 + 64) - v30) >> 3;
      if (v33 <= v32)
      {
        break;
      }

      v38 += *(v30 + v31 + 4);
      ++v32;
      v31 += 8;
      if (v32 >= v33)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    PSIR_FileWriter::UpdateFileResources();
  }

LABEL_38:
  (*(*a3 + 16))(a3, v21, 0);
  v36 = bswap32(v38);
  (*(*a3 + 8))(a3, &v36, 4);
  (*(*a3 + 16))(a3, 0, 2);
  return v38;
}

void PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(PSIR_FileWriter::InternalRsrcInfo *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) != 0 || *this == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      free(v3);
      *(this + 1) = 0;
      if ((*(this + 1) & 1) == 0)
      {
        return;
      }
    }

    else if (!v2)
    {
      return;
    }

    v4 = *(this + 3);
    if (v4)
    {
      free(v4);
      *(this + 3) = 0;
    }
  }
}

void std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(a1, a2[1]);
    PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((a2 + 5));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
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

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__erase_unique<unsigned short>(uint64_t a1, unsigned __int16 *a2)
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
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((v4 + 40));
  operator delete(v4);
  return 1;
}

void PSIR_FileWriter::ParseMemoryResources()
{
  __assert_rtn("ParseMemoryResources", "PSIR_FileWriter.cpp", 198, "! this->ownedContent");
}

{
  __assert_rtn("ParseMemoryResources", "PSIR_FileWriter.cpp", 245, "(rsrcLength & 1) == 0");
}

void PSIR_FileWriter::UpdateMemoryResources()
{
  __assert_rtn("UpdateMemoryResources", "PSIR_FileWriter.cpp", 433, "nameLen > 0");
}

{
  __assert_rtn("UpdateMemoryResources", "PSIR_FileWriter.cpp", 469, "rsrcPtr == (newContent + newLength)");
}

void PSIR_FileWriter::UpdateFileResources()
{
  __assert_rtn("UpdateFileResources", "PSIR_FileWriter.cpp", 516, "progressTracker->WorkInProgress()");
}

{
  __assert_rtn("UpdateFileResources", "PSIR_FileWriter.cpp", 559, "nameLen > 0");
}

void *AdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63536D6C4E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63536D6C4E6F6465, a3, exception);
      }

      return (this + *(*this - 632));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::INode_I::GetInterfacePointerInternal((this + *(*this - 640)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63536D6C4E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointer(AdobeXMPCore_Int::ISimpleNode_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ISimpleNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::ISimpleNode_I::getInterfacePointer(AdobeXMPCore_Int::ISimpleNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::ISimpleNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::ISimpleNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ISimpleNode_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
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

void sub_18618C720(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x18618C704);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ISimpleNode_v1,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::ISimpleNode_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ISimpleNode_v1,BOOL>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

void WebPInitAlphaProcessingNEON()
{
  WebPApplyAlphaMultiply = ApplyAlphaMultiply_NEON;
  WebPDispatchAlpha = DispatchAlpha_NEON;
  WebPDispatchAlphaToGreen = DispatchAlphaToGreen_NEON;
  WebPExtractAlpha = ExtractAlpha_NEON;
  WebPExtractGreen = ExtractGreen_NEON;
}

char *ApplyAlphaMultiply_NEON(char *result, int a2, int a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    v5 = 3;
    if (a2)
    {
      v5 = 0;
    }

    v6 = a5;
    do
    {
      if (a2)
      {
        if (a3 >= 8)
        {
          v7 = result;
          for (i = 8; i <= a3; i += 8)
          {
            v26 = vld4_s8(v7);
            v9 = vmull_u8(v26.val[1], v26.val[0]);
            v10 = vmull_u8(v26.val[2], v26.val[0]);
            v11 = vmull_u8(v26.val[3], v26.val[0]);
            v26.val[1] = vsubhn_s16(vshrq_n_u16(v9, 8uLL), vmvnq_s8(v9));
            v26.val[2] = vsubhn_s16(vshrq_n_u16(v10, 8uLL), vmvnq_s8(v10));
            v26.val[3] = vsubhn_s16(vshrq_n_u16(v11, 8uLL), vmvnq_s8(v11));
            vst4_s8(v7, v26);
            v7 += 32;
          }

LABEL_14:
          v12 = a3 & 0x7FFFFFF8;
          goto LABEL_15;
        }
      }

      else if (a3 >= 8)
      {
        v13 = result;
        for (j = 8; j <= a3; j += 8)
        {
          v27 = vld4_s8(v13);
          v15 = vmull_u8(v27.val[1], v27.val[3]);
          v16 = vmull_u8(v27.val[2], v27.val[3]);
          v17 = vmull_u8(v27.val[0], v27.val[3]);
          v27.val[1] = vsubhn_s16(vshrq_n_u16(v15, 8uLL), vmvnq_s8(v15));
          v27.val[2] = vsubhn_s16(vshrq_n_u16(v16, 8uLL), vmvnq_s8(v16));
          v27.val[0] = vsubhn_s16(vshrq_n_u16(v17, 8uLL), vmvnq_s8(v17));
          vst4_s8(v13, v27);
          v13 += 32;
        }

        goto LABEL_14;
      }

      v12 = 0;
LABEL_15:
      if (v12 < a3)
      {
        v18 = &result[a2 != 0];
        v19 = 4 * v12;
        do
        {
          v20 = v19;
          v21 = result[v5 + v19];
          if (v21 != 255)
          {
            v22 = 32897 * v21;
            v18[v20] = (v22 * v18[v20]) >> 23;
            v18[(v20 + 1)] = (v22 * v18[(v20 + 1)]) >> 23;
            v18[(v20 + 2)] = (v22 * v18[(v20 + 2)]) >> 23;
          }

          v19 = v20 + 4;
          ++v12;
        }

        while (v12 < a3);
      }

      result += v6;
      v25 = __OFSUB__(a4, 1);
      v23 = a4 == 1;
      v24 = --a4 < 0;
    }

    while (!(v24 ^ v25 | v23));
  }

  return result;
}

BOOL DispatchAlpha_NEON(uint64_t a1, int a2, int a3, int a4, char *a5, int a6)
{
  if (a4 < 1)
  {
    v7 = -1;
    v15 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    v8 = 255;
    do
    {
      if (a3 < 9)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v17 = vld4_s8(v10);
          v17.val[0] = *(a1 + v9);
          vst4_s8(v10, v17);
          v10 += 32;
          v7 = vand_s8(v17.val[0], v7);
          v11 = v9 + 16;
          v9 += 8;
        }

        while (v11 < a3);
        LODWORD(v12) = ((a3 - 9) & 0xFFFFFFF8) + 8;
      }

      if (v12 < a3)
      {
        v13 = 4 * v12;
        v12 = v12;
        do
        {
          v14 = *(a1 + v12);
          a5[v13 & 0xFFFFFFFC] = v14;
          v8 &= v14;
          ++v12;
          v13 += 4;
        }

        while (v12 < a3);
      }

      a1 += a2;
      a5 += a6;
      ++v6;
    }

    while (v6 != a4);
    v15 = 16843009 * v8;
  }

  return (v15 & v7.i32[0] & v7.i32[1]) != -1;
}

uint64_t DispatchAlphaToGreen_NEON(uint64_t result, int a2, int a3, int a4, char *a5, int a6)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (a3 >= 8)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = *(result + v9);
          v12 = 0;
          v13 = 0;
          vst4_s8(v10, *&v7);
          v10 += 32;
          v14 = v9 + 16;
          v9 += 8;
        }

        while (v14 <= a3);
        LODWORD(v8) = a3 & 0x7FFFFFF8;
      }

      else
      {
        LODWORD(v8) = 0;
      }

      if (v8 < a3)
      {
        v8 = v8;
        do
        {
          *&a5[4 * v8] = *(result + v8) << 8;
          ++v8;
        }

        while (v8 < a3);
      }

      result += a2;
      ++v6;
      a5 += 4 * a6;
    }

    while (v6 != a4);
  }

  return result;
}

BOOL ExtractAlpha_NEON(const char *a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  if (a4 < 1)
  {
    v7 = -1;
    v16 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    v8 = 255;
    do
    {
      if (a3 < 9)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v9 = 0;
        v10 = a1;
        do
        {
          v11 = vld4_s8(v10);
          v10 += 32;
          *(a5 + v9) = v11;
          v7 = vand_s8(v11, v7);
          v12 = v9 + 16;
          v9 += 8;
        }

        while (v12 < a3);
        LODWORD(v13) = ((a3 - 9) & 0xFFFFFFF8) + 8;
      }

      if (v13 < a3)
      {
        v14 = 4 * v13;
        v13 = v13;
        do
        {
          v15 = a1[v14 & 0xFFFFFFFC];
          *(a5 + v13) = v15;
          v8 &= v15;
          ++v13;
          v14 += 4;
        }

        while (v13 < a3);
      }

      a1 += a2;
      a5 += a6;
      ++v6;
    }

    while (v6 != a4);
    v16 = 16843009 * v8;
  }

  return (vand_s8(vdup_lane_s32(v7, 1), v7).u32[0] & v16) == -1;
}

const char *ExtractGreen_NEON(const char *result, int8x16_t *a2, int a3)
{
  if (a3 >= 16)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF0;
    v4 = 16;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = vld4q_s8(v5);
      v5 += 64;
      *v6++ = v7.val[1];
      v4 += 16;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v3 = v3;
    do
    {
      a2->i8[v3] = BYTE1(*&result[4 * v3]);
      ++v3;
    }

    while (v3 < a3);
  }

  return result;
}

uint64_t VP8InitBitReader(uint64_t result, unint64_t *a2, unint64_t a3)
{
  if (!result)
  {
    VP8InitBitReader_cold_3();
  }

  if (!a2)
  {
    VP8InitBitReader_cold_2();
  }

  if (a3 >> 31)
  {
    VP8InitBitReader_cold_1();
  }

  *result = 0;
  *(result + 8) = 0xFFFFFFF8000000FELL;
  *(result + 40) = 0;
  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  v3 = a2 + a3 - 7;
  if (a3 <= 7)
  {
    v3 = a2;
  }

  *(result + 32) = v3;
  if (v3 <= a2)
  {

    return VP8LoadFinalBytes(result);
  }

  else
  {
    v4 = *a2;
    *(result + 16) = a2 + 7;
    *result = bswap64(v4) >> 8;
    *(result + 12) = 48;
  }

  return result;
}

uint64_t VP8LoadFinalBytes(uint64_t result)
{
  if (!result || (v1 = *(result + 16)) == 0)
  {
    VP8LoadFinalBytes_cold_1();
  }

  if (v1 >= *(result + 24))
  {
    if (*(result + 40))
    {
      *(result + 12) = 0;
    }

    else
    {
      *result <<= 8;
      *(result + 12) += 8;
      *(result + 40) = 1;
    }
  }

  else
  {
    *(result + 12) += 8;
    *(result + 16) = v1 + 1;
    *result = *v1 | (*result << 8);
  }

  return result;
}

uint64_t VP8GetValue(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = a2 + 1;
  do
  {
    if (v4 < 0)
    {
      v7 = *(a1 + 16);
      if (!v7)
      {
        VP8GetValue_cold_1();
      }

      if (v7 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v4 = *(a1 + 12);
      }

      else
      {
        v8 = *v7;
        *(a1 + 16) = v7 + 7;
        *(&v9 + 1) = *a1;
        *&v9 = bswap64(v8);
        *a1 = v9 >> 8;
        v4 += 56;
      }
    }

    v10 = (v5 >> 1) & 0xFFFFFF;
    v11 = v4;
    v12 = *a1 >> v4;
    if (v10 >= v12)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = v5 - v10;
      *a1 -= (v10 + 1) << v11;
    }

    v14 = v10 < v12;
    v15 = __clz(v13) ^ 0x18;
    v16 = v13 << v15;
    v4 = v11 - v15;
    v5 = v16 - 1;
    *(a1 + 8) = v16 - 1;
    *(a1 + 12) = v4;
    v3 = (v14 << (v6-- - 2)) | v3;
  }

  while (v6 > 1);
  return v3;
}

uint64_t VP8GetSignedValue(uint64_t a1, int a2)
{
  Value = VP8GetValue(a1, a2);
  if (VP8GetValue(a1, 1))
  {
    return -Value;
  }

  else
  {
    return Value;
  }
}

void *VP8LInitBitReader(void *result, unsigned __int8 *a2, unint64_t a3)
{
  if (!result)
  {
    VP8LInitBitReader_cold_3();
  }

  if (!a2)
  {
    VP8LInitBitReader_cold_2();
  }

  if (a3 >= 0xFFFFFFF8)
  {
    VP8LInitBitReader_cold_1();
  }

  result[2] = a3;
  *result = 0;
  result[4] = 0;
  v3 = 8;
  if (a3 < 8)
  {
    v3 = a3;
  }

  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2;
    do
    {
      v7 = *v6++;
      v5 |= v7 << v4;
      v4 += 8;
    }

    while (8 * v3 != v4);
  }

  else
  {
    v5 = 0;
  }

  result[3] = v3;
  *result = v5;
  result[1] = a2;
  return result;
}

double VP8LDoFillBitWindow(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= 31)
  {
    VP8LDoFillBitWindow_cold_1();
  }

  v3 = *(a1 + 24);
  if ((v3 + 8) >= *(a1 + 16))
  {

    return ShiftBytes(a1);
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    *a1 >>= 32;
    *(a1 + 32) = v2 - 32;
    *(&v6 + 1) = *(v5 + v3);
    *&v6 = v4;
    *a1 = v6 >> 32;
    *(a1 + 24) = v3 + 4;
  }

  return result;
}

double ShiftBytes(unint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = a1[2];
  v2 = a1[3];
  if (v1 < 8)
  {
    v10 = 1;
  }

  else
  {
    if (v2 <= v3)
    {
      v4 = a1[2];
    }

    else
    {
      v4 = a1[3];
    }

    while (v4 != v2)
    {
      v5 = *a1;
      v6 = a1[1];
      *a1 >>= 8;
      *(&v7 + 1) = *(v6 + v2);
      *&v7 = v5;
      *a1 = v7 >> 8;
      a1[3] = ++v2;
      v8 = v1 - 8;
      *(a1 + 8) = v1 - 8;
      v9 = v1 <= 15;
      v1 -= 8;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    v2 = v4;
    v8 = v1;
LABEL_11:
    v10 = v8 < 65;
  }

  if (v2 > v3)
  {
    ShiftBytes_cold_1();
  }

  v11 = v2 != v3 || v10;
  if (*(a1 + 9) || (v11 & 1) == 0)
  {
    *&result = 0x100000000;
    a1[4] = 0x100000000;
  }

  return result;
}

uint64_t VP8LReadBits(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    VP8LReadBits_cold_1();
  }

  if (a2 > 0x18 || *(a1 + 36))
  {
    v3 = 0;
    *(a1 + 32) = 0x100000000;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = kBitMask[a2] & (*a1 >> v2);
    *(a1 + 32) = v2 + a2;
    ShiftBytes(a1);
  }

  return v3;
}

void VP8DspInit(uint64_t a1, uint64_t a2, const char *a3)
{
  if (VP8DspInit_VP8DspInit_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    _cg_jpeg_mem_term(a1, a2, a3);
    VP8TransformUV = TransformUV_C;
    VP8TransformDCUV = TransformDCUV_C;
    qword_1EA8E1608 = HE4_C;
    qword_1EA8E1618 = VR4_C;
    qword_1EA8E1628 = VL4_C;
    qword_1EA8E1630 = HD4_C;
    qword_1EA8E1638 = HU4_C;
    VP8DitherCombine8x8 = DitherCombine8x8_C;
    VP8DspInitNEON();
    if (!VP8TransformWHT)
    {
      VP8DspInit_cold_43();
    }

    if (!VP8Transform)
    {
      VP8DspInit_cold_42();
    }

    if (!VP8TransformDC)
    {
      VP8DspInit_cold_41();
    }

    if (!VP8TransformAC3)
    {
      VP8DspInit_cold_40();
    }

    if (!VP8TransformUV)
    {
      VP8DspInit_cold_39();
    }

    if (!VP8TransformDCUV)
    {
      VP8DspInit_cold_38();
    }

    if (!VP8VFilter16)
    {
      VP8DspInit_cold_37();
    }

    if (!VP8HFilter16)
    {
      VP8DspInit_cold_36();
    }

    if (!VP8VFilter8)
    {
      VP8DspInit_cold_35();
    }

    if (!VP8HFilter8)
    {
      VP8DspInit_cold_34();
    }

    if (!VP8VFilter16i)
    {
      VP8DspInit_cold_33();
    }

    if (!VP8HFilter16i)
    {
      VP8DspInit_cold_32();
    }

    if (!VP8VFilter8i)
    {
      VP8DspInit_cold_31();
    }

    if (!VP8HFilter8i)
    {
      VP8DspInit_cold_30();
    }

    if (!VP8SimpleVFilter16)
    {
      VP8DspInit_cold_29();
    }

    if (!VP8SimpleHFilter16)
    {
      VP8DspInit_cold_28();
    }

    if (!VP8SimpleVFilter16i)
    {
      VP8DspInit_cold_27();
    }

    if (!VP8SimpleHFilter16i)
    {
      VP8DspInit_cold_26();
    }

    if (!VP8PredLuma4[0])
    {
      VP8DspInit_cold_25();
    }

    if (!qword_1EA8E15F8)
    {
      VP8DspInit_cold_24();
    }

    if (!qword_1EA8E1600)
    {
      VP8DspInit_cold_23();
    }

    if (!qword_1EA8E1608)
    {
      VP8DspInit_cold_22();
    }

    if (!qword_1EA8E1610)
    {
      VP8DspInit_cold_21();
    }

    if (!qword_1EA8E1618)
    {
      VP8DspInit_cold_20();
    }

    if (!qword_1EA8E1620)
    {
      VP8DspInit_cold_19();
    }

    if (!qword_1EA8E1628)
    {
      VP8DspInit_cold_18();
    }

    if (!qword_1EA8E1630)
    {
      VP8DspInit_cold_17();
    }

    if (!qword_1EA8E1638)
    {
      VP8DspInit_cold_16();
    }

    if (!VP8PredLuma16[0])
    {
      VP8DspInit_cold_15();
    }

    if (!qword_1EA8E1648)
    {
      VP8DspInit_cold_14();
    }

    if (!qword_1EA8E1650)
    {
      VP8DspInit_cold_13();
    }

    if (!qword_1EA8E1658)
    {
      VP8DspInit_cold_12();
    }

    if (!qword_1EA8E1660)
    {
      VP8DspInit_cold_11();
    }

    if (!qword_1EA8E1668)
    {
      VP8DspInit_cold_10();
    }

    if (!qword_1EA8E1670)
    {
      VP8DspInit_cold_9();
    }

    if (!VP8PredChroma8[0])
    {
      VP8DspInit_cold_8();
    }

    if (!qword_1EA8E1680)
    {
      VP8DspInit_cold_7();
    }

    if (!qword_1EA8E1688)
    {
      VP8DspInit_cold_6();
    }

    if (!qword_1EA8E1690)
    {
      VP8DspInit_cold_5();
    }

    if (!qword_1EA8E1698)
    {
      VP8DspInit_cold_4();
    }

    if (!qword_1EA8E16A0)
    {
      VP8DspInit_cold_3();
    }

    if (!qword_1EA8E16A8)
    {
      VP8DspInit_cold_2();
    }

    if (!VP8DitherCombine8x8)
    {
      VP8DspInit_cold_1();
    }

    VP8DspInit_VP8DspInit_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

uint64_t TransformUV_C(uint64_t a1, uint64_t a2)
{
  VP8Transform(a1, a2, 1);
  v4 = VP8Transform;

  return v4(a1 + 64, a2 + 128, 1);
}

uint64_t TransformDCUV_C(_WORD *a1, uint64_t a2)
{
  if (*a1)
  {
    VP8TransformDC(a1, a2);
  }

  if (a1[16])
  {
    VP8TransformDC(a1 + 16, a2 + 4);
  }

  result = (a1 + 32);
  if (a1[32])
  {
    result = VP8TransformDC(result, a2 + 128);
  }

  v6 = a1[48];
  v5 = a1 + 48;
  if (v6)
  {
    v7 = VP8TransformDC;

    return v7(v5, a2 + 132);
  }

  return result;
}

uint64_t HE4_C(uint64_t result)
{
  v1 = *(result - 1);
  v2 = *(result + 31);
  v3 = *(result + 63);
  v4 = *(result + 95);
  *result = 16843009 * ((v2 + 2 + *(result - 33) + 2 * v1) >> 2);
  *(result + 32) = 16843009 * ((v3 + 2 + v1 + 2 * v2) >> 2);
  *(result + 64) = 16843009 * ((v2 + 2 + 2 * v3 + v4) >> 2);
  *(result + 96) = 16843009 * ((v3 + 2 + v4 + 2 * v4) >> 2);
  return result;
}

_BYTE *VR4_C(_BYTE *result)
{
  v1 = *(result - 33);
  v2 = *(result - 32);
  v3 = *(result - 31);
  v4 = (v2 + v1 + 1) >> 1;
  v5 = (v2 + v3 + 1) >> 1;
  v6 = *(result - 1);
  v7 = result[31];
  v8 = v6 + 2;
  v9 = v6 + 2 + result[63] + 2 * v7;
  v10 = *(result - 30);
  result[65] = v4;
  *result = v4;
  v11 = (v3 + v10 + 1) >> 1;
  result[66] = v5;
  result[1] = v5;
  v12 = v1 + 2;
  v13 = v1 + 2 + v7 + 2 * v6;
  v14 = *(result - 29);
  result[67] = v11;
  result[2] = v11;
  result[3] = (v10 + v14 + 1) >> 1;
  result[96] = v9 >> 2;
  result[64] = v13 >> 2;
  v15 = (v8 + 2 * v1 + v2) >> 2;
  result[97] = v15;
  result[32] = v15;
  v16 = (v12 + 2 * v2 + v3) >> 2;
  result[98] = v16;
  result[33] = v16;
  v17 = (v2 + 2 * v3 + v10 + 2) >> 2;
  result[99] = v17;
  result[34] = v17;
  result[35] = (v3 + 2 * v10 + v14 + 2) >> 2;
  return result;
}

_BYTE *VL4_C(_BYTE *result)
{
  v1 = *(result - 32);
  v2 = *(result - 31);
  v3 = *(result - 30);
  v4 = (v2 + v3 + 1) >> 1;
  v5 = *(result - 29);
  v6 = *(result - 28);
  v7 = *(result - 27);
  *result = (v2 + v1 + 1) >> 1;
  result[64] = v4;
  result[1] = v4;
  v8 = (v3 + v5 + 1) >> 1;
  result[65] = v8;
  result[2] = v8;
  v9 = (v5 + v6 + 1) >> 1;
  v10 = v3 + 2;
  v11 = *(result - 26);
  result[66] = v9;
  result[3] = v9;
  v12 = (v3 + 2 + v1 + 2 * v2) >> 2;
  v13 = (v5 + 2 + v2 + 2 * v3) >> 2;
  v14 = *(result - 25);
  result[32] = v12;
  result[96] = v13;
  result[33] = v13;
  v15 = (v10 + 2 * v5 + v6) >> 2;
  result[97] = v15;
  result[34] = v15;
  v16 = (v5 + 2 + 2 * v6 + v7) >> 2;
  result[98] = v16;
  result[35] = v16;
  result[67] = (v6 + 2 * v7 + v11 + 2) >> 2;
  result[99] = (v7 + 2 * v11 + v14 + 2) >> 2;
  return result;
}

_BYTE *HD4_C(_BYTE *result)
{
  v1 = *(result - 1);
  v2 = result[31];
  v3 = *(result - 33);
  v4 = (v1 + v3 + 1) >> 1;
  v5 = (v1 + v2 + 1) >> 1;
  v6 = result[63];
  v7 = *(result - 32);
  v8 = (v2 + v6 + 1) >> 1;
  v9 = *(result - 31);
  result[34] = v4;
  *result = v4;
  v10 = *(result - 30);
  result[66] = v5;
  result[32] = v5;
  result[98] = v8;
  result[64] = v8;
  v11 = result[95];
  result[96] = (v6 + v11 + 1) >> 1;
  result[3] = (v7 + 2 * v9 + v10 + 2) >> 2;
  result[2] = (v3 + 2 * v7 + v9 + 2) >> 2;
  v12 = v1 + 2;
  v13 = (v1 + 2 + 2 * v3 + v7) >> 2;
  result[35] = v13;
  result[1] = v13;
  v14 = v2 + 2;
  v15 = (v2 + 2 + 2 * v1 + v3) >> 2;
  result[67] = v15;
  result[33] = v15;
  v16 = (v12 + v6 + 2 * v2) >> 2;
  result[99] = v16;
  result[65] = v16;
  result[97] = (v14 + v11 + 2 * v6) >> 2;
  return result;
}