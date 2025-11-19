void sub_1C9255400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 5);
}

void sub_1C925570C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x1CCA84AE0](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, &v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v13, a1, a2, v8);
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
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  *(a5 + 164) |= 0x500u;
  v15 = 95;
  if (*(a5 + 169) == 1)
  {
    v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
    v10 = a5 + 64;
    v11 = &v14;
  }

  else
  {
    if (*(a5 + 170) != 1)
    {
      std::vector<char>::push_back[abi:ne200100](a5 + 64, &v15);
      return a2 + 1;
    }

    v13 = 95;
    v10 = a5 + 64;
    v11 = &v13;
  }

  std::vector<char>::push_back[abi:ne200100](v10, v11);
  return a2 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 12;
          goto LABEL_77;
        }

        v5 = 12;
        goto LABEL_61;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 10;
          goto LABEL_77;
        }

        v5 = 10;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 13;
            goto LABEL_77;
          }

          v5 = 13;
          goto LABEL_61;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 9;
            goto LABEL_77;
          }

          v5 = 9;
          goto LABEL_61;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 11;
            goto LABEL_77;
          }

          v5 = 11;
          goto LABEL_61;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_61;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 7;
        goto LABEL_77;
      }

      v5 = 7;
LABEL_61:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 8;
LABEL_77:
        *a4 = v11;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_61;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_82;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v7 & 0xF8) != 0x30)
    {
      goto LABEL_51;
    }

    v6 = *v7 + 8 * v6 - 48;
    if (a2 + 2 != a3)
    {
      v8 = a2[2];
      v9 = v8 & 0xF8;
      v10 = v8 + 8 * v6 - 48;
      if (v9 == 48)
      {
        v7 = a2 + 3;
      }

      else
      {
        v7 = a2 + 2;
      }

      if (v9 == 48)
      {
        v6 = v10;
      }

      goto LABEL_51;
    }
  }

  v7 = a3;
LABEL_51:
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
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

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
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

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C925605C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 9);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 3);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1C9256454(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x1CCA84AE0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
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

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
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

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C88;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C88;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
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

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C58;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C58;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 <= 0x71)
  {
    if (*a2 <= 0x65u)
    {
      if (v5 != 48)
      {
        if (v5 != 99)
        {
          if (v5 == 95)
          {
            goto LABEL_93;
          }

          goto LABEL_70;
        }

        v4 = (a2 + 1);
        if (a2 + 1 != a3 && *v4 >= 65)
        {
          v6 = *v4;
          if (v6 < 0x5B || (v6 - 97) <= 0x19u)
          {
            v7 = v6 & 0x1F;
            goto LABEL_72;
          }
        }

LABEL_93:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 0;
        return ++v4;
      }

      v7 = 0;
      goto LABEL_75;
    }

    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 12;
        goto LABEL_90;
      }

      v7 = 12;
      goto LABEL_75;
    }

    if (v5 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 10;
        goto LABEL_90;
      }

      v7 = 10;
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 13;
        goto LABEL_90;
      }

      v7 = 13;
      goto LABEL_75;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 9;
        goto LABEL_90;
      }

      v7 = 9;
LABEL_75:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
      return ++v4;
    }

LABEL_70:
    v7 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
LABEL_72:
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v7;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_75;
    }

    goto LABEL_93;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_93;
    }

    v8 = a2[1];
    if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
    {
      goto LABEL_93;
    }

    v4 = (a2 + 2);
    if (a2 + 2 == a3)
    {
      goto LABEL_93;
    }

    v9 = *v4;
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_93;
    }

    goto LABEL_43;
  }

  if (v5 == 118)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v15 = 11;
LABEL_90:
      *a4 = v15;
      return ++v4;
    }

    v7 = 11;
    goto LABEL_75;
  }

  if (v5 != 120)
  {
    goto LABEL_70;
  }

