CFDataRef ACFUFirmware::hashData(ACFUFirmware *this, CFDataRef theData)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(this + 14);
  if (v3 == 2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v14 = CC_SHA512(BytePtr, Length, md);
    if (v14 == md)
    {
      v7 = *MEMORY[0x277CBECE8];
      v8 = 64;
      goto LABEL_10;
    }

    ACFUFirmware::hashData(v14);
    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v9 = CFDataGetBytePtr(theData);
    v10 = CFDataGetLength(theData);
    v11 = CC_SHA384(v9, v10, md);
    if (v11 == md)
    {
      v7 = *MEMORY[0x277CBECE8];
      v8 = 48;
      goto LABEL_10;
    }

    ACFUFirmware::hashData(v11);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (v3)
  {
    goto LABEL_14;
  }

  v4 = CFDataGetBytePtr(theData);
  v5 = CFDataGetLength(theData);
  v6 = CC_SHA256(v4, v5, md);
  if (v6 != md)
  {
    ACFUFirmware::hashData(v6);
    goto LABEL_14;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = 32;
LABEL_10:
  result = CFDataCreate(v7, md, v8);
LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ACFUFirmware::init(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 8);
  if (v3 != a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>(v3, *a2, a2 + 1);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 40) = Mutable;
  if (!Mutable)
  {
    ACFUFirmware::init(0);
  }

  return Mutable != 0;
}

uint64_t ACFUFirmware::init(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        *(a1 + 56) = *a2;
        if (a1 + 8 != a2 + 24)
        {
          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>((a1 + 8), *(a2 + 24), (a2 + 32));
          v5 = *(a2 + 8);
          v4 = *(a2 + 16);
        }

        *(a1 + 64) = v4;
        *(a1 + 72) = v5;
        AMSupportSafeRetain();
        v6 = *(a1 + 72);
        AMSupportSafeRetain();
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(a1 + 40) = Mutable;
        if (Mutable)
        {
          return 1;
        }

        v9 = "%s::%s: Failed to allocate measurements dict\n";
      }

      else
      {
        v9 = "%s::%s: No manifest key specified\n";
      }
    }

    else
    {
      v9 = "%s::%s: No save path specified\n";
    }
  }

  else
  {
    v9 = "%s::%s: invalid tag map parameter\n";
  }

  ACFUFirmware::init(v9);
  return 0;
}

uint64_t ACFUFirmware::measureFW(ACFUFirmware *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == (this + 16))
  {
    return 1;
  }

  while (1)
  {
    if (*(this + 80) != 1)
    {
      v6 = ACFUFirmware::copyFWDataByTag(this, v1[4]);
      if (v6)
      {
        v7 = v6;
        v8 = ACFUFirmware::hashData(this, v6);
        CFRelease(v7);
        if (!v8)
        {
          break;
        }

        goto LABEL_19;
      }

      ACFUCommon::stringFromCFString(v1[4], &__s);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v22, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_29;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v22 = __s;
        goto LABEL_29;
      }

      v10 = std::string::basic_string[abi:ne200100]<0>(&v22, "UNDEF");
LABEL_29:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      goto LABEL_31;
    }

    v4 = (*(*this + 40))(this, v1 + 5);
    if (!v4)
    {
      ACFUCommon::stringFromCFString(v1[4], &__s);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v22, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_25;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v22 = __s;
        goto LABEL_25;
      }

      v10 = std::string::basic_string[abi:ne200100]<0>(&v22, "UNDEF");
LABEL_25:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_31:
      __s = v22;
      LogInstance = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: no fw for tag '%s'\n", v12, v13, v14, v15, v16, "ACFUFirmware");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      goto LABEL_33;
    }

    v5 = v4;
    if (*(v1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v1[5], v1[6]);
    }

    else
    {
      v21 = *(v1 + 5);
    }

    v9 = ACFUFirmware::hashData(this, &v21, v5);
    v8 = v9;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (!v8)
    {
      break;
    }

LABEL_19:
    CFDictionarySetValue(*(this + 5), v1[4], v8);
    CFRelease(v8);
LABEL_33:
    v17 = v1[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = v1[2];
        v19 = *v18 == v1;
        v1 = v18;
      }

      while (!v19);
    }

    v1 = v18;
    if (v18 == v2)
    {
      return 1;
    }
  }

  ACFUFirmware::measureFW(v9);
  return 0;
}

void sub_2402BF04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUFirmware::setManifest(ACFUFirmware *this, const __CFData *a2)
{
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
    *(this + 6) = 0;
  }

  AMSupportSafeRetain();
  *(this + 6) = a2;
  v5 = ACFUFirmware::hashData(this, a2);
  LogInstance = ACFULogging::getLogInstance(v5);
  if (v5)
  {
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Manifest digest\n", v7, v8, v9, v10, v11, "ACFUFirmware");
    v13 = ACFULogging::getLogInstance(v12);
    std::string::basic_string[abi:ne200100]<0>(&v21, "ACFUFirmware");
    v14 = std::string::append(&v21, "::");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v22, "setManifest");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v24 = v16->__r_.__value_.__r.__words[2];
    v23 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    ACFULogging::handleMessageBinary(v13, &v23, 0, BytePtr, Length, 1);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    CFRelease(v5);
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Digest of manifest failed\n", v7, v8, v9, v10, v11, "ACFUFirmware");
  }

  return v5 != 0;
}

void sub_2402BF208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C9FDA8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t **std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::string::operator=((v8 + 5), (v9 + 5));
          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__node_insert_multi(v5, v16);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::__detach_next(v15);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_multi<std::pair<__CFString const* const,std::string> const&>(v5, (a2 + 4));
      v12 = a2[1];
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
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_2402BF4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_multi<std::pair<__CFString const* const,std::string> const&>(uint64_t a1, uint64_t a2)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a2, &v7);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (v7[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v3, v5, v7);
  return v7;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_2402BF8D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void ACFUFTABFile::ACFUFTABFile(ACFUFTABFile *this)
{
  ACFUFile::ACFUFile(this);
  *v1 = &unk_28522EE20;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = v1 + 48;
  *(v1 + 64) = 0;
  *(v1 + 88) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = v1 + 80;
}

{
  ACFUFile::ACFUFile(this);
  *v1 = &unk_28522EE20;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = v1 + 48;
  *(v1 + 64) = 0;
  *(v1 + 88) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = v1 + 80;
}

void ACFUFTABFile::create(const __CFData *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_28522EE20;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if ((a2 & 2) != 0)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v35);
    v37 = "%s::%s: function does not support memory optimization flow\n";
LABEL_19:
    LogInstance = ACFULogging::getLogInstance(v36);
    ACFULogging::handleMessage(LogInstance, 2u, v37, v39, v40, v41, v42, v43, "ACFUFTABFile");
    v8 = 0;
LABEL_12:
    *a4 = v8;
    return;
  }

  v9 = ACFUFTABFile::init(v8, a1);
  if ((v9 & 1) == 0)
  {
    v36 = (*(*v8 + 56))(v8);
    v37 = "%s::%s: failed to open file\n";
    goto LABEL_19;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    if (a2 >= 3)
    {
      v19 = ACFULogging::getLogInstance(v9);
      v25 = "%s::%s: invalid optimization mask\n";
      v26 = 2;
    }

    else
    {
      *(v8 + 16) = a2;
      v19 = ACFULogging::getLogInstance(v9);
      v25 = "%s::%s: Object initialized!\n";
      v26 = 4;
    }

    ACFULogging::handleMessage(v19, v26, v25, v20, v21, v22, v23, v24, "ACFUFTABFile");
    goto LABEL_12;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(a3, v44);
  v11 = v44[0];
  v12 = v44[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4u, "%s::%s: Didn't find a matching embedded ftab\n", v14, v15, v16, v17, v18, "ACFUFTABFile");
      v45 = v44;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 3;
  }

  v27 = ACFULogging::getLogInstance(v10);
  if (*(v11 + 23) < 0)
  {
    v33 = *v11;
  }

  ACFULogging::handleMessage(v27, 0, "%s::%s: Using embedded ftab '%s'\n", v28, v29, v30, v31, v32, "ACFUFTABFile");
  v34 = (**v8)(v8, v11);
  ACFUFTABFile::create(v34, a2, 0xFFFFLL);
  v45 = v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::embeddedFTABFilenamesForChipRevision(ACFUFTABFile *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this >= 0x40)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v24 = "%s::%s: Chip major revision seems unreasonable: %d\n";
LABEL_10:
    ACFULogging::handleMessage(LogInstance, 2u, v24, v19, v20, v21, v22, v23, "ACFUFTABFile");
    return;
  }

  if ((this & 0xFu) >= 6)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v24 = "%s::%s: Chip minor revision seems unreasonable: %d\n";
    goto LABEL_10;
  }

  v3 = (this >> 4) + 97;
  v4 = snprintf(__str, 5uLL, "_%c%cf", v3, this & 0xF | 0x30u);
  v5 = ACFULogging::getLogInstance(v4);
  ACFULogging::handleMessage(v5, 4u, "%s::%s: %s\n", v6, v7, v8, v9, v10, "ACFUFTABFile");
  std::string::basic_string[abi:ne200100]<0>(__p, __str);
  std::vector<std::string>::push_back[abi:ne200100](a2, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = snprintf(__str, 5uLL, "_%cxf", v3);
  v12 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v12, 4u, "%s::%s: %s\n", v13, v14, v15, v16, v17, "ACFUFTABFile");
  std::string::basic_string[abi:ne200100]<0>(__p, __str);
  std::vector<std::string>::push_back[abi:ne200100](a2, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2402BFE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ACFUFTABFile::create(__CFData *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_28522EE20;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if ((a2 & 2) != 0)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v35);
    v37 = "%s::%s: function does not support memory optimization flow\n";
LABEL_19:
    LogInstance = ACFULogging::getLogInstance(v36);
    ACFULogging::handleMessage(LogInstance, 2u, v37, v39, v40, v41, v42, v43, "ACFUFTABFile");
    v8 = 0;
LABEL_12:
    *a4 = v8;
    return;
  }

  v9 = ACFUFTABFile::init(v8, a1);
  if ((v9 & 1) == 0)
  {
    v36 = (*(*v8 + 56))(v8);
    v37 = "%s::%s: failed to open file\n";
    goto LABEL_19;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    if (a2 >= 3)
    {
      v19 = ACFULogging::getLogInstance(v9);
      v25 = "%s::%s: invalid optimization mask\n";
      v26 = 2;
    }

    else
    {
      *(v8 + 16) = a2;
      v19 = ACFULogging::getLogInstance(v9);
      v25 = "%s::%s: Object initialized!\n";
      v26 = 4;
    }

    ACFULogging::handleMessage(v19, v26, v25, v20, v21, v22, v23, v24, "ACFUFTABFile");
    goto LABEL_12;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(a3, v44);
  v11 = v44[0];
  v12 = v44[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4u, "%s::%s: Didn't find a matching embedded ftab\n", v14, v15, v16, v17, v18, "ACFUFTABFile");
      v45 = v44;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 3;
  }

  v27 = ACFULogging::getLogInstance(v10);
  if (*(v11 + 23) < 0)
  {
    v33 = *v11;
  }

  ACFULogging::handleMessage(v27, 0, "%s::%s: Using embedded ftab '%s'\n", v28, v29, v30, v31, v32, "ACFUFTABFile");
  v34 = (**v8)(v8, v11);
  ACFUFTABFile::create(v34, a2, 0xFFFF, a4);
  v45 = v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::create(const __CFString *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_28522EE20;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if (a2 >= 3)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v33);
    v35 = "%s::%s: invalid optimization mask\n";
LABEL_17:
    LogInstance = ACFULogging::getLogInstance(v34);
    ACFULogging::handleMessage(LogInstance, 2u, v35, v37, v38, v39, v40, v41, "ACFUFTABFile");
    v8 = 0;
    goto LABEL_10;
  }

  v9 = ACFUFTABFile::init(v8, a1, (a2 == 2));
  if ((v9 & 1) == 0)
  {
    v34 = (*(*v8 + 56))(v8);
    v35 = "%s::%s: failed to open file\n";
    goto LABEL_17;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    *(v8 + 16) = a2;
    v19 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v19, 4u, "%s::%s: Object initialized!\n", v20, v21, v22, v23, v24, "ACFUFTABFile");
LABEL_10:
    *a4 = v8;
    return;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(a3, v42);
  v11 = v42[0];
  v12 = v42[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4u, "%s::%s: Didn't find a matching embedded ftab\n", v14, v15, v16, v17, v18, "ACFUFTABFile");
      v43 = v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 3;
  }

  v25 = ACFULogging::getLogInstance(v10);
  if (*(v11 + 23) < 0)
  {
    v31 = *v11;
  }

  ACFULogging::handleMessage(v25, 0, "%s::%s: Using embedded ftab '%s'\n", v26, v27, v28, v29, v30, "ACFUFTABFile");
  v32 = (**v8)(v8, v11);
  ACFUFTABFile::create(v32, a2, 0xFFFF, a4);
  v43 = v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::createFromHeader(ACFUFTABFile *this@<X0>, ACFUFile **a2@<X8>)
{
  v5 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v5);
  *v5 = &unk_28522EE20;
  *(v5 + 7) = 0;
  *(v5 + 6) = 0;
  *(v5 + 5) = v5 + 48;
  *(v5 + 16) = 0;
  *(v5 + 11) = 0;
  *(v5 + 10) = 0;
  *(v5 + 9) = v5 + 80;
  *a2 = v5;
  v6 = ACFUFTABFile::initFromHeader(v5, this);
  if (v6)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: Object initialized!\n", v8, v9, v10, v11, v12, "ACFUFTABFile");
  }

  else
  {
    *a2 = 0;
    v13 = (*(*v5 + 56))(v5);
    v14 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v14, 2u, "%s::%s: failed to initialize\n", v15, v16, v17, v18, v19, "ACFUFTABFile");
  }
}

uint64_t ACFUFTABFile::initFromHeader(ACFUFTABFile *this, const __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  RequiredFileSize = ACFUFTABFile::getRequiredFileSize(this, a2);
  LogInstance = ACFULogging::getLogInstance(RequiredFileSize);
  if (!RequiredFileSize)
  {
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to compute required size\n", v6, v7, v8, v9, v10, "ACFUFTABFile");
    return 0;
  }

  ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: required size %llu\n", v6, v7, v8, v9, v10, "ACFUFTABFile");
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
  CFDataSetLength(MutableCopy, RequiredFileSize);
  if (!ACFUFile::init(this, MutableCopy))
  {
    v14 = "%s::%s: firmware file failed to initialize\n";
    goto LABEL_14;
  }

  if (!(*(*this + 88))(this))
  {
    v14 = "%s::%s: firmware file is invalid\n";
    goto LABEL_14;
  }

  if (!ACFUFTABFile::initCache(this))
  {
    v14 = "%s::%s: failed to initialize file cache\n";
    goto LABEL_14;
  }

  if (!ACFUFTABFile::isCacheValid(this))
  {
    v14 = "%s::%s: cache is invalid\n";
LABEL_14:
    ACFUFTABFile::initFromHeader(v14);
    v12 = 0;
    if (!MutableCopy)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 1;
  if (MutableCopy)
  {
LABEL_7:
    CFRelease(MutableCopy);
  }

  return v12;
}

uint64_t ACFUFTABFile::setManifestOnData(ACFUDataContainer **this, CFDataRef theData, __CFData **a3)
{
  v5 = this;
  if (!a3)
  {
    v6 = this[1];
    if (!v6)
    {
      ACFUFTABFile::setManifestOnData(0);
      return 0;
    }

    this = ACFUDataContainer::isOptimized(v6);
    if (this)
    {
      ACFUFTABFile::setManifestOnData(this);
      return 0;
    }
  }

  if (!theData)
  {
    ACFUFTABFile::setManifestOnData(this);
    return 0;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::setManifestOnData(Length);
    return 0;
  }

  if (a3)
  {
    if (!*a3)
    {
      ACFUFTABFile::setManifestOnData(Length);
      return 0;
    }

    isValidFileData = ACFUFTABFile::isValidFileData(v5, *a3, 0);
    if ((isValidFileData & 1) == 0)
    {
      ACFUFTABFile::setManifestOnData(isValidFileData);
      return 0;
    }

    if (*(v5 + 16) != 1)
    {
      v9 = *a3;
      if (*a3)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if (*(v5 + 16) != 1)
  {
    isValidFileData = ACFUDataContainer::getData(*(v5 + 1));
    v9 = isValidFileData;
    if (isValidFileData)
    {
LABEL_11:
      v10 = *(CFDataGetBytePtr(v9) + 10);
      v11 = CFDataGetLength(theData);
      BytePtr = CFDataGetBytePtr(v9);
      if (*(BytePtr + 5))
      {
        LogInstance = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v14, v15, v16, v17, v18, "ACFUFTABFile");
        ACFUFTABFile::removeManifestPadding(v19, v9);
        v20 = *(CFDataGetBytePtr(v9) + 4);
        v38.length = *(CFDataGetBytePtr(v9) + 5);
        v38.location = v20;
        CFDataDeleteBytes(v9, v38);
        *(CFDataGetBytePtr(v9) + 4) = 0;
        *(CFDataGetBytePtr(v9) + 5) = 0;
      }

      v21 = CFDataGetLength(v9);
      v22 = v10 - 1;
      v23 = *&CFDataGetBytePtr(v9)[16 * v22 + 52];
      v24 = CFDataGetBytePtr(v9);
      v25 = ((*(v24 + 4 * v22 + 14) + v23) + 3) & 0x1FFFFFFFCLL;
      v26 = __OFSUB__(v25, v21);
      v27 = v25 - v21;
      if (v27 < 0 != v26)
      {
        ACFUFTABFile::setManifestOnData(v24);
      }

      else
      {
        if (!((v27 < 0) ^ v26 | (v27 == 0)))
        {
          v28 = ACFULogging::getLogInstance(v24);
          ACFULogging::handleMessage(v28, 0, "%s::%s: padding %ld byte(s) at the end of ftab\n", v29, v30, v31, v32, v33, "ACFUFTABFile");
          CFDataIncreaseLength(v9, v27);
        }

        *(CFDataGetBytePtr(v9) + 5) = v11;
        *(CFDataGetBytePtr(v9) + 4) = v25;
        v34 = CFDataGetBytePtr(theData);
        CFDataAppendBytes(v9, v34, v11);
        if (a3)
        {
          v35 = *a3;

          return ACFUFTABFile::isValidFileData(v5, v35, 0);
        }

        if ((*(*v5 + 88))(v5))
        {

          return ACFUFTABFile::isCacheValid(v5);
        }
      }

      return 0;
    }

LABEL_25:
    ACFUFTABFile::setManifestOnData(isValidFileData);
    return 0;
  }

  return ACFUFTABFile::setManifestToTopOnData(v5, theData, 0);
}

uint64_t ACFUFTABFile::isValidFileData(ACFUFTABFile *this, CFDataRef theData, char a3)
{
  v6 = theData;
  if (!theData)
  {
    v8 = (this + 8);
    isOptimized = *(this + 1);
    if (!isOptimized)
    {
      v6 = 0;
      v37 = "%s::%s: no file data?!\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::isOptimized(isOptimized);
    if (isOptimized)
    {
      if (a3)
      {
        v6 = 0;
        v37 = "%s::%s: header only validation unsupported with optimized data\n";
        goto LABEL_69;
      }

      isOptimized = ACFUDataContainer::copyData(*v8, 0, 0x30uLL);
      v6 = isOptimized;
      if (isOptimized)
      {
        isOptimized = CFDataGetBytePtr(isOptimized);
        if (!isOptimized)
        {
LABEL_68:
          v37 = "%s::%s: failed to get byte pointer\n";
          goto LABEL_69;
        }

        v9 = isOptimized;
        isOptimized = ACFUDataContainer::copyData(*v8, 16 * *(isOptimized + 10) + 32, 0x10uLL);
        if (isOptimized)
        {
          v10 = isOptimized;
          BytePtr = CFDataGetBytePtr(isOptimized);
          if (BytePtr)
          {
            v12 = &v9[*(BytePtr + 1) + *(BytePtr + 2)];
            CFRelease(v10);
            v14 = v9;
            goto LABEL_12;
          }

          CFRelease(v10);
          goto LABEL_68;
        }

        v37 = "%s::%s: failed to aquire ftab file header\n";
LABEL_69:
        LogInstance = ACFULogging::getLogInstance(isOptimized);
        ACFULogging::handleMessage(LogInstance, 2u, v37, v39, v40, v41, v42, v43, "ACFUFTABFile");
        std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](v8, 0);
        goto LABEL_61;
      }

LABEL_64:
      v37 = "%s::%s: failed to copy ftab header\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::copyData(*v8);
    v6 = isOptimized;
    if (!isOptimized)
    {
      goto LABEL_64;
    }
  }

  v9 = CFDataGetBytePtr(v6);
  v14 = CFDataGetBytePtr(v6);
  Length = CFDataGetLength(v6);
  v12 = &v14[Length];
LABEL_12:
  if ((v12 - v14) <= 0x30)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v16 = (v9 + 40);
  v15 = *(v9 + 10);
  v17 = &v14[16 * v15 + 48];
  if (v17 > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v18 = *(v9 + 5);
  v19 = &v14[*(v9 + 4)];
  if ((a3 & 1) == 0 && &v19[v18] > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if (*(v9 + 4) != 0x62617466736F6B72)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if ((v15 - 192) <= 0xFFFFFF40)
  {
    ACFUFTABFile::isValidFileData((v9 + 40));
    goto LABEL_58;
  }

  if (v18 && v19 < v17)
  {
    ACFUFTABFile::isValidFileData(Length);
LABEL_58:
    v31 = 0;
    if (theData)
    {
      return 0;
    }

    goto LABEL_59;
  }

  cf = v6;
  if (theData)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *&CFDataGetBytePtr(theData)[v20 + 52];
      v23 = CFDataGetBytePtr(theData);
      if ((a3 & 1) == 0)
      {
        v24 = &v14[v22 + *(v23 + v20 + 56)];
        if (v24 > v12 || v24 < v17)
        {
          ACFUFTABFile::isValidFileData(v23);
          goto LABEL_49;
        }
      }

      v26 = CFDataGetBytePtr(theData);
      if (&v14[*(v26 + v20 + 52)] < v17)
      {
        break;
      }

      ++v21;
      v20 += 16;
      if (v21 >= *v16)
      {
        return 1;
      }
    }

    ACFUFTABFile::isValidFileData(v26);
LABEL_49:
    v31 = 0;
LABEL_50:
    v6 = cf;
    if (theData)
    {
      return 0;
    }

LABEL_59:
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, 0);
    if (v31)
    {
      CFRelease(v31);
    }

LABEL_61:
    v27 = 0;
    if (!v6)
    {
      return v27;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v29 = 48;
  do
  {
    v30 = ACFUDataContainer::copyData(*(this + 1), v29, 0x10uLL);
    v31 = v30;
    if (!v30)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v32 = CFDataGetBytePtr(v30);
    if (!v32)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v33 = &v14[v32[1]];
    if ((a3 & 1) == 0)
    {
      v34 = &v33[v32[2]];
      if (v34 > v12 || v34 < v17)
      {
        ACFUFTABFile::isValidFileData(v32);
        goto LABEL_50;
      }
    }

    if (v33 < v17)
    {
      ACFUFTABFile::isValidFileData(v32);
      goto LABEL_50;
    }

    CFRelease(v31);
    ++v28;
    v29 += 16;
  }

  while (v28 < *v16);
  v27 = 1;
  v6 = cf;
  if (!cf)
  {
    return v27;
  }

LABEL_43:
  CFRelease(v6);
  return v27;
}

uint64_t ACFUFTABFile::setManifestToTopOnData(ACFUFTABFile *this, const __CFData *a2, __CFData **a3)
{
  if (!a3)
  {
    v73 = *(this + 1);
    if (!v73)
    {
      ACFUFTABFile::setManifestToTopOnData(0);
      return 0;
    }

    isOptimized = ACFUDataContainer::isOptimized(v73);
    if (isOptimized)
    {
      ACFUFTABFile::setManifestToTopOnData(isOptimized);
      return 0;
    }

    Data = ACFUDataContainer::getData(*(this + 1));
    v7 = Data;
    if (Data)
    {
      goto LABEL_5;
    }

LABEL_25:
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  if (!*a3)
  {
    ACFUFTABFile::setManifestToTopOnData(this);
    return 0;
  }

  Data = ACFUFTABFile::isValidFileData(this, *a3, 0);
  if ((Data & 1) == 0)
  {
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_25;
  }

LABEL_5:
  v8 = *(CFDataGetBytePtr(v7) + 10);
  BytePtr = CFDataGetBytePtr(v7);
  if (*(BytePtr + 5))
  {
    LogInstance = ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v11, v12, v13, v14, v15, "ACFUFTABFile");
    v17 = ACFUFTABFile::removeManifestPadding(v16, v7);
    v18 = *(CFDataGetBytePtr(v7) + 4);
    v112.length = *(CFDataGetBytePtr(v7) + 5);
    v112.location = v18;
    CFDataDeleteBytes(v7, v112);
    if (v17 && v8)
    {
      v19 = 52;
      v20 = v8;
      do
      {
        v21 = *(CFDataGetBytePtr(v7) + 5);
        v22 = CFDataGetBytePtr(v7);
        *&v22[v19] -= v21;
        v19 += 16;
        --v20;
      }

      while (v20);
    }

    *(CFDataGetBytePtr(v7) + 4) = 0;
    *(CFDataGetBytePtr(v7) + 5) = 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    return 0;
  }

  v107 = Mutable;
  v24 = a2;
  v109 = this;
  v105 = CFDataGetBytePtr(v7);
  v104 = *(CFDataGetBytePtr(v7) + 13);
  v103 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 52];
  v102 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 56];
  v25 = *(CFDataGetBytePtr(v7) + 13);
  v108 = v8;
  v26 = ((v25 + 3) & 0xFFFFFFFC) - v25;
  v27 = v26 + *(CFDataGetBytePtr(v7) + 13);
  *(CFDataGetBytePtr(v7) + 4) = v27;
  v106 = v24;
  Length = CFDataGetLength(v24);
  v29 = CFDataGetBytePtr(v7);
  *(v29 + 5) = Length;
  v30 = ACFULogging::getLogInstance(v29);
  v31 = *(CFDataGetBytePtr(v7) + 4);
  v97 = *(CFDataGetBytePtr(v7) + 5);
  ACFULogging::handleMessage(v30, 0, "%s::%s: manifestOffset: %u, manifestSize: %u\n", v32, v33, v34, v35, v36, "ACFUFTABFile");
  v37 = *(CFDataGetBytePtr(v7) + 4);
  v38 = CFDataGetBytePtr(v7);
  v39 = *(v38 + 5) + v37;
  v40 = ACFULogging::getLogInstance(v38);
  v101 = (v25 + 3) & 0xFFFFFFFC;
  v41 = v25;
  ACFULogging::handleMessage(v40, 0, "%s::%s: startOfManifestUnaligned: %ld, startOfManifestAligned: %ld, paddingBeforeManifestStart: %u\n", v42, v43, v44, v45, v46, "ACFUFTABFile");
  v48 = ACFULogging::getLogInstance(v47);
  v100 = (v39 + 3) & 0xFFFFFFFC;
  v49 = v39;
  ACFULogging::handleMessage(v48, 0, "%s::%s: endOfManifestUnaligned: %ld, endOfManifestAligned: %ld, paddingAfterManifestEnd: %u\n", v50, v51, v52, v53, v54, "ACFUFTABFile");
  v98 = v100 - v39;
  v99 = v26;
  if (v108)
  {
    v55 = 0;
    v56 = ((v39 + 3) & 0xFFFFFFFC) - v39 + v26;
    v57 = 16 * v108;
    while (1)
    {
      v58 = *(CFDataGetBytePtr(v7) + 5);
      v59 = CFDataGetBytePtr(v7);
      *&v59[v55 + 52] += v56 + v58;
      if (!a3)
      {
        v60 = CFDataGetBytePtr(v7);
        v111 = 4;
        LODWORD(v110) = *&v60[v55 + 48];
        BYTE4(v110) = 0;
        v61 = CFDataGetBytePtr(v7);
        updated = ACFUFTABFile::updateCache(v109, &v110, *&v61[v55 + 52], 0);
        v63 = updated;
        if ((updated & 1) == 0)
        {
          v64 = ACFULogging::getLogInstance(updated);
          ACFULogging::handleMessage(v64, 2u, "%s::%s: failed to update cache\n", v65, v66, v67, v68, v69, "ACFUFTABFile");
        }

        if (v111 < 0)
        {
          operator delete(v110);
        }

        if (!v63)
        {
          break;
        }
      }

      v55 += 16;
      if (v57 == v55)
      {
        v70 = v109;
        v72 = v106;
        v71 = v107;
        goto LABEL_27;
      }
    }

    v95 = 0;
    v71 = v107;
    goto LABEL_46;
  }

  v57 = 0;
  v70 = this;
  v72 = v106;
  v71 = v107;
LABEL_27:
  v75 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v71, v75, 48);
  v76 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v71, v76 + 48, v57);
  if (v101 != v41)
  {
    v78 = ACFULogging::getLogInstance(v77);
    ACFULogging::handleMessage(v78, 0, "%s::%s: paddingBeforeManifestStart %u bytes\n", v79, v80, v81, v82, v83, "ACFUFTABFile");
    CFDataIncreaseLength(v71, v99);
  }

  v84 = CFDataGetBytePtr(v72);
  v85 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v71, v84, *(v85 + 5));
  if (v100 != v49)
  {
    v87 = ACFULogging::getLogInstance(v86);
    ACFULogging::handleMessage(v87, 0, "%s::%s: paddingAfterManifestEnd %u bytes\n", v88, v89, v90, v91, v92, "ACFUFTABFile");
    CFDataIncreaseLength(v71, v98);
  }

  CFDataAppendBytes(v71, &v105[v104], v103 - v104 + v102);
  if (!a3)
  {
    if (ACFUDataContainer::setData(v70[1], v71) && ((*v70)[11])(v70))
    {
      isCacheValid = ACFUFTABFile::isCacheValid(v70);
      goto LABEL_36;
    }

LABEL_45:
    v95 = 0;
    goto LABEL_46;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  v93 = AMSupportSafeRetain();
  *a3 = v93;
  if (!v93)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    goto LABEL_45;
  }

  isCacheValid = ACFUFTABFile::isValidFileData(v70, v93, 0);
