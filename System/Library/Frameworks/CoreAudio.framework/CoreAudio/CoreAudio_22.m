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
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
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

void sub_1DE396ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_1DE396BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void sub_1DE396CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

  JUMPOUT(0x1E12C1730);
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

  JUMPOUT(0x1E12C1730);
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
  MEMORY[0x1E12C0FD0](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
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

  JUMPOUT(0x1E12C1730);
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
  a1->__locale_ = &unk_1F59893D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12C1730);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F59893D0;
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
  a1->__locale_ = &unk_1F5989388;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12C1730);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5989388;
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
  MEMORY[0x1E12C0FD0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12C1730);
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

void sub_1DE3985C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5989220;
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

  JUMPOUT(0x1E12C1730);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5989220;
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
  a1->__locale_ = &unk_1F59891D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12C1730);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F59891D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001DE79DAF0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
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

  JUMPOUT(0x1E12C1730);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12C1730);
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

CFIndex ___ZNK20HALS_SettingsManager21GetNumberSettingsKeysEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 24);
  if (v3)
  {
    CASettingsStorage::RefreshSettings(*(v2 + 24));
    result = CFDictionaryGetCount(*(v3 + 16));
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFPropertyListRef HALS_SettingsManager::_ReadSetting(CFDictionaryRef *this, const __CFString *a2, uint64_t a3, const void *a4)
{
  if (!this)
  {
    return 0;
  }

  propertyList = 0;
  CASettingsStorage::CopyCFTypeValue(this, a2, &propertyList, a4);
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E478], propertyList, 0);
  if (propertyList)
  {
    CFRelease(propertyList);
  }

  return DeepCopy;
}

void sub_1DE398C20(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE398BDCLL);
}

void HALS_SettingsManager::_WriteSetting(CFMutableDictionaryRef **this, const __CFString *a2, CFPropertyListRef propertyList)
{
  if (this[3])
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E478], propertyList, 0);
    CASettingsStorage::SetCFTypeValue(this[3], a2, DeepCopy);

    CFRelease(DeepCopy);
  }
}

void sub_1DE398CA4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE398C7CLL);
}

void CACFNumber::~CACFNumber(CACFNumber *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

uint64_t HALS_SettingsManager::ReadSetting(HALS_SettingsManager *this, const __CFString *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(this + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN20HALS_SettingsManager11ReadSettingEPK10__CFString_block_invoke;
  block[3] = &unk_1E8673E18;
  block[4] = &v7;
  block[5] = this;
  block[6] = a2;
  v3 = atomic_load((v2 + 32));
  if (v3)
  {
    atomic_store(1u, (v2 + 33));
  }

  dispatch_sync(*v2, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

CFPropertyListRef ___ZN20HALS_SettingsManager11ReadSettingEPK10__CFString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  result = HALS_SettingsManager::_ReadSetting(*(*(a1 + 40) + 24), *(a1 + 48), a3, a4);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_SettingsManager::WriteSetting(HALS_SettingsManager *this, const __CFString *a2, const void *a3)
{
  applesauce::CF::StringRef::from_get(&cf, a2);
  if (a3)
  {
    CFRetain(a3);
  }

  mcp_applesauce::CF::PropertyListRef::PropertyListRef(&v20, a3);
  v5 = *(this + 2);
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v16, *this, *(this + 1));
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v18 = v6;
  v7 = v20;
  if (v20)
  {
    CFRetain(v20);
  }

  v19 = v7;
  v8 = atomic_load((v5 + 32));
  if (v8)
  {
    atomic_store(1u, (v5 + 33));
  }

  if (*(v5 + 328) != 1)
  {
    v15 = *v5;
    operator new();
  }

  v10 = v16;
  v9 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  v12 = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  v13 = *(v5 + 320);
  v14 = *v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN20HALS_SettingsManager12WriteSettingEPK10__CFStringPKvE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_60;
  block[4] = v10;
  v23 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    CFRetain(v11);
  }

  v24 = v11;
  if (v12)
  {
    CFRetain(v12);
  }

  v25 = v12;
  dispatch_group_async(v13, v14, block);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE3990D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0,std::default_delete<HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x1E12C1730](v2, 0xE0C402E8C7BDELL);
  }

  return a1;
}

void *applesauce::dispatch::v1::async<HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0 &>(dispatch_queue_s *,HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  HALS_SettingsManager::_WriteSetting(*a1, *(a1 + 16), *(a1 + 24));
  return std::unique_ptr<HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0,std::default_delete<HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE3991C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0,std::default_delete<HALS_SettingsManager::WriteSetting(__CFString const*,void const*)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c65_ZTSZN20HALS_SettingsManager12WriteSettingEPK10__CFStringPKvE3__0(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *__copy_helper_block_e8_32c65_ZTSZN20HALS_SettingsManager12WriteSettingEPK10__CFStringPKvE3__0(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 40);
  result[4] = *(a2 + 32);
  result[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    result = CFRetain(*(a2 + 48));
  }

  v3[6] = v5;
  v6 = *(a2 + 56);
  if (v6)
  {
    result = CFRetain(v6);
  }

  v3[7] = v6;
  return result;
}

uint64_t HALS_SettingsManager::HasServerSetting(HALS_SettingsManager *this, const __CFString *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(this + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN20HALS_SettingsManager16HasServerSettingEPK10__CFString_block_invoke;
  block[3] = &unk_1E8673E88;
  block[4] = &v7;
  block[5] = this;
  block[6] = @"AirPlayIsAlwaysTransient";
  v3 = atomic_load((v2 + 32));
  if (v3)
  {
    atomic_store(1u, (v2 + 33));
  }

  dispatch_sync(*v2, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

CFIndex ___ZN20HALS_SettingsManager16HasServerSettingEPK10__CFString_block_invoke(CFIndex result)
{
  v1 = result;
  v2 = *(result + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = *(result + 48);
    CASettingsStorage::RefreshSettings(*(v2 + 32));
    result = CFDictionaryGetCountOfKey(*(v3 + 16), v4);
    v5 = result > 0;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(v1 + 32) + 8) + 24) = v5;
  return result;
}

uint64_t HALS_SettingsManager::ReadServerSetting(HALS_SettingsManager *this, const __CFString *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(this + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN20HALS_SettingsManager17ReadServerSettingEPK10__CFString_block_invoke;
  block[3] = &unk_1E8673EB0;
  block[4] = &v7;
  block[5] = this;
  block[6] = a2;
  v3 = atomic_load((v2 + 32));
  if (v3)
  {
    atomic_store(1u, (v2 + 33));
  }

  dispatch_sync(*v2, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

CFDictionaryRef *___ZN20HALS_SettingsManager17ReadServerSettingEPK10__CFString_block_invoke(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = a1[5];
  v5 = a1[6];
  v8 = 0;
  result = *(v6 + 32);
  if (result)
  {
    result = CASettingsStorage::CopyCFTypeValue(result, v5, &v8, a4);
  }

  *(*(a1[4] + 8) + 24) = v8;
  return result;
}

void sub_1DE399504(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3994E4);
}

uint64_t HALS_SettingsManager::ReadServerIntSetting(HALS_SettingsManager *this, const __CFString *a2)
{
  valuePtr = 0;
  ServerSetting = HALS_SettingsManager::ReadServerSetting(this, @"RingBufferMode");
  number = ServerSetting;
  v8 = 1;
  if (ServerSetting && (v3 = CFGetTypeID(ServerSetting), v3 == CFNumberGetTypeID()))
  {
    Type = CFNumberGetType(number);
    CFNumberGetValue(number, Type, &valuePtr);
    v5 = valuePtr;
  }

  else
  {
    v5 = 0;
  }

  CACFObject<void const*>::~CACFObject(&number);
  return v5;
}

void sub_1DE39959C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFObject<void const*>::~CACFObject(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_SettingsManager::ReadServerBooleanSetting(HALS_SettingsManager *this, const __CFString *a2, uint64_t a3)
{
  ServerSetting = HALS_SettingsManager::ReadServerSetting(this, a2);
  BOOLean = ServerSetting;
  v11 = 1;
  if (ServerSetting)
  {
    v5 = CFGetTypeID(ServerSetting);
    if (v5 == CFBooleanGetTypeID())
    {
      v6 = CFBooleanGetValue(BOOLean) == 0;
    }

    else
    {
      v7 = CFGetTypeID(BOOLean);
      if (v7 != CFNumberGetTypeID())
      {
        goto LABEL_9;
      }

      valuePtr = 0;
      CFNumberGetValue(BOOLean, kCFNumberSInt64Type, &valuePtr);
      v6 = valuePtr == 0;
    }

    a3 = !v6;
  }

LABEL_9:
  CACFObject<void const*>::~CACFObject(&BOOLean);
  return a3;
}

void sub_1DE399658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFObject<void const*>::~CACFObject(va);
  _Unwind_Resume(a1);
}

void sub_1DE3998F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MicActivityDXPCListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Counter::start(uint64_t a1, AMCP::DAL::DAL_Time *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (!v4)
  {
    if (v5 == *(a1 + 24))
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "Manifest_Counter.cpp";
      v25 = 1024;
      v26 = 22;
      v27 = 2080;
      v28 = "not (anchor_time.get_clock() == m_master_timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v14);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v29 = "void AMCP::Graph::Manifest_Counter::start(const DAL_Time &)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v31 = 22;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  v6 = *(a1 + 24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (v5 != v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  *(a1 + 8) = sample_time;
  *(a1 + 16) = sample_time;
  *a1 = 1;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE399D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  _Unwind_Resume(a1);
}

double AMCP::Graph::Manifest_Counter::advance(uint64_t a1, double a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Manifest_Counter.cpp";
      v20 = 1024;
      v21 = 58;
      v22 = 2080;
      v23 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "void AMCP::Graph::Manifest_Counter::advance(Sample_Time)";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v26 = 58;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  result = a2 + *(a1 + 16);
  *(a1 + 16) = result;
  ++*(a1 + 40);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE39A0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::Graph::Manifest_Counter::adjust_cycle_anchor_for_buffer_size_change(double *a1, double a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Manifest_Counter.cpp";
      v20 = 1024;
      v21 = 67;
      v22 = 2080;
      v23 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "void AMCP::Graph::Manifest_Counter::adjust_cycle_anchor_for_buffer_size_change(Sample_Time)";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v26 = 67;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  result = a2 + a1[2];
  a1[2] = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE39A3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Manifest_Counter::get_anchor_time(uint64_t this, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*a2 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "Manifest_Counter.cpp";
      v22 = 1024;
      v23 = 75;
      v24 = 2080;
      v25 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v11);
    std::logic_error::logic_error(&v12, &v11);
    v12.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5991430;
    v14 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v13);
    v26 = "DAL_Time AMCP::Graph::Manifest_Counter::get_anchor_time() const";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v28 = 75;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *this = 2;
  *(this + 8) = v2;
  *(this + 16) = 0;
  *(this + 24) = v3;
  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE39A710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(uint64_t this, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*a2 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "Manifest_Counter.cpp";
      v22 = 1024;
      v23 = 83;
      v24 = 2080;
      v25 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v11);
    std::logic_error::logic_error(&v12, &v11);
    v12.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5991430;
    v14 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v13);
    v26 = "DAL_Time AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time() const";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v28 = 83;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *this = 2;
  *(this + 8) = v2;
  *(this + 16) = 0;
  *(this + 24) = v3;
  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE39AA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::Graph::Manifest_Counter::get_cycle_anchor_for_timebase(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v14) = 2;
  *(&v14 + 1) = v5;
  v15 = 0;
  v16 = v6;
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *a3;
    v13 = v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v6 = v13;
    if (v10 != v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = *&v14;
    *a1 = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = v6;
    return result;
  }

  if (*a3 == v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  AMCP::DAL::DAL_Time::translate_time(a1, &v14, a3);
  v12 = *(&v16 + 1);
  if (*(&v16 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return result;
}

void sub_1DE39ABC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::DAL::DAL_Time::floor(AMCP::DAL::DAL_Time *this, uint64_t a2)
{
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *this = 2;
  result = floor(sample_time);
  *(this + 1) = result;
  *(this + 2) = 0;
  *(this + 24) = v5;
  return result;
}

AMCP::DAL::DAL_Time *boost::operators_impl::operator-(AMCP::DAL::DAL_Time *a1, uint64_t a2, AMCP::DAL::DAL_Time_Delta *a3)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 2) = *(a2 + 16);
  *(a1 + 3) = v3;
  v4 = *(a2 + 32);
  *(a1 + 4) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return AMCP::DAL::DAL_Time::operator-=(a1, a3);
}

void sub_1DE39AC90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Counter::calculate_buffer_start(AMCP::DAL::DAL_Time *a1, uint64_t a2, uint64_t *a3, uint64_t a4, AMCP::DAL::DAL_Time_Delta *a5, float a6)
{
  v8 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v12 = (*(**a3 + 144))(*a3, a4);
  v13 = v12;
  v14 = HIDWORD(v12);
  if (v8)
  {
    AMCP::Graph::Manifest_Counter::get_cycle_anchor_for_timebase(v30, a2, a3);
    AMCP::DAL::DAL_Time::floor(buf, v30);
    boost::operators_impl::operator-(a1, buf, a5);
    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
    }

    v15 = *a3;
    v16 = a3[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    *buf = 2;
    v33 = v13;
    v34 = 0;
    v35 = v15;
    AMCP::DAL::DAL_Time::operator-=(a1, buf);
    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
    }

    v17 = *a3;
    v18 = a3[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    *buf = 2;
    v33 = v14;
    v34 = 0;
    v35 = v17;
    AMCP::DAL::DAL_Time::operator-=(a1, buf);
    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
    }

    if ((*a1 & 0xFFFFFFFE) == 2)
    {
      AMCP::DAL::DAL_Time::get_sample_time(a1);
    }
  }

  else
  {
    AMCP::Graph::Manifest_Counter::get_cycle_anchor_for_timebase(v30, a2, a3);
    AMCP::DAL::DAL_Time::floor(a1, v30);
    v19 = *a3;
    v20 = a3[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    *buf = 2;
    v33 = v13;
    v34 = 0;
    v35 = v19;
    AMCP::DAL::DAL_Time::operator+=(a1, buf);
    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
    }

    v21 = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *buf = 2;
    v33 = v14;
    v34 = 0;
    v35 = v21;
    AMCP::DAL::DAL_Time::operator+=(a1, buf);
    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
    }

    v24 = *(a5 + 3);
    v23 = *(a5 + 4);
    v26 = *a5;
    v27 = *(a5 + 2);
    v28 = v24;
    v29 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v26)
    {
      v27 = (a6 * v27);
    }

    if ((v26 & 2) != 0)
    {
      *(&v26 + 1) = *(&v26 + 1) * a6;
    }

    AMCP::DAL::DAL_Time::operator+=(a1, &v26);
    if ((*a1 & 0xFFFFFFFE) == 2)
    {
      AMCP::DAL::DAL_Time::get_sample_time(a1);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1DE39B3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v48 = *(v46 + 32);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::IOAudio1::Engine::convert_host_to_sample_time(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 164);
  v4 = AMCP::IO_Clock::convert_host_to_sample_time_internal(&this[144], a2);
  os_unfair_lock_unlock(this + 164);
  return v4;
}

double AMCP::IOAudio1::Engine::get_current_host_ticks_per_frame(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 164);
  v2 = *&this[160]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 164);
  return v2;
}

double AMCP::IOAudio1::Engine::get_zero_time_stamp@<D0>(AMCP::IOAudio1::Engine *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 93);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    v4 = *v3;
    *a2 = (*(this + 10) * HIDWORD(*v3));
    *(a2 + 8) = *(&v4 + 1);
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  *&result = 3;
  *(a2 + 56) = 3;
  return result;
}

BOOL AMCP::IOAudio1::Engine::end_writing(AMCP::IOAudio1::Engine *this, unint64_t a2, unint64_t a3, double a4, int a5, int a6)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(this + 12) == *(this + 13))
  {
    v32 = 1;
    goto LABEL_52;
  }

  os_unfair_lock_lock(this + 184);
  v10 = *(this + 12);
  v11 = *(this + 13) - v10;
  if (v11)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3);
    v13 = *(this + 98);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 99) - v13) >> 3);
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v15 = (v13 + 8);
    v16 = (v10 + 40);
    do
    {
      if (!v14)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v17 = *(v15 - 1);
      v19 = *v16;
      v16 += 14;
      v18 = v19;
      *v17 = v19 * a5;
      v17[1] = a5;
      v20 = *v15;
      v15 += 6;
      v17[2] = v20 - v17 - 16;
      v17[3] = v18 * a6;
      --v14;
      --v12;
    }

    while (v12);
  }

  v21 = AMCP::Core::Engine::calculate_safety_violation_write(this, a4);
  if (v21 < 0.0)
  {
    kdebug_trace();
  }

  kdebug_trace();
  AMCP::IO_Clock::get_current_zts(v54, this + 576);
  v22 = *(this + 10);
  v23 = (a4 - *v54) % v22;
  v24 = a4 / v22;
  os_unfair_lock_lock(this + 164);
  v25 = *(this + 80);
  os_unfair_lock_unlock(this + 164);
  v26 = vcvtmd_u64_f64(v25);
  v27 = vcvtd_n_u64_f64(v25 - floor(v25), 0x20uLL);
  if (*(this + 808) == 1)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  if (*(this + 808) == 1)
  {
    v29 = v26;
  }

  else
  {
    v29 = v25 >> 32;
  }

  v30 = MEMORY[0x1E12C0820](*(this + 185), 0, v23, v24, 0, *(this + 188), v29, v28);
  v31 = v30;
  v32 = v30 == 0;
  if (v30)
  {
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      v30 = AMCP::Log::AMCP_Scope_Registry::initialize(v30);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = *(v34 + 16);
    switch(v36)
    {
      case 3:
        v45 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v45 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v30);
        }

        v47 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v46 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          v48 = *v47;
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        else
        {
          v48 = *v47;
        }

        if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          goto LABEL_47;
        }

        *v54 = 136315650;
        *&v54[4] = "IOAudio1_Engine.cpp";
        v55 = 1024;
        v56 = 352;
        v57 = 1024;
        v58 = v31;
        v49 = v48;
        v50 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v41 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v30);
        }

        v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          v44 = *v43;
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        else
        {
          v44 = *v43;
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *v54 = 136315650;
          *&v54[4] = "IOAudio1_Engine.cpp";
          v55 = 1024;
          v56 = 352;
          v57 = 1024;
          v58 = v31;
          _os_log_debug_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_DEBUG, "%32s:%-5d IOAudio1 engine end_writing got an error from the kernel trap: %d", v54, 0x18u);
        }

        goto LABEL_47;
      case 1:
        v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v37 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v30);
        }

        v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          v40 = *v39;
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        else
        {
          v40 = *v39;
        }

        if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