LABEL_43:
  if (v4 + 1 == a3)
  {
    goto LABEL_93;
  }

  v10 = v4[1];
  v11 = -48;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    v10 |= 0x20u;
    if ((v10 - 97) >= 6u)
    {
      goto LABEL_93;
    }

    v11 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_93;
  }

  v12 = v4[2];
  v13 = -48;
  if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
  {
    v12 |= 0x20u;
    if ((v12 - 97) >= 6u)
    {
      goto LABEL_93;
    }

    v13 = -87;
  }

  v14 = v13 + v12 + 16 * (v11 + v10);
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v14;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
  }

  v4 += 3;
  return v4;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
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
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
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

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
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

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
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

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1C9256FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 2);
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_61;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
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
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v75);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v75;
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_167;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_167:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    negate = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_163;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v75);
    v16 = this->__ranges_.__begin_;
    v17 = this->__ranges_.__end_ - v16;
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v16->second.__r_.__value_.__r.__words) >= 1)
      {
        ++v18;
        ++v16;
        if (v18 >= v19)
        {
          goto LABEL_32;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_32:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_143;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v22 = 0;
    goto LABEL_145;
  }

  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v75);
  v38 = this->__equivalences_.__begin_;
  v39 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v40 = this->__equivalences_.__end_ - v38;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v38->__r_.__value_.__l.__size_;
      }

      if (v42 == v47)
      {
        v49 = v48 >= 0 ? v38 : v38->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v42))
        {
          break;
        }
      }

      v46 = v45++ < v41;
      ++v38;
      if (!--v44)
      {
        goto LABEL_140;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v39 < 0)
    {
LABEL_141:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_140:
    v21 = 0;
    v22 = 0;
    if (v39 < 0)
    {
      goto LABEL_141;
    }
  }

  if (!v46)
  {
LABEL_145:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v69 = tab[__src];
      if (((v69 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_163;
      }

      neg_mask = this->__neg_mask_;
      if ((v69 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_162:
        negate = v22;
LABEL_164:
        v9 = 2;
        goto LABEL_61;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_163:
    negate = 1;
    goto LABEL_164;
  }

LABEL_143:
  v9 = 2;
  negate = v22;
  if (v21)
  {
    goto LABEL_61;
  }

LABEL_39:
  v24 = *a2->__current_;
  v75.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v24) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = this->__chars_.__begin_;
  v26 = this->__chars_.__end_ - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

    while (--v26);
  }

  v28 = this->__neg_mask_;
  if (v28 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v24 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v24] & v28) == 0)
    {
      v29 = (v24 == 95) & (v28 >> 7);
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v24, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v29 & 1) == 0 && !v33)
    {
LABEL_60:
      negate = 1;
      goto LABEL_61;
    }
  }

  v37 = this->__ranges_.__begin_;
  v36 = this->__ranges_.__end_;
  if (v37 == v36)
  {
    goto LABEL_99;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v37 = this->__ranges_.__begin_;
    v36 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v50 = v36 - v37;
  if (v50)
  {
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v37->second.__r_.__value_.__r.__words) >= 1)
    {
      ++v51;
      ++v37;
      if (v51 >= v52)
      {
        goto LABEL_95;
      }
    }

    v53 = 1;
    negate = 1;
  }

  else
  {
LABEL_95:
    v53 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_99:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_134:
      v65 = this->__mask_;
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v75.__r_.__value_.__s.__data_[0]] & v65) != 0)
      {
        goto LABEL_60;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      negate |= v66;
      goto LABEL_61;
    }

    v54 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v55 = this->__equivalences_.__begin_;
    v56 = this->__equivalences_.__end_ - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v9;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = v55->__r_.__value_.__l.__size_;
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : v55->__r_.__value_.__r.__words[0];
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        ++v55;
        if (!--v59)
        {
          goto LABEL_131;
        }
      }

      negate = 1;
LABEL_131:
      v9 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_133:
        if (v61)
        {
          goto LABEL_61;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_133;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_133;
  }

LABEL_61:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v35 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v35 = -995;
  }

  a2->__do_ = v35;
  a2->__node_ = first;
}

void sub_1C9257940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C9257A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
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

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C9257BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
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

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
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
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
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

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 4);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
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

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
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

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
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

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3D18;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3D18;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
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

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3CE8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3CE8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = (v3 + 2);
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_41:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v19 = a1->__marked_count_ + 1;
    v20 = *v11;
    if (v20 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v20 != 92)
    {
      return v11;
    }

    v21 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v21)
    {
      v30 = 0;
      v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v30);
      if (v22 == v21)
      {
        goto LABEL_78;
      }

      if (v22 != v4)
      {
        v23 = *v22;
        if (v23 == 44)
        {
          v29 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v29);
          if (v24 != v4)
          {
            if (v24 + 1 == v4 || *v24 != 92)
            {
              goto LABEL_77;
            }

            if (v24[1] == 125)
            {
              v4 = v24 + 2;
            }

            else
            {
              v4 = v24;
            }
          }

          if (v4 != v24)
          {
            v26 = v29;
            v25 = v30;
            if (v29 == -1)
            {
              v27 = a1;
              v26 = -1;
              goto LABEL_75;
            }

            if (v29 >= v30)
            {
              v27 = a1;
LABEL_75:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
              return v4;
            }

LABEL_78:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v22 + 1 != v4 && v23 == 92)
        {
          v4 = v22[1] == 125 ? v22 + 2 : v22;
          if (v22 != v4)
          {
            v25 = v30;
            v27 = a1;
            v26 = v30;
            goto LABEL_75;
          }
        }
      }

LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v16 = a2[1];
        if (v16 == 66)
        {
          v17 = 1;
        }

        else
        {
          if (v16 != 98)
          {
            goto LABEL_28;
          }

          v17 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v17);
        v9 = a2 + 2;
        goto LABEL_29;
      }