LABEL_36:
  v95 = isCacheValid;
LABEL_46:
  CFRelease(v71);
  return v95;
}

void sub_2402C1428(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::removeManifestPadding(ACFUFTABFile *this, CFDataRef theData)
{
  if (!theData)
  {
    ACFUFTABFile::removeManifestPadding(this);
    return 0;
  }

  v3 = *(CFDataGetBytePtr(theData) + 5);
  BytePtr = CFDataGetBytePtr(theData);
  if (!v3)
  {
    ACFUFTABFile::removeManifestPadding(BytePtr);
    return 0;
  }

  v5 = *(BytePtr + 4);
  if (v5 >= *(CFDataGetBytePtr(theData) + 13))
  {
    v18 = *(CFDataGetBytePtr(theData) + 10) - 1;
    v19 = *&CFDataGetBytePtr(theData)[16 * v18 + 52];
    v20 = CFDataGetBytePtr(theData);
    v21 = (*(v20 + 4 * v18 + 14) + v19);
    LogInstance = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest at the end - startOfManifest: %u, endOfFiles: %u, padding: %u\n", v23, v24, v25, v26, v27, "ACFUFTABFile");
    v30.location = v21;
    v30.length = v5 - v21;
    CFDataDeleteBytes(theData, v30);
    v28 = CFDataGetBytePtr(theData);
    result = 0;
    *(v28 + 4) = v21;
  }

  else
  {
    v6 = CFDataGetBytePtr(theData);
    v7 = *(v6 + 13) - (v5 + v3);
    v8 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v8, 0, "%s::%s: manifest is at top - endOfManifest: %u, startOfFiles: %u, paddingAfterManifestEnd: %u\n", v9, v10, v11, v12, v13, "ACFUFTABFile");
    v29.location = (*(CFDataGetBytePtr(theData) + 4) + v3);
    v29.length = v7;
    CFDataDeleteBytes(theData, v29);
    if (*(CFDataGetBytePtr(theData) + 10))
    {
      v14 = 0;
      v15 = 52;
      do
      {
        v16 = CFDataGetBytePtr(theData);
        *&v16[v15] -= v7;
        ++v14;
        v15 += 16;
      }

      while (v14 < *(CFDataGetBytePtr(theData) + 10));
    }

    return 1;
  }

  return result;
}

BOOL ACFUFTABFile::isCacheValid(ACFUFTABFile *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v3 = ACFUDataContainer::copyData(v2, 0, 0x30uLL);
  if (!v3)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  if (!BytePtr)
  {
    ACFUFTABFile::isCacheValid(0);
    v8 = 0;
    goto LABEL_23;
  }

  v6 = *(BytePtr + 10);
  CFRelease(v4);
  if (*(this + 7) != v6)
  {
    ACFUFTABFile::isCacheValid(v7);
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = 0;
  v36 = v6;
  v9 = 48;
  v10 = 1;
  do
  {
    v11 = ACFUDataContainer::copyData(*(this + 1), v9, 0x10uLL);
    if (!v11)
    {
      ACFUFTABFile::isCacheValid(0);
      return 0;
    }

    v4 = v11;
    v12 = CFDataGetBytePtr(v11);
    v38 = 4;
    LODWORD(__p) = *v12;
    BYTE4(__p) = 0;
    v13 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(this + 40, &__p);
    if ((this + 48) == v13)
    {
      LogInstance = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cache does not have entry for file %s. Cache is invalid\n", v21, v22, v23, v24, v25, "ACFUFTABFile");
    }

    else
    {
      v14 = v13 + 15;
      v15 = v12 + 4;
      if (v13[15] == *(v12 + 1))
      {
        v16 = v13 + 14;
        v18 = *(v12 + 2);
        v17 = v12 + 8;
        if (v13[14] == v18)
        {
          CFRelease(v4);
          v4 = 0;
          v19 = 1;
          goto LABEL_12;
        }

        v26 = ACFULogging::getLogInstance(v13);
        v15 = v17;
        v32 = "%s::%s: cache does not hold correct size for file %s. Cache size: %d. FTAB size: %d. Cache is invalid\n";
        v14 = v16;
      }

      else
      {
        v26 = ACFULogging::getLogInstance(v13);
        v32 = "%s::%s: cache does not hold correct offset for file %s. Cache offset: %d. FTAB offset: %d. Cache is invalid\n";
      }

      v34 = *v14;
      v35 = *v15;
      ACFULogging::handleMessage(v26, 2u, v32, v27, v28, v29, v30, v31, "ACFUFTABFile");
    }

    v19 = 0;
LABEL_12:
    if (v38 < 0)
    {
      operator delete(__p);
    }

    if ((v19 & 1) == 0)
    {
      break;
    }

    v8 = v10 >= v36;
    v9 += 16;
    ++v10;
    LODWORD(v6) = v6 - 1;
  }

  while (v6);
  if (!v4)
  {
    return v8;
  }

LABEL_23:
  CFRelease(v4);
  return v8;
}

void sub_2402C1864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::updateCache(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
  v9 = (a2 + 23);
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 == 4)
  {
    v11 = a1 + 48;
    if (!(a4 | a3))
    {
      LogInstance = ACFULogging::getLogInstance(v9);
      if (*(a2 + 23) < 0)
      {
        v27 = *a2;
      }

      if (v11 == v8)
      {
        ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: attempting to delete file from cache that does not exist. File: %s\n", v22, v23, v24, v25, v26, "ACFUFTABFile");
      }

      else
      {
        ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: removing file from FTAB cache. File: %s\n", v22, v23, v24, v25, v26, "ACFUFTABFile");
        std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__erase_unique<std::string>((a1 + 40), a2);
      }

      return 1;
    }

    if (v11 != v8)
    {
      v12 = ACFULogging::getLogInstance(v9);
      if (*(a2 + 23) < 0)
      {
        v18 = *a2;
      }

      ACFULogging::handleMessage(v12, 4u, "%s::%s: ftab cache entry updated. File: %s, offset: %u, size: %u\n", v13, v14, v15, v16, v17, "ACFUFTABFile");
      if (a3)
      {
        v36 = a2;
        *(std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v36) + 15) = a3;
      }

      if (!a4)
      {
        return 1;
      }

      v36 = a2;
      v19 = (a1 + 40);
      v20 = a2;
LABEL_21:
      *(std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v19, v20, &std::piecewise_construct, &v36) + 14) = a4;
      return 1;
    }

    v28 = ACFULogging::getLogInstance(v9);
    if (*(a2 + 23) < 0)
    {
      v34 = *a2;
    }

    if (a3 && a4)
    {
      ACFULogging::handleMessage(v28, 4u, "%s::%s: Adding new file to FTAB cache. File: %s, offset: %u, size: %u\n", v29, v30, v31, v32, v33, "ACFUFTABFile");
      v36 = a2;
      *(std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v36) + 15) = a3;
      v36 = a2;
      v19 = (a1 + 40);
      v20 = a2;
      goto LABEL_21;
    }

    ACFULogging::handleMessage(v28, 2u, "%s::%s: attempting to add new file to cache, but not both size and offset are provided. File: %s\n", v29, v30, v31, v32, v33, "ACFUFTABFile");
  }

  else
  {
    ACFUFTABFile::updateCache(v9);
  }

  return 0;
}

void ACFUFTABFile::copyManifest(ACFUFTABFile *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  if (!v4)
  {
    ACFUFTABFile::copyManifest(0);
LABEL_13:
    v10 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
  if (!v5)
  {
    ACFUFTABFile::copyManifest(0);
    goto LABEL_13;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  if (!BytePtr)
  {
    v11 = 1;
    v12 = "%s::%s: failed to copy ftab header\n";
    goto LABEL_16;
  }

  v8 = *(BytePtr + 5);
  if (!v8 || (v9 = *(BytePtr + 4)) == 0)
  {
    v11 = 1001;
    v12 = "%s::%s: no manifest found in ftab\n";
LABEL_16:
    LogInstance = ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage(LogInstance, 2u, v12, v14, v15, v16, v17, v18, "ACFUFTABFile");
    v10 = 0;
    goto LABEL_8;
  }

  BytePtr = ACFUDataContainer::copyData(*(this + 1), v9, v8);
  if (!BytePtr)
  {
    v11 = 4000;
    v12 = "%s::%s: failed to create manifest data output\n";
    goto LABEL_16;
  }

  v10 = BytePtr;
  v11 = 0;
LABEL_8:
  CFRelease(v6);
LABEL_9:
  *a2 = v10;
  *(a2 + 8) = v11;
}

void ACFUFTABFile::copyManifestRef(ACFUFTABFile *this@<X0>, ACFUDataContainer::DirectDataRef **a2@<X8>)
{
  *a2 = 0;
  v4 = *(this + 1);
  if (!v4)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v26 = "%s::%s: file data was invalid\n";
LABEL_14:
    ACFULogging::handleMessage(LogInstance, 2u, v26, v21, v22, v23, v24, v25, "ACFUFTABFile");
    return;
  }

  v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
  v6 = v5;
  if (!v5)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v26 = "%s::%s: failed to copy ftab header\n";
    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(v5);
  if (BytePtr)
  {
    v8 = *(BytePtr + 5);
    if (v8 && (v9 = *(BytePtr + 4)) != 0)
    {
      ACFUDataContainer::copyDirectData(*(this + 1), v8, v9, &v27);
      v10 = v27;
      v27 = 0;
      std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a2, v10);
      v11 = v27;
      v27 = 0;
      if (v11)
      {
        ACFUDataContainer::DirectDataRef::~DirectDataRef(v11);
        operator delete(v12);
      }

      if (*a2)
      {
        goto LABEL_9;
      }

      v13 = ACFULogging::getLogInstance(v11);
      v19 = "%s::%s: failed to create manifest data output\n";
    }

    else
    {
      v13 = ACFULogging::getLogInstance(BytePtr);
      v19 = "%s::%s: no manifest found in ftab\n";
    }
  }

  else
  {
    v13 = ACFULogging::getLogInstance(0);
    v19 = "%s::%s: failed to copy ftab header\n";
  }

  ACFULogging::handleMessage(v13, 2u, v19, v14, v15, v16, v17, v18, "ACFUFTABFile");
LABEL_9:
  CFRelease(v6);
}

uint64_t ACFUFTABFile::setBootNonce(ACFUFTABFile *this, uint64_t a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    isOptimized = ACFUDataContainer::isOptimized(v3);
    if (isOptimized)
    {
      ACFUFTABFile::setBootNonce(isOptimized);
    }

    else
    {
      Data = ACFUDataContainer::getData(*(this + 1));
      if (Data)
      {
        BytePtr = CFDataGetBytePtr(Data);
        *(BytePtr + 1) = a2;
        LogInstance = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Boot nonce set for FTAB. Boot nonce value: %llu\n", v9, v10, v11, v12, v13, "ACFUFTABFile");
        return 1;
      }

      ACFUFTABFile::setBootNonce(0);
    }
  }

  else
  {
    ACFUFTABFile::setBootNonce(0);
  }

  return 0;
}

