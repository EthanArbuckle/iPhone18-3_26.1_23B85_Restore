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
  MEMORY[0x245CE9560](exception, 9);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(uint64_t a1)
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 3);
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

void sub_24156584C(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x245CE96E0](v2, v1);
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

  JUMPOUT(0x245CE96E0);
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
  a1->__locale_ = &unk_28533B028;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CE96E0);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28533B028;
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
  a1->__locale_ = &unk_28533AFF8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CE96E0);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28533AFF8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 > 0x74u)
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

LABEL_43:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v10 = v4[1];
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6u)
          {
            goto LABEL_97;
          }

          v11 = -87;
        }

        if (v4 + 2 == a3)
        {
LABEL_97:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v12 = v4[2];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6u)
          {
            goto LABEL_97;
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

      if (v5 != 118)
      {
        if (v5 != 120)
        {
          goto LABEL_71;
        }

        goto LABEL_43;
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

        v16 = 11;
LABEL_89:
        *a4 = v16;
        return ++v4;
      }

      v15 = 11;
      goto LABEL_76;
    }

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

        v16 = 13;
        goto LABEL_89;
      }

      v15 = 13;
      goto LABEL_76;
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

        v16 = 9;
        goto LABEL_89;
      }

      v15 = 9;
LABEL_76:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
      return ++v4;
    }

LABEL_71:
    v15 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
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

        *a4 = v5;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if (*a2 > 0x65u)
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

        v16 = 12;
        goto LABEL_89;
      }

      v15 = 12;
      goto LABEL_76;
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

        v16 = 10;
        goto LABEL_89;
      }

      v15 = 10;
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  if (v5 == 48)
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

      *a4 = 0;
      return ++v4;
    }

    v15 = 0;
    goto LABEL_76;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_71;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v6 = a2[1];
  if (((v6 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  v7 = v6 & 0x1F;
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
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  v4 += 2;
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
      std::vector<long long>::__throw_length_error[abi:ne200100]();
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

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
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

void sub_241566394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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
  MEMORY[0x245CE9560](exception, 1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 2);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
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
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
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

void sub_241566DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_241566EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_241567064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

  JUMPOUT(0x245CE96E0);
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

  JUMPOUT(0x245CE96E0);
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
  MEMORY[0x245CE9560](exception, 4);
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

  JUMPOUT(0x245CE96E0);
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
  a1->__locale_ = &unk_28533B0B8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CE96E0);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28533B0B8;
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
  a1->__locale_ = &unk_28533B088;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CE96E0);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28533B088;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = a2 + 1;
    v8 = *a2;
    if ((a2 + 1 != a3 || v8 != 36) && ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
LABEL_29:
      if (v9 == a3)
      {
        return v9;
      }

      v19 = a1->__marked_count_ + 1;
      v20 = *v9;
      if (v20 == 42)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
        return v9 + 1;
      }

      if (v9 + 1 == a3 || v20 != 92 || v9[1] != 123)
      {
        return v9;
      }

      LODWORD(__max) = 0;
      v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
      if (v21 == v9 + 2)
      {
        goto LABEL_55;
      }

      if (v21 != a3)
      {
        v22 = v21 + 1;
        v23 = *v21;
        if (v23 == 44)
        {
          v31 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v21 + 1, a3, &v31);
          if (v24 != a3)
          {
            v25 = v24;
            if (v24 + 1 != a3 && *v24 == 92)
            {
              v26 = v24[1];
              v27 = v26 == 125;
              if (v26 == 125)
              {
                v28 = v31;
                if (v31 == -1)
                {
                  v29 = a1;
                  v28 = -1;
                  goto LABEL_52;
                }

                if (v31 >= __max)
                {
                  v29 = a1;
LABEL_52:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, __max, v28, end, marked_count + 1, v19, 1);
                  return &v25[2 * v27];
                }

LABEL_55:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v22 != a3 && v23 == 92 && *v22 == 125)
        {
          v3 = v21 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v19, 1);
          return v3;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(a1, a2, a3);
    v9 = v11;
    if (v11 == v3)
    {
      if (*v11 == 46)
      {
        operator new();
      }

      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, v3, a3);
    }

    if (v9 == v3 && v9 != a3 && v9 + 1 != a3 && *v9 == 92)
    {
      v12 = v9[1];
      if (v12 == 40)
      {
        v13 = v9 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v14 = a1->__marked_count_;
        do
        {
          v15 = v13;
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        v9 = v16 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v14);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v12);
        v18 = 2;
        if (!v17)
        {
          v18 = 0;
        }

        v9 += v18;
      }
    }

    if (v9 != v3)
    {
      goto LABEL_29;
    }
  }

  return v3;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if (a2 + 1 == a3)
      {
        end = this->__end_;
        marked_count = this->__marked_count_;
        goto LABEL_38;
      }

      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
      }

      else
      {
        if (v11 != 98)
        {
          goto LABEL_29;
        }

        v12 = 0;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
      return a2 + 2;
    }

    if (v6 != 94)
    {
      goto LABEL_30;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return a2 + 1;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_30;
  }

  if (a2 + 1 == a3)
  {
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_43:
    if (a2 + 1 == a3)
    {
      goto LABEL_99;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v20 == a3)
      {
        goto LABEL_99;
      }

      v21 = v20;
      if (*v20 != 41)
      {
        goto LABEL_99;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v22 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v23 == a3 || (v21 = v23, *v23 != 41))
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v22);
    }

    --*p_open_count;
    v24 = v21 + 1;
LABEL_56:
    result = a2;
    if (v24 == a2)
    {
      return result;
    }

    goto LABEL_96;
  }

  if (a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_29;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v15 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v15;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

LABEL_28:
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
    result = v8 + 1;
    if (v8 + 1 != a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 61)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v9 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
    this->__marked_count_ += v9;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_28;
  }

LABEL_29:
  v6 = *a2;
LABEL_30:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v16 = (v6 - 92);
    if (v16 <= 0x21)
    {
      if (((1 << (v6 - 92)) & 0x300000006) != 0)
      {
        return a2;
      }

      if (v6 == 92)
      {
LABEL_38:
        v17 = a2 + 1;
        if (a2 + 1 == a3)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v18 = *v17;
        if (v18 == 48)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_95:
          v24 = a2 + 2;
          goto LABEL_96;
        }

        if ((v18 - 49) <= 8)
        {
          v25 = (v18 - 48);
          v24 = a2 + 2;
          if (a2 + 2 != a3)
          {
            while (1)
            {
              v26 = *v24;
              if ((v26 - 48) > 9)
              {
                break;
              }

              if (v25 >= 0x19999999)
              {
                goto LABEL_100;
              }

              v25 = v26 + 10 * v25 - 48;
              if (++v24 == a3)
              {
                v24 = a3;
                break;
              }
            }

            if (!v25)
            {
              goto LABEL_100;
            }
          }

          if (v25 > marked_count)
          {
LABEL_100:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v25);
          if (v24 != v17)
          {
            goto LABEL_56;
          }

          v18 = *v17;
        }

        if (v18 > 99)
        {
          if (v18 == 119)
          {
            v27 = this;
            v28 = 0;
            goto LABEL_87;
          }

          if (v18 == 115)
          {
            v35 = this;
            v36 = 0;
LABEL_93:
            started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
            v32 = started->__mask_ | 0x4000;
            goto LABEL_94;
          }

          if (v18 != 100)
          {
            goto LABEL_88;
          }

          v29 = this;
          v30 = 0;
        }

        else
        {
          if (v18 != 68)
          {
            if (v18 != 83)
            {
              if (v18 == 87)
              {
                v27 = this;
                v28 = 1;
LABEL_87:
                v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
                v33->__mask_ |= 0x500u;
                std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
                goto LABEL_95;
              }

LABEL_88:
              v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
              if (v34 == v17)
              {
                v24 = a2;
              }

              else
              {
                v24 = v34;
              }

              goto LABEL_56;
            }

            v35 = this;
            v36 = 1;
            goto LABEL_93;
          }

          v29 = this;
          v30 = 1;
        }

        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v29, v30);
        v32 = started->__mask_ | 0x400;
LABEL_94:
        started->__mask_ = v32;
        goto LABEL_95;
      }

      if (v16 == 31)
      {
        goto LABEL_101;
      }
    }

    if (v6 == 91)
    {
      v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_56;
    }

    if (v6 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_83;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_83;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_43;
  }

LABEL_83:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v24 = a2 + 1;
LABEL_96:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v24, a3, end, marked_count + 1, v37);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 11);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x245CE96E0);
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

void sub_241568968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_28533AF68;
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

  JUMPOUT(0x245CE96E0);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_28533AF68;
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
  a1->__locale_ = &unk_28533AF38;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245CE96E0);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_28533AF38;
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

  JUMPOUT(0x245CE96E0);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x245CE96E0);
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void rtaid::Detector::GetNodeIDs(rtaid::Detector *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    if (!(v2 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<rtaid::TelephonyResetDetector>>(v2);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  if (*(a2 + 24))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<rtaid::TelephonyResetDetector>>(1uLL);
  }
}

void sub_2415690AC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::optional<CA::AudioBuffersDeprecated>::~optional(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

OpaqueAudioComponentInstance *std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](OpaqueAudioComponentInstance **a1, OpaqueAudioComponentInstance *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return AudioComponentInstanceDispose(result);
  }

  return result;
}

void rtaid::DetectorNode::~DetectorNode(rtaid::DetectorNode *this)
{
  v21 = *MEMORY[0x277D85DE8];
  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v2 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 8);
    if (*(this + 31) < 0)
    {
      v3 = *v3;
    }

    v9 = 136316418;
    v10 = "DetectorNode.cpp";
    v11 = 1024;
    v12 = 69;
    v13 = 1040;
    v14 = 19;
    v15 = 2080;
    v16 = "rtaid::DetectorNode]";
    v17 = 2048;
    v18 = this;
    v19 = 2080;
    v20 = v3;
    _os_log_impl(&dword_241557000, v2, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] destroyed %s", &v9, 0x36u);
  }

  v4 = *(this + 53);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 27);
  if (v5)
  {
    *(this + 28) = v5;
    operator delete(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  if (*(this + 144) == 1)
  {
    v7 = *(this + 17);
    ExtendedAudioBufferList_Destroy();
  }

  rtaid::NodeFormatConverter::~NodeFormatConverter((this + 40));
  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](this + 4, 0);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2415692E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

OpaqueAudioComponentInstance *rtaid::DetectorNode::resetSilenceAnalyzerErrorState(OpaqueAudioComponentInstance *this)
{
  if (this)
  {
    v1 = this;
    AudioUnitSetParameter(this, 0, 0, 0, 0.0, 0);
    AudioUnitSetParameter(v1, 1u, 0, 0, 0.0, 0);
    AudioUnitSetParameter(v1, 2u, 0, 0, 0.0, 0);
    AudioUnitSetParameter(v1, 3u, 0, 0, 0.0, 0);

    return AudioUnitSetParameter(v1, 6u, 0, 0, -1.0, 0);
  }

  return this;
}

uint64_t rtaid::DetectorNode::updateSilenceAnalyzerState(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = this;
    if (*(this + 160) & 1) != 0 || (*(this + 153) & 1) != 0 || (*(this + 161))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 154) ^ 1;
    }

    inData = v3;
    AudioUnitSetProperty(v1, 0xFA01u, 0, 0, &inData, 4u);
    if (*(v2 + 161))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v2 + 154);
    }

    v5 = v4;
    return AudioUnitSetProperty(v1, 0xFA03u, 0, 0, &v5, 4u);
  }

  return this;
}

