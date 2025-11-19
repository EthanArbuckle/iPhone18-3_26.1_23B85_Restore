void sub_1860EC11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v18 = *(v16 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::ComposeArrayItemPath(char *a1, char *a2, int a3, std::string *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    XMPUtils::ComposeArrayItemPath();
  }

  if (!a2 || !*a2)
  {
    XMPUtils::ComposeArrayItemPath();
  }

  if (!a4)
  {
    XMPUtils::ComposeArrayItemPath();
  }

  memset(v10, 0, sizeof(v10));
  ExpandXPath(a1, a2, v10);
  if (a3 <= -2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Array index out of bounds";
    *(exception + 16) = 0;
  }

  v7 = strlen(a2);
  memset(&v9, 0, sizeof(v9));
  std::string::reserve(&v9, v7 + 34);
  MEMORY[0x186602520](&v9, a2);
  if (a3 == -1)
  {
    std::string::append(&v9, "[last()]");
  }

  else
  {
    *__str = 0u;
    v12 = 0u;
    snprintf(__str, 0x20uLL, "[%d]", a3);
    std::string::append(&v9, __str);
  }

  std::string::operator=(a4, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  *__str = v10;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](__str);
}

void sub_1860EC338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char *a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a20 = &a17;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a20);
  _Unwind_Resume(a1);
}

void XMPUtils::ComposeStructFieldPath(char *a1, char *a2, char *a3, _BYTE *a4, std::string *a5)
{
  if (!a1 || !a3)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  if (!a2 || !*a2)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  if (!a4 || !*a4)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  if (!a5)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  memset(v19, 0, sizeof(v19));
  ExpandXPath(a1, a2, v19);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  ExpandXPath(a3, a4, &v16);
  if (v17 - v16 != 64)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "The fieldName must be simple";
    *(exception + 16) = 0;
  }

  v9 = strlen(a2);
  v10 = *(v16 + 55);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = v16[5];
  }

  memset(&__str, 0, sizeof(__str));
  std::string::reserve(&__str, v9 + v10 + 1);
  MEMORY[0x186602520](&__str, a2);
  std::string::push_back(&__str, 47);
  if ((v17 - v16) <= 0x20)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v16 + 55);
    if (v11 >= 0)
    {
      v12 = (v16 + 4);
    }

    else
    {
      v12 = v16[4];
    }

    if (v11 >= 0)
    {
      v13 = *(v16 + 55);
    }

    else
    {
      v13 = v16[5];
    }

    std::string::append(&__str, v12, v13);
    std::string::operator=(a5, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = &v16;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__str);
    v16 = v19;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v16);
  }
}

void sub_1860EC50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  a16 = &a19;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a16);
  _Unwind_Resume(a1);
}

void XMPUtils::ComposeQualifierPath(char *a1, char *a2, char *a3, _BYTE *a4, std::string *a5)
{
  if (!a1 || !a3)
  {
    XMPUtils::ComposeQualifierPath();
  }

  if (!a2 || !*a2)
  {
    XMPUtils::ComposeQualifierPath();
  }

  if (!a4 || !*a4)
  {
    XMPUtils::ComposeQualifierPath();
  }

  if (!a5)
  {
    XMPUtils::ComposeQualifierPath();
  }

  memset(v19, 0, sizeof(v19));
  ExpandXPath(a1, a2, v19);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  ExpandXPath(a3, a4, &v16);
  if (v17 - v16 != 64)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "The qualifier name must be simple";
    *(exception + 16) = 0;
  }

  v9 = strlen(a2);
  v10 = *(v16 + 55);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = v16[5];
  }

  memset(&__str, 0, sizeof(__str));
  std::string::reserve(&__str, v9 + v10 + 2);
  MEMORY[0x186602520](&__str, a2);
  std::string::append(&__str, "/?");
  if ((v17 - v16) <= 0x20)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v16 + 55);
    if (v11 >= 0)
    {
      v12 = (v16 + 4);
    }

    else
    {
      v12 = v16[4];
    }

    if (v11 >= 0)
    {
      v13 = *(v16 + 55);
    }

    else
    {
      v13 = v16[5];
    }

    std::string::append(&__str, v12, v13);
    std::string::operator=(a5, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = &v16;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__str);
    v16 = v19;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v16);
  }
}

void sub_1860EC6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  a16 = &a19;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a16);
  _Unwind_Resume(a1);
}

void XMPUtils::ConvertFromBool(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    JUMPOUT(0x186602520);
  }

  XMPUtils::ConvertFromBool();
}

uint64_t XMPUtils::ConvertFromInt(uint64_t a1, const char *a2, std::string *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2 || !this)
  {
    XMPUtils::ConvertFromInt();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (*a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = "%d";
  }

  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, v6, a1);
  return MEMORY[0x186602520](this, __str);
}

uint64_t XMPUtils::ConvertFromInt64(uint64_t a1, const char *a2, std::string *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2 || !this)
  {
    XMPUtils::ConvertFromInt64();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (*a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = "%lld";
  }

  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, v6, a1);
  return MEMORY[0x186602520](this, __str);
}

uint64_t XMPUtils::ConvertFromFloat(const char *a1, std::string *this, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1 || !this)
  {
    XMPUtils::ConvertFromFloat();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (*a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "%f";
  }

  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x40uLL, v6, *&a3);
  return MEMORY[0x186602520](this, __str);
}

void XMPUtils::ConvertFromDate(__int128 *a1, std::string *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    XMPUtils::ConvertFromDate();
  }

  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  v3 = a1[1];
  v9 = *a1;
  *v10 = v3;
  *&v10[16] = *(a1 + 4);
  VerifyDateTimeFlags(&v9);
  v4 = DWORD1(v9);
  if (DWORD1(v9))
  {
    if (SDWORD1(v9) < 1)
    {
      v4 = 1;
    }

    else
    {
      if (DWORD1(v9) < 0xD)
      {
        goto LABEL_11;
      }

      v4 = 12;
    }
  }

  else
  {
    v4 = 1;
    if (!DWORD2(v9) && !v10[9])
    {
      v4 = 0;
      goto LABEL_11;
    }
  }

  DWORD1(v9) = v4;
LABEL_11:
  if (!DWORD2(v9))
  {
    if (!v10[9])
    {
      if (v4)
      {
        snprintf(__str, 0x64uLL, "%.4d-%02d");
      }

      else
      {
        snprintf(__str, 0x64uLL, "%.4d");
      }

      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (SDWORD2(v9) < 1)
  {
LABEL_16:
    v5 = 1;
    goto LABEL_17;
  }

  if (DWORD2(v9) >= 0x20)
  {
    v5 = 31;
LABEL_17:
    DWORD2(v9) = v5;
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Invalid partial date";
    *(exception + 16) = 0;
  }

  if (v10[9])
  {
    FormatFullDateTime(&v9, __str);
  }

  else
  {
    snprintf(__str, 0x64uLL, "%.4d-%02d-%02d");
  }

LABEL_25:
  MEMORY[0x186602520](a2, __str);
  if (!v10[10])
  {
    return;
  }

  if (*&v10[12] > 0x17u)
  {
    goto LABEL_38;
  }

  if (*&v10[16] > 0x3Bu)
  {
    goto LABEL_38;
  }

  v6 = v10[11];
  if (v10[11] - 2 < 0xFD)
  {
    goto LABEL_38;
  }

  if (!v10[11])
  {
    if (!*&v10[12])
    {
      std::string::push_back(a2, 90);
      return;
    }

LABEL_38:
    v8 = __cxa_allocate_exception(0x18uLL);
    *v8 = 4;
    v8[1] = "Invalid time zone values";
    *(v8 + 16) = 0;
  }

  snprintf(__str, 0x64uLL, "+%02d:%02d", *&v10[12], *&v10[16]);
  if (v6 < 0)
  {
    __str[0] = 45;
  }

  std::string::append(a2, __str);
}

uint64_t VerifyDateTimeFlags(uint64_t result)
{
  if (*result || *(result + 4) || *(result + 8))
  {
    *(result + 24) = 1;
  }

  if (*(result + 12) || *(result + 16) || *(result + 20) || *(result + 36))
  {
    *(result + 25) = 1;
  }

  if (*(result + 27) || *(result + 28) || *(result + 32))
  {
    *(result + 26) = 1;
LABEL_14:
    *(result + 25) = 1;
    return result;
  }

  if (*(result + 26))
  {
    goto LABEL_14;
  }

  return result;
}

size_t FormatFullDateTime(int *a1, char *a2)
{
  AdjustTimeOverflow(a1);
  v4 = a1[9];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (!v4)
  {
    return snprintf(a2, 0x64uLL, "%.4d-%02d-%02dT%02d:%02d:%02d", v5, v6, v7, v8, a1[4], a1[5]);
  }

  snprintf(a2, 0x64uLL, "%.4d-%02d-%02dT%02d:%02d:%02d.%09d", v5, v6, v7, v8, a1[4], a1[5], v4);
  a2[99] = 0;
  result = strlen(a2);
  for (i = &a2[result]; ; *i = 0)
  {
    v11 = *--i;
    if (v11 != 48)
    {
      break;
    }
  }

  return result;
}

uint64_t XMPUtils::ConvertToBool(XMPUtils *this, const char *a2)
{
  if (!this || !*this)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    exception[1] = "Empty convert-from string";
    *(exception + 16) = 0;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::string::basic_string[abi:fe200100]<0>(&v21, this);
  v2 = HIBYTE(v23);
  v3 = v21;
  v4 = v22;
  if (v23 >= 0)
  {
    v5 = HIBYTE(v23);
  }

  else
  {
    v5 = v22;
  }

  v6 = v21;
  if (v5)
  {
    if (v23 >= 0)
    {
      v7 = &v21;
    }

    else
    {
      v7 = v21;
    }

    do
    {
      v8 = *v7;
      if ((v8 - 65) <= 0x19)
      {
        *v7 = v8 | 0x20;
        v2 = HIBYTE(v23);
        v3 = v21;
        v4 = v22;
        v6 = v21;
      }

      ++v7;
      v9 = (v2 & 0x80u) != 0;
      if ((v2 & 0x80u) == 0)
      {
        v10 = &v21;
      }

      else
      {
        v10 = v3;
      }

      if ((v2 & 0x80u) == 0)
      {
        v11 = v2;
      }

      else
      {
        v11 = v4;
      }
    }

    while (v7 != v10 + v11);
  }

  else
  {
    v9 = SHIBYTE(v23) >> 31;
  }

  v12 = v6;
  if (!v9)
  {
    if (v2 != 1)
    {
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      if (v21 != 1702195828)
      {
        goto LABEL_67;
      }

      return 1;
    }

    goto LABEL_31;
  }

  if (v4 == 1)
  {
    v12 = *v3;
LABEL_31:
    if (v12 == 116)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v4 != 4)
  {
    goto LABEL_36;
  }

  if (*v3 == 1702195828)
  {
LABEL_32:
    v13 = 1;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_48;
  }

LABEL_34:
  if (!v9)
  {
    if (v2 != 1)
    {
      goto LABEL_50;
    }

    if (v6 != 49)
    {
      goto LABEL_45;
    }

    return 1;
  }

  if (v4 == 1)
  {
    v18 = *v3;
    if (v18 == 49)
    {
      goto LABEL_32;
    }

    if (v9)
    {
      v6 = *v3;
      if (v18 != 102)
      {
LABEL_46:
        if (v6 == 48)
        {
          goto LABEL_47;
        }

LABEL_67:
        v20 = __cxa_allocate_exception(0x18uLL);
        *v20 = 4;
        v20[1] = "Invalid Boolean string";
        *(v20 + 16) = 0;
      }

      goto LABEL_47;
    }

    if (v2 == 1)
    {
      goto LABEL_45;
    }

LABEL_50:
    if (v2 != 5)
    {
      goto LABEL_67;
    }

    if (v21 != 1936482662 || BYTE4(v21) != 101)
    {
      goto LABEL_67;
    }

    return 0;
  }

LABEL_36:
  if (v4 != 5)
  {
    goto LABEL_67;
  }

  if (*v3 != 1936482662 || v3[4] != 101)
  {
    if (v2 == 1)
    {
      v15 = v9;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_67;
    }

LABEL_45:
    if (v6 != 102)
    {
      goto LABEL_46;
    }

    return 0;
  }

LABEL_47:
  v13 = 0;
  if (v9)
  {
LABEL_48:
    operator delete(v3);
  }

  return v13;
}

void sub_1860ECF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::ConvertToInt64(XMPUtils *this, const char *a2)
{
  if (!this || (v2 = *this, !*this))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    v6 = "Empty convert-from string";
    goto LABEL_10;
  }

  v8 = 0;
  v7 = 0;
  v3 = "%lld%c";
  if (v2 == 48 && *(this + 1) == 120)
  {
    v3 = "%llx%c";
  }

  if (sscanf(this, v3, &v7, &v8) != 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v6 = "Invalid integer string";
LABEL_10:
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return v7;
}

uint64_t XMPUtils::ConvertToDate(char *__s, uint64_t a2)
{
  if (!__s || !*__s)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    v42 = "Empty convert-from string";
    goto LABEL_102;
  }

  v43 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v4 = strlen(__s);
  v5 = 0;
  if (*__s == 84)
  {
    goto LABEL_4;
  }

  if (v4 >= 2 && (__s[1] == 58 || v4 != 2 && __s[2] == 58))
  {
LABEL_5:
    *(a2 + 25) = 1;
    v6 = GatherInt(__s, &v43, "Invalid hour in date string");
    v7 = v43;
    if (__s[v43] != 58)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after hour";
      goto LABEL_102;
    }

    if (v6 >= 23)
    {
      v8 = 23;
    }

    else
    {
      v8 = v6;
    }

    *(a2 + 12) = v8;
    v43 = v7 + 1;
    result = GatherInt(__s, &v43, "Invalid minute in date string");
    v10 = v43;
    v11 = __s[v43];
    if (((v11 - 43) > 0x2F || ((1 << (v11 - 43)) & 0x800000008005) == 0) && v11 != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after minute";
      goto LABEL_102;
    }

    if (result >= 59)
    {
      v14 = 59;
    }

    else
    {
      v14 = result;
    }

    *(a2 + 16) = v14;
    v15 = __s[v10];
    if (v15 == 58)
    {
      v43 = v10 + 1;
      result = GatherInt(__s, &v43, "Invalid whole seconds in date string");
      v10 = v43;
      v16 = __s[v43] - 43;
      if ((v16 > 0x2F || ((1 << v16) & 0x80000000000DLL) == 0) && __s[v43])
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 4;
        v42 = "Invalid date string, after whole seconds";
        goto LABEL_102;
      }

      v17 = result >= 59 ? 59 : result;
      *(a2 + 20) = v17;
      v15 = __s[v10];
      if (v15 == 46)
      {
        v18 = v10 + 1;
        v43 = v10 + 1;
        result = GatherInt(__s, &v43, "Invalid fractional seconds in date string");
        v19 = v43;
        v20 = __s[v43] - 43;
        if ((v20 > 0x2F || ((1 << v20) & 0x800000000005) == 0) && __s[v43])
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v42 = "Invalid date string, after fractional second";
          goto LABEL_102;
        }

        v21 = v43 - v18;
        if (v43 - v18 < 0xA)
        {
          if (v21 != 9)
          {
            v29.i64[1] = 0x100000001;
            v29.i64[0] = result | 0x100000000;
            v30 = vdupq_n_s64(v10 - v43 + 9);
            v31 = 4;
            v32.i64[0] = 0xA0000000ALL;
            v32.i64[1] = 0xA0000000ALL;
            do
            {
              v33 = v29;
              v29 = vmulq_s32(v29, v32);
              v31 -= 4;
            }

            while (((v10 - v43 + 13) & 0xFFFFFFFFFFFFFFFCLL) + v31 != 4);
            v34 = vdupq_n_s64(-v31);
            v35 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vorrq_s8(v34, xmmword_186205EC0), v30), vcgtq_u64(vorrq_s8(v34, xmmword_186205EB0), v30)), v33, v29);
            *v35.i8 = vmul_s32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
            result = (v35.i32[0] * v35.i32[1]);
          }

          if (result >= 1000000000)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 4;
            v42 = "Fractional second is out of range";
            goto LABEL_102;
          }
        }

        else
        {
          do
          {
            result = (result / 10);
            --v21;
          }

          while (v21 > 9);
        }

        *(a2 + 36) = result;
        v15 = __s[v19];
        v10 = v19;
      }
    }

    if (!v15)
    {
      return result;
    }

    v36 = 1;
    *(a2 + 26) = 1;
    v37 = __s[v10];
    if (v37 != 43)
    {
      if (v37 != 45)
      {
        if (v37 != 90)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v42 = "Time zone must begin with 'Z', '+', or '-'";
          goto LABEL_102;
        }

        v38 = v10 + 1;
        goto LABEL_86;
      }

      v36 = -1;
    }

    *(a2 + 27) = v36;
    v43 = v10 + 1;
    v39 = GatherInt(__s, &v43, "Invalid time zone hour in date string");
    v40 = v43;
    if (__s[v43] != 58)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after time zone hour";
      goto LABEL_102;
    }

    if (v39 >= 24)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Time zone hour is out of range";
      goto LABEL_102;
    }

    *(a2 + 28) = v39;
    v43 = v40 + 1;
    result = GatherInt(__s, &v43, "Invalid time zone minute in date string");
    if (result >= 60)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Time zone minute is out of range";
      goto LABEL_102;
    }

    *(a2 + 32) = result;
    v38 = v43;
LABEL_86:
    if (!__s[v38])
    {
      return result;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v42 = "Invalid date string, extra chars at end";
LABEL_102:
    exception[1] = v42;
    *(exception + 16) = 0;
  }

  *(a2 + 24) = 1;
  if (*__s == 45)
  {
    v43 = 1;
  }

  result = GatherInt(__s, &v43, "Invalid year in date string");
  v22 = v43;
  if (__s[v43] && __s[v43] != 45)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v42 = "Invalid date string, after year";
    goto LABEL_102;
  }

  if (*__s == 45)
  {
    v23 = -result;
  }

  else
  {
    v23 = result;
  }

  *a2 = v23;
  if (__s[v22])
  {
    v43 = v22 + 1;
    result = GatherInt(__s, &v43, "Invalid month in date string");
    v24 = v43;
    if (__s[v43] && __s[v43] != 45)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after month";
      goto LABEL_102;
    }

    if (result <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = result;
    }

    if (*a2)
    {
      v26 = v25;
    }

    else
    {
      v26 = result;
    }

    if (v26 >= 12)
    {
      v26 = 12;
    }

    *(a2 + 4) = v26;
    if (__s[v24])
    {
      v43 = v24 + 1;
      result = GatherInt(__s, &v43, "Invalid day in date string");
      v5 = v43;
      if (__s[v43] && __s[v43] != 84)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 4;
        v42 = "Invalid date string, after day";
        goto LABEL_102;
      }

      v27 = result >= 31 ? 31 : result;
      *(a2 + 8) = v27;
      if (__s[v5])
      {
        v28 = *(a2 + 4);
        if (*a2 || v28 | result)
        {
          if (v28 <= 0)
          {
            *(a2 + 4) = 1;
          }

          if (result <= 0)
          {
            *(a2 + 8) = 1;
          }
        }

        if (__s[v5] != 84)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v42 = "Invalid date string, missing 'T' after date";
          goto LABEL_102;
        }

