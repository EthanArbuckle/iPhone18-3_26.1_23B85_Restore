unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v10 = v8;
  if (v6 == 19)
  {
    memset(&v15, 0, sizeof(v15));
    std::string::push_back(&v15, 34);
    std::__formatter::__escape[abi:ne200100]<char>(&v15, a2, a3, 1);
    std::string::push_back(&v15, 34);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, size, v7, v9, v10);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return v13;
  }

  else
  {

    return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }
}

void sub_223BA06A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v41, a2);
  v19 = std::locale::use_facet(&v41, MEMORY[0x277D826C0]);
  v20 = v18 - v13;
  std::locale::~locale(&v41);
  (v19->__vftable[1].__on_zero_shared)(&v41, v19);
  if ((v43 & 0x8000000000000000) != 0)
  {
    locale = v41.__locale_;
    v22 = v42;
    if (v42 && v20 > *v41.__locale_)
    {
      v23 = v41.__locale_;
      goto LABEL_19;
    }

    operator delete(v41.__locale_);
LABEL_38:
    v35 = HIDWORD(a3);
    if ((a3 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v8, v13 - v8);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v13 - v8)
      {
        LODWORD(v37) = v13 - v8;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v8 = v13;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v34 = *a2;
    v38 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18, *a2, v38 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18 - v8, *a2, v38 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v18 - v8);
    }

    return v34;
  }

  if (!v43 || v20 <= SLOBYTE(v41.__locale_))
  {
    goto LABEL_38;
  }

  locale = &v41;
  v23 = v41.__locale_;
  v22 = v42;
LABEL_19:
  v24 = *a2;
  memset(&__p, 0, sizeof(__p));
  v25 = v23 + v22;
  if (v43 >= 0)
  {
    v25 = &v41 + v43;
  }

  v26 = *locale;
  v27 = v20 - *locale;
  if (v27 >= 1)
  {
    v28 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (locale == v28)
      {
        v26 = *locale;
      }

      else
      {
        v29 = locale + 1;
        v30 = locale + 1;
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
        locale = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v19->__vftable[1].~facet_0)(v19);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v8, v13, v18, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v41.__locale_);
  }

  return v34;
}

void sub_223BA09E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v16 = a1;
      v10 = a2 - a1;
      v11 = a2;
      v12 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      a2 = v11;
      if (v10 >= v12)
      {
        a2 = &v16[v12];
        v13 = (a2 - 1);
        do
        {
          *v13-- = a0123456789abcd[v4 % a4];
          v14 = v4 >= a4;
          v4 /= a4;
        }

        while (v14);
      }

      return a2;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (std::__itoa::__pow10_64[v7] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 >= 0x2540BE400)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return a2;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x223DF4200](&v6);
    v4 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v4, &v6);
    }

    else
    {
      std::locale::locale(v4, &v6);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v6);
  }

  return std::locale::locale(this, (a2 + 32));
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
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
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, v16);
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
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, v14 - v18, 48);
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
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
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

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v11 = v9 >> 1;
        v9 -= v9 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v11 = 0;
LABEL_9:
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v12, __src, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
      return a3;
    }

    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  return a3;
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v10 = v8 >> 1;
        v8 -= v8 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v10 = 0;
LABEL_9:
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  v6 = *(result + 32);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 - v7 >= v5)
    {
      v9 = a3 - a2;
    }

    else
    {
      v9 = *v6 - v7;
    }

    v6[1] = v7 + v5;
    if (v8 <= v7 || v9 == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = a3 - a2;
  }

  v11 = *(result + 16);
  do
  {
    v12 = *(v4 + 8) - v11;
    if (v12 < v9 + 1)
    {
      result = (*(v4 + 24))(v4, v9 + 2);
      v11 = *(v4 + 16);
      v12 = *(v4 + 8) - v11;
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = (*v4 + v11);
      v15 = v13;
      v16 = v3;
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = v18 - 32;
        if ((v18 - 97) < 6)
        {
          v17 = v19;
        }

        *v14++ = v17;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v20 = v9 > v12;
    v9 -= v13;
  }

  while (v20);
  return result;
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
        v12 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v12 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v12 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        *(a1 + 3) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v8 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        *(a1 + 5) = std::__itoa::__digits_base_10[v8 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v8 % 0x64u];
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
        v10 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v10 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v10 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v4 = a2 % 0xF4240 % 0x2710;
        *(a1 + 3) = std::__itoa::__digits_base_10[v4 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v4 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v5 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v5];
      v11 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v11 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v11 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v5 | 0x30;
      v6 = a2 % 0x2710;
      *(a1 + 1) = std::__itoa::__digits_base_10[v6 / 0x64u];
      *(a1 + 3) = std::__itoa::__digits_base_10[v6 % 0x64u];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v9 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v9];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v9 | 0x30;
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

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  LOWORD(v2) = v2 % 0x2710;
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

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < v4 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
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

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);
    std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }

  return a3;
}

unint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v6 = a3;
  if (!a3)
  {
    return result;
  }

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
        v6 = a3 - v7 + 1;
        v8 = &a1[v7 - 1];
        goto LABEL_10;
      }
    }

    if ((a1[a3] & 0x80000000) == 0)
    {
      return a3;
    }

    v6 = 1;
  }

LABEL_10:
  v10 = &a1[a2];
  v33 = v8;
  v34 = &a1[a2];
  v11 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v33) & 0x7FFFFFFF;
  v35 = v11;
  v12 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11);
  v36 = v12;
  v37 = 0;
  v38 = 0;
  if (v12 == 3)
  {
    v13 = 2;
    goto LABEL_16;
  }

  if (v12 == 9)
  {
    v13 = 3;
LABEL_16:
    LODWORD(v37) = v13;
    goto LABEL_17;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v11))
  {
    v13 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v31 = v8 - a1;
  if (v8 != v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = v11;
      while (1)
      {
        v16 = v33;
        if (v33 == v34)
        {
          break;
        }

        v11 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v33) & 0x7FFFFFFF;
        v17 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11);
        v18 = v17;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            if (HIDWORD(v37) == 2)
            {
              if (v17 == 3)
              {
                HIDWORD(v37) = 0;
                goto LABEL_44;
              }
            }

            else if (HIDWORD(v37) == 1)
            {
              if (v17 == 2)
              {
                goto LABEL_44;
              }

              if (v17 == 13)
              {
LABEL_40:
                HIDWORD(v37) = 2;
                goto LABEL_44;
              }
            }

            else
            {
              if (v17 == 13)
              {
                goto LABEL_40;
              }

              if (v17 == 2)
              {
                HIDWORD(v37) = 1;
                goto LABEL_44;
              }
            }

LABEL_45:
            LODWORD(v37) = 0;
            goto LABEL_46;
          }

          LODWORD(v37) = 0;
          if (v17 == 9)
          {
            goto LABEL_44;
          }

LABEL_46:
          v20 = std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](&v35, v11, v18);
          v35 = v11;
          v36 = v18;
          if (v20)
          {
            break;
          }
        }

        else
        {
          if (!v37)
          {
            goto LABEL_46;
          }

          v19 = std::__indic_conjunct_break::__get_property[abi:ne200100](v11);
          if (v19 == 3)
          {
            goto LABEL_45;
          }

          if (!v38)
          {
            if (v19 == 1)
            {
              goto LABEL_44;
            }

            if (v19 == 2)
            {
              v38 = 1;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          if ((v19 - 1) >= 2)
          {
            v38 = 0;
          }

LABEL_44:
          v35 = v11;
          v36 = v18;
        }
      }

      if (v15 - 262142 < 0xFFFC1102)
      {
        goto LABEL_57;
      }

      v21 = &std::__width_estimation_table::__entries[abi:ne200100];
      v22 = 107;
      do
      {
        v23 = v22 >> 1;
        v24 = &v21[v22 >> 1];
        v26 = *v24;
        v25 = v24 + 1;
        v22 += ~(v22 >> 1);
        if (((v15 << 14) | 0x3FFF) >= v26)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      while (v22);
      if (v21 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
LABEL_57:
        v28 = 1;
      }

      else
      {
        v27 = (*(v21 - 1) & 0x3FFF) + (*(v21 - 1) >> 14) >= v15;
        v28 = 1;
        if (v27)
        {
          v28 = 2;
        }
      }

      v29 = v14 + v28;
      if (a4 || v29 <= v6)
      {
        v30 = v16 == v10 || v29 > v6;
        v14 = v29;
        if (!v30)
        {
          continue;
        }
      }

      return v31 + v14;
    }
  }

  v14 = 0;
  return v31 + v14;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

LABEL_35:
    v5 = 2147549181;
    *a1 = v1 + 1;
    return v5;
  }

  if (v2 == 3)
  {
    if (a1[1] - v1 < 3)
    {
      goto LABEL_35;
    }

    v13 = 1;
    do
    {
      v14 = v1[v13] & 0xC0;
    }

    while (v14 == 128 && v13++ != 2);
    if (v14 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v16 = *v1 & 0xF;
    *a1 = v1 + 2;
    v17 = (v16 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    if (v17 >= 0x800)
    {
      v18 = v17 | v1[2] & 0x3F;
      if ((v17 & 0xF800) == 0xD800)
      {
        return 2147549181;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    if (v2 != 4 || a1[1] - v1 < 4)
    {
      goto LABEL_35;
    }

    v6 = 1;
    do
    {
      v7 = v1[v6] & 0xC0;
    }

    while (v7 == 128 && v6++ != 3);
    if (v7 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v9 = *v1 & 7;
    *a1 = v1 + 2;
    v10 = (v9 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    v11 = v1[2];
    *a1 = v1 + 4;
    if (v10 >= 0x400)
    {
      v12 = v1[3] & 0x3F | ((v10 | v11 & 0x3F) << 6);
      if (v10 >> 10 >= 0x11)
      {
        return 2147549181;
      }

      else
      {
        return v12;
      }
    }
  }

  return v5;
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

void std::__formatter::__escape[abi:ne200100]<char>(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v23 = a2;
  v24 = &a2[a3];
  if (a3)
  {
    v5 = a2;
    v7 = 1;
    do
    {
      v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v23);
      if (v8 < 0)
      {
        v12 = v23;
        while (v5 != v12)
        {
          v13 = *v5++;
          std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v13, "\\x{");
        }

        goto LABEL_45;
      }

      v9 = v8;
      if (v8 <= 31)
      {
        switch(v8)
        {
          case 9:
            v10 = a1;
            v11 = "\\t";
            goto LABEL_43;
          case 10:
            v10 = a1;
            v11 = "\\n";
            goto LABEL_43;
          case 13:
            v10 = a1;
            v11 = "\\r";
            goto LABEL_43;
        }
      }

      else if (v8 > 38)
      {
        if (v8 == 39)
        {
          v10 = a1;
          if (!a4)
          {
            v11 = "\\'";
            goto LABEL_43;
          }

          v16 = 39;
          goto LABEL_41;
        }

        if (v8 == 92)
        {
          v10 = a1;
          v11 = "\\\";
          goto LABEL_43;
        }
      }

      else
      {
        if (v8 == 32)
        {
          v10 = a1;
          v16 = 32;
LABEL_41:
          std::string::push_back(v10, v16);
          goto LABEL_44;
        }

        if (v8 == 34)
        {
          v10 = a1;
          if (a4 == 1)
          {
            v11 = "\\"";
LABEL_43:
            std::string::append(v10, v11, 2uLL);
            goto LABEL_44;
          }

          v16 = 34;
          goto LABEL_41;
        }
      }

      if ((v8 - 917760) < 0xF0)
      {
        goto LABEL_23;
      }

      if (v8 <= 0x323AF)
      {
        v17 = &std::__escaped_output_table::__entries[abi:ne200100];
        v18 = 711;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[v18 >> 1];
          v22 = *v20;
          v21 = v20 + 1;
          v18 += ~(v18 >> 1);
          if (((v8 << 14) | 0x3FFFu) >= v22)
          {
            v17 = v21;
          }

          else
          {
            v18 = v19;
          }
        }

        while (v18);
        if (v17 == &std::__escaped_output_table::__entries[abi:ne200100] || (*(v17 - 1) & 0x3FFF) + (*(v17 - 1) >> 14) < v8)
        {
LABEL_23:
          if ((v7 & 1) == 0 || std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v8) != 2)
          {
            v14 = v23;
            if (v5 == v23)
            {
              v7 = 0;
            }

            else
            {
              do
              {
                v15 = *v5++;
                std::string::push_back(a1, v15);
                v7 = 0;
              }

              while (v5 != v14);
            }

            goto LABEL_45;
          }
        }
      }

      std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v9, "\\u{");
LABEL_44:
      v7 = 1;
LABEL_45:
      v5 = v23;
    }

    while (v23 != v24);
  }
}

void std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(std::string *this, unsigned int a2, std::string::value_type *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*a3)
  {
    v6 = (a3 + 1);
    do
    {
      std::string::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  v8 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(&v12, &v13, a2);
  if (&v12 != v8)
  {
    v9 = v8;
    v10 = &v12;
    do
    {
      std::string::push_back(this, *v10++);
    }

    while (v10 != v9);
  }

  std::string::push_back(this, 125);
  v11 = *MEMORY[0x277D85DE8];
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

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v6 = 45;
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      v6 = 43;
    }

    else
    {
      if (v7 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v6 = 32;
    }
  }

  p_src = v15;
  __src = v6;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 6;
    if (BYTE1(a2) != 18)
    {
      v9 = 0;
    }
  }

  v10 = 3;
  if (!a5)
  {
    v10 = 0;
  }

  v11 = &aInfnaninfnan[v9 + v10];
  *p_src = *v11;
  p_src[2] = v11[2];
  if ((a2 & 7) == 4)
  {
    v12 = a2 & 0xF8 | 3;
  }

  else
  {
    v12 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v12, a3, p_src - &__src + 3);
  return a1;
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v49 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_30;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v16 = *__p.__r_.__value_.__l.__data_;
    if (v49 <= v16)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_30;
    }

    v18 = *__p.__r_.__value_.__l.__data_;
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_30;
    }

    if (v49 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_30;
    }

    size = __p.__r_.__value_.__l.__size_;
    v15 = __p.__r_.__value_.__r.__words[0];
    v16 = __p.__r_.__value_.__s.__data_[0];
    p_p = &__p;
    v18 = __p.__r_.__value_.__s.__data_[0];
  }

  memset(&v50, 0, sizeof(v50));
  v19 = (v15 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v19;
  }

  v21 = v49 - v16;
  if (v49 - v16 >= 1)
  {
    v22 = (v20 - 1);
    do
    {
      std::string::push_back(&v50, v18);
      if (p_p == v22)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v23 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v24 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v25 = *v24++;
          v18 = v25;
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v23 == v22;
          }

          v23 = v24;
        }

        while (!v26);
        p_p = (v24 - 1);
      }

      v21 -= v18;
    }

    while (v21 > 0);
  }

  std::string::push_back(&v50, v18 + v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v50;
LABEL_30:
  v27 = HIDWORD(a6);
  v28 = *(a2 + 16);
  v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  v30 = a3[3] - v28 + *(a2 + 4) + v29 - (v29 != 0);
  v31 = a5 & 7;
  v32 = (a5 >> 32) - v30;
  if (a5 >> 32 <= v30)
  {
    *v48 = 0;
    v32 = 0;
    v33 = v27;
    goto LABEL_46;
  }

  if (v31 == 4)
  {
    v33 = 48;
  }

  else
  {
    v33 = v27;
  }

  if (v31 == 4)
  {
    v34 = 3;
  }

  else
  {
    v34 = a5 & 7;
  }

  if (v34 > 1)
  {
    if (v34 != 3)
    {
      *v48 = v32 - (v32 >> 1);
      v32 >>= 1;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!v34)
  {
LABEL_44:
    *v48 = 0;
    goto LABEL_46;
  }

  *v48 = (a5 >> 32) - v30;
  v32 = 0;
LABEL_46:
  if (v31 == 4 && v13 != v28)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v28);
  }

  v35 = v27 & 0xFFFFFF00 | v33;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v32, v35);
  if (v31 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_57;
    }