LABEL_47:
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          goto LABEL_49;
        }

        *v54 = 136315650;
        *&v54[4] = "IOAudio1_Engine.cpp";
        v55 = 1024;
        v56 = 352;
        v57 = 1024;
        v58 = v31;
        v49 = v40;
        v50 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_47;
    }

    _os_log_impl(&dword_1DE1F9000, v49, v50, "%32s:%-5d IOAudio1 engine end_writing got an error from the kernel trap: %d", v54, 0x18u);
    goto LABEL_47;
  }

LABEL_49:
  kdebug_trace();
  v51 = AMCP::Core::Engine::calculate_safety_violation_write(this, a4);
  if (v51 < 0)
  {
    kdebug_trace();
  }

  os_unfair_lock_unlock(this + 184);
LABEL_52:
  v52 = *MEMORY[0x1E69E9840];
  return v32;
}

void sub_1DE39BB30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOAudio1::Engine::write_data_to_stream(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, size_t **a7)
{
  if (*(a1 + 784) != *(a1 + 792))
  {
    os_unfair_lock_lock((a1 + 736));
    v11 = *(a1 + 784);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 792) - v11) >> 3) > a4)
    {
      v12 = (v11 + 24 * a4);
      v13 = **a7;
      if (v13 + a5 <= v12[1] - *v12 - 16)
      {
        memcpy((*v12 + a5 + 16), (*a7)[1], v13);
      }
    }

    os_unfair_lock_unlock((a1 + 736));
  }

  return 1;
}

uint64_t AMCP::IOAudio1::Engine::read_data_from_stream(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, size_t **a7)
{
  os_unfair_lock_lock((a1 + 736));
  v11 = *(a1 + 760);
  v12 = *(a1 + 768);
  if (v11 != v12 && 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) > a4)
  {
    v13 = (v11 + 24 * a4);
    v14 = **a7;
    if (v14 + a5 <= v13[1] - *v13 - 16)
    {
      memcpy((*a7)[1], (*v13 + a5 + 16), v14);
    }
  }

  os_unfair_lock_unlock((a1 + 736));
  return 1;
}

BOOL AMCP::IOAudio1::Engine::begin_reading(os_unfair_lock_s *this, unint64_t a2, unint64_t a3, double a4, int a5, int a6)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*&this[18]._os_unfair_lock_opaque != *&this[20]._os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(this + 184);
    v10 = *&this[18]._os_unfair_lock_opaque;
    v11 = *&this[20]._os_unfair_lock_opaque - v10;
    if (v11)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3);
      v13 = *&this[190]._os_unfair_lock_opaque;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((*&this[192]._os_unfair_lock_opaque - v13) >> 3);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v15 = (v13 + 8);
      v16 = (v10 + 40);
      do
      {
        if (!v14)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v17 = *(v15 - 1);
        v19 = *v16;
        v16 += 14;
        v18 = v19;
        *v17 = v19 * a5;
        v17[1] = a5;
        v20 = *v15;
        v15 += 6;
        v17[2] = v20 - v17 - 16;
        v17[3] = v18 * a6;
        --v14;
        --v12;
      }

      while (v12);
    }

    AMCP::IO_Clock::get_current_zts(v51, &this[144]);
    v21 = *v51;
    os_unfair_lock_opaque = this[10]._os_unfair_lock_opaque;
    v23 = AMCP::Core::Engine::calculate_safety_violation_read(this, a4);
    v24 = fmod(a4 - v21, os_unfair_lock_opaque);
    if (v24 >= 0.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + os_unfair_lock_opaque;
    }

    v26 = v23;
    if (v26 <= -5.0)
    {
      kdebug_trace();
    }

    kdebug_trace();
    v27 = IOConnectTrap4(this[185]._os_unfair_lock_opaque, 0, v25, (a4 / os_unfair_lock_opaque), 1uLL, this[188]._os_unfair_lock_opaque);
    kdebug_trace();
    v29 = AMCP::Core::Engine::calculate_safety_violation_read(this, a4);
    if (v29 <= -5)
    {
      v28 = kdebug_trace();
    }

    v30 = v27 == 0;
    if (!v27)
    {
      goto LABEL_48;
    }

    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      v28 = AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = *(v32 + 16);
    switch(v34)
    {
      case 3:
        v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v43 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v28);
        }

        v45 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v44 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          v46 = *v45;
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        else
        {
          v46 = *v45;
        }

        if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          goto LABEL_46;
        }

        *v51 = 136315650;
        *&v51[4] = "IOAudio1_Engine.cpp";
        v52 = 1024;
        v53 = 252;
        v54 = 1024;
        v55 = v27;
        v47 = v46;
        v48 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v39 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v28);
        }

        v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          v42 = *v41;
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        else
        {
          v42 = *v41;
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *v51 = 136315650;
          *&v51[4] = "IOAudio1_Engine.cpp";
          v52 = 1024;
          v53 = 252;
          v54 = 1024;
          v55 = v27;
          _os_log_debug_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_DEBUG, "%32s:%-5d IOAudio1 engine begin_reading got an error from the kernel trap: %d", v51, 0x18u);
        }

        goto LABEL_46;
      case 1:
        v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v35 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v28);
        }

        v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v38 = *v37;
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          v38 = *v37;
        }

        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
LABEL_46:
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

LABEL_48:
          os_unfair_lock_unlock(this + 184);
          goto LABEL_49;
        }

        *v51 = 136315650;
        *&v51[4] = "IOAudio1_Engine.cpp";
        v52 = 1024;
        v53 = 252;
        v54 = 1024;
        v55 = v27;
        v47 = v38;
        v48 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_46;
    }

    _os_log_impl(&dword_1DE1F9000, v47, v48, "%32s:%-5d IOAudio1 engine begin_reading got an error from the kernel trap: %d", v51, 0x18u);
    goto LABEL_46;
  }

  v30 = 1;
LABEL_49:
  v49 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1DE39C150(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::IOAudio1::Engine::set_output_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_output_stream_active_list(&__p, a1 + 120, a2);
  if (__p)
  {
    operator delete(__p);
  }
}

void AMCP::IOAudio1::Engine::set_input_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_input_stream_active_list(&__p, a1 + 120, a2);
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t AMCP::IOAudio1::Engine::set_transport_state(os_unfair_lock_s *a1, signed int a2)
{
  v4 = atomic_load(&a1[34]._os_unfair_lock_opaque);
  v5 = MEMORY[0x1E12C16E0]();
  os_unfair_lock_lock(a1 + 184);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 < 1;
  }

  if (!v6)
  {
    AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(&a1[30]);
    AMCP::IO_Clock::reset_time(a1 + 144);
    operator new();
  }

  if (v4 >= 1 && a2 == 0)
  {
    AMCP::IOAudio1::Engine::stop(a1);
  }

  os_unfair_lock_unlock(a1 + 184);
  atomic_store(a2, &a1[34]._os_unfair_lock_opaque);
  result = MEMORY[0x1E12C16E0](v8, v9);
  if (result > v5)
  {
    atomic_store(0, &a1[34]._os_unfair_lock_opaque);
    return AMCP::IOAudio1::Engine::stop(a1);
  }

  return result;
}