uint64_t rtaid::DetectorNode::AnalyzeABL(rtaid::DetectorNode *this, const AudioTimeStamp *a2, const AudioBufferList *a3, unsigned int a4)
{
  v77 = *MEMORY[0x277D85DE8];
  if (*(this + 42) > 3u)
  {
    v4 = 0;
    goto LABEL_48;
  }

  v6 = 0;
  atomic_compare_exchange_strong(this + 408, &v6, 1u);
  if (v6)
  {
    v39 = *(this + 42);
    v4 = 4294967292;
    if (v39 <= 3)
    {
      *(this + 42) = v39 + 1;
      *(this + v39 + 43) = -4;
    }

    goto LABEL_48;
  }

  if (*(this + 4) != 1 || (v7 = a4, v8 = *&a2->mRateScalar, *&inTimeStamp.mSampleTime = *&a2->mSampleTime, *&inTimeStamp.mRateScalar = v8, v9 = *&a2->mSMPTETime.mHours, *&inTimeStamp.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes, *&inTimeStamp.mSMPTETime.mHours = v9, !a4))
  {
    v4 = 0;
    goto LABEL_47;
  }

  v11 = 0;
  v49 = this + 172;
  p_mData = &a3->mBuffers[0].mData;
  while (1)
  {
    if (v7 >= 0x400)
    {
      v12 = 1024;
    }

    else
    {
      v12 = v7;
    }

    mNumberBuffers = a3->mNumberBuffers;
    MEMORY[0x28223BE20]();
    v15 = &v49 - v14;
    bzero(&v49 - v14, v16 + 24);
    *v15 = mNumberBuffers;
    if (mNumberBuffers)
    {
      v17 = *(this + 16);
      v18 = v17 * v12;
      v19 = (v11 * v17);
      v20 = v15 + 16;
      v21 = p_mData;
      while (1)
      {
        v22 = *(v21 - 1);
        *(v20 - 2) = *(v21 - 2);
        *(v20 - 1) = v18;
        *v20 = *v21 + v19;
        if (v18 > v22)
        {
          break;
        }

        v21 += 2;
        v20 += 2;
        if (!--mNumberBuffers)
        {
          goto LABEL_14;
        }
      }

      v42 = *(this + 42);
      v4 = 4294967246;
      if (v42 < 4)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

LABEL_14:
    v23 = *(this + 16);
    if (v23)
    {
      break;
    }

LABEL_21:
    if ((*(this + 164) & 1) != 0 || (*(this + 157) & 1) != 0 || (*(this + 165) & 1) != 0 || *(this + 158) == 1)
    {
      if (*(this + 25) != *(this + 24))
      {
        v28 = 0;
        v29 = *(v15 + 2);
        v30 = v15 + 8;
        do
        {
          __C = 0.0;
          v31 = v15 + 8;
          v32 = v29;
          if ((*(this + 240) & 1) == 0)
          {
            v32 = *(v30 + 1);
            v31 = v30;
          }

          vDSP_svesq(v32, *v31, &__C, v12);
          *(*(this + 24) + 4 * v28) = __C + *(*(this + 24) + 4 * v28);
          v52 = 0.0;
          v33 = v15 + 8;
          v34 = v29;
          if ((*(this + 240) & 1) == 0)
          {
            v34 = *(v30 + 1);
            v33 = v30;
          }

          vDSP_maxmgv(v34, *v33, &v52, v12);
          v35 = *(this + 27);
          if (v52 > *(v35 + 4 * v28))
          {
            *(v35 + 4 * v28) = v52;
          }

          if (!v28)
          {
            *(this + 256) = 0;
            *(this + 62) = 0;
          }

          ++v29;
          ++v28;
          v30 += 16;
        }

        while (v28 < (*(this + 25) - *(this + 24)) >> 2);
      }

      *(this + 61) += v12;
    }

    v36 = *(this + 4);
    if (v36)
    {
      v37 = AudioUnitProcess(v36, 0, &inTimeStamp, v12, v15);
      v4 = v37;
      if (v37)
      {
        v38 = *(this + 42);
        if (v38 <= 3)
        {
          *(this + 42) = v38 + 1;
          *&v49[4 * v38] = v37;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v11 += v12;
    inTimeStamp.mSampleTime = inTimeStamp.mSampleTime + v12;
    v7 -= v12;
    if (!v7)
    {
      goto LABEL_47;
    }
  }

  v24 = *(this + 17);
  v25 = *(v24 + 48);
  if (*(v24 + 48))
  {
    v26 = 4 * *this;
    v27 = (v24 + 60);
    do
    {
      *v27 = v26 * *(v27 - 1);
      v27 += 4;
      --v25;
    }

    while (v25);
  }

  v4 = AudioConverterConvertComplexBuffer(v23, v12, v15, (v24 + 48));
  if (!v4)
  {
    if (*(this + 16))
    {
      v15 = (*(this + 17) + 48);
    }

    goto LABEL_21;
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v43 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_ERROR))
  {
    v44 = (this + 8);
    if (*(this + 31) < 0)
    {
      v44 = *v44;
    }

    v45 = *(v15 + 3);
    v46 = *v15;
    v47 = *(v24 + 60);
    v48 = *(v24 + 48);
    __C = 4.8162e-34;
    v54 = "DetectorNode.cpp";
    v55 = 1024;
    v56 = 506;
    v57 = 1040;
    v58 = 19;
    v59 = 2080;
    v60 = "rtaid::DetectorNode]";
    v61 = 2048;
    v62 = this;
    v63 = 1024;
    v64 = v4;
    v65 = 2080;
    v66 = v44;
    v67 = 1024;
    v68 = v12;
    v69 = 1024;
    v70 = v45;
    v71 = 1024;
    v72 = v46;
    v73 = 1024;
    v74 = v47;
    v75 = 1024;
    v76 = v48;
    _os_log_impl(&dword_241557000, v43, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] Caught converter error (%d) at %s, %d frames (%d %d) vs (%d %d)\n", &__C, 0x5Au);
  }

  v42 = *(this + 42);
  if (v42 <= 3)
  {
LABEL_50:
    *(this + 42) = v42 + 1;
    *&v49[4 * v42] = v4;
  }

LABEL_47:
  atomic_store(0, this + 408);
LABEL_48:
  v40 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t rtaid::get_log(rtaid *this)
{
  v1 = &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
  {
    v1 = &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
    if (v3)
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      v1 = &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
    }
  }

  return v1[58];
}

void rtaid::GetClientIDMap(rtaid *this)
{
  {
    rtaid::GetClientIDMap(void)::gClientIDMap = 0u;
    *&qword_27E5480D8 = 0u;
    dword_27E5480E8 = 1065353216;
  }

  if (rtaid::GetClientIDMap(void)::onceToken != -1)
  {

    dispatch_once(&rtaid::GetClientIDMap(void)::onceToken, &__block_literal_global_59);
  }
}

uint64_t ___ZN5rtaid14GetClientIDMapEv_block_invoke()
{
  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) || !*rtaid::GetClientIDMap(void)::gClientIDMap || (v0 = **rtaid::GetClientIDMap(void)::gClientIDMap) == 0)
  {
LABEL_14:
    operator new();
  }

  v1 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  while (1)
  {
    v2 = v0[1];
    if (!v2)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v2 < *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
      {
        goto LABEL_14;
      }

      v3 = v2 % *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
    }

    else
    {
      v3 = v2 & (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1);
    }

    if (v3)
    {
      goto LABEL_14;
    }

LABEL_13:
    v0 = *v0;
    if (!v0)
    {
      goto LABEL_14;
    }
  }

  if (*(v0 + 4))
  {
    goto LABEL_13;
  }

  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) || ((v4 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] >= 2uLL) ? (v5 = *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) != 1) : (v5 = (BYTE8(rtaid::GetClientIDMap(void)::gClientIDMap) & 1) == 0), (v6 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v5)) == 0))
  {
LABEL_29:
    operator new();
  }

  do
  {
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_29;
      }

      v7 = v6[1];
      if (v7 == 1)
      {
        break;
      }

      if (v4.u32[0] > 1uLL)
      {
        if (v7 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
        {
          v7 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
        }
      }

      else
      {
        v7 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
      }

      if (v7 != v5)
      {
        goto LABEL_29;
      }
    }
  }

  while (*(v6 + 4) != 1);
  std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[3]>(2);
  std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[3]>(3);
  std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[5]>(4);
  result = std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[5]>(5);
  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    goto LABEL_47;
  }

  v9 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 6;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= 6uLL)
    {
      v10 = 6u % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v10 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & 6;
  }

  v11 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_47:
    operator new();
  }

  while (2)
  {
    v13 = v12[1];
    if (v13 != 6)
    {
      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
        {
          v13 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
        }
      }

      else
      {
        v13 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (*(v12 + 4) != 6)
    {
LABEL_46:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    goto LABEL_65;
  }

  v14 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = 7;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= 7uLL)
    {
      v15 = 7u % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v15 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & 7;
  }

  v16 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_65:
    operator new();
  }

  while (2)
  {
    v18 = v17[1];
    if (v18 != 7)
    {
      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
        {
          v18 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
        }
      }

      else
      {
        v18 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (*(v17 + 4) != 7)
    {
LABEL_64:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

  v19 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = 8;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= 8uLL)
    {
      v20 = 8u % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v20 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & 8;
  }

  v21 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_81:
    operator new();
  }

  while (2)
  {
    v23 = v22[1];
    if (v23 != 8)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
        {
          v23 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
        }
      }

      else
      {
        v23 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    if (*(v22 + 4) != 8)
    {
LABEL_80:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_81;
      }

      continue;
    }

    return result;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[3]>(uint64_t result)
{
  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= result)
    {
      v2 = result % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & result;
  }

  v3 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
      {
        v5 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[5]>(uint64_t result)
{
  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= result)
    {
      v2 = result % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & result;
  }

  v3 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
      {
        v5 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__rehash<true>(size_t __n)
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

  v2 = *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
  if (prime > *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    v3 = vcvtps_u32_f32(qword_27E5480E0 / *&dword_27E5480E8);
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) < 3uLL || (v4 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = rtaid::GetClientIDMap(void)::gClientIDMap;
      *&rtaid::GetClientIDMap(void)::gClientIDMap = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rtaid::ClientID,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void rtaid::GetClientUseCaseMap(rtaid *this)
{
  {
    rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap = 0u;
    *&qword_27E548110 = 0u;
    dword_27E548120 = 1065353216;
  }

  if (rtaid::GetClientUseCaseMap(void)::onceToken != -1)
  {

    dispatch_once(&rtaid::GetClientUseCaseMap(void)::onceToken, &__block_literal_global_12);
  }
}

void ___ZN5rtaid19GetClientUseCaseMapEv_block_invoke()
{
  if (!*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) || !*rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap || (v0 = **rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) == 0)
  {
LABEL_14:
    operator new();
  }

  v1 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  while (1)
  {
    v2 = v0[1];
    if (!v2)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v2 < *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
      {
        goto LABEL_14;
      }

      v3 = v2 % *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
    }

    else
    {
      v3 = v2 & (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1);
    }

    if (v3)
    {
      goto LABEL_14;
    }

LABEL_13:
    v0 = *v0;
    if (!v0)
    {
      goto LABEL_14;
    }
  }

  if (*(v0 + 8))
  {
    goto LABEL_13;
  }

  if (!*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) || ((v4 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] >= 2uLL) ? (v5 = *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) != 1) : (v5 = (BYTE8(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) & 1) == 0), (v6 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v5)) == 0))
  {
LABEL_29:
    operator new();
  }

  do
  {
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_29;
      }

      v7 = v6[1];
      if (v7 == 1)
      {
        break;
      }

      if (v4.u32[0] > 1uLL)
      {
        if (v7 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v7 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v7 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v7 != v5)
      {
        goto LABEL_29;
      }
    }
  }

  while (*(v6 + 8) != 1);
  v8 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 2;
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) <= 2uLL)
    {
      v9 = 2u % WORD4(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap);
    }
  }

  else
  {
    v9 = (DWORD2(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) - 1) & 2;
  }

  v10 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_45:
    operator new();
  }

  while (2)
  {
    v12 = v11[1];
    if (v12 != 2)
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v12 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v12 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (*(v11 + 8) != 2)
    {
LABEL_44:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  v13 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 4;
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) <= 4uLL)
    {
      v14 = 4u % WORD4(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap);
    }
  }

  else
  {
    v14 = (DWORD2(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) - 1) & 4;
  }

  v15 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_61:
    operator new();
  }

  while (2)
  {
    v17 = v16[1];
    if (v17 != 4)
    {
      if (v13.u32[0] > 1uLL)
      {
        if (v17 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v17 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v17 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (*(v16 + 8) != 4)
    {
LABEL_60:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  v18 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = 13;
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) <= 0xDuLL)
    {
      v19 = 0xDu % WORD4(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap);
    }
  }

  else
  {
    v19 = (DWORD2(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) - 1) & 0xDLL;
  }

  v20 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v19);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_77:
    operator new();
  }

  while (2)
  {
    v22 = v21[1];
    if (v22 != 13)
    {
      if (v18.u32[0] > 1uLL)
      {
        if (v22 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v22 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v22 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v22 != v19)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    if (*(v21 + 8) != 13)
    {
LABEL_76:
      v21 = *v21;
      if (!v21)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }
}

void std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::__rehash<true>(size_t __n)
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

  v2 = *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
  if (prime > *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
  {
    v3 = vcvtps_u32_f32(qword_27E548118 / *&dword_27E548120);
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) < 3uLL || (v4 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap;
      *&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) = 0;
    }
  }
}

