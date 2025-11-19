void sub_240F36F08(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 14);
    if (v3 == 4)
    {
      v4 = (__p + 64);
      sub_240F365B8(&v4);
    }

    else if (v3 == 3 && __p[87] < 0)
    {
      operator delete(*(__p + 8));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }

    goto LABEL_11;
  }

  if (__p)
  {
LABEL_11:
    operator delete(__p);
  }
}

dispatch_time_t applesauce::dispatch::v1::walltime(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a1)
{
  __t.__d_.__rep_ = a1;
  v1 = std::chrono::system_clock::to_time_t(&__t);
  v2.__d_.__rep_ = std::chrono::system_clock::from_time_t(v1).__d_.__rep_;
  v3 = 1000 * (__t.__d_.__rep_ - v2.__d_.__rep_);
  if (__t.__d_.__rep_ < v2.__d_.__rep_)
  {
    v3 += 1000000000;
  }

  when.tv_sec = v1 + ((__t.__d_.__rep_ - v2.__d_.__rep_) >> 63);
  when.tv_nsec = v3;
  return dispatch_walltime(&when, 0);
}

void applesauce::xpc::object::to_string(void **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2[0] = a2;
  v2[1] = 0;
  sub_240F3705C(v2, *this);
}

void sub_240F37040(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F3705C(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x245CD4B50](a2);
  if (v4 == MEMORY[0x277D86468])
  {
    std::string::push_back(*a1, 123);
    if (xpc_dictionary_get_count(a2))
    {
      ++*(a1 + 8);
      applier.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
      applier.__r_.__value_.__l.__size_ = 0x40000000;
      applier.__r_.__value_.__r.__words[2] = sub_240F37A98;
      v50 = &unk_278CBCB78;
      v51 = a1;
      xpc_dictionary_apply(a2, &applier);
      v5 = *a1;
      --*(a1 + 8);
      size = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v5->__r_.__value_.__l.__size_;
      }

      std::string::resize(v5, size - 1, 0);
      std::string::push_back(*a1, 10);
      std::string::append(*a1, *(a1 + 8), 9);
    }

    v7 = *a1;
    v8 = 125;
    goto LABEL_20;
  }

  if (v4 == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(a2);
    length = xpc_string_get_length(a2);
    std::string::push_back(*a1, 34);
    std::string::append(*a1, string_ptr, length);
    v11 = *a1;
    v12 = 34;
LABEL_22:

    std::string::push_back(v11, v12);
    return;
  }

  if (v4 == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(a2);
    v14 = *a1;
    std::to_string(&applier, value);
    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_applier = &applier;
    }

    else
    {
      p_applier = applier.__r_.__value_.__r.__words[0];
    }

    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = applier.__r_.__value_.__l.__size_;
    }

LABEL_31:
    std::string::append(v14, p_applier, v16);
    if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(applier.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (v4 == MEMORY[0x277D86440])
  {
    std::string::push_back(*a1, 91);
    count = xpc_array_get_count(a2);
    if (count)
    {
      v18 = count;
      v19 = 0;
      ++*(a1 + 8);
      do
      {
        if (v19)
        {
          std::string::push_back(*a1, 44);
        }

        std::string::push_back(*a1, 10);
        std::string::append(*a1, *(a1 + 8), 9);
        v20 = *a1;
        std::to_string(&applier, v19);
        if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &applier;
        }

        else
        {
          v21 = applier.__r_.__value_.__r.__words[0];
        }

        if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = applier.__r_.__value_.__l.__size_;
        }

        std::string::append(v20, v21, v22);
        if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(applier.__r_.__value_.__l.__data_);
        }

        std::string::append(*a1, ": ");
        v23 = xpc_array_get_value(a2, v19);
        sub_240F3705C(a1, v23);
        ++v19;
      }

      while (v18 != v19);
      v24 = *a1;
      --*(a1 + 8);
      std::string::push_back(v24, 10);
      std::string::append(*a1, *(a1 + 8), 9);
      v7 = *a1;
      v8 = 93;
      goto LABEL_20;
    }

    v11 = *a1;
    v12 = 93;
    goto LABEL_22;
  }

  if (v4 != MEMORY[0x277D86458])
  {
    if (v4 == MEMORY[0x277D86448])
    {
      v37 = xpc_BOOL_get_value(a2);
      v38 = *a1;
      if (v37)
      {
        v39 = "true";
      }

      else
      {
        v39 = "false";
      }

      v40 = *a1;
LABEL_83:

      std::string::append(v40, v39);
      return;
    }

    if (v4 != MEMORY[0x277D864C8])
    {
      if (v4 != MEMORY[0x277D864B0])
      {
        if (v4 == MEMORY[0x277D86470])
        {

          sub_240F377B4(a1, a2);
        }

        else if (v4 == MEMORY[0x277D86460])
        {

          sub_240F37840(a1, a2);
        }

        else if (v4 == MEMORY[0x277D864D0])
        {

          sub_240F378EC(a1, a2);
        }

        else if (v4 == MEMORY[0x277D86480])
        {

          sub_240F37968(a1, a2);
        }

        else
        {
          object = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            object = xpc_null_create();
          }

          v45 = *a1;
          sub_240F379D8(&object, &applier);
          if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &applier;
          }

          else
          {
            v46 = applier.__r_.__value_.__r.__words[0];
          }

          if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v47 = applier.__r_.__value_.__l.__size_;
          }

          std::string::append(v45, v46, v47);
          if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(applier.__r_.__value_.__l.__data_);
          }

          xpc_release(object);
        }

        return;
      }

      v40 = *a1;
      v39 = "null";
      goto LABEL_83;
    }

    v41 = xpc_uint64_get_value(a2);
    v42 = *a1;
    std::to_string(&applier, v41);
    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &applier;
    }

    else
    {
      v43 = applier.__r_.__value_.__r.__words[0];
    }

    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = applier.__r_.__value_.__l.__size_;
    }

    std::string::append(v42, v43, v44);
    if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(applier.__r_.__value_.__l.__data_);
    }

    v7 = *a1;
    v8 = 117;