LABEL_28:
      v9 = a2;
      goto LABEL_29;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_29;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_23:
    v9 = a2 + 1;
    goto LABEL_29;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_23;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_29;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_28;
  }

  v13 = a2[2];
  if (v13 == 33)
  {
    std::regex_traits<char>::regex_traits(&v40.__traits_);
    memset(&v40.__flags_, 0, 40);
    v40.__flags_ = a1->__flags_;
    v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
    v27 = v40.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
    a1->__marked_count_ += v27;
    if (v14 == a3 || *v14 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_59;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  std::regex_traits<char>::regex_traits(&v40.__traits_);
  memset(&v40.__flags_, 0, 40);
  v40.__flags_ = a1->__flags_;
  v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
  v15 = v40.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 0, a1->__marked_count_);
  a1->__marked_count_ += v15;
  if (v14 == a3 || *v14 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_59:
  v9 = v14 + 1;
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_3;
  }

  v18 = *a2;
  if (v18 <= 0x3E)
  {
    v8 = a2;
    if (*a2 <= 0x28u)
    {
      if (v18 == 36)
      {
        goto LABEL_4;
      }

      if (v18 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++a1->__open_count_;
            v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
            if (v23 != a3 && *v23 == 41)
            {
              --a1->__open_count_;
              v8 = v23 + 1;
              goto LABEL_4;
            }
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v24 = a1->__marked_count_;
            ++a1->__open_count_;
            v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
            if (v25 != a3)
            {
              v26 = v25;
              if (*v25 == 41)
              {
                std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v24);
                --a1->__open_count_;
                v8 = v26 + 1;
                goto LABEL_4;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }
    }

    else
    {
      if (v18 == 41)
      {
        goto LABEL_4;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_74:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
    v8 = a2 + 1;
    goto LABEL_4;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_71:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_74;
  }

  v8 = a2;
  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_4;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_101;
    }

    goto LABEL_71;
  }

  v20 = a2 + 1;
  if (a3 == a2 + 1)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v21 = *v20;
  v22 = v21 - 48;
  if (v21 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v22);
    v8 = a2 + 2;
    goto LABEL_78;
  }

  v8 = a2 + 1;
  if ((v21 - 49) <= 8)
  {
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v28 = *v8;
        if ((v28 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_103;
        }

        ++v8;
        v22 = v28 + 10 * v22 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v22)
      {
LABEL_103:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v22 > marked_count)
    {
      goto LABEL_103;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
  }

LABEL_78:
  if (v20 != v8)
  {
    goto LABEL_4;
  }

  v29 = *v20;
  if (v29 <= 0x63)
  {
    if (v29 != 68)
    {
      if (v29 != 83)
      {
        v8 = a2 + 1;
        if (v29 != 87)
        {
          goto LABEL_97;
        }

        v30 = a1;
        v31 = 1;
        goto LABEL_91;
      }

      v37 = a1;
      v38 = 1;
      goto LABEL_94;
    }

    v32 = a1;
    v33 = 1;
    goto LABEL_89;
  }

  if (v29 != 119)
  {
    if (v29 == 115)
    {
      v37 = a1;
      v38 = 0;
LABEL_94:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v37, v38);
      v35 = started->__mask_ | 0x4000;
      goto LABEL_95;
    }

    v8 = a2 + 1;
    if (v29 != 100)
    {
      goto LABEL_97;
    }

    v32 = a1;
    v33 = 0;
LABEL_89:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v32, v33);
    v35 = started->__mask_ | 0x400;
LABEL_95:
    started->__mask_ = v35;
    goto LABEL_96;
  }

  v30 = a1;
  v31 = 0;
LABEL_91:
  v36 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
  v36->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v36, 95);
LABEL_96:
  v8 = a2 + 2;
LABEL_97:
  if (v20 == v8)
  {
    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    if (v39 == v20)
    {
      v8 = a2;
    }

    else
    {
      v8 = v39;
    }
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 11);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * (v11 + v13 - 2);
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(begin);
}

void sub_1C9259510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BE0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BE0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
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

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

CFHashCode std::hash<applesauce::CF::StringRef>::operator()(const void *a1)
{
  if (a1)
  {
    return CFHash(a1);
  }

  else
  {
    return 0xD7C06285B9DE677ALL;
  }
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(cf);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (cf)
  {
    v5 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_9;
  }

  return v5;
}