void sub_1DE39C678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (MEMORY[0x1E12C16E0]() > v16)
  {
    AMCP::IOAudio1::Engine::release_buffers(v15);
  }

  applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio1::Engine::start(void)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a11);
  os_unfair_lock_unlock(v15 + 184);
  applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio1::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a9);
  _Unwind_Resume(a1);
}

void sub_1DE39C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    operator delete(a14);
  }

  JUMPOUT(0x1DE39C6C4);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio1::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    atomic_store(0, v2 + 34);
    AMCP::IOAudio1::Engine::stop(v2);
  }

  return a1;
}

uint64_t AMCP::IOAudio1::Engine::stop(AMCP::IOAudio1::Engine *this)
{
  v6 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = *(this + 185);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(v2, 4u, 0, 0);
  kdebug_trace();
  AMCP::IOAudio1::Engine::release_buffers(this);
  std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](this + 93, 0);
  (*(*this + 320))(this);
  result = AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(this + 120);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void AMCP::IOAudio1::Engine::release_buffers(AMCP::IOAudio1::Engine *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 95);
  v3 = *(this + 96);
  while (v2 != v3)
  {
    v4 = *(this + 185);
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned long,unsigned int &>(v4, *v2, *(this + 188));
    v2 += 3;
  }

  v5 = *(this + 98);
  v6 = *(this + 99);
  while (v5 != v6)
  {
    v7 = *(this + 185);
    if (!v7)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned long,unsigned int &>(v7, *v5, *(this + 188));
    v5 += 3;
  }

  std::vector<std::vector<std::byte>>::clear[abi:ne200100](this + 95);
  std::vector<std::vector<std::byte>>::clear[abi:ne200100](this + 98);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE39CB88(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE39CB90);
  }

  __clang_call_terminate(a1);
}

unsigned int **std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](unsigned int **result, unsigned int *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 2))
    {
      MEMORY[0x1E12C0830](*v2, v2[1], v2[2]);
    }

    IOConnectRelease(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned long,unsigned int &>(mach_port_t a1, uint64_t a2, unsigned int a3)
{
  input[0] = a2;
  input[1] = a3;
  memset(v6, 0, sizeof(v6));
  outputCnt = 0;
  memset(__p, 0, sizeof(__p));
  v3 = 0;
  if (IOConnectCallMethod(a1, 1u, input, 2u, 0, 0, 0, &outputCnt, 0, &v3))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v6, outputCnt);
  if (v3)
  {
    std::vector<unsigned char>::__append(__p, v3);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v6[0])
  {
    operator delete(v6[0]);
  }
}

void sub_1DE39CDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v32 & 1) == 0)
    {
LABEL_10:
      v35 = *(v33 - 88);
      if (v35)
      {
        operator delete(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v31);
  goto LABEL_10;
}

void std::vector<std::vector<std::byte>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

applesauce::iokit::mapped_memory *applesauce::iokit::mapped_memory::mapped_memory(applesauce::iokit::mapped_memory *this, io_connect_t connect, uint64_t a3)
{
  *this = connect;
  v5 = IOConnectAddRef(connect);
  if (v5)
  {
    v8 = v5;
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v8, v10, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v6 = *MEMORY[0x1E69E9A60];
  *(this + 1) = a3;
  *(this + 2) = v6;
  *(this + 3) = 0;
  *(this + 2) = 0;
  if (MEMORY[0x1E12C07D0](*this, a3))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  return this;
}

void sub_1DE39D06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      applesauce::iokit::io_connect_holder::~io_connect_holder(v26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio1::Engine::start(void)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100]((*(a1 + 8) + 744), 0);
  }

  return a1;
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long,unsigned long,unsigned int &>(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  input[3] = a5;
  memset(v8, 0, sizeof(v8));
  outputCnt = 0;
  memset(__p, 0, sizeof(__p));
  v5 = 0;
  if (IOConnectCallMethod(a1, 0, input, 4u, 0, 0, 0, &outputCnt, 0, &v5))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v8, outputCnt);
  if (v5)
  {
    std::vector<unsigned char>::__append(__p, v5);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v8[0])
  {
    operator delete(v8[0]);
  }
}

void sub_1DE39D2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v32 & 1) == 0)
    {
LABEL_10:
      v35 = *(v33 - 104);
      if (v35)
      {
        operator delete(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v31);
  goto LABEL_10;
}

void std::vector<std::vector<std::byte>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
}

__n128 AMCP::IOAudio1::Engine::get_stream_format@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 48;
  if (!a2)
  {
    v4 = 72;
  }

  v5 = a1 + v4;
  v6 = *(a1 + v4 + 24);
  v7 = *(v5 + 32);
  while (1)
  {
    if (v6 == v7)
    {
      *(a4 + 32) = 0;
      result.n128_u64[0] = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if (*v6 == a3)
    {
      break;
    }

    v6 += 56;
  }

  result = *(v6 + 16);
  v9 = *(v6 + 32);
  *a4 = result;
  *(a4 + 16) = v9;
  *(a4 + 32) = *(v6 + 48);
  return result;
}

void AMCP::Core::Implementation::Simple_Engine_Data::get_output_format_list(AMCP::Core::Implementation::Simple_Engine_Data *this, uint64_t a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2 != a3)
  {
    v4 = a2;
    v6 = 0;
    do
    {
      v7 = *(this + 2);
      if (v6 >= v7)
      {
        v10 = *this;
        v11 = v6 - *this;
        v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) + 1;
        if (v12 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x333333333333333)
        {
          v14 = 0x666666666666666;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v14);
        }

        v15 = 8 * (v11 >> 3);
        v16 = *(v4 + 16);
        v17 = *(v4 + 32);
        *(v15 + 32) = *(v4 + 48);
        *v15 = v16;
        *(v15 + 16) = v17;
        v6 = v15 + 40;
        memcpy((v15 - v11), v10, v11);
        *this = 8 * (v11 >> 3) - v11;
        *(this + 1) = v6;
        *(this + 2) = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        v8 = *(v4 + 16);
        v9 = *(v4 + 32);
        *(v6 + 32) = *(v4 + 48);
        *v6 = v8;
        *(v6 + 16) = v9;
        v6 += 40;
      }

      *(this + 1) = v6;
      v4 += 56;
    }

    while (v4 != a3);
  }
}

void AMCP::Core::Implementation::Simple_Engine_Data::get_input_format_list(AMCP::Core::Implementation::Simple_Engine_Data *this, uint64_t a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2 != a3)
  {
    v4 = a2;
    v6 = 0;
    do
    {
      v7 = *(this + 2);
      if (v6 >= v7)
      {
        v10 = *this;
        v11 = v6 - *this;
        v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) + 1;
        if (v12 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x333333333333333)
        {
          v14 = 0x666666666666666;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v14);
        }

        v15 = 8 * (v11 >> 3);
        v16 = *(v4 + 16);
        v17 = *(v4 + 32);
        *(v15 + 32) = *(v4 + 48);
        *v15 = v16;
        *(v15 + 16) = v17;
        v6 = v15 + 40;
        memcpy((v15 - v11), v10, v11);
        *this = 8 * (v11 >> 3) - v11;
        *(this + 1) = v6;
        *(this + 2) = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        v8 = *(v4 + 16);
        v9 = *(v4 + 32);
        *(v6 + 32) = *(v4 + 48);
        *v6 = v8;
        *(v6 + 16) = v9;
        v6 += 40;
      }

      *(this + 1) = v6;
      v4 += 56;
    }

    while (v4 != a3);
  }
}

void *AMCP::Core::Implementation::Simple_Engine_Data::get_device_uid(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void AMCP::IOAudio1::Engine::~Engine(AMCP::IOAudio1::Engine *this)
{
  AMCP::IOAudio1::Engine::~Engine(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596A1E8;
  AMCP::IOAudio1::Engine::set_transport_state(this, 0);
  v10 = (this + 784);
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 760);
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](this + 93, 0);
  IOConnectRelease(*(this + 185));
  AMCP::IO_Clock::~IO_Clock((this + 576));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 240));
  v2 = *(this + 29);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::byte>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::~Simple_Engine_IO_State(AMCP::Core::Implementation::Simple_Engine_IO_State *this)
{
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 120));
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    operator delete(v5);
  }
}

void AMCP::Core::Implementation::Simple_Engine_Data::~Simple_Engine_Data(AMCP::Core::Implementation::Simple_Engine_Data *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,BOOL,double,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&)::$_0,std::allocator<AMCP::IOAudio1::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,BOOL,double,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&)::$_0>,CA::TimeStamp ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16EngineC1EN10applesauce5iokit17io_connect_holderENS2_2CF9StringRefEbdbjjjjjjRKNSt3__16vectorINS_4Core14Implementation18Simple_Engine_Data11Stream_InfoENS7_9allocatorISC_EEEESH_RKNS_7Utility14Dispatch_QueueEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,BOOL,double,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&)::$_0,std::allocator<AMCP::IOAudio1::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,BOOL,double,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&)::$_0>,CA::TimeStamp ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596A3A0;
  a2[1] = v2;
  return result;
}

uint64_t HALS_IOStreamGroup::FilterClocklessReferenceStreamOnlyEngines::should_exclude(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(*a2 + 108))
  {
    v3 = v2[14];
    if (v2[15] == v3 || v3 == 0)
    {
      if (v2[57])
      {
        goto LABEL_12;
      }
    }

    else if (*v3)
    {
LABEL_12:
      v5 = v2[14];
      if (v2[15] != v5 && v5 != 0)
      {
        return (*(**v5 + 336))(*v5) ^ 1;
      }

      goto LABEL_17;
    }
  }

  else if (v2[57])
  {
LABEL_17:
    v5 = v2 + 57;
    return (*(**v5 + 336))(*v5) ^ 1;
  }

  return 1;
}