LABEL_20:
    std::string::push_back(v7, v8);
    return;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(a2);
  v26 = xpc_data_get_length(a2);
  std::string::append(*a1, "[");
  v27 = *a1;
  std::to_string(&applier, v26);
  if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &applier;
  }

  else
  {
    v28 = applier.__r_.__value_.__r.__words[0];
  }

  if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = applier.__r_.__value_.__l.__size_;
  }

  std::string::append(v27, v28, v29);
  if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(applier.__r_.__value_.__l.__data_);
  }

  std::string::append(*a1, " bytes]");
  if (v26)
  {
    std::string::append(*a1, " ");
    v14 = *a1;
    memset(&applier, 0, sizeof(applier));
    if (v26 < 1)
    {
      v34 = 0;
    }

    else
    {
      v30 = &bytes_ptr[v26];
      do
      {
        if (*bytes_ptr >= 0xA0u)
        {
          v31 = (*bytes_ptr >> 4) + 87;
        }

        else
        {
          v31 = (*bytes_ptr >> 4) | 0x30;
        }

        std::string::push_back(&applier, v31);
        v32 = *bytes_ptr & 0xF;
        if (v32 >= 0xA)
        {
          v33 = v32 + 87;
        }

        else
        {
          v33 = *bytes_ptr & 0xF | 0x30;
        }

        std::string::push_back(&applier, v33);
        std::string::push_back(&applier, 32);
        ++bytes_ptr;
      }

      while (bytes_ptr < v30);
      v34 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(applier.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (applier.__r_.__value_.__l.__size_)
        {
          v35 = applier.__r_.__value_.__r.__words[0];
          v36 = (applier.__r_.__value_.__r.__words[0] + applier.__r_.__value_.__l.__size_);
          goto LABEL_92;
        }
      }

      else if (*(&applier.__r_.__value_.__s + 23))
      {
        v35 = &applier;
        v36 = &applier + SHIBYTE(applier.__r_.__value_.__r.__words[2]);
LABEL_92:
        std::string::erase(&applier, &v36[~v35], 1uLL);
        v34 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
      }
    }

    if ((v34 & 0x80u) == 0)
    {
      p_applier = &applier;
    }

    else
    {
      p_applier = applier.__r_.__value_.__r.__words[0];
    }

    if ((v34 & 0x80u) == 0)
    {
      v16 = v34;
    }

    else
    {
      v16 = applier.__r_.__value_.__l.__size_;
    }

    goto LABEL_31;
  }
}

void sub_240F37750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_240F377B4(std::string **a1, xpc_object_t xdouble)
{
  value = xpc_double_get_value(xdouble);
  v4 = *a1;
  std::to_string(&v7, value);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v7.__r_.__value_.__l.__size_;
  }

  std::string::append(v4, v5, size);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_240F37824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_240F37840(std::string **a1, xpc_object_t xdate)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = xpc_date_get_value(xdate) / 0x3B9ACA00uLL;
  localtime_r(&v6, &v5);
  strftime(__s, 0x1EuLL, "%F %T %Z", &v5);
  result = std::string::append(*a1, __s);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *sub_240F378EC(std::string **a1, xpc_object_t xuuid)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  bytes = xpc_uuid_get_bytes(xuuid);
  uuid_unparse_lower(bytes, v6);
  result = std::string::append(*a1, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F37968(std::string **a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
  std::string::append(*a1, "XPC_ERROR(");
  std::string::append(*a1, string);
  v4 = *a1;

  std::string::push_back(v4, 41);
}

void sub_240F379D8(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = MEMORY[0x245CD4AB0](*a1);
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240F18B18();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memcpy(a2, v3, v4);
  }

  a2[v5] = 0;

  free(v3);
}