LABEL_60:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v49);
    goto LABEL_61;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_60;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_57:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v40);
  }

LABEL_61:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v46, v44 - v46);
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v48, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_223BA2AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = HIDWORD(a5);
  v16 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v16, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](a3, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, v15);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x223DF42B0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
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

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223DF42B0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x223DF42B0](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x223DF4280](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
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

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223DF4280](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x223DF4280](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x223DF42E0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
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

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223DF42E0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 5), 112, 3uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x223DF42E0](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
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
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      return result;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_10;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x277D85DE8];
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v11, v12);
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v14 + 5, 0, 0xAu);
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

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, __src, v15, v6, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *__src, uint64_t a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v12 = a5;
  v14 = a2;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 != 4)
  {
    if (v23)
    {
      if (v23 == 3)
      {
        v61 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }

      else
      {
        if (v23 != 7)
        {
          v62 = a8 - v19;
          v63 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
          if (v62 >= v63)
          {
            v10 = &v19[v63];
            v64 = v10 - 1;
            do
            {
              v65 = __udivti3();
              v66 = __PAIR128__(v14, v15) >= a10;
              *v64-- = a0123456789abcd[v15 - v65 * a10];
              v15 = v65;
              v14 = v67;
            }

            while (v66);
          }

LABEL_17:
          v27 = a3;
          if ((v16 & 0x40) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_38;
        }

        v61 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }
    }

    else
    {
      v61 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    v10 = v61;
    goto LABEL_17;
  }

  v25 = a8 - v19;
  if (!a2)
  {
    v27 = a3;
    if (v25 > 19 || (v28 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v28 - (std::__itoa::__pow10_64[v28] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v32 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v32 = std::__itoa::__base_10_u32[abi:ne200100](v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        v29 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v32, v15);
      }

      else
      {
        v29 = std::__itoa::__base_10_u32[abi:ne200100](v19, a1);
      }

      v10 = v29;
    }

    if ((v16 & 0x40) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_38;
  }

  if (v25 <= 38)
  {
    v26 = (1233 * (128 - __clz(a2))) >> 12;
    if (v25 < v26 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v26]) + 1)
    {
      goto LABEL_17;
    }
  }

  if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *v19 = __udivti3() | 0x30;
    v33 = __udivti3();
    v19[1] = ((1441151881 * v33) >> 57) + 48;
    *(v19 + 1) = std::__itoa::__digits_base_10[v33 % 0x5F5E100 / 0xF4240uLL];
    v34 = v33 % 0x5F5E100 % 0xF4240;
    *(v19 + 2) = std::__itoa::__digits_base_10[v34 / 0x2710uLL];
    LOWORD(v34) = v34 % 0x2710;
    *(v19 + 3) = std::__itoa::__digits_base_10[v34 / 0x64u];
    *(v19 + 4) = std::__itoa::__digits_base_10[v34 % 0x64u];
    v35 = __udivti3();
    v31 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v19 + 5, v35);
    goto LABEL_33;
  }

  v30 = __udivti3();
  if (!HIDWORD(v30))
  {
    v31 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30);
LABEL_33:
    v36 = v31;
    goto LABEL_37;
  }

  v37 = v19;
  if (v30 > 0x2540BE3FFLL)
  {
    v37 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30 / 0x2540BE400);
    v30 %= 0x2540BE400uLL;
  }

  v36 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v37, v30);
LABEL_37:
  v38 = __umodti3();
  *v36 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
  v39 = v38 / 0x2540BE400 % 0x5F5E100;
  *(v36 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
  v39 %= 0xF4240u;
  *(v36 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
  LOWORD(v39) = v39 % 0x2710;
  *(v36 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
  *(v36 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
  v10 = std::__itoa::__append10[abi:ne200100]<unsigned long long>((v36 + 9), v38 % 0x2540BE400);
  v12 = a5;
  v27 = a3;
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_64;
  }

LABEL_38:
  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v71, v27);
  v40 = std::locale::use_facet(&v71, MEMORY[0x277D826C0]);
  v41 = v10 - v19;
  std::locale::~locale(&v71);
  (v40->__vftable[1].__on_zero_shared)(&v71, v40);
  if ((v73 & 0x8000000000000000) != 0)
  {
    locale = v71.__locale_;
    v43 = v72;
    if (v72 && v41 > *v71.__locale_)
    {
      v44 = v71.__locale_;
      goto LABEL_45;
    }

    operator delete(v71.__locale_);
    v27 = a3;
LABEL_64:
    v56 = HIDWORD(a4);
    if ((v16 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v27, v11, v19 - v11);
      v57 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v19 - v11)
      {
        LODWORD(v58) = v19 - v11;
      }

      else
      {
        LODWORD(v58) = HIDWORD(a4);
      }

      v56 = (HIDWORD(a4) - v58);
      LOBYTE(v58) = 48;
      v11 = v19;
    }

    else
    {
      v58 = HIDWORD(v12);
      v57 = a4;
    }

    v55 = *v27;
    v59 = v56 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, *v27, v59 | a4 & 0xFFFF0000 | v57 | 0x700, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10 - v11, *v27, v59 | a4 & 0xFFFFFF00 | v57, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32), v10 - v11);
    }

    return v55;
  }

  if (!v73 || v41 <= SLOBYTE(v71.__locale_))
  {
    goto LABEL_64;
  }

  locale = &v71;
  v44 = v71.__locale_;
  v43 = v72;
LABEL_45:
  v45 = *a3;
  memset(&v70, 0, sizeof(v70));
  v46 = v44 + v43;
  if (v73 >= 0)
  {
    v46 = &v71 + v73;
  }

  v47 = *locale;
  v48 = v41 - *locale;
  if (v48 >= 1)
  {
    v49 = v46 - 1;
    do
    {
      std::string::push_back(&v70, v47);
      if (locale == v49)
      {
        v47 = *locale;
      }

      else
      {
        v50 = locale + 1;
        v51 = locale + 1;
        do
        {
          v52 = *v51++;
          v47 = v52;
          if (v52)
          {
            v53 = 1;
          }

          else
          {
            v53 = v50 == v49;
          }

          v50 = v51;
        }

        while (!v53);
        locale = v51 - 1;
      }

      v48 -= v47;
    }

    while (v48 > 0);
  }

  std::string::push_back(&v70, v47 + v48);
  v54 = (v40->__vftable[1].~facet_0)(v40);
  v55 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v45, v11, v19, v10, &v70, v54, a4, v12);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v73 < 0)
  {
    operator delete(v71.__locale_);
  }

  return v55;
}

void sub_223BA3C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17.__locale_);
  }

  _Unwind_Resume(exception_object);
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

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = 0;
  v6 = a3 * a3;
  v7 = a3 * a3 * a3;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v6)
    {
      return v5 | 2u;
    }

    if (__PAIR128__(a2, a1) < v7)
    {
      return v5 | 3u;
    }

    if (__PAIR128__(a2, a1) < v6 * v6)
    {
      break;
    }

    a1 = __udivti3();
    v5 += 4;
    if (__PAIR128__(a2, a1) < a3)
    {
      return v5 | 1u;
    }
  }

  return (v5 + 4);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 0xAu);
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

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
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
    goto LABEL_40;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v43, a2);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  v22 = v20 - v16;
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    v24 = v44;
    if (v44 && v22 > *v43.__locale_)
    {
      v25 = v43.__locale_;
      goto LABEL_21;
    }

    operator delete(v43.__locale_);
LABEL_40:
    v37 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v38 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v39) = v16 - v9;
      }

      else
      {
        LODWORD(v39) = HIDWORD(a3);
      }

      v37 = (HIDWORD(a3) - v39);
      LOBYTE(v39) = 48;
      v9 = v16;
    }

    else
    {
      v39 = HIDWORD(a4);
      v38 = a3;
    }

    v36 = *a2;
    v40 = v37 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, *a2, v40 | a3 & 0xFFFF0000 | v38 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, *a2, v40 | a3 & 0xFFFFFF00 | v38, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32), v20 - v9);
    }

    return v36;
  }

  if (!v45 || v22 <= SLOBYTE(v43.__locale_))
  {
    goto LABEL_40;
  }

  locale = &v43;
  v25 = v43.__locale_;
  v24 = v44;
LABEL_21:
  v26 = *a2;
  memset(&__p, 0, sizeof(__p));
  v27 = v25 + v24;
  if (v45 >= 0)
  {
    v27 = &v43 + v45;
  }

  v28 = *locale;
  v29 = v22 - *locale;
  if (v29 >= 1)
  {
    v30 = v27 - 1;
    do
    {
      std::string::push_back(&__p, v28);
      if (locale == v30)
      {
        v28 = *locale;
      }

      else
      {
        v31 = locale + 1;
        v32 = locale + 1;
        do
        {
          v33 = *v32++;
          v28 = v33;
          if (v33)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31 == v30;
          }

          v31 = v32;
        }

        while (!v34);
        locale = v32 - 1;
      }

      v29 -= v28;
    }

    while (v29 > 0);
  }

  std::string::push_back(&__p, v28 + v29);
  v35 = (v21->__vftable[1].~facet_0)(v21);
  v36 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v26, v9, v16, v20, &__p, v35, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v36;
}