void rtaid::GetReporterTypeInterestedMap(rtaid *this)
{
  {
    rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap = 0u;
    *&qword_27E548148 = 0u;
    dword_27E548158 = 1065353216;
  }

  if (rtaid::GetReporterTypeInterestedMap(void)::onceToken != -1)
  {

    dispatch_once(&rtaid::GetReporterTypeInterestedMap(void)::onceToken, &__block_literal_global_19);
  }
}

void sub_24156BBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24156BC9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>>>::__emplace_unique_key_args<AudioServiceType,AudioServiceType,std::vector<rtaid::AnalyzerType>>(uint64_t result)
{
  if (!*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) <= result)
    {
      v2 = result % WORD4(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap) - 1) & result;
  }

  v3 = *(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1))
      {
        v5 %= *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 8) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t ___ZN5rtaid22GetAnalyzerToStringMapEv_block_invoke()
{
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) || !*rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap || (v0 = **rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) == 0)
  {
LABEL_14:
    operator new();
  }

  v1 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  while (1)
  {
    v2 = v0[1];
    if (!v2)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v2 < *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
      {
        goto LABEL_14;
      }

      v3 = v2 % *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
    }

    else
    {
      v3 = v2 & (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1);
    }

    if (v3)
    {
      goto LABEL_14;
    }

LABEL_13:
    v0 = *v0;
    if (!v0)
    {
      goto LABEL_14;
    }
  }

  if (*(v0 + 4))
  {
    goto LABEL_13;
  }

  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) || ((v4 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] >= 2uLL) ? (v5 = *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) != 1) : (v5 = (BYTE8(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) & 1) == 0), (v6 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v5)) == 0))
  {
LABEL_29:
    operator new();
  }

  do
  {
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_29;
      }

      v7 = v6[1];
      if (v7 == 1)
      {
        break;
      }

      if (v4.u32[0] > 1uLL)
      {
        if (v7 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v7 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v7 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v7 != v5)
      {
        goto LABEL_29;
      }
    }
  }

  while (*(v6 + 4) != 1);
  std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType,char const(&)[22]>(2);
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_47;
  }

  v8 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 3;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= 3uLL)
    {
      v9 = 3u % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v9 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & 3;
  }

  v10 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_47:
    operator new();
  }

  while (2)
  {
    v12 = v11[1];
    if (v12 != 3)
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v12 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v12 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (*(v11 + 4) != 3)
    {
LABEL_46:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  result = std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType,char const(&)[22]>(4);
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_65;
  }

  v14 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = 5;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= 5uLL)
    {
      v15 = 5u % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v15 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & 5;
  }

  v16 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_65:
    operator new();
  }

  while (2)
  {
    v18 = v17[1];
    if (v18 != 5)
    {
      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v18 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v18 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (*(v17 + 4) != 5)
    {
LABEL_64:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_83;
  }

  v19 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = 6;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= 6uLL)
    {
      v20 = 6u % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v20 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & 6;
  }

  v21 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_83:
    operator new();
  }

  while (2)
  {
    v23 = v22[1];
    if (v23 != 6)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v23 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v23 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (*(v22 + 4) != 6)
    {
LABEL_82:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_83;
      }

      continue;
    }

    return result;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType,char const(&)[22]>(uint64_t result)
{
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= result)
    {
      v2 = result % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & result;
  }

  v3 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
      {
        v5 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__rehash<true>(size_t __n)
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

  v2 = *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
  if (prime > *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    v3 = vcvtps_u32_f32(qword_27E548188 / *&dword_27E548190);
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) < 3uLL || (v4 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap;
      *&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) = 0;
    }
  }
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void rtaid::handleRMSIssue(std::string *a1, uint64_t a2, uint64_t a3, const std::string *a4, char **a5)
{
  v8 = a1;
  v137 = *MEMORY[0x277D85DE8];
  memset(v126, 0, 24);
  memset(&v124, 0, sizeof(v124));
  if (!HIDWORD(a1[11].__r_.__value_.__r.__words[1]))
  {
    goto LABEL_29;
  }

  v9 = 0;
  v10 = &a1[12];
  do
  {
    v11 = v126[23];
    if (v126[23] < 0)
    {
      v11 = *&v126[8];
    }

    if (v11)
    {
      std::string::append(v126, ", ", 2uLL);
    }

    size = HIBYTE(v124.__r_.__value_.__r.__words[2]);
    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v124.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v124, ", ", 2uLL);
    }

    std::to_string(&v123, *(v10 - 1));
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v123;
    }

    else
    {
      v13 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v123.__r_.__value_.__l.__size_;
    }

    std::string::append(v126, v13, v14);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    std::to_string(&v123, *v10);
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v123;
    }

    else
    {
      v15 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v123.__r_.__value_.__l.__size_;
    }

    a1 = std::string::append(&v124, v15, v16);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    ++v9;
    v10 += 2;
  }

  while (v9 < HIDWORD(v8[11].__r_.__value_.__r.__words[1]));
  if ((v126[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v126, *&v126[8]);
  }

  else
  {
LABEL_29:
    __str = *v126;
  }

  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v122 = v124;
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  v17 = a3;
  v18 = *(&v8[11].__r_.__value_.__r.__words[2] + 1);
  v19 = *&v8[12].__r_.__value_.__l.__data_;
  rtaid::GetClientUseCaseMap(a1);
  v20 = std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap, 4u);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = *(a5 + 23);
  v22 = a5;
  if (v21 >= 0)
  {
    v23 = a5;
  }

  else
  {
    v23 = *a5;
  }

  if (v21 < 0)
  {
    v21 = a5[1];
  }

  v26 = v20[3];
  v24 = v20 + 3;
  v25 = v26;
  v27 = *(v24 + 23);
  if (v27 >= 0)
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  if (v27 >= 0)
  {
    v29 = *(v24 + 23);
  }

  else
  {
    v29 = v24[1];
  }

  if (!v29)
  {
    goto LABEL_102;
  }

  if (v21 >= v29)
  {
    v44 = &v21[v23];
    v45 = *v28;
    v46 = v23;
    while (1)
    {
      v47 = &v21[-v29];
      if (v47 == -1)
      {
        goto LABEL_51;
      }

      v48 = memchr(v46, v45, (v47 + 1));
      if (!v48)
      {
        goto LABEL_51;
      }

      v49 = v48;
      if (!memcmp(v48, v28, v29))
      {
        break;
      }

      v46 = v49 + 1;
      v21 = (v44 - (v49 + 1));
      if (v21 < v29)
      {
        goto LABEL_51;
      }
    }

    if (v49 != v44 && &v49[-v23] != -1)
    {
LABEL_102:
      if (v18 > -55.0 || v18 <= -120.0)
      {
        *&v126[8] = 0uLL;
        *v126 = &v126[8];
        std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
        v58 = a4;
        v123.__r_.__value_.__r.__words[0] = &v124;
        v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v67 + 7), a4);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
        std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
        __p[0] = &v123;
        v68 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
        v69 = v68;
        if (*(v68 + 79) < 0)
        {
          operator delete(v68[7]);
        }

        *(v69 + 7) = v124;
        *(&v124.__r_.__value_.__s + 23) = 0;
        v124.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "node");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v70 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::__assign_external((v70 + 7), v8);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_rms");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v71 + 7), &__str);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_peak");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v72 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v72 + 7), &v122);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "report_type");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        if (*(v73 + 79) < 0)
        {
          v73[8] = 3;
          v74 = v73[7];
        }

        else
        {
          v74 = v73 + 7;
          *(v73 + 79) = 3;
        }

        *v74 = 5459282;
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if ((*v17 & 1) == 0 && LODWORD(v8[10].__r_.__value_.__r.__words[2]) != 1)
        {
LABEL_144:
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&v126[8]);
          {
            rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
          }

          v78 = rtaid::get_log(void)::rtaid_os_log;
          if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v22 + 23) >= 0)
            {
              v79 = v22;
            }

            else
            {
              v79 = *v22;
            }

            if ((v58->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v80 = v58;
            }

            else
            {
              v80 = v58->__r_.__value_.__r.__words[0];
            }

            v81 = v8[20].__r_.__value_.__l.__size_;
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v83 = &v122;
            }

            else
            {
              v83 = v122.__r_.__value_.__r.__words[0];
            }

            *v126 = 136316930;
            *&v126[4] = "IssueReporting.cpp";
            *&v126[12] = 1024;
            *&v126[14] = 430;
            *&v126[18] = 2080;
            *&v126[20] = v79;
            v127 = 2080;
            v128 = v80;
            v129 = 2080;
            v130 = v8;
            v131 = 2048;
            v132 = v81;
            v133 = 2080;
            v134 = p_str;
            v135 = 2080;
            v136 = v83;
            v84 = "%s:%-5d RTAID [ use_case=%s report_type=Alarms RMS Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
            goto LABEL_244;
          }

          goto LABEL_245;
        }

        v75 = v8[13].__r_.__value_.__s.__data_[4];
        v76 = *(**(v17 + 16) + 24);
      }

      else
      {
        *&v126[8] = 0uLL;
        *v126 = &v126[8];
        std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
        v58 = a4;
        v123.__r_.__value_.__r.__words[0] = &v124;
        v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v59 + 7), a4);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
        std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
        __p[0] = &v123;
        v60 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
        v61 = v60;
        if (*(v60 + 79) < 0)
        {
          operator delete(v60[7]);
        }

        *(v61 + 7) = v124;
        *(&v124.__r_.__value_.__s + 23) = 0;
        v124.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "node");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v62 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::__assign_external((v62 + 7), v8);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_rms");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v63 + 7), &__str);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_peak");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v64 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v64 + 7), &v122);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "issue_type");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        if (*(v65 + 79) < 0)
        {
          v65[8] = 6;
          v66 = v65[7];
        }

        else
        {
          v66 = (v65 + 7);
          *(v65 + 79) = 6;
        }

        strcpy(v66, "LowRMS");
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        v77 = v8[13].__r_.__value_.__s.__data_[4];
        v76 = *(**(v17 + 16) + 24);
      }

      v76();
      goto LABEL_144;
    }
  }