uint64_t VisitableVector<HALS_IOStreamInfo>::apply<>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *(a3 + 2);
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v5)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    v10[0] = v4;
    v10[1] = v6;
    result = (v8)(&v8 + 8, v10);
    if (result)
    {
      break;
    }

    v4 += 472;
    v5 = 1;
    if (v4 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGroup::apply_to_streams(unsigned long,std::function<int ()(unsigned long,HALS_IOStreamInfo&)>)::$_0>(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v6 = (*a1)[1];
  v4 = *(v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v6, v3);
}

void AMCP::Clock::~Clock(AMCP::Clock *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t AMCP::Clock::Clock(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(a1, a2, a3);
  *v4 = &unk_1F596A438;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61636C6B);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Clock.cpp";
      v14 = 1024;
      v15 = 27;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_clock)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE39DF9C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Clock::Clock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F596A470;
  *&buf[8] = a3;
  *&v19[4] = buf;
  AMCP::Core::Broker::fetch_first_core_if (v16, v5, buf);
  *a1 = &unk_1F5964268;
  v6 = v16[0];
  if (v16[0])
  {
    v7 = *v16[0];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = v16[1];
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
  *a1 = &unk_1F596A438;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x61636C6B);
  if ((v9 & 1) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Clock.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 43;
      v18 = 2080;
      *v19 = "constructed_correct_class(k_class_id_clock)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE39E1C8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Clock::Clock(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Clock::Clock(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5ClockC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Clock::Clock(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Clock::Clock(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61636C6B, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t std::__function::__func<AMCP::Clock::Clock(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Clock::Clock(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596A470;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Clock::Clock(uint64_t result, uint64_t a2, int **a3)
{
  *result = &unk_1F5964268;
  v3 = *a3;
  if (*a3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  *(result + 8) = v4;
  v5 = a3[1];
  *(result + 16) = v3;
  *(result + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  *(result + 32) = a2;
  *result = &unk_1F596A438;
  return result;
}

{
  *result = &unk_1F5964268;
  v3 = *a3;
  if (*a3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  *(result + 8) = v4;
  v5 = a3[1];
  *(result + 16) = v3;
  *(result + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  *(result + 32) = a2;
  *result = &unk_1F596A438;
  return result;
}

void AMCP::Clock::get_device_uid(AMCP::Clock *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1969841184u>(a2, v7);
    }

    else
    {
      *a2 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
  }
}

void AMCP::Clock::get_model_uid(AMCP::Clock *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626D756964;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Clock::get_model_uid(AMCP::Clock *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F626D756964;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

unint64_t AMCP::Clock::get_transport_type(AMCP::Clock *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1953653102u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1953653102u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "nartbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "tran");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE39E83C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Clock::is_hidden(AMCP::Clock *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "ndihbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "hidn");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE39EA00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Clock::get_clock_domain(AMCP::Clock *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1668049764u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1668049764u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "dklcbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "clkd");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE39EBE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Clock::get_input_latency(AMCP::Clock *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1819569763u>(v5, 0x696E7074u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1819569763u>(AMCP::Core::Core *a1, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *buf = 1819569763;
  v12 = a2;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 4;
      strcpy(__p, "ltnc");
      *buf = 136316418;
      v12 = "Core.h";
      v13 = 1024;
      v14 = 391;
      v15 = 2080;
      v16 = "optional_value.operator BOOL() == true";
      v17 = 2080;
      v18 = __p;
      v19 = 1024;
      v20 = a2;
      v21 = 1024;
      v22 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE39EDC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Clock::get_output_latency(AMCP::Clock *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1819569763u>(v5, 0x6F757470u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

double AMCP::Clock::get_sample_rate(AMCP::Clock *this)
{
  v2 = *(this + 3);
  simple_required = 0.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1853059700u>(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return simple_required;
}

double AMCP::Core::Core::get_simple_required_property<1853059700u>(AMCP::Core::Core *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  strcpy(buf, "trsnbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v1 = AMCP::Core::Core::get_typed_property_value<double,std::enable_if<true,void>>(a1, buf);
  if ((v2 & 1) == 0)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v1);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 4;
      strcpy(__p, "nsrt");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v12 = 1024;
      v13 = 391;
      v14 = 2080;
      v15 = "optional_value.operator BOOL() == true";
      v16 = 2080;
      v17 = __p;
      v18 = 1024;
      v19 = 1735159650;
      v20 = 1024;
      v21 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v3 = *MEMORY[0x1E69E9840];
  return *&v1;
}

void sub_1DE39F008(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Core::Core::get_typed_property_value<double,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
LABEL_13:
    *&v2 &= 0xFFFFFFFFFFFFFF00;
    return *&v2;
  }

  AMCP::Core::Core::find_operation(&v13, a1, a2);
  v5 = v13;
  if (v13)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<double ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      AMCP::Core::Operation::call_function<double>(v5);
      v2 = v7;
LABEL_5:
      v8 = 0;
      goto LABEL_10;
    }

    v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v9))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v5);
      v2 = AMCP::Thing::convert_to<double>(v11);
      if (v12)
      {
        v12(0, v11, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v8 = 1;
LABEL_10:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v8)
  {
    goto LABEL_13;
  }

  return *&v2;
}

uint64_t AMCP::Clock::set_sample_rate(AMCP::Clock *this, double a2)
{
  v15 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return v7;
      }

      v13 = 0x676C6F626E737274;
      v14 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v13))
      {
LABEL_17:
        v7 = 0;
        goto LABEL_19;
      }

      AMCP::Core::Core::find_operation(&v18, v7, &v13);
      v8 = v18;
      if (v18)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,double const&>(v8, &v15);
LABEL_8:
          v10 = 0;
          goto LABEL_14;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
        {
          memset(&v16[1], 0, 24);
          *v16 = a2;
          v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
          AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v16);
          if (v17)
          {
            v17(0, v16, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v10 = 1;
LABEL_14:
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v10 & 1) == 0)
      {
        v7 = 1;
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1DE39F258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AMCP::Thing::~Thing(va);
  v6 = *(v4 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE39F228);
}

uint64_t AMCP::Clock::set_sample_rate_and_wait(AMCP::Clock *this, double a2)
{
  v15 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return v7;
      }

      v13 = 0x676C6F626E737274;
      v14 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v13))
      {
LABEL_17:
        v7 = 0;
        goto LABEL_19;
      }

      AMCP::Core::Core::find_operation(&v18, v7, &v13);
      v8 = v18;
      if (v18)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,double const&>(v8, &v15);
LABEL_8:
          v10 = 0;
          goto LABEL_14;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
        {
          memset(&v16[1], 0, 24);
          *v16 = a2;
          v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
          AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v16);
          if (v17)
          {
            v17(0, v16, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v10 = 1;
LABEL_14:
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v10 & 1) == 0)
      {
        v7 = 1;
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1DE39F3D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AMCP::Thing::~Thing(va);
  v6 = *(v4 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE39F3A8);
}

void AMCP::Clock::get_available_sample_rate_list(AMCP::Clock *this@<X0>, void *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v21 = 0x676C6F626E737223;
    v22 = 0;
    has_property = AMCP::Core::Core::has_property(v7, &v21);
    if (!has_property)
    {
      goto LABEL_24;
    }

    AMCP::Core::Core::find_operation(&v26, v7, &v21);
    v9 = v26;
    if (v26)
    {
      v10 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRangeList ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10))
      {
        AMCP::Core::Operation::call_function<CA::ValueRangeList>(buf, v9);
        v11 = 0;
        v12 = *&buf[8];
        *__p = *buf;
LABEL_14:
        v9 = v12;
        goto LABEL_16;
      }

      v14 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v14))
      {
        AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v9);
        AMCP::Thing::convert_to<CA::ValueRangeList>(v24, buf);
        v20 = v24[1];
        *__p = *v24;
        if (*&v32[2])
        {
          (*&v32[2])(0, buf, 0, 0);
        }

        v11 = 0;
        v12 = v20;
        goto LABEL_14;
      }
    }

    v11 = 1;
LABEL_16:
    has_property = v27;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if ((v11 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a2, __p[0], v9, (v9 - __p[0]) >> 4);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      goto LABEL_21;
    }

LABEL_24:
    LOBYTE(__p[0]) = 0;
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = 4;
      strcpy(v24, "nsr#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      v29 = 2080;
      v30 = "optional_value.operator BOOL() == true";
      v31 = 2080;
      *v32 = v24;
      *&v32[8] = 1024;
      v33 = 1735159650;
      v34 = 1024;
      v35 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    abort();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_21:
  v15 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1DE39F6F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v8 = v6[1];
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    v11 = 0;
LABEL_28:
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v11);
    goto LABEL_29;
  }

  v9 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v8);
  if (a2 == a3)
  {
    v10 = v8;
  }

  else
  {
    v12 = a2;
    do
    {
      v10 = v9;
      v13 = *(v8 + 32);
      v14 = v12[4];
      *(v8 + 32) = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      *(v8 + 40) = *(v12 + 40);
      leaf_high = std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_leaf_high(a1, &v19, (v8 + 32));
      std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(a1, v19, leaf_high, v8);
      if (v10)
      {
        v9 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v9 = 0;
      }

      v16 = v12[1];
      if (v16)
      {
        do
        {
          a2 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          a2 = v12[2];
          v17 = *a2 == v12;
          v12 = a2;
        }

        while (!v17);
      }

      if (!v10)
      {
        break;
      }

      v8 = v10;
      v12 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v10);
  if (v9)
  {
    for (i = v9[2]; i; i = i[2])
    {
      v9 = i;
    }

    v11 = v9;
    goto LABEL_28;
  }

LABEL_29:
  if (a2 != a3)
  {
    operator new();
  }
}

void std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<MutationItinerary::Device>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v8 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0x555555555555555)
      {
        std::allocator<MutationItinerary::Device>::allocate_at_least[abi:ne200100](v9);
      }
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MutationItinerary::Device *,MutationItinerary::Device *,MutationItinerary::Device *>(a2, a3, v7);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 != v14)
    {
      do
      {
        v17 = *(v16 - 48);
        v16 -= 48;
        std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(v17);
      }

      while (v16 != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<MutationItinerary::Device *,MutationItinerary::Device *,MutationItinerary::Device *>(a2, a2 + v10, v7);
    v12 = *(a1 + 8);
    while (v11 != a3)
    {
      v13 = std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device&,MutationItinerary::Device*>(v12, v11);
      v11 += 48;
      v12 = v13 + 48;
    }

    *(a1 + 8) = v12;
  }
}

void *std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x333333333333333)
      {
        v12 = 0x666666666666666;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x666666666666666)
      {
        operator new();
      }
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void MutationItinerary::~MutationItinerary(MutationItinerary *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = (this + 32);
  std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(this + 2));
}

void std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 6);
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*a1);
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<applesauce::CF::StringRef const,BOOL>,0>(a1[4]);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<applesauce::CF::StringRef const,BOOL>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MutationItinerary::Device *,MutationItinerary::Device *,MutationItinerary::Device *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *a3;
      v7 = *v4;
      *a3 = *v4;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v8 = *(v4 + 8);
      v9 = *(v4 + 24);
      *(a3 + 37) = *(v4 + 37);
      *(a3 + 24) = v9;
      *(a3 + 8) = v8;
      v4 += 48;
      a3 += 48;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device&,MutationItinerary::Device*>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  return a1;
}

void std::vector<MutationItinerary::Device>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 6);
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::allocator<MutationItinerary::Device>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_leaf_high(uint64_t a1, void *a2, const __CFString **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a3, (v4 + 32)) < 2)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::pair<applesauce::CF::StringRef const,BOOL>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<applesauce::CF::StringRef const,BOOL>,0>(v2[4]);
    }

    operator delete(v2);
  }

  return a1;
}

void HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(HALS_MutationChangeSynchronizer *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = (this + 56);
  std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(this + 5));
  v3 = this;
  std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void *HALS_MutationChangeSynchronizer::SetItinerary(HALS_MutationChangeSynchronizer *this, const MutationItinerary *a2)
{
  result = std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::clear[abi:ne200100](this);
  *(this + 12) = *a2;
  if ((this + 24) != a2)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(this + 32, *(a2 + 1), a2 + 2);
    std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>(this + 56, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 4));
    v5 = *(a2 + 7);
    v6 = *(a2 + 8);

    return std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>(this + 10, v5, v6, 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 3));
  }

  return result;
}

void HALS_MutationChangeSynchronizer::Wait(atomic_uint **this, HALS_MutationChangeSynchronizer *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  if (this == a2)
  {
    goto LABEL_54;
  }

  v3 = this;
  do
  {
    v4 = *v3;
    if (!HALB_ChangeSynchronizer::SetStateIf(*v3, 2, 3u))
    {
      goto LABEL_35;
    }

    if ((*(*v4 + 16))(v4))
    {
      v5 = HALB_ChangeSynchronizer::SetStateIf(v4, 3, 4u);
      if (!v5)
      {
        v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v6 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v5);
        }

        v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = *v8;
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        else
        {
          v9 = *v8;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v25 = v4[39];
          v23.i32[0] = bswap32(v4[38]);
          v26 = vzip1_s8(v23, v23);
          v27.i64[0] = 0x1F0000001FLL;
          v27.i64[1] = 0x1F0000001FLL;
          v28.i64[0] = 0x5F0000005FLL;
          v28.i64[1] = 0x5F0000005FLL;
          v29 = vbsl_s8(vmovn_s32(vcgtq_u32(v28, vsraq_n_s32(v27, vshlq_n_s32(vmovl_u16(v26), 0x18uLL), 0x18uLL))), v26, 0x2E002E002E002ELL);
          v54 = 4;
          v30 = vuzp1_s8(v29, v29);
          LODWORD(v53[0]) = v30.i32[0];
          BYTE4(v53[0]) = 0;
          v30.i32[0] = bswap32(v25);
          v31 = vzip1_s8(v30, v30);
          v27.i64[0] = 0x1F0000001FLL;
          v27.i64[1] = 0x1F0000001FLL;
          v32 = vbsl_s8(vmovn_s32(vcgtq_u32(v28, vsraq_n_s32(v27, vshlq_n_s32(vmovl_u16(v31), 0x18uLL), 0x18uLL))), v31, 0x2E002E002E002ELL);
          v52 = 4;
          v33 = vuzp1_s8(v32, v32);
          LODWORD(v51[0]) = v33.i32[0];
          BYTE4(v51[0]) = 0;
          v33.i32[0] = bswap32(v4[40]);
          v34 = vzip1_s8(v33, v33);
          v27.i64[0] = 0x1F0000001FLL;
          v27.i64[1] = 0x1F0000001FLL;
          v50 = 4;
          v35 = vbsl_s8(vmovn_s32(vcgtq_u32(v28, vsraq_n_s32(v27, vshlq_n_s32(vmovl_u16(v34), 0x18uLL), 0x18uLL))), v34, 0x2E002E002E002ELL);
          LODWORD(__p[0]) = vuzp1_s8(v35, v35).u32[0];
          BYTE4(__p[0]) = 0;
          *buf = 136316418;
          v56 = "HALB_ChangeSynchronizer.cpp";
          v57 = 1024;
          v58 = 190;
          v59 = 2048;
          v60 = v4;
          v61 = 2080;
          v62 = v53;
          v63 = 2080;
          v64 = v51;
          v65 = 2080;
          v66 = __p;
          _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] HALB_ChangeSynchronizer::WaitForChangeCompletion: Change synchronizer (%p) about to wait for change, discovered that it is already done, but unable to transition from state Waiting to state Completed [%s, %s, %s]", buf, 0x3Au);
          if (v50 < 0)
          {
            operator delete(__p[0]);
          }

          if (v52 < 0)
          {
            operator delete(v51[0]);
          }

          if (v54 < 0)
          {
            operator delete(v53[0]);
          }
        }
      }