uint64_t ACFUFTABFile::getBootNonce(ACFUFTABFile *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    ACFUFTABFile::getBootNonce(0);
    return 0;
  }

  v2 = ACFUDataContainer::copyData(v1, 0, 0x30uLL);
  if (!v2)
  {
    ACFUFTABFile::getBootNonce(0);
    return 0;
  }

  v3 = v2;
  BytePtr = CFDataGetBytePtr(v2);
  if (BytePtr)
  {
    v5 = *(BytePtr + 1);
  }

  else
  {
    ACFUFTABFile::getBootNonce(0);
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

uint64_t ACFUFTABFile::addNewFileToFTABOnData(ACFULogging *a1, void *a2, CFDataRef theData, CFDataRef *a4)
{
  v7 = a1;
  if (!a4 && !*(a1 + 1))
  {
    ACFUFTABFile::addNewFileToFTABOnData(a1);
    goto LABEL_88;
  }

  if (!theData)
  {
    ACFUFTABFile::addNewFileToFTABOnData(a1);
    goto LABEL_88;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::addNewFileToFTABOnData(Length);
    goto LABEL_88;
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = a2[1];
  }

  if (v9 != 4)
  {
    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  v10 = (*(*v7 + 16))(v7, a2);
  if (v10)
  {
    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  if (a4)
  {
    if (*a4)
    {
      isValidFileData = ACFUFTABFile::isValidFileData(v7, *a4, 0);
      if (isValidFileData)
      {
        v12 = *a4;
        if (*a4)
        {
          goto LABEL_13;
        }

LABEL_62:
        ACFUFTABFile::addNewFileToFTABOnData(isValidFileData);
        v74 = 0;
        Mutable = 0;
        goto LABEL_90;
      }

      ACFUFTABFile::addNewFileToFTABOnData(isValidFileData);
    }

    else
    {
      ACFUFTABFile::addNewFileToFTABOnData(v10);
    }

LABEL_88:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (ACFUDataContainer::isOptimized(*(v7 + 8)))
  {
    if (!std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(v7 + 72, a2))
    {
      v39 = AMSupportSafeRetain();
      __p[0] = a2;
      std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v7 + 72), a2, &std::piecewise_construct, __p)[7] = v39;
      LOBYTE(v7) = 1;
      return v7 & 1;
    }

    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  isValidFileData = ACFUDataContainer::getData(*(v7 + 8));
  v12 = isValidFileData;
  if (!isValidFileData)
  {
    goto LABEL_62;
  }

LABEL_13:
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    ACFUFTABFile::addNewFileToFTABOnData(0);
LABEL_81:
    v74 = 0;
    goto LABEL_90;
  }

  BytePtr = CFDataGetBytePtr(v12);
  v87 = &BytePtr[*(CFDataGetBytePtr(v12) + 13)];
  v16 = CFDataGetBytePtr(v12);
  v17 = &BytePtr[*&v16[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52]];
  v18 = CFDataGetBytePtr(v12);
  v86 = &v17[*&v18[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56]];
  CFDataGetBytePtr(v12);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  strncpy(__dst, v20, v21);
  v83 = theData;
  v92 = CFDataGetLength(theData);
  v93 = 0;
  v22 = CFDataGetBytePtr(v12);
  theDataa = Mutable;
  v82 = a2;
  if (!*(v22 + 5))
  {
    v84 = 0;
    v30 = 0;
    LODWORD(v32) = 0;
    goto LABEL_29;
  }

  LogInstance = ACFULogging::getLogInstance(v22);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v24, v25, v26, v27, v28, "ACFUFTABFile");
  v30 = ACFUFTABFile::removeManifestPadding(v29, v12);
  v31 = *(CFDataGetBytePtr(v12) + 4);
  v32 = *(CFDataGetBytePtr(v12) + 5);
  v33 = CFDataGetBytePtr(v12);
  v34 = CFDataCreate(v13, &BytePtr[v31], *(v33 + 5));
  if (!v34)
  {
    ACFUFTABFile::addNewFileToFTABOnData(0);
    goto LABEL_81;
  }

  v84 = v34;
  v35 = *(CFDataGetBytePtr(v12) + 4);
  v94.length = *(CFDataGetBytePtr(v12) + 5);
  v94.location = v35;
  CFDataDeleteBytes(v12, v94);
  if (v30)
  {
    v87 = &BytePtr[*(CFDataGetBytePtr(v12) + 13) - v32];
    v36 = CFDataGetBytePtr(v12);
    v37 = *&v36[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52];
    v38 = CFDataGetBytePtr(v12);
    v86 = &BytePtr[v37 - v32 + *&v38[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56]];
  }

  *(CFDataGetBytePtr(v12) + 5) = 0;
  *(CFDataGetBytePtr(v12) + 4) = 0;
LABEL_29:
  if (!*(CFDataGetBytePtr(v12) + 10))
  {
LABEL_48:
    v65 = CFDataGetBytePtr(v12);
    v66 = *&v65[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52];
    v67 = CFDataGetBytePtr(v12);
    v91 = *&v67[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56] + v66;
    v68 = CFDataGetBytePtr(v12);
    ++*(v68 + 10);
    v69 = CFDataGetBytePtr(v12);
    Mutable = theDataa;
    CFDataAppendBytes(theDataa, v69, 48);
    v70 = CFDataGetBytePtr(v12);
    v71 = CFDataGetBytePtr(v12);
    CFDataAppendBytes(theDataa, v70 + 48, 16 * (*(v71 + 10) - 1));
    CFDataAppendBytes(theDataa, __dst, 16);
    CFDataAppendBytes(theDataa, v87, v86 - v87);
    v72 = CFDataGetBytePtr(v83);
    v73 = CFDataGetLength(v83);
    CFDataAppendBytes(theDataa, v72, v73);
    if (a4)
    {
      v74 = v84;
      if (*a4)
      {
        CFRelease(*a4);
        *a4 = 0;
      }

      v75 = AMSupportSafeRetain();
      *a4 = v75;
      if (!v75)
      {
        ACFUFTABFile::addNewFileToFTABOnData(0);
        goto LABEL_90;
      }

      if (!v84)
      {
        v77 = v75;
        goto LABEL_66;
      }

      v76 = ACFUFTABFile::setManifestOnData(v7, v84, a4);
      if (v76)
      {
        v77 = *a4;
LABEL_66:
        isCacheValid = ACFUFTABFile::isValidFileData(v7, v77, 0);
        goto LABEL_67;
      }
    }

    else
    {
      v78 = ACFUDataContainer::setData(*(v7 + 8), theDataa);
      v74 = v84;
      if ((v78 & 1) == 0)
      {
        ACFUFTABFile::addNewFileToFTABOnData(v78);
        goto LABEL_90;
      }

      updated = ACFUFTABFile::updateCache(v7, v82, v91, v92);
      if ((updated & 1) == 0)
      {
        ACFUFTABFile::addNewFileToFTABOnData(updated);
        goto LABEL_90;
      }

      if (!v84 || (v76 = ACFUFTABFile::setManifestOnData(v7, v84, 0), (v76 & 1) != 0))
      {
        if ((*(*v7 + 88))(v7))
        {
          isCacheValid = ACFUFTABFile::isCacheValid(v7);
LABEL_67:
          LOBYTE(v7) = isCacheValid;
          goto LABEL_68;
        }

LABEL_90:
        LOBYTE(v7) = 0;
        if (!Mutable)
        {
LABEL_69:
          if (v74)
          {
            CFRelease(v74);
          }

          return v7 & 1;
        }

LABEL_68:
        CFRelease(Mutable);
        goto LABEL_69;
      }
    }

    ACFUFTABFile::addNewFileToFTABOnData(v76);
    goto LABEL_90;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = CFDataGetBytePtr(v12);
    *&v42[v40 + 52] += 16;
    if (!a4)
    {
      v43 = CFDataGetBytePtr(v12);
      v89 = 4;
      LODWORD(__p[0]) = *&v43[v40 + 48];
      BYTE4(__p[0]) = 0;
      v44 = CFDataGetBytePtr(v12);
      v45 = ACFUFTABFile::updateCache(v7, __p, *&v44[v40 + 52], 0);
      v46 = v45;
      if (v45)
      {
        v47 = 0;
      }

      else
      {
        v53 = ACFULogging::getLogInstance(v45);
        ACFULogging::handleMessage(v53, 2u, "%s::%s: failed to update cache\n", v54, v55, v56, v57, v58, "ACFUFTABFile");
        v47 = 4;
      }

      if (v89 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v46)
      {
        break;
      }
    }

    if (v30)
    {
      v48 = CFDataGetBytePtr(v12);
      *&v48[v40 + 52] -= v32;
      if (!a4)
      {
        v49 = CFDataGetBytePtr(v12);
        v89 = 4;
        LODWORD(__p[0]) = *&v49[v40 + 48];
        BYTE4(__p[0]) = 0;
        v50 = CFDataGetBytePtr(v12);
        v51 = ACFUFTABFile::updateCache(v7, __p, *&v50[v40 + 52], 0);
        v52 = v51;
        if (v51)
        {
          v47 = 0;
        }

        else
        {
          v59 = ACFULogging::getLogInstance(v51);
          ACFULogging::handleMessage(v59, 2u, "%s::%s: failed to update cache\n", v60, v61, v62, v63, v64, "ACFUFTABFile");
          v47 = 4;
        }

        if (v89 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v52)
        {
          break;
        }
      }
    }

    ++v41;
    v40 += 16;
    if (v41 >= *(CFDataGetBytePtr(v12) + 10))
    {
      goto LABEL_48;
    }
  }

  if ((v47 | 4) == 4)
  {
    LOBYTE(v7) = 0;
    v74 = v84;
    Mutable = theDataa;
    goto LABEL_68;
  }

  return v7 & 1;
}

void sub_2402C25EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::updateFileInFTABOnData(ACFULogging *a1, CFIndex a2, CFDataRef theData, CFDataRef *a4)
{
  v4 = a4;
  v5 = theData;
  v7 = a1;
  if (!a4 && !*(a1 + 1))
  {
    ACFUFTABFile::updateFileInFTABOnData(a1);
    goto LABEL_31;
  }

  if (!theData)
  {
    ACFUFTABFile::updateFileInFTABOnData(a1);
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::updateFileInFTABOnData(Length);
    goto LABEL_31;
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 != 4)
  {
    ACFUFTABFile::updateFileInFTABOnData((a2 + 23));
    goto LABEL_31;
  }

  theDataa = v5;
  if (v4)
  {
    if (*v4)
    {
      isValidFileData = ACFUFTABFile::isValidFileData(v7, *v4, 0);
      if (isValidFileData)
      {
        v11 = *v4;
        BytePtr = CFDataGetBytePtr(*v4);
        if (BytePtr)
        {
          v13 = BytePtr[10];
          if (v13)
          {
            v14 = 0;
            v15 = 16 * v13;
            do
            {
              v16 = CFDataGetBytePtr(v11);
              v139 = 4;
              LODWORD(range.length) = *&v16[v14 + 48];
              BYTE4(range.length) = 0;
              v17 = *(a2 + 23);
              if (v17 >= 0)
              {
                v18 = *(a2 + 23);
              }

              else
              {
                v18 = *(a2 + 8);
              }

              if (v17 >= 0)
              {
                v19 = a2;
              }

              else
              {
                v19 = *a2;
              }

              if (v18 >= 4)
              {
                v20 = 4;
              }

              else
              {
                v20 = v18;
              }

              v21 = memcmp(v19, &range.length, v20);
              if (v18 == 4 && v21 == 0)
              {
                v35 = *&CFDataGetBytePtr(v11)[v14 + 56];
                v36 = *&CFDataGetBytePtr(v11)[v14 + 52];
                v5 = theDataa;
                goto LABEL_41;
              }

              v14 += 16;
            }

            while (v15 != v14);
            LogInstance = ACFULogging::getLogInstance(v21);
            if (*(a2 + 23) < 0)
            {
              v29 = *a2;
            }

            ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot update tag '%s' because it does not exist\n", v24, v25, v26, v27, v28, "ACFUFTABFile");
          }

          else
          {
            ACFUFTABFile::updateFileInFTABOnData(BytePtr);
          }
        }

        else
        {
          ACFUFTABFile::updateFileInFTABOnData(0);
        }
      }

      else
      {
        ACFUFTABFile::updateFileInFTABOnData(isValidFileData);
      }
    }

    else
    {
      ACFUFTABFile::updateFileInFTABOnData(Length);
    }

    goto LABEL_31;
  }

  if (ACFUDataContainer::isOptimized(*(v7 + 8)))
  {
    v31 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(v7 + 72, a2);
    if (v7 + 80 != v31)
    {
      v32 = v31;
      v33 = *(v31 + 56);
      if (v33)
      {
        CFRelease(v33);
        *(v32 + 56) = 0;
      }
    }

    v34 = AMSupportSafeRetain();
    range.length = a2;
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v7 + 72), a2, &std::piecewise_construct, &range.length)[7] = v34;
    v30 = 1;
    return v30 & 1;
  }

  Data = ACFUDataContainer::getData(*(v7 + 8));
  if (!Data)
  {
    ACFUFTABFile::updateFileInFTABOnData(0);
    goto LABEL_31;
  }

  v11 = Data;
  if (((*(*v7 + 16))(v7, a2) & 1) == 0)
  {
    ACFUFTABFile::updateFileInFTABOnData((a2 + 23));
    goto LABEL_31;
  }

  v38 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(v7 + 40, a2);
  v35 = *(v38 + 56);
  v36 = *(v38 + 60);
LABEL_41:
  v39 = v35;
  if (CFDataGetLength(v5) != v35)
  {
    v43 = CFDataGetBytePtr(v11);
    CFDataGetBytePtr(v11);
    v44 = CFDataGetBytePtr(v11);
    if (*(v44 + 5))
    {
      v45 = ACFULogging::getLogInstance(v44);
      ACFULogging::handleMessage(v45, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v46, v47, v48, v49, v50, "ACFUFTABFile");
      LODWORD(range.location) = ACFUFTABFile::removeManifestPadding(v51, v11);
      v52 = *(CFDataGetBytePtr(v11) + 4);
      v53 = *MEMORY[0x277CBECE8];
      v54 = CFDataGetBytePtr(v11);
      v135 = CFDataCreate(v53, &v43[v52], *(v54 + 5));
      if (!v135)
      {
        ACFUFTABFile::updateFileInFTABOnData(0);
        goto LABEL_31;
      }

      v55 = *(CFDataGetBytePtr(v11) + 4);
      v142.length = *(CFDataGetBytePtr(v11) + 5);
      v142.location = v55;
      CFDataDeleteBytes(v11, v142);
      if (LODWORD(range.location) && *(CFDataGetBytePtr(v11) + 10))
      {
        v56 = 0;
        v57 = 52;
        do
        {
          v58 = *(CFDataGetBytePtr(v11) + 5);
          v59 = CFDataGetBytePtr(v11);
          *&v59[v57] -= v58;
          ++v56;
          v57 += 16;
        }

        while (v56 < *(CFDataGetBytePtr(v11) + 10));
      }

      *(CFDataGetBytePtr(v11) + 5) = 0;
      *(CFDataGetBytePtr(v11) + 4) = 0;
      v5 = theDataa;
    }

    else
    {
      v135 = 0;
    }

    if (*(CFDataGetBytePtr(v11) + 10))
    {
      v60 = 0;
      v61 = 48;
      do
      {
        v62 = CFDataGetBytePtr(v11);
        v139 = 4;
        LODWORD(range.length) = *&v62[v61];
        v63 = *(a2 + 23);
        v64 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v63 = *(a2 + 8);
        }

        if (v63 == 4)
        {
          v65 = v64 >= 0 ? a2 : *a2;
          if (*v65 == LODWORD(range.length))
          {
            break;
          }
        }

        ++v60;
        v61 += 16;
      }

      while (v60 < *(CFDataGetBytePtr(v11) + 10));
      v5 = theDataa;
    }

    else
    {
      LODWORD(v60) = 0;
    }

    v66 = CFDataGetLength(v5);
    v67 = CFDataGetLength(v5);
    if (v66 >= v39)
    {
      v136 = (v67 - v39);
      CFDataIncreaseLength(v11, v136);
      v83 = *(CFDataGetBytePtr(v11) + 10) - 1;
      if (v83 > v60)
      {
        v84 = 16 * v83 + 48;
        while (1)
        {
          range.location = (*&CFDataGetBytePtr(v11)[v84 + 4] + v136);
          v85 = *&CFDataGetBytePtr(v11)[v84 + 8];
          v86 = CFDataGetBytePtr(v11);
          v87 = v4;
          v88 = v7;
          v89 = *&CFDataGetBytePtr(v11)[v84 + 4];
          v90 = CFDataGetBytePtr(v11);
          v91 = &v86[v89];
          v7 = v88;
          v4 = v87;
          v143.location = range.location;
          v143.length = v85;
          CFDataReplaceBytes(v11, v143, v91, *&v90[v84 + 8]);
          v92 = CFDataGetBytePtr(v11);
          *&v92[v84 + 4] += v136;
          if (!v87)
          {
            v93 = CFDataGetBytePtr(v11);
            v139 = 4;
            LODWORD(range.length) = *&v93[v84];
            BYTE4(range.length) = 0;
            v94 = CFDataGetBytePtr(v11);
            updated = ACFUFTABFile::updateCache(v7, &range.length, *&v94[v84 + 4], 0);
            v96 = updated;
            if (updated)
            {
              v76 = 0;
            }

            else
            {
              v97 = ACFULogging::getLogInstance(updated);
              ACFULogging::handleMessage(v97, 2u, "%s::%s: could not update ftab cache\n", v98, v99, v100, v101, v102, "ACFUFTABFile");
              v76 = 4;
            }

            if (v139 < 0)
            {
              operator delete(range.length);
            }

            if (!v96)
            {
              break;
            }
          }

          v84 -= 16;
          if (v60 >= --v83)
          {
            goto LABEL_100;
          }
        }

LABEL_110:
        if (v76)
        {
          v120 = v135;
LABEL_117:
          v30 = 0;
LABEL_118:
          if (!v120)
          {
            return v30 & 1;
          }

LABEL_119:
          CFRelease(v120);
          return v30 & 1;
        }

        goto LABEL_112;
      }

LABEL_100:
      v110 = CFDataGetLength(theDataa);
      v60 = v60;
      *&CFDataGetBytePtr(v11)[16 * v60 + 56] = v110;
      if (!v4)
      {
        v111 = CFDataGetBytePtr(v11);
        v139 = 4;
        LODWORD(range.length) = *&v111[16 * v60 + 48];
        BYTE4(range.length) = 0;
        v112 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
        v113 = CFDataGetLength(theDataa);
        v114 = ACFUFTABFile::updateCache(v7, &range.length, v112, v113);
        v115 = v114;
        if (v114)
        {
          v76 = 0;
        }

        else
        {
          v129 = ACFULogging::getLogInstance(v114);
          ACFULogging::handleMessage(v129, 2u, "%s::%s: could not update ftab cache\n", v130, v131, v132, v133, v134, "ACFUFTABFile");
          v76 = 4;
        }

        if (v139 < 0)
        {
          operator delete(range.length);
        }

        if ((v115 & 1) == 0)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v68 = (v39 - v67);
      v69 = (v60 + 1);
      if (v69 < *(CFDataGetBytePtr(v11) + 10))
      {
        v70 = 16 * (v60 + 1);
        do
        {
          v71 = CFDataGetBytePtr(v11);
          *&v71[v70 + 52] -= v68;
          if (!v4)
          {
            v72 = CFDataGetBytePtr(v11);
            v139 = 4;
            LODWORD(range.length) = *&v72[v70 + 48];
            BYTE4(range.length) = 0;
            v73 = CFDataGetBytePtr(v11);
            v74 = ACFUFTABFile::updateCache(v7, &range.length, *&v73[v70 + 52], 0);
            v75 = v74;
            if (v74)
            {
              v76 = 0;
            }

            else
            {
              v77 = ACFULogging::getLogInstance(v74);
              ACFULogging::handleMessage(v77, 2u, "%s::%s: could not update ftab cache\n", v78, v79, v80, v81, v82, "ACFUFTABFile");
              v76 = 4;
            }

            if (v139 < 0)
            {
              operator delete(range.length);
            }

            if (!v75)
            {
              goto LABEL_110;
            }
          }

          ++v69;
          v70 += 16;
        }

        while (v69 < *(CFDataGetBytePtr(v11) + 10));
      }

      v103 = CFDataGetLength(theDataa);
      v60 = v60;
      *&CFDataGetBytePtr(v11)[16 * v60 + 56] = v103;
      if (!v4)
      {
        v104 = CFDataGetBytePtr(v11);
        v139 = 4;
        LODWORD(range.length) = *&v104[16 * v60 + 48];
        BYTE4(range.length) = 0;
        v105 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
        v106 = CFDataGetLength(theDataa);
        v107 = ACFUFTABFile::updateCache(v7, &range.length, v105, v106);
        v108 = v107;
        if (v107)
        {
          v76 = 0;
        }

        else
        {
          v123 = ACFULogging::getLogInstance(v107);
          ACFULogging::handleMessage(v123, 2u, "%s::%s: could not update ftab cache\n", v124, v125, v126, v127, v128, "ACFUFTABFile");
          v76 = 4;
        }

        if (v139 < 0)
        {
          operator delete(range.length);
        }

        if (!v108)
        {
          goto LABEL_110;
        }
      }

      v109 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
      v144.location = CFDataGetLength(theDataa) + v109;
      v144.length = v68;
      CFDataDeleteBytes(v11, v144);
    }

    v116 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
    v117 = CFDataGetLength(theDataa);
    v118 = CFDataGetBytePtr(theDataa);
    v119 = CFDataGetLength(theDataa);
    v145.location = v116;
    v145.length = v117;
    CFDataReplaceBytes(v11, v145, v118, v119);
    if (v4)
    {
      v120 = v135;
      if (!v135 || (v121 = ACFUFTABFile::setManifestOnData(v7, v135, v4), v121))
      {
        isCacheValid = ACFUFTABFile::isValidFileData(v7, *v4, 0);
        goto LABEL_116;
      }

LABEL_132:
      ACFUFTABFile::updateFileInFTABOnData(v121);
      v30 = 0;
      goto LABEL_119;
    }

LABEL_112:
    v120 = v135;
    if (!v135 || (v121 = ACFUFTABFile::setManifestOnData(v7, v135, 0), v121))
    {
      if (!(*(*v7 + 88))(v7))
      {
        goto LABEL_117;
      }

      isCacheValid = ACFUFTABFile::isCacheValid(v7);
LABEL_116:
      v30 = isCacheValid;
      goto LABEL_118;
    }

    goto LABEL_132;
  }

  v40 = CFDataGetBytePtr(v5);
  v141.location = v36;
  v141.length = v35;
  CFDataReplaceBytes(v11, v141, v40, v35);
  if (v4)
  {
    v41 = *v4;

    return ACFUFTABFile::isValidFileData(v7, v41, 0);
  }

  if (!(*(*v7 + 88))(v7))
  {
LABEL_31:
    v30 = 0;
    return v30 & 1;
  }

  return ACFUFTABFile::isCacheValid(v7);
}

void sub_2402C30AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::removeFileFromFTAB(ACFUDataContainer **a1, void *a2)
{
  v3 = a1[1];
  if (!v3)
  {
    ACFUFTABFile::removeFileFromFTAB(0);
    return 0;
  }

  isOptimized = ACFUDataContainer::isOptimized(v3);
  if (isOptimized)
  {
    ACFUFTABFile::removeFileFromFTAB(isOptimized);
    return 0;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v6 != 4)
  {
    ACFUFTABFile::removeFileFromFTAB((a2 + 23));
    return 0;
  }

  if (((*(*a1 + 2))(a1, a2) & 1) == 0)
  {
    ACFUFTABFile::removeFileFromFTAB((a2 + 23));
    return 0;
  }

  Data = ACFUDataContainer::getData(a1[1]);
  if (!Data)
  {
    ACFUFTABFile::removeFileFromFTAB(0);
    return 0;
  }

  v8 = Data;
  if (*(CFDataGetBytePtr(Data) + 10))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LODWORD(__p[0]) = *&CFDataGetBytePtr(v8)[v9 + 48];
      v11 = *(a2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = a2[1];
      }

      if (v11 == 4)
      {
        v13 = v12 >= 0 ? a2 : *a2;
        if (*v13 == LODWORD(__p[0]))
        {
          break;
        }
      }

      ++v10;
      v9 += 16;
      if (v10 >= *(CFDataGetBytePtr(v8) + 10))
      {
        v14 = 0;
        goto LABEL_36;
      }
    }

    v14 = *&CFDataGetBytePtr(v8)[v9 + 56];
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_36:
    v34 = 0;
    v15 = v10;
    while (1)
    {
      BytePtr = CFDataGetBytePtr(v8);
      *&BytePtr[v34 + 52] -= 16;
      v36 = CFDataGetBytePtr(v8);
      v47 = 4;
      LODWORD(__p[0]) = *&v36[v34 + 48];
      BYTE4(__p[0]) = 0;
      v37 = CFDataGetBytePtr(v8);
      updated = ACFUFTABFile::updateCache(a1, __p, *&v37[v34 + 52], 0);
      v39 = updated;
      if ((updated & 1) == 0)
      {
        LogInstance = ACFULogging::getLogInstance(updated);
        ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not update ftab cache\n", v41, v42, v43, v44, v45, "ACFUFTABFile");
      }

      if (v47 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v39 & 1) == 0)
      {
        return 0;
      }

      v34 += 16;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }
  }

  v14 = 0;