void std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = __p[2];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioDSPGraph::Boxes::VectorGainBox::initialize(AudioDSPGraph::Boxes::VectorGainBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = *(this + 9);
  v3 = *(this + 10);
  v4 = v3 - v2;
  v5 = (v3 - v2) >> 5;
  if (v5 != 1)
  {
    v8 = *(this + 13) - *(this + 12);
    goto LABEL_59;
  }

  v6 = *(this + 12);
  v7 = *(this + 13);
  v8 = v7 - v6;
  if (((v7 - v6) & 0x1FFFFFFFE0) != 0x20)
  {
    v5 = 1;
LABEL_59:
    caulk::make_string("There must be one input and output, instead of %u and %u.", v54, v5, v8 >> 5);
    AudioDSPGraph::ThrowException(1667788321, v54, off_1E8337C18);
  }

  if (v3 == v2)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v55, v45, v4 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v55, off_1E8337C60);
  }

  if (v7 == v6)
  {
    v46 = v8 >> 5;
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v55, v47, v46, 0);
    AudioDSPGraph::ThrowException(1919837985, v55, off_1E8337C78);
  }

  v9 = *(*(v2 + 16) + 120);
  v10 = *(*(v6 + 16) + 120);
  if (v9[7] != *(v10 + 28))
  {
    v48 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v49 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The input and output ports must have the same number of channels, but have %u and %u.", v53, v48, *(*(*(v49 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v53, off_1E8337C30);
  }

  if (v9[2] != 1718773105 || *(v10 + 8) != 1718773105)
  {
    if (*(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 8) == 1718773105)
    {
      v43 = "freq";
    }

    else
    {
      v43 = "time";
    }

    if (*(*(*(AudioDSPGraph::Box::out(this, 0) + 16) + 120) + 8) == 1718773105)
    {
      v44 = "freq";
    }

    else
    {
      v44 = "time";
    }

    caulk::make_string("The input and output must both be frequency-domain, but are '%s' and '%s'", v52, v43, v44);
    AudioDSPGraph::ThrowException(1718449215, v52, off_1E8337C48);
  }

  v11 = v9[10];
  *(this + 191) = v11;
  v12 = *(this + 192);
  std::vector<float>::vector[abi:ne200100](&__p, v11);
  v13 = *(this + 101);
  v14 = *(this + 100);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
  v16 = v12 - v15;
  if (v12 <= v15)
  {
    if (v12 >= v15)
    {
      goto LABEL_27;
    }

    v21 = (v14 + 24 * v12);
    if (v13 != v21)
    {
      v22 = *(this + 101);
      do
      {
        v24 = *(v22 - 3);
        v22 -= 3;
        v23 = v24;
        if (v24)
        {
          *(v13 - 2) = v23;
          operator delete(v23);
        }

        v13 = v22;
      }

      while (v22 != v21);
    }
  }

  else
  {
    v17 = *(this + 102);
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 3) < v16)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v14) >> 3);
      v19 = 0x5555555555555556 * ((v17 - v14) >> 3);
      if (v19 <= v12)
      {
        v19 = v12;
      }

      if (v18 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v19;
      }

      v55[4] = this + 800;
      if (v20 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = &v13[3 * v16];
    v25 = 24 * v12 - 8 * ((v13 - v14) >> 3);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, __p, v51, (v51 - __p) >> 2);
      v13 += 3;
      v25 -= 24;
    }

    while (v25);
  }

  *(this + 101) = v21;
LABEL_27:
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v26 = *(this + 191);
  v27 = *(this + 98);
  v28 = *(this + 97);
  v29 = (v27 - v28) >> 2;
  if (v26 <= v29)
  {
    if (v26 >= v29)
    {
      return;
    }

    v35 = v28 + 4 * v26;
  }

  else
  {
    v30 = v26 - v29;
    v31 = *(this + 99);
    if (v30 > (v31 - v27) >> 2)
    {
      v32 = v31 - v28;
      v33 = (v31 - v28) >> 1;
      if (v33 <= v26)
      {
        v33 = *(this + 191);
      }

      if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v34 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v33;
      }

      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v34);
    }

    v36 = (v30 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v37 = vdupq_n_s64(v36);
    v38 = v36 - ((v30 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v39 = (v27 + 8);
    v40 = -4;
    do
    {
      v41 = vdupq_n_s64(v40 + 4);
      v42 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v41, xmmword_1C925F100)));
      if (vuzp1_s16(v42, *v37.i8).u8[0])
      {
        *(v39 - 2) = 1065353216;
      }

      if (vuzp1_s16(v42, *&v37).i8[2])
      {
        *(v39 - 1) = 1065353216;
      }

      if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v41, xmmword_1C925F0F0)))).i32[1])
      {
        *v39 = 1065353216;
        v39[1] = 1065353216;
      }

      v40 += 4;
      v39 += 4;
    }

    while (v38 != v40);
    v35 = v27 + 4 * v30;
  }

  *(this + 98) = v35;
}