void sub_223BA444C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x277D85DE8];
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, __src, v9, v7, v11);
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, __src, v13, 0, 0xAu);
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

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, __src, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *__src, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v47 = a7 - v18;
      v48 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v47 >= v48)
      {
        v9 = &v18[v48];
        v49 = (v9 - 1);
        do
        {
          *v49-- = a0123456789abcd[v14 - v14 / a9 * a9];
          v50 = v14 >= a9;
          v14 /= a9;
        }

        while (v50);
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v52, a2);
  v26 = std::locale::use_facet(&v52, MEMORY[0x277D826C0]);
  v27 = v9 - v18;
  std::locale::~locale(&v52);
  (v26->__vftable[1].__on_zero_shared)(&v52, v26);
  if ((v54 & 0x8000000000000000) != 0)
  {
    locale = v52.__locale_;
    v29 = v53;
    if (v53 && v27 > *v52.__locale_)
    {
      v30 = v52.__locale_;
      goto LABEL_26;
    }

    operator delete(v52.__locale_);
LABEL_45:
    v42 = HIDWORD(a3);
    if ((v15 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v10, v18 - v10);
      v43 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v18 - v10)
      {
        LODWORD(v44) = v18 - v10;
      }

      else
      {
        LODWORD(v44) = HIDWORD(a3);
      }

      v42 = (HIDWORD(a3) - v44);
      LOBYTE(v44) = 48;
      v10 = v18;
    }

    else
    {
      v44 = HIDWORD(a4);
      v43 = a3;
    }

    v41 = *a2;
    v45 = v42 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9, *a2, v45 | a3 & 0xFFFF0000 | v43 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9 - v10, *a2, v45 | a3 & 0xFFFFFF00 | v43, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32), v9 - v10);
    }

    return v41;
  }

  if (!v54 || v27 <= SLOBYTE(v52.__locale_))
  {
    goto LABEL_45;
  }

  locale = &v52;
  v30 = v52.__locale_;
  v29 = v53;
LABEL_26:
  v31 = *a2;
  memset(&__p, 0, sizeof(__p));
  v32 = v30 + v29;
  if (v54 >= 0)
  {
    v32 = &v52 + v54;
  }

  v33 = *locale;
  v34 = v27 - *locale;
  if (v34 >= 1)
  {
    v35 = v32 - 1;
    do
    {
      std::string::push_back(&__p, v33);
      if (locale == v35)
      {
        v33 = *locale;
      }

      else
      {
        v36 = locale + 1;
        v37 = locale + 1;
        do
        {
          v38 = *v37++;
          v33 = v38;
          if (v38)
          {
            v39 = 1;
          }

          else
          {
            v39 = v36 == v35;
          }

          v36 = v37;
        }

        while (!v39);
        locale = v37 - 1;
      }

      v34 -= v33;
    }

    while (v34 > 0);
  }

  std::string::push_back(&__p, v33 + v34);
  v40 = (v26->__vftable[1].~facet_0)(v26);
  v41 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v31, v10, v18, v9, &__p, v40, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v52.__locale_);
  }

  return v41;
}

void sub_223BA4A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = v4 * v4;
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < a2 * a2 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, const char *a2)
{
  if ((*result & 0x18) != 0)
  {
    v2 = "sign";
    goto LABEL_11;
  }

  if ((*result & 0x20) != 0)
  {
    v2 = "alternate form";
    goto LABEL_11;
  }

  if ((*result & 7) == 4)
  {
    v2 = "zero-padding";
    goto LABEL_11;
  }

  if (*(result + 8) != -1)
  {
    v2 = "precision";
LABEL_11:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a2, v2);
  }

  if (*(result + 1) >= 0x20u)
  {
    std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
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

void sub_223BA4D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_28371D358;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DF43A0);
}

uint64_t std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }

  return result;
}

void adm::graph::DSPGraphKernel::configure(adm::graph::DSPGraphKernel *this)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*this + 304))(&v6);
  v2 = *(this + 130) - 1;
  v3 = adm::graph::DSPKernel::toFloatDeinterleaved;
  v4 = adm::graph::DSPKernel::toFloatDeinterleaved;
  if (v2 < 2)
  {
    v3 = adm::graph::DSPKernel::toFloatDeinterleavedMono;
  }

  v5 = v3;
  adm::graph::DSPKernel::createConverters(this, (this + 248), &v4, &v5, v6);
  operator new();
}

void sub_223BA7088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (*(v77 - 201) < 0)
  {
    operator delete(*(v77 - 224));
  }

  if (a64 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x33F]) < 0)
  {
    operator delete(STACK[0x328]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a75.__locale_);
  }

  if (*(v77 - 225) < 0)
  {
    operator delete(*(v77 - 248));
  }

  if (a74 < 0)
  {
    operator delete(a73.__locale_);
    if ((v75 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (!v75)
  {
LABEL_26:
    for (i = 24; i != -24; i -= 24)
    {
      *(v77 - 224) = &STACK[0x240] + i;
      std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::__destroy_vector::operator()[abi:ne200100]((v77 - 224));
    }

    v80 = a36;
    a36 = 0;
    if (v80)
    {
      (*(*v80 + 8))(v80);
    }

    std::unique_ptr<adm::dsp::GraphMacroGenerator>::reset[abi:ne200100](&a35);
    (*(*a15 + 8))(a15);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v76);
  goto LABEL_26;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::StringRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_28371A8B0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_28371A8C0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t *std::unique_ptr<adm::dsp::AUDSPGraphMacroGenerator>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2);
    MEMORY[0x223DF43A0](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

uint64_t std::unique_ptr<adm::dsp::GraphMacroGenerator>::reset[abi:ne200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(result);

    JUMPOUT(0x223DF43A0);
  }

  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::__construct_at_end<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const*,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v14 = v4;
  v15 = v4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v7 = v4;
  }

  else
  {
    v6 = (a2 + 8);
    v7 = v4;
    do
    {
      v8 = v6 - 8;
      *v7 = *(v6 - 2);
      v9 = (v7 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *v6, *(v6 + 1));
        v7 = v15;
      }

      else
      {
        v10 = *v6;
        *(v7 + 24) = *(v6 + 2);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      v7 += 32;
      v15 = v7;
      v6 += 2;
    }

    while (v8 + 32 != a3);
  }

  v13 = 1;
  result = std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  *(a1 + 8) = v7;
  return result;
}

void sub_223BA79A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

void std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::function<BOOL ()(adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&)>::~function(uint64_t a1)
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

void std::__tree<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::function<BOOL ()(adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&)>,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::function<BOOL ()(adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&)>,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::destroy(*a1);
    std::__tree<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::function<BOOL ()(adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&)>,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void std::vector<unsigned long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

uint64_t std::__function::__func<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::$_0,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::$_0>,BOOL ()(adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3adm5graph6detailL20createTerminalBusMapERKNS0_19KernelConfigurationERKNS_3dsp5GraphEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic,std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic>,adm::graph::detail::createTerminalBusMap(adm::graph::KernelConfiguration const&,adm::dsp::Graph const&)::DSPGraphBusSemantic*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<adm::dsp::Graph  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN3adm3dsp5GraphEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<adm::dsp::Graph  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<adm::dsp::Graph  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

__n128 adm::dsp::GraphNamedFormatUpdater::updateNamedFormat@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void adm::dsp::AUDSPGraphNamedFormatUpdater::updateNamedFormat(uint64_t a1@<X0>, CFStringRef *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  HasPrefix = CFStringHasPrefix(*a2, @"input");
  v9 = *a2;
  if (HasPrefix)
  {
    if (v9)
    {
      CFRetain(*a2);
    }

    v10 = *(a3 + 16);
    *a4 = *a3;
    *(a4 + 16) = v10;
    *(a4 + 32) = *(a3 + 32);
    if (CFStringFind(v9, @"FixedChannelCount", 0).location != -1)
    {
LABEL_21:
      if (CFStringFind(v9, @"FixedSampleRate", 0).location == -1)
      {
        *a4 = *(a1 + 8);
        if (!v9)
        {
          return;
        }
      }

      else if (!v9)
      {
        return;
      }

      goto LABEL_35;
    }

    v11 = *(a1 + 36);
    v12 = *(a1 + 20) & 0x20;
    v13 = *(a4 + 12);
    if ((v13 & 0x20) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = *(a4 + 28);
      if (!v14)
      {
        v15 = (*(a4 + 32) + 7) >> 3;
LABEL_18:
        *(a4 + 28) = v11;
        v23 = v13 & 0xFFFFFFDF;
        if (v12)
        {
          v11 = 1;
        }

        v24 = v15 * v11;
        *(a4 + 20) = 1;
        *(a4 + 24) = v24;
        *(a4 + 12) = v23 | v12;
        *(a4 + 16) = v24;
        goto LABEL_21;
      }
    }

    v15 = *(a4 + 24) / v14;
    goto LABEL_18;
  }

  if (!CFStringHasPrefix(*a2, @"output"))
  {
    v22 = *(a3 + 16);
    *a4 = *a3;
    *(a4 + 16) = v22;
    *(a4 + 32) = *(a3 + 32);
    return;
  }

  v9 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v16 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v16;
  *(a4 + 32) = *(a3 + 32);
  if (CFStringFind(v9, @"FixedChannelCount", 0).location == -1)
  {
    v17 = *(a1 + 76);
    v18 = *(a1 + 60) & 0x20;
    v19 = *(a4 + 12);
    if ((v19 & 0x20) != 0)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a4 + 28);
      if (!v20)
      {
        v21 = (*(a4 + 32) + 7) >> 3;
LABEL_28:
        *(a4 + 28) = v17;
        v25 = v19 & 0xFFFFFFDF;
        if (v18)
        {
          v17 = 1;
        }

        v26 = v21 * v17;
        *(a4 + 20) = 1;
        *(a4 + 24) = v26;
        *(a4 + 12) = v25 | v18;
        *(a4 + 16) = v26;
        goto LABEL_31;
      }
    }

    v21 = *(a4 + 24) / v20;
    goto LABEL_28;
  }

LABEL_31:
  if (CFStringFind(v9, @"FixedSampleRate", 0).location == -1)
  {
    *a4 = *(a1 + 48);
    if (!v9)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v9)
  {
LABEL_35:
    CFRelease(v9);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF13DictionaryRefENS_4__fs10filesystem4pathEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSA_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF13DictionaryRefENS_4__fs10filesystem4pathEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSA_SD_EEEEEEDcSH_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF9StringRefENS_4__fs10filesystem4pathEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSA_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF9StringRefENS_4__fs10filesystem4pathEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSA_SD_EEEEEEDcSH_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

double adm::graph::DSPKernel::toFloatDeinterleavedMono@<D0>(adm::graph::DSPKernel *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *this;
  *(a2 + 8) = xmmword_223BFC2A0;
  *&result = 0x100000004;
  *(a2 + 24) = xmmword_223BFC2B0;
  return result;
}

double adm::graph::DSPKernel::toFloatDeinterleaved@<D0>(adm::graph::DSPKernel *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 7);
  *a2 = *this;
  *(a2 + 8) = xmmword_223BFC2A0;
  *(a2 + 24) = 4;
  *(a2 + 28) = v3;
  *&result = 32;
  *(a2 + 32) = 32;
  return result;
}

CA::AudioBuffersBase *CA::AudioBuffersBase::AudioBuffersBase(CA::AudioBuffersBase *this, const AudioStreamBasicDescription *a2)
{
  v4 = ExtendedAudioBufferList_CreateWithFormat();
  mFormatID = a2->mFormatID;
  v6 = mFormatID == 1885564203 || mFormatID == 1819304813;
  if (!v6 || (a2->mFormatFlags & 0x20) == 0)
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  *this = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v8 = *(v4 + 4);
  ExtendedAudioBufferList_Prepare();
  return this;
}

uint64_t std::vector<CA::AudioBuffersDeprecated>::__emplace_back_slow_path<CA::StreamDescription const&,int>(uint64_t a1, const AudioStreamBasicDescription *a2, unsigned int *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 3;
  v4 = v3 + 1;
  if ((v3 + 1) >> 61)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<CA::AudioBuffersDeprecated>::allocate_at_least[abi:ne200100](v7);
  }

  v15 = 0;
  v16 = 8 * v3;
  v17 = (8 * v3);
  v8 = *a3;
  CA::AudioBuffersBase::AudioBuffersBase((8 * v3), a2);
  *&v17 = 8 * v3 + 8;
  v9 = *(a1 + 8);
  v10 = (8 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CA::AudioBuffersDeprecated>,CA::AudioBuffersDeprecated*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CA::AudioBuffersDeprecated>::~__split_buffer(&v15);
  return v14;
}

void sub_223BA8418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CA::AudioBuffersDeprecated>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<CA::AudioBuffersDeprecated>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CA::AudioBuffersDeprecated>,CA::AudioBuffersDeprecated*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6++ = 0;
      *a4++ = v7;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      result = ExtendedAudioBufferList_Destroy();
      ++v5;
    }
  }

  return result;
}