LABEL_35:
      atomic_load(v4 + 2);
      goto LABEL_36;
    }

    __lk.__m_ = (v4 + 10);
    __lk.__owns_ = 1;
    std::mutex::lock((v4 + 10));
    v10 = v4[9];
    v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * v10;
    while (1)
    {
      v12 = atomic_load(v4 + 2);
      if (v12 > 3)
      {
        break;
      }

      if (v11.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
        goto LABEL_27;
      }

      v13.__d_.__rep_ = v11.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v13.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v14.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v14.__d_.__rep_)
        {
          if (v14.__d_.__rep_ < 1)
          {
            if (v14.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_21;
            }

            v15 = 0x8000000000000000;
          }

          else
          {
            if (v14.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v15 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_22;
            }

LABEL_21:
            v15 = 1000 * v14.__d_.__rep_;
LABEL_22:
            if (v15 > (v13.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v16.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
              std::condition_variable::__do_timed_wait((v4 + 26), &__lk, v16);
              std::chrono::steady_clock::now();
              goto LABEL_26;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        v16.__d_.__rep_ = v15 + v13.__d_.__rep_;
        goto LABEL_25;
      }

LABEL_26:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v11.__d_.__rep_)
      {
LABEL_27:
        v17 = atomic_load(v4 + 2);
        if (v17 <= 3)
        {
          v18 = HALB_ChangeSynchronizer::SetStateIf(v4, 3, 5u);
          if (!v18)
          {
            v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v19 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v18);
            }

            v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              v22 = *v21;
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            else
            {
              v22 = *v21;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v36 = v4[39];
              v24.i32[0] = bswap32(v4[38]);
              v37 = vzip1_s8(v24, v24);
              v38.i64[0] = 0x1F0000001FLL;
              v38.i64[1] = 0x1F0000001FLL;
              v39.i64[0] = 0x5F0000005FLL;
              v39.i64[1] = 0x5F0000005FLL;
              v40 = vbsl_s8(vmovn_s32(vcgtq_u32(v39, vsraq_n_s32(v38, vshlq_n_s32(vmovl_u16(v37), 0x18uLL), 0x18uLL))), v37, 0x2E002E002E002ELL);
              v54 = 4;
              v41 = vuzp1_s8(v40, v40);
              LODWORD(v53[0]) = v41.i32[0];
              BYTE4(v53[0]) = 0;
              v41.i32[0] = bswap32(v36);
              v42 = vzip1_s8(v41, v41);
              v38.i64[0] = 0x1F0000001FLL;
              v38.i64[1] = 0x1F0000001FLL;
              v43 = vbsl_s8(vmovn_s32(vcgtq_u32(v39, vsraq_n_s32(v38, vshlq_n_s32(vmovl_u16(v42), 0x18uLL), 0x18uLL))), v42, 0x2E002E002E002ELL);
              v52 = 4;
              v44 = vuzp1_s8(v43, v43);
              LODWORD(v51[0]) = v44.i32[0];
              BYTE4(v51[0]) = 0;
              v44.i32[0] = bswap32(v4[40]);
              v45 = vzip1_s8(v44, v44);
              v38.i64[0] = 0x1F0000001FLL;
              v38.i64[1] = 0x1F0000001FLL;
              v50 = 4;
              v46 = vbsl_s8(vmovn_s32(vcgtq_u32(v39, vsraq_n_s32(v38, vshlq_n_s32(vmovl_u16(v45), 0x18uLL), 0x18uLL))), v45, 0x2E002E002E002ELL);
              LODWORD(__p[0]) = vuzp1_s8(v46, v46).u32[0];
              BYTE4(__p[0]) = 0;
              *buf = 136316418;
              v56 = "HALB_ChangeSynchronizer.cpp";
              v57 = 1024;
              v58 = 217;
              v59 = 2048;
              v60 = v4;
              v61 = 2080;
              v62 = v53;
              v63 = 2080;
              v64 = v51;
              v65 = 2080;
              v66 = __p;
              _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] HALB_ChangeSynchronizer::WaitForChangeCompletion: Change synchronizer (%p) waiting for change to execute timed out, but unable to transition from state Waiting to state Timeout [%s, %s, %s]", buf, 0x3Au);
              if (v50 < 0)
              {
                operator delete(__p[0]);
              }

              if (v52 < 0)
              {
                operator delete(v51[0]);
              }

              if (v54 < 0)
              {
                operator delete(v53[0]);
              }
            }
          }
        }

        break;
      }
    }

    atomic_load(v4 + 2);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

LABEL_36:
    ++v3;
  }

  while (v3 != a2);
LABEL_54:
  v47 = *MEMORY[0x1E69E9840];
}

void sub_1DE3A07CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, char a13)
{
  if (a13 == 1)
  {
    std::mutex::unlock(a12);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Utility::OSStatus_Error_Category::message(uint64_t a1@<X1>, uint64_t a2@<X8>, int8x8_t a3@<D0>)
{
  a3.i32[0] = bswap32(a1);
  v4 = vzip1_s8(a3, a3);
  v5.i64[0] = 0x1F0000001FLL;
  v5.i64[1] = 0x1F0000001FLL;
  v6.i64[0] = 0x5F0000005FLL;
  v6.i64[1] = 0x5F0000005FLL;
  v7 = vbsl_s8(vmovn_s32(vcgtq_u32(v6, vsraq_n_s32(v5, vshlq_n_s32(vmovl_u16(v4), 0x18uLL), 0x18uLL))), v4, 0x2E002E002E002ELL);
  v9 = 4;
  LODWORD(__p) = vuzp1_s8(v7, v7).u32[0];
  BYTE4(__p) = 0;
  caulk::make_string("OSStatus Code: '%s' %d 0x%X", a2, &__p, a1, a1);
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

void AMCP::Utility::OSStatus_Error_Category::~OSStatus_Error_Category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Utility::OSStatus_Error_Category::get(AMCP::Utility::OSStatus_Error_Category *this)
{
  {
    AMCP::Utility::OSStatus_Error_Category::get(void)::s_category = &unk_1F596A4F0;
  }
}

const void **std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(void *a1, uint64_t a2)
{
  v4 = std::hash<AMCP::Wire_Identifier>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>::operator()[abi:ne200100](i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::hash<AMCP::Wire_Identifier>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>::operator()[abi:ne200100](i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t AMCP::Graph::Wire_Index::add_to_index(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a1, a2);
  if (!v6)
  {
    v22 = 0uLL;
    v23 = 0;
    v7 = std::hash<AMCP::Terminal_Identifier>::operator()(a2);
    v8 = v7;
    v9 = a1[1];
    if (!*&v9)
    {
      goto LABEL_19;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v7;
      if (v7 >= *&v9)
      {
        v12 = v7 % *&v9;
      }
    }

    else
    {
      v12 = (*&v9 - 1) & v7;
    }

    v13 = *(*a1 + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v8)
      {
        v25[0] = v14 + 2;
        v25[1] = v14 + 5;
        v25[2] = v14 + 6;
        v24[0] = a2;
        v24[1] = a2 + 24;
        v24[2] = a2 + 32;
        if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v25, v24))
        {
          std::vector<AMCP::Wire_Identifier>::__vdeallocate(v14 + 7);
          *(v14 + 7) = v22;
          v14[9] = v23;
          v23 = 0;
          v22 = 0uLL;
          v25[0] = &v22;
          std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](v25);
          v6 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a1, a2);
          break;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_19;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = v6[8];
  if (v16 >= v6[9])
  {
    result = std::vector<AMCP::Wire_Identifier>::__emplace_back_slow_path<AMCP::Wire_Identifier const&>(v6 + 7, a3);
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v6[8], *a3, *(a3 + 8));
    }

    else
    {
      v17 = *a3;
      *(v16 + 2) = *(a3 + 16);
      *v16 = v17;
    }

    v19 = *(a3 + 24);
    *(v16 + 8) = *(a3 + 32);
    *(v16 + 3) = v19;
    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((v16 + 40), *(a3 + 40), *(a3 + 48));
    }

    else
    {
      v20 = *(a3 + 40);
      *(v16 + 7) = *(a3 + 56);
      *(v16 + 40) = v20;
    }

    v21 = *(a3 + 64);
    *(v16 + 18) = *(a3 + 72);
    *(v16 + 8) = v21;
    result = (v16 + 80);
    v6[8] = v16 + 80;
  }

  v6[8] = result;
  return result;
}

void sub_1DE3A0FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void **);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *>>>>::~unique_ptr[abi:ne200100](va2);
  va_copy(v9, va);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<AMCP::Wire_Identifier,AMCP::Wire_Description>::~pair(uint64_t a1)
{
  v5 = (a1 + 248);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t std::hash<AMCP::Wire_Identifier>::operator()(uint64_t a1)
{
  v2 = std::hash<AMCP::Terminal_Identifier>::operator()(a1);
  v3 = 0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v2) ^ ((0xC6A4A7935BD1E995 * v2) >> 47)) + 3864292196u;
  v4 = std::hash<AMCP::Terminal_Identifier>::operator()(a1 + 40);
  return 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3);
}

BOOL std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>::operator()[abi:ne200100](const void **a1, uint64_t a2)
{
  v8 = a1;
  v9 = a1 + 3;
  v10 = a1 + 4;
  v5 = a2;
  v6 = a2 + 24;
  v7 = a2 + 32;
  result = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v8, &v5);
  if (result)
  {
    v8 = a1 + 5;
    v9 = a1 + 8;
    v10 = a1 + 9;
    v5 = a2 + 40;
    v6 = a2 + 64;
    v7 = a2 + 72;
    return std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v8, &v5);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    AMCP::Graph::Graph_Wire::~Graph_Wire((a2 + 96));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void AMCP::Graph::Graph_Wire::~Graph_Wire(AMCP::Graph::Graph_Wire *this)
{
  v2 = *(this + 55);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 53);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 408) == 1)
  {
    v4 = *(this + 48);
    if (v4)
    {
      *(this + 49) = v4;
      operator delete(v4);
    }

    v5 = *(this + 45);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(this + 37);
    if (v6)
    {
      *(this + 38) = v6;
      operator delete(v6);
    }

    if (*(this + 295) < 0)
    {
      operator delete(*(this + 34));
    }

    if (*(this + 255) < 0)
    {
      operator delete(*(this + 29));
    }

    if (*(this + 215) < 0)
    {
      operator delete(*(this + 24));
    }
  }

  v9 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(this + 13);
  if (v7)
  {
    *(this + 14) = v7;
    operator delete(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    *(this + 11) = v8;
    operator delete(v8);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *AMCP::Wire_Description::Wire_Description(std::string *this, const AMCP::Wire_Description *a2)
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

  v5 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
    *&this[1].__r_.__value_.__r.__words[2] = v6;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 18);
  this[3].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[3].__r_.__value_.__l.__data_) = v8;
  this[2].__r_.__value_.__r.__words[2] = v7;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[3].__r_.__value_.__l.__size_, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&this[4].__r_.__value_.__l.__size_, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 160);
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__s.__data_[16] = v11;
  *&this[6].__r_.__value_.__l.__data_ = v10;
  *&this[5].__r_.__value_.__r.__words[1] = v9;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[7].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[7], *(a2 + 21), *(a2 + 22), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 22) - *(a2 + 21)) >> 3));
  return this;
}

void sub_1DE3A1448(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 13);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<AMCP::Graph::Wire_Volume_Connection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1720);
}

const void **std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(void *a1, uint64_t a2)
{
  v4 = std::hash<AMCP::Terminal_Identifier>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      v15[0] = i + 2;
      v15[1] = i + 5;
      v15[2] = i + 6;
      v14[0] = a2;
      v14[1] = a2 + 24;
      v14[2] = a2 + 32;
      if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v15, v14))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::hash<AMCP::Terminal_Identifier>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      v15[0] = i + 2;
      v15[1] = i + 5;
      v15[2] = i + 6;
      v14[0] = a2;
      v14[1] = a2 + 24;
      v14[2] = a2 + 32;
      if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v15, v14))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::vector<AMCP::Wire_Identifier>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 80;
        std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<AMCP::Wire_Identifier>::__emplace_back_slow_path<AMCP::Wire_Identifier const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](v6);
  }

  v7 = 80 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v10 = *(a2 + 40);
    *(v7 + 56) = *(a2 + 7);
    *(v7 + 40) = v10;
  }

  v11 = *(a2 + 8);
  *(v7 + 72) = *(a2 + 18);
  *(v7 + 64) = v11;
  *&v20 = v20 + 80;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(*a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(&v18);
  return v17;
}