void sub_1C925A44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C925A53C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioDSPGraph::Boxes::VectorGainBox::process(AudioDSPGraph::Boxes::VectorGainBox *this, int a2)
{
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v26 = (this + 40);
    if (*(this + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v34, v26, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C60);
  }

  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v27 = (this + 40);
    if (*(this + 63) < 0)
    {
      v27 = *v27;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v34, v27, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v4 + 16) + 56) + 80);
  v8 = *v6;
  __A = 1.0;
  vDSP_vfill(&__A, *(this + 97), 1, (*(this + 98) - *(this + 97)) >> 2);
  v9 = *(this + 100);
  v10 = *(this + 101);
  while (v9 != v10)
  {
    v11 = *v9;
    v9 += 3;
    vDSP_vmin(*(this + 97), 1, v11, 1, *(this + 97), 1, (*(this + 98) - *(this + 97)) >> 2);
  }

  if (v8)
  {
    v12 = (v7 + 16);
    v13 = (v6 + 4);
    do
    {
      v14 = *v13;
      v13 += 2;
      v15 = *v12;
      v34.realp = v14;
      v34.imagp = &v14[a2];
      __C.realp = v15;
      __C.imagp = &v15[a2];
      v16 = *v34.imagp;
      vDSP_zrvmul(&v34, 1, *(this + 97), 1, &__C, 1, (*(this + 98) - *(this + 97)) >> 2);
      *__C.imagp = v16;
      *(v12 - 1) = 8 * a2;
      v12 += 2;
      --v8;
    }

    while (v8);
  }

  v17 = *(this + 9);
  if (*(this + 10) == v17)
  {
    v28 = (this + 40);
    if (*(this + 63) < 0)
    {
      v28 = *v28;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v34, v28, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C60);
  }

  v18 = *(this + 12);
  if (*(this + 13) == v18)
  {
    v29 = (this + 40);
    if (*(this + 63) < 0)
    {
      v29 = *v29;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v34, v29, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C78);
  }

  v19 = *(*(v17 + 16) + 56);
  v20 = *(*(v18 + 16) + 56);
  v21 = *(v19 + 8);
  v22 = *(v19 + 24);
  v23 = *(v19 + 40);
  *(v20 + 56) = *(v19 + 56);
  *(v20 + 40) = v23;
  *(v20 + 24) = v22;
  *(v20 + 8) = v21;
  v24 = *(this + 9);
  if (*(this + 10) == v24)
  {
    v30 = (this + 40);
    if (*(this + 63) < 0)
    {
      v30 = *v30;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v34, v30, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C60);
  }

  v25 = *(this + 12);
  if (*(this + 13) == v25)
  {
    v31 = (this + 40);
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v34, v31, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C78);
  }

  *(*(*(v25 + 16) + 56) + 72) = *(*(*(v24 + 16) + 56) + 72);
}

void sub_1C925A934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::VectorGainBox::setProperty(AudioDSPGraph::Boxes::VectorGainBox *this, int a2, int a3, unsigned int a4, unsigned int a5, _DWORD *a6)
{
  if (!(a4 | a3 | (a2 - 100)))
  {
    v8 = *(this + 2);
    if (v8 && (*(v8 + 922) & 1) != 0)
    {
      return 4294956447;
    }

    if (a5 != 4)
    {
      return 4294956445;
    }

    v9 = 0;
    *(this + 192) = *a6;
    return v9;
  }

  if (a2 != 100 && !(a4 | a3) && (a2 - 100) <= *(this + 192))
  {
    v10 = a5 >> 2;
    if (v10 == *(this + 191))
    {
      v11 = *(this + 100) + 24 * (a2 - 101);
      v12 = 4 * (a5 >> 2);
      v13 = *(v11 + 16);
      v14 = *v11;
      if (v10 > (v13 - *v11) >> 2)
      {
        if (v14)
        {
          *(v11 + 8) = v14;
          operator delete(v14);
          v13 = 0;
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        v15 = v13 >> 1;
        if (v13 >> 1 <= v10)
        {
          v15 = v10;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        std::vector<unsigned int>::__vallocate[abi:ne200100](v11, v16);
      }

      v17 = *(v11 + 8);
      v18 = v17 - v14;
      if (v10 <= (v17 - v14) >> 2)
      {
        if (a5 >= 4)
        {
          memmove(*v11, a6, 4 * (a5 >> 2));
        }

        v9 = 0;
        v19 = &v14[v12];
      }

      else
      {
        if (v17 != v14)
        {
          memmove(*v11, a6, v17 - v14);
        }

        v20 = *(v11 + 8);
        if (v18 != v12)
        {
          v21 = (a6 + v18);
          v22 = (&v14[v12] - v17);
          v20 = *(v11 + 8);
          do
          {
            v23 = *v21++;
            *v20 = v23;
            v20 += 4;
            v22 -= 4;
          }

          while (v22);
        }

        v9 = 0;
        v19 = v20;
      }

      *(v11 + 8) = v19;
      return v9;
    }

    return 4294956445;
  }

  return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
}

uint64_t AudioDSPGraph::Boxes::VectorGainBox::getProperty(AudioDSPGraph::Boxes::VectorGainBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, _DWORD *__dst)
{
  if (!(a4 | a3 | (a2 - 100)))
  {
    if (*a5 == 4)
    {
      if (!__dst)
      {
        return 4294967246;
      }

      v8 = 0;
      *__dst = *(this + 192);
      return v8;
    }

    return 561211770;
  }

  if (a2 != 100 && !(a4 | a3) && (a2 - 100) <= *(this + 192))
  {
    if (*a5 == 4 * *(this + 191))
    {
      if (__dst)
      {
        v9 = *(this + 100) + 24 * (a2 - 101);
        v10 = *v9;
        v11 = *(v9 + 8);
        if (v11 != v10)
        {
          memmove(__dst, v10, v11 - v10);
        }

        return 0;
      }

      return 4294967246;
    }

    return 561211770;
  }

  return AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, __dst);
}

uint64_t AudioDSPGraph::Boxes::VectorGainBox::getPropertyInfo(AudioDSPGraph::Boxes::VectorGainBox *this, int a2, int a3, int a4)
{
  if (a4 | a3 | (a2 - 100))
  {
    if (a2 == 100 || a4 | a3 || (a2 - 100) > *(this + 192))
    {
      return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
    }

    else
    {
      return (4 * *(this + 191)) | 0x100000000;
    }
  }

  else
  {
    result = 0x100000004;
    v6 = *(this + 2);
    if (v6 && *(v6 + 922))
    {
      return 4;
    }
  }

  return result;
}

double AudioDSPGraph::Boxes::VectorGainBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.90940534e262;
  *a1 = xmmword_1C925F250;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::VectorGainBox::~VectorGainBox(AudioDSPGraph::Boxes::VectorGainBox *this)
{
  *this = &unk_1F48D3F28;
  v3 = (this + 800);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 98) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D3F28;
  v3 = (this + 800);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 98) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double AudioDSPGraph::Boxes::VolumeCurveBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.29504994e171;
  *a1 = xmmword_1C925F360;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::getParameterInfo(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = 0;
    v6 = -10866;
LABEL_6:
    *a4 = v6;
    goto LABEL_7;
  }

  AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(this);
  if (0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) <= a3)
  {
    v5 = 0;
    v6 = -10878;
    goto LABEL_6;
  }

  AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(v8);
  v9 = AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos + 104 * a3;
  v10 = *(v9 + 80);
  *(a4 + 64) = *(v9 + 64);
  *(a4 + 80) = v10;
  *(a4 + 96) = *(v9 + 96);
  v11 = *(v9 + 16);
  *a4 = *v9;
  *(a4 + 16) = v11;
  v12 = *(v9 + 48);
  *(a4 + 32) = *(v9 + 32);
  *(a4 + 48) = v12;
  v5 = 1;