uint64_t std::__split_buffer<CA::AudioBuffersDeprecated>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(v3 - 8);
    *(a1 + 16) = v3 - 8;
    ExtendedAudioBufferList_Destroy();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_223BA8608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<adm::DeviceDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<adm::DeviceDescription>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<adm::DeviceConfiguration>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<adm::DeviceConfiguration>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 49);
    v3 -= 9;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<adm::DeviceDescription>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v7 = v3 - 3;
      std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](&v7);
      v7 = v3 - 6;
      std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](&v7);
      if (*(v3 - 64) == 1)
      {
        v4 = *(v3 - 11);
        if (v4)
        {
          *(v3 - 10) = v4;
          operator delete(v4);
        }
      }

      if (*(v3 - 96) == 1)
      {
        v5 = *(v3 - 15);
        if (v5)
        {
          *(v3 - 14) = v5;
          operator delete(v5);
        }
      }

      if (*(v3 - 169) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v6 = v3 - 27;
      if (*(v3 - 193) < 0)
      {
        operator delete(*v6);
      }

      v3 -= 27;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

void sub_223BA8BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{

  _Unwind_Resume(a1);
}

void sub_223BA9140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 - 64));
  _Unwind_Resume(a1);
}

void sub_223BA94C8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::DataRef::~DataRef(&a9);
  if (a2 == 3)
  {
    v11 = __cxa_begin_catch(a1);
    adm::consume_exception_and_terminate(v11, v12);
  }

  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13;
    adm::consume_exception_and_terminate(v14, v15);
  }

  adm::consume_unknown_exception_and_terminate(v13);
}

void sub_223BA951C(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void applesauce::CF::DataRef::from_ns(applesauce::CF::DataRef *this, NSData *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFDataGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_223BA95F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

void sub_223BA96D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::DataRef::~DataRef(&a9);
  applesauce::CF::DataRef::~DataRef(&a10);
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    adm::consume_exception_and_terminate(v12, v13);
  }

  v14 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v15 = v14;
    adm::consume_exception_and_terminate(v15, v16);
  }

  adm::consume_unknown_exception_and_terminate(v14);
}

void sub_223BA9738(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_223BAA58C(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

uint64_t logConfigChangeRequestBasicInfo(const adm::ConfigurationChangeRequest *a1)
{
  v71 = *MEMORY[0x277D85DE8];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v57);
  v2 = *(a1 + 1);
  if (v2 != (a1 + 16))
  {
    do
    {
      v3 = *(v2 + 55);
      if (v3 >= 0)
      {
        v4 = v2 + 32;
      }

      else
      {
        v4 = *(v2 + 4);
      }

      if (v3 >= 0)
      {
        v5 = *(v2 + 55);
      }

      else
      {
        v5 = *(v2 + 5);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, v4, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, ",", 1);
      v6 = *(v2 + 1);
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
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != (a1 + 16));
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v52);
  adm::config_policy::getActiveStreamInfo(&v50, a1);
  __p = v50;
  if (v51 != v50)
  {
    v9 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v51 - v50) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v51 - v50);
    }

    v11 = v50 + 1;
    do
    {
      if (v9)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, ", ", 2);
      }

      v12 = *(v11 - 1);
      v13 = *(v12 + 23);
      if (v13 >= 0)
      {
        v14 = *(v11 - 1);
      }

      else
      {
        v14 = *v12;
      }

      if (v13 >= 0)
      {
        v15 = *(v12 + 23);
      }

      else
      {
        v15 = *(v12 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, v14, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, " [", 2);
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&buf, *v11 + 32, "");
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      v17 = strlen(p_buf);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, p_buf, v17);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "]", 1);
      ++v9;
      v11 += 3;
    }

    while (v10 != v9);
  }

  v18 = get_adm_log_object();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (*a1)
    {
      v19 = "Activation";
    }

    else
    {
      v19 = "Deactivation";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v19;
    _os_log_impl(&dword_223B4A000, v18, OS_LOG_TYPE_DEFAULT, "- %s", &buf, 0xCu);
  }

  v20 = get_adm_log_object();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    std::ostringstream::str[abi:ne200100](&buf, &v57);
    v21 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    LODWORD(v62.__r_.__value_.__l.__data_) = 136315138;
    *(v62.__r_.__value_.__r.__words + 4) = v21;
    _os_log_impl(&dword_223B4A000, v20, OS_LOG_TYPE_DEFAULT, "- semantics = %s", &v62, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v22 = get_adm_log_object();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 21);
    v23 = *(a1 + 22);
    std::ostringstream::str[abi:ne200100](&buf, &v52);
    v25 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    LODWORD(v62.__r_.__value_.__l.__data_) = 134218242;
    *(v62.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
    WORD2(v62.__r_.__value_.__r.__words[1]) = 2080;
    *(&v62.__r_.__value_.__r.__words[1] + 6) = v25;
    _os_log_impl(&dword_223B4A000, v22, OS_LOG_TYPE_DEFAULT, "- num stream IDs = %lu { %s }", &v62, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v26 = get_adm_log_object();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 0x84BDA12F684BDA13 * ((*(a1 + 32) - *(a1 + 31)) >> 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v27;
    _os_log_impl(&dword_223B4A000, v26, OS_LOG_TYPE_DEFAULT, "- num devices = %lu", &buf, 0xCu);
  }

  v28 = *(a1 + 31);
  for (i = *(a1 + 32); v28 != i; v28 += 216)
  {
    v30 = get_adm_log_object();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v28;
      if (*(v28 + 23) < 0)
      {
        v31 = *v28;
      }

      v32 = *(v28 + 64);
      v33 = bswap32(v32);
      *(&buf.__r_.__value_.__l.__data_ + 1) = v33;
      if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v62, v32);
      }

      else
      {
        strcpy(&buf.__r_.__value_.__s.__data_[5], "'");
        buf.__r_.__value_.__s.__data_[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v62, &buf);
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v62;
      }

      else
      {
        v34 = v62.__r_.__value_.__r.__words[0];
      }

      v35 = *(v28 + 68);
      v36 = bswap32(v35);
      *(&buf.__r_.__value_.__l.__data_ + 1) = v36;
      if ((v36 - 32) > 0x5E || ((v36 >> 8) - 32) > 0x5E || ((v36 << 8 >> 24) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v49, v35);
      }

      else
      {
        strcpy(&buf.__r_.__value_.__s.__data_[5], "'");
        buf.__r_.__value_.__s.__data_[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v49, &buf);
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v49;
      }

      else
      {
        v37 = v49.__r_.__value_.__r.__words[0];
      }

      v38 = *(v28 + 72);
      v39 = bswap32(v38);
      *(&buf.__r_.__value_.__l.__data_ + 1) = v39;
      if ((v39 - 32) > 0x5E || ((v39 >> 8) - 32) > 0x5E || ((v39 << 8 >> 24) - 32) > 0x5E || ((v39 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v48, v38);
      }

      else
      {
        strcpy(&buf.__r_.__value_.__s.__data_[5], "'");
        buf.__r_.__value_.__s.__data_[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v48, &buf);
      }

      v40 = &v48;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = v48.__r_.__value_.__r.__words[0];
      }

      v41 = 0xF0F0F0F0F0F0F0F1 * ((*(v28 + 176) - *(v28 + 168)) >> 3);
      v42 = 0xF0F0F0F0F0F0F0F1 * ((*(v28 + 200) - *(v28 + 192)) >> 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
      *(buf.__r_.__value_.__r.__words + 4) = v31;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v34;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v64 = v37;
      v65 = 2080;
      v66 = v40;
      v67 = 2048;
      v68 = v41;
      v69 = 2048;
      v70 = v42;
      _os_log_impl(&dword_223B4A000, v30, OS_LOG_TYPE_DEFAULT, "    UID '%s', transport %s, datasource in/out %s/%s, num streams in/out: %lu/%lu", &buf, 0x3Eu);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  v52 = *MEMORY[0x277D82828];
  v43 = v52;
  v44 = *(MEMORY[0x277D82828] + 24);
  *(&v52 + *(v52 - 24)) = v44;
  v53 = MEMORY[0x277D82878] + 16;
  if (v55 < 0)
  {
    operator delete(v54[7].__locale_);
  }

  v53 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v54);
  std::ostream::~ostream();
  MEMORY[0x223DF42F0](&v56);
  v57 = v43;
  *(&v57 + *(v43 - 24)) = v44;
  v58 = MEMORY[0x277D82878] + 16;
  if (v60 < 0)
  {
    operator delete(v59[7].__locale_);
  }

  v58 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v59);
  std::ostream::~ostream();
  result = MEMORY[0x223DF42F0](&v61);
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BAAE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a23);
  std::ostringstream::~ostringstream(&a56);
  _Unwind_Resume(a1);
}

uint64_t std::expected<adm::graph::GraphDescription,std::error_code>::~expected[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 392) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 80);
    v3 = (a1 + 56);
    std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void adm::graph::NodeHandlers::~NodeHandlers(adm::graph::NodeHandlers *this)
{
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](this + 288);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](this + 256);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](this + 224);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 192);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 160);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](this + 128);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 96);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100]<adm::ConfigurationChangeRequest,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 272);
  *a1 = *a2;
  if (v4 == 1)
  {
    v5 = (a1 + 16);
    std::__tree<std::string>::destroy(*(a1 + 16));
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v6 = (a2 + 16);
    *v5 = v7;
    *(a1 + 24) = v8;
    if (v8)
    {
      *(v7 + 16) = v5;
      *(a2 + 8) = v6;
      *v6 = 0;
      *(a2 + 24) = 0;
    }

    else
    {
      *(a1 + 8) = v5;
    }

    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    v14 = *(a2 + 64);
    v15 = *(a2 + 80);
    v16 = *(a2 + 96);
    *(a1 + 105) = *(a2 + 105);
    *(a1 + 80) = v15;
    *(a1 + 96) = v16;
    *(a1 + 64) = v14;
    if (*(a1 + 152) == *(a2 + 152))
    {
      if (*(a1 + 152))
      {
        std::vector<char>::__move_assign(a1 + 128, (a2 + 128));
      }
    }

    else if (*(a1 + 152))
    {
      v17 = *(a1 + 128);
      if (v17)
      {
        *(a1 + 136) = v17;
        operator delete(v17);
      }

      *(a1 + 152) = 0;
    }

    else
    {
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = *(a2 + 144);
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a1 + 152) = 1;
    }

    v25 = *(a2 + 160);
    v27 = (a1 + 168);
    v26 = *(a1 + 168);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 160) = v25;
    if (v26)
    {
      std::vector<std::__fs::filesystem::path>::clear[abi:ne200100]((a1 + 168));
      operator delete(*v27);
      *v27 = 0;
      *(a1 + 176) = 0;
      *(a1 + 184) = 0;
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    if (*(a1 + 240) == *(a2 + 240))
    {
      if (*(a1 + 240))
      {
        if (*(a1 + 232) == *(a2 + 232))
        {
          if (*(a1 + 232))
          {
            v28 = *(a2 + 192);
            *(a1 + 201) = *(a2 + 201);
            *(a1 + 192) = v28;
            v29 = *(a1 + 224);
            *(a1 + 224) = *(a2 + 224);
            *(a2 + 224) = v29;
          }
        }

        else if (*(a1 + 232))
        {
          v35 = *(a1 + 224);
          if (v35)
          {
            CFRelease(v35);
          }

          *(a1 + 232) = 0;
        }

        else
        {
          v36 = *(a2 + 192);
          *(a1 + 201) = *(a2 + 201);
          *(a1 + 192) = v36;
          *(a1 + 224) = *(a2 + 224);
          *(a2 + 224) = 0;
          *(a1 + 232) = 1;
        }
      }
    }

    else
    {
      if (*(a1 + 240))
      {
        if (*(a1 + 232) == 1)
        {
          v30 = *(a1 + 224);
          if (v30)
          {
            CFRelease(v30);
          }
        }

        v31 = 0;
      }

      else
      {
        *(a1 + 192) = 0;
        *(a1 + 232) = 0;
        v31 = 1;
        if (*(a2 + 232) == 1)
        {
          v32 = *(a2 + 192);
          *(a1 + 201) = *(a2 + 201);
          *(a1 + 192) = v32;
          *(a1 + 224) = *(a2 + 224);
          *(a2 + 224) = 0;
          *(a1 + 232) = 1;
        }
      }

      *(a1 + 240) = v31;
    }

    v33 = (a1 + 248);
    if (*(a1 + 248))
    {
      std::vector<adm::DeviceDescription>::clear[abi:ne200100]((a1 + 248));
      operator delete(*v33);
      *v33 = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
    }

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    v9 = (a2 + 16);
    v10 = *(a2 + 16);
    *(a1 + 16) = v10;
    v11 = a1 + 16;
    v12 = *(a2 + 24);
    *(a1 + 24) = v12;
    if (v12)
    {
      *(v10 + 16) = v11;
      *(a2 + 8) = v9;
      *v9 = 0;
      *(a2 + 24) = 0;
    }

    else
    {
      *(a1 + 8) = v11;
    }

    v18 = *(a2 + 64);
    v19 = *(a2 + 80);
    v20 = *(a2 + 96);
    v21 = *(a2 + 105);
    v22 = *(a2 + 32);
    v23 = *(a2 + 48);
    *(a1 + 128) = 0;
    *(a1 + 32) = v22;
    *(a1 + 48) = v23;
    *(a1 + 105) = v21;
    *(a1 + 80) = v19;
    *(a1 + 96) = v20;
    *(a1 + 64) = v18;
    *(a1 + 152) = 0;
    if (*(a2 + 152) == 1)
    {
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = *(a2 + 144);
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a1 + 152) = 1;
    }

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 240) = 0;
    if (*(a2 + 240) == 1)
    {
      *(a1 + 232) = 0;
      if (*(a2 + 232) == 1)
      {
        v24 = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        *(a1 + 192) = v24;
        *(a1 + 224) = *(a2 + 224);
        *(a2 + 224) = 0;
        *(a1 + 232) = 1;
      }

      *(a1 + 240) = 1;
    }

    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(a1 + 272) = 1;
  }

  return a1;
}

