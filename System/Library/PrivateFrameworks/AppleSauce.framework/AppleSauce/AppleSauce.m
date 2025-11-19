_BYTE *sub_240F187D0(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240F18B18();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

_BYTE *applesauce::xpc::dyn_cast_or_default@<X0>(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = MEMORY[0x245CD4B50](*a1);
  if (result == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(*a1);
    length = xpc_string_get_length(*a1);

    return sub_240F187D0(a3, string_ptr, length);
  }

  else if (*(a2 + 23) < 0)
  {
    v9 = *a2;
    v10 = *(a2 + 8);

    return sub_240F23FB4(a3, v9, v10);
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
  }

  return result;
}

uint64_t applesauce::xpc::dyn_cast_or_default(void *a1, int64_t value)
{
  v4 = MEMORY[0x245CD4B50](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    if (value < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_240F222E4(exception, "dyn_cast to uint64_t requires nonnegative values");
      __cxa_throw(exception, off_278CBCB48, MEMORY[0x277D825F8]);
    }

    return value;
  }

  if (MEMORY[0x245CD4B50](v5) != MEMORY[0x277D864C8])
  {
    return value;
  }

  v6 = *a1;

  return xpc_uint64_get_value(v6);
}

uint64_t applesauce::xpc::dyn_cast_or_default(xpc_object_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x245CD4B50](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x277D86498])
  {

    return xpc_int64_get_value(v5);
  }

  else
  {
    v6 = MEMORY[0x245CD4B50](v5);
    v7 = *a1;
    if (v6 == MEMORY[0x277D864C8])
    {

      return xpc_uint64_get_value(v7);
    }

    else
    {
      if (MEMORY[0x245CD4B50](v7) == MEMORY[0x277D86448])
      {
        return applesauce::xpc::dyn_cast_or_default(a1, 0);
      }

      return a2;
    }
  }
}

void *docopt::operator<<(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  if (*a2 > 2)
  {
    if (v4 == 3)
    {
      sub_240F1ABDC(a2, 3u);
      v24 = 34;
      v16 = sub_240F3660C(v3, &v24, 1);
      v19 = *(a2 + 8);
      v18 = a2 + 8;
      v17 = v19;
      v20 = *(v18 + 23);
      if (v20 >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = v17;
      }

      if (v20 >= 0)
      {
        v22 = *(v18 + 23);
      }

      else
      {
        v22 = *(v18 + 8);
      }

      a1 = sub_240F3660C(v16, v21, v22);
      v25 = 34;
      v14 = &v25;
    }

    else
    {
      if (v4 != 4)
      {
LABEL_19:
        v14 = "null";
        v15 = 4;
LABEL_35:
        sub_240F3660C(a1, v14, v15);
        return v3;
      }

      sub_240F1ABDC(a2, 4u);
      sub_240F3660C(v3, "[", 1);
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      if (v6 != v7)
      {
        v8 = 1;
        do
        {
          if ((v8 & 1) == 0)
          {
            sub_240F3660C(v3, ", ", 2);
          }

          v26 = 34;
          v9 = sub_240F3660C(v3, &v26, 1);
          v10 = *(v6 + 23);
          if (v10 >= 0)
          {
            v11 = v6;
          }

          else
          {
            v11 = *v6;
          }

          if (v10 >= 0)
          {
            v12 = *(v6 + 23);
          }

          else
          {
            v12 = *(v6 + 8);
          }

          v13 = sub_240F3660C(v9, v11, v12);
          v27 = 34;
          sub_240F3660C(v13, &v27, 1);
          v8 = 0;
          v6 += 24;
        }

        while (v6 != v7);
      }

      v14 = "]";
      a1 = v3;
    }

    v15 = 1;
    goto LABEL_35;
  }

  if (v4 == 1)
  {
    sub_240F1ABDC(a2, 1u);
    if (*(a2 + 8))
    {
      v14 = "true";
    }

    else
    {
      v14 = "false";
    }

    if (*(a2 + 8))
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    a1 = v3;
    goto LABEL_35;
  }

  if (v4 != 2)
  {
    goto LABEL_19;
  }

  v5 = sub_240F18D04(a2);
  MEMORY[0x245CD4760](v3, v5);
  return v3;
}

uint64_t sub_240F18D04(uint64_t a1)
{
  if (*a1 == 3)
  {
    __idx = 0;
    result = std::stol((a1 + 8), &__idx, 10);
    v3 = *(a1 + 31);
    if (v3 < 0)
    {
      v3 = *(a1 + 16);
    }

    if (__idx != v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v5 = a1;
      v6 = exception;
      sub_240F1ACEC(" contains non-numeric characters.", (v5 + 8), &v7.__r_.__value_.__l.__data_);
      std::runtime_error::runtime_error(v6, &v7);
      __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    sub_240F1ABDC(a1, 2u);
    return *(a1 + 8);
  }

  return result;
}

void sub_240F18DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void docopt::docopt_parse()
{
  v4 = &unk_2852CC4A0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v1 = 0uLL;
  __p = 0;
  p_p = &__p;
  sub_240F1BAB0(&p_p);
  v4 = &unk_2852CC178;
  v2 = 0uLL;
  v3 = 0;
  sub_240F1A870(&p_p, "usage:");
  sub_240F1C270();
}

void sub_240F19F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
    if ((v58 & 1) == 0)
    {
LABEL_6:
      if (*(v60 - 169) < 0)
      {
        operator delete(*(v60 - 192));
      }

      __p = &a24;
      sub_240F1BAB0(&__p);
      __p = &a43;
      sub_240F1BAB0(&__p);
      a43 = &a31;
      sub_240F3693C(&a43);
      a35 = a12;
      a43 = a13;
      sub_240F1BAB0(&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (!v58)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v59);
  goto LABEL_6;
}

void sub_240F1A3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  v50 = *(v49 - 120);
  if (v50)
  {
    sub_240F1BA44(v50);
  }

  v51 = *(v49 - 136);
  if (v51)
  {
    sub_240F1BA44(v51);
  }

  *(v49 - 104) = &a49;
  sub_240F1BAB0((v49 - 104));
  JUMPOUT(0x240F1A3F4);
}

void sub_240F1A578(uint64_t a1)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  (*(*a1 + 72))(a1, v2);
  sub_240F34A94(a1);
}