void sub_1DE3A18F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      v7 = *(v5 + 24);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 24) = v7;
      v8 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 40) = v8;
      *(v5 + 48) = 0;
      *(v5 + 56) = 0;
      *(v5 + 40) = 0;
      v9 = *(v5 + 64);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 64) = v9;
      v5 += 80;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v4);
      v4 += 80;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::vector<AMCP::Wire_Identifier>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::vector<AMCP::Wire_Identifier>>,0>(uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void AMCP::Graph::Wire_Index::remove_from_index(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a1, a2);
  if (!v15)
  {
    return;
  }

  v5 = v15[7];
  v4 = v15[8];
  if (v5 == v4)
  {
    v7 = v15[7];
LABEL_9:
    if (v7 != v4)
    {
      while (v4 != v7)
      {
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v4);
      }

      v15[8] = v7;
    }

    return;
  }

  v6 = 0;
  while (1)
  {
    v7 = &v5[v6];
    v19 = &v5[v6];
    v20 = &v5[v6 + 24];
    v21 = &v5[v6 + 32];
    v16 = a3;
    v17 = a3 + 24;
    v18 = a3 + 32;
    if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v19, &v16))
    {
      v19 = (v7 + 5);
      v20 = (v7 + 8);
      v21 = (v7 + 9);
      v16 = a3 + 40;
      v17 = a3 + 64;
      v18 = a3 + 72;
      if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v19, &v16))
      {
        break;
      }
    }

    v6 += 80;
    if (&v5[v6] == v4)
    {
      return;
    }
  }

  if (v7 != v4)
  {
    if (v7 + 10 != v4)
    {
      v8 = &v5[v6 + 152];
      do
      {
        v19 = (v8 - 72);
        v20 = (v8 - 48);
        v21 = (v8 - 40);
        v16 = a3;
        v17 = a3 + 24;
        v18 = a3 + 32;
        if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v19, &v16) || (v19 = (v8 - 32), v20 = (v8 - 8), v21 = v8, v16 = a3 + 40, v17 = a3 + 64, v18 = a3 + 72, !std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v19, &v16)))
        {
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          v9 = *(v8 - 72);
          v7[2] = *(v8 - 7);
          *v7 = v9;
          *(v8 - 49) = 0;
          *(v8 - 72) = 0;
          v10 = *(v8 - 10);
          v7[3] = *(v8 - 6);
          *(v7 + 8) = v10;
          if (*(v7 + 63) < 0)
          {
            operator delete(v7[5]);
          }

          v11 = *(v8 - 2);
          v7[7] = *(v8 - 2);
          *(v7 + 5) = v11;
          *(v8 - 9) = 0;
          *(v8 - 32) = 0;
          v12 = *(v8 - 1);
          *(v7 + 18) = *v8;
          v7[8] = v12;
          v7 += 10;
        }

        v13 = v8 + 8;
        v8 += 80;
      }

      while (v13 != v4);
      v14 = v15[7];
      v4 = v15[8];
    }

    goto LABEL_9;
  }
}

void AMCP::Graph::Wire_Index::get_wires_for_terminal(void **a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a2, a3);
  if (v5)
  {
    v6 = v5[7];
    v7 = v5[8];
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        v9 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 5, v6);
        if (v9)
        {
          v10 = v9 + 12;
          v11 = a1[2];
          if (v8 >= v11)
          {
            v12 = *a1;
            v13 = v8 - *a1;
            v14 = (v13 >> 3) + 1;
            if (v14 >> 61)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v15 = v11 - v12;
            if (v15 >> 2 > v14)
            {
              v14 = v15 >> 2;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFF8)
            {
              v16 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v14;
            }

            if (v16)
            {
              std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v16);
            }

            v17 = (8 * (v13 >> 3));
            *v17 = v10;
            v8 = v17 + 1;
            memcpy(0, v12, v13);
            *a1 = 0;
            a1[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          else
          {
            *v8++ = v10;
          }

          a1[1] = v8;
        }

        v6 += 80;
      }

      while (v6 != v7);
    }
  }
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a2, a3);
  if (v5)
  {
    v6 = v5[7];
    v7 = v5[8];
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        v9 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 5, v6);
        if (v9)
        {
          v10 = v9 + 12;
          v11 = a1[2];
          if (v8 >= v11)
          {
            v12 = *a1;
            v13 = v8 - *a1;
            v14 = (v13 >> 3) + 1;
            if (v14 >> 61)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v15 = v11 - v12;
            if (v15 >> 2 > v14)
            {
              v14 = v15 >> 2;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFF8)
            {
              v16 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v14;
            }

            if (v16)
            {
              if (!(v16 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v17 = (8 * (v13 >> 3));
            *v17 = v10;
            v8 = v17 + 1;
            memcpy(0, v12, v13);
            *a1 = 0;
            a1[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          else
          {
            *v8++ = v10;
          }

          a1[1] = v8;
        }

        v6 += 80;
      }

      while (v6 != v7);
    }
  }
}

void sub_1DE3A1F24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3A22BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__deallocate_node(char *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 13);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      if (v1[79] < 0)
      {
        operator delete(*(v1 + 7));
      }

      if (v1[39] < 0)
      {
        operator delete(*(v1 + 2));
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      AMCP::Graph::Graph_Wire::~Graph_Wire((v1 + 12));
      if (*(v1 + 79) < 0)
      {
        operator delete(v1[7]);
      }

      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::vector<AMCP::Wire_Identifier>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void AMCP::Graph::Wire_Index::get_wires(AMCP::Graph::Wire_Index *this, uint64_t a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[7];
    v6 = i[8];
    while (v5 != v6)
    {
      v7 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>((a2 + 40), v5);
      if (v7)
      {
        AMCP::Graph::Graph_Wire::get_description(v8, (v7 + 12));
        std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__emplace_unique_key_args<AMCP::Wire_Description,AMCP::Wire_Description>(this, v8);
        v17 = &v16;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        if (v12)
        {
          v13 = v12;
          operator delete(v12);
        }

        if (v11 < 0)
        {
          operator delete(v10);
        }

        if (v9 < 0)
        {
          operator delete(v8[0]);
        }
      }

      v5 += 80;
    }
  }
}

uint64_t *std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__emplace_unique_key_args<AMCP::Wire_Description,AMCP::Wire_Description>(void *a1, uint64_t a2)
{
  v4 = std::hash<AMCP::Terminal_Identifier>::operator()(a2);
  v5 = std::hash<AMCP::Terminal_Identifier>::operator()(a2 + 40);
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6++;
      v8 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v9) ^ ((0xC6A4A7935BD1E995 * v9) >> 47))) ^ v8);
    }

    while (v6 != v7);
    v10 = 0xC6A4A7935BD1E995 * v8;
  }

  v11 = *(a2 + 128);
  v47 = *(a2 + 132);
  v46 = *(a2 + 136);
  v43 = *(a2 + 140);
  v41 = *(a2 + 148);
  v42 = *(a2 + 144);
  v44 = *(a2 + 156);
  v45 = *(a2 + 152);
  v40 = *(a2 + 160);
  v12 = 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) ^ (3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47)) + 3864292196u))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v11) ^ ((0xC6A4A7935BD1E995 * v11) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v47) ^ ((0xC6A4A7935BD1E995 * v47) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v46) ^ ((0xC6A4A7935BD1E995 * v46) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v43) ^ ((0xC6A4A7935BD1E995 * v43) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v42) ^ ((0xC6A4A7935BD1E995 * v42) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v41) ^ ((0xC6A4A7935BD1E995 * v41) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v45) ^ ((0xC6A4A7935BD1E995 * v45) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v44) ^ ((0xC6A4A7935BD1E995 * v44) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v40) ^ ((0xC6A4A7935BD1E995 * v40) >> 47))));
  v13 = *(a2 + 168);
  v14 = *(a2 + 176);
  v49 = v13;
  if (v13 == v14)
  {
    v17 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = std::__string_hash<char>::operator()[abi:ne200100](v13);
      v15 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v16) ^ ((0xC6A4A7935BD1E995 * v16) >> 47))) ^ v15);
      v13 += 24;
    }

    while (v13 != v14);
    v17 = 0xC6A4A7935BD1E995 * v15;
  }

  v18 = 3864292196u - 0x395B586CA42E166BLL * (v12 ^ (0xC6A4A7935BD1E995 * (v17 ^ (v17 >> 47))));
  v19 = a1[1];
  if (!*&v19)
  {
    goto LABEL_49;
  }

  v39 = v11;
  v20 = vcnt_s8(v19);
  v20.i16[0] = vaddlv_u8(v20);
  v21 = v20.u32[0];
  if (v20.u32[0] > 1uLL)
  {
    v22 = v18;
    if (v18 >= *&v19)
    {
      v22 = v18 % *&v19;
    }
  }

  else
  {
    v22 = (*&v19 - 1) & v18;
  }

  v23 = *(*a1 + 8 * v22);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_49:
    operator new();
  }

  __s2 = *(a2 + 80);
  __n = *(a2 + 88) - __s2;
  v36 = *(a2 + 104);
  v37 = *(a2 + 112) - v36;
  v35 = v14 - v49;
  while (1)
  {
    v25 = v24[1];
    if (v25 == v18)
    {
      break;
    }

    if (v21 > 1)
    {
      if (v25 >= *&v19)
      {
        v25 %= *&v19;
      }
    }

    else
    {
      v25 &= *&v19 - 1;
    }

    if (v25 != v22)
    {
      goto LABEL_49;
    }

LABEL_48:
    v24 = *v24;
    if (!v24)
    {
      goto LABEL_49;
    }
  }

  v53 = (v24 + 2);
  v54 = v24 + 5;
  v55 = v24 + 6;
  v50 = a2;
  v51 = a2 + 24;
  v52 = a2 + 32;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v53, &v50))
  {
    goto LABEL_48;
  }

  v53 = (v24 + 7);
  v54 = v24 + 10;
  v55 = v24 + 11;
  v50 = a2 + 40;
  v51 = a2 + 64;
  v52 = a2 + 72;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v53, &v50))
  {
    goto LABEL_48;
  }

  v26 = v24[12];
  if (v24[13] - v26 != __n)
  {
    goto LABEL_48;
  }

  if (memcmp(v26, __s2, __n))
  {
    goto LABEL_48;
  }

  v27 = v24[15];
  if (v24[16] - v27 != v37)
  {
    goto LABEL_48;
  }

  if (memcmp(v27, v36, v37))
  {
    goto LABEL_48;
  }

  if (*(v24 + 36) != v39)
  {
    goto LABEL_48;
  }

  if (*(v24 + 37) != v47)
  {
    goto LABEL_48;
  }

  if (*(v24 + 38) != v46)
  {
    goto LABEL_48;
  }

  if (*(v24 + 42) != v45)
  {
    goto LABEL_48;
  }

  if (*(v24 + 43) != v44)
  {
    goto LABEL_48;
  }

  if (*(v24 + 39) != v43)
  {
    goto LABEL_48;
  }

  if (*(v24 + 40) != v42)
  {
    goto LABEL_48;
  }

  if (*(v24 + 41) != v41)
  {
    goto LABEL_48;
  }

  if (*(v24 + 176) != v40)
  {
    goto LABEL_48;
  }

  v28 = v24[23];
  v33 = v24[24];
  if (v33 - v28 != v35)
  {
    goto LABEL_48;
  }

  v29 = v24[24];
  if (v28 != v33)
  {
    v30 = v49;
    do
    {
      v34 = v28;
      v31 = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v28, v30);
      if (!v31)
      {
        break;
      }

      v28 = v34 + 24;
      v30 += 3;
    }

    while (v34 + 24 != v33);
    if (!v31)
    {
      goto LABEL_48;
    }
  }

  return v24;
}