uint64_t sub_240F37A98(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  std::string::push_back(*v5, 10);
  std::string::append(*v5, *(v5 + 8), 9);
  std::string::push_back(*v5, 34);
  std::string::append(*v5, a2);
  std::string::append(*v5, ": ");
  sub_240F3705C(v5, a3);
  std::string::push_back(*v5, 44);
  return 1;
}

BOOL applesauce::xpc::dyn_cast_or_default(xpc_object_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x245CD4B50](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x277D86448])
  {
    return v5 == MEMORY[0x277D863E8];
  }

  v6 = MEMORY[0x245CD4B50](v5);
  v7 = *a1;
  if (v6 == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v7);
    return value != 0;
  }

  if (MEMORY[0x245CD4B50](v7) == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(*a1);
    return value != 0;
  }

  return a2;
}

char *applesauce::xpc::dyn_cast_or_default@<X0>(xpc_object_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x245CD4B50](*a1);
  v7 = MEMORY[0x277D86458];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6 == v7)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(*a1);
    length = xpc_data_get_length(*a1);
    return sub_240F37E08(a3, *a3, bytes_ptr, &bytes_ptr[length], length);
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = v9 - *a2;

    return sub_240F38030(a3, v8, v9, v10);
  }
}

void sub_240F37C74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *applesauce::xpc::dyn_cast_or_default@<X0>(xpc_object_t *a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  if (MEMORY[0x245CD4B50](*a1) == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(*a1);
    length = xpc_string_get_length(*a1);

    return sub_240F187D0(a3, string_ptr, length);
  }

  else
  {
    result = strlen(a2);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_240F18B18();
    }

    v7 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a3[23] = result;
    if (result)
    {
      result = memcpy(a3, a2, result);
    }

    v7[a3] = 0;
  }

  return result;
}

double applesauce::xpc::dyn_cast_or_default(void *a1, double a2)
{
  if (MEMORY[0x245CD4B50](*a1) != MEMORY[0x277D86470])
  {
    return a2;
  }

  v5 = *a1;

  return xpc_double_get_value(v5);
}

char *sub_240F37E08(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_240F1B5A8();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_240F38030(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_240F380AC(result, a4);
  }

  return result;
}

void sub_240F38090(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F380AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_240F1B5A8();
}

void applesauce::xpc::auto_reply::create_from_request(xpc_object_t *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x245CD4B50](*a1);
  v5 = MEMORY[0x277D86468];
  if (v4 != MEMORY[0x277D86468])
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  reply = xpc_dictionary_create_reply(*a1);
  v7 = reply;
  if (reply)
  {
    v9 = reply;
  }

  else
  {
    v7 = xpc_null_create();
    v9 = v7;
    if (!v7)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CD4B50](v7) != v5)
  {
    v8 = v7;
LABEL_10:
    v7 = xpc_null_create();
    v9 = v7;
    goto LABEL_11;
  }

  xpc_retain(v7);
  v8 = v7;
LABEL_11:
  applesauce::xpc::auto_reply::create_from_reply(&v9, a2);
  xpc_release(v7);
  v9 = 0;
  xpc_release(v8);
}

void applesauce::xpc::auto_reply::create_from_reply(xpc_object_t *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x245CD4B50](*a1) != MEMORY[0x277D86468])
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  remote_connection = xpc_dictionary_get_remote_connection(*a1);
  v5 = remote_connection;
  v6 = MEMORY[0x277D86450];
  if (remote_connection)
  {
    xpc_retain(remote_connection);
    v8 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (MEMORY[0x245CD4B50](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

LABEL_7:
  v8 = xpc_null_create();
LABEL_9:
  xpc_release(v5);
  v7 = v8;
  if (MEMORY[0x245CD4B50](v8) == v6)
  {
    applesauce::xpc::auto_reply::create_from_dict(a1, &v8, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  xpc_release(v7);
}

uint64_t applesauce::xpc::auto_reply::create_from_dict@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = MEMORY[0x245CD4B50](*a1);
  if (result == MEMORY[0x277D86468])
  {
    result = MEMORY[0x245CD4B50](*a2);
    if (result == MEMORY[0x277D86450])
    {
      operator new();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_240F38420(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBD80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

void sub_240F38474(uint64_t a1)
{
  if (MEMORY[0x245CD4B50](*(a1 + 32)) == MEMORY[0x277D86450] && MEMORY[0x245CD4B50](*(a1 + 24)) == MEMORY[0x277D86468])
  {
    xpc_connection_send_message(*(a1 + 32), *(a1 + 24));
  }

  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
}

void sub_240F38528(void *a1)
{
  if (__cxa_guard_acquire(&qword_27E51D5E0))
  {
    qword_281504260 = 0;
    *algn_281504268 = 0;
    qword_281504270 = 0;
    __cxa_atexit(MEMORY[0x277D82640], &qword_281504260, &dword_240F18000);
    __cxa_guard_release(&qword_27E51D5E0);
  }

  *a1 = &qword_281504260;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}