uint64_t sub_240F1A600(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v6 = *a2;
  if (*a2 > 2)
  {
    if (v3 == 4)
    {
      v7 = 0uLL;
      v8 = 0;
      sub_240F36530(&v7, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    }

    else if (v3 == 3)
    {
      if (*(a2 + 31) < 0)
      {
        sub_240F23FB4(&v7, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v7 = *(a2 + 8);
        v8 = *(a2 + 24);
      }
    }
  }

  else if (v3 == 1)
  {
    LOBYTE(v7) = *(a2 + 8);
  }

  else if (v3 == 2)
  {
    *&v7 = *(a2 + 8);
  }

  if (*a1 == 4)
  {
    v9 = (a1 + 8);
    sub_240F365B8(&v9);
  }

  else if (*a1 == 3 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = v6;
  v4 = (a1 + 8);
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      *(a1 + 8) = v7;
      *(a1 + 24) = v8;
      v8 = 0;
      v7 = 0uLL;
      v9 = &v7;
      sub_240F365B8(&v9);
    }

    else if (v6 == 3)
    {
      *v4 = v7;
      *(a1 + 24) = v8;
    }
  }

  else if (v6 == 1)
  {
    *v4 = v7;
  }

  else if (v6 == 2)
  {
    *v4 = v7;
  }

  return a1;
}

char *sub_240F1A794@<X0>(char *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (result == a2)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v7 = result;
    if (result[23] < 0)
    {
      result = sub_240F23FB4(a4, *result, *(result + 1));
    }

    else
    {
      v8 = *result;
      a4->__r_.__value_.__r.__words[2] = *(result + 2);
      *&a4->__r_.__value_.__l.__data_ = v8;
    }

    for (i = v7 + 24; i != a2; i += 24)
    {
      v10 = *(a3 + 23);
      if (v10 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v10 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      std::string::append(a4, v11, v12);
      v13 = i[23];
      if (v13 >= 0)
      {
        v14 = i;
      }

      else
      {
        v14 = *i;
      }

      if (v13 >= 0)
      {
        v15 = i[23];
      }

      else
      {
        v15 = *(i + 1);
      }

      result = std::string::append(a4, v14, v15);
    }
  }

  return result;
}

void sub_240F1A854(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_240F1A870(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240F18B18();
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

uint64_t sub_240F1A928(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return a1;
}

void docopt::docopt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    v4 = *(a4 + 8);
  }

  docopt::docopt_parse();
}

void *sub_240F1AB24(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

unsigned int *sub_240F1ABDC(unsigned int *result, unsigned int a2)
{
  if (*result != a2)
  {
    v3 = result;
    sub_240F1A870(&v8, "Illegal cast to ");
    if (a2 > 4)
    {
      v4 = "unknown";
    }

    else
    {
      v4 = off_278CBCB50[a2];
    }

    std::string::append(&v8, v4);
    std::string::append(&v8, "; type is actually ");
    v5 = *v3;
    if (v5 > 4)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_278CBCB50[v5];
    }

    std::string::append(&v8, v6);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v8);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_240F1ACC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240F1ACEC@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = sub_240F1ADA8(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t sub_240F1ADA8(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240F18B18();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_240F1AE34(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_240F1AE90(exception, a1);
  __cxa_throw(exception, off_278CBCB40, MEMORY[0x277D825F0]);
}

std::logic_error *sub_240F1AE90(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_240F1AEC4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_240F1AEF8(void *a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (a2())
  {
    __p = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    sub_240F1B4F8(a3, &__p, v9, 1uLL);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v7 = a1[1];
    v6 = a1[2];
    while (v7 != v6)
    {
      (***v7)(&__p);
      sub_240F1B608(a3, *(a3 + 8), __p, v9[0], (v9[0] - __p) >> 3);
      if (__p)
      {
        v9[0] = __p;
        operator delete(__p);
      }

      v7 += 2;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_240F1B038(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 8))(v5, a2))
  {
    v5 = *v2;
    v2 += 2;
  }

  return result;
}

uint64_t sub_240F1B0A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v12 = 0uLL;
  v13 = 0;
  sub_240F1B834(&v12, *a2, a2[1], (a2[1] - *a2) >> 4);
  v10 = 0uLL;
  v11 = 0;
  sub_240F1BB50(&v10, *a3, a3[1], (a3[1] - *a3) >> 4);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      sub_240F1BC98(a2);
      *a2 = v12;
      a2[2] = v13;
      v13 = 0;
      v12 = 0uLL;
      sub_240F1BC98(a3);
      *a3 = v10;
      a3[2] = v11;
      v11 = 0;
      v10 = 0uLL;
      v8 = 1;
      goto LABEL_7;
    }

    if (((*(**v7 + 16))(*v7, &v12, &v10) & 1) == 0)
    {
      break;
    }

    v7 += 2;
  }

  v8 = 0;
LABEL_7:
  v14 = &v10;
  sub_240F1BAB0(&v14);
  *&v10 = &v12;
  sub_240F1BAB0(&v10);
  return v8;
}

void sub_240F1B1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_240F1BAB0(&a9);
  _Unwind_Resume(a1);
}

void sub_240F1B200()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Logic error: name() shouldnt be called on a BranchPattern");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

unint64_t sub_240F1B264(void *a1)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v1 = *(*(*a1 - 8) + 8);
  if ((v1 & 0x8000000000000000) != 0)
  {
    v2 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
    v3 = 5381;
    do
    {
      v1 = v3;
      v4 = *v2++;
      v3 = (33 * v3) ^ v4;
    }

    while (v4);
  }

  v6 = a1[1];
  v5 = a1[2];
  for (i = ((v1 << 6) + (v1 >> 2) + ((v5 - v6) >> 4) + 2654435769u) ^ v1; v6 != v5; i ^= (i << 6) + 2654435769u + (i >> 2) + (*(*v8 + 40))(v8))
  {
    v8 = *v6;
    v6 += 16;
  }

  return i;
}

uint64_t sub_240F1B334(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return MEMORY[0x245CD48A0](a1, 0xA1C4030951706);
}

void sub_240F1B3A0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Logic error: name() shouldnt be called on a BranchPattern");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_240F1B3FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); v2 != i; v2 += 2)
  {
    v5 = *v2;
    if (*v2)
    {
      v6 = **v5;
      v7 = __dynamic_cast(v5, &unk_2852CC938, &unk_2852CCA08, 0);
      if (v7)
      {
        (*(*v7 + 72))(v7, a2);
      }
    }

    v8 = sub_240F1BCD8(a2, v2);
    if ((v9 & 1) == 0)
    {
      v11 = v8[2];
      v10 = v8[3];
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      }

      v12 = v2[1];
      *v2 = v11;
      v2[1] = v10;
      if (v12)
      {
        sub_240F1BA44(v12);
      }
    }
  }
}

uint64_t sub_240F1B4F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240F1B56C(result, a4);
  }

  return result;
}

void sub_240F1B550(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F1B56C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_240F1B5C0(a1, a2);
  }

  sub_240F1B5A8();
}

void sub_240F1B5C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_240F1AEC4();
}

char *sub_240F1B608(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_240F1B5A8();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_240F1B5C0(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t sub_240F1B834(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240F1B8BC(result, a4);
  }

  return result;
}

void sub_240F1B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_240F1BAB0(&a9);
  _Unwind_Resume(a1);
}

void sub_240F1B8BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_240F1B8F8(a1, a2);
  }

  sub_240F1B5A8();
}