uint64_t std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = (v1 + 184);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      v3 = *(v1 + 15);
      if (v3)
      {
        *(v1 + 16) = v3;
        operator delete(v3);
      }

      v4 = *(v1 + 12);
      if (v4)
      {
        *(v1 + 13) = v4;
        operator delete(v4);
      }

      if (v1[79] < 0)
      {
        operator delete(*(v1 + 7));
      }

      if (v1[39] < 0)
      {
        operator delete(*(v1 + 2));
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<AMCP::Wire_Description,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v5 = (__p + 184);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(__p + 15);
    if (v3)
    {
      *(__p + 16) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 12);
    if (v4)
    {
      *(__p + 13) = v4;
      operator delete(v4);
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  operator delete(__p);
}

void AMCP::Graph::Wire_Index::get_wires_for_node(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *a3, *(a3 + 8));
      }

      else
      {
        v21 = *a3;
      }

      *__p = *&v21.__r_.__value_.__l.__data_;
      v11 = v21.__r_.__value_.__r.__words[2];
      memset(&v21, 0, sizeof(v21));
      v26 = v11;
      v27 = i;
      v28 = 1;
      AMCP::Graph::Wire_Index::get_wires_for_terminal(&v19, a2, __p);
      v12 = v19;
      std::__copy_impl::operator()[abi:ne200100]<std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::back_insert_iterator<std::vector<std::reference_wrapper<AMCP::Graph::Graph_Wire const>>>>(v19, v20, &v22);
      if (v12)
      {
        operator delete(v12);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (a5)
  {
    v13 = 0;
    do
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
      }

      else
      {
        v18 = *a3;
      }

      *__p = *&v18.__r_.__value_.__l.__data_;
      v14 = v18.__r_.__value_.__r.__words[2];
      memset(&v18, 0, sizeof(v18));
      v26 = v14;
      v27 = v13;
      v28 = 0;
      AMCP::Graph::Wire_Index::get_wires_for_terminal(&v19, a2, __p);
      v15 = v19;
      std::__copy_impl::operator()[abi:ne200100]<std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::back_insert_iterator<std::vector<std::reference_wrapper<AMCP::Graph::Graph_Wire const>>>>(v19, v20, &v22);
      if (v15)
      {
        operator delete(v15);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      ++v13;
    }

    while (a5 != v13);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v16 = v22;
  v17 = v23;
  if (v22 != v23)
  {
    do
    {
      AMCP::Graph::Graph_Wire::get_description(__p, *v16);
      std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__emplace_unique_key_args<AMCP::Wire_Description,AMCP::Wire_Description>(a1, __p);
      v19 = &v35;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      ++v16;
    }

    while (v16 != v17);
    v16 = v22;
  }

  if (v16)
  {
    v23 = v16;
    operator delete(v16);
  }
}

void sub_1DE3A3110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_impl::operator()[abi:ne200100]<std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::back_insert_iterator<std::vector<std::reference_wrapper<AMCP::Graph::Graph_Wire const>>>>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = (v6 - *a3) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v9 = v7 - *a3;
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
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v11);
        }

        *(8 * v8) = *v5;
        v6 = (8 * v8 + 8);
        v12 = *(a3 + 8) - *a3;
        v13 = (8 * v8 - v12);
        memcpy(v13, *a3, v12);
        v14 = *a3;
        *a3 = v13;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void AMCP::Graph::Wire_Index::get_tgid_for_wire(AMCP::Graph::Wire_Index *this, const AMCP::Wire_Identifier *a2, uint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 5, a3);
  if (v4 && (v4[63] & 1) != 0)
  {
    AMCP::Graph::Graph_Wire::Connection::Connection(&v6, (v4 + 36));
    *this = *v9;
    v5 = __p;
    *(this + 2) = v10;
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    if (v5)
    {
      v15 = v5;
      operator delete(v5);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void AMCP::Graph::Wire_Index::update_tgid_for_connections(uint64_t *a1, const void **a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 504) == 1)
      {
        AMCP::Graph::Graph_Wire::Connection::Connection(buf, (v5 + 36));
        if ((v40 & 0x80u) == 0)
        {
          v6 = v40;
        }

        else
        {
          v6 = v39[1];
        }

        v7 = *(a2 + 23);
        v8 = v7;
        if (v7 < 0)
        {
          v7 = a2[1];
        }

        if (v6 == v7)
        {
          if ((v40 & 0x80u) == 0)
          {
            v9 = v39;
          }

          else
          {
            v9 = v39[0];
          }

          v10 = *a2;
          if (v8 >= 0)
          {
            v11 = a2;
          }

          else
          {
            v11 = *a2;
          }

          v12 = memcmp(v9, v11, v6) == 0;
        }

        else
        {
          v12 = 0;
        }

        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        v13 = v41;
        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        if (v38 < 0)
        {
          operator delete(v36);
        }

        if (SBYTE3(v34) < 0)
        {
          operator delete(*buf);
          if (v12)
          {
LABEL_32:
            if (*(a3 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v19, *a3, *(a3 + 8));
            }

            else
            {
              v19 = *a3;
            }

            if ((v5[63] & 1) == 0)
            {
              v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v15 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v13);
              }

              v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v16)
              {
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v18 = *v17;
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              else
              {
                v18 = *v17;
              }

              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Graph_Wire.cpp";
                v31 = 1024;
                v32 = 98;
                v33 = 2080;
                v34 = "not (m_connection.has_value())";
                _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot update a connection that does not exist", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("Cannot update a connection that does not exist", &v21);
              std::logic_error::logic_error(&v22, &v21);
              v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v23, &v22);
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = -1;
              v23.__vftable = &unk_1F5991430;
              v24 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
              v35 = "void AMCP::Graph::Graph_Wire::update_tgid(Thread_Group_ID)";
              v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
              v37 = 98;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
            }

            if (*(v5 + 391) < 0)
            {
              operator delete(v5[46]);
            }

            *(v5 + 46) = v19;
            *(&v19.__r_.__value_.__s + 23) = 0;
            v19.__r_.__value_.__s.__data_[0] = 0;
          }
        }

        else if (v12)
        {
          goto LABEL_32;
        }
      }

      v5 = *v5;
    }

    while (v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void HALB_FormatList::~HALB_FormatList(HALB_FormatList *this)
{
  HALB_FormatList::~HALB_FormatList(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596A5A0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void HALB_FormatList::GetFormatListWithUpdatedSampleRate(HALB_FormatList *this, const HALB_FormatList *a2, HALB_FormatList *a3, Float64 a4)
{
  if (this != a2)
  {
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v17 = v5;
    v11 = this;
    do
    {
      v12 = *(v11 + 1);
      *&v13.mFormat.mSampleRate = *v11;
      *&v13.mFormat.mBytesPerPacket = v12;
      *&v13.mFormat.mBitsPerChannel = *(v11 + 4);
      v13.mFormat.mSampleRate = a4;
      v13.mSampleRateRange.mMinimum = a4;
      v13.mSampleRateRange.mMaximum = a4;
      HALB_FormatList::AddPhysicalFormat(a3, &v13, a3);
      v11 = (v11 + 56);
    }

    while (v11 != a2);
  }
}

void HALB_FormatList::AddPhysicalFormat(HALB_FormatList *this, const AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3)
{
  v7 = *(this + 4);
  v6 = *(this + 5);
  v5 = (this + 32);
  v8 = *&a2->mFormat.mBytesPerPacket;
  *&v24.mFormat.mSampleRate = *&a2->mFormat.mSampleRate;
  *&v24.mFormat.mBytesPerPacket = v8;
  *&v24.mFormat.mBitsPerChannel = *&a2->mFormat.mBitsPerChannel;
  v24.mSampleRateRange.mMaximum = a2->mSampleRateRange.mMaximum;
  v9 = v7;
  if (v7 != v6)
  {
    v9 = v7;
    while (!CAStreamRangedDescription::IsExactlyEqual(v9, &v24, a3))
    {
      v9 = (v9 + 56);
      if (v9 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  if (v9 == v6)
  {
LABEL_7:
    if (v7 != v6)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3);
      do
      {
        v11 = (v7 + 56 * (v10 >> 1));
        v12 = CAStreamRangedDescription::Sorter(v11, a2, a3);
        if (v12)
        {
          v10 += ~(v10 >> 1);
        }

        else
        {
          v10 >>= 1;
        }

        if (v12)
        {
          v7 = (v11 + 56);
        }
      }

      while (v10);
      v6 = v7;
    }

    v13 = *&a2->mFormat.mBytesPerPacket;
    *&v24.mFormat.mSampleRate = *&a2->mFormat.mSampleRate;
    *&v24.mFormat.mBytesPerPacket = v13;
    *&v24.mFormat.mBitsPerChannel = *&a2->mFormat.mBitsPerChannel;
    v24.mSampleRateRange = a2->mSampleRateRange;
    std::vector<CAStreamRangedDescription>::insert(v5, v6, &v24);
    v15 = *&a2->mFormat.mBytesPerPacket;
    *&v23.mFormat.mSampleRate = *&a2->mFormat.mSampleRate;
    *&v23.mFormat.mBytesPerPacket = v15;
    *&v23.mFormat.mBitsPerChannel = *&a2->mFormat.mBitsPerChannel;
    v23.mSampleRateRange.mMaximum = a2->mSampleRateRange.mMaximum;
    if (v23.mFormat.mFormatID == 1819304813 && (v23.mFormat.mFormatFlags & 0x40) == 0)
    {
      v23.mFormat.mFormatFlags = 9;
      v23.mFormat.mBytesPerPacket = 4 * v23.mFormat.mChannelsPerFrame;
      v23.mFormat.mFramesPerPacket = 1;
      v23.mFormat.mBytesPerFrame = 4 * v23.mFormat.mChannelsPerFrame;
      v23.mFormat.mBitsPerChannel = 32;
    }

    v18 = *(this + 1);
    v17 = *(this + 2);
    v16 = (this + 8);
    v19 = v18;
    if (v18 != v17)
    {
      v19 = v18;
      while (!CAStreamRangedDescription::IsExactlyEqual(v19, &v23, v14))
      {
        v19 = (v19 + 56);
        if (v19 == v17)
        {
          goto LABEL_25;
        }
      }
    }

    if (v19 == v17)
    {
LABEL_25:
      if (v18 != v17)
      {
        v20 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v18) >> 3);
        do
        {
          v21 = (v18 + 56 * (v20 >> 1));
          v22 = CAStreamRangedDescription::Sorter(v21, &v23, v14);
          if (v22)
          {
            v20 += ~(v20 >> 1);
          }

          else
          {
            v20 >>= 1;
          }

          if (v22)
          {
            v18 = (v21 + 56);
          }
        }

        while (v20);
        v17 = v18;
      }

      *&v24.mFormat.mSampleRate = *&v23.mFormat.mSampleRate;
      *&v24.mFormat.mBytesPerPacket = *&v23.mFormat.mBytesPerPacket;
      *&v24.mFormat.mBitsPerChannel = *&v23.mFormat.mBitsPerChannel;
      v24.mSampleRateRange = a2->mSampleRateRange;
      std::vector<CAStreamRangedDescription>::insert(v16, v17, &v24);
    }
  }
}

BOOL CAStreamRangedDescription::IsExactlyEqual(CAStreamRangedDescription *this, const AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3)
{
  if (*this != a2->mFormat.mSampleRate)
  {
    return 0;
  }

  if (*(this + 2) != a2->mFormat.mFormatID)
  {
    return 0;
  }

  if (*(this + 3) != a2->mFormat.mFormatFlags)
  {
    return 0;
  }

  if (*(this + 4) != a2->mFormat.mBytesPerPacket)
  {
    return 0;
  }

  if (*(this + 5) != a2->mFormat.mFramesPerPacket)
  {
    return 0;
  }

  if (*(this + 6) != a2->mFormat.mBytesPerFrame)
  {
    return 0;
  }

  if (*(this + 7) != a2->mFormat.mChannelsPerFrame)
  {
    return 0;
  }

  if (*(this + 8) != a2->mFormat.mBitsPerChannel)
  {
    return 0;
  }

  v3 = *(this + 6);
  mMinimum = a2->mSampleRateRange.mMinimum;
  if (v3 < mMinimum)
  {
    return 0;
  }

  v5 = *(this + 5);
  mMaximum = a2->mSampleRateRange.mMaximum;
  if (v5 < mMinimum && v3 <= mMaximum)
  {
    return 0;
  }

  if (v5 < mMinimum && v3 > mMaximum)
  {
    return 0;
  }

  if (v3 == mMaximum)
  {
    return v5 == mMinimum;
  }

  return 0;
}

void std::vector<CAStreamRangedDescription>::insert(unint64_t *a1, char *a2, __int128 *a3)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v11 = *a1;
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3) + 1;
    if (v12 > 0x492492492492492)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v15);
    }

    v18 = 8 * (v13 >> 3);
    if (!(0x6DB6DB6DB6DB6DB7 * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == a2)
        {
          v25 = 1;
        }

        else
        {
          v25 = 0xDB6DB6DB6DB6DB6ELL * (v13 >> 3);
        }

        std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v25);
      }

      v18 = 8 * (v13 >> 3) - 56 * ((0x6DB6DB6DB6DB6DB7 * ((8 * (v13 >> 3)) >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * ((8 * (v13 >> 3)) >> 3) + 1) >> 63)) >> 1);
    }

    v26 = *a3;
    v27 = a3[1];
    *(v18 + 32) = *(a3 + 4);
    *v18 = v26;
    *(v18 + 16) = v27;
    *(v18 + 40) = *(a3 + 40);
    v28 = a1[1];
    v29 = a2;
    if (v28 != a2)
    {
      v30 = a2;
      v31 = v18 + 56;
      do
      {
        v32 = *v30;
        v33 = *(v30 + 1);
        *(v31 + 32) = *(v30 + 4);
        *v31 = v32;
        *(v31 + 16) = v33;
        *(v31 + 40) = *(v30 + 40);
        v30 += 56;
        v31 += 56;
      }

      while (v30 != v28);
      v29 = a1[1];
    }

    v34 = v18 + 56 + v29 - a2;
    a1[1] = a2;
    v35 = *a1;
    v36 = v18 + *a1 - a2;
    if (*a1 != a2)
    {
      v37 = v18 + *a1 - a2;
      do
      {
        v38 = *v35;
        v39 = *(v35 + 1);
        *(v37 + 32) = *(v35 + 4);
        *v37 = v38;
        *(v37 + 16) = v39;
        *(v37 + 40) = *(v35 + 40);
        v35 += 56;
        v37 += 56;
      }

      while (v35 != a2);
      v35 = *a1;
    }

    *a1 = v36;
    a1[1] = v34;
    a1[2] = 0;
    if (v35)
    {

      operator delete(v35);
    }
  }

  else
  {
    v6 = &a2[-v4];
    if (a2 == v4)
    {
      v16 = *a3;
      v17 = a3[1];
      *(v4 + 32) = *(a3 + 4);
      *v4 = v16;
      *(v4 + 16) = v17;
      *(v4 + 40) = *(a3 + 40);
      a1[1] = v4 + 56;
    }

    else
    {
      v7 = v4 - 56;
      if (v4 < 0x38)
      {
        v8 = a1[1];
      }

      else
      {
        v8 = v4 + 56;
        v9 = *v7;
        v10 = *(v4 - 40);
        *(v4 + 32) = *(v4 - 24);
        *v4 = v9;
        *(v4 + 16) = v10;
        *(v4 + 40) = *(v4 - 16);
      }

      a1[1] = v8;
      if (v4 != a2 + 56)
      {
        v19 = v4 - 112;
        v20 = v6 + 56;
        do
        {
          v21 = *v19;
          v22 = *(v19 + 16);
          *(v7 + 32) = *(v19 + 32);
          *v7 = v21;
          *(v7 + 16) = v22;
          *(v7 + 40) = *(v19 + 40);
          v19 -= 56;
          v7 -= 56;
          v20 += 56;
        }

        while (v20);
      }

      v23 = *a3;
      v24 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      *a2 = v23;
      *(a2 + 1) = v24;
      *(a2 + 40) = *(a3 + 40);
    }
  }
}