LABEL_4:
        v43 = v5 + 1;
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t GatherInt(const char *a1, unint64_t *a2, const char *a3)
{
  v3 = *a2;
  v4 = a1[*a2];
  if ((v4 - 48) > 9)
  {
    goto LABEL_9;
  }

  v6 = 0;
  result = 0;
  v8 = a1 + 1;
  do
  {
    result = (v4 & 0xF) + 10 * result;
    if (result >= 0x80000000)
    {
      v9 = a3;
      exception = __cxa_allocate_exception(0x18uLL);
      v11 = 5;
      goto LABEL_8;
    }

    v4 = v8[v3];
    --v6;
    ++v8;
  }

  while ((v4 - 48) < 0xA);
  if (!v6)
  {
LABEL_9:
    v9 = a3;
    exception = __cxa_allocate_exception(0x18uLL);
    v11 = 4;
LABEL_8:
    *exception = v11;
    exception[1] = v9;
    *(exception + 16) = 0;
  }

  *a2 = v3 - v6;
  return result;
}

void XMPUtils::PackageForJPEG(const std::string *lpsrc, uint64_t a2, std::string *a3, std::string *a4)
{
  v4 = a4;
  v82 = *MEMORY[0x1E69E9840];
  if (sUseNewCoreAPIs)
  {
    if (!v8)
    {
      __cxa_bad_cast();
    }

    XMPUtils::PackageForJPEG(v8, a2, a3, v4);
    return;
  }

  if (!a2 || !a3 || !a4)
  {
    XMPUtils::PackageForJPEG();
  }

  if ((atomic_load_explicit(&qword_1ED56A1A8, memory_order_acquire) & 1) == 0)
  {
    XMPUtils::PackageForJPEG();
  }

  memset(&__str, 0, sizeof(__str));
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  XMPMeta::XMPMeta(v72);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  memset(v64, 0, sizeof(v64));
  memset(v63, 0, sizeof(v63));
  XMPMeta::XMPMeta(v63);
  std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(v4, 0, 0xFFFFFFFFFFFFFFFFLL);
  (*(lpsrc->__r_.__value_.__r.__words[0] + 208))(lpsrc, &__str, 2112, 1, "", "", 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__str.__r_.__value_.__l.__size_ >= 0xFDE9)
    {
      DWORD2(v73) = lpsrc[9].__r_.__value_.__r.__words[2];
      std::string::operator=(v74, lpsrc + 10);
      std::string::operator=(&v74[1], lpsrc + 11);
      CloneOffspring(&lpsrc[9].__r_.__value_.__l.__size_, &v73, 0);
      if (XMPMeta::DoesPropertyExist(v72, "http://ns.adobe.com/xap/1.0/", "Thumbnails"))
      {
        XMPMeta::DeleteProperty(v72, "http://ns.adobe.com/xap/1.0/", "Thumbnails");
        XMPMeta::SerializeToBuffer(v72, &__str, 0x840u, 1u, "", "", 0);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
    {
      XMPMeta::SetProperty(v72, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", "123456789-123456789-123456789-12", 0);
      *__dst.state = 0;
      SchemaNode = FindSchemaNode(&v73, "http://ns.adobe.com/camera-raw-settings/1.0/", 0, &__dst);
      *v60 = SchemaNode;
      if (SchemaNode)
      {
        *(SchemaNode + 64) = v64;
        std::vector<IIO_Writer *>::push_back[abi:fe200100](&v65 + 8, v60);
        v14 = *__dst.state;
        if (v76 == *__dst.state)
        {
          goto LABEL_143;
        }

        v15 = v76 - (*__dst.state + 8);
        if (v76 != *__dst.state + 8)
        {
          memmove(*__dst.state, (*__dst.state + 8), v76 - (*__dst.state + 8));
        }

        *&v76 = v14 + v15;
        XMPMeta::SerializeToBuffer(v72, &__str, 0x840u, 1u, "", "", 0);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
      {
        MoveOneProperty(v72, v63, "http://ns.adobe.com/photoshop/1.0/", "photoshop:History");
        if (v16)
        {
          XMPMeta::SerializeToBuffer(v72, &__str, 0x840u, 1u, "", "", 0);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
        {
          v61 = 0;
          v62 = 0;
          *v60 = &v61;
          if (v76 != *(&v75 + 1))
          {
            v17 = (v76 - *(&v75 + 1)) >> 3;
            while (1)
            {
              if (--v17 >= ((v76 - *(&v75 + 1)) >> 3))
              {
                goto LABEL_143;
              }

              v18 = *(*(&v75 + 1) + 8 * v17);
              v19 = *(v18 + 80) - *(v18 + 72);
              if (v19)
              {
                break;
              }

LABEL_77:
              if (!v17)
              {
                goto LABEL_78;
              }
            }

            v20 = v19 >> 3;
            v21 = v18 + 16;
            while (1)
            {
              --v20;
              v22 = *(v18 + 72);
              if (v20 >= (*(v18 + 80) - v22) >> 3)
              {
                break;
              }

              v23 = *(v22 + 8 * v20);
              if ((*(v18 + 39) & 0x80000000) == 0 || *(v18 + 24) != 29)
              {
                goto LABEL_58;
              }

              v24 = **v21 == 0x6E2F2F3A70747468 && *(*v21 + 8) == 0x2E65626F64612E73;
              v25 = v24 && *(*v21 + 16) == 0x2F706D782F6D6F63;
              if (!v25 || *(*v21 + 21) != 0x2F65746F6E2F706DLL)
              {
                goto LABEL_58;
              }

              v29 = (v23 + 16);
              v30 = *(v23 + 39);
              if (v30 < 0)
              {
                if (*(v23 + 24) != 22)
                {
                  goto LABEL_58;
                }

                v29 = *v29;
              }

              else if (v30 != 22)
              {
                goto LABEL_58;
              }

              v31 = *v29;
              v32 = v29[1];
              v33 = *(v29 + 14);
              v34 = v31 == 0x3A65746F4E706D78 && v32 == 0x6E65747845736148;
              if (!v34 || v33 != 0x504D586465646E65)
              {
LABEL_58:
                v27 = EstimateSizeForJPEG(v23);
                *__dst.state = v27;
                *&__dst.state[2] = v18 + 16;
                *__dst.count = v23 + 16;
                  ;
                }

                std::__tree<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>>>::__emplace_hint_multi<std::pair<unsigned long const,std::pair<std::string *,std::string *>> &>();
              }

              if (!v20)
              {
                goto LABEL_77;
              }
            }

LABEL_143:
            __break(1u);
          }

LABEL_78:
          v36 = "MoveLargestProperty";
LABEL_79:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            size = __str.__r_.__value_.__l.__size_;
            if (__str.__r_.__value_.__l.__size_ >= 0xFDE9 && v62 != 0)
            {
              while (1)
              {
                v39 = *v60;
                v40 = *(*v60 + 8);
                v41 = *v60;
                if (v40)
                {
                  do
                  {
                    v42 = v40;
                    v40 = *v40;
                  }

                  while (v40);
                }

                else
                {
                  do
                  {
                    v42 = v41[2];
                    v24 = *v42 == v41;
                    v41 = v42;
                  }

                  while (!v24);
                }

                while (v42 != &v61)
                {
                  v39 = v42;
                  v43 = v42[1];
                  v44 = v42;
                  if (v43)
                  {
                    do
                    {
                      v42 = v43;
                      v43 = *v43;
                    }

                    while (v43);
                  }

                  else
                  {
                    do
                    {
                      v42 = v44[2];
                      v24 = *v42 == v44;
                      v44 = v42;
                    }

                    while (!v24);
                  }
                }

                v45 = v39[5];
                if (v45[23] < 0)
                {
                  v45 = *v45;
                }

                v46 = v39[6];
                if (v46[23] < 0)
                {
                  v46 = *v46;
                }

                v47 = v39[4];
                MoveOneProperty(v72, v63, v45, v46);
                if (!v48)
                {
                  break;
                }

                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(v60, v39);
                operator delete(v39);
                if (!v47)
                {
                  v56 = 2979;
                  v36 = "PackageForJPEG";
                  v57 = "propSize > 0";
LABEL_139:
                  __assert_rtn(v36, "XMPUtils.cpp", v56, v57);
                }

                if (size >= v47)
                {
                  size -= v47;
                }

                else
                {
                  size = 0;
                }

                if (size < 0xFDE9 || !v62)
                {
                  XMPMeta::SerializeToBuffer(v72, &__str, 0x840u, 1u, "", "", 0);
                  goto LABEL_79;
                }
              }

              v56 = 1887;
              v57 = "moved";
              goto LABEL_139;
            }
          }

          std::__tree<unsigned long long>::destroy(v60, v61);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 110;
            exception[1] = "Can't reduce XMP enough for JPEG file";
            *(exception + 16) = 0;
          }
        }
      }
    }
  }

  if (*(&v65 + 1) == v66)
  {
    std::string::operator=(a2, &__str);
  }

  else
  {
    XMPMeta::SerializeToBuffer(v63, &__str, 0x850u, 0, "", "", 0);
    std::string::operator=(a3, &__str);
    *v60 = 0;
    memset(&__dst, 0, sizeof(__dst));
    v61 = 0;
    MD5Init(&__dst);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = __str.__r_.__value_.__r.__words[1];
    }

    MD5Update(&__dst, p_str, v10);
    MD5Final(v60, &__dst);
    std::string::reserve(v4, 0x20uLL);
    for (j = 0; j != 16; ++j)
    {
      v12 = v60[j];
      std::string::push_back(v4, a0123456789abcd[v12 >> 4]);
      std::string::push_back(v4, a0123456789abcd[v12 & 0xF]);
    }

    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }

    XMPMeta::SetProperty(v72, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", v4, 0);
    XMPMeta::SerializeToBuffer(v72, &__str, 0x840u, 1u, "", "", 0);
    std::string::operator=(a2, &__str);
  }

  v49 = *(a2 + 23);
  if ((v49 & 0x8000000000000000) != 0)
  {
    v49 = *(a2 + 8);
    if (_MergedGlobals_5)
    {
      v50 = 19;
    }

    else
    {
      v50 = 0;
    }

    if (v49 > v50 && v49 <= 0xFDE8)
    {
      v51 = -19;
      if (!_MergedGlobals_5)
      {
        v51 = 0;
      }

      v52 = *a2 + v49;
      goto LABEL_127;
    }

LABEL_140:
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3036, "(stdStr->size() > kTrailerLen) && (stdStr->size() <= kStdXMPLimit)");
  }

  if (_MergedGlobals_5)
  {
    v50 = 19;
  }

  else
  {
    v50 = 0;
  }

  if (v50 >= v49)
  {
    goto LABEL_140;
  }

  v51 = -19;
  if (!_MergedGlobals_5)
  {
    v51 = 0;
  }

  v52 = a2 + v49;
LABEL_127:
  if (strcmp((v52 + v51), "<?xpacket end=w?>"))
  {
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3038, "(strcmp((packetEnd),(kPacketTrailer)) == 0)");
  }

  std::string::erase(a2, v49 - v50, 0xFFFFFFFFFFFFFFFFLL);
  if (65000 - v49 >= 0x7FF)
  {
    v54 = 2047;
  }

  else
  {
    v54 = 65000 - v49;
  }

  std::string::append(a2, v54, 32);
  std::string::append(a2, "<?xpacket end=w?>");
  XMPMeta::~XMPMeta(v63);
  XMPMeta::~XMPMeta(v72);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1860EE1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  XMPMeta::~XMPMeta(&a30);
  XMPMeta::~XMPMeta(&STACK[0x220]);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XMPUtils::PackageForJPEG(void *a1, uint64_t a2, std::string *a3, std::string *a4)
{
  v92 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || (v5 = a4) == 0)
  {
    XMPUtils::PackageForJPEG();
  }

  if ((atomic_load_explicit(&qword_1ED56A1B0, memory_order_acquire) & 1) == 0)
  {
    XMPUtils::PackageForJPEG();
  }

  memset(&__str, 0, sizeof(__str));
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  memset(v87, 0, sizeof(v87));
  XMPMeta2::XMPMeta2(v87);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  memset(v82, 0, sizeof(v82));
  XMPMeta2::XMPMeta2(v82);
  std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(v5, 0, 0xFFFFFFFFFFFFFFFFLL);
  (*(*a1 + 208))(a1, &__str, 2112, 1, "", "", 0);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  if (__str.__r_.__value_.__l.__size_ >= 0xFDE9)
  {
    (*(*(a1[50] + *(*a1[50] - 544)) + 264))(v79);
    (*(**v79 + 256))(&v78);
    v12 = *v78.state;
    *v78.state = 0;
    *&v78.state[2] = 0;
    v13 = *(&v88 + 1);
    v88 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      if (*&v78.state[2])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*&v78.state[2]);
      }
    }

    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v80);
    }

    if (XMPMeta2::DoesPropertyExist(v87, "http://ns.adobe.com/xap/1.0/", "Thumbnails"))
    {
      XMPMeta2::DeleteProperty(v87, "http://ns.adobe.com/xap/1.0/", "Thumbnails");
      XMPMeta2::SerializeToBuffer(v87, &__str);
    }
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __str.__r_.__value_.__l.__size_ < 0xFDE9)
  {
    goto LABEL_7;
  }

  XMPMeta2::SetProperty(v87, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", "123456789-123456789-123456789-12", 0);
  if (v88)
  {
    v14 = (v88 + *(*v88 - 792));
  }

  else
  {
    v14 = 0;
  }

  v21 = *(&v88 + 1);
  if (*(&v88 + 1))
  {
    atomic_fetch_add_explicit((*(&v88 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v67 = v21;
  *v79 = 0;
  v80 = 0;
  v81 = 0;
  v77 = 0uLL;
  (*(*&v14[*(*v14 - 688)] + 552))(&v77, &v14[*(*v14 - 688)]);
  for (i = v77; v77; i = v77)
  {
    while (1)
    {
      v75 = 0;
      v76 = 0;
      (*(*i + 48))(&v78);
      (*(**v78.state + 264))(&v75);
      if (*&v78.state[2])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*&v78.state[2]);
      }

      (*(*v75 + 88))(&v78);
      v23 = (*(**v78.state + 192))(*v78.state);
      v24 = strcmp(v23, "http://ns.adobe.com/camera-raw-settings/1.0/");
      if (*&v78.state[2])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*&v78.state[2]);
      }

      if (!v24)
      {
        (*(*(v83 + *(*v83 - 688)) + 520))(v83 + *(*v83 - 688), &v75);
        (*(*v75 + 72))(&v70);
        v25 = (*(*v70 + 192))(v70);
        std::string::basic_string[abi:fe200100]<0>(__p, v25);
        v26 = v80;
        if (v80 >= v81)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v80 - *v79) >> 3);
          v29 = v28 + 1;
          if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
          }

          if (0x5555555555555556 * ((v81 - *v79) >> 3) > v29)
          {
            v29 = 0x5555555555555556 * ((v81 - *v79) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v81 - *v79) >> 3) >= 0x555555555555555)
          {
            v30 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v30 = v29;
          }

          *&v78.buffer[8] = v79;
          if (v30)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(v79, v30);
          }

          v31 = 8 * ((v80 - *v79) >> 3);
          v32 = *__p;
          *(v31 + 16) = v73;
          *v31 = v32;
          __p[1] = 0;
          v73 = 0;
          __p[0] = 0;
          v33 = (24 * v28 + 24);
          v34 = 24 * v28 - (v80 - *v79);
          memcpy((v31 - (v80 - *v79)), *v79, v80 - *v79);
          v35 = *v79;
          v36 = v81;
          *v79 = v34;
          v80 = v33;
          v81 = 0;
          *v78.count = v35;
          *v78.buffer = v36;
          *v78.state = v35;
          *&v78.state[2] = v35;
          std::__split_buffer<std::string>::~__split_buffer(&v78);
          v80 = v33;
          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v27 = *__p;
          v80->__shared_weak_owners_ = v73;
          v26->std::__shared_count = v27;
          __p[1] = 0;
          v73 = 0;
          __p[0] = 0;
          v80 = v26 + 1;
        }

        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v71);
        }
      }

      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v76);
      }

      (*(*v77 + 56))(&v78);
      v37 = *v78.state;
      *v78.state = 0;
      *&v78.state[2] = 0;
      v38 = *(&v77 + 1);
      v77 = v37;
      if (v38)
      {
        break;
      }

      i = v37;
      if (!v37)
      {
        goto LABEL_88;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v38);
    if (*&v78.state[2])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*&v78.state[2]);
    }
  }

LABEL_88:
  if (*(&v77 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v77 + 1));
  }

  if (v80 == *v79)
  {
    goto LABEL_98;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0xAAAAAAAAAAAAAAABLL * ((v80 - *v79) >> 3);
  do
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v80 - *v79) >> 3) <= v40)
    {
      __break(1u);
      return;
    }

    (*(*(v88 + *(*v88 - 792)) + 672))(&v68);
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v69);
    }

    ++v40;
    v39 += 24;
  }

  while (v41 != v40);
  if (v80 != *v79)
  {
    XMPMeta2::SerializeToBuffer(v87, &__str);
  }

LABEL_98:
  *v78.state = v79;
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&v78);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v67);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
  {
    if (MoveOneProperty(v87, v82, "http://ns.adobe.com/photoshop/1.0/", "History"))
    {
      XMPMeta2::SerializeToBuffer(v87, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
    {
      v80 = 0;
      v81 = 0;
      *v79 = &v80;
      v42 = v88;
      if (v88)
      {
        v42 = (v88 + *(*v88 - 792));
      }

      v43 = *(&v88 + 1);
      if (*(&v88 + 1))
      {
        atomic_fetch_add_explicit((*(&v88 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      __p[0] = 0;
      __p[1] = 0;
      (*(*(v42 + *(*v42 - 688)) + 552))(__p);
      for (j = __p[0]; __p[0]; j = __p[0])
      {
        while (1)
        {
          (*(*j + 48))(&v77);
          (*(*v77 + 88))(&v78);
          v45 = (*(**v78.state + 192))(*v78.state);
          if (!strcmp(v45, "http://ns.adobe.com/xmp/note/"))
          {
            (*(*v77 + 72))(&v75);
            v47 = (*(*v75 + 192))(v75);
            v46 = strcmp(v47, "HasExtendedXMP") == 0;
            if (v76)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v76);
            }
          }

          else
          {
            v46 = 0;
          }

          if (*&v78.state[2])
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*&v78.state[2]);
          }

          if (!v46)
          {
            v48 = EstimateSizeForJPEG(&v77);
            (*(*v77 + 88))(&v78);
            v49 = (*(**v78.state + 192))(*v78.state);
            (*(*v77 + 72))(&v75);
            v50 = (*(*v75 + 192))(v75);
            if (v76)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v76);
            }

            if (*&v78.state[2])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*&v78.state[2]);
            }

            *v78.state = v48;
            *&v78.state[2] = v49;
            *v78.count = v50;
              ;
            }

            std::__tree<std::__value_type<unsigned long,std::pair<char const*,char const*>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<char const*,char const*>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<char const*,char const*>>>>::__emplace_hint_multi<std::pair<unsigned long const,std::pair<char const*,char const*>> &>();
          }

          if (*(&v77 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v77 + 1));
          }

          (*(*__p[0] + 56))(&v78);
          v52 = *v78.state;
          *v78.state = 0;
          *&v78.state[2] = 0;
          v53 = __p[1];
          *__p = v52;
          if (v53)
          {
            break;
          }

          j = v52;
          if (!v52)
          {
            goto LABEL_133;
          }
        }

        std::__shared_weak_count::__release_shared[abi:fe200100](v53);
        if (*&v78.state[2])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*&v78.state[2]);
        }
      }