LABEL_20:
  v15 = 0;
LABEL_21:
  v16 = 16 * (v15 + 1);
  v17 = v15;
  while (1)
  {
    ++v17;
    v18 = *(CFDataGetBytePtr(v8) + 10);
    v19 = CFDataGetBytePtr(v8);
    if (v17 >= v18)
    {
      break;
    }

    *&v19[v16 + 52] = *&v19[v16 + 52] - v14 - 16;
    v20 = CFDataGetBytePtr(v8);
    v47 = 4;
    LODWORD(__p[0]) = *&v20[v16 + 48];
    BYTE4(__p[0]) = 0;
    v21 = CFDataGetBytePtr(v8);
    v22 = ACFUFTABFile::updateCache(a1, __p, *&v21[v16 + 52], 0);
    v23 = v22;
    if ((v22 & 1) == 0)
    {
      v24 = ACFULogging::getLogInstance(v22);
      ACFULogging::handleMessage(v24, 2u, "%s::%s: could not update ftab cache\n", v25, v26, v27, v28, v29, "ACFUFTABFile");
    }

    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    v16 += 16;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  --*(v19 + 10);
  if (*(CFDataGetBytePtr(v8) + 4))
  {
    v30 = *(CFDataGetBytePtr(v8) + 4);
    if (v30 > *(CFDataGetBytePtr(v8) + 13))
    {
      v31 = CFDataGetBytePtr(v8);
      *(v31 + 4) = *(v31 + 4) - v14 - 16;
    }
  }

  v48.location = *&CFDataGetBytePtr(v8)[16 * v15 + 52];
  v48.length = v14;
  CFDataDeleteBytes(v8, v48);
  v49.location = 16 * v15 + 48;
  v49.length = 16;
  CFDataDeleteBytes(v8, v49);
  v32 = ACFUFTABFile::updateCache(a1, a2, 0, 0);
  if ((v32 & 1) == 0)
  {
    ACFUFTABFile::removeFileFromFTAB(v32);
    return 0;
  }

  result = (*(*a1 + 11))(a1);
  if (result)
  {
    return ACFUFTABFile::isCacheValid(a1);
  }

  return result;
}

void sub_2402C34DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::moveFileToTop(ACFUDataContainer **a1, uint64_t *a2)
{
  v3 = a1[1];
  if (!v3)
  {
    ACFUFTABFile::moveFileToTop(0);
    return 0;
  }

  isOptimized = ACFUDataContainer::isOptimized(v3);
  if (isOptimized)
  {
    ACFUFTABFile::moveFileToTop(isOptimized);
    return 0;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v6 != 4)
  {
    ACFUFTABFile::moveFileToTop((a2 + 23));
    return 0;
  }

  if (((*(*a1 + 2))(a1, a2) & 1) == 0)
  {
    ACFUFTABFile::moveFileToTop((a2 + 23));
    return 0;
  }

  Data = ACFUDataContainer::getData(a1[1]);
  if (!Data)
  {
    ACFUFTABFile::moveFileToTop(0);
    return 0;
  }

  v8 = Data;
  if (*(CFDataGetBytePtr(Data) + 10))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v61 = *&CFDataGetBytePtr(v8)[v9 + 48];
      v11 = *(a2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = a2[1];
      }

      if (v11 == 4)
      {
        v13 = v12 >= 0 ? a2 : *a2;
        if (*v13 == v61)
        {
          break;
        }
      }

      ++v10;
      v9 += 16;
      if (v10 >= *(CFDataGetBytePtr(v8) + 10))
      {
        goto LABEL_20;
      }
    }

    v14 = *&CFDataGetBytePtr(v8)[v9 + 56];
  }

  else
  {
    LODWORD(v10) = 0;
LABEL_20:
    v14 = 0;
  }

  BytePtr = CFDataGetBytePtr(v8);
  if (v10 >= *(BytePtr + 10))
  {
    ACFUFTABFile::moveFileToTop(BytePtr);
    return 0;
  }

  LogInstance = ACFULogging::getLogInstance(BytePtr);
  if (*(a2 + 23) < 0)
  {
    v22 = *a2;
  }

  if (v10)
  {
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: moving %s to top\n", v17, v18, v19, v20, v21, "ACFUFTABFile");
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (Mutable)
    {
      v24 = Mutable;
      v25 = CFDataGetBytePtr(v8);
      CFDataAppendBytes(v24, v25, 48);
      v26 = CFDataGetBytePtr(v8);
      v27 = v10;
      CFDataAppendBytes(v24, &v26[16 * v10 + 48], 16);
      v28 = *(CFDataGetBytePtr(v8) + 13);
      *(CFDataGetBytePtr(v24) + 13) = v28;
      v29 = 68;
      v30 = v10;
      do
      {
        v31 = CFDataGetBytePtr(v8);
        CFDataAppendBytes(v24, &v31[v29 - 20], 16);
        v32 = CFDataGetBytePtr(v24);
        *&v32[v29] += v14;
        v29 += 16;
        --v30;
      }

      while (v30);
      v33 = v10 + 1;
      if (v33 < *(CFDataGetBytePtr(v8) + 10))
      {
        v34 = 16 * v33 + 48;
        v35 = v33;
        do
        {
          v36 = CFDataGetBytePtr(v8);
          CFDataAppendBytes(v24, &v36[v34], 16);
          v34 += 16;
          ++v35;
        }

        while (*(CFDataGetBytePtr(v8) + 10) > v35);
      }

      if (*(CFDataGetBytePtr(v8) + 4))
      {
        v37 = *(CFDataGetBytePtr(v8) + 4);
        if (v37 < *(CFDataGetBytePtr(v8) + 13))
        {
          v38 = *(CFDataGetBytePtr(v8) + 4);
          if (CFDataGetLength(v24) != v38)
          {
            ACFUFTABFile::moveFileToTop(v8);
            goto LABEL_58;
          }

          v39 = CFDataGetBytePtr(v8);
          v40 = *(CFDataGetBytePtr(v8) + 4);
          v41 = CFDataGetBytePtr(v8);
          CFDataAppendBytes(v24, &v39[v40], *(v41 + 5));
        }
      }

      v42 = *(CFDataGetBytePtr(v24) + 13);
      if (CFDataGetLength(v24) > v42)
      {
        ACFUFTABFile::moveFileToTop(v24);
      }

      else
      {
        Length = CFDataGetLength(v24);
        if (Length < *(CFDataGetBytePtr(v24) + 13))
        {
          v44 = *(CFDataGetBytePtr(v24) + 13);
          v45 = CFDataGetLength(v24);
          CFDataIncreaseLength(v24, v44 - v45);
        }

        v46 = CFDataGetBytePtr(v8);
        v47 = *&CFDataGetBytePtr(v8)[16 * v27 + 52];
        v48 = CFDataGetBytePtr(v8);
        CFDataAppendBytes(v24, &v46[v47], *&v48[16 * v27 + 56]);
        v49 = CFDataGetBytePtr(v8);
        v50 = *(CFDataGetBytePtr(v8) + 13);
        v51 = *&CFDataGetBytePtr(v8)[16 * v27 + 52];
        v52 = CFDataGetBytePtr(v8);
        CFDataAppendBytes(v24, &v49[v50], (v51 - *(v52 + 13)));
        if (v33 < *(CFDataGetBytePtr(v8) + 10))
        {
          v53 = CFDataGetBytePtr(v8);
          v54 = *&CFDataGetBytePtr(v8)[16 * v33 + 52];
          v55 = CFDataGetLength(v8);
          v56 = CFDataGetBytePtr(v8);
          CFDataAppendBytes(v24, &v53[v54], v55 - *&v56[16 * v33 + 52]);
        }

        v57 = ACFUDataContainer::setData(a1[1], v24);
        if (v57)
        {
          inited = ACFUFTABFile::initCache(a1);
          if (inited)
          {
            if ((*(*a1 + 11))(a1))
            {
              isCacheValid = ACFUFTABFile::isCacheValid(a1);
LABEL_59:
              CFRelease(v24);
              return isCacheValid;
            }
          }

          else
          {
            ACFUFTABFile::moveFileToTop(inited);
          }
        }

        else
        {
          ACFUFTABFile::moveFileToTop(v57);
        }
      }

LABEL_58:
      isCacheValid = 0;
      goto LABEL_59;
    }

    ACFUFTABFile::moveFileToTop(0);
    return 0;
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: %s already at top\n", v17, v18, v19, v20, v21, "ACFUFTABFile");
  return 1;
}

uint64_t ACFUFTABFile::initCache(ACFUFTABFile *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::initCache(0);
    goto LABEL_26;
  }

  if (*(this + 7))
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: ftab cache had entries before ftab container was initialized. Clearing cache before moving on.\n", v4, v5, v6, v7, v8, "ACFUFTABFile");
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(this + 40, *(this + 6));
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 5) = this + 48;
    v2 = *(this + 1);
  }

  v9 = ACFUDataContainer::copyData(v2, 0, 0x30uLL);
  if (!v9)
  {
    ACFUFTABFile::initCache(0);
    goto LABEL_26;
  }

  v10 = v9;
  BytePtr = CFDataGetBytePtr(v9);
  if (BytePtr)
  {
    v12 = *(BytePtr + 10);
    CFRelease(v10);
    if (v12)
    {
      v13 = 0;
      v14 = v12 - 1;
      v15 = 48;
      do
      {
        v16 = ACFUDataContainer::copyData(*(this + 1), v15, 0x10uLL);
        if (!v16)
        {
          ACFUFTABFile::initCache(0);
          LOBYTE(v19) = v13;
          return v19 & 1;
        }

        v10 = v16;
        v17 = CFDataGetBytePtr(v16);
        if (!v17)
        {
          ACFUFTABFile::initCache(0);
          LOBYTE(v19) = v13;
          goto LABEL_21;
        }

        v30 = 4;
        LODWORD(__p) = *v17;
        BYTE4(__p) = 0;
        updated = ACFUFTABFile::updateCache(this, &__p, *(v17 + 1), *(v17 + 2));
        v19 = updated;
        if (updated)
        {
          CFRelease(v10);
          v10 = 0;
        }

        else
        {
          v22 = ACFULogging::getLogInstance(updated);
          ACFULogging::handleMessage(v22, 2u, "%s::%s: failed to initialize cache\n", v23, v24, v25, v26, v27, "ACFUFTABFile");
        }

        if (v30 < 0)
        {
          operator delete(__p);
        }

        v21 = v14-- != 0;
        v15 += 16;
        v13 = 1;
      }

      while ((v19 & v21 & 1) != 0);
      if (!v10)
      {
        return v19 & 1;
      }

      goto LABEL_21;
    }

LABEL_26:
    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  ACFUFTABFile::initCache(0);
  LOBYTE(v19) = 0;
LABEL_21:
  CFRelease(v10);
  return v19 & 1;
}

void sub_2402C3C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::setFTABValidity(ACFUFTABFile *this, int a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    isOptimized = ACFUDataContainer::isOptimized(v3);
    if (isOptimized)
    {
      ACFUFTABFile::setFTABValidity(isOptimized);
    }

    else
    {
      Data = ACFUDataContainer::getData(*(this + 1));
      if (Data)
      {
        *(CFDataGetBytePtr(Data) + 1) = a2;
        return 1;
      }

      ACFUFTABFile::setFTABValidity(0);
    }
  }

  else
  {
    ACFUFTABFile::setFTABValidity(0);
  }

  return 0;
}

uint64_t ACFUFTABFile::copyFWDataByName(uint64_t a1, uint64_t a2)
{
  isOptimized = ACFUDataContainer::isOptimized(*(a1 + 8));
  if (!isOptimized || (isOptimized = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), (a1 + 80) == isOptimized))
  {
    if (!*(a1 + 8))
    {
      ACFUFTABFile::copyFWDataByName(isOptimized);
      return 0;
    }

    v7 = *(a2 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v7 != 4)
    {
      ACFUFTABFile::copyFWDataByName(isOptimized);
      return 0;
    }

    v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
    if (a1 + 48 == v8)
    {
      ACFUFTABFile::copyFWDataByName((a2 + 23));
      return 0;
    }

    result = ACFUDataContainer::copyData(*(a1 + 8), *(v8 + 60), *(v8 + 56));
    if (!result)
    {
      ACFUFTABFile::copyFWDataByName(0);
      return 0;
    }
  }

  else
  {
    v5 = *(isOptimized + 7);
    result = AMSupportSafeRetain();
    if (!result)
    {
      ACFUFTABFile::copyFWDataByName(0);
      return 0;
    }
  }

  return result;
}

void ACFUFTABFile::copyFWRefByName(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, ACFUDataContainer::DirectDataRef **a5@<X8>)
{
  *a5 = 0;
  v7 = *(a1 + 8);
  if (!v7)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v34 = "%s::%s: file data was invalid\n";
    goto LABEL_19;
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 != 4)
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    v34 = "%s::%s: specified tag name is invalid!\n";
    goto LABEL_19;
  }

  if (!ACFUDataContainer::isOptimized(v7) || (v12 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), a1 + 80 == v12))
  {
    v24 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
    if ((a1 + 48) == v24)
    {
      LogInstance = ACFULogging::getLogInstance(v24);
      v34 = "%s::%s: file does not exist\n";
    }

    else
    {
      ACFUDataContainer::copyDirectData(*(a1 + 8), a4, *(v24 + 15) + a3, &v35);
      v25 = v35;
      v35 = 0;
      std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a5, v25);
      v26 = v35;
      v35 = 0;
      if (v26)
      {
        ACFUDataContainer::DirectDataRef::~DirectDataRef(v26);
        operator delete(v27);
      }

      if (*a5)
      {
        return;
      }

      LogInstance = ACFULogging::getLogInstance(v26);
      v34 = "%s::%s: failed to obtain data ref\n";
    }

LABEL_19:
    ACFULogging::handleMessage(LogInstance, 2u, v34, v29, v30, v31, v32, v33, "ACFUFTABFile");
    return;
  }

  v13 = malloc(a4);
  if (!v13)
  {
    v17 = ACFULogging::getLogInstance(0);
    v23 = "%s::%s: failed to allocate data\n";
    goto LABEL_21;
  }

  v14 = v13;
  v36.location = a3;
  v36.length = a4;
  CFDataGetBytes(*(v12 + 56), v36, v13);
  v15 = operator new(0x18uLL);
  ACFUDataContainer::DirectDataRef::DirectDataRef(v15, v14, a4, 0);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a5, v15);
  if (!*a5)
  {
    v17 = ACFULogging::getLogInstance(v16);
    v23 = "%s::%s: failed to obtain data ref\n";
LABEL_21:
    ACFULogging::handleMessage(v17, 2u, v23, v18, v19, v20, v21, v22, "ACFUFTABFile");
  }
}

void sub_2402C3F74(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

CFDataRef ACFUFTABFile::copyFirmwareContainer(ACFUFTABFile *this)
{
  v13 = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::copyFirmwareContainer(0);
    return v13;
  }

  v13 = ACFUDataContainer::copyData(v2);
  if (!v13)
  {
    ACFUFTABFile::copyFirmwareContainer(0);
    return v13;
  }

  if (ACFUDataContainer::isOptimized(*(this + 1)))
  {
    v3 = *(this + 9);
    if (v3 != (this + 80))
    {
      do
      {
        v4 = (*(*this + 16))(this, v3 + 4);
        v5 = *(v3 + 7);
        v6 = (v3 + 32);
        if (v4)
        {
          updated = ACFUFTABFile::updateFileInFTABOnData(this, v6, v5, &v13);
          if ((updated & 1) == 0)
          {
            ACFUFTABFile::copyFirmwareContainer(updated);
            return v13;
          }
        }

        else
        {
          v8 = ACFUFTABFile::addNewFileToFTABOnData(this, v6, v5, &v13);
          if ((v8 & 1) == 0)
          {
            ACFUFTABFile::copyFirmwareContainer(v8);
            return v13;
          }
        }

        v9 = *(v3 + 1);
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
            v10 = *(v3 + 2);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v3 = v10;
      }

      while (v10 != (this + 80));
    }
  }

  return v13;
}

void ACFUFTABFile::prettyLog(ACFUFTABFile *this)
{
  v111 = *MEMORY[0x277D85DE8];
  __p = 0;
  v108 = 0;
  v109 = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v79 = "%s::%s: file data was invalid\n";
    goto LABEL_33;
  }

  isOptimized = ACFUDataContainer::isOptimized(v2);
  v4 = *(this + 1);
  if (isOptimized)
  {
    v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
    v6 = v5;
    if (v5)
    {
      BytePtr = CFDataGetBytePtr(v5);
      if (!BytePtr)
      {
        goto LABEL_34;
      }

      goto LABEL_8;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    v79 = "%s::%s: failed to copy ftab header\n";
LABEL_33:
    v80 = 2;
    goto LABEL_25;
  }

  v8 = ACFUDataContainer::copyData(v4);
  v6 = v8;
  if (!v8)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v79 = "%s::%s: could not obtain file data\n";
    goto LABEL_33;
  }

  BytePtr = CFDataGetBytePtr(v8);
  if (!BytePtr)
  {
LABEL_34:
    v88 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v88, 2u, "%s::%s: failed to copy ftab header\n", v89, v90, v91, v92, v93, "ACFUFTABFile");
    CFRelease(v6);
    goto LABEL_26;
  }

LABEL_8:
  v9 = *(BytePtr + 10);
  v10 = *(BytePtr + 4);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p);
  }

  __p = v10;
  LOBYTE(v108) = 0;
  HIBYTE(v109) = 8;
  ACFUFile::fileVersionLog(this);
  v12 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v12, 4u, "%s::%s: =========== FTAB Header ===========\n", v13, v14, v15, v16, v17, "ACFUFTABFile");
  v19 = ACFULogging::getLogInstance(v18);
  v97 = *(BytePtr + 1);
  v100 = *(BytePtr + 1);
  v94 = *BytePtr;
  ACFULogging::handleMessage(v19, 4u, "%s::%s: Generation: %u, Valid: %u, BootNonce: 0x%08llx\n", v20, v21, v22, v23, v24, "ACFUFTABFile");
  v26 = ACFULogging::getLogInstance(v25);
  v98 = *(BytePtr + 5);
  v95 = *(BytePtr + 4);
  ACFULogging::handleMessage(v26, 4u, "%s::%s: Manifest Offset: %u, Manifest Length: %u, Magic: %s\n", v27, v28, v29, v30, v31, "ACFUFTABFile");
  v33 = ACFULogging::getLogInstance(v32);
  v96 = *(BytePtr + 10);
  ACFULogging::handleMessage(v33, 4u, "%s::%s: Num Files: %u\n", v34, v35, v36, v37, v38, "ACFUFTABFile");
  v40 = ACFULogging::getLogInstance(v39);
  ACFULogging::handleMessage(v40, 4u, "%s::%s: =========== FTAB Header ===========\n\n", v41, v42, v43, v44, v45, "ACFUFTABFile");
  v47 = ACFULogging::getLogInstance(v46);
  ACFULogging::handleMessage(v47, 4u, "%s::%s: =========== FTAB Payloads ===========\n", v48, v49, v50, v51, v52, "ACFUFTABFile");
  CFRelease(v6);
  if (!v9)
  {
LABEL_24:
    LogInstance = ACFULogging::getLogInstance(v53);
    v79 = "%s::%s: =========== FTAB Payloads ===========\n\n";
    v80 = 4;
LABEL_25:
    ACFULogging::handleMessage(LogInstance, v80, v79, v74, v75, v76, v77, v78, "ACFUFTABFile");
    goto LABEL_26;
  }

  v54 = 48;
  while (1)
  {
    v55 = ACFUDataContainer::copyData(*(this + 1), v54, 0x10uLL);
    v56 = v55;
    if (!v55)
    {
      break;
    }

    v57 = CFDataGetBytePtr(v55);
    v59 = v57[1];
    v58 = v57[2];
    v106 = 4;
    LODWORD(v105) = *v57;
    BYTE4(v105) = 0;
    v60 = ACFULogging::getLogInstance(v57);
    v61 = &BytePtr[v59];
    v99 = v57[1];
    ACFULogging::handleMessage(v60, 4u, "%s::%s: Tag: %s :: Offset: 0x%04x Raw address: 0x%lx, size: %u\n", v62, v63, v64, v65, v66, "ACFUFTABFile");
    if ((ACFUDataContainer::isOptimized(*(this + 1)) & 1) == 0)
    {
      v67 = CC_SHA384(v61, v58, md);
      if (v67 == md)
      {
        v68 = ACFULogging::getLogInstance(v67);
        std::string::basic_string[abi:ne200100]<0>(&v101, "ACFUFTABFile");
        v69 = std::string::append(&v101, "::");
        v70 = *&v69->__r_.__value_.__l.__data_;
        v102.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
        *&v102.__r_.__value_.__l.__data_ = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        v71 = std::string::append(&v102, "prettyLog");
        v72 = *&v71->__r_.__value_.__l.__data_;
        v104 = v71->__r_.__value_.__r.__words[2];
        *v103 = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageBinary(v68, v103, 4, md, 0x30uLL, 1);
        if (SHIBYTE(v104) < 0)
        {
          operator delete(v103[0]);
        }

        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }
      }
    }

    CFRelease(v56);
    if (v106 < 0)
    {
      operator delete(v105);
    }

    v54 += 16;
    if (!--v9)
    {
      goto LABEL_24;
    }
  }

  v82 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v82, 2u, "%s::%s: failed to copy ftab file header\n", v83, v84, v85, v86, v87, "ACFUFTABFile");
LABEL_26:
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p);
  }

  v81 = *MEMORY[0x277D85DE8];
}

void sub_2402C4588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUFTABFile::hasFile(ACFULogging *a1, const void **a2)
{
  if (*(a1 + 1))
  {
    return std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(a1 + 40, a2) != 0;
  }

  ACFUFTABFile::hasFile(a1);
  return 0;
}