void sub_1DE3A3F00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALB_FormatList::IsVirtualFormatSupported(AudioStreamBasicDescription *this, AudioStreamBasicDescription *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v5;
  v10 = *(a3 + 32);
  v11 = 3;
  if (this != a2)
  {
    v6 = *v9;
    while (!CA::StreamDescription::IsEquivalent(v9, v4, 3u) || v4[1].mSampleRate > v6 || *&v4[1].mFormatID < v6)
    {
      v4 = (v4 + 56);
      if (v4 == a2)
      {
        v4 = a2;
        return v4 != a2;
      }
    }
  }

  return v4 != a2;
}

void HALB_FormatList::BestMatchForVirtualFormat(_BOOL8 this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, AudioStreamBasicDescription *a4, double CommonSampleRateInRangeByIndex)
{
  v6 = this;
  mSampleRate = a2->mSampleRate;
  mFormatID = a2->mFormatID;
  if (a2->mSampleRate != 0.0)
  {
    CommonSampleRateInRangeByIndex = a2->mSampleRate;
  }

  v10 = *(this + 8);
  v11 = *(this + 16);
  v25 = CommonSampleRateInRangeByIndex;
  v26 = mFormatID;
  *v27 = *&a2->mFormatFlags;
  *&v27[12] = *&a2->mBytesPerFrame;
  v28 = 3;
  v12 = v10;
  if (v10 != v11)
  {
    v12 = v10;
    while (1)
    {
      this = CA::StreamDescription::IsEquivalent(&v25, v12, 3u);
      if (this && *(v12 + 5) <= CommonSampleRateInRangeByIndex && *(v12 + 6) >= CommonSampleRateInRangeByIndex)
      {
        break;
      }

      v12 = (v12 + 56);
      if (v12 == v11)
      {
        goto LABEL_16;
      }
    }
  }

  if (v12 == v11)
  {
LABEL_16:
    if (v10 == v11)
    {
      goto LABEL_30;
    }

    v16 = v10;
    do
    {
      if (*(v16 + 2) == mFormatID && (*(v16 + 6) == mSampleRate || *v16 == mSampleRate))
      {
        v21 = *v16;
        v22 = v16[1];
        *&a3->mBitsPerChannel = *(v16 + 4);
        *&a3->mSampleRate = v21;
        *&a3->mBytesPerPacket = v22;
        CommonSampleRateInRangeByIndex = *v16;
        goto LABEL_34;
      }

      v16 = (v16 + 56);
    }

    while (v16 != v11);
    if (v10 == v11)
    {
      goto LABEL_30;
    }

    v18 = v10;
    do
    {
      if (*(v18 + 2) == mFormatID)
      {
        v23 = *v18;
        v24 = v18[1];
        *&a3->mBitsPerChannel = *(v18 + 4);
        *&a3->mSampleRate = v23;
        *&a3->mBytesPerPacket = v24;
        goto LABEL_33;
      }

      v18 = (v18 + 56);
    }

    while (v18 != v11);
    if (v11 == v10 || (v19 = *v10, v20 = v10[1], *&a3->mBitsPerChannel = *(v10 + 4), *&a3->mSampleRate = v19, *&a3->mBytesPerPacket = v20, v18 = *(v6 + 8), *(v6 + 16) == v18))
    {
LABEL_30:
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_33:
    CommonSampleRateInRangeByIndex = HALB_FormatList::GetCommonSampleRateInRangeByIndex(this, *(v18 + 5), *(v18 + 6));
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
    *&a3->mBitsPerChannel = *(v12 + 4);
    *&a3->mSampleRate = v14;
    *&a3->mBytesPerPacket = v15;
  }

LABEL_34:
  a3->mSampleRate = CommonSampleRateInRangeByIndex;
}

double HALB_FormatList::GetCommonSampleRateInRangeByIndex(HALB_FormatList *this, double a2, double a3)
{
  v3 = 0;
  while (HALB_FormatList::sCommonSampleRates[v3] < a2)
  {
    if (++v3 == 15)
    {
      LODWORD(i) = 15;
      goto LABEL_11;
    }
  }

  if (v3 > 0xE)
  {
    LODWORD(i) = v3;
  }

  else
  {
    for (i = v3; i != 15; ++i)
    {
      if (HALB_FormatList::sCommonSampleRates[i] >= a3)
      {
        break;
      }
    }
  }

LABEL_11:
  v5 = 0;
  do
  {
    v6 = HALB_FormatList::sCommonSampleRates[v5];
    if (v5 > 0xD)
    {
      break;
    }

    ++v5;
  }

  while (v6 != a2);
  v7 = i - v3;
  if (v6 == a2)
  {
    goto LABEL_19;
  }

  v8 = 0;
  do
  {
    v9 = HALB_FormatList::sCommonSampleRates[v8];
    if (v8 > 0xD)
    {
      break;
    }

    ++v8;
  }

  while (v9 != a3);
  if (v9 == a3)
  {
LABEL_19:
    ++v7;
  }

  if (v7)
  {
    return HALB_FormatList::sCommonSampleRates[v3];
  }

  else
  {
    return 0.0;
  }
}

uint64_t HALB_FormatList::GetVirtualFormats(uint64_t this, char a2, unint64_t a3, unint64_t *a4, AudioStreamRangedDescription *a5)
{
  *a4 = 0;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = *(this + 8);
      if (++v7 >= (0x6DB6DB6DB6DB6DB7 * ((*(this + 16) - v8) >> 3)))
      {
        break;
      }

      v9 = (v8 + v5);
      v10 = &a5[v6];
      v11 = *v9;
      v12 = *(v9 + 1);
      v13 = *(v9 + 2);
      v10->mSampleRateRange.mMaximum = v9[6];
      *&v10->mFormat.mBytesPerPacket = v12;
      *&v10->mFormat.mBitsPerChannel = v13;
      *&v10->mFormat.mSampleRate = v11;
      v14 = *a4;
      if ((a2 & 1) == 0)
      {
        a5[v14].mFormat.mFormatFlags |= 2u;
      }

      v5 += 56;
      v6 = v14 + 1;
      *a4 = v6;
    }

    while (v6 < a3);
  }

  return this;
}

uint64_t HALB_FormatList::GetVirtualFormats(uint64_t this, char a2, unint64_t a3, unint64_t *a4, AudioStreamBasicDescription *a5)
{
  *a4 = 0;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 8);
    v8 = *(this + 16);
    v9 = -1;
    do
    {
      if (++v9 >= 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3))
      {
        break;
      }

      v10 = (v7 + v5);
      v11 = &a5[v6];
      v12 = *v10;
      v13 = v10[1];
      *&v11->mBitsPerChannel = *(v10 + 4);
      *&v11->mSampleRate = v12;
      *&v11->mBytesPerPacket = v13;
      v7 = *(this + 8);
      v8 = *(this + 16);
      if (0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3) <= v9)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *(v7 + v5 + 40);
      if (v14 != *(v7 + v5 + 48))
      {
        v14 = 0.0;
      }

      v15 = *a4;
      a5[*a4].mSampleRate = v14;
      if ((a2 & 1) == 0)
      {
        a5[v15].mFormatFlags |= 2u;
      }

      v5 += 56;
      v6 = v15 + 1;
      *a4 = v6;
    }

    while (v6 < a3);
  }

  return this;
}

void HALB_FormatList::BestMatchForPhysicalFormat(_BOOL8 this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, AudioStreamBasicDescription *a4, double mSampleRate)
{
  v6 = this;
  mFormatID = a2->mFormatID;
  if (a2->mSampleRate != 0.0)
  {
    mSampleRate = a2->mSampleRate;
  }

  v9 = *(this + 32);
  v10 = *(this + 40);
  v24 = mSampleRate;
  v25 = mFormatID;
  *v26 = *&a2->mFormatFlags;
  *&v26[12] = *&a2->mBytesPerFrame;
  v27 = 3;
  v11 = v9;
  if (v9 != v10)
  {
    v11 = v9;
    while (1)
    {
      this = CA::StreamDescription::IsEquivalent(&v24, v11, 3u);
      if (this && *(v11 + 5) <= mSampleRate && *(v11 + 6) >= mSampleRate)
      {
        break;
      }

      v11 = (v11 + 56);
      if (v11 == v10)
      {
        goto LABEL_16;
      }
    }
  }

  if (v11 == v10)
  {
LABEL_16:
    if (v9 == v10)
    {
      goto LABEL_30;
    }

    v15 = v9;
    do
    {
      if (*(v15 + 2) == mFormatID && (*(v15 + 6) == mSampleRate || *v15 == mSampleRate))
      {
        v20 = *v15;
        v21 = v15[1];
        *&a3->mBitsPerChannel = *(v15 + 4);
        *&a3->mSampleRate = v20;
        *&a3->mBytesPerPacket = v21;
        mSampleRate = *v15;
        goto LABEL_34;
      }

      v15 = (v15 + 56);
    }

    while (v15 != v10);
    if (v9 == v10)
    {
      goto LABEL_30;
    }

    v17 = v9;
    do
    {
      if (*(v17 + 2) == mFormatID)
      {
        v22 = *v17;
        v23 = v17[1];
        *&a3->mBitsPerChannel = *(v17 + 4);
        *&a3->mSampleRate = v22;
        *&a3->mBytesPerPacket = v23;
        goto LABEL_33;
      }

      v17 = (v17 + 56);
    }

    while (v17 != v10);
    if (v10 == v9 || (v18 = *v9, v19 = v9[1], *&a3->mBitsPerChannel = *(v9 + 4), *&a3->mSampleRate = v18, *&a3->mBytesPerPacket = v19, v17 = *(v6 + 32), *(v6 + 40) == v17))
    {
LABEL_30:
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_33:
    mSampleRate = HALB_FormatList::GetCommonSampleRateInRangeByIndex(this, *(v17 + 5), *(v17 + 6));
  }

  else
  {
    v13 = *v11;
    v14 = v11[1];
    *&a3->mBitsPerChannel = *(v11 + 4);
    *&a3->mSampleRate = v13;
    *&a3->mBytesPerPacket = v14;
  }

LABEL_34:
  a3->mSampleRate = mSampleRate;
}