void sub_240F1B8F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_240F1AEC4();
}

void *sub_240F1B940(uint64_t a1, void *a2, void *a3, void *a4)
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
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_240F1B9C8(v7);
  return v4;
}

uint64_t sub_240F1B9C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_240F1BA00(a1);
  }

  return a1;
}

void sub_240F1BA00(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_240F1BA44(v3);
    }

    v1 -= 16;
  }
}

void sub_240F1BA44(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_240F1BAB0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240F1BB04(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240F1BB04(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_240F1BA44(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_240F1BB50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240F1B8BC(result, a4);
  }

  return result;
}

void sub_240F1BBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_240F1BAB0(&a9);
  _Unwind_Resume(a1);
}

void *sub_240F1BBD8(uint64_t a1, void *a2, void *a3, void *a4)
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
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_240F1BC60(v7);
  return v4;
}

uint64_t sub_240F1BC60(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_240F1BA00(a1);
  }

  return a1;
}

void sub_240F1BC98(uint64_t *a1)
{
  if (*a1)
  {
    sub_240F1BB04(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t **sub_240F1BCD8(void *a1, uint64_t a2)
{
  v4 = (*(**a2 + 40))();
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
    operator new();
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

  v13 = (*(*v11[2] + 40))(v11[2]);
  if (v13 != (*(**a2 + 40))())
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_240F1BFBC(uint64_t a1, size_t __n)
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

      sub_240F1C0AC(a1, prime);
    }
  }
}

void sub_240F1C0AC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_240F1AEC4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_240F1C210(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      sub_240F1BA44(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_240F1C270()
{
  std::operator+<char>();
  v0 = std::string::append(&__dst, "[^\\n]*(?=\\n?)(?:\\n[ \\t].*?(?=\\n|$))*)");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v5 = v0->__r_.__value_.__r.__words[2];
  v4 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  sub_240F1CDE8(&v2, &v4, 1);
}

void sub_240F1C5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  *(v35 - 160) = v34;
  sub_240F365B8((v35 - 160));
  sub_240F1CDA8((v35 - 224));
  _Unwind_Resume(a1);
}

void sub_240F1C690(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2815042B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2815042B8))
    {
      sub_240F28014(&unk_281504278, "(?:^|\\n)[ \\t]*(-(.|\\n)*?)(?=\\n[ \\t]*-|$)", 0);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_240F1A870(&__s1, "options:");
  sub_240F1C270();
}

void sub_240F1CB44(void (***a1)(void **__return_ptr)@<X0>, void *a2@<X8>)
{
  (**a1)(&v5);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = v5;
  v4 = v6;
  if (v5 != v6)
  {
    do
    {
      v7 = *v3;
      sub_240F30F80(a2, &v7);
      ++v3;
    }

    while (v3 != v4);
    v3 = v5;
  }

  if (v3)
  {
    v6 = v3;
    operator delete(v3);
  }
}

void sub_240F1CBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F1CC20(void (***a1)(void **__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  (**a1)(&v16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = v16;
  v4 = v17;
  if (v16 != v17)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = *(a2 + 16);
      if (v5 >= v7)
      {
        v8 = (v5 - *a2) >> 3;
        if ((v8 + 1) >> 61)
        {
          sub_240F1B5A8();
        }

        v9 = v7 - *a2;
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

        if (v11)
        {
          sub_240F1B5C0(a2, v11);
        }

        v12 = (8 * v8);
        *v12 = v6;
        v5 = (8 * v8 + 8);
        v13 = *(a2 + 8) - *a2;
        v14 = v12 - v13;
        memcpy(v12 - v13, *a2, v13);
        v15 = *a2;
        *a2 = v14;
        *(a2 + 8) = v5;
        *(a2 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v5++ = v6;
      }

      *(a2 + 8) = v5;
      ++v3;
    }

    while (v3 != v4);
    v3 = v16;
  }

  if (v3)
  {
    v17 = v3;
    operator delete(v3);
  }
}

void sub_240F1CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F1CDA8(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_240F1BA44(locale);
  }

  std::locale::~locale(this);
}

void sub_240F1CDE8(const std::locale *a1, uint64_t *a2, int a3)
{
  v5 = sub_240F1CE88(a1);
  LODWORD(v5[3].__locale_) = a3;
  *(&v5[3].__locale_ + 4) = 0u;
  *(&v5[5].__locale_ + 4) = 0u;
  HIDWORD(v5[7].__locale_) = 0;
  if (*(a2 + 23) < 0)
  {
    v6 = *a2;
    v7 = a2[1];
  }

  sub_240F1CEE8();
}

void sub_240F1CE68(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_240F1BA44(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

const std::locale *sub_240F1CE88(const std::locale *a1)
{
  v2 = MEMORY[0x245CD47F0]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  return a1;
}

void sub_240F1D0DC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_240F1D17C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_240F1DAE4(a1, a2, a3);
  if (v7 == a2)
  {
    operator new();
  }

  if (v7 != a3 && *v7 == 124)
  {
    v8 = *(a1 + 56);
    if (v7 + 1 == sub_240F1DAE4(a1, v7 + 1, a3))
    {
      operator new();
    }

    sub_240F1DB30();
  }

  return v7;
}

unsigned __int8 *sub_240F1D2B0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    sub_240F1E3EC();
  }

  if (a2 != a3)
  {
    do
    {
      v6 = v3;
      v3 = sub_240F25060(a1, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      sub_240F1E470();
    }

    if (v6 != v4)
    {
      sub_240F25008();
    }
  }

  return v4;
}

unsigned __int8 *sub_240F1D36C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_240F25740(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_240F25008();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (result + 1 != sub_240F25740(a1, result + 1, a3))
    {
      sub_240F1DB30();
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_240F1D40C(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_240F1D2B0(a1, __s, v8);
  if (v8 == a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  if (v12 != a3)
  {
    v9 = memchr(v12, 10, a3 - v12);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v12)
    {
      sub_240F1D2B0(a1, v12, v10);
      sub_240F1DB30();
    }

    operator new();
  }

  return a3;
}

unsigned __int8 *sub_240F1D574(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_240F1D36C(a1, __s, v8);
  if (v8 == a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  if (v12 != a3)
  {
    v9 = memchr(v12, 10, a3 - v12);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v12)
    {
      sub_240F1D36C(a1, v12, v10);
      sub_240F1DB30();
    }

    operator new();
  }

  return a3;
}

void sub_240F1D6DC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_240F1D7C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_240F38504(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F1D7E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F1D81C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_240F1D84C(uint64_t a1, uint64_t a2)
{
  if (sub_240F1D88C(a2, &unk_2852CC8A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240F1D88C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_240F1D8E0(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F1D94C(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F1D9D8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_240F1D9EC(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F1DA58(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

unsigned __int8 *sub_240F1DAE4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  do
  {
    v5 = a2;
    a2 = sub_240F1DC30(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned __int8 *sub_240F1DC30(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_240F1DCD8(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_240F1DEF0(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_240F1E0E4(a1, v9, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_240F1DCD8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v10 = a2[1];
          if (v10 == 66 || v10 == 98)
          {
            sub_240F1E4F4();
          }
        }
      }

      else if (v6 == 94)
      {
        sub_240F1E3EC();
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_240F1E470();
      }

      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          sub_240F1CE88(v12);
          v13 = 0u;
          v15 = 0;
          v14 = 0u;
          LODWORD(v13) = *(a1 + 24);
          sub_240F1CEE8(v12, a2 + 3, a3);
          v11 = *(a1 + 28);
          sub_240F1E588();
        }

        if (v7 == 61)
        {
          sub_240F1CE88(v12);
          v13 = 0u;
          v15 = 0;
          v14 = 0u;
          LODWORD(v13) = *(a1 + 24);
          sub_240F1CEE8(v12, a2 + 3, a3);
          v8 = *(a1 + 28);
          sub_240F1E588();
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_240F1DEF0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x3E)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          operator new();
        }

        if (v6 - 42 >= 2)
        {
          return sub_240F202F4(a1, a2, a3);
        }

LABEL_28:
        sub_240F2029C();
      }

      v8 = a2 + 1;
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && *v8 == 63 && a2[2] == 58)
        {
          ++*(a1 + 36);
          v9 = sub_240F1D17C(a1, a2 + 3, a3);
          if (v9 != a3 && *v9 == 41)
          {
            --*(a1 + 36);
            return v9 + 1;
          }
        }

        else
        {
          sub_240F20194(a1);
          v10 = *(a1 + 28);
          ++*(a1 + 36);
          v11 = sub_240F1D17C(a1, v8, a3);
          if (v11 != a3)
          {
            v12 = v11;
            if (*v11 == 41)
            {
              sub_240F2021C(a1);
              --*(a1 + 36);
              return v12 + 1;
            }
          }
        }
      }

      sub_240F1E628();
    }

    if (*a2 > 0x5Bu)
    {
      if (v6 == 92)
      {
        return sub_240F1FFD0(a1, a2, a3);
      }

      if (v6 == 123)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 == 91)
      {
        return sub_240F20078(a1, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_28;
      }
    }

    return sub_240F202F4(a1, a2, a3);
  }

  return v3;
}

unsigned __int8 *sub_240F1E0E4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *(a1 + 24) & 0x1F0;
  v7 = *a2;
  if (v7 > 0x3E)
  {
    if (v7 == 63)
    {
      v15 = a2 + 1;
      if (v6)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 == a3;
      }

      if (!v16)
      {
        *v15;
      }
    }

    else
    {
      v3 = a2;
      if (v7 != 123)
      {
        return v3;
      }

      v9 = a2 + 1;
      v10 = sub_240F24B4C(a1, a2 + 1, a3, &v22);
      if (v9 == v10)
      {
        goto LABEL_47;
      }

      if (v10 == a3)
      {
        goto LABEL_48;
      }

      v11 = *v10;
      if (v11 != 44)
      {
        if (v11 == 125)
        {
          v12 = v10 + 1;
          if (!v6 && v12 != a3)
          {
            *v12;
          }

          goto LABEL_36;
        }

LABEL_47:
        sub_240F24BEC();
      }

      v17 = v10 + 1;
      if (v10 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v17 == 125)
      {
        v18 = v10 + 2;
        if (!v6 && v18 != a3)
        {
          *v18;
        }

        goto LABEL_36;
      }

      v21 = -1;
      v20 = sub_240F24B4C(a1, v17, a3, &v21);
      if (v17 == v20 || v20 == a3 || *v20 != 125)
      {
LABEL_48:
        sub_240F24C44();
      }

      if (v21 < v22)
      {
        goto LABEL_47;
      }

      if (!v6 && v20 + 1 != a3)
      {
        v14 = v20[1] == 63;
      }
    }

LABEL_36:
    sub_240F249BC();
  }

  if (v7 == 42)
  {
    v13 = a2 + 1;
    if (v6)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == a3;
    }

    if (!v14)
    {
      *v13;
    }

    goto LABEL_36;
  }

  v3 = a2;
  if (v7 == 43)
  {
    v8 = a2 + 1;
    if (!v6 && v8 != a3)
    {
      *v8;
    }

    goto LABEL_36;
  }

  return v3;
}

void sub_240F1E628()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_240F1E680(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F1E6EC(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F1E778(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_240F1E7E0(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F1E84C(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F1E8D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_240F1E92C(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBF98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_240F1E9B8(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBF98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F1EA64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_240F1EB78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_2852CC058;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_240F1EC08(std::locale *a1)
{
  a1->__locale_ = &unk_2852CC058;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_240F1BA44(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_240F1ECA4(std::locale *a1)
{
  a1->__locale_ = &unk_2852CC058;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_240F1BA44(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x245CD48A0);
}

void sub_240F1ED60(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21 = 0;
  *&v22 = v5;
  *(&v22 + 1) = v5;
  v23 = 0;
  sub_240F1F30C(&__p, v4, &v22);
  v24 = v6;
  v25 = v6;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = v6;
  v29 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_240F1EF5C(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
  }

  while (v11 > v14++);
LABEL_11:
  v20 = v10;
  operator delete(v10);
}

void sub_240F1EEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_240F1EEE8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_240F1F30C(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_240F1EF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_240F1F514(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_240F1F5F0((v13 - 64), *(a1 + 28), &v40);
  sub_240F1F62C((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_240F1F65C();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_240F1FE18(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_240F1FE98(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_240F1F514(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_240F1F6B4();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_240F1F9D4(&v42, (v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_240F1FF48(v36);
  return v24;
}

void sub_240F1F2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_240F1F5AC(&a11);
  a11 = v16 - 112;
  sub_240F1FF48(&a11);
  _Unwind_Resume(a1);
}

char *sub_240F1F30C(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_240F1F470(a1, v9);
    }

    sub_240F1B5A8();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_240F1F470(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_240F1F4BC(a1, a2);
  }

  sub_240F1B5A8();
}

void sub_240F1F4BC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240F1AEC4();
}

uint64_t sub_240F1F514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_240F1F70C(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_240F1F5AC(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_240F1F5F0(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_240F1FB34(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_240F1F62C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_240F1FCBC(a1, a2 - v2);
  }
}

void sub_240F1F65C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_240F1F6B4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t sub_240F1F70C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_240F1B5A8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_240F1F884(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_240F1F8DC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_240F1FAB8(&v16);
  return v15;
}

void sub_240F1F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_240F1FAB8(va);
  _Unwind_Resume(a1);
}

void sub_240F1F884(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240F1AEC4();
}

uint64_t sub_240F1F8DC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_240F1F9D4(a1, v5);
      v5 += 12;
    }
  }

  return sub_240F1FA2C(v11);
}

void sub_240F1F9D4(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t sub_240F1FA2C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_240F1FA64(a1);
  }

  return a1;
}

void sub_240F1FA64(uint64_t *a1)
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
      v3 -= 12;
      sub_240F1F9D4(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_240F1FAB8(void **a1)
{
  sub_240F1FAEC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F1FAEC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    sub_240F1F9D4(v4, (i - 96));
  }
}

void sub_240F1FB34(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_240F1B5A8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
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

    if (v10)
    {
      sub_240F1F4BC(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_240F1FCBC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_240F1B5A8();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_240F1FDD0(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
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

void sub_240F1FDD0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_240F1AEC4();
}

uint64_t sub_240F1FE18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240F1F470(result, a4);
  }

  return result;
}

void sub_240F1FE7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240F1FE98(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240F1FF0C(result, a4);
  }

  return result;
}

void sub_240F1FEF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F1FF0C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_240F1FDD0(a1, a2);
  }

  sub_240F1B5A8();
}

void sub_240F1FF48(void ***a1)
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
        v4 -= 12;
        sub_240F1F9D4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_240F1FFD0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      sub_240F2045C();
    }

    v7 = sub_240F204B4(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_240F2056C(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = sub_240F2063C(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_240F20078(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_240F21714();
    }

    sub_240F22AE8();
  }

  return a2;
}

uint64_t sub_240F20194(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_240F2021C(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_240F2029C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_240F202F4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_240F20928(a1);
    }
  }

  return a2;
}

void *sub_240F20364(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F203D0(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

void sub_240F2045C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_240F204B4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a3 != a2)
  {
    v4 = *a2;
    v5 = v4 - 48;
    if (v4 == 48)
    {
      sub_240F20928(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        ++v6;
        v5 = v7 + 10 * v5 - 48;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_240F20AC0(a1);
        }
      }

LABEL_13:
      sub_240F20A68();
    }
  }

  return a2;
}

unsigned __int8 *sub_240F2056C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_240F21714();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_240F21714();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_240F21714();
  }

  return a2;
}

char *sub_240F2063C(uint64_t a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          goto LABEL_68;
        }

        v9 = this;
        v8 = 12;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_63;
        }

        if (!this)
        {
          goto LABEL_68;
        }

        v9 = this;
        v8 = 10;
      }
    }

    else
    {
      if (v5 != 48)
      {
        if (v5 == 99)
        {
          v4 = (a2 + 1);
          if (a2 + 1 == a3)
          {
            goto LABEL_70;
          }

          if (*v4 < 65)
          {
            goto LABEL_70;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_70;
          }

          v8 = v7 & 0x1F;
          if (this)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v5 == 95)
        {
          goto LABEL_70;
        }

LABEL_63:
        if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_70;
        }

        v8 = *a2;
        if (this)
        {
LABEL_66:
          v9 = this;
          goto LABEL_67;
        }

LABEL_68:
        sub_240F20928(a1);
      }

      if (!this)
      {
        goto LABEL_68;
      }

      v9 = this;
      v8 = 0;
    }

LABEL_67:
    std::string::operator=(v9, v8);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (!this)
      {
        goto LABEL_68;
      }

      v9 = this;
      v8 = 13;
    }

    else
    {
      if (v5 != 116)
      {
        goto LABEL_63;
      }

      if (!this)
      {
        goto LABEL_68;
      }

      v9 = this;
      v8 = 9;
    }

    goto LABEL_67;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_41;
      }

      goto LABEL_63;
    }

    if (!this)
    {
      goto LABEL_68;
    }

    v9 = this;
    v8 = 11;
    goto LABEL_67;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_70;
  }

  v10 = a2[1];
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
  {
    goto LABEL_70;
  }

  v4 = (a2 + 2);
  if (a2 + 2 == a3)
  {
    goto LABEL_70;
  }

  v11 = *v4;
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6)
    {
      goto LABEL_70;
    }

    v12 = -87;
  }

  v6 = 16 * (v12 + v11);