LABEL_51:
  v30 = v8[13].__r_.__value_.__s.__data_[4];
  if (v8[13].__r_.__value_.__s.__data_[4])
  {
    v31 = &v8[18].__r_.__value_.__r.__words[2];
    do
    {
      v32 = *v31;
      v31 = (v31 + 2);
      if (v32 != 13)
      {
        goto LABEL_74;
      }

      --v30;
    }

    while (v30);
    if (v18 > -70.0 && v19 > -60.0)
    {
      *&v126[8] = 0uLL;
      *v126 = &v126[8];
      std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v50 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v50 + 7), a4);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
      __p[0] = &v123;
      v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
      v52 = v51;
      if (*(v51 + 79) < 0)
      {
        operator delete(v51[7]);
      }

      *(v52 + 7) = v124;
      *(&v124.__r_.__value_.__s + 23) = 0;
      v124.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "node");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::__assign_external((v53 + 7), v8);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_rms");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v54 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v54 + 7), &__str);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_peak");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v55 + 7), &v122);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "report_type");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v56 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      if (*(v56 + 79) < 0)
      {
        v56[8] = 3;
        v57 = v56[7];
      }

      else
      {
        v57 = v56 + 7;
        *(v56 + 79) = 3;
      }

      *v57 = 5459282;
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      if ((*v17 & 1) == 0 && LODWORD(v8[10].__r_.__value_.__r.__words[2]) != 1)
      {
LABEL_230:
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&v126[8]);
        {
          rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
        }

        v78 = rtaid::get_log(void)::rtaid_os_log;
        if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v22 + 23) >= 0)
          {
            v112 = v22;
          }

          else
          {
            v112 = *v22;
          }

          if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v113 = a4;
          }

          else
          {
            v113 = a4->__r_.__value_.__r.__words[0];
          }

          v114 = v8[20].__r_.__value_.__l.__size_;
          v115 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v115 = __str.__r_.__value_.__r.__words[0];
          }

          if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v116 = &v122;
          }

          else
          {
            v116 = v122.__r_.__value_.__r.__words[0];
          }

          *v126 = 136316930;
          *&v126[4] = "IssueReporting.cpp";
          *&v126[12] = 1024;
          *&v126[14] = 460;
          *&v126[18] = 2080;
          *&v126[20] = v112;
          v127 = 2080;
          v128 = v113;
          v129 = 2080;
          v130 = v8;
          v131 = 2048;
          v132 = v114;
          v133 = 2080;
          v134 = v115;
          v135 = 2080;
          v136 = v116;
          v84 = "%s:%-5d RTAID [ use_case=%s report_type=System Sounds RMS Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
          goto LABEL_244;
        }

        goto LABEL_245;
      }

      v111 = v8[13].__r_.__value_.__s.__data_[4];
      v110 = *(**(v17 + 16) + 24);
    }

    else
    {
      *&v126[8] = 0uLL;
      *v126 = &v126[8];
      std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v34 + 7), a4);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
      __p[0] = &v123;
      v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
      v36 = v35;
      if (*(v35 + 79) < 0)
      {
        operator delete(v35[7]);
      }

      *(v36 + 7) = v124;
      *(&v124.__r_.__value_.__s + 23) = 0;
      v124.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "node");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::__assign_external((v37 + 7), v8);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_rms");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v38 + 7), &__str);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_peak");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v39 + 7), &v122);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "issue_type");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v40 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      if (*(v40 + 79) < 0)
      {
        v40[8] = 6;
        v41 = v40[7];
      }

      else
      {
        v41 = (v40 + 7);
        *(v40 + 79) = 6;
      }

      strcpy(v41, "LowRMS");
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      v109 = v8[13].__r_.__value_.__s.__data_[4];
      v110 = *(**(v17 + 16) + 24);
    }

    v110();
    goto LABEL_230;
  }

LABEL_74:
  if ((*v17 & 1) != 0 || LODWORD(v8[10].__r_.__value_.__r.__words[2]) == 1)
  {
    *&v124.__r_.__value_.__r.__words[1] = 0uLL;
    v124.__r_.__value_.__r.__words[0] = &v124.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(v126, "report_type");
    v123.__r_.__value_.__r.__words[0] = v126;
    v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    if (*(v42 + 79) < 0)
    {
      v42[8] = 3;
      v43 = v42[7];
    }

    else
    {
      v43 = v42 + 7;
      *(v42 + 79) = 3;
    }

    *v43 = 5459282;
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "rtaid_client");
    v123.__r_.__value_.__r.__words[0] = v126;
    v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::operator=((v85 + 7), a4);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::to_string(v126, *&v8[20].__r_.__value_.__l.__size_);
    std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
    __p[0] = &v123;
    v86 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, &v123);
    v87 = v86;
    if (*(v86 + 79) < 0)
    {
      operator delete(v86[7]);
    }

    *(v87 + 7) = *v126;
    v87[9] = *&v126[16];
    v126[23] = 0;
    v126[0] = 0;
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "node");
    v123.__r_.__value_.__r.__words[0] = v126;
    v88 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::__assign_external((v88 + 7), v8);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "rms");
    v123.__r_.__value_.__r.__words[0] = v126;
    v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::operator=((v89 + 7), &__str);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "peak");
    v123.__r_.__value_.__r.__words[0] = v126;
    v90 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::operator=((v90 + 7), &v122);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    (*(**(v17 + 16) + 24))(*(v17 + 16), a2, v8[13].__r_.__value_.__s.__data_[4], &v124, 1, 7);
    if (HIDWORD(v8[11].__r_.__value_.__r.__words[0]))
    {
      v91 = v8[11].__r_.__value_.__r.__words[1];
      *&v123.__r_.__value_.__r.__words[1] = 0uLL;
      v123.__r_.__value_.__r.__words[0] = &v123.__r_.__value_.__l.__size_;
      std::string::basic_string[abi:ne200100]<0>(v126, "issue_type");
      __p[0] = v126;
      v92 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, v126);
      if (*(v92 + 79) < 0)
      {
        v92[8] = 2;
        v93 = v92[7];
      }

      else
      {
        v93 = (v92 + 7);
        *(v92 + 79) = 2;
      }

      strcpy(v93, "DC");
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      std::string::basic_string[abi:ne200100]<0>(v126, "rtaid_client");
      __p[0] = v126;
      v94 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, v126);
      std::string::operator=((v94 + 7), a4);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      std::to_string(v126, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(__p, "issue_detected_sample_time");
      v125 = __p;
      v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, __p);
      v96 = v95;
      if (*(v95 + 79) < 0)
      {
        operator delete(v95[7]);
      }

      *(v96 + 7) = *v126;
      v96[9] = *&v126[16];
      v126[23] = 0;
      v126[0] = 0;
      if (v120 < 0)
      {
        operator delete(__p[0]);
        if ((v126[23] & 0x80000000) != 0)
        {
          operator delete(*v126);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(v126, "node");
      __p[0] = v126;
      v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, v126);
      std::string::__assign_external((v97 + 7), v8);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      std::to_string(v126, v91);
      std::string::basic_string[abi:ne200100]<0>(__p, "dc_consecutive_samples");
      v125 = __p;
      v98 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, __p);
      v99 = v98;
      if (*(v98 + 79) < 0)
      {
        operator delete(v98[7]);
      }

      *(v99 + 7) = *v126;
      v99[9] = *&v126[16];
      v126[23] = 0;
      v126[0] = 0;
      if (v120 < 0)
      {
        operator delete(__p[0]);
        if ((v126[23] & 0x80000000) != 0)
        {
          operator delete(*v126);
        }
      }

      (*(**(v17 + 16) + 24))(*(v17 + 16), a2, v8[13].__r_.__value_.__s.__data_[4], &v123, 1, 7);
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v100 = rtaid::get_log(void)::rtaid_os_log;
      if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v22 + 23) >= 0)
        {
          v101 = v22;
        }

        else
        {
          v101 = *v22;
        }

        if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = a4;
        }

        else
        {
          v102 = a4->__r_.__value_.__r.__words[0];
        }

        v103 = v8[20].__r_.__value_.__l.__size_;
        *v126 = 136316674;
        *&v126[4] = "IssueReporting.cpp";
        *&v126[12] = 1024;
        *&v126[14] = 486;
        *&v126[18] = 2080;
        *&v126[20] = v101;
        v127 = 2080;
        v128 = v102;
        v129 = 2080;
        v130 = v8;
        v131 = 2048;
        v132 = v103;
        v133 = 1024;
        LODWORD(v134) = v91;
        _os_log_impl(&dword_241557000, v100, OS_LOG_TYPE_DEFAULT, "%s:%-5d RTAID [ use_case=%s issue_type=DC Generic Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ %d ] ", v126, 0x40u);
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v123.__r_.__value_.__l.__size_);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v124.__r_.__value_.__l.__size_);
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v78 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v22 + 23) >= 0)
    {
      v104 = v22;
    }

    else
    {
      v104 = *v22;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v105 = a4;
    }

    else
    {
      v105 = a4->__r_.__value_.__r.__words[0];
    }

    v106 = v8[20].__r_.__value_.__l.__size_;
    v107 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v107 = __str.__r_.__value_.__r.__words[0];
    }

    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v108 = &v122;
    }

    else
    {
      v108 = v122.__r_.__value_.__r.__words[0];
    }

    *v126 = 136316930;
    *&v126[4] = "IssueReporting.cpp";
    *&v126[12] = 1024;
    *&v126[14] = 489;
    *&v126[18] = 2080;
    *&v126[20] = v104;
    v127 = 2080;
    v128 = v105;
    v129 = 2080;
    v130 = v8;
    v131 = 2048;
    v132 = v106;
    v133 = 2080;
    v134 = v107;
    v135 = 2080;
    v136 = v108;
    v84 = "%s:%-5d RTAID [ use_case=%s report_type=RMS Generic Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
LABEL_244:
    _os_log_impl(&dword_241557000, v78, OS_LOG_TYPE_DEFAULT, v84, v126, 0x4Eu);
  }

LABEL_245:
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v117 = *MEMORY[0x277D85DE8];
}