LABEL_133:
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v43);
      }

      v54 = "MoveLargestProperty";
LABEL_138:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        size = __str.__r_.__value_.__l.__size_;
        v56 = __str.__r_.__value_.__l.__size_ < 0xFDE9 || v81 == 0;
        if (!v56)
        {
          while (1)
          {
            v57 = *v79;
            v58 = *(*v79 + 8);
            v59 = *v79;
            if (v58)
            {
              do
              {
                shared_weak_owners = v58;
                v58 = v58->__vftable;
              }

              while (v58);
            }

            else
            {
              do
              {
                shared_weak_owners = v59->__shared_weak_owners_;
                v56 = *shared_weak_owners == v59;
                v59 = shared_weak_owners;
              }

              while (!v56);
            }

            while (shared_weak_owners != &v80)
            {
              v57 = shared_weak_owners;
              v61 = shared_weak_owners[1];
              v62 = shared_weak_owners;
              if (v61)
              {
                do
                {
                  shared_weak_owners = v61;
                  v61 = v61->__vftable;
                }

                while (v61);
              }

              else
              {
                do
                {
                  shared_weak_owners = v62[2];
                  v56 = *shared_weak_owners == v62;
                  v62 = shared_weak_owners;
                }

                while (!v56);
              }
            }

            v63 = v57[4];
            if (!MoveOneProperty(v87, v82, v57[5], v57[6]))
            {
              break;
            }

            std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(v79, v57);
            operator delete(v57);
            if (!v63)
            {
              v65 = 3196;
              v54 = "PackageForJPEG";
              v66 = "propSize > 0";
LABEL_168:
              __assert_rtn(v54, "XMPUtils.cpp", v65, v66);
            }

            if (size >= v63)
            {
              size -= v63;
            }

            else
            {
              size = 0;
            }

            if (size < 0xFDE9 || !v81)
            {
              XMPMeta2::SerializeToBuffer(v87, &__str);
              goto LABEL_138;
            }
          }

          v65 = 1851;
          v66 = "moved";
          goto LABEL_168;
        }
      }

      std::__tree<unsigned long long>::destroy(v79, v80);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 110;
        exception[1] = "Can't reduce XMP enough for JPEG file";
        *(exception + 16) = 0;
      }
    }
  }

LABEL_7:
  if ((*(*(v83 + *(*v83 - 688)) + 560))(v83 + *(*v83 - 688)))
  {
    XMPMeta2::SerializeToBuffer(v82, &__str);
    std::string::operator=(a3, &__str);
    *v79 = 0;
    memset(&v78, 0, sizeof(v78));
    v80 = 0;
    MD5Init(&v78);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __str.__r_.__value_.__r.__words[1];
    }

    MD5Update(&v78, p_str, v9);
    MD5Final(v79, &v78);
    std::string::reserve(v5, 0x20uLL);
    for (m = 0; m != 16; ++m)
    {
      v11 = v79[m];
      std::string::push_back(v5, a0123456789abcd[v11 >> 4]);
      std::string::push_back(v5, a0123456789abcd[v11 & 0xF]);
    }

    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v5->__r_.__value_.__r.__words[0];
    }

    XMPMeta2::SetProperty(v87, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", v5, 0);
    XMPMeta2::SerializeToBuffer(v87, &__str);
    std::string::operator=(a2, &__str);
  }

  else
  {
    std::string::operator=(a2, &__str);
  }

  v15 = *(a2 + 23);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (byte_1ED56A1A0)
    {
      v16 = 19;
    }

    else
    {
      v16 = 0;
    }

    if (v16 < v15)
    {
      v17 = -19;
      if (!byte_1ED56A1A0)
      {
        v17 = 0;
      }

      v18 = a2 + v15;
      goto LABEL_50;
    }

LABEL_169:
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3254, "(stdStr->size() > kTrailerLen) && (stdStr->size() <= kStdXMPLimit)");
  }

  v15 = *(a2 + 8);
  if (byte_1ED56A1A0)
  {
    v16 = 19;
  }

  else
  {
    v16 = 0;
  }

  if (v15 <= v16 || v15 > 0xFDE8)
  {
    goto LABEL_169;
  }

  v17 = -19;
  if (!byte_1ED56A1A0)
  {
    v17 = 0;
  }

  v18 = *a2 + v15;
LABEL_50:
  if (strcmp((v18 + v17), "<?xpacket end=w?>"))
  {
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3256, "(strcmp((packetEnd),(kPacketTrailer)) == 0)");
  }

  std::string::erase(a2, v15 - v16, 0xFFFFFFFFFFFFFFFFLL);
  if (65000 - v15 >= 0x7FF)
  {
    v20 = 2047;
  }

  else
  {
    v20 = 65000 - v15;
  }

  std::string::append(a2, v20, 32);
  std::string::append(a2, "<?xpacket end=w?>");
  XMPMeta2::~XMPMeta2(v82);
  XMPMeta2::~XMPMeta2(v87);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1860EF288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v42);
  }

  std::__tree<unsigned long long>::destroy(&a39, a40);
  XMPMeta2::~XMPMeta2(&a42);
  XMPMeta2::~XMPMeta2(&STACK[0x2C0]);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MoveOneProperty(XMPMeta *a1, XMPMeta *a2, char *__s, char *a4)
{
  __dst = 0;
  SchemaNode = FindSchemaNode(a1 + 224, __s, 0, 0);
  if (SchemaNode)
  {
    v8 = SchemaNode;
    ChildNode = FindChildNode(SchemaNode, a4, 0, &__dst);
    v16 = ChildNode;
    if (ChildNode)
    {
      v10 = ChildNode;
      v11 = FindSchemaNode(a2 + 224, __s, 1, 0);
      *(v10 + 64) = v11;
      *(v11 + 8) &= ~0x8000u;
      std::vector<IIO_Writer *>::push_back[abi:fe200100](v11 + 72, &v16);
      v12 = __dst;
      v13 = v8[10];
      if (v13 == __dst)
      {
        __break(1u);
      }

      else
      {
        v14 = v13 - (__dst + 8);
        if (v13 != __dst + 8)
        {
          memmove(__dst, __dst + 8, v13 - (__dst + 8));
        }

        v8[10] = &v12[v14];
        DeleteEmptySchema(v8);
      }
    }
  }
}

BOOL MoveOneProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 400);
  if (v7)
  {
    v8 = v7 + *(*v7 - 544);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 408);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    v24 = 0;
    v25 = 0;
    (*(*v8 + 240))(&v22, v8);
    (*(*v22 + 648))(&v24);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v23);
    }

    v10 = v24 != 0;
    if (v24)
    {
      v22 = 0;
      v23 = 0;
      (*(*v24 + 264))(&v22);
      v11 = *(a2 + 400);
      if (v11)
      {
        v12 = v11 + *(*v11 - 792);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 408);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v12 + 648))(&v20, v12, a3, -1, a4, -1);
      v14 = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      }

      if (v14)
      {
        (*(*v12 + 672))(&v18, v12, a3, -1, a4, -1);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v19);
        }
      }

      (*(*&v12[*(*v12 - 688)] + 520))(&v12[*(*v12 - 688)], &v22);
      (*(*v8 + 240))(&v20, v8);
      (*(*v20 + 672))(&v16);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v17);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v23);
      }
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v25);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v10;
}

void sub_1860EF858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::MergeFromJPEG(XMPUtils *this, XMPMeta *a2, const XMPMeta *a3)
{
  XMPUtils::ApplyTemplate(this, a2, 3);
  v4 = *(*this + 80);

  return v4(this, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP");
}

uint64_t XMPUtils::ConvertToUTCTime(uint64_t a1)
{
  if (!a1)
  {
    XMPUtils::ConvertToUTCTime();
  }

  result = VerifyDateTimeFlags(a1);
  if (*(a1 + 26))
  {
    v3 = *(a1 + 28);
    if (v3 >= 0x18)
    {
      XMPUtils::ConvertToUTCTime();
    }

    v4 = *(a1 + 32);
    if (v4 >= 0x3C)
    {
      XMPUtils::ConvertToUTCTime();
    }

    v5 = *(a1 + 27);
    if ((v5 - 2) <= 0xFC)
    {
      XMPUtils::ConvertToUTCTime();
    }

    v6 = v4 | v3;
    if (*(a1 + 27))
    {
      if (v6)
      {
        if (v5 == 255)
        {
          v7 = *(a1 + 12) + v3;
          v8 = *(a1 + 16) + v4;
          goto LABEL_14;
        }

        if (v5 == 1)
        {
          v7 = *(a1 + 12) - v3;
          v8 = *(a1 + 16) - v4;
LABEL_14:
          *(a1 + 12) = v7;
          *(a1 + 16) = v8;
        }

LABEL_15:
        result = AdjustTimeOverflow(a1);
        *(a1 + 35) = 0;
        *(a1 + 27) = 0;
        return result;
      }
    }

    else if (!v6)
    {
      goto LABEL_15;
    }

    XMPUtils::ConvertToUTCTime();
  }

  return result;
}

uint64_t AdjustTimeOverflow(uint64_t result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!*result)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    if (!*(result + 8))
    {
      goto LABEL_31;
    }

    goto LABEL_5;
  }

  v4 = *result;
  v3 = *(result + 4);
  if (v2 <= 0)
  {
LABEL_5:
    if (v2 <= -11)
    {
      v6 = -11;
    }

    else
    {
      v6 = v2;
    }

    if (v2 >= -11)
    {
      v7 = v2;
    }

    else
    {
      v7 = v2 + 1;
    }

    v8 = (v6 - v7) / 0xCu;
    if (v2 < -11)
    {
      ++v8;
    }

    v4 = *result + ~v8;
    v3 = v2 + 12 * v8 + 12;
    *result = v4;
    *(result + 4) = v3;
  }

  if (v3 >= 13)
  {
    v9 = v3 - 24;
    if (v3 < 0x18)
    {
      v9 = 0;
    }

    v10 = (v9 + 11) / 0xCu;
    v4 += v10 + 1;
    v3 = v3 - 12 * v10 - 12;
    *result = v4;
    *(result + 4) = v3;
  }

  v5 = *(result + 8);
  if (v5 <= 0)
  {
    do
    {
      if (v3 > 1)
      {
        --v3;
      }

      else
      {
        *v1 = --v4;
        v3 += 11;
      }

      result = DaysInMonth(v4, v3);
      v5 += result;
    }

    while (v5 < 1);
    v1[1] = v3;
    v1[2] = v5;
  }

  else
  {
    result = DaysInMonth(v4, v3);
  }

  if (v5 > result)
  {
    do
    {
      if (v3 < 12)
      {
        ++v3;
      }

      else
      {
        *v1 = ++v4;
        v3 -= 11;
      }

      v5 -= result;
      result = DaysInMonth(v4, v3);
    }

    while (v5 > result);
    v1[1] = v3;
    v1[2] = v5;
  }

LABEL_31:
  v11 = v1[3];
  if ((v11 & 0x80000000) != 0)
  {
    if (v11 <= 0xFFFFFFE8)
    {
      v12 = -24;
    }

    else
    {
      v12 = v1[3];
    }

    if (v11 >= 0xFFFFFFE8)
    {
      v13 = v1[3];
    }

    else
    {
      v13 = v11 + 1;
    }

    v14 = (v12 - v13) / 0x18;
    if (v11 < 0xFFFFFFE8)
    {
      ++v14;
    }

    v5 += ~v14;
    v11 += 24 * v14 + 24;
    v1[2] = v5;
    v1[3] = v11;
  }

  if (v11 >= 24)
  {
    v15 = v11 - 47;
    if (v11 < 0x2F)
    {
      v15 = 0;
    }

    v16 = (v15 + 23) / 0x18;
    v5 += v16 + 1;
    v11 = v11 - 24 * v16 - 24;
    v1[2] = v5;
    v1[3] = v11;
  }

  v17 = v1[4];
  if ((v17 & 0x80000000) != 0)
  {
    if (v17 <= 0xFFFFFFC4)
    {
      v18 = -60;
    }

    else
    {
      v18 = v1[4];
    }

    if (v17 >= 0xFFFFFFC4)
    {
      v19 = v1[4];
    }

    else
    {
      v19 = v17 + 1;
    }

    v20 = (v18 - v19) / 0x3C;
    if (v17 < 0xFFFFFFC4)
    {
      ++v20;
    }

    v11 += ~v20;
    v17 += 60 * v20 + 60;
    v1[3] = v11;
    v1[4] = v17;
  }

  if (v17 >= 60)
  {
    v21 = v17 - 119;
    if (v17 < 0x77)
    {
      v21 = 0;
    }

    v22 = (v21 + 59) / 0x3C;
    v11 += v22 + 1;
    v17 = v17 - 60 * v22 - 60;
    v1[3] = v11;
    v1[4] = v17;
  }

  v23 = v1[5];
  if ((v23 & 0x80000000) != 0)
  {
    if (v23 <= 0xFFFFFFC4)
    {
      v24 = -60;
    }

    else
    {
      v24 = v1[5];
    }

    if (v23 >= 0xFFFFFFC4)
    {
      v25 = v1[5];
    }

    else
    {
      v25 = v23 + 1;
    }

    v26 = (v24 - v25) / 0x3C;
    if (v23 < 0xFFFFFFC4)
    {
      ++v26;
    }

    v17 += ~v26;
    v23 += 60 * v26 + 60;
    v1[4] = v17;
    v1[5] = v23;
  }

  if (v23 >= 60)
  {
    v27 = v23 - 119;
    if (v23 < 0x77)
    {
      v27 = 0;
    }

    v28 = (v27 + 59) / 0x3C;
    v17 += v28 + 1;
    v23 = v23 - 60 * v28 - 60;
    v1[4] = v17;
    v1[5] = v23;
  }

  v29 = v1[9];
  if ((v29 & 0x80000000) != 0)
  {
    if (v29 <= 0xC4653600)
    {
      v30 = -1000000000;
    }

    else
    {
      v30 = v1[9];
    }

    if (v29 >= 0xC4653600)
    {
      v31 = v1[9];
    }

    else
    {
      v31 = v29 + 1;
    }

    v32 = (v30 - v31) / 0x3B9ACA00;
    if (v29 < 0xC4653600)
    {
      ++v32;
    }

    v23 += ~v32;
    v29 += 1000000000 * v32 + 1000000000;
    v1[5] = v23;
    v1[9] = v29;
  }

  if (v29 > 999999999)
  {
    v33 = v29 - 1999999999;
    if (v29 < 0x773593FF)
    {
      v33 = 0;
    }

    v34 = (v33 + 999999999) / 0x3B9ACA00;
    v23 += v34 + 1;
    v1[5] = v23;
    v1[9] = v29 - 1000000000 * v34 - 1000000000;
  }

  if ((v23 & 0x80000000) != 0)
  {
    if (v23 <= 0xFFFFFFC4)
    {
      v35 = -60;
    }

    else
    {
      v35 = v23;
    }

    if (v23 >= 0xFFFFFFC4)
    {
      v36 = v23;
    }

    else
    {
      v36 = v23 + 1;
    }

    v37 = (v35 - v36) / 0x3C;
    if (v23 < 0xFFFFFFC4)
    {
      ++v37;
    }

    v17 += ~v37;
    v23 += 60 * v37 + 60;
    v1[4] = v17;
    v1[5] = v23;
  }

  if (v23 >= 60)
  {
    v38 = v23 - 119;
    if (v23 < 0x77)
    {
      v38 = 0;
    }

    v39 = (v38 + 59) / 0x3C;
    v17 += v39 + 1;
    v1[4] = v17;
    v1[5] = v23 - 60 * v39 - 60;
  }

  if ((v17 & 0x80000000) != 0)
  {
    if (v17 <= 0xFFFFFFC4)
    {
      v40 = -60;
    }

    else
    {
      v40 = v17;
    }

    if (v17 >= 0xFFFFFFC4)
    {
      v41 = v17;
    }

    else
    {
      v41 = v17 + 1;
    }

    v42 = (v40 - v41) / 0x3C;
    if (v17 < 0xFFFFFFC4)
    {
      ++v42;
    }

    v11 += ~v42;
    v17 += 60 * v42 + 60;
    v1[3] = v11;
    v1[4] = v17;
  }

  if (v17 >= 60)
  {
    v43 = v17 - 119;
    if (v17 < 0x77)
    {
      v43 = 0;
    }

    v44 = (v43 + 59) / 0x3C;
    v11 += v44 + 1;
    v1[3] = v11;
    v1[4] = v17 - 60 * v44 - 60;
  }

  if ((v11 & 0x80000000) != 0)
  {
    if (v11 <= 0xFFFFFFE8)
    {
      v45 = -24;
    }

    else
    {
      v45 = v11;
    }

    if (v11 >= 0xFFFFFFE8)
    {
      v46 = v11;
    }

    else
    {
      v46 = v11 + 1;
    }

    v47 = (v45 - v46) / 0x18;
    if (v11 < 0xFFFFFFE8)
    {
      ++v47;
    }

    v5 += ~v47;
    v11 += 24 * v47 + 24;
    v1[2] = v5;
    v1[3] = v11;
  }

  if (v11 >= 24)
  {
    v48 = v11 - 47;
    if (v11 < 0x2F)
    {
      v48 = 0;
    }

    v49 = (v48 + 23) / 0x18;
    v5 += v49 + 1;
    v1[2] = v5;
    v1[3] = v11 - 24 * v49 - 24;
  }

  if (!(v4 | v3))
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_133;
  }

  if (v3 <= 0)
  {
LABEL_133:
    if (v3 <= -11)
    {
      v50 = -11;
    }

    else
    {
      v50 = v3;
    }

    if (v3 >= -11)
    {
      v51 = v3;
    }

    else
    {
      v51 = v3 + 1;
    }

    v52 = (v50 - v51) / 0xCu;
    if (v3 < -11)
    {
      ++v52;
    }

    v4 += ~v52;
    v3 += 12 * v52 + 12;
    *v1 = v4;
    v1[1] = v3;
  }

  if (v3 >= 13)
  {
    v53 = v3 - 24;
    if (v3 < 0x18)
    {
      v53 = 0;
    }

    v54 = (v53 + 11) / 0xCu;
    v4 += v54 + 1;
    v3 = v3 - 12 * v54 - 12;
    *v1 = v4;
    v1[1] = v3;
  }

  if (v5 <= 0)
  {
    do
    {
      if (v3 > 1)
      {
        --v3;
      }

      else
      {
        *v1 = --v4;
        v3 += 11;
      }

      result = DaysInMonth(v4, v3);
      v5 += result;
    }

    while (v5 < 1);
    v1[1] = v3;
    v1[2] = v5;
  }

  else
  {
    result = DaysInMonth(v4, v3);
  }

  if (v5 > result)
  {
    do
    {
      if (v3 < 12)
      {
        ++v3;
      }

      else
      {
        *v1 = ++v4;
        v3 -= 11;
      }

      v5 -= result;
      result = DaysInMonth(v4, v3);
    }

    while (v5 > result);
    v1[1] = v3;
    v1[2] = v5;
  }

  return result;
}