LABEL_41:
  if (v4 + 1 == a3)
  {
    goto LABEL_70;
  }

  v13 = v4[1];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6)
    {
      goto LABEL_70;
    }

    v14 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_70;
  }

  v15 = v4[2];
  v16 = -48;
  if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
  {
    goto LABEL_51;
  }

  v15 |= 0x20u;
  if ((v15 - 97) >= 6)
  {
LABEL_70:
    sub_240F2045C();
  }

  v16 = -87;
LABEL_51:
  if (!this)
  {
    sub_240F20928(a1);
  }

  std::string::operator=(this, v16 + v15 + 16 * (v14 + v6 + v13));
  v4 += 3;
  return v4;
}

void sub_240F20928(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_240F20A68()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_240F20AC0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_240F20BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2852CBE78;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_240F20C7C(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_2852CBF38;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_240F38504(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_240F20CBC(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBE78;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_240F20D48(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBE78;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F20DF4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_240F20E88(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBDE8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_240F20F14(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBDE8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F20FC0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_240F21008(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F21074(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F21100(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_240F21148(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBF68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_240F211D4(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBF68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F21280(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_240F2139C(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBEA8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_240F21428(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBEA8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F214D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_240F21560(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F215CC(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

unsigned int *sub_240F21658(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_240F20A68();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_240F217A8(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_240F229F8(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_240F229F8(a1 + 40, &v7);
}

uint64_t sub_240F21844(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_2852CBE48;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_240F21984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_240F365B8(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_240F22318(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_240F21A20(std::locale *a1)
{
  sub_240F2243C(a1);

  JUMPOUT(0x245CD48A0);
}

void sub_240F21A58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v35 = 0;
    v36 = *(a1 + 168);
    goto LABEL_80;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_57;
  }

  v111 = *v4;
  v6 = v4[1];
  v112 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v111 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v112 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_240F2268C(a1 + 16, &v111, &v113, &__p);
  if ((v110 & 0x80000000) == 0)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_57:
    v36 = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v109;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v111 != *(v10 - 1) || v112 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    p_p = &__p;
    sub_240F22524(a1 + 16, &v111, &v113);
    v13 = *(a1 + 88);
    v14 = v110;
    v15 = *(a1 + 96) - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = v110;
      if (v110 >= 0)
      {
        v17 = v110;
      }

      else
      {
        v17 = v109;
      }

      if (v110 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = (v13 + 47);
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_164;
        }
      }

      v34 = 5;
LABEL_164:
      v14 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_195;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v85 = 0;
    goto LABEL_197;
  }

  sub_240F228E8(a1 + 16, &v111, &v113, &__p);
  v86 = *(a1 + 136);
  v87 = v110;
  v88 = *(a1 + 144) - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = v110;
    }

    else
    {
      v90 = v109;
    }

    if (v110 >= 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p;
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      v95 = *(v86 + 23);
      v96 = v95;
      if ((v95 & 0x80u) != 0)
      {
        v95 = *(v86 + 8);
      }

      if (v90 == v95)
      {
        v97 = v96 >= 0 ? v86 : *v86;
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      v86 += 24;
      if (!--v92)
      {
        goto LABEL_192;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_193:
      operator delete(__p);
    }
  }

  else
  {
    v94 = 0;
LABEL_192:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_193;
    }
  }

  if (!v94)
  {
LABEL_197:
    if (v111 < 0)
    {
      v101 = *(a1 + 164);
    }

    else
    {
      v98 = *(a1 + 160);
      v99 = *(*(a1 + 24) + 16);
      v100 = *(v99 + 4 * v111);
      if (((v100 & v98) != 0 || v111 == 95 && (v98 & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((*(v99 + 4 * v112) & v98) != 0 || (v98 & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      v101 = *(a1 + 164);
      if ((v100 & v101) != 0 || v111 == 95 && (v101 & 0x80) != 0)
      {
LABEL_214:
        v36 = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v112) & v101) == 0)
      {
        v36 = 1;
        if (v112 != 95 || (v101 & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    v36 = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  v36 = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = **(a2 + 16);
  v111 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v38) = (*(**(a1 + 24) + 40))(*(a1 + 24), v38);
    v111 = v38;
  }

  v39 = *(a1 + 40);
  v40 = *(a1 + 48) - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = *(a1 + 164);
  if (v42 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v38 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v38) & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    v44 = *(a1 + 72);
    v45 = memchr(*(a1 + 64), v38, v44 - *(a1 + 64));
    v46 = !v45 || v45 == v44;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      v36 = 1;
      goto LABEL_80;
    }
  }

  v50 = *(a1 + 88);
  v51 = *(a1 + 96);
  if (v50 != v51)
  {
    if (*(a1 + 170) == 1)
    {
      sub_240F22524(a1 + 16, &v111, &v112);
      v50 = *(a1 + 88);
      v51 = *(a1 + 96);
    }

    else
    {
      v110 = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = v110;
      v106 = v35;
      v102 = v36;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = v110;
      }

      else
      {
        v54 = v109;
      }

      if (v110 >= 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p;
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = (v50 + 47);
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          v36 = v102;
          goto LABEL_128;
        }
      }

      v36 = 1;
LABEL_128:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_130:
        if (v59)
        {
          goto LABEL_80;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v59 = 0;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_157;
  }

  v72 = &__p;
  sub_240F228E8(a1 + 16, &v111, &v112, &__p);
  v73 = *(a1 + 136);
  v74 = *(a1 + 144) - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = v110;
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = v110;
  }

  else
  {
    v76 = v109;
  }

  if (v110 < 0)
  {
    v72 = __p;
  }

  if (v75 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = *(v73 + 23);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = *(v73 + 8);
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : *v73;
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    v73 += 24;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  v36 = 1;
LABEL_154:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_155:
    operator delete(__p);
  }

LABEL_156:
  if (v79)
  {
    goto LABEL_80;
  }

LABEL_157:
  v83 = *(a1 + 160);
  if ((v111 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v111) & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  v36 |= v84;
LABEL_80:
  if (*(a1 + 168) == (v36 & 1))
  {
    v48 = 0;
    v49 = -993;
  }

  else
  {
    *(a2 + 16) += v35;
    v48 = *(a1 + 8);
    v49 = -995;
  }

  *a2 = v49;
  *(a2 + 80) = v48;
}

void sub_240F22288(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_240F222E4(exception, a1);
  __cxa_throw(exception, off_278CBCB48, MEMORY[0x277D825F8]);
}

std::logic_error *sub_240F222E4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_240F22318(void ***a1)
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
        v4 -= 48;
        sub_240F223A0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240F223A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_240F223F8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *sub_240F2243C(std::locale *a1)
{
  a1->__locale_ = &unk_2852CBE48;
  v7 = a1 + 17;
  sub_240F365B8(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_240F22318(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2852CBF38;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_240F22524(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_240F22838(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_240F225C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_240F225DC(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240F18B18();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_240F2268C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_240F22838(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_240F22804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_240F22838(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240F18B18();
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

void sub_240F228E8(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_240F22838(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_240F229DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F229F8(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_240F1B5A8();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_240F22AE8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_240F22B40(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v23, 0, sizeof(v23));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = sub_240F230C8(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = sub_240F22F00(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v4 = sub_240F23180(a1, a2 + 2, a3, &v23);
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v4 = sub_240F23388(a1, v4 + 1, a3, &v23);
        }

        else
        {
          v4 = sub_240F23264(a1, v4 + 1, a3, &v23, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v23, v12);
    ++v4;
  }

LABEL_16:
  if (v4 != a3)
  {
    v13 = *v4;
    if (v13 != 93)
    {
      v15 = v4 + 1;
      if (v4 + 1 != a3 && v13 == 45 && *v15 != 93)
      {
        memset(&v22, 0, sizeof(v22));
        v4 += 2;
        if (v15 + 1 != a3 && *v15 == 91 && *v4 == 46)
        {
          v16 = sub_240F23180(a1, v15 + 2, a3, &v22);
LABEL_55:
          v4 = v16;
          goto LABEL_56;
        }

        if ((v11 | 0x40) == 0x40)
        {
          LODWORD(v15) = *v15;
          if (v15 == 92)
          {
            if (v11)
            {
              v16 = sub_240F23388(a1, v4, a3, &v22);
            }

            else
            {
              v16 = sub_240F23264(a1, v4, a3, &v22, v6);
            }

            goto LABEL_55;
          }
        }

        else
        {
          LOBYTE(v15) = *v15;
        }

        std::string::operator=(&v22, v15);
LABEL_56:
        v21 = v23;
        memset(&v23, 0, sizeof(v23));
        __p = v22;
        memset(&v22, 0, sizeof(v22));
        sub_240F23568(v6, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        goto LABEL_41;
      }
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_)
    {
      if (v23.__r_.__value_.__l.__size_ != 1)
      {
        v14 = v23.__r_.__value_.__r.__words[0];
LABEL_40:
        sub_240F23968(v6, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
        goto LABEL_41;
      }

      v14 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v23.__r_.__value_.__s + 23))
  {
    v14 = &v23;
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_40;
    }

LABEL_25:
    sub_240F217A8(v6, v14->__r_.__value_.__s.__data_[0]);
  }

LABEL_41:
  v17 = 1;
LABEL_42:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    return v4;
  }

  return v6;
}

void sub_240F22E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_240F22F00(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v22 = 23869;
  LOBYTE(__p[0]) = 0;
  v8 = sub_240F23A9C(a2, a3, &v22, &v23);
  if (v8 == a3)
  {
    sub_240F22AE8();
  }

  v9 = v8;
  sub_240F23B18(a1, a2, v8, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_7;
    }

LABEL_27:
    sub_240F23A44();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_27;
  }

  v11 = v19;
LABEL_7:
  sub_240F23CC4(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_240F23DD4((a4 + 136), __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      sub_240F23968(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_240F23A44();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      sub_240F217A8(a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v9 + 2;
}

void sub_240F23090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_240F230C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  strcpy(v12, ":]");
  v8 = sub_240F23A9C(a2, a3, v12, &v12[2]);
  if (v8 == a3)
  {
    sub_240F22AE8();
  }

  v9 = v8;
  v10 = sub_240F2419C(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    sub_240F24144();
  }

  *(a4 + 160) |= v10;
  return v9 + 2;
}

unsigned __int8 *sub_240F23180(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v16[1] = 0;
  v8 = sub_240F23A9C(a2, a3, &v15, v16);
  if (v8 == a3)
  {
    sub_240F22AE8();
  }

  v9 = v8;
  sub_240F23B18(a1, a2, v8, &v13);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    sub_240F23A44();
  }

  return v9 + 2;
}

char *sub_240F23264(uint64_t a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_240F2045C();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return sub_240F2063C(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        sub_240F217A8(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return sub_240F2063C(a1, a2, a3, this);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      return sub_240F2063C(a1, a2, a3, this);
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_240F24270(a5, 95);
    return a2 + 1;
  }

  return sub_240F2063C(a1, a2, a3, this);
}

unsigned __int8 *sub_240F23388(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_47:
    sub_240F2045C();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v7 = 7;
          goto LABEL_31;
        }

        goto LABEL_44;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v7 = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        goto LABEL_44;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v7 = 12;
        goto LABEL_31;
      }

      goto LABEL_44;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v7 = 10;
        goto LABEL_31;
      }

      goto LABEL_44;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v7 = 13;
          goto LABEL_31;
        }

        goto LABEL_44;
      case 't':
        if (this)
        {
          v6 = this;
          v7 = 9;
          goto LABEL_31;
        }

        goto LABEL_44;
      case 'v':
        if (this)
        {
          v6 = this;
          v7 = 11;
          goto LABEL_31;
        }

LABEL_44:
        sub_240F20928(a1);
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_47;
  }

  v8 = v5 - 48;
  v12 = a2 + 1;
  if (a2 + 1 == a3)
  {
LABEL_41:
    v12 = a3;
    goto LABEL_42;
  }

  if ((*v12 & 0xF8) == 0x30)
  {
    v8 = *v12 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v9 = a2[2];
      v10 = v9 & 0xF8;
      v11 = v9 + 8 * v8 - 48;
      if (v10 == 48)
      {
        v12 = a2 + 3;
      }

      else
      {
        v12 = a2 + 2;
      }

      if (v10 == 48)
      {
        v8 = v11;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_42:
  if (!this)
  {
    sub_240F20928(a1);
  }

  std::string::operator=(this, v8);
  return v12;
}

void sub_240F23568(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_240F2446C(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_240F2446C(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_240F2430C((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_240F24524();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_240F2430C((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_240F23968(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_240F24650(v6, v7);
}

void sub_240F23A44()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_240F23A9C(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void sub_240F23B18(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_240F22838(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_240F23C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F23CC4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_240F22838(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_240F23DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240F23DD4(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_240F23E74(a1, a2);
  }

  else
  {
    sub_240F23E14(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_240F23E14(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_240F23FB4(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_240F23E74(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_240F1B5A8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_240F24058(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_240F23FB4(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_240F240B0(&v17);
  return v11;
}

void sub_240F23FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240F240B0(va);
  _Unwind_Resume(a1);
}

void *sub_240F23FB4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_240F18B18();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_240F24058(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240F1AEC4();
}

uint64_t sub_240F240B0(uint64_t a1)
{
  sub_240F240E8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F240E8(uint64_t a1, void **a2)
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

void sub_240F24144()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t sub_240F2419C(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_240F22838(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_240F24254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F24270(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_240F229F8(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_240F229F8(a1 + 64, &v7);
}

void **sub_240F2430C(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_240F1B5A8();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_240F2457C(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = result[1] - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_240F245D4(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = (v4 + 48);
  }

  v3[1] = v8;
  return result;
}

void sub_240F2446C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_240F22838(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_240F24508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F24524()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_240F2457C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_240F1AEC4();
}

void **sub_240F245D4(void **a1)
{
  sub_240F24608(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F24608(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_240F223A0(v4, i - 48);
  }
}

void sub_240F24650(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_240F1B5A8();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_240F24720(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void sub_240F24720(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_240F1AEC4();
}

void *sub_240F24764(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F247D0(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F2485C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_240F2488C(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F248F8(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F24984(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_240F24B4C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_240F24BEC();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          if (++a2 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return a2;
}

void sub_240F24BEC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_240F24C44()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_240F24CA0(void *a1)
{
  sub_240F24DF4(a1);

  JUMPOUT(0x245CD48A0);
}

unsigned int *sub_240F24CD8(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_240F24EA8(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_240F24D88(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_240F24EA8(result, a3);
  }

  return result;
}

void sub_240F24DBC(void *a1)
{
  sub_240F24DF4(a1);

  JUMPOUT(0x245CD48A0);
}

void *sub_240F24DF4(void *a1)
{
  *a1 = &unk_2852CBF08;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2852CBF38;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_240F24EA8(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_240F24F10(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_240F24F28(void *a1)
{
  sub_240F24DF4(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F24F6C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_240F24FA8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_240F24FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = sub_240F25060(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

void sub_240F25008()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CD4660](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_240F25060(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_240F250FC(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v10 = (*(a1 + 28) + 1);

  return sub_240F25204(a1, v8, a3);
}

unsigned __int8 *sub_240F250FC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = sub_240F253D0(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 1 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = *(a2 + 1);
  if (v8 == 40)
  {
    v9 = a2 + 2;
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    sub_240F20194(a1);
    v11 = *(a1 + 28);
    v12 = sub_240F24FBC(a1, v9, v3);
    if (v12 != v3)
    {
      if (v12 + 1 == v3 || *v12 != 92)
      {
        goto LABEL_23;
      }

      if (v12[1] == 41)
      {
        v3 = (v12 + 2);
      }

      else
      {
        v3 = v12;
      }
    }

    if (v3 != v12)
    {
      sub_240F2021C(a1);
      return v3;
    }

LABEL_23:
    sub_240F1E628();
  }

  v3 = a2 + 2;
  if (!sub_240F256E0(a1, v8))
  {
    return v7;
  }

  return v3;
}

unsigned __int8 *sub_240F25204(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_240F249BC();
    }

    v6 = a3;
    if (a2 + 1 != a3 && v4 == 92)
    {
      v7 = a2[1] == 123 ? a2 + 2 : a2;
      if (v7 != a2)
      {
        v13 = 0;
        v8 = sub_240F24B4C(a1, v7, a3, &v13);
        if (v8 == v7)
        {
          goto LABEL_32;
        }

        if (v8 != v6)
        {
          v9 = *v8;
          if (v9 == 44)
          {
            v12 = -1;
            v10 = sub_240F24B4C(a1, v8 + 1, v6, &v12);
            if (v10 != v6)
            {
              if (v10 + 1 == v6 || *v10 != 92)
              {
                goto LABEL_31;
              }

              if (v10[1] == 125)
              {
                v6 = v10 + 2;
              }

              else
              {
                v6 = v10;
              }
            }

            if (v6 != v10)
            {
              if (v12 == -1 || v12 >= v13)
              {
                goto LABEL_30;
              }

LABEL_32:
              sub_240F24BEC();
            }
          }

          else if (v8 + 1 != v6 && v9 == 92)
          {
            v11 = (v8[1] == 125 ? v8 + 2 : v8);
            if (v8 != v11)
            {
LABEL_30:
              sub_240F249BC();
            }
          }
        }

LABEL_31:
        sub_240F24C44();
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_240F253D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_240F254C0(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_240F25530(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_240F20078(a1, a2, a3);
}

unsigned __int8 *sub_240F254C0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
    {
      sub_240F20928(a1);
    }
  }

  return a2;
}

_BYTE *sub_240F25530(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_240F20928(a1);
    }
  }

  return a2;
}

void *sub_240F255A8(void *a1)
{
  *a1 = &unk_2852CBF38;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_240F25614(void *a1)
{
  *a1 = &unk_2852CBF38;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F256A0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_240F256E0(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_240F20AC0(a1);
    }

    sub_240F20A68();
  }

  return 0;
}

unsigned __int8 *sub_240F25740(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_240F257A0(a1, a2, a3);
  if (v6 == a2)
  {
    sub_240F25008();
  }

  do
  {
    v7 = v6;
    v6 = sub_240F257A0(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *sub_240F257A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_240F258E4(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_240F1E470();
      case '(':
        sub_240F20194(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_240F1D36C(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_240F1E628();
        }

        sub_240F2021C(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_240F1E3EC();
    }
  }

  if (v9 == a2)
  {
    return a2;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_240F1E0E4(a1, v9, a3);
}

unsigned __int8 *sub_240F258E4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_240F259D4(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_240F25A60(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_240F20078(a1, a2, a3);
}

unsigned __int8 *sub_240F259D4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_240F20928(a1);
  }

  return a2;
}

unsigned __int8 *sub_240F25A60(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
    if (!v5 || (v4 - 123) < 3)
    {
      sub_240F20928(a1);
    }

    if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      return sub_240F23388(a1, a2 + 1, a3, 0);
    }

    else if (sub_240F256E0(a1, v4))
    {
      v3 += 2;
    }
  }

  return v3;
}

uint64_t sub_240F25B1C(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *__p = 0u;
    memset(v17, 0, sizeof(v17));
    v11 = sub_240F26004(v9, v8, v10, __p, v5 | 0x80u);
    sub_240F261D0(v3, v8, v10, __p, (v5 & 0x800) != 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v14 = sub_240F26004(v13, v7, v12, __p, v4 | 0x860u);
  sub_240F261D0(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_240F25CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_240F25D00(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_240F25D9C(v4, v7) == 0;
  }

  return v10;
}

uint64_t sub_240F25D9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_240F22838(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_240F22838(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_240F25EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240F25ED4(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_240F1B5A8();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v18[4] = result;
    if (v11)
    {
      sub_240F24058(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_240F240B0(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_240F26004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_240F1EEE8(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_240F26354(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_240F1F30C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_240F26354(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_240F1F30C(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_240F1F30C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_240F26354(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_240F261D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_240F27D58(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_240F26354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_240F1EF5C(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_240F268C4(a1, a2, a3, a4, a5, a6);
  }

  return sub_240F26374(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_240F26374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  sub_240F26DB0(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_240F1F62C((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      sub_240F1F65C();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_240F26F3C(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        sub_240F26EB4(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_240F1F9D4(&v59, v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_240F26EB4(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      sub_240F1FE18(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      sub_240F1FE98(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      sub_240F26DB0(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_240F1F6B4();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_240F278F4(&v59);
  return v49;
}

uint64_t sub_240F268C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v48 = a3;
  *(&v48 + 1) = a3;
  v49 = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  sub_240F1F514(&v53, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_240F1F5F0(v13 - 8, *(a1 + 28), &v48);
  sub_240F1F62C(v54 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v54;
  *(v54 - 2) = v6;
  v18 = a3 - a2;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      sub_240F1F65C();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          sub_240F1FE18(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          sub_240F1FE98(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          sub_240F1F514(&v53, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_240F1F6B4();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v54 - 12;
        sub_240F1F9D4(&v53, v54 - 12);
        v54 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v50 = *v22;
        *&v50[16] = v27;
        if (v50 != v22)
        {
          sub_240F27AA8(&v50[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_240F27C34(v52, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v52[3] + 5) = *(v17 - 11);
        v52[3] = v28;
        v14 = v26;
      }

      v29 = v54;
      if (v14 == v18)
      {
        v30 = v53;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_240F1F9D4(&v53, v29);
        }

        v54 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v54 - 12;
        sub_240F1F9D4(&v53, v54 - 12);
        v54 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v54;
  }

  while (v53 != v54);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v37 = (*&v50[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  sub_240F1FF48(v50);
  return v41;
}

void sub_240F26D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_240F1F5AC(&a11);
  sub_240F1F5AC(&a27);
  a27 = v27 - 120;
  sub_240F1FF48(&a27);
  _Unwind_Resume(a1);
}

__n128 sub_240F26DB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_240F27030(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_240F26EB4(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_240F1F9D4(a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_240F2762C(a1, 1);
}

int64x2_t sub_240F26F3C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_240F276A4(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_240F3A100);
  a1[2] = result;
  return result;
}

void *sub_240F27030(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_240F1B5C0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_240F27204(a1, &v10);
}

void sub_240F271B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_240F27204(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_240F1B5C0(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_240F2730C(const void **result, void *a2)
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

      sub_240F1B5C0(result, v9);
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

void *sub_240F27418(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_240F1B5C0(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_240F27520(const void **result, void *a2)
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

      sub_240F1B5C0(result[4], v9);
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

uint64_t sub_240F2762C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **sub_240F276A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_240F1B5C0(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_240F2730C(a1, v11);
}

void sub_240F278A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240F278F4(void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_240F1F9D4(a1, v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_240F27A58(a1);
}

uint64_t sub_240F27A58(uint64_t a1)
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

_BYTE *sub_240F27AA8(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      sub_240F1F470(a1, v11);
    }

    sub_240F1B5A8();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_240F27C34(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240F1FF0C(a1, v10);
    }

    sub_240F1B5A8();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}