void ACFUFTABFile::~ACFUFTABFile(ACFUFTABFile *this)
{
  *this = &unk_28522EE20;
  v2 = this + 72;
  v3 = *(this + 9);
  v4 = this + 80;
  if (v3 != this + 80)
  {
    do
    {
      v5 = *(v3 + 7);
      if (v5)
      {
        CFRelease(v5);
        *(v3 + 7) = 0;
      }

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

  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(v2, *(this + 10));
  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(this + 40, *(this + 6));

  ACFUFile::~ACFUFile(this);
}

{
  ACFUFTABFile::~ACFUFTABFile(this);

  operator delete(v1);
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, const __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v4 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v4 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v4 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v4 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v4);
  return 0;
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v4 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v4 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v4 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v4 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v4);
  return 0;
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, const __CFString *a2, const __CFString *a3)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2, a3))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v5 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v5 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v5 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v5 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v5);
  return 0;
}

unint64_t ACFUFTABFile::getRequiredFileSize(ACFUFTABFile *this, const __CFData *a2)
{
  if (!ACFUFTABFile::isValidFileData(this, a2, 1))
  {
    v8 = "%s::%s: header is invalid\n";
LABEL_11:
    ACFUFTABFile::getRequiredFileSize(v8);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a2);
  if (!BytePtr)
  {
    v8 = "%s::%s: failed to get header pointer\n";
    goto LABEL_11;
  }

  v4 = BytePtr;
  result = (*(BytePtr + 5) + *(BytePtr + 4));
  v6 = *(v4 + 10);
  if (v6)
  {
    v7 = v4 + 56;
    do
    {
      if (result <= (*v7 + *(v7 - 1)))
      {
        result = (*v7 + *(v7 - 1));
      }

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

ACFULogging *ACFUFTABFile::getFileSizeByFileName(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!ACFUDataContainer::isOptimized(v3) || (v5 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), a1 + 80 == v5))
    {
      v7 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
      if (a1 + 48 != v7)
      {
        return *(v7 + 56);
      }
    }

    else
    {
      result = CFDataGetLength(*(v5 + 56));
      if (result)
      {
        return result;
      }

      ACFUFTABFile::getFileSizeByFileName(result);
    }
  }

  else
  {
    ACFUFTABFile::getFileSizeByFileName(0);
  }

  return 0;
}

void ACFUFTABFile::getFileOffsetByFileName(ACFUDataContainer **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    if (ACFUDataContainer::isOptimized(a1[1]))
    {
      v7 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>((a1 + 9), a2);
      if (a1 + 10 != v7)
      {
        LogInstance = ACFULogging::getLogInstance(v7);
        if (*(a2 + 23) < 0)
        {
          v14 = *a2;
        }

        ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: get offset not supported on dynamically added file %s to MMIO optimized FTAB\n", v9, v10, v11, v12, v13, "ACFUFTABFile");
        goto LABEL_10;
      }
    }

    v15 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>((a1 + 5), a2);
    if (a1 + 6 == v15)
    {
LABEL_10:
      v16 = 0;
      v17 = 0;
      goto LABEL_11;
    }

    v16 = *(v15 + 60);
  }

  else
  {
    ACFUFTABFile::getFileOffsetByFileName(a1);
    v16 = 0;
  }

  v17 = v4 != 0;
LABEL_11:
  *a3 = v16;
  *(a3 + 4) = v17;
}

uint64_t ACFUFTABFile::getVersion(ACFUFTABFile *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(__p, "bver");
  if (*(this + 1))
  {
    if ((*(*this + 16))(this, __p))
    {
      v3 = (**this)(this, __p);
      goto LABEL_6;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v5, v6, v7, v8, v9, "ACFUFTABFile");
  }

  v3 = 0;
LABEL_6:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2402C4C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v20.__end_cap_.__value_ = a1;
    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURTKitNVRMGenerator::RTKitNVRMVariable>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  *(a1 + 8) = v7;
}

void std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
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

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(v6 + 6) = *(v8 + 2);
    *(v6 + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
}

void sub_2402C50B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void OUTLINED_FUNCTION_0()
{
  if (*v1 < 0)
  {
    v2 = *v0;
  }
}

void OUTLINED_FUNCTION_1()
{
  if (*v1 < 0)
  {
    v2 = *v0;
  }
}

void OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  ACFULogging::handleMessage(a1, 2u, v9, a4, a5, a6, a7, a8, v8);
}

void *OUTLINED_FUNCTION_4(ACFULogging *this)
{

  return ACFULogging::getLogInstance(this);
}

ACFULogging *ACFUDataAccess::createPeronalizedContentPath(ACFULogging *a1)
{
  if (a1 == 1)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: requesting APTicket file path\n", v9, v10, v11, v12, v13, "ACFUDataAccess");
    v7 = 2;
  }

  else
  {
    if (a1)
    {
      v25 = ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage(v25, 2u, "%s::%s: could not determine requested path\n", v26, v27, v28, v29, v30, "ACFUDataAccess");
      return 0;
    }

    v1 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v1, 3u, "%s::%s: requesting personalized firmware root path\n", v2, v3, v4, v5, v6, "ACFUDataAccess");
    v7 = 0;
  }

  v14 = [MEMORY[0x277D25710] sharedDataAccessor];
  v47 = 0;
  v15 = [v14 copyPathForPersonalizedData:v7 error:&v47];
  v16 = v47;

  if (v15)
  {
    v18 = v15;
    v19 = ACFULogging::getLogInstance(v18);
    std::string::basic_string[abi:ne200100]<0>(&v43, "ACFUDataAccess");
    v20 = std::string::append(&v43, "::");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v44, "createPeronalizedContentPath");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v46 = v22->__r_.__value_.__r.__words[2];
    v45 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v19, &v45, 3, "path: ", v18);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v31 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v31, 2u, "%s::%s: failed to get the required path\n", v32, v33, v34, v35, v36, "ACFUDataAccess");
    v38 = ACFULogging::getLogInstance(v37);
    std::string::basic_string[abi:ne200100]<0>(&v43, "ACFUDataAccess");
    v39 = std::string::append(&v43, "::");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v44, "createPeronalizedContentPath");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v46 = v41->__r_.__value_.__r.__words[2];
    v45 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v38, &v45, 2, "error details: ", [v16 localizedDescription]);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    v18 = 0;
  }

  return v18;
}

void sub_2402C59C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

CFStringRef ACFUDataAccess::createPersonalizedFirmwarePath(ACFUDataAccess *this, const __CFString *a2)
{
  PeronalizedContentPath = ACFUDataAccess::createPeronalizedContentPath(0);
  if (PeronalizedContentPath)
  {
    v4 = PeronalizedContentPath;
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/%@/", PeronalizedContentPath, this);
    if (!v5)
    {
      ACFUDataAccess::createPersonalizedFirmwarePath(0);
    }

    CFRelease(v4);
  }

  else
  {
    ACFUDataAccess::createPersonalizedFirmwarePath(0);
    return 0;
  }

  return v5;
}

void RTKitFirmware::RTKitFirmware(RTKitFirmware *this)
{
  ACFUFirmware::ACFUFirmware(this);
  *v1 = &unk_28522EEB0;
  *(v1 + 84) = 0;
}

{
  ACFUFirmware::ACFUFirmware(this);
  *v1 = &unk_28522EEB0;
  *(v1 + 84) = 0;
}

void RTKitFirmware::create(uint64_t a1@<X0>, const __CFData *a2@<X1>, uint64_t a3@<X2>, ACFUFirmware **a4@<X8>)
{
  v8 = operator new(0x58uLL);
  ACFUFirmware::ACFUFirmware(v8);
  *v8 = &unk_28522EEB0;
  *(v8 + 21) = 0;
  *a4 = v8;
  std::map<__CFString const*,std::string>::map[abi:ne200100](v9, a1);
  LOBYTE(a3) = RTKitFirmware::init(v8, v9, a2, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v9, v9[1]);
  if ((a3 & 1) == 0)
  {
    *a4 = 0;
    (*(*v8 + 56))(v8);
  }
}

void sub_2402C5C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

uint64_t RTKitFirmware::init(uint64_t a1, uint64_t a2, const __CFData *a3, uint64_t a4)
{
  std::map<__CFString const*,std::string>::map[abi:ne200100](v31, a2);
  v7 = ACFUFirmware::init(a1, v31);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v31, v31[1]);
  if (!v7)
  {
    RTKitFirmware::init(v8);
    return 0;
  }

  ACFUFTABFile::create(a3, a4, 0xFFFF, &v29);
  v9 = v29;
  v29 = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 56))(v10);
    v11 = v29;
    v29 = 0;
    if (v11)
    {
      (*(*v11 + 56))(v11);
    }

    v9 = *(a1 + 32);
  }

  if (!v9)
  {
    RTKitFirmware::init(0);
    return 0;
  }

  v12 = **v9;
  ACFUFTABFile::copyManifest(v13, &v29);
  if (!v30)
  {
    v21 = v29;
    *(a1 + 48) = v29;
    if (v21)
    {
      goto LABEL_11;
    }

    RTKitFirmware::init(v14);
    return 0;
  }

  if (v30 != 1001)
  {
    LogInstance = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get manifest, error: %d\n", v24, v25, v26, v27, v28, "RTKitFirmware");
    return 0;
  }

  v15 = ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage(v15, 0, "%s::%s: No manifest present\n", v16, v17, v18, v19, v20, "RTKitFirmware");
  *(a1 + 48) = 0;
LABEL_11:
  if ((a4 & 2) != 0)
  {
    *(a1 + 80) = 1;
  }

  *(a1 + 56) = 1;
  return (*(*a1 + 64))(a1);
}

void RTKitFirmware::create(uint64_t a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X2>, ACFUFirmware **a4@<X8>)
{
  v8 = operator new(0x58uLL);
  ACFUFirmware::ACFUFirmware(v8);
  *v8 = &unk_28522EEB0;
  *(v8 + 21) = 0;
  *a4 = v8;
  std::map<__CFString const*,std::string>::map[abi:ne200100](v9, a1);
  LOBYTE(a3) = RTKitFirmware::init(v8, v9, a2, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v9, v9[1]);
  if ((a3 & 1) == 0)
  {
    *a4 = 0;
    (*(*v8 + 56))(v8);
  }
}

void sub_2402C5F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

uint64_t RTKitFirmware::init(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  std::map<__CFString const*,std::string>::map[abi:ne200100](v31, a2);
  v7 = ACFUFirmware::init(a1, v31);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v31, v31[1]);
  if (!v7)
  {
    RTKitFirmware::init(v8);
    return 0;
  }

  ACFUFTABFile::create(a3, a4, 0xFFFF, &v29);
  v9 = v29;
  v29 = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 56))(v10);
    v11 = v29;
    v29 = 0;
    if (v11)
    {
      (*(*v11 + 56))(v11);
    }

    v9 = *(a1 + 32);
  }

  if (!v9)
  {
    RTKitFirmware::init(0);
    return 0;
  }

  v12 = **v9;
  ACFUFTABFile::copyManifest(v13, &v29);
  if (!v30)
  {
    v21 = v29;
    *(a1 + 48) = v29;
    if (v21)
    {
      goto LABEL_11;
    }

    RTKitFirmware::init(v14);
    return 0;
  }

  if (v30 != 1001)
  {
    LogInstance = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get manifest, error: %d\n", v24, v25, v26, v27, v28, "RTKitFirmware");
    return 0;
  }

  v15 = ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage(v15, 0, "%s::%s: No manifest present\n", v16, v17, v18, v19, v20, "RTKitFirmware");
  *(a1 + 48) = 0;
LABEL_11:
  if ((a4 & 2) != 0)
  {
    *(a1 + 80) = 1;
  }

  *(a1 + 56) = 1;
  return (*(*a1 + 64))(a1);
}

uint64_t RTKitFirmware::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, ACFUFirmware **a3@<X8>)
{
  v6 = operator new(0x58uLL);
  ACFUFirmware::ACFUFirmware(v6);
  *v6 = &unk_28522EEB0;
  *(v6 + 21) = 0;
  *a3 = v6;
  result = RTKitFirmware::init(v6, a1, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v8 = *(*v6 + 56);

    return v8(v6);
  }

  return result;
}

void sub_2402C62D4(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 56))(v1);
  _Unwind_Resume(a1);
}

uint64_t RTKitFirmware::init(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 16))
  {
    RTKitFirmware::init(a1);
    return 0;
  }

  v5 = ACFUFirmware::init(a1, a2);
  if ((v5 & 1) == 0)
  {
    RTKitFirmware::init(v5);
    return 0;
  }

  *(a1 + 84) = a3;
  result = 1;
  if ((a3 & 2) != 0)
  {
    *(a1 + 80) = 1;
  }

  return result;
}

CFDataRef RTKitFirmware::copyFirmwareNonce(RTKitFirmware *this)
{
  v1 = *(this + 4);
  {
    *bytes = ACFUFTABFile::getBootNonce(v1);
    return CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
  }

  else
  {
    RTKitFirmware::copyFirmwareNonce(v1);
    return 0;
  }
}

uint64_t RTKitFirmware::setFirmwareNonce(RTKitFirmware *this, const __CFData *a2)
{
  Length = *(this + 4);
  {
    RTKitFirmware::setFirmwareNonce(Length);
    return 0;
  }

  if (!a2 || (v5 = Length, Length = CFDataGetLength(a2), Length != 8))
  {
    RTKitFirmware::setFirmwareNonce(Length);
    return 0;
  }

  v6 = *CFDataGetBytePtr(a2);

  return ACFUFTABFile::setBootNonce(v5, v6);
}

uint64_t RTKitFirmware::openFirmwareInRestoreOptions(RTKitFirmware *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"FirmwareData");
  if (Value)
  {
    v5 = Value;
    AMSupportSafeRetain();
    v6 = CFGetTypeID(v5);
    TypeID = CFDataGetTypeID();
    if (v6 == TypeID)
    {
      ACFUFTABFile::create(v5, *(this + 21), 0xFFFF, &v12);
      v8 = v12;
      v12 = 0;
      v9 = *(this + 4);
      *(this + 4) = v8;
      if (v9)
      {
        (*(*v9 + 56))(v9);
        v9 = v12;
        v12 = 0;
        if (v9)
        {
          v9 = (*(*v9 + 56))(v9);
        }

        v8 = *(this + 4);
      }

      if (v8)
      {
        v10 = ACFUFirmware::openFirmwareInRestoreOptions(this, theDict);
      }

      else
      {
        RTKitFirmware::openFirmwareInRestoreOptions(v9);
        v10 = 1000;
      }
    }

    else
    {
      RTKitFirmware::openFirmwareInRestoreOptions(TypeID);
      v10 = 4002;
    }

    CFRelease(v5);
  }

  else
  {
    RTKitFirmware::openFirmwareInRestoreOptions(0);
    return 4001;
  }

  return v10;
}

uint64_t RTKitFirmware::saveFirmware(RTKitFirmware *this)
{
  v2 = *(this + 4);
  {
    v4 = ACFUFTABFile::setFTABValidity(v2, 1);
    if (v4)
    {
      if (*(this + 6))
      {

        return ACFUFirmware::saveFirmware(this, v5);
      }

      else
      {
        RTKitFirmware::saveFirmware(v4);
        return 1001;
      }
    }

    else
    {
      RTKitFirmware::saveFirmware(v4);
      return 1004;
    }
  }

  else
  {
    RTKitFirmware::saveFirmware(v2);
    return 1000;
  }
}

uint64_t RTKitFirmware::saveFirmwareToPath(RTKitFirmware *this, const __CFURL *a2)
{
  v3 = *(this + 4);
  if (!v3)
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_10:
    v5 = 1005;
    v6 = "%s::%s: Invalid save path\n";
    goto LABEL_8;
  }

  v4 = **v3;
  if (!a2)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_7:
    v5 = 1000;
    v6 = "%s::%s: Invalid firmware file\n";
LABEL_8:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2u, v6, v8, v9, v10, v11, v12, "RTKitFirmware");
    return v5;
  }

  v3 = ACFUFile::saveToPath(v3, a2);
  if ((v3 & 1) == 0)
  {
    v5 = 1004;
    v6 = "%s::%s: Failed to save firmware to path\n";
    goto LABEL_8;
  }

  return 0;
}

uint64_t RTKitFirmware::setManifest(RTKitFirmware *this, const __CFData *a2)
{
  v4 = *(this + 4);
  {
    v6 = ACFUFTABFile::setManifest(v4, a2);
    if ((v6 & 1) == 0)
    {
      RTKitFirmware::setManifest(v6);
      return 0;
    }

    v7 = 1;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid firmware file\n", v9, v10, v11, v12, v13, "RTKitFirmware");
    v7 = 0;
  }

  ACFUFirmware::setManifest(this, a2);
  return v7;
}

uint64_t RTKitFirmware::getFileSizeByFileName(uint64_t a1)
{
  v1 = *(a1 + 32);
  {
    v3 = *(*v1 + 32);

    return v3();
  }

  else
  {
    RTKitFirmware::getFileSizeByFileName(v1);
    return 0;
  }
}

void RTKitFirmware::getFileOffsetByFileName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  v3 = *(a1 + 32);
  {
    ACFUFTABFile::getFileOffsetByFileName(v3, a2, &v7);
    *a3 = v7;
    *(a3 + 4) = v8;
  }

  else
  {
    RTKitFirmware::getFileOffsetByFileName(v3);
  }
}

uint64_t RTKitFirmware::updateTagWithData(uint64_t a1, CFIndex a2, const __CFData *a3)
{
  updated = *(a1 + 32);
  {
    v7 = 1000;
    v8 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(LogInstance, 2u, v8, v10, v11, v12, v13, v14, "RTKitFirmware");
    return v7;
  }

  updated = ACFUFTABFile::updateFileInFTAB(updated, a2, a3);
  if ((updated & 1) == 0)
  {
    v7 = 1017;
    v8 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

uint64_t RTKitFirmware::addTagWithData(uint64_t a1, void *a2, const __CFData *a3)
{
  v3 = *(a1 + 32);
  {
    v7 = 1000;
    v8 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2u, v8, v10, v11, v12, v13, v14, "RTKitFirmware");
    return v7;
  }

  v3 = ACFUFTABFile::addNewFileToFTAB(v3, a2, a3);
  if ((v3 & 1) == 0)
  {
    v7 = 1017;
    v8 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

uint64_t RTKitFirmware::removeTag(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  {
    v5 = 1000;
    v6 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2u, v6, v8, v9, v10, v11, v12, "RTKitFirmware");
    return v5;
  }

  v2 = ACFUFTABFile::removeFileFromFTAB(v2, a2);
  if ((v2 & 1) == 0)
  {
    v5 = 1017;
    v6 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

uint64_t RTKitFirmware::moveTagToTop(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  {
    v5 = 1000;
    v6 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2u, v6, v8, v9, v10, v11, v12, "RTKitFirmware");
    return v5;
  }

  v2 = ACFUFTABFile::moveFileToTop(v2, a2);
  if ((v2 & 1) == 0)
  {
    v5 = 1017;
    v6 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

void RTKitFirmware::~RTKitFirmware(RTKitFirmware *this)
{
  ACFUFirmware::~ACFUFirmware(this);

  operator delete(v1);
}

uint64_t *std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

void ACFUSynchronize::Syncher::notifyIf(uint64_t a1, char a2, uint64_t a3)
{
  std::mutex::lock((a1 + 48));
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v6 + 48))(v6))
  {
    ++*(a1 + 112);
    if (a2)
    {
      std::condition_variable::notify_all(a1);
    }

    else
    {
      std::condition_variable::notify_one(a1);
    }
  }

  std::mutex::unlock((a1 + 48));
}

void ACFUSynchronize::Syncher::notify(uint64_t a1, char a2, uint64_t a3)
{
  std::mutex::lock((a1 + 48));
  ++*(a1 + 112);
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6);
  if (a2)
  {
    std::condition_variable::notify_all(a1);
  }

  else
  {
    std::condition_variable::notify_one(a1);
  }

  std::mutex::unlock((a1 + 48));
}

uint64_t ACFUSynchronize::Syncher::wait(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  __lk.__m_ = (a1 + 48);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 48));
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v27 = a1;
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v28, a3);
  v7 = rep + 1000000 * a2;
  while (1)
  {
    if (*(v27 + 112) >= 1)
    {
      if (!v29)
      {
        goto LABEL_26;
      }

      if ((*(*v29 + 48))(v29))
      {
        break;
      }
    }

    if (std::chrono::system_clock::now().__d_.__rep_ >= v7)
    {
      goto LABEL_15;
    }

    if (v7)
    {
      if (v7 < 1)
      {
        if (v7 >= 0xFFDF3B645A1CAC09)
        {
LABEL_13:
          v8.__d_.__rep_ = 1000 * v7;
          goto LABEL_14;
        }

        v8.__d_.__rep_ = 0x8000000000000000;
      }

      else
      {
        if (v7 <= 0x20C49BA5E353F7)
        {
          goto LABEL_13;
        }

        v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v8.__d_.__rep_ = 0;
    }

LABEL_14:
    std::condition_variable::__do_timed_wait(a1, &__lk, v8);
    if (std::chrono::system_clock::now().__d_.__rep_ >= v7)
    {
LABEL_15:
      if (*(v27 + 112) <= 0)
      {
        v10 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v28);
      }

      else
      {
        if (!v29)
        {
LABEL_26:
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v9 = (*(*v29 + 48))(v29);
        v10 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v28);
        if (v9)
        {
          goto LABEL_22;
        }
      }

      LogInstance = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: event wait timeout\n", v12, v13, v14, v15, v16, "ACFUSynchronize");
      v17 = 0;
      goto LABEL_23;
    }
  }

  v10 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v28);
LABEL_22:
  --*(a1 + 112);
  v18 = ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage(v18, 3u, "%s::%s: event notification\n", v19, v20, v21, v22, v23, "ACFUSynchronize");
  v17 = 1;
LABEL_23:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ACFULogging::initLog(ACFULogging *this, CFDictionaryRef theDict, void (*a3)(void *, const char *), void *a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Options");
    if (Value && (v9 = Value, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v9)) && (v11 = CFDictionaryGetValue(v9, @"RestoreInternal")) != 0)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      v14 = 2;
      if (v13 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v12) == 1)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }
      }
    }

    else
    {
      v14 = 2;
    }

    *(this + 9) = a3;
    *(this + 10) = a4;
    ACFUCommon::parseDebugArgs(theDict, "logLevel", &v34);
    v16 = v35;
    if (v35 == 4006)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2814622C8, 3u, "%s::%s: Key: %s not found while parsing debugArgs, but this is not error\n", v17, v18, v19, v20, v21, "ACFULogging");