std::string *XMPUtils::Trim(std::string *this)
{
  v1 = this;
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if ((v2 & 0x80u) == 0)
  {
    v5 = this;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  if ((v2 & 0x80u) == 0)
  {
    v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = this->__r_.__value_.__l.__size_;
  }

  v7 = *(XMPUtils::WhiteSpaceStrPtr + 23);
  if (v7 >= 0)
  {
    v8 = XMPUtils::WhiteSpaceStrPtr;
  }

  else
  {
    v8 = *XMPUtils::WhiteSpaceStrPtr;
  }

  if (v7 >= 0)
  {
    v9 = *(XMPUtils::WhiteSpaceStrPtr + 23);
  }

  else
  {
    v9 = *(XMPUtils::WhiteSpaceStrPtr + 8);
  }

  v10 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
  while (v6)
  {
    v11 = v6;
    if (v9)
    {
      this = memchr(v8, v10[v6], v9);
      v6 = v11 - 1;
      if (this)
      {
        continue;
      }
    }

    std::string::erase(v1, v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
    if (v12 >= 0)
    {
      v13 = v1;
    }

    else
    {
      v13 = v1->__r_.__value_.__r.__words[0];
    }

    if (v12 >= 0)
    {
      v14 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v1->__r_.__value_.__l.__size_;
    }

    v15 = *(XMPUtils::WhiteSpaceStrPtr + 23);
    if (v15 >= 0)
    {
      v16 = XMPUtils::WhiteSpaceStrPtr;
    }

    else
    {
      v16 = *XMPUtils::WhiteSpaceStrPtr;
    }

    if (v15 >= 0)
    {
      v17 = *(XMPUtils::WhiteSpaceStrPtr + 23);
    }

    else
    {
      v17 = *(XMPUtils::WhiteSpaceStrPtr + 8);
    }

    if (!v14)
    {
      return v1;
    }

    v18 = v13;
    if (v17)
    {
      while (memchr(v16, *v18, v17))
      {
        ++v18;
        if (!--v14)
        {
          return v1;
        }
      }
    }

    v20 = &v18[-v13];
    if (&v18[-v13] == -1)
    {
      return v1;
    }

    goto LABEL_39;
  }

  if ((v2 & 0x80) == 0)
  {
    v19 = v1 + v2;
    v3 = v1;
LABEL_38:
    v20 = &v19[-v3];
LABEL_39:
    std::string::erase(v1, 0, v20);
    return v1;
  }

  if ((size & 0x8000000000000000) == 0)
  {
    v19 = (v3 + size);
    goto LABEL_38;
  }

  __break(1u);
  return this;
}

uint64_t XMPUtils::MapXMPErrorToIError(uint64_t result, int *a2, _DWORD *a3)
{
  if (result > 103)
  {
    if (result > 200)
    {
      if (result <= 202)
      {
        if (result != 201)
        {
          v3 = 101;
          result = 2;
          goto LABEL_26;
        }

        v3 = 101;
LABEL_25:
        result = 1;
        goto LABEL_26;
      }

      if (result != 203)
      {
        if (result == 204)
        {
          v3 = 100;
          result = 107;
          goto LABEL_26;
        }

        if (result == 205)
        {
          v3 = 100;
          result = 105;
          goto LABEL_26;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (result > 106)
      {
        if ((result - 108) >= 0xB && result == 107)
        {
          v3 = 102;
          goto LABEL_25;
        }

LABEL_7:
        v3 = 1;
        result = 10000;
        goto LABEL_26;
      }

      if (result == 104)
      {
        v3 = 1;
        result = 5;
        goto LABEL_26;
      }

      if (result == 105)
      {
        v3 = 100;
        result = 104;
        goto LABEL_26;
      }
    }

    v3 = 101;
    result = 3;
    goto LABEL_26;
  }

  if (result > 100)
  {
    v3 = 100;
  }

  else
  {
    v3 = 1;
    result = 6;
  }

LABEL_26:
  *a3 = result;
  *a2 = v3;
  return result;
}

uint64_t EstimateSizeForJPEG(const XMP_Node *a1)
{
  v1 = *(a1 + 39);
  if (v1 < 0)
  {
    v1 = *(a1 + 3);
  }

  v2 = *(*(a1 + 8) + 8);
  v3 = *(a1 + 2);
  if ((v3 & 0x1F00) != 0)
  {
    v4 = 2 * v1;
    v6 = *(a1 + 9);
    v5 = *(a1 + 10);
    if ((v3 & 0x200) != 0)
    {
      v14 = 19;
      if ((*(*(a1 + 8) + 8) & 0x200) == 0)
      {
        v14 = v4 + 24;
      }

      v15 = v5 - v6;
      v7 = 2 * v15 + (v15 >> 3) + v14;
      if (v15)
      {
        v16 = v15 >> 3;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        do
        {
          v18 = *v6++;
          v7 += EstimateSizeForJPEG(v18);
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      if ((v2 & 0x200) != 0)
      {
        v7 = 25;
      }

      else
      {
        v7 = v4 + 30;
      }

      v8 = v5 - v6;
      if (v8)
      {
        v9 = v8 >> 3;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        do
        {
          v11 = *v6++;
          v7 += EstimateSizeForJPEG(v11);
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v12 = v1 + 3;
    if ((v2 & 0x200) != 0)
    {
      v12 = 0;
    }

    v13 = *(a1 + 63);
    if (v13 < 0)
    {
      v13 = *(a1 + 6);
    }

    return v13 + v12;
  }

  return v7;
}

void *std::__tree<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>>>::__find_leaf(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a1 + 1;
  if (a1 + 1 != a2 && a2[4] < *a4)
  {
    while (1)
    {
      v5 = *v4;
      a2 = v4;
      if (!*v4)
      {
        break;
      }

      while (1)
      {
        v4 = v5;
        if (v5[4] >= *a4)
        {
          break;
        }

        v5 = v5[1];
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    *a3 = v4;
    return a2;
  }

  v6 = *a2;
  if (*a1 == a2)
  {
    v8 = a2;
  }

  else
  {
    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v9 = a2;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }

    if (*a4 < v8[4])
    {
      while (1)
      {
        v11 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v11;
          if (*a4 < v11[4])
          {
            break;
          }

          v11 = v11[1];
          if (!v11)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v6)
  {
    *a3 = v8;
    return v8 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

uint64_t EstimateSizeForJPEG(void *a1)
{
  v32 = 0uLL;
  DefaultNameSpacePrefixMap = AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v32);
  (*(**a1 + 72))(&v30, DefaultNameSpacePrefixMap);
  v3 = (*(*v30 + 208))(v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v4 = v32;
  (*(**a1 + 88))(&v29);
  v5 = (*(*v29 + 192))(v29);
  (*(**a1 + 88))(&v28);
  v6 = (*(*v28 + 208))(v28);
  (*(*v4 + 88))(&v30, v4, v5, v6);
  v7 = (*(*v30 + 208))(v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
  }

  if (*(&v29 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v29 + 1));
  }

  v8 = a1[1];
  v30 = *a1;
  v31 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IXMPOptions = XMPUtils::GetIXMPOptions(&v30);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  (*(**a1 + 56))(&v30);
  v10 = (*(*v30 + 40))(v30);
  v11 = v3 + 1;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v12 = v11 + v7;
  if (IXMPOptions > 0xFF)
  {
    if ((IXMPOptions & 0x200) != 0)
    {
      v30 = 0;
      v31 = 0;
      (*(**a1 + 248))(&v30);
      if (v10 == 2)
      {
        v22 = 19;
      }

      else
      {
        v22 = 2 * v12 + 24;
      }

      v23 = (*(*(v30 + *(*v30 - 688)) + 560))(v30 + *(*v30 - 688));
      v29 = 0uLL;
      (*(*(v30 + *(*v30 - 688)) + 552))(&v29, v30 + *(*v30 - 688));
      v15 = 17 * v23 + v22;
      for (i = v29; i; v15 += v25)
      {
        (*(*i + 48))(&v28);
        v25 = EstimateSizeForJPEG(&v28);
        if (*(&v28 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
        }

        (*(*v29 + 56))(&v28);
        v26 = v28;
        v28 = 0uLL;
        v27 = *(&v29 + 1);
        v29 = v26;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v27);
          if (*(&v28 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
          }

          i = v29;
        }

        else
        {
          i = v26;
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      (*(**a1 + 240))(&v30);
      if (v10 == 2)
      {
        v15 = 25;
      }

      else
      {
        v15 = 2 * v12 + 30;
      }

      (*(*(v30 + *(*v30 - 688)) + 560))(v30 + *(*v30 - 688));
      v29 = 0uLL;
      (*(*(v30 + *(*v30 - 688)) + 552))(&v29, v30 + *(*v30 - 688));
      for (j = v29; j; v15 += v19)
      {
        (*(*j + 48))(&v28);
        v19 = EstimateSizeForJPEG(&v28);
        if (*(&v28 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
        }

        (*(*v29 + 56))(&v28);
        v20 = v28;
        v28 = 0uLL;
        v21 = *(&v29 + 1);
        v29 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v21);
          if (*(&v28 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
          }

          j = v29;
        }

        else
        {
          j = v20;
        }
      }
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v29 + 1));
    }

    v16 = v31;
    if (v31)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v10 == 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 + 3;
    }

    (*(**a1 + 232))(&v29);
    (*(*v29 + 504))(&v30);
    v14 = (*(*v30 + 208))(v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v31);
    }

    v15 = v14 + v13;
    v16 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
LABEL_22:
      std::__shared_weak_count::__release_shared[abi:fe200100](v16);
    }
  }

  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v32 + 1));
  }

  return v15;
}

void sub_1860F0C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
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

uint64_t DaysInMonth(int a1, int a2)
{
  LODWORD(v2) = a1;
  result = DaysInMonth(int,int)::daysInMonth[a2];
  if (a2 == 2)
  {
    v2 = v2 >= 0 ? v2 : 1 - v2;
    if ((v2 & 3) == 0)
    {
      v4 = 0x8F5C28F5C28F5C29 * v2;
      v5 = __ROR8__(v4, 2);
      v6 = __ROR8__(v4, 4);
      if (v5 <= 0x28F5C28F5C28F5CLL && v6 >= 0xA3D70A3D70A3D8)
      {
        return result;
      }

      else
      {
        return (result + 1);
      }
    }
  }

  return result;
}

void std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1 const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void **std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<XPathStepInfo>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<XPathStepInfo>::clear[abi:fe200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void XMPUtils::ComposeArrayItemPath()
{
  __assert_rtn("ComposeArrayItemPath", "XMPUtils.cpp", 1942, "_fullPath != 0");
}

{
  __assert_rtn("ComposeArrayItemPath", "XMPUtils.cpp", 1941, "(arrayName != 0) && (*arrayName != 0)");
}

{
  __assert_rtn("ComposeArrayItemPath", "XMPUtils.cpp", 1940, "schemaNS != 0");
}

void XMPUtils::ComposeStructFieldPath()
{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1984, "_fullPath != 0");
}

{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1983, "(fieldName != 0) && (*fieldName != 0)");
}

{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1982, "(structName != 0) && (*structName != 0)");
}

{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1981, "(schemaNS != 0) && (fieldNS != 0)");
}

void XMPUtils::ComposeQualifierPath()
{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2021, "_fullPath != 0");
}

{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2020, "(qualName != 0) && (*qualName != 0)");
}

{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2019, "(propName != 0) && (*propName != 0)");
}

{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2018, "(schemaNS != 0) && (qualNS != 0)");
}

void XMPUtils::PackageForJPEG()
{
  if (__cxa_guard_acquire(&qword_1ED56A1A8))
  {
    _MergedGlobals_5 = 1;

    __cxa_guard_release(&qword_1ED56A1A8);
  }
}

{
  __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 2852, "(stdStr != 0) && (extStr != 0) && (digestStr != 0)");
}

{
  if (__cxa_guard_acquire(&qword_1ED56A1B0))
  {
    byte_1ED56A1A0 = 1;

    __cxa_guard_release(&qword_1ED56A1B0);
  }
}

{
  __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3060, "(stdStr != 0) && (extStr != 0) && (digestStr != 0)");
}

void XMPUtils::ConvertToUTCTime()
{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3440, "(time->tzSign == 0) ? ((time->tzHour == 0) && (time->tzMinute == 0)) : ((time->tzHour != 0) || (time->tzMinute != 0))");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3438, "(-1 <= time->tzSign) && (time->tzSign <= +1)");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3437, "(0 <= time->tzMinute) && (time->tzMinute <= 59)");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3436, "(0 <= time->tzHour) && (time->tzHour <= 23)");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3430, "time != 0");
}

uint64_t GenericErrorCallback::NotifyClient(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  result = (*(*a1 + 16))(a1);
  if ((result & 1) == 0 || *(a3 + 16) || (*(a3 + 16) = 1, (v9 = *(a1 + 8)) != 0) && ((v10 = *(a1 + 16), v10 > a2) || (v10 >= a2 ? (v11 = *(a1 + 12) + 1) : (*(a1 + 16) = a2, v11 = 1), *(a1 + 12) = v11, v11 > v9)))
  {
    if (a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = (*(*a1 + 24))(a1, a4, a2, *a3, *(a3 + 1));
    if (a2 || (result & 1) == 0)
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x18uLL);
      v13 = *(a3 + 16);
      *exception = *a3;
      exception[16] = v13;
    }
  }

  return result;
}

void XMPFiles::XMPFiles(XMPFiles *this)
{
  *this = &unk_1EF4DEA20;
  *(this + 2) = 0;
  XMP_ReadWriteLock::XMP_ReadWriteLock((this + 16));
  *(this + 56) = 538976288;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  *(this + 38) = 1;
  *(this + 312) = 0;
  *(this + 37) = &unk_1EF4DEA40;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 48) = 0;
  if (sProgressDefault(void)::onceToken != -1)
  {
    XMPFiles::Terminate();
  }

  if (*(gProgressDefault + 8))
  {
    operator new();
  }

  if (_MergedGlobals_6 != -1)
  {
    XMPFiles::Initialize();
  }

  if (*(qword_1ED56A1C0 + 32))
  {
    *(this + 40) = *(qword_1ED56A1C0 + 24);
    *(this + 41) = *(qword_1ED56A1C0 + 32);
    *(this + 42) = *(qword_1ED56A1C0 + 40);
    *(this + 76) = *(qword_1ED56A1C0 + 8);
  }
}

void sub_1860F1800(_Unwind_Exception *a1, int a2)
{
  v7 = v5;
  MEMORY[0x186602850](v7, 0x1080C40740E08D0);
  v9 = (v2 + 368);
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(a1);
    v11 = (v2 + 368);
    if (*(v2 + 391) < 0)
    {
      v11 = *v9;
    }

    GenericErrorCallback::NotifyClient(v4, 1, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x1860F17D0);
  }

  if (*(v2 + 391) < 0)
  {
    operator delete(*v9);
  }

  *(v2 + 296) = v3;
  if (*(v2 + 367) < 0)
  {
    operator delete(*(v2 + 344));
  }

  XMP_ReadWriteLock::~XMP_ReadWriteLock((v2 + 16));
  _Unwind_Resume(a1);
}

void XMPFiles::ErrorCallbackInfo::~ErrorCallbackInfo(void **this)
{
  *this = &unk_1EF4DEA40;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

{
  *this = &unk_1EF4DEA40;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  JUMPOUT(0x186602850);
}

void XMPFiles::~XMPFiles(XMPFiles *this)
{
  *this = &unk_1EF4DEA20;
  if (*(this + 2) >= 1)
  {
    __assert_rtn("~XMPFiles", "XMPFiles.cpp", 411, "this->clientRefs <= 0");
  }

  v2 = *(this + 31);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 31) = 0;
  }

  if ((*(this + 391) & 0x8000000000000000) != 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_10;
    }
  }

  else if (!*(this + 391))
  {
    goto LABEL_10;
  }

  v3 = *(this + 29);
  if (v3)
  {
    XMPFiles_IO::Close(*(this + 29));
    (*(*v3 + 72))(v3);
    *(this + 29) = 0;
  }

LABEL_10:
  v4 = *(this + 36);
  if (v4)
  {
    MEMORY[0x186602850](v4, 0x1080C40740E08D0);
  }

  v5 = *(this + 32);
  if (v5)
  {
    free(v5);
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  *(this + 37) = &unk_1EF4DEA40;
  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  XMP_ReadWriteLock::~XMP_ReadWriteLock((this + 16));
}

{
  XMPFiles::~XMPFiles(this);

  JUMPOUT(0x186602850);
}

uint64_t CloseLocalFile(uint64_t result)
{
  v1 = result;
  v2 = *(result + 391);
  if (v2 < 0)
  {
    v2 = *(result + 376);
  }

  if (v2)
  {
    v3 = *(result + 232);
    if (v3)
    {
      XMPFiles_IO::Close(*(result + 232));
      result = (*(*v3 + 72))(v3);
      *(v1 + 232) = 0;
    }
  }

  return result;
}