void sub_24156E7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, void *a42, int a43, __int16 a44, char a45, char a46)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a42);
  std::pair<std::string,std::string>::~pair(&a18);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 8) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void rtaid::HandleAudioIssue(uint64_t a1, uint64_t *a2, float a3)
{
  v241 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v6 = a3;
    v4 = a2;
    v3 = a1;
    std::string::basic_string[abi:ne200100]<0>(&__str, "Unknown");
    v5 = &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
    {
      goto LABEL_3;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (v207)
  {
    rtaid::GetClientIDMap(v207);
    v5[53] = &rtaid::GetClientIDMap(void)::gClientIDMap;
  }

LABEL_3:
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(v5[53], *(v3 + 256));
  if (v7)
  {
    std::string::operator=(&__str, v7 + 1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v211, "Generic");
  {
    if (v208)
    {
      rtaid::GetClientUseCaseMap(v208);
      rtaid::HandleAudioIssue(rtaid::IssueDictionary const&,std::shared_ptr<rtaid::DependencyInjection>,float)::clientUseCaseMap = &rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap;
    }
  }

  v8 = *(v3 + 316);
  if (*(v3 + 316))
  {
    v9 = std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(rtaid::HandleAudioIssue(rtaid::IssueDictionary const&,std::shared_ptr<rtaid::DependencyInjection>,float)::clientUseCaseMap, *(v3 + 448));
    if (v9)
    {
      std::string::operator=(&v211, v9 + 1);
      v8 = *(v3 + 316);
    }

    if (v8 >= 2)
    {
      v10 = (v3 + 450);
      for (i = 1; i < v8; ++i)
      {
        v12 = *v10++;
        v13 = std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(rtaid::HandleAudioIssue(rtaid::IssueDictionary const&,std::shared_ptr<rtaid::DependencyInjection>,float)::clientUseCaseMap, v12);
        if (v13)
        {
          v16 = v13[3];
          v14 = v13 + 3;
          v15 = v16;
          v17 = *(v14 + 23);
          if (v17 >= 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          if (v17 >= 0)
          {
            v19 = *(v14 + 23);
          }

          else
          {
            v19 = v14[1];
          }

          std::string::append(&v211, v18, v19);
          v8 = *(v3 + 316);
        }
      }
    }
  }

  {
    if (v209)
    {
      rtaid::GetReporterTypeInterestedMap(v209);
    }
  }

  v20 = *(v3 + 316);
  if (*(v3 + 316))
  {
    v21 = 0;
    v22 = rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
    v23 = vcnt_s8(*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 8));
    v23.i16[0] = vaddlv_u8(v23);
    v24 = WORD4(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap);
    v25 = *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) + 0xFFFFLL;
    v26 = *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) - 1;
    v27 = *(v3 + 260);
    do
    {
      v210[v21] = *(v3 + 320 + 8 * v21);
      if (*(&v22 + 1))
      {
        v28 = *(v3 + 448 + 2 * v21);
        if (v23.u32[0] > 1uLL)
        {
          v29 = *(v3 + 448 + 2 * v21);
          if (*(&v22 + 1) <= v28)
          {
            v29 = v28 % v24;
          }
        }

        else
        {
          v29 = v25 & v28;
        }

        v30 = *(v22 + 8 * v29);
        if (v30)
        {
          while (1)
          {
            v30 = *v30;
            if (!v30)
            {
              break;
            }

            v31 = v30[1];
            if (v31 == v28)
            {
              if (*(v30 + 8) == v28)
              {
                v32 = v30[3];
                v33 = v30[4];
                if (v32 != v33)
                {
                  while (*v32 != v27)
                  {
                    v32 = (v32 + 4);
                    if (v32 == v33)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                if (v32 == v33)
                {
LABEL_44:
                  v210[v21] = 0;
                }

                break;
              }
            }

            else
            {
              if (v23.u32[0] > 1uLL)
              {
                if (v31 >= *(&v22 + 1))
                {
                  v31 %= *(&v22 + 1);
                }
              }

              else
              {
                v31 &= v26;
              }

              if (v31 != v29)
              {
                break;
              }
            }
          }
        }
      }

      ++v21;
    }

    while (v21 != v20);
  }

  else
  {
    v27 = *(v3 + 260);
  }

  if (v27 <= 3)
  {
    if ((v27 - 1) < 2)
    {
      v34 = *v4;
      v35 = *(v3 + 284);
      if (v20)
      {
        v36 = (v3 + 448);
        while (1)
        {
          v37 = *v36++;
          if (v37 != 13)
          {
            break;
          }

          if (!--v20)
          {
            if (*v34 != 1)
            {
              goto LABEL_145;
            }

            *&buf[8] = 0;
            *&buf[16] = 0;
            *buf = &buf[8];
            std::string::basic_string[abi:ne200100]<0>(&__p, "issue_type");
            v225.__r_.__value_.__r.__words[0] = &__p;
            v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p);
            if (*(v38 + 79) < 0)
            {
              v38[8] = 7;
              v39 = v38[7];
            }

            else
            {
              v39 = (v38 + 7);
              *(v38 + 79) = 7;
            }

            strcpy(v39, "Silence");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "rtaid_client");
            v225.__r_.__value_.__r.__words[0] = &__p;
            v165 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p);
            std::string::operator=((v165 + 7), &__str);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::to_string(&__p, *(v3 + 488));
            std::string::basic_string[abi:ne200100]<0>(&v225, "issue_detected_sample_time");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v166 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v167 = v166;
            if (*(v166 + 79) < 0)
            {
              operator delete(v166[7]);
            }

            *(v167 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "node");
            v225.__r_.__value_.__r.__words[0] = &__p;
            v168 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p);
            std::string::__assign_external((v168 + 7), v3);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::to_string(&__p, *(v3 + 268));
            std::string::basic_string[abi:ne200100]<0>(&v225, "all_channel_silence_samples");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v169 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v170 = v169;
            if (*(v169 + 79) < 0)
            {
              operator delete(v169[7]);
            }

            *(v170 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 272));
            std::string::basic_string[abi:ne200100]<0>(&v225, "any_channel_silence_samples");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v171 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v172 = v171;
            if (*(v171 + 79) < 0)
            {
              operator delete(v171[7]);
            }

            *(v172 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 276));
            std::string::basic_string[abi:ne200100]<0>(&v225, "leading_silence_samples");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v173 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v174 = v173;
            if (*(v173 + 79) < 0)
            {
              operator delete(v173[7]);
            }

            *(v174 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 280));
            std::string::basic_string[abi:ne200100]<0>(&v225, "mid_stream_silence_samples");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v175 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v176 = v175;
            if (*(v175 + 79) < 0)
            {
              operator delete(v175[7]);
            }

            *(v176 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 268) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v225, "all_channel_silence_seconds");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v177 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v178 = v177;
            if (*(v177 + 79) < 0)
            {
              operator delete(v177[7]);
            }

            *(v178 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 272) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v225, "any_channel_silence_seconds");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v179 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v180 = v179;
            if (*(v179 + 79) < 0)
            {
              operator delete(v179[7]);
            }

            *(v180 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 276) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v225, "leading_silence_seconds");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v181 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v182 = v181;
            if (*(v181 + 79) < 0)
            {
              operator delete(v181[7]);
            }

            *(v182 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 280) / v35);
            std::string::basic_string[abi:ne200100]<0>(&v225, "mid_stream_silence_seconds");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v183 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v184 = v183;
            if (*(v183 + 79) < 0)
            {
              operator delete(v183[7]);
            }

            *(v184 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::to_string(&__p, *(v3 + 288));
            std::string::basic_string[abi:ne200100]<0>(&v225, "mid_stream_silence_sample_time");
            v223.__r_.__value_.__r.__words[0] = &v225;
            v185 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
            v186 = v185;
            if (*(v185 + 79) < 0)
            {
              operator delete(v185[7]);
            }

            *(v186 + 7) = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v187 = *(v3 + 316);
            v87 = *(**(v34 + 16) + 24);
            goto LABEL_144;
          }
        }
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__p, "issue_type");
      v225.__r_.__value_.__r.__words[0] = &__p;
      v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p);
      if (*(v43 + 79) < 0)
      {
        v43[8] = 7;
        v44 = v43[7];
      }

      else
      {
        v44 = (v43 + 7);
        *(v43 + 79) = 7;
      }

      strcpy(v44, "Silence");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "rtaid_client");
      v225.__r_.__value_.__r.__words[0] = &__p;
      v64 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p);
      std::string::operator=((v64 + 7), &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::to_string(&__p, *(v3 + 488));
      std::string::basic_string[abi:ne200100]<0>(&v225, "issue_detected_sample_time");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v66 = v65;
      if (*(v65 + 79) < 0)
      {
        operator delete(v65[7]);
      }

      *(v66 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "node");
      v225.__r_.__value_.__r.__words[0] = &__p;
      v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__p);
      std::string::__assign_external((v67 + 7), v3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::to_string(&__p, *(v3 + 268));
      std::string::basic_string[abi:ne200100]<0>(&v225, "all_channel_silence_samples");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v68 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v69 = v68;
      if (*(v68 + 79) < 0)
      {
        operator delete(v68[7]);
      }

      *(v69 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 272));
      std::string::basic_string[abi:ne200100]<0>(&v225, "any_channel_silence_samples");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v70 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v71 = v70;
      if (*(v70 + 79) < 0)
      {
        operator delete(v70[7]);
      }

      *(v71 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 276));
      std::string::basic_string[abi:ne200100]<0>(&v225, "leading_silence_samples");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v72 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v73 = v72;
      if (*(v72 + 79) < 0)
      {
        operator delete(v72[7]);
      }

      *(v73 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 280));
      std::string::basic_string[abi:ne200100]<0>(&v225, "mid_stream_silence_samples");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v74 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v75 = v74;
      if (*(v74 + 79) < 0)
      {
        operator delete(v74[7]);
      }

      *(v75 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 268) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v225, "all_channel_silence_seconds");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v76 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v77 = v76;
      if (*(v76 + 79) < 0)
      {
        operator delete(v76[7]);
      }

      *(v77 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 272) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v225, "any_channel_silence_seconds");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v78 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v79 = v78;
      if (*(v78 + 79) < 0)
      {
        operator delete(v78[7]);
      }

      *(v79 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 276) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v225, "leading_silence_seconds");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v80 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v81 = v80;
      if (*(v80 + 79) < 0)
      {
        operator delete(v80[7]);
      }

      *(v81 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 280) / v35);
      std::string::basic_string[abi:ne200100]<0>(&v225, "mid_stream_silence_seconds");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v82 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v83 = v82;
      if (*(v82 + 79) < 0)
      {
        operator delete(v82[7]);
      }

      *(v83 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__p, *(v3 + 288));
      std::string::basic_string[abi:ne200100]<0>(&v225, "mid_stream_silence_sample_time");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v84 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &v225);
      v85 = v84;
      if (*(v84 + 79) < 0)
      {
        operator delete(v84[7]);
      }

      *(v85 + 7) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v86 = *(v3 + 316);
      v87 = *(**(v34 + 16) + 24);
LABEL_144:
      v87();
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
LABEL_145:
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v60 = rtaid::get_log(void)::rtaid_os_log;
      if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v88 = &v211;
        if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v88 = v211.__r_.__value_.__r.__words[0];
        }

        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        v90 = *(v3 + 488);
        v91 = (*(v3 + 268) / v35);
        v92 = (*(v3 + 272) / v35);
        v93 = (*(v3 + 276) / v35);
        v94 = *(v3 + 280);
        *buf = 136317698;
        v95 = *(v3 + 288);
        *&buf[4] = "IssueReporting.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 296;
        *&buf[18] = 2080;
        *&buf[20] = v88;
        v229 = 2080;
        v230 = p_str;
        v231 = 2080;
        v232 = v3;
        v233 = 2048;
        v234 = v90;
        v235 = 2048;
        *v236 = v91;
        *&v236[8] = 2048;
        v237 = v92;
        *v238 = 2048;
        *&v238[2] = v93;
        *&v238[10] = 2048;
        *&v238[12] = (v94 / v35);
        v239 = 2048;
        v240 = v95;
        v50 = "%s:%-5d RTAID [ use_case=%s issue_type=Silence clientID=%s node=%s issue_detected_sample_time=%f ] -- [ all_channel_silence_seconds=%f any_channel_silence_seconds=%f leading_silence_seconds=%f mid_stream_silence_seconds=%f mid_stream_silence_sampleTime=%f ]";
LABEL_152:
        v51 = v60;
        v52 = OS_LOG_TYPE_DEFAULT;
        v53 = 108;
        goto LABEL_153;
      }

      goto LABEL_360;
    }

    if (!v27)
    {
      v40 = *v4;
      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
      std::string::basic_string[abi:ne200100]<0>(buf, "issue_type");
      v225.__r_.__value_.__r.__words[0] = buf;
      v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
      if (*(v41 + 79) < 0)
      {
        v41[8] = 9;
        v42 = v41[7];
      }

      else
      {
        v42 = (v41 + 7);
        *(v41 + 79) = 9;
      }

      strcpy(v42, "NonFinite");
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "rtaid_client");
      v225.__r_.__value_.__r.__words[0] = buf;
      v140 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
      std::string::operator=((v140 + 7), &__str);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      std::to_string(buf, *(v3 + 488));
      std::string::basic_string[abi:ne200100]<0>(&v225, "issue_detected_sample_time");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
      v142 = v141;
      if (*(v141 + 79) < 0)
      {
        operator delete(v141[7]);
      }

      *(v142 + 7) = *buf;
      v142[9] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "node");
      v225.__r_.__value_.__r.__words[0] = buf;
      v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
      std::string::__assign_external((v143 + 7), v3);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      std::to_string(buf, *(v3 + 268));
      std::string::basic_string[abi:ne200100]<0>(&v225, "nan_frames");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v144 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
      v145 = v144;
      if (*(v144 + 79) < 0)
      {
        operator delete(v144[7]);
      }

      *(v145 + 7) = *buf;
      v145[9] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      std::to_string(buf, *(v3 + 272));
      std::string::basic_string[abi:ne200100]<0>(&v225, "inf_frames");
      v223.__r_.__value_.__r.__words[0] = &v225;
      v146 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
      v147 = v146;
      if (*(v146 + 79) < 0)
      {
        operator delete(v146[7]);
      }

      *(v147 + 7) = *buf;
      v147[9] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      (*(**(v40 + 16) + 24))(*(v40 + 16), v210, *(v3 + 316), &__p, 11, 7);
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v148 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_359;
      }

      v149 = &v211;
      if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v149 = v211.__r_.__value_.__r.__words[0];
      }

      v150 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v150 = __str.__r_.__value_.__r.__words[0];
      }

      v151 = *(v3 + 488);
      v152 = *(v3 + 268);
      v153 = *(v3 + 272);
      *buf = 136316930;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 239;
      *&buf[18] = 2080;
      *&buf[20] = v149;
      v229 = 2080;
      v230 = v150;
      v231 = 2080;
      v232 = v3;
      v233 = 2048;
      v234 = v151;
      v235 = 1024;
      *v236 = v152;
      *&v236[4] = 1024;
      *&v236[6] = v153;
      v137 = "%s:%-5d RTAID [ use_case=%s issue_type=NonFinites clientID=%s node=%s issue_detected_sample_time=%f ] -- [ nan_frames=%d inf_frames=%d ]";
      v138 = v148;
      v139 = 70;