uint64_t std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v5 = (a1 + 248);
    std::vector<adm::DeviceDescription>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 240) == 1 && *(a1 + 232) == 1)
    {
      v2 = *(a1 + 224);
      if (v2)
      {
        CFRelease(v2);
      }
    }

    v5 = (a1 + 168);
    std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 152) == 1)
    {
      v3 = *(a1 + 128);
      if (v3)
      {
        *(a1 + 136) = v3;
        operator delete(v3);
      }
    }

    std::__tree<std::string>::destroy(*(a1 + 16));
    *(a1 + 272) = 0;
  }

  return a1;
}

void adm::ConfigurationChangeRequest::~ConfigurationChangeRequest(adm::ConfigurationChangeRequest *this)
{
  v4 = (this + 248);
  std::vector<adm::DeviceDescription>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 240) == 1 && *(this + 232) == 1)
  {
    v2 = *(this + 28);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v4 = (this + 168);
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 152) == 1)
  {
    v3 = *(this + 16);
    if (v3)
    {
      *(this + 17) = v3;
      operator delete(v3);
    }
  }

  std::__tree<std::string>::destroy(*(this + 2));
}

void adm::ScopedSignpostAdapt::closeNow(adm::ScopedSignpostAdapt *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    *this = 0;
    v2 = *(this + 16);
    v3 = get_adm_log_object();
    v4 = os_signpost_enabled(v3);
    if (v2)
    {
      if (v4)
      {
        v5 = *(this + 1);
        v10 = 136315138;
        v11 = v5;
        v6 = "%s";
        v7 = v3;
        v8 = 12;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::Adapt", v6, &v10, v8);
      }
    }

    else if (v4)
    {
      LOWORD(v10) = 0;
      v6 = &unk_223C17543;
      v7 = v3;
      v8 = 2;
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void std::vector<adm::DeviceConfiguration>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<adm::DeviceConfiguration>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 304);
  if (v2 != -1)
  {
    result = (off_28371ABA8[v2])(&v3, result);
  }

  *(v1 + 304) = -1;
  return result;
}

void std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 16) == 1 && *(v4 - 17) < 0)
        {
          operator delete(*(v4 - 5));
        }

        v6 = v4 - 17;
        if (*(v4 - 113) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 17;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3adm5graph21DSPGraphConfigurationENS8_2vp13ConfigurationENS9_24ExclaveNodeConfigurationEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSA_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3adm5graph21DSPGraphConfigurationENS8_2vp13ConfigurationENS9_24ExclaveNodeConfigurationEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSA_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 272);
  if (v3)
  {
    *(a2 + 280) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 248);
  std::vector<adm::vp::DownlinkNodeConfiguration>::__destroy_vector::operator()[abi:ne200100](&v4);

  adm::vp::UplinkConfiguration::~UplinkConfiguration(a2);
}

void std::vector<adm::vp::DownlinkNodeConfiguration>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<adm::vp::DownlinkNodeConfiguration,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void adm::vp::UplinkConfiguration::~UplinkConfiguration(void **this)
{
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  v2 = this[18];
  if (v2)
  {
    this[19] = v2;
    operator delete(v2);
  }

  v3 = this[17];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = this[12];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = this[9];
  if (v5)
  {
    this[10] = v5;
    operator delete(v5);
  }

  v6 = this[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = this + 1;
  std::vector<adm::vp::DownlinkNodeConfiguration>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void std::__destroy_at[abi:ne200100]<adm::vp::DownlinkNodeConfiguration,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN3adm5graph21DSPGraphConfigurationENS8_2vp13ConfigurationENS9_24ExclaveNodeConfigurationEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSA_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 176);
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 152);
  if (v3)
  {
    *(a2 + 160) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 128);
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  v4 = (a2 + 48);
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a2 + 24);
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = a2;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DF4200](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_223BAC014(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x223DF42F0](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223DF40E0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x223DF40F0](v20);
  return a1;
}

void sub_223BAC300(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DF40F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x223BAC2D4);
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(std::string *a1, uint64_t a2, char *__s)
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
    std::string::basic_string[abi:ne200100]<0>(a1, __s);
  }
}

_BYTE *std::ostringstream::str[abi:ne200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 104);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 96);
    v6 = *(a2 + 56);
    if (v5 < v6)
    {
      *(a2 + 96) = v6;
      v5 = v6;
    }

    v7 = (a2 + 48);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 24);
    v5 = *(a2 + 40);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x223DF42F0](a1 + 112);
  return a1;
}

void sub_223BAD278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2)
  {
    *(v49 + 792) = v50;
    if (a12)
    {
      std::__destroy_at[abi:ne200100]<adm::IOContextConfiguration,0>(&a13);
    }

    if (a23 == 1)
    {
      a35 = &a20;
      std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&a35);
    }

    adm::ConfigurationChangeRequest::~ConfigurationChangeRequest(&a49);
    if (a29 < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a30);
    if (a2 == 3)
    {
      v53 = __cxa_begin_catch(exception_object);
      adm::consume_exception_and_terminate(v53, v54);
    }

    v55 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v56 = v55;
      adm::consume_exception_and_terminate(v56, v57);
    }

    adm::consume_unknown_exception_and_terminate(v55);
  }

  _Unwind_Resume(exception_object);
}

void sub_223BAD458(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_28371AB78[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CA::StreamDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_223BAD598(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void adm::NegotiateResponse::~NegotiateResponse(adm::NegotiateResponse *this)
{
  v4 = (this + 48);
  std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::__destroy_at[abi:ne200100]<adm::IOContextConfiguration,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::vector<CA::StreamDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

void std::vector<adm::DeviceConfiguration>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::allocator<adm::DeviceConfiguration>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<adm::DeviceConfiguration>,adm::DeviceConfiguration*,adm::DeviceConfiguration*,adm::DeviceConfiguration*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v14 = this;
  v15 = this;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v15;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      v10 = *(v6 + 40);
      *(v4[2].__r_.__value_.__r.__words + 5) = *(v6 + 53);
      *&v4[1].__r_.__value_.__r.__words[2] = v10;
      *&v4[1].__r_.__value_.__l.__data_ = v9;
      v6 = (v6 + 72);
      v4 = v8 + 3;
      v15 = v8 + 3;
    }

    while (v6 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<adm::DeviceConfiguration>,adm::DeviceConfiguration*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<adm::DeviceConfiguration>,adm::DeviceConfiguration*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 49);
      v3 -= 9;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::allocator<adm::DeviceConfiguration>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN3adm22ScopedSignpostSimulateENS9_23ScopedSignpostNegotiateEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS8_SA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    *a2 = 0;
    v3 = *(a2 + 16);
    v4 = get_adm_log_object();
    v5 = os_signpost_enabled(v4);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a2 + 8);
        v11 = 136315138;
        v12 = v6;
        v7 = "%s";
        v8 = v4;
        v9 = 12;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::Negotiate", v7, &v11, v9);
      }
    }

    else if (v5)
    {
      LOWORD(v11) = 0;
      v7 = &unk_223C17543;
      v8 = v4;
      v9 = 2;
      goto LABEL_7;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN3adm22ScopedSignpostSimulateENS9_23ScopedSignpostNegotiateEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS8_SA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    *a2 = 0;
    v3 = *(a2 + 16);
    v4 = get_adm_log_object();
    v5 = os_signpost_enabled(v4);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a2 + 8);
        v11 = 136315138;
        v12 = v6;
        v7 = "%s";
        v8 = v4;
        v9 = 12;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::Simulate", v7, &v11, v9);
      }
    }

    else if (v5)
    {
      LOWORD(v11) = 0;
      v7 = &unk_223C17543;
      v8 = v4;
      v9 = 2;
      goto LABEL_7;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_223BADC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = DSPProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_223BADE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(CA::PropertyAddress)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

std::string *std::optional<adm::graph::GraphBuilder>::emplace[abi:ne200100]<adm::SystemConfiguration &,adm::HostDescription &,void>(std::string *this, SystemConfiguration *a2, __int128 *a3)
{
  if (this[13].__r_.__value_.__s.__data_[0] == 1)
  {
    if (SHIBYTE(this[12].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this[12].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(this[11].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this[11].__r_.__value_.__l.__data_);
    }

    adm::SystemConfiguration::~SystemConfiguration(&this->__r_.__value_.__l.__data_);
    this[13].__r_.__value_.__s.__data_[0] = 0;
  }

  adm::SystemConfiguration::SystemConfiguration(this, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 11, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[11].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[11].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    this[12].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[12].__r_.__value_.__l.__data_ = v7;
  }

  this[13].__r_.__value_.__s.__data_[0] = 1;
  return this;
}

void sub_223BADF54(_Unwind_Exception *a1)
{
  if (*(v1 + 287) < 0)
  {
    operator delete(*v2);
  }

  adm::SystemConfiguration::~SystemConfiguration(v1);
  _Unwind_Resume(a1);
}

void std::optional<adm::graph::NodeManager>::emplace[abi:ne200100]<adm::SystemConfiguration &,void>(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
    v4 = a1[2];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      MEMORY[0x223DF43A0](v5, 0x20C40A4A59CD2);
    }

    *(a1 + 24) = 0;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  adm::utility::getTemporaryPath(__p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v20;
  }

  else
  {
    v7 = v20.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v19 = CFStringCreateWithBytes(0, v7, size, 0x8000100u, 0);
    if (!v19)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((*(&v20.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v19 = 0;
    if ((*(&v20.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_21:
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 120) == 1)
  {
    if (*(a2 + 119) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a2 + 96), *(a2 + 104));
    }

    else
    {
      v20 = *(a2 + 96);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "empty hardware model");
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v20;
  }

  else
  {
    v9 = v20.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = v20.__r_.__value_.__l.__size_;
    }

    cf = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
    if (!cf)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((*(&v20.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    cf = 0;
    if ((*(&v20.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_40:
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  adm::SystemConfiguration::SystemConfiguration(__p, a2);
  v11 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v16 = v11;
  v12 = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  v17 = v12;
  operator new();
}

void sub_223BAE4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, const void *a48, const void *a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a48);
  if (a55 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a49);
  v57 = v55[2];
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  std::unique_ptr<adm::vp::ProxyFactory>::reset[abi:ne200100](v55, 0);
  _Unwind_Resume(a1);
}

void sub_223BAE880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_223BAE9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void anonymous namespace::ErrorCategory::message(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 <= 1684500594)
  {
    if (a1 <= 1651929192)
    {
      if (a1 <= 1650814323)
      {
        if (!a1)
        {
          v5 = "no error";
          goto LABEL_54;
        }

        if (a1 == 1634627437)
        {
          v5 = "anomaly detected";
          goto LABEL_54;
        }
      }

      else
      {
        switch(a1)
        {
          case 1650814324:
            v5 = "bad element";
            goto LABEL_54;
          case 1651536493:
            v5 = "bad parameter";
            goto LABEL_54;
          case 1651729264:
            v5 = "bad scope";
            goto LABEL_54;
        }
      }
    }

    else if (a1 > 1684497253)
    {
      switch(a1)
      {
        case 1684497254:
          v5 = "dspgraph configure";
          goto LABEL_54;
        case 1684497264:
          v5 = "dspgraph compile error";
          goto LABEL_54;
        case 1684498798:
          v5 = "dspgraph initialize";
          goto LABEL_54;
      }
    }

    else
    {
      switch(a1)
      {
        case 1651929193:
          v5 = "bad vp interface";
          goto LABEL_54;
        case 1684496757:
          v5 = "dspgraph austrip";
          goto LABEL_54;
        case 1684497011:
          v5 = "dspgraph block size";
          goto LABEL_54;
      }
    }
  }

  else if (a1 > 1969448550)
  {
    if (a1 > 1970170733)
    {
      switch(a1)
      {
        case 1970170734:
          v5 = "unknown error";
          goto LABEL_54;
        case 1970171760:
          v5 = "operation not supported";
          goto LABEL_54;
        case 1970431354:
          v5 = "resource not found";
          goto LABEL_54;
      }
    }

    else
    {
      switch(a1)
      {
        case 1969448551:
          v5 = "unknown configuration";
          goto LABEL_54;
        case 1969646964:
          v5 = "unsupported format";
          goto LABEL_54;
        case 1969843568:
          v5 = "unimplemented";
          goto LABEL_54;
      }
    }
  }

  else if (a1 > 1768843635)
  {
    switch(a1)
    {
      case 1768843636:
        v5 = "uninitialized";
        goto LABEL_54;
      case 1853122148:
        v5 = "not found";
        goto LABEL_54;
      case 1920231791:
        v5 = "bad realtime io error";
        goto LABEL_54;
    }
  }

  else
  {
    switch(a1)
    {
      case 1684500595:
        v5 = "dspgraph property strip";
        goto LABEL_54;
      case 1684501362:
        v5 = "dspgraph sample rate";
        goto LABEL_54;
      case 1685287015:
        v5 = "dspgraph error";
LABEL_54:

        std::string::basic_string[abi:ne200100]<0>(a2, v5);
        return;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "Invalid error code: ");
  std::to_string(&__p, a1);
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

  v8 = std::string::append(&v11, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v8->__r_.__value_.__l + 2);
  *a2 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_223BAEDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ErrorCategory::~ErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x223DF43A0);
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_28371C4A8;
  v4 = *(a2 + 8);
  *a1 = &unk_28371C520;
  *(a1 + 8) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *a1 = &unk_28371AE80;
  *(a1 + 40) = &unk_28371AEB0;
  *(a1 + 48) = &unk_28371AEF0;
  return a1;
}

void boost::shared_ptr<boost::exception_detail::clone_base const>::shared_ptr<boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>>(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 24);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = 0;
  operator new();
}

void sub_223BAF0E8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  __cxa_rethrow();
}

void sub_223BAF120(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::~clone_impl(uint64_t a1)
{
  std::bad_exception::~bad_exception((a1 + 40));
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 8));
  return a1;
}

void boost::exception_detail::bad_exception_::~bad_exception_(boost::exception_detail::bad_exception_ *this)
{
  std::bad_exception::~bad_exception(this + 5);
  *this = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(this + 1);
}

{
  std::bad_exception::~bad_exception(this + 5);
  *this = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(this + 1);

  JUMPOUT(0x223DF43A0);
}

{
  std::bad_exception::~bad_exception(this + 5);
  *this = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(this + 1);
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_p<boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::~clone_impl(uint64_t a1)
{
  std::bad_exception::~bad_exception((a1 + 40));
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 8));

  JUMPOUT(0x223DF43A0);
}

uint64_t *virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::~clone_impl(void *a1)
{
  v1 = a1 + *(*a1 - 40);
  std::bad_exception::~bad_exception(v1 + 5);
  *v1 = &unk_28371C520;

  return boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::clone_impl(exception, a1);
}

void sub_223BAF618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::bad_exception_::~bad_exception_(v10);
  MEMORY[0x223DF43A0](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

uint64_t *non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::bad_exception_>::~clone_impl(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v1 - 40) = &unk_28371C520;
  v2 = (v1 - 32);

  return boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v2);
}

void non-virtual thunk toboost::exception_detail::bad_exception_::~bad_exception_(std::bad_exception *this)
{
  std::bad_exception::~bad_exception(this);
  *(v1 - 40) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v1 - 32));

  JUMPOUT(0x223DF43A0);
}