LABEL_16:
      v22 = v14;
      goto LABEL_17;
    }

    if (v35)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2814622C8, 0, "%s::%s: Failed to parse debugArgs\n", v29, v30, v31, v32, v33, "ACFULogging");
      return v16;
    }

    v22 = v34;
    if (v34 >= 5)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2814622C8, 3u, "%s::%s: Unexpected value: %u for Key: %s\n", v23, v24, v25, v26, v27, "ACFULogging");
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 9) = a3;
    *(this + 10) = a4;
    v22 = 2;
  }

LABEL_17:
  v16 = 0;
  *(this + 22) = v22;
  return v16;
}

void *ACFULogging::getLogInstance(ACFULogging *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    ACFULogging::getLogInstance();
  }

  return &unk_2814622C8;
}

void ACFULogging::handleMessage(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a2)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a2)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (vsnprintf((a1 + 92), 0xC00uLL, a3, &a9) >= 0xC01)
  {
    strcpy((a1 + 3099), "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, *(a1 + a2), a1 + 92);
  std::mutex::unlock((a1 + 8));
}

void ACFULogging::ACFULogging(ACFULogging *this)
{
  *this = 17830144;
  *(this + 4) = 2;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 22) = 2;
  bzero(this + 92, 0xC00uLL);
  *(this + 396) = 0;
  v2 = os_log_create("com.apple.AppleConvergedFirmwareUpdater", "service");
  v3 = *(this + 396);
  *(this + 396) = v2;
}

void ACFULogging::~ACFULogging(ACFULogging *this)
{
  std::mutex::~mutex((this + 8));
}

{

  std::mutex::~mutex((this + 8));
}

BOOL ACFULogging::shouldLog(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 72))
  {
    return *(a1 + 88) >= a2;
  }

  else
  {
    return os_log_type_enabled(*(a1 + 3168), *(a1 + a2));
  }
}

void ACFULogging::log(ACFULogging *this, os_log_type_t a2, uint64_t type)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 10);
    v6 = *MEMORY[0x277D85DE8];

    v4(v5, type);
  }

  else
  {
    v8 = *(this + 396);
    if (os_log_type_enabled(v8, a2))
    {
      v10 = 136315138;
      v11 = type;
      _os_log_impl(&dword_2402B0000, v8, a2, "%s", &v10, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

void ACFULogging::handleMessageBinary(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v8 = a3;
  v10 = a1;
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      goto LABEL_43;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    goto LABEL_43;
  }

  std::mutex::lock((v10 + 8));
  if (a5)
  {
    v16 = 0;
    if (a5 <= 0x3E80)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = 112;
    }

    if (a5 <= 0x3E80)
    {
      a6 = 0;
    }

    v41 = v10;
    v39 = v17;
    v40 = a6;
    do
    {
      v18 = a6 ^ 1;
      if (v16 != v17)
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        if (*(a2 + 23) >= 0)
        {
          LOBYTE(v19) = a2;
        }

        else
        {
          v19 = *a2;
        }

        ACFULogging::handleMessageInternal(v10, v8, "%s -- middle of buffer snipped -- \n", v11, v12, v13, v14, v15, v19);
        v16 = a5 - 112;
      }

      v44 = 0u;
      memset(v45, 0, sizeof(v45));
      v43 = 0u;
      v20 = a5 - v16;
      if (a5 == v16)
      {
        *(v45 + 15) = 538976288;
        *&v21 = 0x2020202020202020;
        *(&v21 + 1) = 0x2020202020202020;
        v44 = v21;
        v45[0] = v21;
        v22 = 51;
        v43 = v21;
      }

      else
      {
        v23 = v8;
        if (v20 >= 0x10)
        {
          v20 = 16;
        }

        v24 = (a4 + v16);
        if (v20 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v20;
        }

        v26 = (54 - 3 * v25) - 3;
        v27 = (a4 + v16);
        v28 = v25;
        v29 = &v43 + 1;
        do
        {
          v30 = *v27++;
          v31 = a0123456789abcd[v30 & 0xF];
          *(v29 - 1) = a0123456789abcd[v30 >> 4];
          *v29 = v31;
          v29[1] = 32;
          v29 += 3;
          v26 += 3;
          --v28;
        }

        while (v28);
        memset(v29 - 1, 32, 3 * (17 - v25));
        v32 = &v43;
        v33 = 0;
        do
        {
          v35 = *v24++;
          v34 = v35;
          if ((v35 - 32) >= 0x5F)
          {
            v34 = 46;
          }

          *(v32 + v26) = v34;
          v32 = (v32 + 1);
          --v33;
          --v25;
        }

        while (v25);
        v22 = v26 - v33;
        v8 = v23;
        v10 = v41;
        a6 = v40;
        v17 = v39;
      }

      strcpy(&v43 + v22, "\r\n");
      if (*(a2 + 23) >= 0)
      {
        LOBYTE(v36) = a2;
      }

      else
      {
        v36 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s %04zx  %s", v11, v12, v13, v14, v15, v36);
      v16 += 16;
    }

    while (v16 < a5);
    if (a6)
    {
      if (*(a2 + 23) >= 0)
      {
        LOBYTE(v37) = a2;
      }

      else
      {
        v37 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s (snipped)\n", v11, v12, v13, v14, v15, v37);
    }
  }

  std::mutex::unlock((v10 + 8));
LABEL_43:
  v38 = *MEMORY[0x277D85DE8];
}

void ACFULogging::handleMessageInternal(char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (vsnprintf(a1 + 92, 0xC00uLL, a3, &a9) >= 0xC01)
  {
    strcpy(a1 + 3099, "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, a1[a2], (a1 + 92));
}

void ACFULogging::handleMessageCFType(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5)
{
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (a5)
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %s\n %@\n", v15, a4, a5);
    v17 = v16;
    if (v16)
    {
      ACFUCommon::stringFromCFString(v16, &v25);
      v28 = v26;
      *__p = v25;
      if (SHIBYTE(v26) < 0)
      {
        if (__p[1])
        {
          LOBYTE(v23) = __p[0];
        }

        else
        {
          v23 = "UNDEF";
        }
      }

      else
      {
        v23 = __p;
        if (!HIBYTE(v26))
        {
          v23 = "UNDEF";
        }
      }

      ACFULogging::handleMessageInternal(a1, a3, "%s", v18, v19, v20, v21, v22, v23);
      CFRelease(v17);
      goto LABEL_18;
    }

    v24 = "%s::%s: failed to format CFString\n";
  }

  else
  {
    v24 = "%s::%s: CFType to be printed is NULL\n";
  }

  ACFULogging::handleMessageInternal(a1, 2, v24, v10, v11, v12, v13, v14, "ACFULogging");
LABEL_18:
  std::mutex::unlock((a1 + 8));
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2402C7FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 8));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ACFUErrorContainer::ACFUErrorContainer(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  AMSupportSafeRetain();
}

void sub_2402C8080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUErrorContainer::~ACFUErrorContainer(ACFUErrorContainer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
    *(this + 4) = 0;
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ACFUError::ACFUError(ACFUError *this, const __CFString *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  v5 = operator new(0x18uLL);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = 0;
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](v4, v5);
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](&v6, 0);
  *this = a2;
  AMSupportSafeRetain();
}

CFErrorRef ACFUError::getCFError(ACFUError *this)
{
  if (**(this + 1) == *(*(this + 1) + 8))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: Looks like there is no error present; Nothing to be done here.\n", v17, v18, v19, v20, v21, "ACFUError");
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = *(*(this + 1) + 8);
  v5 = (v4 - 40);
  if (*(v4 - 17) < 0)
  {
    v5 = *v5;
  }

  v6 = CFStringCreateWithCString(v2, v5, 0x8000100u);
  if (v6)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE30], v6);
    v8 = *(*(this + 1) + 8);
    if (*(v8 - 8))
    {
      v9 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v9, 3u, "%s::%s: Populating underlying error\n", v10, v11, v12, v13, v14, "ACFUError");
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE78], *(*(*(this + 1) + 8) - 8));
      v8 = *(*(this + 1) + 8);
    }

    v15 = CFErrorCreate(v2, *this, *(v8 - 16), Mutable);
    if (v15)
    {
      if (!Mutable)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v23 = "%s::%s: failed to create CFError object\n";
  }

  else
  {
    v23 = "%s::%s: failed to create CFString for error object\n";
  }

  ACFUError::getCFError(v23);
  v15 = 0;
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

void ACFUError::clearError(ACFUError *this)
{
  v1 = *(this + 1);
  v3 = *v1;
    ;
  }

  v1[1] = v3;
}

uint64_t ACFUError::addError(uint64_t a1, uint64_t a2, std::string::size_type a3, std::string::size_type a4)
{
  v7 = a4;
  v8 = a3;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 16))
  {
    result = std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(*(a1 + 8), a2, &v8, &v7);
  }

  else
  {
    std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(*(a1 + 8), *(v4 + 8), a2, &v8, &v7);
    result = v5 + 40;
    *(v4 + 8) = v5 + 40;
  }

  *(v4 + 8) = result;
  return result;
}

void ACFUError::logError(ACFUError *this)
{
  v2 = *(this + 1);
  v4 = *v2;
  v3 = v2[1];
  LogInstance = ACFULogging::getLogInstance(this);
  if (v3 == v4)
  {
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: No error to log. All clear, move along now!\n", v6, v7, v8, v9, v10, "ACFUError");
  }

  else
  {
    v11 = *(*(this + 1) + 8);
    if (*(v11 - 17) < 0)
    {
      v12 = *(v11 - 40);
    }

    v13 = *(v11 - 16);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Error Reason: %s, Error Code: 0x%08lx\n", v6, v7, v8, v9, v10, "ACFUError");
  }
}

const void *ACFUError::createAppendedDomain(const void **this, const __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, *this);
  CFArrayAppendValue(Mutable, a2);
  Copy = CFArrayCreateCopy(v4, Mutable);
  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  *this = CFStringCreateByCombiningStrings(v4, Copy, @"::");
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return *this;
}

void ACFUError::~ACFUError(void ***this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](this + 1, 0);
}

void std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](&v3);
    operator delete(v2);
  }
}

void std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        ACFUErrorContainer::~ACFUErrorContainer((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(uint64_t a1, uint64_t a2, std::string::size_type *a3, std::string::size_type *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v10 = 0x666666666666666;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  v19 = (v11 + 40 * v4);
  *(&v20 + 1) = v11 + 40 * v10;
  std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(a1, v19, a2, a3, a4);
  *&v20 = v19 + 40;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(&v18);
  return v17;
}

void sub_2402C87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(int a1, std::string *this, uint64_t a3, std::string::size_type *a4, std::string::size_type *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  ACFUErrorContainer::ACFUErrorContainer(this, &__p, *a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2402C8838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x666666666666667)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(40 * a2);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(int a1, ACFUErrorContainer *this, ACFUErrorContainer *a3, uint64_t a4)
{
  if (this != a3)
  {
    v6 = this;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = v6 + v7;
      if (*(v6 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      *(a4 + v7 + 24) = *(v6 + v7 + 24);
      v7 += 40;
    }

    while ((v6 + v7) != a3);
    while (v6 != a3)
    {
      ACFUErrorContainer::~ACFUErrorContainer(v6);
      v6 = (v6 + 40);
    }
  }
}

void sub_2402C893C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 + v2 - 40);
    v5 = -v2;
    do
    {
      ACFUErrorContainer::~ACFUErrorContainer(v4);
      v4 = (v6 - 40);
      v5 += 40;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ACFUErrorContainer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    ACFUErrorContainer::~ACFUErrorContainer((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ACFUACIPCTransport::ACFUACIPCTransport(ACFUACIPCTransport *this)
{
  ACFUTransport::ACFUTransport(this);
  *v1 = &unk_28522EF28;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0x800000;
  v1[6] = 0;
  v1[7] = &unk_28522F060;
  v1[10] = v1 + 7;
  v1[11] = &unk_28522F0F0;
  v1[14] = v1 + 11;
  v1[15] = &unk_28522F180;
  v1[18] = v1 + 15;
  v1[19] = 0;
}

uint64_t ACFUACIPCTransport::init(uint64_t a1, uint64_t *a2)
{
  v4 = dispatch_queue_create("com.apple.acfu.acipcTransport", 0);
  v5 = *(a1 + 152);
  *(a1 + 152) = v4;

  if (*(a1 + 152))
  {
    v7 = a2[1];
    v33 = *a2;
    v34 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = ACFUTransport::init(a1, &v33);
    v9 = v34;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v8)
    {
      v10 = 1;
      goto LABEL_8;
    }

    ACFUACIPCTransport::init(v9);
  }

  else
  {
    ACFUACIPCTransport::init(v6);
  }

  v10 = 0;
LABEL_8:
  Trace = ACFUTrace::getTrace(v9);
  v12 = Trace[12];
  v13 = ACFUTrace::getTrace(Trace);
  v14 = *v13;
  if (v12 == 1)
  {
    v15 = v14 << 24;
    v16 = ACFUTrace::getTrace(v13);
    v17 = v16[1];
    v18 = v15 & 0xFF00FFFF | (v16[1] << 16);
    v19 = v18 & 0xFFFF0003 | (4 * (ACFUTrace::getTrace(v16)[1] & 0x3FFF));
    kdebug_trace();
  }

  else if (v14)
  {
    LogInstance = ACFULogging::getLogInstance(v13);
    v21 = ACFUTrace::getTrace(LogInstance);
    v22 = *v21 << 24;
    v23 = ACFUTrace::getTrace(v21);
    v24 = v23[1];
    v25 = v22 & 0xFF00FFFF | (v23[1] << 16);
    v32 = v25 & 0xFFFF0003 | (4 * (ACFUTrace::getTrace(v23)[1] & 0x3FFF));
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: TRACE EVENT ACFUTrace::kACFUTraceEventTransportInit: 0x%08x\n", v26, v27, v28, v29, v30, "ACFUACIPCTransport");
  }

  return v10;
}

void sub_2402C8BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUACIPCTransport::readRegister(ACFULogging *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -536870198;
  if (a2)
  {
    v5 = *(a1 + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3254779904;
    block[2] = ___ZN18ACFUACIPCTransport12readRegisterEPP12IOACIPCClassjPhPj_block_invoke;
    block[3] = &__block_descriptor_68_ea8_32r_e5_v8__0l;
    block[4] = &v16;
    block[5] = a2;
    v15 = a3;
    block[6] = a4;
    block[7] = a5;
    dispatch_sync(v5, block);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: null acipcInterface\n", v9, v10, v11, v12, v13, "ACFUACIPCTransport");
  }

  v6 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v6;
}

uint64_t ___ZN18ACFUACIPCTransport12readRegisterEPP12IOACIPCClassjPhPj_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 112))(result, *(a1 + 64), *(a1 + 48), *(a1 + 56));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::writeRegister(ACFULogging *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -536870198;
  if (a2)
  {
    v5 = *(a1 + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3254779904;
    block[2] = ___ZN18ACFUACIPCTransport13writeRegisterEPP12IOACIPCClassjPKhj_block_invoke;
    block[3] = &__block_descriptor_64_ea8_32r_e5_v8__0l;
    block[4] = &v17;
    block[5] = a2;
    block[6] = a4;
    v15 = a3;
    v16 = a5;
    dispatch_sync(v5, block);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: null acipcInterface\n", v9, v10, v11, v12, v13, "ACFUACIPCTransport");
  }

  v6 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v6;
}

uint64_t ___ZN18ACFUACIPCTransport13writeRegisterEPP12IOACIPCClassjPKhj_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 120))(result, *(a1 + 56), *(a1 + 48), *(a1 + 60));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::generateBootNonce(ACFULogging *a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -536870198;
  if (a2)
  {
    v2 = *(a1 + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3254779904;
    block[2] = ___ZN18ACFUACIPCTransport17generateBootNonceEPP12IOACIPCClass_block_invoke;
    block[3] = &__block_descriptor_48_ea8_32r_e5_v8__0l;
    block[4] = &v12;
    block[5] = a2;
    dispatch_sync(v2, block);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: null acipcInterface\n", v6, v7, v8, v9, v10, "ACFUACIPCTransport");
  }

  v3 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v3;
}

uint64_t ___ZN18ACFUACIPCTransport17generateBootNonceEPP12IOACIPCClass_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 104))(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::acipcIO(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -536870198;
  v6 = *(a1 + 152);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = ___ZN18ACFUACIPCTransport7acipcIOEPP12IOACIPCClassjPvPj14acipcDirection_block_invoke;
  block[3] = &__block_descriptor_72_ea8_32r_e5_v8__0l;
  block[4] = &v12;
  block[5] = a2;
  block[6] = a4;
  block[7] = a5;
  v10 = a3;
  v11 = a6;
  dispatch_sync(v6, block);
  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t ___ZN18ACFUACIPCTransport7acipcIOEPP12IOACIPCClassjPvPj14acipcDirection_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 72))(result, *(a1 + 64), *(a1 + 48), *(a1 + 56), *(a1 + 68));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::loadImageOnBTIStage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, id a5)
{
  v9 = a5;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2020000000;
  v151 = 0;
  v144 = 0;
  v145 = &v144;
  v146 = 0x2020000000;
  v147 = 0;
  v140 = 0;
  v141 = &v140;
  v142 = 0x2020000000;
  v143 = 0;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v139 = -536870198;
  Trace = ACFUTrace::getTrace(v9);
  if (*(Trace + 12) == 1)
  {
    v11 = ACFUTrace::getTrace(Trace);
    v12 = *v11;
    v13 = ACFUTrace::getTrace(v11);
    v14 = v13[1];
    v15 = (4 * *(ACFUTrace::getTrace(v13) + 4) + 4) & 0xFFFC;
    v16 = kdebug_trace();
  }

  else
  {
    v16 = ACFUTrace::getTrace(Trace);
    if (*v16)
    {
      LogInstance = ACFULogging::getLogInstance(v16);
      v18 = ACFUTrace::getTrace(LogInstance);
      v19 = *v18;
      v20 = ACFUTrace::getTrace(v18);
      v21 = *(v20 + 1);
      v127 = (4 * *(ACFUTrace::getTrace(v20) + 4) + 4) & 0xFFFC | (v19 << 24) | (v21 << 16) | 1;
      ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: TRACE EVENT BEGIN ACFUTrace::kACFUTraceEventBTI: 0x%08x\n", v22, v23, v24, v25, v26, "ACFUACIPCTransport");
    }
  }

  if (!a2)
  {
    v102 = ACFULogging::getLogInstance(v16);
    v108 = "%s::%s: null acipcInterface\n";
    goto LABEL_50;
  }

  if (a4)
  {
    if (v9)
    {
      ACFUTimer::create(v9, a4, &valuePtr);
      v28 = valuePtr;
      if (valuePtr)
      {
        v29 = ACFUTimer::start(valuePtr);
        if ((v29 & 1) == 0)
        {
          v30 = ACFULogging::getLogInstance(v29);
          ACFULogging::handleMessage(v30, 2u, "%s::%s: failed to start BTI stage timer\n", v31, v32, v33, v34, v35, "ACFUACIPCTransport");
          v37 = 0;
LABEL_44:
          v77 = 3000;
          goto LABEL_34;
        }

        goto LABEL_12;
      }

      v102 = ACFULogging::getLogInstance(v27);
      v108 = "%s::%s: failed to create BTI stage timer\n";
    }

    else
    {
      v102 = ACFULogging::getLogInstance(v16);
      v108 = "%s::%s: invalid timeout callback parameter\n";
    }

LABEL_50:
    v28 = 0;
    ACFULogging::handleMessage(v102, 2u, v108, v103, v104, v105, v106, v107, "ACFUACIPCTransport");
    v77 = 3000;
    v37 = 0;
    goto LABEL_34;
  }

  v28 = 0;
LABEL_12:
  if (*(a1 + 48))
  {
    v38.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  }

  else
  {
    v38.__d_.__rep_ = 0;
  }

  v39 = *(a3 + 8);
  v133 = *a3;
  v134 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = *(a1 + 80);
  if (!v40)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v37 = (*(*v40 + 48))(v40, &v133);
  v41 = v134;
  if (v134)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v134);
  }

  if (v37)
  {
    v42 = ACFULogging::getLogInstance(v41);
    ACFULogging::handleMessage(v42, 3u, "%s::%s: using client prepared load image (assuming 4k alignment)\n", v43, v44, v45, v46, v47, "ACFUACIPCTransport");
    BytePtr = CFDataGetBytePtr(v37);
    v149[3] = BytePtr;
    Length = CFDataGetLength(v37);
    v50 = v145;
  }

  else
  {
    v51 = ACFUFirmware::copyFWContainer(*a3);
    v37 = v51;
    if (!v51 || (TypeID = CFDataGetTypeID(), v51 = CFGetTypeID(v37), TypeID != v51))
    {
      v115 = ACFULogging::getLogInstance(v51);
      ACFULogging::handleMessage(v115, 2u, "%s::%s: firmware to push is missing!\n", v116, v117, v118, v119, v120, "ACFUACIPCTransport");
      v77 = 1000;
      goto LABEL_34;
    }

    v53 = CFDataGetLength(v37);
    v145[3] = (v53 + 4095) & 0xFFFFFFFFFFFFF000;
    v54 = ACFUFirmware::isFWContainerMutable(*a3);
    if (!v54)
    {
      v96 = ACFULogging::getLogInstance(v54);
      ACFULogging::handleMessage(v96, 2u, "%s::%s: unable to handle unexpected input parameters\n", v97, v98, v99, v100, v101, "ACFUACIPCTransport");
      goto LABEL_44;
    }

    v55 = ACFULogging::getLogInstance(v54);
    v128 = v145[3] - v53;
    ACFULogging::handleMessage(v55, 0, "%s::%s: padding of %zu bytes required\n", v56, v57, v58, v59, v60, "ACFUACIPCTransport");
    CFDataIncreaseLength(v37, v145[3] - v53);
    v61 = CFDataGetLength(v37);
    v145[3] = v61;
    Length = CFDataGetBytePtr(v37);
    v50 = v149;
  }

  v50[3] = Length;
  v62 = *(a1 + 152);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = ___ZN18ACFUACIPCTransport19loadImageOnBTIStageEPP12IOACIPCClassNSt3__110shared_ptrI12ACFUFirmwareEEjU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_72_ea8_32r40r48r56r_e5_v8__0l;
  block[4] = &v136;
  block[5] = &v148;
  block[6] = &v144;
  block[7] = &v140;
  block[8] = a2;
  dispatch_sync(v62, block);
  if (*(v137 + 6))
  {
    v109 = ACFULogging::getLogInstance(hasFired);
    v130 = *(v137 + 6);
    v131 = *(v141 + 6);
    ACFULogging::handleMessage(v109, 2u, "%s::%s: failed with error (ret: 0x%08x) (cookie: 0x%08x)\n", v110, v111, v112, v113, v114, "ACFUACIPCTransport");
    v77 = 3001;
  }

  else
  {
    if (*(a1 + 48))
    {
      valuePtr = (std::chrono::system_clock::now().__d_.__rep_ - v38.__d_.__rep_) / 1000;
      v64 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
      if (v64)
      {
        CFDictionaryAddValue(*(a1 + 48), @"bti", v64);
        CFRelease(v64);
      }

      else
      {
        v65 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v65, 2u, "%s::%s: could not collect bti download time data\n", v66, v67, v68, v69, v70, "ACFUACIPCTransport");
      }
    }

    if (v28 && (ACFUTimer::stop(v28), hasFired = ACFUTimer::hasFired(v28), hasFired))
    {
      v121 = ACFULogging::getLogInstance(hasFired);
      ACFULogging::handleMessage(v121, 2u, "%s::%s: timeout in BTI stage\n", v122, v123, v124, v125, v126, "ACFUACIPCTransport");
      v77 = 3030;
    }

    else
    {
      v71 = ACFULogging::getLogInstance(hasFired);
      ACFULogging::handleMessage(v71, 0, "%s::%s: BTI stage completed successfully\n", v72, v73, v74, v75, v76, "ACFUACIPCTransport");
      v77 = 0;
    }
  }