LABEL_358:
      _os_log_impl(&dword_241557000, v138, OS_LOG_TYPE_DEFAULT, v137, buf, v139);
LABEL_359:
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__p.__r_.__value_.__l.__size_);
      goto LABEL_360;
    }

LABEL_68:
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v48 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_ERROR))
    {
      v49 = *(v3 + 260);
      *buf = 136315650;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 570;
      *&buf[18] = 1024;
      *&buf[20] = v49;
      v50 = "%s:%-5d Invalid analyzer type: %d";
      v51 = v48;
      v52 = OS_LOG_TYPE_ERROR;
      v53 = 24;
LABEL_153:
      _os_log_impl(&dword_241557000, v51, v52, v50, buf, v53);
      goto LABEL_360;
    }

    goto LABEL_360;
  }

  if (v27 == 4)
  {
    v45 = *v4;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(buf, "issue_type");
    v225.__r_.__value_.__r.__words[0] = buf;
    v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
    if (*(v46 + 79) < 0)
    {
      v46[8] = 7;
      v47 = v46[7];
    }

    else
    {
      v47 = (v46 + 7);
      *(v46 + 79) = 7;
    }

    strcpy(v47, "RTError");
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "rtaid_client");
    v225.__r_.__value_.__r.__words[0] = buf;
    v96 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
    std::string::operator=((v96 + 7), &__str);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(buf, *(v3 + 488));
    std::string::basic_string[abi:ne200100]<0>(&v225, "issue_detected_sample_time");
    v223.__r_.__value_.__r.__words[0] = &v225;
    v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
    v98 = v97;
    if (*(v97 + 79) < 0)
    {
      operator delete(v97[7]);
    }

    *(v98 + 7) = *buf;
    v98[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "node");
    v225.__r_.__value_.__r.__words[0] = buf;
    v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
    std::string::__assign_external((v99 + 7), v3);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(&v218, *(v3 + 268));
    v100 = std::string::insert(&v218, 0, " {", 2uLL);
    v101 = *&v100->__r_.__value_.__l.__data_;
    v219.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v219.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = std::string::append(&v219, ", ", 2uLL);
    v103 = *&v102->__r_.__value_.__l.__data_;
    v220.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
    *&v220.__r_.__value_.__l.__data_ = v103;
    v102->__r_.__value_.__l.__size_ = 0;
    v102->__r_.__value_.__r.__words[2] = 0;
    v102->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v217, *(v3 + 272));
    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = &v217;
    }

    else
    {
      v104 = v217.__r_.__value_.__r.__words[0];
    }

    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v217.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v217.__r_.__value_.__l.__size_;
    }

    v106 = std::string::append(&v220, v104, size);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v221.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v221.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    v108 = std::string::append(&v221, ", ", 2uLL);
    v109 = *&v108->__r_.__value_.__l.__data_;
    v222.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
    *&v222.__r_.__value_.__l.__data_ = v109;
    v108->__r_.__value_.__l.__size_ = 0;
    v108->__r_.__value_.__r.__words[2] = 0;
    v108->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v216, *(v3 + 276));
    if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = &v216;
    }

    else
    {
      v110 = v216.__r_.__value_.__r.__words[0];
    }

    if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = HIBYTE(v216.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v111 = v216.__r_.__value_.__l.__size_;
    }

    v112 = std::string::append(&v222, v110, v111);
    v113 = *&v112->__r_.__value_.__l.__data_;
    v223.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
    *&v223.__r_.__value_.__l.__data_ = v113;
    v112->__r_.__value_.__l.__size_ = 0;
    v112->__r_.__value_.__r.__words[2] = 0;
    v112->__r_.__value_.__r.__words[0] = 0;
    v114 = std::string::append(&v223, ", ", 2uLL);
    v115 = *&v114->__r_.__value_.__l.__data_;
    v225.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&v225.__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v215, *(v3 + 280));
    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = &v215;
    }

    else
    {
      v116 = v215.__r_.__value_.__r.__words[0];
    }

    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v117 = v215.__r_.__value_.__l.__size_;
    }

    v118 = std::string::append(&v225, v116, v117);
    v119 = *&v118->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v118->__r_.__value_.__l + 2);
    *buf = v119;
    v118->__r_.__value_.__l.__size_ = 0;
    v118->__r_.__value_.__r.__words[2] = 0;
    v118->__r_.__value_.__r.__words[0] = 0;
    v120 = std::string::append(buf, "}", 1uLL);
    v121 = v120->__r_.__value_.__r.__words[0];
    v227[0] = v120->__r_.__value_.__l.__size_;
    *(v227 + 7) = *(&v120->__r_.__value_.__r.__words[1] + 7);
    v122 = HIBYTE(v120->__r_.__value_.__r.__words[2]);
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v213, "rt_errors");
    v224 = v213;
    v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, v213);
    v124 = v123;
    if (*(v123 + 79) < 0)
    {
      operator delete(v123[7]);
    }

    v125 = v227[0];
    v124[7] = v121;
    v124[8] = v125;
    *(v124 + 71) = *(v227 + 7);
    *(v124 + 79) = v122;
    if (v214 < 0)
    {
      operator delete(v213[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v223.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v221.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v220.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v219.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    (*(**(v45 + 16) + 24))(*(v45 + 16), v210, *(v3 + 316), &__p, 11, 7);
    v126 = *(v3 + 480);
    if (v126)
    {
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v128 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_359;
      }

      v129 = &v211;
      if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v129 = v211.__r_.__value_.__r.__words[0];
      }

      v130 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v130 = __str.__r_.__value_.__r.__words[0];
      }

      v131 = *(v3 + 488);
      v132 = *(v3 + 268);
      v133 = *(v3 + 272);
      v134 = *(v3 + 276);
      v135 = *(v3 + 280);
      v136 = *(v3 + 480);
      *buf = 136317954;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 320;
      *&buf[18] = 2080;
      *&buf[20] = v129;
      v229 = 2080;
      v230 = v130;
      v231 = 2080;
      v232 = v3;
      v233 = 2048;
      v234 = v131;
      v235 = 1024;
      *v236 = v132;
      *&v236[4] = 1024;
      *&v236[6] = v133;
      LOWORD(v237) = 1024;
      *(&v237 + 2) = v134;
      HIWORD(v237) = 1024;
      *v238 = v135;
      *&v238[4] = 2080;
      *&v238[6] = v3 + 192;
      *&v238[14] = 1024;
      *&v238[16] = v136;
      v137 = "%s:%-5d RTAID [ use_case=%s issue_type=RTError clientID=%s node=%s issue_detected_sample_time=%f ] -- [ error1=%d error2=%d error3=%d error4=%d ] -- [file name = %s : line number = %d]";
      v138 = v128;
      v139 = 98;
    }

    else
    {
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v154 = rtaid::get_log(void)::rtaid_os_log;
      if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_359;
      }

      v155 = &v211;
      if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v155 = v211.__r_.__value_.__r.__words[0];
      }

      v156 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v156 = __str.__r_.__value_.__r.__words[0];
      }

      v157 = *(v3 + 488);
      v158 = *(v3 + 268);
      v159 = *(v3 + 272);
      v160 = *(v3 + 276);
      v161 = *(v3 + 280);
      *buf = 136317442;
      *&buf[4] = "IssueReporting.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 324;
      *&buf[18] = 2080;
      *&buf[20] = v155;
      v229 = 2080;
      v230 = v156;
      v231 = 2080;
      v232 = v3;
      v233 = 2048;
      v234 = v157;
      v235 = 1024;
      *v236 = v158;
      *&v236[4] = 1024;
      *&v236[6] = v159;
      LOWORD(v237) = 1024;
      *(&v237 + 2) = v160;
      HIWORD(v237) = 1024;
      *v238 = v161;
      v137 = "%s:%-5d RTAID [ use_case=%s issue_type=RTError clientID=%s node=%s issue_detected_sample_time=%f ] -- [ error1=%d error2=%d error3=%d error4=%d ]";
      v138 = v154;
      v139 = 82;
    }

    goto LABEL_358;
  }

  if (v27 != 5)
  {
    if (v27 == 6)
    {
      rtaid::handleRMSIssue(v3, v210, *v4, &__str, &v211.__r_.__value_.__l.__data_);
      goto LABEL_360;
    }

    goto LABEL_68;
  }

  v54 = *(v3 + 284);
  v55 = *(v3 + 288);
  v56 = *(v3 + 292);
  v57 = *(v3 + 296);
  if (v54 < (-30.0 - v6) && v54 < ((v55 + -3.0) - v6) && v55 > -40.0)
  {
    v162 = *v4;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(buf, "issue_type");
    v225.__r_.__value_.__r.__words[0] = buf;
    v163 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
    if (*(v163 + 79) < 0)
    {
      v163[8] = 6;
      v164 = v163[7];
    }

    else
    {
      v164 = (v163 + 7);
      *(v163 + 79) = 6;
    }

    strcpy(v164, "LowRMS");
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "rtaid_client");
    v225.__r_.__value_.__r.__words[0] = buf;
    v188 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
    std::string::operator=((v188 + 7), &__str);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(buf, *(v3 + 488));
    std::string::basic_string[abi:ne200100]<0>(&v225, "issue_detected_sample_time");
    v223.__r_.__value_.__r.__words[0] = &v225;
    v189 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
    v190 = v189;
    if (*(v189 + 79) < 0)
    {
      operator delete(v189[7]);
    }

    *(v190 + 7) = *buf;
    v190[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "node");
    v225.__r_.__value_.__r.__words[0] = buf;
    v191 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, buf);
    std::string::__assign_external((v191 + 7), v3);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::to_string(buf, v55);
    std::string::basic_string[abi:ne200100]<0>(&v225, "dl_input_rms");
    v223.__r_.__value_.__r.__words[0] = &v225;
    v192 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
    v193 = v192;
    if (*(v192 + 79) < 0)
    {
      operator delete(v192[7]);
    }

    *(v193 + 7) = *buf;
    v193[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v57);
    std::string::basic_string[abi:ne200100]<0>(&v225, "dl_input_peak");
    v223.__r_.__value_.__r.__words[0] = &v225;
    v194 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
    v195 = v194;
    if (*(v194 + 79) < 0)
    {
      operator delete(v194[7]);
    }

    *(v195 + 7) = *buf;
    v195[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v54);
    std::string::basic_string[abi:ne200100]<0>(&v225, "dl_output_rms");
    v223.__r_.__value_.__r.__words[0] = &v225;
    v196 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
    v197 = v196;
    if (*(v196 + 79) < 0)
    {
      operator delete(v196[7]);
    }

    *(v197 + 7) = *buf;
    v197[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v56);
    std::string::basic_string[abi:ne200100]<0>(&v225, "dl_output_peak");
    v223.__r_.__value_.__r.__words[0] = &v225;
    v198 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
    v199 = v198;
    if (*(v198 + 79) < 0)
    {
      operator delete(v198[7]);
    }

    *(v199 + 7) = *buf;
    v199[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    std::to_string(buf, v6);
    std::string::basic_string[abi:ne200100]<0>(&v225, "dl_adjustment");
    v223.__r_.__value_.__r.__words[0] = &v225;
    v200 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &v225);
    v201 = v200;
    if (*(v200 + 79) < 0)
    {
      operator delete(v200[7]);
    }

    *(v201 + 7) = *buf;
    v201[9] = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    (*(**(v162 + 16) + 24))(*(v162 + 16), v210, *(v3 + 316), &__p, 11, 7);
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v202 = rtaid::get_log(void)::rtaid_os_log;
    if (!os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_359;
    }

    v203 = &v211;
    if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v203 = v211.__r_.__value_.__r.__words[0];
    }

    v204 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v204 = __str.__r_.__value_.__r.__words[0];
    }

    v205 = *(v3 + 488);
    *buf = 136317698;
    *&buf[4] = "IssueReporting.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 356;
    *&buf[18] = 2080;
    *&buf[20] = v203;
    v229 = 2080;
    v230 = v204;
    v231 = 2080;
    v232 = v3;
    v233 = 2048;
    v234 = v205;
    v235 = 2048;
    *v236 = v55;
    *&v236[8] = 2048;
    v237 = v57;
    *v238 = 2048;
    *&v238[2] = v54;
    *&v238[10] = 2048;
    *&v238[12] = v56;
    v239 = 2048;
    v240 = v6;
    v137 = "%s:%-5d RTAID [ use_case=%s issue_type=RMS Telephony Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ DLInputRMS=%f DLInputPeak=%f DLOutputRMS=%f DLOutputPeak=%f DLAdjustment=%f ]";
    v138 = v202;
    v139 = 108;
    goto LABEL_358;
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v60 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v61 = &v211;
    if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v61 = v211.__r_.__value_.__r.__words[0];
    }

    v62 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = __str.__r_.__value_.__r.__words[0];
    }

    v63 = *(v3 + 488);
    *buf = 136317698;
    *&buf[4] = "IssueReporting.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 361;
    *&buf[18] = 2080;
    *&buf[20] = v61;
    v229 = 2080;
    v230 = v62;
    v231 = 2080;
    v232 = v3;
    v233 = 2048;
    v234 = v63;
    v235 = 2048;
    *v236 = v55;
    *&v236[8] = 2048;
    v237 = v57;
    *v238 = 2048;
    *&v238[2] = v54;
    *&v238[10] = 2048;
    *&v238[12] = v56;
    v239 = 2048;
    v240 = v6;
    v50 = "%s:%-5d RTAID [ use_case=%s issue_type=RMS Telephony Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ DLInputRMS=%f DLInputPeak=%f DLOutputRMS=%f DLOutputPeak=%f DLAdjustment=%f ]";
    goto LABEL_152;
  }