LABEL_7:
  *(a4 + 104) = v5;
}

void sub_1C925AF30(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = -1;
  *(v1 + 104) = 0;
  __cxa_end_catch();
  JUMPOUT(0x1C925AF24);
}

void AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(AudioDSPGraph::Boxes::VolumeCurveBox *this)
{
  {
    if (v1)
    {
      AudioDSPGraph::Boxes::VolumeCurveBox::ParameterInfos::ParameterInfos(v1);
    }
  }
}

void AudioDSPGraph::Boxes::VolumeCurveBox::ParameterInfos::ParameterInfos(AudioDSPGraph::Boxes::VolumeCurveBox::ParameterInfos *this)
{
  v9 = *MEMORY[0x1E69E9840];
  qword_1EC3955C8 = 0;
  qword_1EC3955D0 = 0;
  AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos = 0;
  v5 = 0;
  v7 = 0u;
  v8 = 3355443200;
  LODWORD(v7) = 1;
  DWORD2(v7) = 1097859072;
  strcpy(v2, "Transfer function");
  *&v2[18] = unk_1C92627E3;
  *&v2[20] = unk_1C92627E5;
  *&v2[24] = unk_1C92627E9;
  v3 = xmmword_1C92627F1;
  v4 = 0u;
  LODWORD(v4) = 0;
  v6 = @"Transfer function";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v2);
  v5 = 0;
  LODWORD(v7) = 13;
  *(&v7 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v7) = -1032847360;
  v8 = 3355443200;
  *v2 = *"Minimum volume";
  *&v2[16] = unk_1C9262816;
  v3 = xmmword_1C9262826;
  v4 = 0u;
  LODWORD(v4) = 0;
  v6 = @"Minimum volume";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v2);
  v5 = 0;
  HIDWORD(v7) = 0;
  LODWORD(v7) = 13;
  *(&v7 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  *v2 = *"Maximum volume";
  *&v2[16] = unk_1C926284B;
  v3 = xmmword_1C926285B;
  v4 = 0u;
  LODWORD(v4) = 0;
  v6 = @"Maximum volume";
  v8 = 3355443200;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v2);
  v5 = 0;
  *&v7 = 0;
  *(&v7 + 1) = 0x3E8000003F800000;
  strcpy(v2, "Raw slider value");
  v2[17] = 0;
  *&v2[18] = 0;
  *&v2[20] = 0;
  *&v2[24] = 0;
  v3 = xmmword_1C9262890;
  v4 = 0u;
  LODWORD(v4) = 0;
  v6 = @"Raw slider value";
  v8 = 3355443200;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v2);
  v5 = 0;
  *&v7 = 0;
  v8 = 1207959552;
  *(&v7 + 1) = 0x3E8000003F800000;
  strcpy(v2, "Mapped slider value");
  *&v2[20] = unk_1C92628B9;
  *&v2[24] = unk_1C92628BD;
  v3 = xmmword_1C92628C5;
  v4 = 0u;
  LODWORD(v4) = 0;
  v6 = @"Mapped slider value";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v2);
  v5 = 0;
  LODWORD(v7) = 13;
  *(&v7 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v7) = -1036779520;
  v8 = 1207959552;
  *v2 = *"Decibel gain";
  *&v2[16] = unk_1C92628EA;
  v3 = xmmword_1C92628FA;
  v4 = 0u;
  LODWORD(v4) = 0;
  v6 = @"Decibel gain";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C925B210(_Unwind_Exception *exception_object)
{
  if (AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos)
  {
    qword_1EC3955C8 = AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    operator delete(AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](__int128 *a1)
{
  v1 = qword_1EC3955C8;
  if (qword_1EC3955C8 >= qword_1EC3955D0)
  {
    v8 = AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v9 = qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x276276276276276)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    if (0x9D89D89D89D89D8ALL * ((qword_1EC3955D0 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) > v11)
    {
      v11 = 0x9D89D89D89D89D8ALL * ((qword_1EC3955D0 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955D0 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0x276276276276276)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = a1[5];
    v14 = 8 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    *(v14 + 64) = a1[4];
    *(v14 + 80) = v13;
    *(v14 + 96) = *(a1 + 12);
    v15 = a1[1];
    *v14 = *a1;
    *(v14 + 16) = v15;
    v16 = a1[3];
    *(v14 + 32) = a1[2];
    *(v14 + 48) = v16;
    v7 = 104 * v10 + 104;
    v17 = v14 - v9;
    memcpy((v14 - v9), v8, v9);
    AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos = v17;
    qword_1EC3955C8 = v7;
    qword_1EC3955D0 = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v2 = *a1;
    v3 = a1[2];
    *(qword_1EC3955C8 + 16) = a1[1];
    *(v1 + 32) = v3;
    *v1 = v2;
    v4 = a1[3];
    v5 = a1[4];
    v6 = a1[5];
    *(v1 + 96) = *(a1 + 12);
    *(v1 + 64) = v5;
    *(v1 + 80) = v6;
    *(v1 + 48) = v4;
    v7 = v1 + 104;
  }

  qword_1EC3955C8 = v7;
}

AudioDSPGraph::Boxes::VolumeCurveBox *AudioDSPGraph::Boxes::VolumeCurveBox::getParameterList@<X0>(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(this);
    this = std::vector<unsigned int>::vector[abi:ne200100](a3, 0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3));
    v5 = *a3;
    v4 = a3[1];
    if (*a3 != v4)
    {
      v6 = 0;
      v7 = (v4 - v5 - 4) >> 2;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (v5 + 8);
      do
      {
        v11 = vdupq_n_s64(v6);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1C925F100)));
        if (vuzp1_s16(v12, *v8.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v8).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1C925F0F0)))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v10 += 4;
      }

      while (v9 != v6);
    }
  }

  return this;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::getParameter(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    LODWORD(v6) = -10866;
    v5 = off_1E8337CD8;
    goto LABEL_14;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v4 = *(this + 196);
        goto LABEL_17;
      case 4:
        v4 = *(this + 197);
        goto LABEL_17;
      case 5:
        v4 = *(this + 198);
        goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    v4 = *(this + 191);
    goto LABEL_17;
  }

  if (a2 == 1)
  {
    v4 = *(this + 194);
    goto LABEL_17;
  }

  if (a2 != 2)
  {
LABEL_13:
    LODWORD(v6) = -10878;
    v5 = off_1E8334BA8;
LABEL_14:
    *(&v6 + 1) = v5;
    v7 = 0;
    *a4 = v6;
    *(a4 + 16) = 0;
    v8 = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v6);
    return;
  }

  v4 = *(this + 195);