LABEL_34:
  v78 = ACFUTrace::getTrace(v36);
  if (*(v78 + 12) == 1)
  {
    v79 = ACFUTrace::getTrace(v78);
    v80 = *v79;
    v81 = ACFUTrace::getTrace(v79);
    v82 = v81[1];
    v83 = (4 * *(ACFUTrace::getTrace(v81) + 4) + 4) & 0xFFFC;
    kdebug_trace();
  }

  else
  {
    v84 = ACFUTrace::getTrace(v78);
    if (*v84)
    {
      v85 = ACFULogging::getLogInstance(v84);
      v86 = ACFUTrace::getTrace(v85);
      v87 = *v86;
      v88 = ACFUTrace::getTrace(v86);
      v89 = *(v88 + 1);
      v129 = (4 * *(ACFUTrace::getTrace(v88) + 4) + 4) & 0xFFFC | (v87 << 24) | (v89 << 16) | 2;
      ACFULogging::handleMessage(v85, 4u, "%s::%s: TRACE EVENT END ACFUTrace::kACFUTraceEventBTI: 0x%08x\n", v90, v91, v92, v93, v94, "ACFUACIPCTransport");
    }
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  _Block_object_dispose(&v136, 8);
  _Block_object_dispose(&v140, 8);
  _Block_object_dispose(&v144, 8);
  _Block_object_dispose(&v148, 8);

  return v77;
}

void sub_2402C9810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Block_object_dispose((v31 - 120), 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZN18ACFUACIPCTransport19loadImageOnBTIStageEPP12IOACIPCClassNSt3__110shared_ptrI12ACFUFirmwareEEjU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  result = **(a1 + 64);
  if (result)
  {
    result = (*(*result + 88))(result, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(a1 + 56) + 8) + 24, 0);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void __copy_helper_block_ea8_32r40r48r56r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v4 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v4, 8);
}

void __destroy_helper_block_ea8_32r40r48r56r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t ACFUACIPCTransport::processOpenForWriteCommand(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = 0;
  v60 = 4;
  LODWORD(__p[0]) = *(a3 + 4);
  BYTE4(__p[0]) = 0;
  v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  rep = v6.__d_.__rep_;
  if (a1[4])
  {
    LogInstance = ACFULogging::getLogInstance(v6.__d_.__rep_);
    v31 = "%s::%s: there is already a file trasfer in progress\n";
LABEL_27:
    ACFULogging::handleMessage(LogInstance, 2u, v31, v26, v27, v28, v29, v30, "ACFUACIPCTransport");
    goto LABEL_28;
  }

  v7 = ACFULogging::getLogInstance(v6.__d_.__rep_);
  ACFULogging::handleMessage(v7, 0, "%s::%s: open (write only): %s\n", v8, v9, v10, v11, v12, "ACFUACIPCTransport");
  v14 = *(a3 + 12);
  v58 = v14;
  if (!v14)
  {
    v32 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v32, 2u, "%s::%s: invalid file %s with size 0\n", v33, v34, v35, v36, v37, "ACFUACIPCTransport");
    goto LABEL_28;
  }

  v15 = a1[18];
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v15 + 48))(&v56);
  size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v56.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v17 = &v56;
  }

  else
  {
    v17 = __p;
  }

  std::string::operator=(&v56, v17);
  v18 = a1[1];
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v56;
  }

  ACFUDiagnostics::createFileDataContainer(v18, &v54, &v55);
  v20 = v55;
  v61 = v55;
  v55 = 0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (!v20)
  {
    v38 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v38, 2u, "%s::%s: failed to obtain file container\n", v39, v40, v41, v42, v43, "ACFUACIPCTransport");
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
    if (!v20)
    {
      goto LABEL_28;
    }
  }

  else if (!v20)
  {
    goto LABEL_28;
  }

  LOWORD(v56.__r_.__value_.__l.__data_) = 3073;
  *&v56.__r_.__value_.__s.__data_[2] = *(a3 + 2);
  HIDWORD(v56.__r_.__value_.__r.__words[0]) = *(a3 + 4);
  LODWORD(v56.__r_.__value_.__r.__words[1]) = v14;
  LODWORD(v55) = 12;
  v21 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v56, &v55, 1);
  if (!v21)
  {
    v53 = 1;
    v55 = 0;
    std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,decltype(nullptr),std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(&v53, __p, &v58, &v61, &rep, &v56);
    v22 = v56.__r_.__value_.__r.__words[0];
    v56.__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](a1 + 4, v22);
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](&v56, 0);
    if (a1[4])
    {
      v24 = 1;
      goto LABEL_29;
    }

    LogInstance = ACFULogging::getLogInstance(v23);
    v31 = "%s::%s: failed to create file transfer session\n";
    goto LABEL_27;
  }

  v44 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v44, 2u, "%s::%s: failed to send response to device error: 0x%x\n", v45, v46, v47, v48, v49, "ACFUACIPCTransport");
LABEL_28:
  v24 = 0;
LABEL_29:
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v50 = v61;
  v61 = 0;
  if (v50)
  {
    ACFUDataContainer::~ACFUDataContainer(v50);
    operator delete(v51);
  }

  return v24;
}

void sub_2402C9CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 88);
  *(v34 - 88) = 0;
  if (v36)
  {
    ACFUDataContainer::~ACFUDataContainer(v36);
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,decltype(nullptr),std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(char *a1@<X0>, uint64_t a2@<X2>, int *a3@<X3>, ACFUDataContainer **a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v12 = operator new(0x48uLL);
  v13 = *a1;
  v20 = 0;
  v21 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
  }

  else
  {
    v19 = *a2;
  }

  v14 = *a3;
  v15 = *a4;
  *a4 = 0;
  v18 = v15;
  ACFUACIPCTransport::FileTransferSession::FileTransferSession(v12, v13, &v20, &v19, v14, &v18, *a5);
  *a6 = v12;
  v16 = v18;
  v18 = 0;
  if (v16)
  {
    ACFUDataContainer::~ACFUDataContainer(v16);
    operator delete(v17);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_2402C9E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ACFUDataContainer *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t ACFUACIPCTransport::processOpenForReadCommand(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v55 = 0;
  v54 = 4;
  LODWORD(__p[0]) = *(a4 + 4);
  BYTE4(__p[0]) = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  LogInstance = ACFULogging::getLogInstance(rep);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: open (read only): %s\n", v9, v10, v11, v12, v13, "ACFUACIPCTransport");
  if (*(a1 + 32))
  {
    v28 = ACFULogging::getLogInstance(v14);
    v34 = "%s::%s: there is already a file trasfer in progress\n";
LABEL_27:
    ACFULogging::handleMessage(v28, 2u, v34, v29, v30, v31, v32, v33, "ACFUACIPCTransport");
    goto LABEL_28;
  }

  v15 = *a3;
  if (!*a3)
  {
    v28 = ACFULogging::getLogInstance(0);
    v34 = "%s::%s: invalid firmware object when processing open (read) command\n";
    goto LABEL_27;
  }

  if (v54 < 0)
  {
    if (__p[1] != 4)
    {
      goto LABEL_9;
    }

    v16 = __p[0];
  }

  else
  {
    if (v54 != 4)
    {
      goto LABEL_9;
    }

    v16 = __p;
  }

  if (*v16 == 1295273289)
  {
    Manifest = ACFUFirmware::getManifest(v15);
    ACFUDataContainer::create(Manifest, &v49);
    v19 = v49;
    v55 = v49;
    if (v49)
    {
      goto LABEL_14;
    }

    v41 = ACFULogging::getLogInstance(0);
    v47 = "%s::%s: manifest (%s) not available\n";
LABEL_31:
    ACFULogging::handleMessage(v41, 2u, v47, v42, v43, v44, v45, v46, "ACFUACIPCTransport");
    goto LABEL_28;
  }

LABEL_9:
  Length = (*(*v15 + 40))(v15, __p);
  v52 = Length;
  if (Length)
  {
    goto LABEL_15;
  }

  v18 = *(a1 + 112);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(&v49);
  v19 = v49;
  v55 = v49;
  if (!v49)
  {
    v41 = ACFULogging::getLogInstance(0);
    v47 = "%s::%s: file (%s) not available\n";
    goto LABEL_31;
  }

LABEL_14:
  Length = ACFUDataContainer::getLength(v19);
  v52 = Length;
LABEL_15:
  LOWORD(v49) = 3073;
  WORD1(v49) = *(a4 + 2);
  HIDWORD(v49) = *(a4 + 4);
  v50 = Length;
  v48 = 12;
  v21 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v49, &v48, 1);
  if (!v21)
  {
    LOBYTE(v48) = 0;
    std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,std::shared_ptr<ACFUFirmware> &,std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(&v48, a3, __p, &v52, &v55, &rep, &v49);
    v22 = v49;
    v49 = 0;
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100]((a1 + 32), v22);
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](&v49, 0);
    if (*(a1 + 32))
    {
      v24 = 1;
      goto LABEL_18;
    }

    v28 = ACFULogging::getLogInstance(v23);
    v34 = "%s::%s: failed to create file transfer session\n";
    goto LABEL_27;
  }

  v35 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v35, 2u, "%s::%s: failed to send response to device error: 0x%x\n", v36, v37, v38, v39, v40, "ACFUACIPCTransport");
LABEL_28:
  v24 = 0;
LABEL_18:
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = v55;
  v55 = 0;
  if (v25)
  {
    ACFUDataContainer::~ACFUDataContainer(v25);
    operator delete(v26);
  }

  return v24;
}

void sub_2402CA1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 72);
  *(v22 - 72) = 0;
  if (v24)
  {
    ACFUDataContainer::~ACFUDataContainer(v24);
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,std::shared_ptr<ACFUFirmware> &,std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, ACFUDataContainer **a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v14 = operator new(0x48uLL);
  v15 = *a1;
  v16 = a2[1];
  v23 = *a2;
  v24 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a3, *(a3 + 8));
  }

  else
  {
    v22 = *a3;
  }

  v17 = *a4;
  v18 = *a5;
  *a5 = 0;
  v21 = v18;
  ACFUACIPCTransport::FileTransferSession::FileTransferSession(v14, v15, &v23, &v22, v17, &v21, *a6);
  *a7 = v14;
  v19 = v21;
  v21 = 0;
  if (v19)
  {
    ACFUDataContainer::~ACFUDataContainer(v19);
    operator delete(v20);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_2402CA2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ACFUDataContainer *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t ACFUACIPCTransport::processCloseCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = 4;
  LODWORD(__p[0]) = *(a3 + 4);
  BYTE4(__p[0]) = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: close: %s\n", v7, v8, v9, v10, v11, "ACFUACIPCTransport");
  v13 = (a1 + 32);
  v14 = *(a1 + 32);
  if (!v14)
  {
    v20 = ACFULogging::getLogInstance(v12);
    v26 = "%s::%s: invalid file transfer session\n";
    goto LABEL_48;
  }

  v15 = *(v14 + 47);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (*(v14 + 47))
    {
      goto LABEL_4;
    }

LABEL_22:
    v20 = ACFULogging::getLogInstance(v12);
    v26 = "%s::%s: file not open\n";
    goto LABEL_48;
  }

  if (!*(v14 + 32))
  {
    goto LABEL_22;
  }

LABEL_4:
  if (v15 >= 0)
  {
    v16 = *(v14 + 47);
  }

  else
  {
    v16 = *(v14 + 32);
  }

  v17 = v68;
  if (v68 < 0)
  {
    v17 = __p[1];
  }

  if (v16 != v17 || (v15 >= 0 ? (v18 = (v14 + 24)) : (v18 = *(v14 + 24)), v68 >= 0 ? (v19 = __p) : (v19 = __p[0]), v12 = memcmp(v18, v19, v16), v12))
  {
    v41 = ACFULogging::getLogInstance(v12);
    if (*(*v13 + 47) < 0)
    {
      v47 = *(*v13 + 24);
    }

    ACFULogging::handleMessage(v41, 2u, "%s::%s: open file %s, received request for file %s\n", v42, v43, v44, v45, v46, "ACFUACIPCTransport");
    goto LABEL_49;
  }

  if (*v14 == 1)
  {
    if (*(a3 + 3) != 1)
    {
      v20 = ACFULogging::getLogInstance(v12);
      v26 = "%s::%s: invalid file mode for write\n";
      goto LABEL_48;
    }

    if (*(v14 + 52) != *(v14 + 48))
    {
      v54 = ACFULogging::getLogInstance(v12);
      v60 = *v13;
      if (*(*v13 + 47) < 0)
      {
        v61 = *(*v13 + 24);
      }

      v62 = *(v60 + 48);
      v63 = *(v60 + 52);
      ACFULogging::handleMessage(v54, 2u, "%s::%s: %s: file incomplete: expected %u bytes, but received %u\n", v55, v56, v57, v58, v59, "ACFUACIPCTransport");
      goto LABEL_49;
    }
  }

  else if (!*v14 && *(a3 + 3))
  {
    v20 = ACFULogging::getLogInstance(v12);
    v26 = "%s::%s: invalid file mode for read\n";
LABEL_48:
    ACFULogging::handleMessage(v20, 2u, v26, v21, v22, v23, v24, v25, "ACFUACIPCTransport");
    goto LABEL_49;
  }

  LOWORD(valuePtr) = 3077;
  WORD1(valuePtr) = *(a3 + 2);
  HIDWORD(valuePtr) = *(a3 + 4);
  v66 = 0;
  v64 = 12;
  v27 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &valuePtr, &v64, 1);
  if (!v27)
  {
    if (!*(a1 + 48) || **v13)
    {
LABEL_38:
      v39 = 1;
      goto LABEL_39;
    }

    valuePtr = (std::chrono::system_clock::now().__d_.__rep_ - *(*v13 + 64)) / 1000;
    v28 = *MEMORY[0x277CBECE8];
    if (v68 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    v30 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v29, 0x8000100u);
    v31 = CFNumberCreate(v28, kCFNumberLongLongType, &valuePtr);
    v32 = v31;
    if (v30 && v31)
    {
      CFDictionaryAddValue(*(a1 + 48), v30, v31);
    }

    else
    {
      v33 = ACFULogging::getLogInstance(v31);
      ACFULogging::handleMessage(v33, 2u, "%s::%s: failed to collect download metrics for %s\n", v34, v35, v36, v37, v38, "ACFUACIPCTransport");
      if (!v30)
      {
        goto LABEL_36;
      }
    }

    CFRelease(v30);
LABEL_36:
    if (v32)
    {
      CFRelease(v32);
    }

    goto LABEL_38;
  }

  v48 = ACFULogging::getLogInstance(v27);
  ACFULogging::handleMessage(v48, 2u, "%s::%s: failed to send response to device error: 0x%x\n", v49, v50, v51, v52, v53, "ACFUACIPCTransport");
LABEL_49:
  v39 = 0;
LABEL_39:
  std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](v13, 0);
  if (v68 < 0)
  {
    operator delete(__p[0]);
  }

  return v39;
}

void sub_2402CA6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100]((v2 + 56), 0);
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }
}

BOOL ACFUACIPCTransport::processReadCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v145 = 4;
  __size[1] = *(a3 + 4);
  LOBYTE(__size[2]) = 0;
  v3 = *(a1 + 32);
  if (!v3)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    v66 = "%s::%s: invalid file transfer session\n";
    goto LABEL_46;
  }

  v6 = *(v3 + 47);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 47))
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if (!*(v3 + 32))
  {
LABEL_29:
    LogInstance = ACFULogging::getLogInstance(a1);
    v66 = "%s::%s: file not open\n";
LABEL_46:
    ACFULogging::handleMessage(LogInstance, 2u, v66, v61, v62, v63, v64, v65, "ACFUACIPCTransport");
    return 0;
  }

LABEL_4:
  if (*v3)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    v66 = "%s::%s: invalid file open mode\n";
    goto LABEL_46;
  }

  v7 = *(v3 + 32);
  if (v6 >= 0)
  {
    v7 = *(v3 + 47);
  }

  if (v7 != 4 || (v6 >= 0 ? (v8 = (v3 + 24)) : (v8 = *(v3 + 24)), *v8 != __size[1]))
  {
    v104 = ACFULogging::getLogInstance(a1);
    v110 = *(a1 + 32);
    if (*(v110 + 47) < 0)
    {
      v111 = *(v110 + 24);
    }

    ACFULogging::handleMessage(v104, 2u, "%s::%s: open file %s, received request for file %s\n", v105, v106, v107, v108, v109, "ACFUACIPCTransport");
    if (v145 < 0)
    {
      operator delete(*&__size[1]);
    }

    return 0;
  }

  v9 = *(a3 + 12);
  if ((v9 + *(a3 + 8)) > *(v3 + 48))
  {
    v112 = ACFULogging::getLogInstance(a1);
    v118 = *(a1 + 32);
    if (*(v118 + 47) < 0)
    {
      v119 = *(v118 + 24);
    }

    v138 = *(a3 + 12);
    v140 = *(v118 + 48);
    v137 = *(a3 + 8);
    ACFULogging::handleMessage(v112, 2u, "%s::%s: %s - trying to read from offset %u length %u, but file size is %u\n", v113, v114, v115, v116, v117, "ACFUACIPCTransport");
    return 0;
  }

  if (*(a1 + 44))
  {
    v10 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v10, 4u, "%s::%s: Chunking image using paged loading\n", v11, v12, v13, v14, v15, "ACFUACIPCTransport");
    v17 = ACFULogging::getLogInstance(v16);
    v139 = *(a3 + 8);
    v132 = *(a1 + 44);
    ACFULogging::handleMessage(v17, 4u, "%s::%s: length: %u, fReadSegmentSize: %u, remains: %lld, offset: %u\n", v18, v19, v20, v21, v22, "ACFUACIPCTransport");
    v24 = 0;
    while (v9 >= 1)
    {
      v25 = *(a1 + 44);
      if (v9 <= v25)
      {
        LODWORD(v25) = v9;
      }

      __size[0] = v25;
      v26 = ACFULogging::getLogInstance(v23);
      ACFULogging::handleMessage(v26, 4u, "%s::%s: size: %u, remains: %lld\n", v27, v28, v29, v30, v31, "ACFUACIPCTransport");
      v32 = *(a1 + 32);
      v33 = *(v32 + 56);
      if (v33)
      {
        ACFUDataContainer::copyDirectData(v33, __size[0], *(a3 + 8) + v24, &v142);
      }

      else
      {
        v34 = (*(a3 + 8) + v24);
        ACFUFirmware::copyFWDataRefByFileName(*(v32 + 8), &v142);
      }

      v35 = v142;
      DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(v142);
      v37 = ACFUACIPCTransport::acipcIO(a1, a2, 2, DataPtr, __size, 1);
      v38 = v37;
      if (v37)
      {
        v54 = ACFULogging::getLogInstance(v37);
        ACFULogging::handleMessage(v54, 2u, "%s::%s: failed to send data to device error: 0x%x\n", v55, v56, v57, v58, v59, "ACFUACIPCTransport");
      }

      else
      {
        v39 = __size[0];
        *(*(a1 + 32) + 52) += __size[0];
        v40 = ACFULogging::getLogInstance(v37);
        v133 = *(*(a1 + 32) + 48);
        ACFULogging::handleMessage(v40, 4u, "%s::%s: sent %u bytes data to device, fFileTransferSession->fileSize: %u\n", v41, v42, v43, v44, v45, "ACFUACIPCTransport");
        v47 = ACFULogging::getLogInstance(v46);
        v134 = *(*(a1 + 32) + 52);
        ACFULogging::handleMessage(v47, 0, "%s::%s: sent %u bytes (total: %u)\n", v48, v49, v50, v51, v52, "ACFUACIPCTransport");
        v24 += v39;
        v9 -= v39;
      }

      if (v35)
      {
        ACFUDataContainer::DirectDataRef::~DirectDataRef(v35);
        operator delete(v53);
      }

      if (v38)
      {
        return 0;
      }
    }

    if (v9)
    {
      v75 = ACFULogging::getLogInstance(v23);
      ACFULogging::handleMessage(v75, 2u, "%s::%s: unexpected (too many) amount of bytes were sent to device, bailing\n", v76, v77, v78, v79, v80, "ACFUACIPCTransport");
      return 0;
    }
  }

  else
  {
    __size[0] = *(a3 + 12);
    v67 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v67, 4u, "%s::%s: Paged loading is disabled; sending all bytes of requested data in one segment\n", v68, v69, v70, v71, v72, "ACFUACIPCTransport");
    v73 = *(a1 + 32);
    v74 = *(v73 + 56);
    if (v74)
    {
      ACFUDataContainer::copyDirectData(v74, v9, *(a3 + 8), &v142);
    }

    else
    {
      v81 = *(a3 + 8);
      ACFUFirmware::copyFWDataRefByFileName(*(v73 + 8), &v142);
    }

    v82 = v142;
    v83 = ACFUDataContainer::DirectDataRef::getDataPtr(v142);
    v84 = ACFUACIPCTransport::acipcIO(a1, a2, 2, v83, __size, 1);
    v85 = v84;
    if (v84)
    {
      v126 = ACFULogging::getLogInstance(v84);
      ACFULogging::handleMessage(v126, 2u, "%s::%s: failed to send data to device error: 0x%x\n", v127, v128, v129, v130, v131, "ACFUACIPCTransport");
    }

    else
    {
      *(*(a1 + 32) + 52) += __size[0];
      v86 = ACFULogging::getLogInstance(v84);
      v135 = *(*(a1 + 32) + 48);
      ACFULogging::handleMessage(v86, 4u, "%s::%s: sent %u bytes data to device, fFileTransferSession->fileSize: %u\n", v87, v88, v89, v90, v91, "ACFUACIPCTransport");
      v93 = ACFULogging::getLogInstance(v92);
      v136 = *(*(a1 + 32) + 52);
      ACFULogging::handleMessage(v93, 0, "%s::%s: sent %u bytes (total: %u)\n", v94, v95, v96, v97, v98, "ACFUACIPCTransport");
    }

    if (v82)
    {
      ACFUDataContainer::DirectDataRef::~DirectDataRef(v82);
      operator delete(v99);
    }

    if (v85)
    {
      return 0;
    }
  }

  LOWORD(v142) = 3075;
  WORD1(v142) = *(a3 + 2);
  v101 = *(a3 + 12);
  HIDWORD(v142) = *(a3 + 4);
  v143 = v101;
  __size[0] = 12;
  v102 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v142, __size, 1);
  v100 = v102 == 0;
  if (v102)
  {
    v120 = ACFULogging::getLogInstance(v102);
    ACFULogging::handleMessage(v120, 2u, "%s::%s: failed to send response to device error: 0x%x\n", v121, v122, v123, v124, v125, "ACFUACIPCTransport");
  }

  return v100;
}