LABEL_360:
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v206 = *MEMORY[0x277D85DE8];
}

void sub_241571014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (*(v74 - 217) < 0)
  {
    operator delete(*(v74 - 240));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a74);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<rtaid::ConfigurationManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 72);
    if (v4)
    {
      *(v2 + 80) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      operator delete(v5);
    }

    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*(v2 + 32));
    std::__tree<rtaid::AnalyzerType>::destroy(*(v2 + 8));

    JUMPOUT(0x245CE96E0);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::~__hash_table()
{
  v0 = qword_27E547F58;
  if (qword_27E547F58)
  {
    do
    {
      v1 = *v0;
      v2 = v0[4];
      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v3 = qword_27E547F48;
  qword_27E547F48 = 0;
  if (v3)
  {

    operator delete(v3);
  }
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = *(a1 + 16);
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  rtaid::HandleAudioIssue(a2, v3, *(a1 + 8));
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_241571554(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28533B3C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::~__func(void *a1)
{
  *a1 = &unk_28533B3C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x245CE96E0);
}

void *std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::~__func(void *a1)
{
  *a1 = &unk_28533B3C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<rtaid::DependencyInjection  *>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[4];
    v1[4] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    v1[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[2];
    v1[2] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x245CE96E0);
  }

  return result;
}

void std::__shared_ptr_pointer<rtaid::DependencyInjection  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CE96E0);
}

void rtaid::Manager::Manager(uint64_t *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  SingletonManagerInstance(void)::sInstance = 850045863;
  unk_27E547F10 = 0u;
  unk_27E547F20 = 0u;
  unk_27E547F30 = 0u;
  unk_27E547F40 = 0u;
  *&qword_27E547F50 = 0u;
  qword_27E547F60 = 0;
  dword_27E547F68 = 1065353216;
  qword_27E547F70 = 0;
  dword_27E547F78 = 0;
  *(&qword_27E547FA8 + 6) = 0;
  *&qword_27E547FA0 = 0u;
  *&qword_27E547F90 = 0u;
  *&qword_27E547F80 = 0u;
  xmmword_27E547FB8 = xmmword_2415757D0;
  dword_27E547FC8 = -1024458752;
  LOBYTE(qword_27E547FD0) = 0;
  byte_27E547FD8 = 0;
  qword_27E547FE0 = 0;
  qword_27E547FE8 = *a1;
  if (qword_27E547FE8)
  {
    operator new();
  }

  qword_27E547FF0 = 0;
  _os_assert_log();
  _os_crash();
  __break(1u);
  std::string::__throw_length_error[abi:ne200100]();
}

void sub_241571D38(_Unwind_Exception *a1)
{
  if (qword_27E547FF0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](qword_27E547FF0);
  }

  v2 = std::unique_ptr<rtaid::ConfigurationManager>::reset[abi:ne200100](&qword_27E547FE0, 0);
  if (byte_27E547FD8 == 1)
  {
    rtaid::ManagerCallStateReporter::~ManagerCallStateReporter(v2);
  }

  if (qword_27E547FA8)
  {
    std::__shared_weak_count::__release_weak(qword_27E547FA8);
  }

  if (qword_27E547F98)
  {
    std::__shared_weak_count::__release_weak(qword_27E547F98);
  }

  if (qword_27E547F88)
  {
    std::__shared_weak_count::__release_weak(qword_27E547F88);
  }

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::~__hash_table();
  std::mutex::~mutex(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(unint64_t a1)
{
  if (!qword_27E547F50)
  {
    return 0;
  }

  v1 = vcnt_s8(qword_27E547F50);
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (qword_27E547F50 <= a1)
    {
      v2 = a1 % qword_27E547F50;
    }
  }

  else
  {
    v2 = (qword_27E547F50 - 1) & a1;
  }

  i = *(qword_27E547F48 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (i[2] == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= qword_27E547F50)
          {
            v4 %= qword_27E547F50;
          }
        }

        else
        {
          v4 &= qword_27E547F50 - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

std::__shared_weak_count ***std::unique_ptr<rtaid::Detector>::~unique_ptr[abi:ne200100](std::__shared_weak_count ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    rtaid::Detector::~Detector(v2);
    MEMORY[0x245CE96E0]();
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::__shared_weak_count **std::__shared_ptr_pointer<rtaid::Detector  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    rtaid::Detector::~Detector(result);

    JUMPOUT(0x245CE96E0);
  }

  return result;
}

void std::__shared_ptr_pointer<rtaid::Detector  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CE96E0);
}