LABEL_17:
  *a4 = v4;
  *(a4 + 32) = 1;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::setParameter(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, uint64_t a5@<X8>)
{
  if (a4)
  {
    LODWORD(v24) = -10866;
    v15 = off_1E8337C90;
    goto LABEL_19;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v19 = *(this + 194);
      if (v19 <= a2)
      {
        *(this + 195) = a2;
        v20 = *(this + 196);
        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        if (v20 > 1.0)
        {
          v20 = 1.0;
        }

        v21 = powf(v20, *(this + 192) / *(this + 193));
        *(this + 197) = v21;
        v11 = v19 + (v21 * (a2 - v19));
        goto LABEL_34;
      }

      LODWORD(v24) = -66743;
      *(&v24 + 1) = off_1E8337CC0;
      v25 = 0;
      v26 = 0;
      v22 = "maximum volume must be greater than minimum volume";
LABEL_38:
      AudioDSPGraph::Error::setDescription<>(&v24, v22);
      *a5 = v24;
      v23 = v25;
      v25 = 0;
      *(a5 + 16) = v23;
      LODWORD(v23) = v26;
      v26 = 0;
      *(a5 + 24) = v23;
      goto LABEL_20;
    }

    if (a3 != 3)
    {
      goto LABEL_18;
    }

    v12 = 0.0;
    if (a2 >= 0.0)
    {
      v12 = a2;
    }

    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    *(this + 196) = v12;
    v13 = *(this + 192);
    v14 = *(this + 193);
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = *(this + 195);
        if (v8 >= a2)
        {
          *(this + 194) = a2;
          v9 = *(this + 196);
          if (v9 < 0.0)
          {
            v9 = 0.0;
          }

          if (v9 > 1.0)
          {
            v9 = 1.0;
          }

          v10 = powf(v9, *(this + 192) / *(this + 193));
          *(this + 197) = v10;
          v11 = a2 + (v10 * (v8 - a2));
          goto LABEL_34;
        }

        LODWORD(v24) = -66743;
        *(&v24 + 1) = off_1E8337CA8;
        v25 = 0;
        v26 = 0;
        v22 = "minimum volume must be less than maximum volume";
        goto LABEL_38;
      }