uint64_t FileIsExcluded(Host_IO *a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  result = Host_IO::GetFileMode(a1, a2);
  *a3 = result;
  if ((result - 2) < 2)
  {
    v28 = 0;
    v11 = 117;
    v12 = "XMPFiles: path specified is not a file";
    goto LABEL_9;
  }

  if (result)
  {
    if (result == 1)
    {
      v9 = strlen(a1);
      if (v9)
      {
        while (*(a1 + v9) != 46)
        {
          if (!--v9)
          {
            v10 = a1;
            goto LABEL_13;
          }
        }

        v10 = (a1 + v9);
      }

      else
      {
        v10 = a1;
LABEL_13:
        if (*v10 != 46)
        {
          goto LABEL_36;
        }
      }

      MEMORY[0x186602520](a2, v10 + 1);
      v13 = a2[23];
      if (v13 < 0)
      {
        v13 = *(a2 + 1);
        if (!v13)
        {
LABEL_36:
          v20 = kKnownRejectedFiles[0];
          if (!kKnownRejectedFiles[0])
          {
            return 0;
          }

          v21 = *(a2 + 23);
          for (i = off_1EA8DB5F8; ; ++i)
          {
            v23 = strlen(v20);
            v24 = v23;
            if ((v21 & 0x80) != 0)
            {
              if (v23 != *(a2 + 1))
              {
                goto LABEL_45;
              }

              if (v23 == -1)
              {
                std::string::__throw_out_of_range[abi:fe200100]();
              }

              v25 = *a2;
            }

            else
            {
              v25 = a2;
              if (v24 != v21)
              {
                goto LABEL_45;
              }
            }

            if (!memcmp(v25, v20, v24))
            {
              v28 = 0;
              v11 = 118;
              v12 = "XMPFiles: rejected file extension specified";
LABEL_9:
              v27[1] = v12;
              v27[0] = v11;
              if (a4)
              {
                GenericErrorCallback::NotifyClient(a4, 0, v27, a1);
              }

              return 1;
            }

LABEL_45:
            v26 = *i;
            v20 = v26;
            if (!v26)
            {
              return 0;
            }
          }
        }
      }

      else if (!a2[23])
      {
        goto LABEL_36;
      }

      v14 = 0;
      while (1)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (v16 < v14)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        if (v17[v14] - 65 <= 0x19)
        {
          if ((v15 & 0x80000000) != 0)
          {
            v18 = *(a2 + 1);
          }

          else
          {
            v18 = a2[23];
          }

          if (v18 < v14)
          {
            break;
          }

          v19 = a2;
          if ((v15 & 0x80000000) != 0)
          {
            v19 = *a2;
          }

          v19[v14] += 32;
        }

        if (v13 == ++v14)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
    }

    FileIsExcluded();
  }

  return result;
}

uint64_t DoOpenFile(uint64_t a1, uint64_t a2, Host_IO *a3, uint64_t a4, int a5)
{
  if ((a2 == 0) == (*a3 == 0))
  {
    DoOpenFile();
  }

  if ((a5 & 0x202) == 0x200)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v25 = "OptimizeFileLayout requires OpenForUpdate";
    goto LABEL_45;
  }

  if (*(a1 + 248))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v25 = "File already open";
LABEL_45:
    exception[1] = v25;
    *(exception + 16) = 0;
  }

  v10 = a5 & 0xFFFFFFF7;
  v11 = *(a1 + 391);
  if (v11 < 0)
  {
    v11 = *(a1 + 376);
  }

  if (v11)
  {
    v12 = *(a1 + 232);
    if (v12)
    {
      XMPFiles_IO::Close(*(a1 + 232));
      (*(*v12 + 72))(v12);
      *(a1 + 232) = 0;
    }
  }

  *(a1 + 232) = a2;
  MEMORY[0x186602520](a1 + 368, a3);
  IsExcluded = MEMORY[0x186602520](a1 + 344, a3);
  *(a1 + 224) = 538976288;
  *(a1 + 240) = v10;
  v30 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  if ((*(a1 + 391) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 391))
    {
      goto LABEL_11;
    }

LABEL_15:
    v30 = 1;
    if ((a5 & 0x40) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_16;
  }

  if (!*(a1 + 376))
  {
    goto LABEL_15;
  }

LABEL_11:
  IsExcluded = FileIsExcluded(a3, __p, &v30, a1 + 296);
  if (IsExcluded)
  {
LABEL_36:
    v22 = 0;
    goto LABEL_37;
  }

  if ((a5 & 0x40) != 0)
  {
LABEL_34:
    if (!v30)
    {
      v27[0] = 111;
      v27[1] = "XMPFiles: file does not exist";
      v27[2] = 0;
      GenericErrorCallback::NotifyClient(a1 + 296, 0, v27, a3);
    }

    goto LABEL_36;
  }

LABEL_16:
  Instance = Common::HandlerRegistry::getInstance(IsExcluded);
  v15 = Common::HandlerRegistry::selectSmartHandler(Instance, a1, a3, a4, a5 & 0xFFFFFFF7);
  if (!v15)
  {
    goto LABEL_34;
  }

  v16 = v15[2];
  v17 = *(v15 + 1);
  if (!*(a1 + 232) && (v17 & 0x1900) == 0)
  {
    __assert_rtn("DoOpenFile", "XMPFiles.cpp", 1091, "(thiz->ioRef != 0) || (handlerFlags & kXMPFiles_UsesSidecarXMP) || (handlerFlags & kXMPFiles_HandlerOwnsFile) || (handlerFlags & kXMPFiles_FolderBasedFormat)");
  }

  if (*(a1 + 224) == 538976288)
  {
    *(a1 + 224) = *v15;
  }

  v18 = (v16)(a1);
  v19 = v18;
  if (v17 != *(v18 + 4))
  {
    __assert_rtn("DoOpenFile", "XMPFiles.cpp", 1095, "handlerFlags == handler->handlerFlags");
  }

  *(a1 + 248) = v18;
  if ((a5 & 2) != 0 && (v17 & 0x1000) != 0 && ((*(*v18 + 40))(v18) & 1) == 0)
  {
    v26 = __cxa_allocate_exception(0x18uLL);
    *v26 = 112;
    v26[1] = "Open, file permission error";
    *(v26 + 16) = 0;
  }

  (*(*v19 + 48))(v19);
  if (v19[21] == 1)
  {
    FillPacketInfo(v19 + 56, (v19 + 32));
  }

  if (!(a5 & 2 | v17 & 0x10100))
  {
    v20 = *(a1 + 391);
    if (v20 < 0)
    {
      v20 = *(a1 + 376);
    }

    if (v20)
    {
      v21 = *(a1 + 232);
      if (v21)
      {
        XMPFiles_IO::Close(*(a1 + 232));
        (*(*v21 + 72))(v21);
        *(a1 + 232) = 0;
      }
    }
  }

  v22 = 1;
LABEL_37:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  return v22;
}

void sub_1860F20F8(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *(v1 + 248);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(v1 + 248) = 0;
  if ((v2 & 0x100) == 0)
  {
    CloseLocalFile(v1);
  }

  __cxa_rethrow();
}

void sub_1860F215C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPFiles::CloseFile(XMPFiles *this, char a2)
{
  v4 = (this + 248);
  v3 = *(this + 31);
  if (!v3)
  {
    return;
  }

  v5 = *(v3 + 23);
  v6 = *(this + 60);
  v7 = *(v3 + 16);
  v8 = v5 & a2 & ((v6 & 2) >> 1);
  if (v8 == 1 && (*(v3 + 16) & 0x300) == 0x100)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 2;
    exception[1] = "XMPFiles::CloseFile - Safe update not supported";
    *(exception + 16) = 0;
  }

  v9 = *(this + 36);
  if (v9)
  {
    v10 = *(this + 391);
    if (v10 < 0)
    {
      v10 = *(this + 47);
    }

    if (v10)
    {
      v11 = *(this + 29);
      if (v11)
      {
        *(v11 + 80) = v9;
      }
    }
  }

  if ((v7 & 0x100) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = (*(**(this + 29) + 40))(*(this + 29));
    if (!v13)
    {
      v27 = __cxa_allocate_exception(0x18uLL);
      *v27 = 9;
      v27[1] = "XMPFiles::CloseFile, cannot create temp";
      *(v27 + 16) = 0;
    }

    if ((v7 & 4) != 0)
    {
      (*(**v4 + 80))(*v4, v13);
    }

    else
    {
      v14 = *(this + 29);
      (*(*v14 + 16))(v14, 0, 0);
      v15 = *(this + 36);
      if (v15 && (*(*v4 + 17) & 0x20) != 0)
      {
        v16 = (*(*v14 + 24))(v14);
        XMP_ProgressTracker::BeginWork(v15, v16);
      }

      (*(*v14 + 24))(v14);
      XIO::Copy(v14, v13);
      *(this + 29) = v13;
      (*(**(this + 31) + 72))(*(this + 31), 0);
      *(this + 29) = v14;
      v20 = *(this + 36);
      if (v20 && (*(*v4 + 17) & 0x20) != 0)
      {
        XMP_ProgressTracker::WorkComplete(v20, v17, v18, v19);
      }
    }

    (*(**(this + 29) + 48))(*(this + 29));
    if ((*(this + 391) & 0x8000000000000000) != 0)
    {
      if (!*(this + 47))
      {
        goto LABEL_38;
      }
    }

    else if (!*(this + 391))
    {
LABEL_38:
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

LABEL_40:
      *v4 = 0;
      goto LABEL_41;
    }

    v22 = *(this + 29);
    if (v22)
    {
      XMPFiles_IO::Close(*(this + 29));
      (*(*v22 + 72))(v22);
      *(this + 29) = 0;
    }

    goto LABEL_38;
  }

  if (!((v6 >> 9) & 1 | v5) || ((*(*v3 + 72))(v3), (v3 = *v4) != 0))
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 31) = 0;
  if ((*(this + 391) & 0x8000000000000000) != 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (*(this + 391))
  {
LABEL_33:
    v21 = *(this + 29);
    if (!v21)
    {
      goto LABEL_41;
    }

    XMPFiles_IO::Close(*(this + 29));
    (*(*v21 + 72))(v21);
    v4 = (this + 232);
    goto LABEL_40;
  }

LABEL_41:
  v23 = *(this + 391);
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (!*(this + 391))
    {
      goto LABEL_47;
    }

LABEL_45:
    v24 = *(this + 29);
    if (v24)
    {
      XMPFiles_IO::Close(*(this + 29));
      (*(*v24 + 72))(v24);
      *(this + 29) = 0;
      LOBYTE(v23) = *(this + 391);
    }

    goto LABEL_47;
  }

  if (*(this + 47))
  {
    goto LABEL_45;
  }

LABEL_47:
  if ((v23 & 0x80) != 0)
  {
    **(this + 46) = 0;
    *(this + 47) = 0;
  }

  else
  {
    *(this + 368) = 0;
    *(this + 391) = 0;
  }

  if (*(this + 367) < 0)
  {
    **(this + 43) = 0;
    *(this + 44) = 0;
  }

  else
  {
    *(this + 344) = 0;
    *(this + 367) = 0;
  }

  *(this + 31) = 0;
  *(this + 56) = 538976288;
  *(this + 29) = 0;
  *(this + 60) = 0;
  v25 = *(this + 32);
  if (v25)
  {
    free(v25);
  }

  *(this + 32) = 0;
  *(this + 66) = 0;
}

void sub_1860F2694(void *a1)
{
  __cxa_begin_catch(a1);
  (*(**(v1 + 232) + 56))(*(v1 + 232));
  *(v1 + 232) = v2;
  __cxa_rethrow();
}

void sub_1860F26CC(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  if (*v2)
  {
    (*(**v2 + 8))(*v2);
    *v2 = 0;
  }

  v4 = *(v1 + 232);
  if (v4)
  {
    (*(*v4 + 56))(v4);
  }

  CloseLocalFile(v1);
  XMPFiles::ClearFilePath(v1);
  *(v1 + 248) = 0;
  *(v1 + 224) = 538976288;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  v5 = *(v1 + 256);
  if (v5)
  {
    free(v5);
  }

  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  __cxa_rethrow();
}

uint64_t XMPFiles::ClearFilePath(uint64_t this)
{
  if (*(this + 391) < 0)
  {
    **(this + 368) = 0;
    *(this + 376) = 0;
  }

  else
  {
    *(this + 368) = 0;
    *(this + 391) = 0;
  }

  if (*(this + 367) < 0)
  {
    **(this + 344) = 0;
    *(this + 352) = 0;
  }

  else
  {
    *(this + 344) = 0;
    *(this + 367) = 0;
  }

  return this;
}

uint64_t DoPutXMP(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 248);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 3;
    v18 = "XMPFiles::PutXMP - No open file";
    goto LABEL_36;
  }

  if ((*(a1 + 240) & 2) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 3;
    v18 = "XMPFiles::PutXMP - Not open for update";
    goto LABEL_36;
  }

  v7 = *(v3 + 16);
  if ((*(v3 + 22) & 1) == 0)
  {
    (*(*v3 + 56))(*(a1 + 248));
  }

  if (*(v3 + 40) == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 40);
  }

  v9 = (*(v3 + 32) - 1) >= 0xFFFFFFFFFFFFFFFELL || v8 == 0;
  v10 = !v9;
  if (v9)
  {
    if (v7)
    {
      v11 = *(v3 + 20);
      if (v11 != 1)
      {
        goto LABEL_19;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v18 = "XMPFiles::PutXMP - No standard character form";
    }

    else
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 2;
      v18 = "XMPFiles::PutXMP - Can't inject XMP";
    }

LABEL_36:
    exception[1] = v18;
    *(exception + 16) = 0;
  }

  v11 = *(v3 + 20);
  if (v11 == 1)
  {
    v11 = *(v3 + 48);
  }

LABEL_19:
  v12 = (*(*v3 + 64))(v3) | v11;
  v13 = v12 | (v7 >> 5) & 0x20;
  if (v10 && *(a1 + 224) == 538976288)
  {
    v14 = v12 | 0x20;
    if (*(v3 + 49))
    {
      v13 = v13;
    }

    else
    {
      v13 = v14;
    }
  }

  v15 = v10 & ((v7 & 8) >> 3);
  if ((v7 & 2) == 0)
  {
    v15 = 1;
  }

  if ((v7 & 0x800) != 0 || !v15)
  {
    TXMPMeta<std::string>::SerializeToBuffer(a2, v3 + 56, v13, 0);
  }

  else
  {
    TXMPMeta<std::string>::SerializeToBuffer(a2, v3 + 56, v13 | 0x200, v8);
    v16 = *(v3 + 79);
    if (v16 < 0)
    {
      v16 = *(v3 + 64);
    }

    if (v16 != v8)
    {
      __assert_rtn("DoPutXMP", "XMPFiles.cpp", 1619, "xmpPacket.size() == oldPacketLength");
    }
  }

  if (a3)
  {
    TXMPMeta<std::string>::Clone(a2, 0);
  }

  return 1;
}

void sub_1860F2B8C(void *a1)
{
  __cxa_begin_catch(a1);
  if ((v1 & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1860F2AECLL);
  }

  __cxa_rethrow();
}

uint64_t XMPFiles::PutXMP(XMPFiles *this, const char *a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  TXMPMeta<std::string>::TXMPMeta(v7);
  TXMPMeta<std::string>::SetErrorCallback(v7, ErrorCallbackForXMPMeta, this + 296, 1);
  TXMPMeta<std::string>::ParseFromBuffer(v7, a2, a3, 0);
  XMPFiles::PutXMP(this, v7);
  return TXMPMeta<std::string>::~TXMPMeta(v7);
}

void sub_1860F2C40(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = (v2 + 368);
    if (*(v2 + 391) < 0)
    {
      v4 = *v4;
    }

    GenericErrorCallback::NotifyClient(v2 + 296, 2, v3, v4);
    __cxa_end_catch();
    JUMPOUT(0x1860F2C2CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ErrorCallbackForXMPMeta(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  v5[1] = a4;
  v5[2] = 0;
  v5[0] = a3;
  GenericErrorCallback::NotifyClient(a1, a2, v5, 0);
  return 1;
}

uint64_t XMPFiles::CanPutXMP(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 3;
    exception[1] = "XMPFiles::CanPutXMP - No open file";
    *(exception + 16) = 0;
  }

  if ((*(a1 + 240) & 2) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    return 1;
  }

  if (*(v2 + 21) != 1)
  {
    return 0;
  }

  if ((v4 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return DoPutXMP(a1, a2, 0);
  }
}

uint64_t XMPFiles::CanPutXMP(XMPFiles *this, const char *a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  TXMPMeta<std::string>::TXMPMeta(v8);
  TXMPMeta<std::string>::SetErrorCallback(v8, ErrorCallbackForXMPMeta, this + 296, 1);
  TXMPMeta<std::string>::ParseFromBuffer(v8, a2, a3, 0);
  CanPutXMP = XMPFiles::CanPutXMP(this, v8);
  TXMPMeta<std::string>::~TXMPMeta(v8);
  return CanPutXMP;
}

void sub_1860F2E5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = (v2 + 368);
    if (*(v2 + 391) < 0)
    {
      v4 = *v4;
    }

    GenericErrorCallback::NotifyClient(v2 + 296, 2, v3, v4);
    __cxa_end_catch();
    JUMPOUT(0x1860F2E44);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPFiles::ErrorCallbackInfo::CanNotify(XMPFiles::ErrorCallbackInfo *this)
{
  v1 = *(this + 4);
  if (v1 && !*(this + 3))
  {
    XMPFiles::ErrorCallbackInfo::CanNotify();
  }

  return v1 != 0;
}

BOOL XMPFiles::ErrorCallbackInfo::ClientCallbackWrapper(XMPFiles::ErrorCallbackInfo *this, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = a2;
  if (!a2)
  {
    v8 = this + 48;
    if (*(this + 71) < 0)
    {
      v8 = *v8;
    }
  }

  return (*(this + 3))(*(this + 4), *(this + 5), v8, a3, a4, a5) != 0;
}

void std::__throw_out_of_range[abi:fe200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:fe200100](exception, a1);
  __cxa_throw(exception, off_1E6EF85C8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:fe200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void *AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x634D657461646174)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634D657461646174, a3, exception);
      }

      return (this + *(*this - 856));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 864)), a2, a3, 0);
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
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634D657461646174, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::IMetadata_I::GetInterfacePointer(AdobeXMPCore_Int::IMetadata_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 848)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 720)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IMetadata_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IMetadata_I::getInterfacePointer(AdobeXMPCore_Int::IMetadata_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 856)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 728)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IMetadata_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
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