void sub_2402CACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUACIPCTransport::processWriteCommand(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v97 = 4;
  LODWORD(__p) = a3[1];
  BYTE4(__p) = 0;
  v3 = *(a1 + 32);
  if (!v3)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    v48 = "%s::%s: invalid file transfer session\n";
    goto LABEL_33;
  }

  if (*v3 != 1)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    v48 = "%s::%s: invalid file open mode\n";
    goto LABEL_33;
  }

  v4 = a3;
  v7 = *(v3 + 47);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 47))
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

  if (!*(v3 + 32))
  {
LABEL_26:
    LogInstance = ACFULogging::getLogInstance(a1);
    v48 = "%s::%s: file not open\n";
LABEL_33:
    ACFULogging::handleMessage(LogInstance, 2u, v48, v43, v44, v45, v46, v47, "ACFUACIPCTransport");
    return 0;
  }

LABEL_5:
  v8 = *(v3 + 32);
  if (v7 >= 0)
  {
    v8 = *(v3 + 47);
  }

  if (v8 != 4 || (v7 >= 0 ? (v9 = (v3 + 24)) : (v9 = *(v3 + 24)), *v9 != __p))
  {
    v61 = ACFULogging::getLogInstance(a1);
    v67 = *(a1 + 32);
    if (*(v67 + 47) < 0)
    {
      v68 = *(v67 + 24);
    }

    ACFULogging::handleMessage(v61, 2u, "%s::%s: open file %s, received request for file %s\n", v62, v63, v64, v65, v66, "ACFUACIPCTransport");
    if (v97 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v11 = a3[2];
  v10 = a3[3];
  v12 = *(v3 + 48);
  if (v10 + v11 > v12)
  {
    v69 = ACFULogging::getLogInstance(a1);
    v75 = *(a1 + 32);
    if (*(v75 + 47) < 0)
    {
      v76 = *(v75 + 24);
    }

    v90 = v4[3];
    v92 = *(v75 + 48);
    v88 = v4[2];
    ACFULogging::handleMessage(v69, 2u, "%s::%s: %s - trying to write to offset %u length %u, but file size is %u\n", v70, v71, v72, v73, v74, "ACFUACIPCTransport");
    return 0;
  }

  if (*(v3 + 52) + v10 > v12)
  {
    v77 = ACFULogging::getLogInstance(a1);
    v83 = *(a1 + 32);
    if (*(v83 + 47) < 0)
    {
      v84 = *(v83 + 24);
    }

    v89 = v4[3];
    v91 = *(v83 + 48);
    ACFULogging::handleMessage(v77, 2u, "%s::%s: %s - attempting to write more bytes (%u) than initially indicated (%u), bailing\n", v78, v79, v80, v81, v82, "ACFUACIPCTransport");
    return 0;
  }

  if (!v10)
  {
LABEL_22:
    v94 = 12;
    LOWORD(v95[0]) = 3081;
    HIWORD(v95[0]) = *(v4 + 2);
    v38 = v4[3];
    v95[1] = v4[1];
    v95[2] = v38;
    v39 = ACFUACIPCTransport::acipcIO(a1, a2, 1, v95, &v94, 1);
    v40 = v39 == 0;
    if (v39)
    {
      ACFUACIPCTransport::processWriteCommand(v39);
    }

    return v40;
  }

  do
  {
    v13 = *(a1 + 40);
    if (v10 <= v13)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    v95[0] = v14;
    v15 = operator new[](v14);
    v16 = ACFULogging::getLogInstance(v15);
    v85 = *(a1 + 40);
    ACFULogging::handleMessage(v16, 4u, "%s::%s: size: %u, fWriteSegmentSize: %u, remains: %lld, offset: %u\n", v17, v18, v19, v20, v21, "ACFUACIPCTransport");
    v22 = ACFUACIPCTransport::acipcIO(a1, a2, 3, v15, v95, 2);
    if (v22)
    {
      v49 = ACFULogging::getLogInstance(v22);
      ACFULogging::handleMessage(v49, 2u, "%s::%s: failed to receive data from device, error: 0x%x\n", v50, v51, v52, v53, v54, "ACFUACIPCTransport");
LABEL_29:
      operator delete[](v15);
      return 0;
    }

    *(*(a1 + 32) + 52) += v95[0];
    v23 = ACFULogging::getLogInstance(v22);
    v86 = *(*(a1 + 32) + 48);
    ACFULogging::handleMessage(v23, 4u, "%s::%s: received %u bytes data from device, fFileTransferSession->fileSize: %u\n", v24, v25, v26, v27, v28, "ACFUACIPCTransport");
    v30 = ACFULogging::getLogInstance(v29);
    v87 = *(*(a1 + 32) + 52);
    ACFULogging::handleMessage(v30, 0, "%s::%s: received %u bytes (total: %u)\n", v31, v32, v33, v34, v35, "ACFUACIPCTransport");
    v36 = ACFUDataContainer::writeData(*(*(a1 + 32) + 56), v15, v11, v95[0]);
    if ((v36 & 1) == 0)
    {
      v55 = ACFULogging::getLogInstance(v36);
      ACFULogging::handleMessage(v55, 2u, "%s::%s: failed to write to file\n", v56, v57, v58, v59, v60, "ACFUACIPCTransport");
      goto LABEL_29;
    }

    v10 -= v95[0];
    v11 += v95[0];
    operator delete[](v15);
  }

  while (v10 > 0);
  v4 = a3;
  if (!v10)
  {
    goto LABEL_22;
  }

  ACFUACIPCTransport::processWriteCommand(v37);
  return 0;
}

void sub_2402CB118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUACIPCTransport::processDoneCommand(ACFULogging *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4))
  {
    ACFUACIPCTransport::processDoneCommand(a1);
    return 0;
  }

  else
  {
    v7 = 3079;
    v8 = *(a3 + 2);
    v9 = 0;
    v10 = 0;
    v6 = 12;
    v3 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v7, &v6, 1);
    v4 = v3 == 0;
    if (v3)
    {
      ACFUACIPCTransport::processDoneCommand(v3);
    }
  }

  return v4;
}

uint64_t ACFUACIPCTransport::processCommandFromDevice(ACFULogging *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v52[0] = 0;
  v52[1] = 0;
  if (!a2)
  {
    ACFUACIPCTransport::processCommandFromDevice(a1);
    return 3012;
  }

  if (!a4 || *a4 == 1)
  {
    ACFUACIPCTransport::processCommandFromDevice(a1);
    return 3012;
  }

  v51 = 16;
  v8 = ACFUACIPCTransport::acipcIO(a1, a2, 0, v52, &v51, 2);
  if (v8)
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to receive command from device, error: 0x%x\n", v44, v45, v46, v47, v48, "ACFUACIPCTransport");
    return 3025;
  }

  v9 = ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage(v9, 4u, "%s::%s: command : type %d size %d seqnum %d option %d tag 0x%x offset %d length %d\n", v10, v11, v12, v13, v14, "ACFUACIPCTransport");
  if (LOBYTE(v52[0]) <= 3u)
  {
    if (LOBYTE(v52[0]))
    {
      if (LOBYTE(v52[0]) == 2)
      {
        Command = ACFUACIPCTransport::processReadCommand(a1, a2, v52);
        if (!Command)
        {
LABEL_14:
          ACFUACIPCTransport::processCommandFromDevice(Command);
          return 3022;
        }

        return 0;
      }

LABEL_27:
      v30 = ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(v30, 2u, "%s::%s: unknown command type %d\n", v31, v32, v33, v34, v35, "ACFUACIPCTransport");
      return 3025;
    }

    if (BYTE3(v52[0]) == 1)
    {
      v36 = ACFUACIPCTransport::processOpenForWriteCommand(a1, a2, v52);
      if ((v36 & 1) == 0)
      {
        ACFUACIPCTransport::processCommandFromDevice(v36);
        return 3021;
      }
    }

    else
    {
      if (BYTE3(v52[0]))
      {
        v37 = ACFULogging::getLogInstance(v15);
        ACFULogging::handleMessage(v37, 2u, "%s::%s: unknown command option %d\n", v38, v39, v40, v41, v42, "ACFUACIPCTransport");
        return 3025;
      }

      v27 = a3[1];
      v49 = *a3;
      v50 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = ACFUACIPCTransport::processOpenForReadCommand(a1, a2, &v49, v52);
      v29 = v50;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if ((v28 & 1) == 0)
      {
        ACFUACIPCTransport::processCommandFromDevice(v29);
        return 3021;
      }
    }

    return 0;
  }

  if (LOBYTE(v52[0]) == 4)
  {
    v18 = ACFUACIPCTransport::processCloseCommand(a1, a2, v52);
    if ((v18 & 1) == 0)
    {
      ACFUACIPCTransport::processCommandFromDevice(v18);
      return 3023;
    }

    return 0;
  }

  if (LOBYTE(v52[0]) != 6)
  {
    if (LOBYTE(v52[0]) == 8)
    {
      Command = ACFUACIPCTransport::processWriteCommand(a1, a2, v52);
      if (!Command)
      {
        goto LABEL_14;
      }

      return 0;
    }

    goto LABEL_27;
  }

  done = ACFUACIPCTransport::processDoneCommand(a1, a2, v52);
  v20 = done;
  v21 = ACFULogging::getLogInstance(done);
  if (v20)
  {
    ACFULogging::handleMessage(v21, 0, "%s::%s: firmware downloading finished successfully\n", v22, v23, v24, v25, v26, "ACFUACIPCTransport");
    result = 0;
    *a4 = 1;
  }

  else
  {
    ACFULogging::handleMessage(v21, 2u, "%s::%s: failed to process done command\n", v22, v23, v24, v25, v26, "ACFUACIPCTransport");
    return 3024;
  }

  return result;
}

void sub_2402CB490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUACIPCTransport::processRTIStage(uint64_t *a1, uint64_t a2, uint64_t *a3, unsigned int a4, id a5)
{
  v9 = a5;
  v85 = 0;
  Trace = ACFUTrace::getTrace(v9);
  if (*(Trace + 12) == 1)
  {
    v11 = ACFUTrace::getTrace(Trace);
    v12 = *v11;
    v13 = ACFUTrace::getTrace(v11);
    v14 = v13[1];
    v15 = (4 * *(ACFUTrace::getTrace(v13) + 4) + 8) & 0xFFFC;
    hasFired = kdebug_trace();
  }

  else
  {
    hasFired = ACFUTrace::getTrace(Trace);
    if (*hasFired)
    {
      LogInstance = ACFULogging::getLogInstance(hasFired);
      v18 = ACFUTrace::getTrace(LogInstance);
      v19 = *v18;
      v20 = ACFUTrace::getTrace(v18);
      v21 = *(v20 + 1);
      v81 = (4 * *(ACFUTrace::getTrace(v20) + 4) + 8) & 0xFFFC | (v19 << 24) | (v21 << 16) | 1;
      ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: TRACE EVENT BEGIN ACFUTrace::kACFUTraceEventRTI: 0x%08x\n", v22, v23, v24, v25, v26, "ACFUACIPCTransport");
    }
  }

  if (a2)
  {
    if (!a4)
    {
      v28 = 0;
LABEL_12:
      while ((v85 & 1) == 0)
      {
        v35 = a3[1];
        v83[0] = *a3;
        v83[1] = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        hasFired = ACFUACIPCTransport::processCommandFromDevice(a1, a2, v83, &v85);
        v36 = hasFired;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v28)
        {
          hasFired = ACFUTimer::hasFired(v28);
          if (hasFired)
          {
            goto LABEL_22;
          }
        }

        if (v36)
        {
          v37 = ACFULogging::getLogInstance(hasFired);
          ACFULogging::handleMessage(v37, 2u, "%s::%s: failed to process command from device\n", v38, v39, v40, v41, v42, "ACFUACIPCTransport");
          goto LABEL_24;
        }
      }

      if (v28)
      {
LABEL_22:
        ACFUTimer::stop(v28);
        hasFired = ACFUTimer::hasFired(v28);
        if (hasFired)
        {
          v75 = ACFULogging::getLogInstance(hasFired);
          ACFULogging::handleMessage(v75, 2u, "%s::%s: timeout in RTI stage\n", v76, v77, v78, v79, v80, "ACFUACIPCTransport");
          v36 = 3030;
          goto LABEL_24;
        }
      }

      v43 = ACFULogging::getLogInstance(hasFired);
      ACFULogging::handleMessage(v43, 0, "%s::%s: RTI stage completed successfully\n", v44, v45, v46, v47, v48, "ACFUACIPCTransport");
      v36 = 0;
      goto LABEL_24;
    }

    if (v9)
    {
      ACFUTimer::create(v9, a4, &v84);
      v28 = v84;
      if (v84)
      {
        hasFired = ACFUTimer::start(v84);
        if (hasFired)
        {
          goto LABEL_12;
        }

        v29 = ACFULogging::getLogInstance(hasFired);
        ACFULogging::handleMessage(v29, 2u, "%s::%s: failed to start RTI stage timer\n", v30, v31, v32, v33, v34, "ACFUACIPCTransport");
        goto LABEL_36;
      }

      v68 = ACFULogging::getLogInstance(v27);
      v74 = "%s::%s: failed to create RTI stage timer\n";
    }

    else
    {
      v68 = ACFULogging::getLogInstance(hasFired);
      v74 = "%s::%s: invalid timeout callback parameter\n";
    }
  }

  else
  {
    v68 = ACFULogging::getLogInstance(hasFired);
    v74 = "%s::%s: processRTIStage - null acipcInterface\n";
  }

  v28 = 0;
  ACFULogging::handleMessage(v68, 2u, v74, v69, v70, v71, v72, v73, "ACFUACIPCTransport");
LABEL_36:
  v36 = 3000;
LABEL_24:
  std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](a1 + 4, 0);
  v50 = ACFUTrace::getTrace(v49);
  if (*(v50 + 12) == 1)
  {
    v51 = ACFUTrace::getTrace(v50);
    v52 = *v51;
    v53 = ACFUTrace::getTrace(v51);
    v54 = v53[1];
    v55 = (4 * *(ACFUTrace::getTrace(v53) + 4) + 8) & 0xFFFC;
    kdebug_trace();
  }

  else
  {
    v56 = ACFUTrace::getTrace(v50);
    if (*v56)
    {
      v57 = ACFULogging::getLogInstance(v56);
      v58 = ACFUTrace::getTrace(v57);
      v59 = *v58;
      v60 = ACFUTrace::getTrace(v58);
      v61 = *(v60 + 1);
      v82 = (4 * *(ACFUTrace::getTrace(v60) + 4) + 8) & 0xFFFC | (v59 << 24) | (v61 << 16) | 2;
      ACFULogging::handleMessage(v57, 4u, "%s::%s: TRACE EVENT END ACFUTrace::kACFUTraceEventRTI: 0x%08x\n", v62, v63, v64, v65, v66, "ACFUACIPCTransport");
    }
  }

  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  return v36;
}

uint64_t ACFUACIPCTransport::loadImageOnRTIStage(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = ACFUACIPCTransport::processRTIStage(a1, a2, v6, 0, 0);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void sub_2402CB964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUACIPCTransport::cancelTimer(dispatch_source_t *this)
{
  if (this[3])
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: cancelTimer - canceling timer\n", v3, v4, v5, v6, v7, "ACFUACIPCTransport");
    dispatch_source_cancel(this[3]);
    v8 = this[3];
    this[3] = 0;
  }
}

uint64_t ACFUACIPCTransport::startTimer(dispatch_source_t *a1, id a2, unsigned int a3)
{
  v5 = a2;
  ACFUACIPCTransport::cancelTimer(a1);
  if (!v5)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v28 = "%s::%s: startTimer - null timeoutCB.\n";
LABEL_7:
    ACFULogging::handleMessage(LogInstance, 2u, v28, v23, v24, v25, v26, v27, "ACFUACIPCTransport");
    v20 = 0;
    goto LABEL_4;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a1[19]);
  v8 = a1[3];
  a1[3] = v7;

  v10 = a1[3];
  if (!v10)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    v28 = "%s::%s: startTimer - failed to create timer.\n";
    goto LABEL_7;
  }

  v11 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
  v12 = a1[3];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3254779904;
  handler[2] = ___ZN18ACFUACIPCTransport10startTimerEU13block_pointerFvvEj_block_invoke;
  handler[3] = &__block_descriptor_48_ea8_32bs_e5_v8__0l;
  v31 = a1;
  v30 = v5;
  dispatch_source_set_event_handler(v12, handler);
  v14 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v14, 0, "%s::%s: startTimer - starting timer.\n", v15, v16, v17, v18, v19, "ACFUACIPCTransport");
  dispatch_resume(a1[3]);

  v20 = 1;
LABEL_4:

  return v20;
}

uint64_t ___ZN18ACFUACIPCTransport10startTimerEU13block_pointerFvvEj_block_invoke(uint64_t a1)
{
  ACFUACIPCTransport::cancelTimer(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void ACFUACIPCTransport::~ACFUACIPCTransport(ACFUACIPCTransport *this)
{
  *this = &unk_28522EF28;

  std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](this + 120);
  std::__function::__value_func<std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::~__value_func[abi:ne200100](this + 88);
  std::__function::__value_func<__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](this + 56);
  std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](this + 4, 0);

  ACFUTransport::~ACFUTransport(this);
}

void *_ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNS_10shared_ptrI12ACFUFirmwareEEE_ENS_9allocatorIS7_EEFPK8__CFDataS6_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522F060;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNS_10shared_ptrI12ACFUFirmwareEEE_ENS_9allocatorIS7_EEFPK8__CFDataS6_EEclEOS6_(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNS_10shared_ptrI12ACFUFirmwareEEE_ENS_9allocatorIS7_EEFPK8__CFDataS6_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNSt3__110shared_ptrI12ACFUFirmwareEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks18copyRTIClientImageMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFNS_10unique_ptrI17ACFUDataContainerNS_14default_deleteISF_EEEESB_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522F0F0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks18copyRTIClientImageMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFNS_10unique_ptrI17ACFUDataContainerNS_14default_deleteISF_EEEESB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN18ACFUACIPCTransport20ACIPCClientCallbacks18copyRTIClientImageMUlRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFS9_SB_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522F180;
  return result;
}

void _ZNSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFS9_SB_EEclESB_(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t _ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFS9_SB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ACFUACIPCTransport::FileTransferSession::FileTransferSession(uint64_t a1, char a2, void *a3, __int128 *a4, int a5, uint64_t *a6, uint64_t a7)
{
  *a1 = a2;
  v11 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v12;
  }

  *(a1 + 48) = a5;
  *(a1 + 52) = 0;
  v13 = *a6;
  *a6 = 0;
  *(a1 + 56) = v13;
  *(a1 + 64) = a7;
  return a1;
}

void sub_2402CC0F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

ACFUROM *ACFURTKitROM::create@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, ACFUROM **a4@<X8>)
{
  v27 = 0;
  v8 = operator new(0x40uLL);
  ACFUROM::ACFUROM(v8);
  *v8 = &unk_28522F210;
  *(v8 + 30) = 0;
  v9 = *a1;
  v10 = a1[1];
  v26[0] = v9;
  v26[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a2;
  v12 = a2[1];
  v25[0] = v11;
  v25[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a3;
  v14 = a3[1];
  v24[0] = v13;
  v24[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = ACFURTKitROM::init(v8, v26, v25, v24, &v27);
  v16 = v15;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v16)
  {
    *a4 = v8;
    result = operator new(0x20uLL);
    *result = &unk_28522F278;
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 3) = v8;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize RTKitROM object\n", v19, v20, v21, v22, v23, "ACFURTKitROM");
    (*(*v8 + 48))(v8);
    result = 0;
    *a4 = 0;
  }

  a4[1] = result;
  return result;
}

void sub_2402CC298(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        (*(*v1 + 48))(v1);
        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ACFURTKitROM::ACFURTKitROM(ACFURTKitROM *this)
{
  ACFUROM::ACFUROM(this);
  *v1 = &unk_28522F210;
  *(v1 + 60) = 0;
}

{
  ACFUROM::ACFUROM(this);
  *v1 = &unk_28522F210;
  *(v1 + 60) = 0;
}

uint64_t ACFURTKitROM::init(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  *(a1 + 60) = *a5;
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  v12 = *a3;
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  v10 = *a4;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = ACFUROM::init(a1, &v14, &v12, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v8;
}