LABEL_18:
      LODWORD(v24) = -10878;
      v15 = off_1E8334BC0;
LABEL_19:
      *(&v24 + 1) = v15;
      v25 = 0;
      *a5 = v24;
      *(a5 + 16) = 0;
      v26 = 0;
      *(a5 + 24) = 0;
LABEL_20:
      *(a5 + 32) = 0;
      AudioDSPGraph::Error::~Error(&v24);
      return;
    }

    v16 = a2;
    *(this + 191) = a2;
    v12 = 1.0;
    v13 = 2.0;
    v14 = 1.0;
    if (v16 <= 0xF)
    {
      v13 = flt_1C9262910[v16];
      v14 = flt_1C9262950[v16];
    }

    *(this + 192) = v13;
    *(this + 193) = v14;
    v17 = *(this + 196);
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    if (v17 <= 1.0)
    {
      v12 = v17;
    }
  }

  v18 = powf(v12, v13 / v14);
  *(this + 197) = v18;
  v11 = *(this + 194) + (v18 * (*(this + 195) - *(this + 194)));
LABEL_34:
  *(this + 198) = v11;
  *(a5 + 32) = 1;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::~VolumeCurveBox(AudioDSPGraph::Boxes::VolumeCurveBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Wire::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 4)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(*(v6 + 120) + 40);
    AudioDSPGraph::printi(a2, v4 + 4, "block size %u\n");
  }

  return result;
}

void sub_1C925BA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Wire::~Wire(AudioDSPGraph::Wire *this)
{
  *this = &unk_1F48D4428;
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D4428;
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);
}

uint64_t AudioDSPGraph::Wire::setSource(uint64_t this, AudioDSPGraph::OutputPort *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v12 = this;
    v6 = *(v2 + 1);
    v7 = v6 + 40;
    if (v6[63] < 0)
    {
      v7 = *v7;
    }

    v8 = (*(*v6 + 16))(v6, a2);
    caulk::make_string("wire already has a source: %s %s output %u", v15, v7, v8, *(*(v12 + 8) + 24));
    AudioDSPGraph::ThrowException(1633903905, v15, off_1E8337CF0);
  }

  v4 = *(a2 + 2);
  if (v4)
  {
    v5 = v4 == this;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v9 = *(a2 + 1);
    v10 = v9 + 40;
    if (v9[63] < 0)
    {
      v10 = *v10;
    }

    v11 = (*(*v9 + 16))(v9);
    caulk::make_string("output port already has a wire: %s %s output %u", v14, v10, v11, *(a2 + 6));
    AudioDSPGraph::ThrowException(1633903905, v14, off_1E8337D08);
  }

  *(this + 8) = a2;
  *(a2 + 2) = this;
  return this;
}

void sub_1C925BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

AudioDSPGraph::Wire *AudioDSPGraph::Wire::Wire(AudioDSPGraph::Wire *this, AudioDSPGraph::OutputPort *a2)
{
  *this = &unk_1F48D4428;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = 1065353216;
  *(this + 7) = 0;
  *(this + 64) = 0;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 72) = 0u;
  *(this + 28) = 1;
  *(this + 15) = this + 72;
  if (a2)
  {
    AudioDSPGraph::Wire::setSource(this, a2);
  }

  return this;
}

void *std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *AudioDSPGraph::Wire::addAll(void *this, AudioDSPGraph::Wire *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = this;
    do
    {
      v4 = *(v2 + 2);
      this = std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>((v3 + 16), v4);
      *(v4 + 16) = v3;
      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x1EEE64438](this, a2, a3, a4);
}

{
  return MEMORY[0x1EEE64450](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x1EEE64440]();
}

{
  return MEMORY[0x1EEE64448]();
}

{
  return MEMORY[0x1EEE64458]();
}

{
  return MEMORY[0x1EEE64460]();
}

{
  return MEMORY[0x1EEE64470]();
}

{
  return MEMORY[0x1EEE64478]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}