void rtaid::Manager::applyConfiguration(rtaid *a1, uint64_t a2)
{
  v34 = a1;
  v50[3] = *MEMORY[0x277D85DE8];
  {
    if (a1)
    {
      rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap = 0u;
      *&qword_27E548180 = 0u;
      dword_27E548190 = 1065353216;
    }
  }

  if (rtaid::GetAnalyzerToStringMap(void)::onceToken != -1)
  {
    dispatch_once(&rtaid::GetAnalyzerToStringMap(void)::onceToken, &__block_literal_global_22);
  }

  rtaid::GetClientIDMap(a1);
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(&rtaid::GetClientIDMap(void)::gClientIDMap, *a2);
  if (!v3)
  {
LABEL_69:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v3[3], v3[4]);
  }

  else
  {
    v36 = *(v3 + 1);
  }

  v4 = *v34;
  if (*v34 != v34 + 1)
  {
    v5 = vdupq_n_s64(0x55uLL);
    v35 = v5;
    do
    {
      v6 = *(v4 + 7);
      if (v6 == 7)
      {
        v5.i64[0] = *(a2 + 48);
        v7 = vorr_s8(*&vorrq_s8(v5, v35), 42);
      }

      else
      {
        if (v6 >= 7)
        {
          std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
        }

        v7 = *(a2 + 48) | (1 << v6);
      }

      *(a2 + 48) = v7;
      for (i = *(a2 + 24); i; i = *i)
      {
        v9 = i[3];
        v10 = (v9 + 159);
        if (v6 == 7)
        {
          *(v9 + 162) = 16843009;
          *v10 = 16843009;
        }

        else
        {
          *(v10 + v6) = 1;
        }

        rtaid::DetectorNode::updateSilenceAnalyzerState(v9);
      }

      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v11 = rtaid::get_log(void)::rtaid_os_log;
      if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
      {
        v12 = std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::find<rtaid::AnalyzerType>(*(v4 + 7));
        if (!v12)
        {
          goto LABEL_69;
        }

        v13 = v12 + 3;
        if (*(v12 + 47) < 0)
        {
          v13 = *v13;
        }

        v14 = &v36;
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v36.__r_.__value_.__r.__words[0];
        }

        *buf = 136316674;
        v38 = "Manager.cpp";
        v39 = 1024;
        v40 = 289;
        v41 = 1040;
        v42 = 14;
        v43 = 2080;
        v44 = "rtaid::Manager]";
        v45 = 2048;
        v46 = &SingletonManagerInstance(void)::sInstance;
        v47 = 2080;
        v48 = v13;
        v49 = 2080;
        v50[0] = v14;
        _os_log_impl(&dword_241557000, v11, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] enabling global %s analyzer for client %s", buf, 0x40u);
      }

      v15 = v4[1];
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
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
    }

    while (v16 != v34 + 1);
  }

  v18 = v34[3];
  if (v18 != v34 + 4)
  {
    do
    {
      v19 = v18[4];
      if (v19 != v18 + 5)
      {
        do
        {
          v20 = *(v19 + 7);
          v21 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((a2 + 8), *(v19 + 8));
          if (v21)
          {
            v22 = v21[3];
            v23 = (v22 + 152);
            if (v20 == 7)
            {
              *(v22 + 155) = 16843009;
              *v23 = 16843009;
            }

            else
            {
              *(v23 + v20) = 1;
            }

            rtaid::DetectorNode::updateSilenceAnalyzerState(v22);
          }

          {
            rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
          }

          v24 = rtaid::get_log(void)::rtaid_os_log;
          if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
          {
            v25 = std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::find<rtaid::AnalyzerType>(*(v19 + 7));
            if (!v25)
            {
              goto LABEL_69;
            }

            v26 = v25 + 3;
            if (*(v25 + 47) < 0)
            {
              v26 = *v26;
            }

            v27 = *(v19 + 8);
            v28 = &v36;
            if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v28 = v36.__r_.__value_.__r.__words[0];
            }

            *buf = 136316930;
            v38 = "Manager.cpp";
            v39 = 1024;
            v40 = 296;
            v41 = 1040;
            v42 = 14;
            v43 = 2080;
            v44 = "rtaid::Manager]";
            v45 = 2048;
            v46 = &SingletonManagerInstance(void)::sInstance;
            v47 = 2080;
            v48 = v26;
            v49 = 1024;
            LODWORD(v50[0]) = v27;
            WORD2(v50[0]) = 2080;
            *(v50 + 6) = v28;
            _os_log_impl(&dword_241557000, v24, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] enabling node specific %s analyzer at node %d for client %s", buf, 0x46u);
          }

          v29 = v19[1];
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
              v30 = v19[2];
              v17 = *v30 == v19;
              v19 = v30;
            }

            while (!v17);
          }

          v19 = v30;
        }

        while (v30 != v18 + 5);
      }

      v31 = v18[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v18[2];
          v17 = *v32 == v18;
          v18 = v32;
        }

        while (!v17);
      }

      v18 = v32;
    }

    while (v32 != v34 + 4);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_241572580(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void rtaid::Manager::applyTelephonyResets(int *a1, int *a2, uint64_t *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    goto LABEL_38;
  }

  v5 = a1;
  *(&xmmword_27E547FB8 + 4) = vdup_n_s32(0xC2F00000);
  do
  {
    v6 = *v5;
    if (*v5 == 2)
    {
      v13 = *a3;
      v12 = a3[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = qword_27E547FA8;
      qword_27E547FA0 = v13;
      qword_27E547FA8 = v12;
      if (v9)
      {
LABEL_13:
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else if (v6 == 1)
    {
      v11 = *a3;
      v10 = a3[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = qword_27E547F98;
      qword_27E547F90 = v11;
      qword_27E547F98 = v10;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else if (!v6)
    {
      v8 = *a3;
      v7 = a3[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = qword_27E547F88;
      qword_27E547F80 = v8;
      qword_27E547F88 = v7;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    ++v5;
  }

  while (v5 != a2);
  if (qword_27E547F98)
  {
    v14 = std::__shared_weak_count::lock(qword_27E547F98);
    if (v14)
    {
      v15 = v14;
      if (qword_27E547F90)
      {
        rtaid::Detector::ResetTelephonyRMSState(*(qword_27E547F90 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (qword_27E547FA8)
  {
    v16 = std::__shared_weak_count::lock(qword_27E547FA8);
    if (v16)
    {
      v17 = v16;
      if (qword_27E547FA0)
      {
        rtaid::Detector::ResetTelephonyRMSState(*(qword_27E547FA0 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (qword_27E547F88)
  {
    v18 = std::__shared_weak_count::lock(qword_27E547F88);
    if (v18)
    {
      v19 = v18;
      if (qword_27E547F80)
      {
        rtaid::Detector::ResetTelephonyRMSState(*(qword_27E547F80 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v20 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136316162;
    v23 = "Manager.cpp";
    v24 = 1024;
    v25 = 345;
    v26 = 1040;
    v27 = 14;
    v28 = 2080;
    v29 = "rtaid::Manager]";
    v30 = 2048;
    v31 = &SingletonManagerInstance(void)::sInstance;
    _os_log_impl(&dword_241557000, v20, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] reset all telephony detectors", &v22, 0x2Cu);
  }

LABEL_38:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<rtaid::Manager::InitializeDetector(long long)::$_0,std::allocator<rtaid::Manager::InitializeDetector(long long)::$_0>,void ()(rtaid::IssueDictionary)>::operator()(uint64_t a1, const void *a2)
{
  __dst[62] = *MEMORY[0x277D85DE8];
  memcpy(__dst, a2, 0x1F0uLL);
  v6 = *(a1 + 8);
  if (*(v6 + 208) == 1)
  {
    result = [*(v6 + 200) isConnected];
  }

  else
  {
    result = 1;
  }

  if (HIDWORD(__dst[32]) != 5)
  {
    goto LABEL_19;
  }

  if (*(v6 + 176) < 1.0)
  {
    goto LABEL_53;
  }

  if (LODWORD(__dst[32]) == 7)
  {
    if (__dst[0] == 0x6374756F2D6F6972 && *(__dst + 5) == 0x746E65696C637475)
    {
      goto LABEL_10;
    }
  }

  else if (LODWORD(__dst[32]) == 1 && !LOBYTE(__dst[33]) && __dst[0] == 0x646E616265736142)
  {
LABEL_10:
    v8 = *(&__dst[35] + 1);
    *(v6 + 180) = HIDWORD(__dst[35]);
    *(v6 + 188) = __dst[36];
    goto LABEL_16;
  }

  *(v6 + 184) = HIDWORD(__dst[35]);
  *(v6 + 192) = __dst[36];
  v8 = *(v6 + 180);
LABEL_16:
  if (v8 == -120.0)
  {
    goto LABEL_53;
  }

  v4.n128_u32[0] = *(v6 + 184);
  v5.n128_u32[0] = -1024458752;
  if (v4.n128_f32[0] == -120.0)
  {
    goto LABEL_53;
  }

  HIDWORD(__dst[35]) = *(v6 + 184);
  *&__dst[36] = v8;
  HIDWORD(__dst[36]) = *(v6 + 192);
  LODWORD(__dst[37]) = *(v6 + 188);
  v3.n128_u64[0] = vdup_n_s32(0xC2F00000);
  *(v6 + 180) = v3.n128_u64[0];
LABEL_19:
  v10 = atomic_load((v6 + 172));
  v11 = 1;
  atomic_compare_exchange_strong((v6 + 173), &v11, v11);
  v12 = v11 == 1;
  if (HIDWORD(__dst[32]) == 1)
  {
    if (LOBYTE(__dst[33]))
    {
      v15 = 0;
    }

    else
    {
      v15 = v11 == 1;
    }

    if (!v15)
    {
      v16 = 0;
      v17 = LODWORD(__dst[32]) == 3;
      v18 = LODWORD(__dst[32]) == 4;
      v19 = BYTE4(__dst[39]);
      if (BYTE4(__dst[39]))
      {
        v20 = LODWORD(__dst[32]) == 2;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      if (BYTE4(__dst[39]) && ((v18 ^ v17) & 1) == 0)
      {
        v16 = 0;
        v22 = &__dst[56];
        do
        {
          v24 = *v22++;
          v23 = v24;
          if (LODWORD(__dst[32]) != 2 || v23 != 13)
          {
            v21 = 0;
            LOBYTE(v17) = (v23 == 2) | v17;
            LOBYTE(v18) = (v23 == 1) | v18;
            v16 |= v23 == 4;
          }

          --v19;
        }

        while (v19);
      }

      v4.n128_u32[0] = HIDWORD(__dst[35]);
      v3.n128_f32[0] = HIDWORD(__dst[33]) / *(&__dst[35] + 1);
      v5.n128_f32[0] = HIDWORD(__dst[34]) / *(&__dst[35] + 1);
      if (v21)
      {
        if (v3.n128_f32[0] > 0.0)
        {
          goto LABEL_52;
        }

        if (v5.n128_f32[0] > 0.0 || LODWORD(__dst[35]) != 0)
        {
          goto LABEL_52;
        }
      }

      else if (v17)
      {
        if (result)
        {
          v5.n128_u32[0] = __dst[34];
          if (((v12 | v10) & 1) == 0 || (LODWORD(__dst[32]) != 1 || LOBYTE(__dst[33]) != 1 || __dst[0] != 0x646E616265736142) && (LODWORD(__dst[32]) != 2 || LOBYTE(__dst[33]) != 1 || (__dst[0] == 0x2D20505344657250 ? (v27 = __dst[1] == 0x707974205B207B20) : (v27 = 0), v27 ? (v28 = *(&__dst[1] + 7) == 0x6E6C7570203A6570) : (v28 = 0), !v28)))
          {
            if ((LODWORD(__dst[32]) - 1) <= 1 && LOBYTE(__dst[33]) == 1)
            {
              v4.n128_u32[0] = 5.0;
              if (v3.n128_f32[0] <= 5.0)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

            v4.n128_f32[0] = LODWORD(__dst[34]) / *(&__dst[35] + 1);
            v5.n128_u32[0] = 5.0;
            if (v3.n128_f32[0] > 5.0 || v4.n128_f32[0] > 5.0)
            {
LABEL_52:
              result = (*(**(*(v6 + 224) + 24) + 24))(*(*(v6 + 224) + 24), __dst, v3, v4, v5);
            }
          }
        }
      }

      else if (v18)
      {
        v4.n128_u32[0] = 1034147594;
        if (v3.n128_f32[0] > 0.08)
        {
          goto LABEL_52;
        }

        if (v5.n128_f32[0] > 0.08 || LODWORD(__dst[35]) > 5)
        {
          goto LABEL_52;
        }
      }

      else if (v16)
      {
        v4.n128_u32[0] = 9.0;
        if (v3.n128_f32[0] > 9.0 || v5.n128_f32[0] > 9.0)
        {
          goto LABEL_52;
        }
      }
    }
  }

  else
  {
    if (HIDWORD(__dst[32]) != 5)
    {
      goto LABEL_52;
    }

    v4.n128_u32[0] = HIDWORD(__dst[35]);
    v5.n128_u32[0] = __dst[36];
    v13 = *&__dst[36] > -60.0;
    v14 = *(&__dst[35] + 1) < (-30.0 - *(v6 + 168)) && *&__dst[36] > -60.0;
    v3.n128_u32[0] = -1038090240;
    if (*&__dst[36] >= -40.0)
    {
      v13 = 0;
    }

    if (v14 || v13)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241572C50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<rtaid::Manager::InitializeDetector(long long)::$_0,std::allocator<rtaid::Manager::InitializeDetector(long long)::$_0>,void ()(rtaid::IssueDictionary)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28533B448;
  a2[1] = v2;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::find<rtaid::AnalyzerType>(unsigned int a1)
{
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= a1)
    {
      v2 = a1 % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & a1;
  }

  i = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
          {
            v4 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
          }
        }

        else
        {
          v4 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t rtaid::Manager::SetNodeFormatWithDirectionOnDetector(unint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (v2)
  {
    v3 = v2[3];
    v4 = v2[4];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      v5 = *(qword_27E547FE0 + 118);
      std::regex_traits<char>::regex_traits(&v8);
      v11 = 0;
      v10 = 0u;
      v9 = 0u;
      std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  v6 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

void sub_241573F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, ...)
{
  va_start(va, a14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void rtaid::ManagerCallStateReporter::~ManagerCallStateReporter(rtaid::ManagerCallStateReporter *this)
{
  if (qword_27E547FD0)
  {
    CFRelease(qword_27E547FD0);
  }
}

void rtaid::NodeFormatConverter::disposeConverter(rtaid::NodeFormatConverter *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  if (v2)
  {
    AudioConverterDispose(v2);
    *(this + 11) = 0;
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v3 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
    {
      v5 = 136316162;
      v6 = "NodeFormatConverter.cpp";
      v7 = 1024;
      v8 = 93;
      v9 = 1040;
      v10 = 26;
      v11 = 2080;
      v12 = "rtaid::NodeFormatConverter]";
      v13 = 2048;
      v14 = this;
      _os_log_impl(&dword_241557000, v3, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] AudioConverterRef has been disposed", &v5, 0x2Cu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void rtaid::NodeFormatConverter::~NodeFormatConverter(rtaid::NodeFormatConverter *this)
{
  v14 = *MEMORY[0x277D85DE8];
  rtaid::NodeFormatConverter::disposeConverter(this);
  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v2 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    v4 = 136316162;
    v5 = "NodeFormatConverter.cpp";
    v6 = 1024;
    v7 = 29;
    v8 = 1040;
    v9 = 26;
    v10 = 2080;
    v11 = "rtaid::NodeFormatConverter]";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_241557000, v2, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] destroyed", &v4, 0x2Cu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2415746FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    goto LABEL_69;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v55 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v55;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      goto LABEL_69;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v60.__r_.__value_.__s + 23) = 4;
    LODWORD(v60.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v60.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v58, v13, *&v14, &v60, *(a2 + 3));
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v60, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v58;
        }

        else
        {
          v31 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v58.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v60, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v60.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_69;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v60, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v60;
        }

        else
        {
          v29 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v60.__r_.__value_.__l.__size_;
        }

        std::string::append(&v58, v29, v30);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v58, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v60, *(a2 + 5));
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v58;
      }

      else
      {
        v31 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = &byte_2415772FD;
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = &byte_2415772FD;
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v60.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v41 = ", deinterleaved";
        }

        else
        {
          v41 = &byte_2415772FD;
        }

        v42 = *(a2 + 8);
        v38 = &byte_2415772FD;
        v43 = &byte_2415772FD;
        goto LABEL_106;
      }
    }

    v37 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v40 = " signed";
      if ((v20 & 4) == 0)
      {
        v40 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = &byte_2415772FD;
      }

      else
      {
        v27 = v40;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v37 = 1;
      v38 = &byte_2415772FD;
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v38 = " big-endian";
      }

      else
      {
        v38 = " little-endian";
      }

      v39 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v39 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = &byte_2415772FD;
      }

      else
      {
        v27 = v39;
      }
    }

    v44 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(a2 + 7);
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

    if (v45 == *(a2 + 8))
    {
      v60.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v46 = &byte_2415772FD;
      }

      else
      {
        v46 = "un";
      }

      snprintf(&v60, 0x20uLL, "%spacked in %u bytes", v46, v37);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v47 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v44 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    if (v47)
    {
      v47 = 8 * (v21 / v47);
    }

LABEL_128:
    v48 = *(a2 + 8);
    v49 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v49 = " low-aligned";
    }

    if ((v48 & 7) == 0 && v47 == v48)
    {
      v43 = &byte_2415772FD;
    }

    else
    {
      v43 = v49;
    }

    if (v22)
    {
      v41 = ", deinterleaved";
    }

    else
    {
      v41 = &byte_2415772FD;
    }

    if (v60.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v57, __str, v38, v27, v26, v23, &v60, v43, v41);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v58;
      }

      else
      {
        v51 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v58.__r_.__value_.__l.__size_;
      }

      v53 = std::string::insert(&v57, 0, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v53->__r_.__value_.__l + 2);
      *this = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v43)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v56 = ", deinterleaved";
  }

  else
  {
    v56 = ", interleaved";
  }

  if (v9 == 1)
  {
    v56 = &byte_2415772FD;
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_278CE0D78 + v12), v56);
LABEL_69:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_241574E38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
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