{
  std::bad_exception::~bad_exception(this);
  *(v1 - 40) = &unk_28371C520;
  v2 = (v1 - 32);

  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v2);
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_28371C4A8;
  v4 = *(a2 + 8);
  *a1 = &unk_28371C520;
  *(a1 + 8) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *a1 = &unk_28371ACC0;
  *(a1 + 40) = &unk_28371ACF0;
  *(a1 + 48) = &unk_28371AD30;
  return a1;
}

void boost::shared_ptr<boost::exception_detail::clone_base const>::shared_ptr<boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>>(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 24);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = 0;
  operator new();
}

void sub_223BAFA94(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  __cxa_rethrow();
}

void sub_223BAFACC(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::~clone_impl(uint64_t a1)
{
  std::bad_alloc::~bad_alloc((a1 + 40));
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 8));
  return a1;
}

void boost::exception_detail::bad_alloc_::~bad_alloc_(boost::exception_detail::bad_alloc_ *this)
{
  std::bad_alloc::~bad_alloc(this + 5);
  *this = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(this + 1);
}

{
  std::bad_alloc::~bad_alloc(this + 5);
  *this = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(this + 1);

  JUMPOUT(0x223DF43A0);
}

{
  std::bad_alloc::~bad_alloc(this + 5);
  *this = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(this + 1);
}

uint64_t boost::detail::sp_counted_impl_p<boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::~clone_impl(uint64_t a1)
{
  std::bad_alloc::~bad_alloc((a1 + 40));
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 8));

  JUMPOUT(0x223DF43A0);
}

uint64_t *virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::~clone_impl(void *a1)
{
  v1 = a1 + *(*a1 - 40);
  std::bad_alloc::~bad_alloc(v1 + 5);
  *v1 = &unk_28371C520;

  return boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::clone_impl(exception, a1);
}

void sub_223BAFF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::bad_alloc_::~bad_alloc_(v10);
  MEMORY[0x223DF43A0](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t *non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::bad_alloc_>::~clone_impl(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v1 - 40) = &unk_28371C520;
  v2 = (v1 - 32);

  return boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v2);
}

void non-virtual thunk toboost::exception_detail::bad_alloc_::~bad_alloc_(std::bad_alloc *this)
{
  std::bad_alloc::~bad_alloc(this);
  *(v1 - 40) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v1 - 32));

  JUMPOUT(0x223DF43A0);
}

{
  std::bad_alloc::~bad_alloc(this);
  *(v1 - 40) = &unk_28371C520;
  v2 = (v1 - 32);

  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v2);
}

boost::core::scoped_demangled_name *boost::core::scoped_demangled_name::scoped_demangled_name(boost::core::scoped_demangled_name *this, const char *lpmangled)
{
  status = 0;
  v4 = 0;
  *this = __cxa_demangle(lpmangled, 0, &v4, &status);
  return this;
}