void sub_1860F36D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860F36B4);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IMetadata_I,void *,void *,unsigned long long,unsigned int>(void *a1, char **a2)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  v6 = *exception_ptr;
  v5 = exception_ptr[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __cxa_begin_catch(a1);
  v7 = (*(*v6 + 200))(v6);
  *a2 = v7;
  v8 = (*(*&v7[*(*v7 - 56)] + 16))(&v7[*(*v7 - 56)]);
  (*(*v8 + 40))(v8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  __cxa_end_catch();
}

uint64_t AdobeXMPCommon::IUTF8String_v1::MakeShared@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void AdobeXMPCommon::IUTF8StringProxy::~IUTF8StringProxy(AdobeXMPCommon::IUTF8StringProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

void *AdobeXMPCommon::IUTF8StringProxy::append@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::append, 0, a2, a3);
  (*(*&v6[*(*v6 - 56)] + 8))(&v6[*(*v6 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v10, this + 1);
  v8 = v10[0];
  if (v10[0])
  {
    v8 = v10[0] + *(*v10[0] - 408);
  }

  v9 = v10[1];
  *a4 = v8;
  a4[1] = v9;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::append@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a1 + 24);
  if (*a2)
  {
    v10 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v10 = 0;
  }

  v11 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v9, AdobeXMPCommon::IUTF8String_v1::append, 0, v10, a3, a4);
  (*(*&v11[*(*v11 - 56)] + 8))(&v11[*(*v11 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v15, (a1 + 8));
  v13 = v15[0];
  if (v15[0])
  {
    v13 = v15[0] + *(*v15[0] - 408);
  }

  v14 = v15[1];
  *a5 = v13;
  a5[1] = v14;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::assign@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::assign, 0, a2, a3);
  (*(*&v6[*(*v6 - 56)] + 8))(&v6[*(*v6 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v10, this + 1);
  v8 = v10[0];
  if (v10[0])
  {
    v8 = v10[0] + *(*v10[0] - 408);
  }

  v9 = v10[1];
  *a4 = v8;
  a4[1] = v9;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::assign@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a1 + 24);
  if (*a2)
  {
    v10 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v10 = 0;
  }

  v11 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v9, AdobeXMPCommon::IUTF8String_v1::assign, 0, v10, a3, a4);
  (*(*&v11[*(*v11 - 56)] + 8))(&v11[*(*v11 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v15, (a1 + 8));
  v13 = v15[0];
  if (v15[0])
  {
    v13 = v15[0] + *(*v15[0] - 408);
  }

  v14 = v15[1];
  *a5 = v13;
  a5[1] = v14;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::insert@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::insert, 0, a3, a2, a4);
  (*(*&v7[*(*v7 - 56)] + 8))(&v7[*(*v7 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v11, this + 1);
  v9 = v11[0];
  if (v11[0])
  {
    v9 = v11[0] + *(*v11[0] - 408);
  }

  v10 = v11[1];
  *a5 = v9;
  a5[1] = v10;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::insert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a1 + 24);
  if (*a3)
  {
    v12 = (*(**a3 + 216))(*a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v11, AdobeXMPCommon::IUTF8String_v1::insert, 0, a2, v12, a4, a5);
  (*(*&v13[*(*v13 - 56)] + 8))(&v13[*(*v13 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v17, (a1 + 8));
  v15 = v17[0];
  if (v17[0])
  {
    v15 = v17[0] + *(*v17[0] - 408);
  }

  v16 = v17[1];
  *a6 = v15;
  a6[1] = v16;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::erase@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::erase, 0, a2, a3);
  (*(*&v6[*(*v6 - 56)] + 8))(&v6[*(*v6 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v10, this + 1);
  v8 = v10[0];
  if (v10[0])
  {
    v8 = v10[0] + *(*v10[0] - 408);
  }

  v9 = v10[1];
  *a4 = v8;
  a4[1] = v9;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::replace@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X3>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::replace, 0, a3, a4, a2, a5);
  (*(*&v8[*(*v8 - 56)] + 8))(&v8[*(*v8 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v12, this + 1);
  v10 = v12[0];
  if (v12[0])
  {
    v10 = v12[0] + *(*v12[0] - 408);
  }

  v11 = v12[1];
  *a6 = v10;
  a6[1] = v11;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::replace@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = *(a1 + 24);
  if (*a4)
  {
    v14 = (*(**a4 + 216))(*a4);
  }

  else
  {
    v14 = 0;
  }

  v15 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v13, AdobeXMPCommon::IUTF8String_v1::replace, 0, a2, a3, v14, a5, a6);
  (*(*&v15[*(*v15 - 56)] + 8))(&v15[*(*v15 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v19, (a1 + 8));
  v17 = v19[0];
  if (v19[0])
  {
    v17 = v19[0] + *(*v19[0] - 408);
  }

  v18 = v19[1];
  *a7 = v17;
  a7[1] = v18;
  return result;
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::find(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  if (*a2)
  {
    v7 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v7 = 0;
  }

  return AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v6, AdobeXMPCommon::IUTF8String_v1::find, 0, v7, a3, a4);
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::rfind(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  if (*a2)
  {
    v7 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v7 = 0;
  }

  return AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v6, AdobeXMPCommon::IUTF8String_v1::rfind, 0, v7, a3, a4);
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::compare(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  if (*a4)
  {
    v11 = (*(**a4 + 216))(*a4);
  }

  else
  {
    v11 = 0;
  }

  return AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v10, AdobeXMPCommon::IUTF8String_v1::compare, 0, a2, a3, v11, a5, a6);
}

void AdobeXMPCommon::IUTF8StringProxy::assign()
{
  __assert_rtn("assign", "IUTF8String.cpp", 82, "false");
}

{
  __assert_rtn("assign", "IUTF8String.cpp", 88, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::append()
{
  __assert_rtn("append", "IUTF8String.cpp", 58, "false");
}

{
  __assert_rtn("append", "IUTF8String.cpp", 64, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::insert()
{
  __assert_rtn("insert", "IUTF8String.cpp", 106, "false");
}

{
  __assert_rtn("insert", "IUTF8String.cpp", 112, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::replace()
{
  __assert_rtn("replace", "IUTF8String.cpp", 152, "false");
}

{
  __assert_rtn("replace", "IUTF8String.cpp", 158, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::find()
{
  __assert_rtn("find", "IUTF8String.cpp", 184, "false");
}

{
  __assert_rtn("find", "IUTF8String.cpp", 189, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::rfind()
{
  __assert_rtn("rfind", "IUTF8String.cpp", 204, "false");
}

{
  __assert_rtn("rfind", "IUTF8String.cpp", 209, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::compare()
{
  __assert_rtn("compare", "IUTF8String.cpp", 224, "false");
}

{
  __assert_rtn("compare", "IUTF8String.cpp", 229, "false");
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::GetInterfacePointer(AdobeXMPCommon::IUTF8StringProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void virtual thunk toAdobeXMPCommon::IUTF8StringProxy::~IUTF8StringProxy(AdobeXMPCommon::IUTF8StringProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t virtual thunk toAdobeXMPCommon::IUTF8StringProxy::GetInterfacePointer(AdobeXMPCommon::IUTF8StringProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + *(*this - 32) + 24);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void AdobeXMPCommon::IUTF8StringProxy::~IUTF8StringProxy(AdobeXMPCommon::IUTF8StringProxy *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 408)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  v4 = *(this + 3) + *(**(this + 3) - 56);
  (*(*v4 + 8))(v4);
  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v9 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v6 + a2);
  }

  result = v5(v6, a4, a5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::append(uint64_t a1)
{
  return (*(*a1 + 240))();
}

{
  return (*(*a1 + 248))();
}

{
  return (*(*a1 + 40))();
}

{
  return (*(*a1 + 48))();
}

double AdobeXMPCommon::IError_v1::MakeShared@<D0>(AdobeXMPCommon::IError_v1 *this@<X0>, _OWORD *a2@<X8>)
{
  AdobeXMPCommon::IError_v1::MakeShared(this, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t std::shared_ptr<AdobeXMPCommon::IError_v1 const>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void *std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:fe200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::assign(uint64_t a1)
{
  return (*(*a1 + 224))();
}

{
  return (*(*a1 + 232))();
}

{
  return (*(*a1 + 56))();
}

{
  return (*(*a1 + 64))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::insert(uint64_t a1)
{
  return (*(*a1 + 256))();
}

{
  return (*(*a1 + 264))();
}

{
  return (*(*a1 + 72))();
}

{
  return (*(*a1 + 80))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v11 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  result = v7(v8, a4, a5, a6, a7, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v9 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v6 + a2);
  }

  result = v5(v6, a4, a5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::erase(uint64_t a1)
{
  return (*(*a1 + 272))();
}

{
  return (*(*a1 + 88))();
}

uint64_t AdobeXMPCommon::CallSafeFunctionReturningVoid<AdobeXMPCommon::IUTF8String_v1,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v8 = 0;
  v5 = (a1 + (a3 >> 1));
  if (a3)
  {
    v4 = *(*v5 + a2);
  }

  result = v4(v5, a4, &v8);
  if (v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v8, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::resize(uint64_t a1)
{
  return (*(*a1 + 280))();
}

{
  return (*(*a1 + 96))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v11 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  result = v7(v8, a4, a5, a6, a7, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::replace(uint64_t a1)
{
  return (*(*a1 + 288))();
}

{
  return (*(*a1 + 296))();
}

{
  return (*(*a1 + 104))();
}

{
  return (*(*a1 + 112))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v12 = 0;
  v9 = (a1 + (a3 >> 1));
  if (a3)
  {
    v8 = *(*v9 + a2);
  }

  result = v8(v9, a4, a5, a6, a7, a8, &v12);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v12, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char *,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::copy(uint64_t a1)
{
  return (*(*a1 + 304))();
}

{
  return (*(*a1 + 120))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::find(uint64_t a1)
{
  return (*(*a1 + 312))();
}

{
  return (*(*a1 + 320))();
}

{
  return (*(*a1 + 128))();
}

{
  return (*(*a1 + 136))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::rfind(uint64_t a1)
{
  return (*(*a1 + 328))();
}

{
  return (*(*a1 + 336))();
}

{
  return (*(*a1 + 144))();
}

{
  return (*(*a1 + 152))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v11 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  result = v7(v8, a4, a5, a6, a7, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::compare(uint64_t a1)
{
  return (*(*a1 + 344))();
}

{
  return (*(*a1 + 352))();
}

{
  return (*(*a1 + 160))();
}

{
  return (*(*a1 + 168))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v12 = 0;
  v9 = (a1 + (a3 >> 1));
  if (a3)
  {
    v8 = *(*v9 + a2);
  }

  result = v8(v9, a4, a5, a6, a7, a8, &v12);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v12, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallConstSafeFunctionReturningPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a2;
  v12 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v8 + a2);
  }

  v9 = v6(v8, a4, a5, &v12);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v12, exception);
  }

  return AdobeXMPCommon::IUTF8String_v1::MakeShared(v9, a6);
}

uint64_t AdobeXMPCommon::IUTF8String_v1::substr(uint64_t a1)
{
  return (*(*a1 + 360))();
}

{
  return (*(*a1 + 176))();
}

BOOL AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,BOOL,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v8 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  v5 = v3(v4, &v8);
  if (v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v8, exception);
  }

  return v5 != 0;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::empty(uint64_t a1)
{
  return (*(*a1 + 368))();
}

{
  return (*(*a1 + 184))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v9 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v6 + a2);
  }

  result = v5(v6, a4, a5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return result;
}

void sub_1860F6330(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__enable_weak_this[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy,0>(uint64_t a1, void *a2, uint64_t a3)
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

        std::__shared_weak_count::__release_shared[abi:fe200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<AdobeXMPCommon::IUTF8StringProxy *,std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__shared_ptr_default_delete<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy>,std::allocator<AdobeXMPCommon::IUTF8StringProxy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IUTF8StringProxy *,std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__shared_ptr_default_delete<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy>,std::allocator<AdobeXMPCommon::IUTF8StringProxy>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IUTF8StringProxy *,std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__shared_ptr_default_delete<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy>,std::allocator<AdobeXMPCommon::IUTF8StringProxy>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void TIFF_Manager::TIFF_Manager(TIFF_Manager *this)
{
  *this = &unk_1EF4DF458;
  *(this + 10) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 71) = 0;
  if ((sFirstCTor & 1) == 0)
  {
    v1 = 0;
    sFirstCTor = 1;
    do
    {
      v2 = *(&sKnownTags + v1);
      v5 = *v2;
      v3 = v2 + 1;
      v4 = v5;
      while (v4 != 0xFFFF)
      {
        v6 = *v3++;
        v7 = v4 >= v6;
        v4 = v6;
        if (v7)
        {
          TIFF_Manager::TIFF_Manager();
        }
      }

      ++v1;
    }

    while (v1 != 5);
  }
}

uint64_t TIFF_Manager::CheckTIFFHeader(TIFF_Manager *this, unsigned int *a2, unsigned int a3)
{
  if (a3 <= 7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    v17 = "The TIFF is too small";
    goto LABEL_14;
  }

  v4 = bswap32(*a2);
  v5 = PutDoubleBE;
  v6 = PutFloatBE;
  v7 = PutUns32BE;
  v8 = PutUns16BE;
  v9 = GetDoubleBE;
  v10 = GetFloatBE;
  v11 = GetUns32BE;
  v12 = GetUns16BE;
  if (v4 == 1229531648)
  {
    v14 = 0;
    v5 = PutDoubleLE;
    v6 = PutFloatLE;
    v7 = PutUns32LE;
    v8 = PutUns16LE;
    v9 = GetDoubleLE;
    v10 = GetFloatLE;
    v11 = GetUns32LE;
    v12 = GetUns16LE;
    v13 = 1;
  }

  else
  {
    if (v4 != 1296891946)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 206;
      v17 = "Unrecognized TIFF prefix";
LABEL_14:
      exception[1] = v17;
      *(exception + 16) = 0;
    }

    v13 = 0;
    v14 = 1;
  }

  *(this + 72) = v14;
  *(this + 73) = v13;
  *(this + 1) = v12;
  *(this + 2) = v11;
  *(this + 3) = v10;
  *(this + 4) = v9;
  *(this + 5) = v8;
  *(this + 6) = v7;
  *(this + 7) = v6;
  *(this + 8) = v5;
  result = v11(a2 + 1);
  if (result && (a3 < 0xE || result < 8 || a3 - 6 < result))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    v17 = "Invalid primary IFD offset";
    goto LABEL_14;
  }

  return result;
}

uint64_t GetUns16LE(unsigned __int16 *a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t GetUns32LE(unsigned int *a1)
{
  return *a1;
}

{
  return *a1;
}

float GetFloatLE(const void *a1)
{
  return *a1;
}

{
  return *a1;
}

double GetDoubleLE(const void *a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t PutUns16LE(uint64_t result, _WORD *a2)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

uint64_t PutUns32LE(uint64_t result, _DWORD *a2)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

float *PutFloatLE(float a1, float *result)
{
  *result = a1;
  return result;
}

{
  *result = a1;
  return result;
}

double *PutDoubleLE(double a1, double *result)
{
  *result = a1;
  return result;
}

{
  *result = a1;
  return result;
}

uint64_t TIFF_Manager::SetTag_Short(void (**this)(uint64_t, __int16 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  this[5](a4, &v8);
  return (*(*this + 4))(this, a2, a3, 3, 1, &v8);
}

uint64_t TIFF_Manager::SetTag_Long(void (**this)(uint64_t, int *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  this[6](a4, &v8);
  return (*(*this + 4))(this, a2, a3, 4, 1, &v8);
}

uint64_t TIFF_Manager::SetTag_Rational(void (**this)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  this[6](a4, &v10);
  this[6](a5, (&v10 + 4));
  return (*(*this + 4))(this, a2, a3, 5, 1, &v10);
}

uint64_t TIFF_Manager::SetTag_SRational(void (**this)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  this[6](a4, &v10);
  this[6](a5, (&v10 + 4));
  return (*(*this + 4))(this, a2, a3, 10, 1, &v10);
}

uint64_t TIFF_Manager::SetTag_ASCII(TIFF_Manager *this, uint64_t a2, uint64_t a3, const char *__s)
{
  v8 = strlen(__s);
  v9 = *(*this + 32);

  return v9(this, a2, a3, 2, (v8 + 1), __s);
}

uint64_t TIFF_Manager::DecodeString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, std::string *this)
{
  v20 = *MEMORY[0x1E69E9840];
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  v8 = a3 - 8;
  if (a3 < 8)
  {
    return 0;
  }

  v10 = a2 + 8;
  v9 = *a2;
  if (v9 == 85)
  {
    if (v8 >= 2)
    {
      v12 = v8 >> 1;
      v13 = *v10;
      if (v13 == 65279 || v13 == 65534)
      {
        v14 = *v10 == 254;
        if (!--v12)
        {
          return 0;
        }

        v10 = a2 + 10;
      }

      else
      {
        v14 = *(a1 + 72);
      }

      if (v14)
      {
        v15 = &UTF16BE_to_UTF8;
      }

      else
      {
        v15 = &UTF16LE_to_UTF8;
      }

      v16 = *v15;
      std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
      std::string::reserve(this, 2 * v12);
      if (v12)
      {
        bzero(__s, 0x3E8uLL);
        __n = 0;
        v18 = 0;
        do
        {
          v16(v10, v12, __s, 1000, &v18, &__n);
          std::string::append(this, __s, __n);
          v10 += v18;
          v12 -= v18;
        }

        while (v12);
      }

      return 1;
    }
  }

  else if (v9 == 65)
  {
    MEMORY[0x186602530](this, a2 + 8, v8);
    return 1;
  }

  return 0;
}

uint64_t TIFF_Manager::EncodeString(uint64_t a1, const std::string::value_type *a2, int a3, std::string *this)
{
  v26 = *MEMORY[0x1E69E9840];
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (a3 == 1)
  {
    MEMORY[0x186602530](this, "ASCII", 8);
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (size != 8)
    {
      TIFF_Manager::EncodeString();
    }

    v16 = a2[23];
    if (v16 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v16 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = *(a2 + 1);
    }

    std::string::append(this, v17, v18);
  }

  else
  {
    if (a3 != 2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      if (a3 == 3)
      {
        *exception = 8;
        v21 = "Encoding to JIS is not implemented";
      }

      else
      {
        *exception = 4;
        v21 = "Invalid TIFF string encoding";
      }

      exception[1] = v21;
      *(exception + 16) = 0;
    }

    MEMORY[0x186602530](this, "UNICODE", 8);
    v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = this->__r_.__value_.__l.__size_;
    }

    if (v8 != 8)
    {
      TIFF_Manager::EncodeString();
    }

    memset(&__p, 0, sizeof(__p));
    v9 = *(a2 + 1);
    if (a2[23] >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v10 = v9;
    }

    v11 = &UTF8_to_UTF16BE;
    if (!*(a1 + 72))
    {
      v11 = &UTF8_to_UTF16LE;
    }

    v12 = *v11;
    std::string::erase(&__p, 0, 0xFFFFFFFFFFFFFFFFLL);
    std::string::reserve(&__p, 2 * v10);
    if (v10)
    {
      bzero(__s, 0x7D0uLL);
      v23 = 0;
      v24 = 0;
      do
      {
        v12(a2, v10, __s, 1000, &v24, &v23);
        std::string::append(&__p, __s, 2 * v23);
        a2 += v24;
        v10 -= v24;
      }

      while (v10);
    }

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
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, p_p, v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void sub_1860F6F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1860F6EA4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TIFF_Manager::NotifyClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 80);
  if (result)
  {

    return GenericErrorCallback::NotifyClient(result, a2, a3, 0);
  }

  else if (a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *(a3 + 16);
    *exception = *a3;
    exception[16] = v7;
  }

  return result;
}

void TIFF_Manager::EncodeString()
{
  __assert_rtn("EncodeString", "TIFF_Support.cpp", 441, "encodedStr->size() == 8");
}

{
  __assert_rtn("EncodeString", "TIFF_Support.cpp", 432, "encodedStr->size() == 8");
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unsigned __int8 a3)
{
  v4 = a3;
  return (*(*this + 264))(this, a2, 1, &v4);
}

{
  v4 = a3;
  return (*(*this + 264))(this, a2, 8, &v4);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unsigned __int8 a3)
{
  v3 = this + *(*this - 24);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 1, &v5);
}

{
  v3 = this + *(*this - 56);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 8, &v5);
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t a3)
{
  v4 = a3;
  return (*(*this + 264))(this, a2, 2, &v4);
}

{
  v4 = a3;
  return (*(*this + 264))(this, a2, 4, &v4);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t a3)
{
  v3 = this + *(*this - 32);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 2, &v5);
}

{
  v3 = this + *(*this - 40);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 4, &v5);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, double a3)
{
  v3 = this + *(*this - 48);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 16, &v5);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const char *a3)
{
  v3 = this + *(*this - 64);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 32, &v5);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const void *a3)
{
  v3 = this + *(*this - 72);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 64, &v5);
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::setParameter(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, void *a5)
{
  if (a3 == 1)
  {
    *a4 = *a4 != 0;
  }

  return AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore_Int::IConfigurable_I,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue const&>(a5, a1, AdobeXMPCore_Int::IConfigurable_I::SetParameter, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IConfigurable_I.cpp", 63, a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore_Int::IConfigurable_I,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  *a1 = 0;
  v10 = (a2 + (a4 >> 1));
  if (a4)
  {
    v9 = *(*v10 + a3);
  }

  return v9(v10, a7, a8, a9);
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, BOOL *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 1, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, BOOL *a3)
{
  v4 = this + *(*this - 88);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 1, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unint64_t *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 2, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unint64_t *a3)
{
  v4 = this + *(*this - 96);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 2, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 4, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t *a3)
{
  v4 = this + *(*this - 104);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 4, &v6);
  *a3 = v6;
  return result;
}

double AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, double *a3)
{
  v5 = 0.0;
  (*(*this + 272))(this, a2, 16, &v5);
  result = v5;
  *a3 = v5;
  return result;
}

double virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, double *a3)
{
  v4 = this + *(*this - 112);
  v6 = 0.0;
  (*(*v4 + 272))(v4, a2, 16, &v6);
  result = v6;
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, char *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 8, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, char *a3)
{
  v4 = this + *(*this - 120);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 8, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const char **a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 32, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const char **a3)
{
  v4 = this + *(*this - 128);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 32, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const void **a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 64, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const void **a3)
{
  v4 = this + *(*this - 136);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 64, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::getParameter(uint64_t a1, uint64_t a2, unsigned int a3, BOOL *a4, void *a5)
{
  result = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore_Int::IConfigurable_I,unsigned int,BOOL,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue &>(a5, a1, 0, AdobeXMPCore_Int::IConfigurable_I::GetParameter, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IConfigurable_I.cpp", 117, a2, a3, a4);
  if (a3 == 1)
  {
    *a4 = *a4 != 0;
  }

  return result;
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore_Int::IConfigurable_I,unsigned int,BOOL,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue &>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCommon::IConfigurable,unsigned int,BOOL,unsigned long long const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return a4(v8, a8);
}

void AdobeXMPCore_Int::IConfigurable_I::getAllParameters(AdobeXMPCore_Int::IConfigurable_I *this, unint64_t *a2)
{
  v4 = (*(*(this + *(*this - 216)) + 128))(this + *(*this - 216));
  __p = 0;
  v10 = 0;
  v11 = 0;
  (*(*(this + *(*this - 216)) + 120))(&__p);
  v5 = __p;
  if (v4)
  {
    v6 = (v10 - __p) >> 3;
    v7 = __p;
    while (v6)
    {
      v8 = *v7++;
      *a2++ = v8;
      --v6;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else if (__p)
  {
LABEL_7:
    v10 = v5;
    operator delete(v5);
  }
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IConfigurable,unsigned int,AdobeXMPCommon::IConfigurable::eDataType,unsigned long long const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return a4(v8, a8);
}

void AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore_Int::IConfigurable_I,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue const&>(void *a1)
{
  v3 = OUTLINED_FUNCTION_3(a1);
  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(v2);
  OUTLINED_FUNCTION_2_18();
  *v1 = (*(v6 + 200))(v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_0();
  (*(v7 + 16))();
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 40))();
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  __cxa_end_catch();
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void sub_1860F87D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860F87BCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::assign(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, AdobeXMPCommon::IUTF8String_v1::assign, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 22, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860F8A4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  *a1 = 0;
  v14 = 0;
  v15 = 0;
  v10 = (a2 + (a4 >> 1));
  if (a4)
  {
    v9 = *(*v10 + a3);
  }

  v9(&v14, v10, a7, a8, a9);
  if (v14)
  {
    v11 = (*(*&v14[*(*v14 - 56)] + 16))(&v14[*(*v14 - 56)]);
    (*(*v11 + 40))(v11);
    v12 = (*(*&v14[*(*v14 - 64)] + 16))(&v14[*(*v14 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v12 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  return v12;
}

void sub_1860F8BE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860F8BC8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::append(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, AdobeXMPCommon::IUTF8String_v1::append, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 32, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860F8EE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  *a1 = 0;
  v14 = 0;
  v15 = 0;
  v10 = (a2 + (a4 >> 1));
  if (a4)
  {
    v9 = *(*v10 + a3);
  }

  v9(&v14, v10, a7, a8, a9);
  if (v14)
  {
    v11 = (*(*&v14[*(*v14 - 56)] + 16))(&v14[*(*v14 - 56)]);
    (*(*v11 + 40))(v11);
    v12 = (*(*&v14[*(*v14 - 64)] + 16))(&v14[*(*v14 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v12 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  return v12;
}

void sub_1860F9118(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860F90FCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::insert(AdobeXMPCore_Int::IUTF8String_I *this, uint64_t a2, const AdobeXMPCommon::IUTF8String_v1 *a3, uint64_t a4, uint64_t a5, const AdobeXMPCommon::IError_v1 **a6)
{
  v11 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a3, &v15);
  v14 = v15;
  v12 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a6, this + v11, AdobeXMPCommon::IUTF8String_v1::insert, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 42, a2, &v14, a4, a5);
  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v14 + 1));
  }

  return v12;
}

void sub_1860F9390(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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
    v13 = (*(*&v15[*(*v15 - 64)] + 16))(&v15[*(*v15 - 64)], 0x6E55544638537472, 1);
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

void sub_1860F9528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860F950CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void sub_1860F98B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860F9898);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCommon::IUTF8String_v1,unsigned long long>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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
    v13 = (*(*&v15[*(*v15 - 64)] + 16))(&v15[*(*v15 - 64)], 0x6E55544638537472, 1);
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

void sub_1860F9E10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860F9DF4);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::replace(AdobeXMPCore_Int::IUTF8String_I *this, uint64_t a2, uint64_t a3, const AdobeXMPCommon::IUTF8String_v1 *a4, uint64_t a5, uint64_t a6, const AdobeXMPCommon::IError_v1 **a7)
{
  v13 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a4, &v17);
  v16 = v17;
  v14 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a7, this + v13, AdobeXMPCommon::IUTF8String_v1::replace, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 64, a2, a3, &v16, a5, a6);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v16 + 1));
  }

  return v14;
}

void sub_1860FA09C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  *a1 = 0;
  v12 = (a2 + (a4 >> 1));
  v16 = 0;
  v17 = 0;
  if (a4)
  {
    v11 = *(*v12 + a3);
  }

  v11(&v16, v12, a7, a8, a9, a10, a11);
  if (v16)
  {
    v13 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v13 + 40))(v13);
    v14 = (*(*&v16[*(*v16 - 64)] + 16))(&v16[*(*v16 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v14 = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  return v14;
}

void sub_1860FA238(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860FA21CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char *,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char const*,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::find(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, 0, AdobeXMPCommon::IUTF8String_v1::find, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 85, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860FA86C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::rfind(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, 0, AdobeXMPCommon::IUTF8String_v1::rfind, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 99, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860FAB50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t AdobeXMPCore_Int::IUTF8String_I::compare(AdobeXMPCore_Int::IUTF8String_I *this, uint64_t a2, uint64_t a3, const AdobeXMPCommon::IUTF8String_v1 *a4, uint64_t a5, uint64_t a6, const AdobeXMPCommon::IError_v1 **a7)
{
  v13 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a4, &v17);
  v16 = v17;
  v14 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a7, this + v13, 0, AdobeXMPCommon::IUTF8String_v1::compare, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 113, a2, a3, &v16, a5, a6);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v16 + 1));
  }

  return v14;
}

void sub_1860FAE5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a4;
  *a1 = 0;
  v13 = (a2 + (a5 >> 1));
  if (a5)
  {
    v12 = *(*v13 + a4);
  }

  return v12(v13, a8, a9, a10, a11, a12);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void sub_1860FB1C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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
    JUMPOUT(0x1860FB1ACLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

void *AdobeXMPCore_Int::IUTF8String_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
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

      return (this + *(*this - 408));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6E55544638537472, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IUTF8String_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCommon::IUTF8String_v1,unsigned long long>(void *a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(v1);
  OUTLINED_FUNCTION_2_18();
  v6 = (*(v5 + 200))(v4);
  v7 = OUTLINED_FUNCTION_1_21(v6);
  v9 = OUTLINED_FUNCTION_0_37(v7, *(v8 - 56));
  (*(v10 + 16))(v9);
  OUTLINED_FUNCTION_0_0();
  (*(v11 + 40))();
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  __cxa_end_catch();
}

void XMP_Node::SetValue(XMP_Node *this, char *__s)
{
  v4 = (this + 16);
  v5 = *(this + 39);
  if (*(this + 39) < 0)
  {
    if (*(this + 3) != 20)
    {
      goto LABEL_27;
    }

    v6 = *v4;
  }

  else
  {
    v6 = this + 16;
    if (v5 != 20)
    {
      goto LABEL_27;
    }
  }

  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 4);
  v11 = v7 == 0x747365543A706D78 && v8 == 0x6F4E747265737341 && v9 == 2036754804;
  if (!v11 || strcmp(__s, "DoIt!"))
  {
    goto LABEL_27;
  }

  if ((v5 & 0x80) == 0)
  {
    v12 = v4;
    if (v5 != 20)
    {
      goto LABEL_27;
    }

LABEL_20:
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 4);
    if (v13 == 0x747365543A706D78 && v14 == 0x6F4E747265737341 && v15 == 2036754804)
    {
      XMP_Node::SetValue();
    }

    goto LABEL_27;
  }

  if (*(this + 3) == 20)
  {
    v12 = *v4;
    goto LABEL_20;
  }

LABEL_27:
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, __s);
  if (v26 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  v19 = *v18;
  if (!*v18)
  {
    goto LABEL_42;
  }

  while (v19 < 1)
  {
LABEL_40:
    v28[0] = 0;
    v27 = 0;
    CodePoint_from_UTF8(v18, 4uLL, v28, &v27);
    if (v28[0] >> 1 == 0x7FFF)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 205;
      exception[1] = "U+FFFE and U+FFFF are not allowed in XML";
      *(exception + 16) = 0;
    }

    v18 += v27;
    v19 = *v18;
    if (!*v18)
    {
      goto LABEL_42;
    }
  }

  do
  {
    if (v19 > 0x1F)
    {
      if (v19 != 127)
      {
        goto LABEL_38;
      }

LABEL_34:
      *v18 = 32;
      goto LABEL_38;
    }

    if (v19 > 0xD || ((1 << v19) & 0x2600) == 0)
    {
      goto LABEL_34;
    }

LABEL_38:
    v20 = *++v18;
    v19 = v20;
  }

  while (v20 > 0);
  if (v19)
  {
    goto LABEL_40;
  }

LABEL_42:
  if ((*(this + 8) & 0x20) != 0)
  {
    v21 = *(this + 39);
    if (v21 < 0)
    {
      if (*(this + 3) != 8)
      {
        goto LABEL_50;
      }

      v4 = *v4;
    }

    else if (v21 != 8)
    {
      goto LABEL_50;
    }

    if (*v4 == 0x676E616C3A6C6D78)
    {
      NormalizeLangValue(__p);
    }
  }

LABEL_50:
  v22 = *(this + 7);
  v23 = *(this + 40);
  *(this + 40) = *__p;
  *(this + 7) = v26;
  *__p = v23;
  v26 = v22;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1860FBBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPMeta::GetProperty(XMPMeta *this, char *a2, char *a3, const char **a4, unsigned int *a5, unsigned int *a6)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty();
  }

  if (!a4 || !a5 || !a6)
  {
    XMPMeta::GetProperty();
  }

  memset(v15, 0, sizeof(v15));
  ExpandXPath(a2, a3, v15);
  Node = FindNode(this + 224, v15, 0, 0, 0);
  if (Node)
  {
    v11 = (Node + 40);
    if (*(Node + 63) < 0)
    {
      v11 = *v11;
    }

    *a4 = v11;
    v12 = *(Node + 63);
    if (v12 < 0)
    {
      v12 = *(Node + 48);
    }

    *a5 = v12;
    *a6 = *(Node + 8);
  }

  v13 = Node != 0;
  v16 = v15;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v16);
  return v13;
}

void sub_1860FBCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t XMPMeta::GetArrayItem(XMPMeta *this, char *a2, char *a3, int a4, const char **a5, unsigned int *a6, unsigned int *a7)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetArrayItem();
  }

  if (!a5 || !a7)
  {
    XMPMeta::GetArrayItem();
  }

  if (a4 <= 0 && a4 != -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Array index must be larger than zero";
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeArrayItemPath(a2, a3, a4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v13 = (*(*this + 16))(this, a2, p_p, a5, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1860FBE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta::GetStructField(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char **a6, unsigned int *a7, unsigned int *a8)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::GetStructField();
  }

  if (!a6 || !a8)
  {
    XMPMeta::GetStructField();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v14 = (*(*this + 16))(this, a2, p_p, a6, a7, a8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1860FBF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta::GetQualifier(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char **a6, unsigned int *a7, unsigned int *a8)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::GetQualifier();
  }

  if (!a6 || !a8)
  {
    XMPMeta::GetQualifier();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v14 = (*(*this + 16))(this, a2, p_p, a6, a7, a8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1860FC03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty(XMPMeta *this, char *a2, char *a3, char *a4, unsigned int a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty();
  }

  v9 = VerifySetOptions(a5, a4);
  memset(v12, 0, sizeof(v12));
  ExpandXPath(a2, a3, v12);
  Node = FindNode(this + 224, v12, 1, v9, 0);
  if (!Node)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  SetNode(Node, a4, v9);
  v13 = v12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v13);
}

void sub_1860FC13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void SetNode(XMP_Node *this, char *__s, unsigned int a3)
{
  v3 = a3;
  if ((a3 & 0x20000000) != 0)
  {
    v3 = a3 & 0xDFFFFFFF;
    *(this + 2) = a3 & 0xDFFFFFFF;
    std::string::erase((this + 40), 0, 0xFFFFFFFFFFFFFFFFLL);
    XMP_Node::RemoveChildren(this);
    XMP_Node::RemoveQualifiers(this);
  }

  v6 = *(this + 2) | v3;
  *(this + 2) = v6;
  if (__s)
  {
    if ((v6 & 0x1F00) == 0)
    {
      if (*(this + 9) != *(this + 10))
      {
        SetNode();
      }

      XMP_Node::SetValue(this, __s);
      return;
    }

    goto LABEL_21;
  }

  v7 = *(this + 63);
  if (v7 < 0)
  {
    v7 = *(this + 6);
  }

  if (v7)
  {
LABEL_21:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v11 = "Composite nodes can't have values";
LABEL_22:
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  v8 = v6 & 0x1F00;
  if (v8)
  {
    v9 = (v3 & 0x1F00) == v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v11 = "Requested and existing composite form mismatch";
    goto LABEL_22;
  }

  XMP_Node::RemoveChildren(this);
}

void XMPMeta::SetArrayItem(XMPMeta *this, char *a2, char *a3, int a4, char *a5, int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetArrayItem();
  }

  memset(v12, 0, sizeof(v12));
  ExpandXPath(a2, a3, v12);
  Node = FindNode(this + 224, v12, 0, 0, 0);
  if (!Node)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified array does not exist";
    *(exception + 16) = 0;
  }

  DoSetArrayItem(Node, a4, a5, a6);
  v13 = v12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v13);
}

void sub_1860FC360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void DoSetArrayItem(XMP_Node *a1, int a2, char *a3, int a4)
{
  v7 = a4 & 0xC000;
  v8 = (*(a1 + 10) - *(a1 + 9)) >> 3;
  v9 = VerifySetOptions(a4 & 0xFFFF3FFF, a3);
  v22 = 0;
  if (a2 == -1)
  {
    v10 = v8;
  }

  else
  {
    v10 = a2;
  }

  v11 = v10 == 0;
  v12 = v7 == 0x8000;
  v13 = !v12 || !v11;
  if (v12 && v11)
  {
    v14 = 0x4000;
  }

  else
  {
    v14 = v7;
  }

  if (!v13)
  {
    v10 = 1;
  }

  if (v10 == v8 && v14 == 0x8000)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = v10 + (v10 == v8 && v14 == 0x8000);
  if (v16 == v8 + 1)
  {
    if (v15 < 0x8000)
    {
      operator new();
    }

    goto LABEL_25;
  }

  v17 = (v16 - 1);
  if (v16 < 1 || v16 > v8)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 104;
    v21 = "Array index out of bounds";
    goto LABEL_26;
  }

  if (v15)
  {
    operator new();
  }

  v19 = *(a1 + 9);
  if (v17 >= (*(a1 + 10) - v19) >> 3)
  {
    __break(1u);
LABEL_25:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 104;
    v21 = "Can't insert before or after implicit new item";
LABEL_26:
    exception[1] = v21;
    *(exception + 16) = 0;
  }

  SetNode(*(v19 + 8 * v17), a3, v9);
}

void XMPMeta::AppendArrayItem(XMPMeta *this, char *a2, char *a3, unsigned int a4, char *a5, int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta::AppendArrayItem();
  }

  v11 = VerifySetOptions(a4, 0);
  if ((v11 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Only array form flags allowed for arrayOptions";
    *(exception + 16) = 0;
  }

  v12 = v11;
  memset(v18, 0, sizeof(v18));
  ExpandXPath(a2, a3, v18);
  Node = FindNode(this + 224, v18, 0, 0, 0);
  if (Node)
  {
    if ((*(Node + 9) & 2) == 0)
    {
      v14 = "The named property is not an array";
LABEL_14:
      v16 = 102;
LABEL_15:
      v17 = __cxa_allocate_exception(0x18uLL);
      *v17 = v16;
      v17[1] = v14;
      *(v17 + 16) = 0;
    }
  }

  else
  {
    if (!v12)
    {
      v14 = "Explicit arrayOptions required to create new array";
      v16 = 103;
      goto LABEL_15;
    }

    Node = FindNode(this + 224, v18, 1, v12, 0);
    if (!Node)
    {
      v14 = "Failure creating array node";
      goto LABEL_14;
    }
  }

  DoSetArrayItem(Node, -1, a5, a6 | 0x8000);
  v19 = v18;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v19);
}

void sub_1860FC700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta::SetStructField(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::SetStructField();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, p_p, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FC7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetQualifier(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::SetQualifier();
  }

  memset(v17, 0, sizeof(v17));
  ExpandXPath(a2, a3, v17);
  if (!FindNode(this + 224, v17, 0, 0, 0))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, p_p, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v17;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
}

void sub_1860FC96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPMeta::DeleteProperty(XMPMeta *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta::DeleteProperty();
  }

  memset(v21, 0, sizeof(v21));
  ExpandXPath(a2, a3, v21);
  __dst = 0;
  Node = FindNode(this + 224, v21, 0, 0, &__dst);
  v5 = Node;
  if (Node)
  {
    v6 = *(Node + 64);
    if ((*(Node + 8) & 0x20) == 0)
    {
      v7 = __dst;
      v8 = *(v6 + 80);
      if (v8 != __dst)
      {
        v9 = v8 - (__dst + 8);
        if (v8 != __dst + 8)
        {
          memmove(__dst, __dst + 8, v8 - (__dst + 8));
        }

        *(v6 + 80) = &v7[v9];
        DeleteEmptySchema(v6);
LABEL_29:
        (*(*v5 + 8))(v5);
        goto LABEL_30;
      }

      goto LABEL_34;
    }

    v10 = (Node + 16);
    v11 = *(Node + 39);
    if (v11 < 0)
    {
      if (*(Node + 24) == 8 && **v10 == 0x676E616C3A6C6D78)
      {
        goto LABEL_20;
      }

      if (*(Node + 24) != 8)
      {
LABEL_23:
        v15 = __dst;
        v16 = *(v6 + 104);
        if (v16 == __dst)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v17 = v16 - (__dst + 8);
        if (v16 != __dst + 8)
        {
          memmove(__dst, __dst + 8, v16 - (__dst + 8));
        }

        *(v6 + 104) = &v15[v17];
        v18 = *(v6 + 8);
        if ((v18 & 0x10) != 0)
        {
          if (*(v6 + 96) == &v15[v17])
          {
            *(v6 + 8) = v18 & 0xFFFFFFEF;
          }

          goto LABEL_29;
        }

        v19 = "parentNode->options & kXMP_PropHasQualifiers";
        v20 = 693;
LABEL_33:
        __assert_rtn("DeleteProperty", "XMPMeta-GetSet.cpp", v20, v19);
      }

      v10 = *v10;
    }

    else
    {
      if (v11 != 8)
      {
        goto LABEL_23;
      }

      if (*v10 == 0x676E616C3A6C6D78)
      {
LABEL_20:
        v14 = *(v6 + 8);
        if ((v14 & 0x40) == 0)
        {
LABEL_35:
          v19 = "parentNode->options & kXMP_PropHasLang";
          v20 = 685;
          goto LABEL_33;
        }

        v13 = v14 & 0xFFFFFFBF;
LABEL_22:
        *(v6 + 8) = v13;
        goto LABEL_23;
      }
    }

    if (*v10 == 0x657079743A666472)
    {
      v12 = *(v6 + 8);
      if ((v12 & 0x80) == 0)
      {
        v19 = "parentNode->options & kXMP_PropHasType";
        v20 = 688;
        goto LABEL_33;
      }

      v13 = v12 & 0xFFFFFF7F;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_30:
  __dst = v21;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__dst);
}

void sub_1860FCBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta::DeleteArrayItem(XMPMeta *this, char *a2, char *a3, int a4)
{
  if (!a2 || !a3)
  {
    XMPMeta::DeleteArrayItem();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeArrayItemPath(a2, a3, a4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 80))(this, a2, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FCCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::DeleteStructField(XMPMeta *this, char *a2, char *a3, char *a4, char *a5)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::DeleteStructField();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 80))(this, a2, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FCD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::DeleteQualifier(XMPMeta *this, char *a2, char *a3, char *a4, char *a5)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::DeleteQualifier();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 80))(this, a2, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FCE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPMeta::DoesPropertyExist(XMPMeta *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta::DoesPropertyExist();
  }

  memset(v6, 0, sizeof(v6));
  ExpandXPath(a2, a3, v6);
  v4 = FindNode(this + 224, v6, 0, 0, 0) != 0;
  v7 = v6;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v7);
  return v4;
}

void sub_1860FCF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t XMPMeta::GetLocalizedText(XMPMeta *this, char *a2, char *a3, char *__s, char *a5, const char **a6, unsigned int *a7, const char **a8, unsigned int *a9, unsigned int *a10)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta::GetLocalizedText();
  }

  if (!a6 || !a7)
  {
    XMPMeta::GetLocalizedText();
  }

  if (!a8 || !a9 || !a10)
  {
    XMPMeta::GetLocalizedText();
  }

  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  std::string::basic_string[abi:fe200100]<0>(v34, __s);
  __p[0] = 0;
  __p[1] = 0;
  v33 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v34);
  v17 = __p;
  NormalizeLangValue(__p);
  if (v35 >= 0)
  {
    v18 = v34;
  }

  else
  {
    v18 = v34[0];
  }

  if (v33 < 0)
  {
    v17 = __p[0];
  }

  memset(v31, 0, sizeof(v31));
  ExpandXPath(a2, a3, v31);
  Node = FindNode(this + 224, v31, 0, 0, 0);
  if (Node)
  {
    v36 = 0;
    result = ChooseLocalizedText(Node, v18, v17, &v36);
    v21 = result != 0;
    if (result)
    {
      v22 = v36;
      v23 = *(v36 + 12);
      if (*(v36 + 13) == v23)
      {
        goto LABEL_37;
      }

      v24 = *v23;
      v25 = (*v23 + 40);
      if (*(v24 + 63) < 0)
      {
        v25 = *v25;
      }

      *a6 = v25;
      v26 = *(v22 + 12);
      if (*(v22 + 13) == v26)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v27 = *v26;
      v28 = *(*v26 + 63);
      if (v28 < 0)
      {
        v28 = *(v27 + 48);
      }

      *a7 = v28;
      v29 = v22 + 40;
      if (*(v22 + 63) < 0)
      {
        v29 = *v29;
      }

      *a8 = v29;
      v30 = *(v22 + 63);
      if (v30 < 0)
      {
        v30 = *(v22 + 6);
      }

      *a9 = v30;
      *a10 = *(v22 + 2);
    }
  }

  else
  {
    v21 = 0;
  }

  v36 = v31;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v36);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  return v21;
}

void sub_1860FD120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t *a24)
{
  a24 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a24);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t ChooseLocalizedText(const XMP_Node *a1, const char *a2, const char *__s, const XMP_Node **a4)
{
  v8 = *(a1 + 9);
  v7 = *(a1 + 10);
  if ((*(a1 + 2) & 0x1000) == 0 && (v8 != v7 || (*(a1 + 2) & 0x800) == 0))
  {
    goto LABEL_80;
  }

  if (v8 == v7)
  {
    v20 = 0;
    result = 0;
    goto LABEL_59;
  }

  v52 = a4;
  v10 = 0;
  v11 = v7 - v8;
  v12 = v11 >> 3;
  if ((v11 >> 3) <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 >> 3;
  }

  do
  {
    v14 = v8[v10];
    if ((*(v14 + 9) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v51 = "Alt-text array item is not simple";
      goto LABEL_77;
    }

    v15 = *(v14 + 12);
    if (v15 == *(v14 + 13))
    {
      goto LABEL_75;
    }

    v16 = *v15;
    v17 = (v16 + 16);
    v18 = *(v16 + 39);
    if (v18 < 0)
    {
      if (*(v16 + 24) != 8)
      {
        goto LABEL_75;
      }

      v17 = *v17;
    }

    else if (v18 != 8)
    {
      goto LABEL_75;
    }

    if (*v17 != 0x676E616C3A6C6D78)
    {
LABEL_75:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v51 = "Alt-text array item has no language qualifier";
      goto LABEL_77;
    }

    ++v10;
  }

  while (v13 != v10);
  v19 = 0;
  do
  {
    v20 = v8[v19];
    v21 = *(v20 + 12);
    if (*(v20 + 13) == v21)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v51 = "Localized text array is not alt-text";
LABEL_77:
      exception[1] = v51;
      *(exception + 16) = 0;
    }

    v22 = *v21;
    v23 = (*v21 + 40);
    v24 = strlen(__s);
    v25 = *(v22 + 63);
    if (v25 < 0)
    {
      if (v24 != *(v22 + 48))
      {
        goto LABEL_28;
      }

      if (v24 == -1)
      {
        std::string::__throw_out_of_range[abi:fe200100]();
      }

      v23 = *v23;
    }

    else if (v24 != v25)
    {
      goto LABEL_28;
    }

    if (!memcmp(v23, __s, v24))
    {
      result = 1;
      goto LABEL_58;
    }

LABEL_28:
    ++v19;
  }

  while (v13 != v19);
  if (!*a2)
  {
LABEL_41:
    v33 = 0;
    while (1)
    {
      if (v12 == v33)
      {
        goto LABEL_79;
      }

      v20 = v8[v33];
      v34 = *(v20 + 12);
      if (*(v20 + 13) == v34)
      {
        goto LABEL_79;
      }

      v35 = *v34;
      v36 = *v34 + 40;
      v37 = *(v35 + 63);
      if (v37 < 0)
      {
        if (*(v35 + 48) != 9)
        {
          goto LABEL_53;
        }

        v36 = *v36;
      }

      else if (v37 != 9)
      {
        goto LABEL_53;
      }

      v38 = *v36;
      v39 = *(v36 + 8);
      if (v38 == 0x6C75616665642D78 && v39 == 116)
      {
        result = 4;
LABEL_58:
        a4 = v52;
LABEL_59:
        *a4 = v20;
        return result;
      }

LABEL_53:
      if (v13 == ++v33)
      {
        v20 = *v8;
        result = 5;
        goto LABEL_58;
      }
    }
  }

  v26 = strlen(a2);
  v27 = 0;
  while (1)
  {
    if (v12 == v27)
    {
      goto LABEL_79;
    }

    v28 = v8[v27];
    v29 = *(v28 + 12);
    if (*(v28 + 13) == v29)
    {
      goto LABEL_79;
    }

    v30 = *v29;
    v31 = *(v30 + 63);
    if ((v31 & 0x8000000000000000) != 0)
    {
      v32 = *(v30 + 40);
      v31 = *(v30 + 48);
    }

    else
    {
      v32 = (v30 + 40);
    }

    if (v31 >= v26 && !strncmp(v32, a2, v26) && (v31 == v26 || v32[v26] == 45))
    {
      break;
    }

    if (v13 == ++v27)
    {
      goto LABEL_41;
    }
  }

  *v52 = v28;
  v42 = v27 + 1;
  if (v27 + 1 >= v12)
  {
    return 2;
  }

  v44 = a1 + 72;
  v43 = *(a1 + 9);
  v45 = (*(v44 + 1) - v43) >> 3;
  do
  {
    if (v45 <= v42)
    {
      goto LABEL_79;
    }

    v46 = *(*(v43 + 8 * v42) + 96);
    if (*(*(v43 + 8 * v42) + 104) == v46)
    {
      goto LABEL_79;
    }

    v47 = *v46;
    v48 = *(v47 + 63);
    if ((v48 & 0x8000000000000000) != 0)
    {
      v49 = *(v47 + 40);
      v48 = *(v47 + 48);
    }

    else
    {
      v49 = (v47 + 40);
    }

    if (v48 >= v26 && !strncmp(v49, a2, v26) && (v48 == v26 || v49[v26] == 45))
    {
      return 3;
    }

    ++v42;
    result = 2;
  }

  while (v12 != v42);
  return result;
}

void XMPMeta::SetLocalizedText(XMPMeta *this, char *a2, char *a3, char *__s, char *a5, char *a6)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta::SetLocalizedText();
  }

  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  std::string::basic_string[abi:fe200100]<0>(v62, __s);
  __p[0] = 0;
  __p[1] = 0;
  v61 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v62);
  v11 = __p;
  NormalizeLangValue(__p);
  if (v63 >= 0)
  {
    v12 = v62;
  }

  else
  {
    v12 = v62[0];
  }

  if (v61 < 0)
  {
    v11 = __p[0];
  }

  memset(v59, 0, sizeof(v59));
  ExpandXPath(a2, a3, v59);
  Node = FindNode(this + 224, v59, 1, 3584, 0);
  v14 = Node;
  if (!Node)
  {
    v16 = "Failed to find or create array node";
    goto LABEL_125;
  }

  v15 = *(Node + 8);
  if ((v15 & 0x1000) == 0)
  {
    v16 = "Localized text array is not alt-text";
    if ((v15 & 0x800) != 0)
    {
      v17 = (Node + 72);
      v18 = (Node + 80);
      if (*(Node + 72) == *(Node + 80))
      {
        v19 = 0;
        v20 = 0;
        *(Node + 8) = v15 | 0x1000;
        goto LABEL_41;
      }
    }

LABEL_125:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = v16;
    *(exception + 16) = 0;
  }

  v18 = (Node + 80);
  v21 = *(Node + 80);
  v17 = (Node + 72);
  v22 = *(Node + 72);
  v23 = v21 - v22;
  if (v21 == v22)
  {
    v19 = 0;
LABEL_40:
    v20 = 0;
LABEL_41:
    v64 = 0;
    v36 = ChooseLocalizedText(v14, v12, v11, &v64);
    v37 = v64;
    v38 = strcmp(v11, "x-default");
    if (v36 > 2)
    {
      switch(v36)
      {
        case 3:
          AppendLangItem(v14, v11, a6);
        case 4:
          if (*v18 - *v17 == 8)
          {
            XMP_Node::SetValue(v20, a6);
          }

          AppendLangItem(v14, v11, a6);
        case 5:
          AppendLangItem(v14, v11, a6);
      }

LABEL_126:
      v58 = __cxa_allocate_exception(0x18uLL);
      *v58 = 9;
      v58[1] = "Unexpected result from ChooseLocalizedText";
      *(v58 + 16) = 0;
    }

    switch(v36)
    {
      case 0:
        AppendLangItem(v14, "x-default", a6);
      case 1:
        if (!v38)
        {
          if (!v20 || !v19 || v20 != v37)
          {
            __assert_rtn("SetLocalizedText", "XMPMeta-GetSet.cpp", 977, "xdItem != __null && haveXDefault && (xdItem == itemNode)");
          }

          if (*v18 != *v17)
          {
            v45 = 0;
            if (((*v18 - *v17) >> 3) <= 1)
            {
              v46 = 1;
            }

            else
            {
              v46 = (*v18 - *v17) >> 3;
            }

            while (v45 < (*v18 - *v17) >> 3)
            {
              v47 = *(*v17 + 8 * v45);
              if (v47 != v20)
              {
                v48 = *(v47 + 63);
                if (v48 >= 0)
                {
                  v49 = *(v47 + 63);
                }

                else
                {
                  v49 = *(v47 + 48);
                }

                v50 = *(v20 + 63);
                v51 = v50;
                if ((v50 & 0x80u) != 0)
                {
                  v50 = *(v20 + 48);
                }

                if (v49 == v50)
                {
                  v52 = v48 >= 0 ? (v47 + 40) : *(v47 + 40);
                  v53 = v51 >= 0 ? (v20 + 40) : *(v20 + 40);
                  if (!memcmp(v52, v53, v49))
                  {
                    XMP_Node::SetValue(v47, a6);
                  }
                }
              }

              if (v46 == ++v45)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_127;
          }

LABEL_101:
          v37 = v20;
          goto LABEL_102;
        }

        break;
      case 2:
        break;
      default:
        goto LABEL_126;
    }

    if (v20 && v19 && v20 != v37)
    {
      v39 = *(v20 + 63);
      if (v39 >= 0)
      {
        v40 = *(v20 + 63);
      }

      else
      {
        v40 = *(v20 + 48);
      }

      v41 = *(v37 + 63);
      v42 = v41;
      if ((v41 & 0x80u) != 0)
      {
        v41 = *(v37 + 6);
      }

      if (v40 == v41)
      {
        v43 = v39 >= 0 ? (v20 + 40) : *(v20 + 40);
        v44 = v42 >= 0 ? v37 + 40 : *(v37 + 5);
        if (!memcmp(v43, v44, v40))
        {
          XMP_Node::SetValue(v20, a6);
        }
      }
    }

LABEL_102:
    XMP_Node::SetValue(v37, a6);
    if (!v19 && *v18 - *v17 == 8)
    {
      AppendLangItem(v14, "x-default", a6);
    }

    v64 = v59;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v64);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62[0]);
    }

    return;
  }

  v24 = 0;
  if ((v23 >> 3) <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23 >> 3;
  }

  v19 = 1;
  while (1)
  {
    v20 = *&v22[8 * v24];
    if ((*(v20 + 8) & 0x40) == 0)
    {
      __assert_rtn("SetLocalizedText", "XMPMeta-GetSet.cpp", 931, "(((currItem->options) & kXMP_PropHasLang) != 0)");
    }

    v26 = *(v20 + 96);
    if (v26 == *(v20 + 104))
    {
      goto LABEL_123;
    }

    v27 = *v26;
    v28 = (v27 + 16);
    v29 = *(v27 + 39);
    if (v29 < 0)
    {
      if (*(v27 + 24) != 8)
      {
        goto LABEL_123;
      }

      v28 = *v28;
    }

    else if (v29 != 8)
    {
      goto LABEL_123;
    }

    if (*v28 != 0x676E616C3A6C6D78)
    {
LABEL_123:
      v56 = __cxa_allocate_exception(0x18uLL);
      *v56 = 102;
      v56[1] = "Language qualifier must be first";
      *(v56 + 16) = 0;
    }

    v30 = (v27 + 40);
    v31 = *(v27 + 63);
    if (*(v27 + 63) < 0)
    {
      break;
    }

    v32 = (v27 + 40);
    if (v31 == 9)
    {
      goto LABEL_33;
    }

LABEL_37:
    v19 = ++v24 < v23 >> 3;
    if (v25 == v24)
    {
      goto LABEL_40;
    }
  }

  if (*(v27 + 48) != 9)
  {
    goto LABEL_37;
  }

  v32 = *v30;
LABEL_33:
  v33 = *v32;
  v34 = *(v32 + 8);
  if (v33 != 0x6C75616665642D78 || v34 != 116)
  {
    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_41;
  }

  if ((v31 & 0x80) != 0)
  {
    if (*(v27 + 48) != 9)
    {
      goto LABEL_122;
    }

    v30 = *v30;
  }

  else if (v31 != 9)
  {
    goto LABEL_122;
  }

  if (*v30 != 0x6C75616665642D78 || *(v30 + 8) != 116)
  {
LABEL_122:
    __assert_rtn("SetLocalizedText", "XMPMeta-GetSet.cpp", 943, "arrayNode->children[itemNum]->qualifiers[0]->value == x-default");
  }

  v55 = *v22;
  *v22 = v20;
  if (v24 < (*v18 - *v17) >> 3)
  {
    *(*v17 + 8 * v24) = v55;
    goto LABEL_41;
  }

LABEL_127:
  __break(1u);
}