void *std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5[4];
    if (v7 != a3)
    {
      v8 = *(a3 + 8);
      do
      {
        v9 = *(v7 + 8);
        if (strcmp((v8 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
        {
          v10 = *v5;
          v4 = v5;
          if (!*v5)
          {
            break;
          }
        }

        else
        {
          if ((strcmp((v9 & 0x7FFFFFFFFFFFFFFFLL), (v8 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
          {
            break;
          }

          v4 = v5 + 1;
          v10 = v5[1];
          if (!v10)
          {
            break;
          }
        }

        v7 = v10[4];
        v5 = v10;
      }

      while (v7 != a3);
    }
  }

  else
  {
    v5 = (a1 + 8);
  }

  *a2 = v5;
  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      boost::detail::shared_count::~shared_count(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::exception_detail::error_info_base>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

BOOL boost::exception_detail::error_info_container_impl::release(boost::exception_detail::error_info_container_impl *this)
{
  v1 = *(this + 14) - 1;
  *(this + 14) = v1;
  if (this && !v1)
  {
    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(*(this + 2));
    MEMORY[0x223DF43A0](this, 0x10B3C409A6CECE4);
  }

  return v1 == 0;
}

void std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(atomic_uint **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(*a1);
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(a1[1]);
    boost::detail::shared_count::~shared_count(a1 + 6);

    operator delete(a1);
  }
}

void boost::exception_detail::error_info_container_impl::set(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __assert_rtn("set", "info.hpp", 77, "x");
  }

  v5 = *std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(a1 + 8, &v10, *a3);
  if (!v5)
  {
    operator new();
  }

  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  v8 = *(v5 + 40);
  *(v5 + 40) = v7;
  *(v5 + 48) = v6;
  v9 = v8;
  boost::detail::shared_count::~shared_count(&v9 + 1);
  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }
}

uint64_t boost::exception_detail::error_info_container_impl::get@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = (result + 16);
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *a2;
  v7 = (result + 16);
  do
  {
    v8 = v5[4];
    if (v8 == v6)
    {
      v7 = v5;
    }

    else
    {
      result = strcmp((*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (result >= 0)
      {
        v7 = v5;
      }

      v5 = (v5 + ((result >> 28) & 8));
    }

    v5 = *v5;
  }

  while (v5);
  if (v4 != v7 && ((v9 = v7[4], v6 == v9) || (result = strcmp((*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL)), (result & 0x80000000) == 0)))
  {
    v10 = v7[6];
    *a3 = v7[5];
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t boost::exception_detail::error_info_container_impl::diagnostic_information(boost::exception_detail::error_info_container_impl *this, const char *a2)
{
  if (a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
    v4 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, a2, v4);
    v5 = *(this + 1);
    if (v5 != (this + 16))
    {
      do
      {
        v6 = *(v5 + 5);
        if (!v6)
        {
          __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
        }

        (**v6)(__p);
        if (v16 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if (v16 >= 0)
        {
          v8 = HIBYTE(v16);
        }

        else
        {
          v8 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v7, v8);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = *(v5 + 1);
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
            v10 = *(v5 + 2);
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }

        v5 = v10;
      }

      while (v10 != (this + 16));
    }

    std::ostringstream::str[abi:ne200100](__p, &v17);
    v12 = v16;
    v13 = *__p;
    *__p = *(this + 2);
    v16 = *(this + 6);
    *(this + 2) = v13;
    *(this + 6) = v12;
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *MEMORY[0x277D82828];
    *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::ostream::~ostream();
    MEMORY[0x223DF42F0](&v21);
  }

  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void consume_exception_and_terminate(const std::exception *a1, const char *a2)
{
  v43[19] = *MEMORY[0x277D85DE8];
  qword_27D0B3DD0 = a2;
  v3 = a1->~exception;
  if (v4)
  {
    v5 = v4[1];
    if (v5)
    {
      (*(*v5 + 8))(lpsrc);
      if (*lpsrc)
      {
        v6 = ***lpsrc;
        {
          __assert_rtn("get", "get_error_info.hpp", 46, "0!=dynamic_cast<ErrorInfo *>(eib.get())");
        }
      }

      boost::detail::shared_count::~shared_count(&lpsrc[8]);
    }
  }

  v7 = a1->__vftable;
  v8 = a1->~exception;
  v10 = (v7->what)(a1);
  if (v9)
  {
    v20 = *(v9 + 1);
    if (!v20)
    {
      operator new();
    }

    v21 = (**v20)(v20, 0);
    if (!v21)
    {
      __assert_rtn("get_diagnostic_information", "diagnostic_information.hpp", 109, "di!=0");
    }

    if (v21 == v10)
    {
      std::string::basic_string[abi:ne200100]<0>(__dst, v10);
      goto LABEL_54;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](lpsrc);
    v28 = *(v9 + 3);
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v9[8] == -1;
    }

    if (v29 && *(v9 + 2) == 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, "Throw location unknown (consider using BOOST_THROW_EXCEPTION)\n", 62);
      v11 = v9;
    }

    else
    {
      if (v28)
      {
        v31 = strlen(*(v9 + 3));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, v28, v31);
        if (v9[8] != -1)
        {
          LOBYTE(__dst[0]) = 40;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, __dst, 1);
          v34 = MEMORY[0x223DF4110](lpsrc, v9[8]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "): ", 3);
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, "Throw in function ", 18);
      v32 = *(v9 + 2);
      if (v32)
      {
        v33 = strlen(*(v9 + 2));
      }

      else
      {
        v32 = "(unknown)";
        v33 = 9;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, v32, v33);
      LOBYTE(__dst[0]) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, __dst, 1);
      v11 = v9;
    }
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](lpsrc);
    v11 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__dst, "Dynamic exception type: ");
  if ((v38 & 0x80u) == 0)
  {
    v12 = __dst;
  }

  else
  {
    v12 = __dst[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v13 = v38;
  }

  else
  {
    v13 = __dst[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, v12, v13);
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = a1;
  }

  v15 = (*(v14->__vftable[-1].what + 1) & 0x7FFFFFFFFFFFFFFFLL);
  boost::core::scoped_demangled_name::scoped_demangled_name(&v39, v15);
  if (v39)
  {
    v16 = v39;
  }

  else
  {
    v16 = v15;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v16);
  free(v39);
  if ((v36 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v18 = v36;
  }

  else
  {
    v18 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, v17, v18);
  LOBYTE(v39) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, &v39, 1);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (v38 < 0)
  {
    operator delete(__dst[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, "std::exception::what: ", 22);
  if (!v10)
  {
    v10 = "(null)";
  }

  v19 = strlen(v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, v10, v19);
  LOBYTE(__dst[0]) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(lpsrc, __dst, 1);
  if (!v9)
  {
    goto LABEL_33;
  }

  v22 = __dst;
  std::ostringstream::str[abi:ne200100](__dst, lpsrc);
  if ((v38 & 0x80u) != 0)
  {
    v22 = __dst[0];
  }

  v23 = v11[1].__vftable;
  if (!v23)
  {
    operator new();
  }

  v24 = (*v23->~exception)(v23, v22);
  if (!v24)
  {
    __assert_rtn("get_diagnostic_information", "diagnostic_information.hpp", 109, "di!=0");
  }

  if (v38 < 0)
  {
    operator delete(__dst[0]);
  }

  if (*v24)
  {
    std::string::basic_string[abi:ne200100]<0>(__dst, v24);
  }

  else
  {
LABEL_33:
    std::ostringstream::str[abi:ne200100](__dst, lpsrc);
  }

  *lpsrc = *MEMORY[0x277D82828];
  *&lpsrc[*(*lpsrc - 24)] = *(MEMORY[0x277D82828] + 24);
  *&lpsrc[8] = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  *&lpsrc[8] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&lpsrc[16]);
  std::ostream::~ostream();
  MEMORY[0x223DF42F0](v43);
LABEL_54:
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
  {
    v26 = (a1->what)(a1);
    v27 = __dst;
    if ((v38 & 0x80u) != 0)
    {
      v27 = __dst[0];
    }

    *lpsrc = 136315394;
    *&lpsrc[4] = v26;
    *&lpsrc[12] = 2080;
    *&lpsrc[14] = v27;
    _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "**EXCEPTION**  %s\n%s", lpsrc, 0x16u);
  }

  abort();
}

void sub_223BB138C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void adm::log_exception(adm *this, const std::exception *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
  {
    v5 = (*(*this + 16))(this);
    v6 = 136315138;
    v7 = v5;
    _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "**THROWING EXCEPTION** %s", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void _prepareToTerminateWithException(NSException *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [(NSException *)v1 name];
  v3 = [(NSException *)v1 reason];
  v4 = [(NSException *)v1 callStackReturnAddresses];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 count];
    os_unfair_lock_lock(&__last_exception_backtrace_lock__);
    strlcpy(__last_exception_backtrace__, "(", 0x2000uLL);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        *__str = 0u;
        v23 = 0u;
        v8 = [v5 objectAtIndex:i];
        snprintf(__str, 0x44uLL, "%p ", [v8 unsignedIntegerValue]);

        strlcat(__last_exception_backtrace__, __str, 0x2000uLL);
      }
    }

    v9 = strrchr(__last_exception_backtrace__, 32);
    if (v9)
    {
      *v9 = 41;
    }

    else
    {
      strlcat(__last_exception_backtrace__, ")", 0x2000uLL);
    }
  }

  else
  {
    os_unfair_lock_lock(&__last_exception_backtrace_lock__);
    strlcpy(__last_exception_backtrace__, "()", 0x2000uLL);
  }

  os_unfair_lock_unlock(&__last_exception_backtrace_lock__);
  v10 = [(NSException *)v1 callStackReturnAddresses];
  if (!v10)
  {
    v10 = v5;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v10 description];
  v13 = [v11 stringWithFormat:@"***NSException*** '%@', reason: '%@'\n*** First throw call stack:\n%@\n", v2, v3, v12];

  if (v2)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** Terminating due to uncaught exception '%@', reason: '%@'", v2, v3];
    v15 = v14;
    v16 = [v14 UTF8String];
  }

  else
  {
    v17 = v13;
    v16 = [v13 UTF8String];
  }

  qword_27D0B3DD0 = v16;
  v18 = get_adm_log_object();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = v13;
    v21 = [v13 UTF8String];
    *__str = 136315138;
    *&__str[4] = v21;
    _os_log_error_impl(&dword_223B4A000, v18, OS_LOG_TYPE_ERROR, "***EXCEPTION***\n%s", __str, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_223BB1898(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void adm::graph::createExclaveDSPControllerClient(adm::exclaves::UseCase,std::string const&,adm::exclaves::AudioCapturePoints,BOOL)::$_0::operator()(void *a1, int **a2, uint64_t a3)
{
  buf[13] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(*a2 + 23) < 0)
  {
    v5 = *v5;
  }

  caulk::make_string("com.apple.%s.%s", v51, v5, a3);
  v6 = __p;
  v7 = *a2;
  if (*(*a2 + 23) < 0)
  {
    v7 = *v7;
  }

  caulk::make_string("com.apple.%s.%sDebug", __p, v7, a3);
  v8 = *a2[1];
  v55 = 1;
  v56 = 0;
  *&v57 = 0;
  adm_log_object = get_adm_log_object();
  if (os_signpost_enabled(adm_log_object))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_223B4A000, adm_log_object, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::GetControllerEK", &unk_223C17543, buf, 2u);
  }

  {
    *&qword_27D0B9668 = 0u;
    dword_27D0B9678 = 1065353216;
  }

  v11 = &unk_27D0B9000;
  {
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v8;
      {
      }
    }

    else
    {
    }

    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v8)
        {
          if (i[2] == v8)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v12.u32[0] > 1uLL)
          {
            {
            }
          }

          else
          {
          }

          if (v16 != v13)
          {
            break;
          }
        }
      }
    }
  }

  if (v52 >= 0)
  {
    v17 = v51;
  }

  else
  {
    v17 = v51[0];
  }

  v18 = get_adm_log_object();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v17;
    _os_log_impl(&dword_223B4A000, v18, OS_LOG_TYPE_DEFAULT, "initializing service '%s'", buf, 0xCu);
  }

  buf[0] = 0;
  v19 = tb_conclave_endpoint_for_service();
  if (v19)
  {
    v20 = get_adm_log_object();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v58 = 67109120;
    *&v58[4] = v19;
    v21 = "tb call failed to lookup endpoint for service: error[%d]";
    v22 = v20;
    goto LABEL_100;
  }

  tb_endpoint_set_interface_identifier();
  tb_client_connection_create_with_endpoint();
  v23 = tb_client_connection_activate();
  v24 = get_adm_log_object();
  v25 = v24;
  if (!v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 0;
      _os_log_impl(&dword_223B4A000, v25, OS_LOG_TYPE_DEFAULT, "tb call to initialize service ok", v58, 2u);
    }

    if (!MGGetBoolAnswer())
    {
      v11 = &unk_27D0B9000;
LABEL_81:
      {
        v45.i16[0] = vaddlv_u8(v45);
        if (v45.u32[0] > 1uLL)
        {
          v46 = v8;
          {
          }
        }

        else
        {
        }

        v47 = *(v11[203] + 8 * v46);
        if (v47)
        {
          for (j = *v47; j; j = *j)
          {
            v49 = j[1];
            if (v49 == v8)
            {
              if (j[2] == v8)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (v45.u32[0] > 1uLL)
              {
                {
                }
              }

              else
              {
              }

              if (v49 != v46)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    if (v54 < 0)
    {
      v6 = __p[0];
    }

    v38 = get_adm_log_object();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v6;
      _os_log_impl(&dword_223B4A000, v38, OS_LOG_TYPE_DEFAULT, "initializing service '%s'", buf, 0xCu);
    }

    buf[0] = 0;
    v39 = tb_conclave_endpoint_for_service();
    if (v39)
    {
      v40 = get_adm_log_object();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *v58 = 67109120;
        *&v58[4] = v39;
        v41 = "tb call failed to lookup endpoint for service: error[%d]";
LABEL_105:
        _os_log_error_impl(&dword_223B4A000, v40, OS_LOG_TYPE_ERROR, v41, v58, 8u);
      }
    }

    else
    {
      tb_endpoint_set_interface_identifier();
      tb_client_connection_create_with_endpoint();
      v43 = tb_client_connection_activate();
      v44 = get_adm_log_object();
      v40 = v44;
      if (!v43)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 0;
          _os_log_impl(&dword_223B4A000, v40, OS_LOG_TYPE_DEFAULT, "tb call to initialize service ok", v58, 2u);
        }

        goto LABEL_80;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v58 = 67109120;
        *&v58[4] = v43;
        v41 = "tb call to initialize service failed: %d";
        goto LABEL_105;
      }
    }

LABEL_80:
    v11 = &unk_27D0B9000;
    goto LABEL_81;
  }

  if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_34;
  }

  *v58 = 67109120;
  *&v58[4] = v23;
  v21 = "tb call to initialize service failed: %d";
  v22 = v25;
LABEL_100:
  _os_log_error_impl(&dword_223B4A000, v22, OS_LOG_TYPE_ERROR, v21, v58, 8u);
LABEL_34:
  v11 = &unk_27D0B9000;
LABEL_35:
LABEL_36:
  if (v10)
  {
    v26 = vcnt_s8(v10);
    v26.i16[0] = vaddlv_u8(v26);
    if (v26.u32[0] > 1uLL)
    {
      v27 = v8;
      if (*&v10 <= v8)
      {
        v27 = v8 % *&v10;
      }
    }

    else
    {
      v27 = (*&v10 - 1) & v8;
    }

    v28 = *(v11[203] + 8 * v27);
    if (v28)
    {
      v29 = *v28;
      if (*v28)
      {
        do
        {
          v30 = v29[1];
          if (v30 == v8)
          {
            if (v29[2] == v8)
            {
              operator new();
            }
          }

          else
          {
            if (v26.u32[0] > 1uLL)
            {
              if (v30 >= *&v10)
              {
                v30 %= *&v10;
              }
            }

            else
            {
              v30 &= *&v10 - 1;
            }

            if (v30 != v27)
            {
              break;
            }
          }

          v29 = *v29;
        }

        while (v29);
      }
    }
  }

  v31 = get_adm_log_object();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = v8;
    _os_log_error_impl(&dword_223B4A000, v31, OS_LOG_TYPE_ERROR, "Unable to initialize exclave ID %llu", buf, 0xCu);
  }

  if (v55 == 1)
  {
    v55 = 0;
    v32 = v57;
    v33 = get_adm_log_object();
    v34 = os_signpost_enabled(v33);
    if (v32)
    {
      if (v34)
      {
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v56;
        v35 = "%s";
        v36 = v33;
        v37 = 12;
LABEL_60:
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::GetControllerEK", v35, buf, v37);
      }
    }

    else if (v34)
    {
      LOWORD(buf[0]) = 0;
      v35 = &unk_223C17543;
      v36 = v33;
      v37 = 2;
      goto LABEL_60;
    }
  }

  *a1 = 0;
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_223BB2BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v21 = (v19 + 47);
  v22 = -48;
  v23 = (v19 + 47);
  while (1)
  {
    v24 = *v23;
    v23 -= 24;
    if (v24 < 0)
    {
      operator delete(*(v21 - 23));
    }

    v21 = v23;
    v22 += 24;
    if (!v22)
    {
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_223BB2C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  MEMORY[0x223DF3E50](v38 + 12);
  caulk::mach::mach_port::~mach_port(v37);
  v41 = v38[6];
  if (v41)
  {
    v38[7] = v41;
    operator delete(v41);
  }

  v42 = v38[3];
  if (v42)
  {
    v38[4] = v42;
    operator delete(v42);
  }

  v43 = v38[2];
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  MEMORY[0x223DF43A0](v38, 0x10B1C4009C77CB4);
  *(v40 - 208) = &a37;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100]((v40 - 208));
  JUMPOUT(0x223BB2D28);
}

void sub_223BB2C38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_223BB2C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __cxa_end_catch();
  adm::ScopedSignpostGetControllerEK::~ScopedSignpostGetControllerEK(va);
  JUMPOUT(0x223BB2D44);
}

void sub_223BB2C7C()
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x223BB2D44);
}

void sub_223BB2CA4()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x223BB2D44);
}

void sub_223BB2CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  adm::ScopedSignpostGetControllerEK::~ScopedSignpostGetControllerEK(va);
  JUMPOUT(0x223BB2D44);
}

void sub_223BB2D50(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x223BB2D58);
  }

  __clang_call_terminate(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,anonymous namespace::getControllerEK(unsigned long long,anonymous namespace::ServiceNames const&)::ControllerInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,anonymous namespace::getControllerEK(unsigned long long,anonymous namespace::ServiceNames const&)::ControllerInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[7];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void adm::ScopedSignpostGetControllerEK::~ScopedSignpostGetControllerEK(adm::ScopedSignpostGetControllerEK *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    *this = 0;
    v2 = *(this + 16);
    adm_log_object = get_adm_log_object();
    v4 = os_signpost_enabled(adm_log_object);
    if (v2)
    {
      if (v4)
      {
        v5 = *(this + 1);
        v10 = 136315138;
        v11 = v5;
        v6 = "%s";
        v7 = adm_log_object;
        v8 = 12;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::GetControllerEK", v6, &v10, v8);
      }
    }

    else if (v4)
    {
      LOWORD(v10) = 0;
      v6 = &unk_223C17543;
      v7 = adm_log_object;
      v8 = 2;
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void caulk::mach::mach_port::~mach_port(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], *this);
  }
}

void anonymous namespace::ServiceNames::~ServiceNames(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

caulk::rt_safe_memory_resource *adm::graph::ExclaveDSPControllerClientImpl::setParameter(std::chrono::system_clock::time_point *this, int a2, float a3)
{
  v47 = a2;
  v46 = a3;
  rep = this[2].__d_.__rep_;
  if (!rep)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v7 = std::__shared_weak_count::lock(rep);
  if (!v7 || (v8 = this[1].__d_.__rep_) == 0)
  {
LABEL_9:
    v11 = this[10].__d_.__rep_;
    if (v11 >= 0x65)
    {
      if (std::chrono::system_clock::now().__d_.__rep_ - this[11].__d_.__rep_ <= 500999)
      {
        goto LABEL_14;
      }

      v11 = this[10].__d_.__rep_;
    }

    result = *MEMORY[0x277D7F098];
    if (!*MEMORY[0x277D7F098])
    {
      goto LABEL_85;
    }

    v13 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v13 + 16) = 0;
    *(v13 + 24) = 2;
    *(v13 + 32) = "ControllerClient(%p) setParameter(%d, %f): EK unavailable";
    *(v13 + 40) = v11;
    *(v13 + 48) = this;
    *(v13 + 56) = a2;
    *(v13 + 60) = a3;
    *v13 = &unk_28371B3C8;
    *(v13 + 8) = 0;
    caulk::concurrent::messenger::enqueue(&this[12], v13);
    this[11].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
LABEL_14:
    v14 = 1970431354;
    v15 = this[10].__d_.__rep_;
    if (v15 != -1)
    {
      LODWORD(this[10].__d_.__rep_) = v15 + 1;
    }

    goto LABEL_21;
  }

  v9 = this[3].__d_.__rep_;
  v10 = this[4].__d_.__rep_;
  if (v9 != v10)
  {
    while (*v9 != a2)
    {
      if (++v9 == v10)
      {
        goto LABEL_19;
      }
    }
  }

  if (v9 == v10)
  {
LABEL_19:
    v14 = 1651536493;
    v17 = "setParameter(%d, %f): parameter not supported";
    goto LABEL_20;
  }

  v16 = adm::exclaves::utility::convert_to<std::optional<adm::exclaves::ParameterID>,unsigned int>(a2);
  if (HIDWORD(v16))
  {
    v18 = v16;
    v44 = adm::exclaves::utility::convert_to<std::optional<audiodsputility_parameterid_s>,adm::exclaves::ParameterID>(v16);
    v45 = v19;
    if (v18 > 5)
    {
      if (v18 > 8)
      {
        switch(v18)
        {
          case 9:
            v21 = 0;
            LOBYTE(v22) = a3 != 0.0;
            v23 = 0xC83C98BC329601F9;
            break;
          case 10:
            v21 = 0;
            v22 = a3;
            v23 = 0xE1D8FF437BB62643;
            break;
          case 11:
            v21 = 0;
            v22 = a3;
            v23 = 0xF64FC5679D8C50C8;
            break;
          default:
            goto LABEL_43;
        }
      }

      else if (v18 == 6)
      {
        v21 = 0;
        LOBYTE(v22) = a3 != 0.0;
        v23 = 0x8695345E04E75645;
      }

      else if (v18 == 7)
      {
        v21 = 0;
        LOBYTE(v22) = a3 != 0.0;
        v23 = 0xF876E807C3E4A3E7;
      }

      else
      {
        LOBYTE(v22) = LOBYTE(a3);
        v21 = LODWORD(a3) & 0xFFFFFF00;
        v23 = 0xBE1AC77697E53FFCLL;
      }
    }

    else if (v18 > 2)
    {
      if (v18 == 3)
      {
        v21 = 0;
        LOBYTE(v22) = a3 != 0.0;
        v23 = 0xB2A314BCFDE57EE2;
      }

      else
      {
        v21 = 0;
        LOBYTE(v22) = a3 != 0.0;
        if (v18 == 4)
        {
          v23 = 0xBA94426FF040F022;
        }

        else
        {
          v23 = 0x67D58230E14B515BLL;
        }
      }
    }

    else if (v18)
    {
      if (v18 != 1)
      {
        if (v18 == 2)
        {
          v21 = 0;
          LOBYTE(v22) = a3 != 0.0;
          v23 = 0xE9CAC24E271E1010;
          goto LABEL_52;
        }

LABEL_43:
        LOBYTE(v40) = 0;
        v43 = 0;
        if (v19)
        {
          adm::util::RTLogger::log<unsigned int &,float &>(this + 10, "setParameter(%d, %f): converting value to tb failed", &v47, &v46);
LABEL_62:
          v14 = 1651536493;
          goto LABEL_21;
        }

        goto LABEL_55;
      }

      v21 = 0;
      LOBYTE(v22) = a3 != 0.0;
      v23 = 0x23580A01CC35D89ELL;
    }

    else
    {
      v24 = a3;
      if (a3 >= 7)
      {
        goto LABEL_43;
      }

      v22 = dword_223C03A54[v24];
      v20 = dword_223C03A70[v24];
      v21 = v22 & 0xFFFDFF00;
      v23 = 0x7F1E21C17219CAE8;
    }

LABEL_52:
    v40 = v23;
    v41 = v21 | v22;
    v42 = v20;
    v43 = 1;
    if (v19)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3802000000;
      v38 = __Block_byref_object_copy__123;
      v39 = __Block_byref_object_dispose__124;
      v33[1] = MEMORY[0x277D85DD0];
      v33[2] = 0x40000000;
      v33[3] = ___ZN3adm5graph30ExclaveDSPControllerClientImpl12setParameterEjf_block_invoke;
      v33[4] = &unk_2784F07A0;
      v33[5] = &v35;
      v34 = audiodspcontroller_audiodspcontrol_setparameter(v8, &v44, &v40);
      if (v34)
      {
        v14 = 1970170734;
        adm::util::RTLogger::log<unsigned int &,float &,tb_error_t &>(this + 10, &v47, &v46, &v34);
      }

      else
      {
        v28 = *(v36 + 40);
        if (v28 == 1)
        {
          v29 = v36 + 6;
        }

        else
        {
          v29 = 0;
        }

        if (v28 == 1)
        {
          v30 = *v29;
          if (*v29 == 0xB36710F1590EB0BLL)
          {
            v31 = "PARAMETERERROR_INVALIDSCOPE";
          }

          else
          {
            switch(v30)
            {
              case 0x15AAC3129EA7047ELL:
                v31 = "PARAMETERERROR_INVALIDPARAMETER";
                break;
              case 0x3A8875D359853A61:
                v31 = "PARAMETERERROR_INVALIDELEMENT";
                break;
              case 0xF57D459A0697D042:
                v31 = "PARAMETERERROR_UNKNOWN";
                break;
              default:
                v31 = "<unknown>";
                break;
            }
          }

          v33[0] = v31;
          adm::util::RTLogger::log<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(this + 10, &v47, &v46, v29, v33);
          v32 = *v29;
          if (*v29 == 0xB36710F1590EB0BLL)
          {
            v14 = 1651729264;
          }

          else if (v32 == 0x15AAC3129EA7047ELL)
          {
            v14 = 1651536493;
          }

          else if (v32 == 0x3A8875D359853A61)
          {
            v14 = 1650814324;
          }

          else
          {
            v14 = 1970170734;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      _Block_object_dispose(&v35, 8);
      goto LABEL_21;
    }

LABEL_55:
    v25 = this[10].__d_.__rep_;
    if (v25 >= 0x65)
    {
      if (std::chrono::system_clock::now().__d_.__rep_ - this[11].__d_.__rep_ <= 500999)
      {
        goto LABEL_60;
      }

      v25 = this[10].__d_.__rep_;
    }

    result = *MEMORY[0x277D7F098];
    if (*MEMORY[0x277D7F098])
    {
      v26 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v26 + 16) = 0;
      *(v26 + 24) = 3;
      *(v26 + 32) = "setParameter(%d, %f): converting ex id %d to tb failed";
      *(v26 + 40) = v25;
      *(v26 + 44) = a2;
      *(v26 + 48) = a3;
      *(v26 + 52) = v18;
      *v26 = &unk_28371B420;
      *(v26 + 8) = 0;
      caulk::concurrent::messenger::enqueue(&this[12], v26);
      this[11].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
LABEL_60:
      v27 = this[10].__d_.__rep_;
      if (v27 != -1)
      {
        LODWORD(this[10].__d_.__rep_) = v27 + 1;
      }

      goto LABEL_62;
    }

LABEL_85:
    __break(1u);
    return result;
  }

  v14 = 1651536493;
  v17 = "setParameter(%d, %f): converting id to ex id failed";
LABEL_20:
  adm::util::RTLogger::log<unsigned int &,float &>(this + 10, v17, &v47, &v46);
LABEL_21:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v14;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned int &,float &>(std::chrono::system_clock::time_point *a1, uint64_t a2, int *a3, int *a4)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v10 = *a4;
  v11 = *a3;
  v12 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v12 + 16) = 0;
  *(v12 + 24) = 3;
  *(v12 + 32) = a2;
  *(v12 + 40) = rep;
  *(v12 + 44) = v11;
  *(v12 + 48) = v10;
  *v12 = &unk_28371B478;
  *(v12 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v12);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

__n128 __Block_byref_object_copy__123(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl12setParameterEjf_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned int &,float &,tb_error_t &>(std::chrono::system_clock::time_point *a1, int *a2, int *a3, int *a4)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v10 = *a4;
  v11 = *a3;
  v12 = *a2;
  v13 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  *(v13 + 32) = "setParameter(%d, %f): tb call failed: tbError=%d";
  *(v13 + 40) = rep;
  *(v13 + 44) = v12;
  *(v13 + 48) = v11;
  *(v13 + 52) = v10;
  *v13 = &unk_28371B4D0;
  *(v13 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v13);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(std::chrono::system_clock::time_point *a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v12 = *a5;
  v13 = *a4;
  v14 = *a3;
  v15 = *a2;
  v16 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v16 + 16) = 0;
  *(v16 + 24) = 3;
  *(v16 + 32) = "setParameter(%d, %f): tb call failed: failure=%d, %s";
  *(v16 + 40) = rep;
  *(v16 + 44) = v15;
  *(v16 + 48) = v14;
  *(v16 + 56) = v13;
  *(v16 + 64) = v12;
  *v16 = &unk_28371B528;
  *(v16 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v16);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,float &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,float &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,float &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,float &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 20), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}