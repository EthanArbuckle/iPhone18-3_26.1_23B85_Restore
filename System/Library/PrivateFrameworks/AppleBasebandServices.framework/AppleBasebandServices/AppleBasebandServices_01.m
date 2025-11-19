void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
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

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_28521A138;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_28521A138;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_28521A180;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_28521A180;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAA00;
  v24 = v4;
  v21 = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  BYTE8(v24) = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  *&v19 = *(a2 + 24);
  *(&v19 + 1) = v19;
  LOBYTE(v20) = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v5, &v19);
  *(&v20 + 1) = v6;
  v21 = v6;
  LOBYTE(v22) = 0;
  v23 = v19;
  LOBYTE(v24) = v20;
  v25 = v6;
  BYTE8(v24) = 1;
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

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!begin)
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
    v16 = &begin[v15];
    v17 = v13 + 24 * v12;
    *v17 = v16->std::pair<const char *, const char *>;
    *(v17 + 16) = v16->matched;
    v15 = v14;
    ++v12;
    ++v14;
  }

  while (v11 > v15);
LABEL_11:

  operator delete(begin);
}

void sub_24015DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v47 = 0;
  memset(&v47[8], 0, 85);
  v13 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v49, v47);
  v50 = v13;
  if (*&v47[56])
  {
    operator delete(*&v47[56]);
  }

  if (*&v47[32])
  {
    operator delete(*&v47[32]);
  }

  v14 = *(v13 - 8);
  *(v13 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 64), v15 - v16, &__x);
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v19 - v20);
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v23 = (v13 - 96);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 96);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v47[64] = v30;
          *&v47[80] = v30;
          *&v47[32] = v30;
          *&v47[48] = v30;
          *v47 = v30;
          *&v47[16] = v30;
          std::__state<char>::__state(v47, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 96);
          (*(**&v47[80] + 24))(*&v47[80], 0, v47);
          v31 = v50;
          if (v50 >= v51)
          {
            v50 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v49, v47);
            if (*&v47[56])
            {
              *&v47[64] = *&v47[56];
              operator delete(*&v47[56]);
            }
          }

          else
          {
            v32 = *&v47[16];
            *v50 = *v47;
            *(v31 + 1) = v32;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            *(v31 + 2) = *&v47[32];
            *(v31 + 6) = *&v47[48];
            *&v47[32] = 0;
            *&v47[40] = 0;
            *(v31 + 8) = 0;
            *(v31 + 9) = 0;
            *(v31 + 56) = *&v47[56];
            *(v31 + 9) = *&v47[72];
            memset(&v47[48], 0, 32);
            v33 = *&v47[80];
            *(v31 + 85) = *&v47[85];
            *(v31 + 10) = v33;
            v50 = v31 + 96;
          }

          if (*&v47[32])
          {
            *&v47[40] = *&v47[32];
            operator delete(*&v47[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_59;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v49;
    v13 = v50;
    ++v21;
    if (v49 == v50)
    {
      v17 = 0;
      if (!v49)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_59:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v50;
    v28 = *(v50 - 5);
    if (v28)
    {
      *(v50 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v50 = v27 - 96;
    goto LABEL_17;
  }

  v38 = *a4;
  *v38 = a2;
  *(v38 + 8) = v26;
  *(v38 + 16) = 1;
  v39 = *(v13 - 8);
  v40 = *(v13 - 7) - v39;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    v42 = (v39 + 16);
    v43 = 1;
    do
    {
      v44 = v38 + 24 * v43;
      *v44 = *(v42 - 1);
      v45 = *v42;
      v42 += 24;
      *(v44 + 16) = v45;
    }

    while (v41 > v43++);
  }

  v17 = 1;
  v22 = v49;
  if (v49)
  {
LABEL_44:
    for (i = v50; i != v22; i -= 96)
    {
      v35 = *(i - 5);
      if (v35)
      {
        *(i - 4) = v35;
        operator delete(v35);
      }

      v36 = *(i - 8);
      if (v36)
      {
        *(i - 7) = v36;
        operator delete(v36);
      }
    }

    operator delete(v22);
  }

  return v17;
}

void sub_24015DEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__state<char>::~__state(&a9);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v9 - 104));
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v8 = begin;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_29;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= __n)
    {
      v10 = __n;
    }

    v11 = v9 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v10;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_29:
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    v13 = operator new(24 * v11);
    this->__begin_ = v13;
    this->__end_ = v13;
    this->__end_cap_.__value_ = &v13[v12];
    v14 = 24 * __n;
    v15 = &v13[__n];
    do
    {
      v13->std::pair<const char *, const char *> = __u->std::pair<const char *, const char *>;
      *&v13->matched = *&__u->matched;
      ++v13;
      v14 -= 24;
    }

    while (v14);
    goto LABEL_28;
  }

  end = this->__end_;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v17 >= __n)
  {
    v18 = __n;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v18)
  {
    first = __u->first;
    second = __u->second;
    v21 = v18;
    matched = __u->matched;
    if (v18 == 1)
    {
      goto LABEL_32;
    }

    v8 = &begin[v18 & 0xFFFFFFFFFFFFFFFELL];
    v21 = v18 & 1;
    v23 = begin + 1;
    v24 = v18 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v23[-1].first = first;
      v23[-1].second = second;
      v23->first = first;
      v23->second = second;
      v23[-1].matched = matched;
      v23->matched = matched;
      v23 += 2;
      v24 -= 2;
    }

    while (v24);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        v8->first = first;
        v8->second = second;
        v8->matched = matched;
        ++v8;
        --v21;
      }

      while (v21);
    }
  }

  if (__n <= v17)
  {
    v15 = &begin[__n];
LABEL_28:
    this->__end_ = v15;
    return;
  }

  v25 = &end[__n - v17];
  v26 = 24 * __n - 24 * v17;
  do
  {
    v27 = __u->std::pair<const char *, const char *>;
    *&end->matched = *&__u->matched;
    end->std::pair<const char *, const char *> = v27;
    ++end;
    v26 -= 24;
  }

  while (v26);
  this->__end_ = v25;
}

void *std::__state<char>::~__state(void *a1)
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void **std::vector<std::__state<char>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char *std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(96 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 16);
  v9 = &v7[96 * v2];
  *v9 = *a2;
  *(v9 + 1) = v8;
  v10 = &v7[96 * v6];
  *(v9 + 2) = *(a2 + 32);
  *(v9 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v9 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 9) = v11;
  *(v9 + 10) = v12;
  v13 = v9 + 96;
  v14 = *a1;
  v15 = a1[1];
  v16 = &v9[*a1 - v15];
  if (*a1 != v15)
  {
    v17 = *a1;
    v18 = &v9[*a1 - v15];
    do
    {
      v19 = *(v17 + 1);
      *v18 = *v17;
      *(v18 + 1) = v19;
      *(v18 + 5) = 0;
      *(v18 + 6) = 0;
      *(v18 + 2) = *(v17 + 2);
      *(v18 + 6) = *(v17 + 6);
      *(v17 + 4) = 0;
      *(v17 + 5) = 0;
      *(v17 + 6) = 0;
      *(v18 + 8) = 0;
      *(v18 + 9) = 0;
      *(v18 + 56) = *(v17 + 56);
      *(v18 + 9) = *(v17 + 9);
      *(v17 + 7) = 0;
      *(v17 + 8) = 0;
      *(v17 + 9) = 0;
      v20 = *(v17 + 10);
      *(v18 + 85) = *(v17 + 85);
      *(v18 + 10) = v20;
      v17 += 96;
      v18 += 96;
    }

    while (v17 != v15);
    do
    {
      v21 = *(v14 + 7);
      if (v21)
      {
        *(v14 + 8) = v21;
        operator delete(v21);
      }

      v22 = *(v14 + 4);
      if (v22)
      {
        *(v14 + 5) = v22;
        operator delete(v22);
      }

      v14 += 96;
    }

    while (v14 != v15);
    v14 = *a1;
  }

  *a1 = v16;
  a1[1] = v13;
  a1[2] = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v13;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v13 = &end[__n];
      v14 = 24 * __n;
      do
      {
        v15 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v15;
        ++end;
        v14 -= 24;
      }

      while (v14);
      end = v13;
    }

    this->__end_ = end;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v6 = v5 + __n;
    if (v5 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v9 = __n;
      v10 = __x;
      v11 = this;
      v12 = operator new(24 * v8);
      this = v11;
      __x = v10;
      __n = v9;
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v5];
    v17 = 24 * __n;
    v18 = (v16 + 24 * __n);
    v19 = v16;
    do
    {
      v20 = __x->std::pair<const char *, const char *>;
      v19[1].first = *&__x->matched;
      *v19 = v20;
      v19 = (v19 + 24);
      v17 -= 24;
    }

    while (v17);
    v21 = &v12[24 * v8];
    begin = this->__begin_;
    v23 = (v16 + this->__begin_ - end);
    if (end != this->__begin_)
    {
      v24 = v23;
      do
      {
        v25 = begin->std::pair<const char *, const char *>;
        *&v24->matched = *&begin->matched;
        v24->std::pair<const char *, const char *> = v25;
        ++v24;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v23;
    this->__end_ = v18;
    this->__end_cap_.__value_ = v21;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 16 * __n;
      bzero(this->__end_, 16 * __n);
      end = (end + v12);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 4) + __n;
    if (v7 >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
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
      if (v9 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = __n;
      v11 = operator new(16 * v9);
      __n = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = __n;
    bzero(&v11[v6 >> 4], 16 * __n);
    memcpy(v11, begin, v6);
    this->__begin_ = v11;
    this->__end_ = &v11[(v6 >> 4) + v13];
    this->__end_cap_.__value_ = &v11[v9];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__state<char>::__state(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = 0;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v8);
    *(a1 + 32) = v9;
    *(a1 + 40) = v9;
    *(a1 + 48) = &v9[v8];
    v10 = 24 * ((v8 - 24) / 0x18uLL) + 24;
    memcpy(v9, v7, v10);
    *(a1 + 40) = &v9[v10];
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if (v13 < 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(v11 - v12);
    *(a1 + 56) = v14;
    *(a1 + 64) = v14;
    *(a1 + 72) = &v14[v13];
    v15 = v13 & 0x7FFFFFFFFFFFFFF0;
    memcpy(v14, v12, v15);
    *(a1 + 64) = &v14[v15];
  }

  v16 = *(a2 + 10);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = v16;
  return a1;
}

void sub_24015E8A0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_171;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_171;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 != a3)
    {
      v56 = a3 - 4;
      while (1)
      {
        v11 = v7;
        if (v7 == a3)
        {
          goto LABEL_14;
        }

        v12 = *v7;
        v11 = v7;
        if (v12 == 93)
        {
          goto LABEL_14;
        }

        __p[0] = 0;
        __p[1] = 0;
        v60 = 0;
        v11 = v7;
        if (v7 + 1 == a3 || v12 != 91)
        {
          goto LABEL_59;
        }

        v13 = v7[1];
        if (v13 != 46)
        {
          if (v13 == 58)
          {
            if (a3 - (v7 + 2) < 2)
            {
              goto LABEL_170;
            }

            v21 = 0;
            v22 = v7;
            if (v7[2] == 58)
            {
              goto LABEL_36;
            }

            do
            {
              do
              {
                if (v56 - v7 == v21)
                {
                  goto LABEL_170;
                }

                v22 = &v7[++v21];
              }

              while (v7[v21 + 2] != 58);
LABEL_36:
              ;
            }

            while (v22[3] != 93);
            if (&v7[v21 + 2] == a3)
            {
              goto LABEL_170;
            }

            v23 = *(a1 + 24);
            memset(__dst, 170, sizeof(__dst));
            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v21 >= 0x17)
            {
              if ((v21 | 7) == 0x17)
              {
                v36 = 25;
              }

              else
              {
                v36 = (v21 | 7) + 1;
              }

              v24 = operator new(v36);
              *&__dst[8] = v21;
              *&__dst[16] = v36 | 0x8000000000000000;
              *__dst = v24;
            }

            else
            {
              __dst[23] = v21;
              v24 = __dst;
              if (!v21)
              {
LABEL_77:
                v24[v21] = 0;
                v37 = __dst[23];
                if (__dst[23] >= 0)
                {
                  v38 = __dst;
                }

                else
                {
                  v38 = *__dst;
                }

                if (__dst[23] < 0)
                {
                  v37 = *&__dst[8];
                }

                (*(**(a1 + 8) + 48))(*(a1 + 8), v38, &v38[v37]);
                if (__dst[23] >= 0)
                {
                  v39 = __dst;
                }

                else
                {
                  v39 = *__dst;
                }

                classname = std::__get_classname(v39, v23 & 1);
                if ((__dst[23] & 0x80000000) != 0)
                {
                  v41 = classname;
                  operator delete(*__dst);
                  classname = v41;
                }

                if (!classname)
                {
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
                }

                v42 = 0;
                *(v8 + 40) |= classname;
                v9 = &v7[v21 + 4];
                v43 = v7;
                if (SHIBYTE(v60) < 0)
                {
LABEL_109:
                  operator delete(__p[0]);
                  v11 = v43;
                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_14;
                }

                goto LABEL_136;
              }
            }

            memcpy(v24, v7 + 2, v21);
            goto LABEL_77;
          }

          if (v13 == 61)
          {
            v14 = v7 + 2;
            if (a3 - (v7 + 2) < 2)
            {
              goto LABEL_170;
            }

            v15 = v56 - v7;
            v16 = v7 + 2;
            v17 = v7 + 3;
            if (*v14 == 61)
            {
              goto LABEL_27;
            }

            do
            {
              do
              {
                if (!v15)
                {
LABEL_170:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
                }

                --v15;
                v16 = v17;
                v18 = *v17++;
              }

              while (v18 != 61);
LABEL_27:
              ;
            }

            while (*v17 != 93);
            if (v16 == a3)
            {
              goto LABEL_170;
            }

            memset(__dst, 170, sizeof(__dst));
            std::regex_traits<char>::__lookup_collatename<char const*>(__dst, a1, v14, v16);
            v19 = __dst[23];
            if ((__dst[23] & 0x8000000000000000) != 0)
            {
              v19 = *&__dst[8];
              if (!*&__dst[8])
              {
LABEL_172:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              memset(__s, 170, sizeof(__s));
              v20 = *__dst;
            }

            else
            {
              if (!__dst[23])
              {
                goto LABEL_172;
              }

              v20 = __dst;
              memset(__s, 170, sizeof(__s));
            }

            std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__s, a1, v20, &v20[v19]);
            v44 = HIBYTE(__s[2]);
            if (SHIBYTE(__s[2]) < 0)
            {
              v44 = __s[1];
            }

            if (v44)
            {
              v45 = *(v8 + 18);
              if (v45 >= *(v8 + 19))
              {
                *(v8 + 18) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v8 + 136, __s);
                if (SHIBYTE(__s[2]) < 0)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                if (SHIBYTE(__s[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(*(v8 + 18), __s[0], __s[1]);
                }

                else
                {
                  v46 = *__s;
                  *(v45 + 16) = __s[2];
                  *v45 = v46;
                }

                *(v8 + 18) = v45 + 24;
                *(v8 + 18) = v45 + 24;
                if (SHIBYTE(__s[2]) < 0)
                {
                  goto LABEL_112;
                }
              }

LABEL_107:
              if ((__dst[23] & 0x80000000) == 0)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v47 = __dst[23];
              if (__dst[23] < 0)
              {
                v47 = *&__dst[8];
              }

              if (v47 == 2)
              {
                if (__dst[23] >= 0)
                {
                  v53 = __dst;
                }

                else
                {
                  v53 = *__dst;
                }

                std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v8, *v53, v53[1]);
              }

              else
              {
                if (v47 != 1)
                {
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                if (__dst[23] >= 0)
                {
                  v48 = __dst;
                }

                else
                {
                  v48 = *__dst;
                }

                std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, *v48);
              }

              if ((SHIBYTE(__s[2]) & 0x80000000) == 0)
              {
                goto LABEL_107;
              }

LABEL_112:
              operator delete(__s[0]);
              if ((__dst[23] & 0x80000000) == 0)
              {
LABEL_108:
                v42 = 0;
                v9 = (v16 + 2);
                v43 = v7;
                if (SHIBYTE(v60) < 0)
                {
                  goto LABEL_109;
                }

                goto LABEL_136;
              }
            }

            operator delete(*__dst);
            v42 = 0;
            v9 = (v16 + 2);
            v43 = v7;
            if (SHIBYTE(v60) < 0)
            {
              goto LABEL_109;
            }

            goto LABEL_136;
          }

          v11 = v7;
LABEL_59:
          v9 = *(a1 + 24) & 0x1F0;
          v32 = 0;
          goto LABEL_62;
        }

        v25 = v7 + 2;
        if (a3 - (v7 + 2) < 2)
        {
          goto LABEL_170;
        }

        v26 = v56 - v7;
        v27 = v7 + 2;
        v28 = v7 + 3;
        if (*v25 != 46)
        {
          break;
        }

LABEL_46:
        if (*v28 != 93)
        {
          goto LABEL_44;
        }

        if (v27 == a3)
        {
          goto LABEL_170;
        }

        std::regex_traits<char>::__lookup_collatename<char const*>(__dst, a1, v25, v27);
        if (SHIBYTE(v60) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *__dst;
        v60 = *&__dst[16];
        v30 = *&__dst[8];
        if (__dst[23] >= 0)
        {
          v31 = HIBYTE(*&__dst[16]);
        }

        else
        {
          v31 = *&__dst[8];
        }

        if ((v31 - 1) >= 2)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
        }

        v11 = v27 + 2;
        v9 = *(a1 + 24) & 0x1F0;
        v32 = __dst[23];
        if (__dst[23] >= 0)
        {
          v30 = HIBYTE(*&__dst[16]);
        }

        if (v30)
        {
          if (v11 == a3)
          {
            goto LABEL_118;
          }

          goto LABEL_117;
        }

LABEL_62:
        if ((v9 | 0x40) == 0x40)
        {
          v33 = *v11;
          if (v33 == 92)
          {
            if (v9)
            {
              v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v11 + 1, a3, __p);
            }

            else
            {
              v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v11 + 1, a3, __p, v8);
            }

            v11 = v34;
            if (v34 == a3)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          }
        }

        else
        {
          LOBYTE(v33) = *v11;
        }

        if (v32 < 0)
        {
          v35 = __p[0];
          __p[1] = 1;
          *__p[0] = v33;
          v35[1] = 0;
          if (++v11 == a3)
          {
            goto LABEL_118;
          }
        }

        else
        {
          HIBYTE(v60) = 1;
          LOWORD(__p[0]) = v33;
          if (++v11 == a3)
          {
            goto LABEL_118;
          }
        }

LABEL_117:
        v49 = *v11;
        if (v49 != 93)
        {
          v51 = v11 + 1;
          if (v11 + 1 != a3 && v49 == 45 && *v51 != 93)
          {
            memset(__dst, 0, sizeof(__dst));
            v43 = v11 + 2;
            if (v11 + 2 != a3 && *v51 == 91 && *v43 == 46)
            {
              v52 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v11 + 3, a3, __dst);
              goto LABEL_152;
            }

            if ((v9 | 0x40) == 0x40)
            {
              LODWORD(v51) = *v51;
              if (v51 == 92)
              {
                if (v9)
                {
                  v52 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v11 + 2, a3, __dst);
                }

                else
                {
                  v52 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v11 + 2, a3, __dst, v8);
                }

LABEL_152:
                v43 = v52;
LABEL_153:
                *__s = *__p;
                v54 = v60;
                __p[1] = 0;
                v60 = 0;
                __p[0] = 0;
                *v57 = *__dst;
                v58 = *&__dst[16];
                __s[2] = v54;
                memset(__dst, 0, sizeof(__dst));
                std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v8, __s, v57);
                if (SHIBYTE(v58) < 0)
                {
                  operator delete(v57[0]);
                  if (SHIBYTE(__s[2]) < 0)
                  {
                    goto LABEL_159;
                  }

LABEL_155:
                  if ((__dst[23] & 0x80000000) == 0)
                  {
                    goto LABEL_156;
                  }

LABEL_160:
                  operator delete(*__dst);
                  v42 = 1;
                  if (SHIBYTE(v60) < 0)
                  {
                    goto LABEL_109;
                  }
                }

                else
                {
                  if ((SHIBYTE(__s[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_155;
                  }

LABEL_159:
                  operator delete(__s[0]);
                  if ((__dst[23] & 0x80000000) != 0)
                  {
                    goto LABEL_160;
                  }

LABEL_156:
                  v42 = 1;
                  if (SHIBYTE(v60) < 0)
                  {
                    goto LABEL_109;
                  }
                }

LABEL_136:
                v11 = v43;
                if ((v42 & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_14;
              }
            }

            else
            {
              LOBYTE(v51) = *v51;
            }

            __dst[23] = 1;
            *__dst = v51;
            goto LABEL_153;
          }
        }

LABEL_118:
        if (SHIBYTE(v60) < 0)
        {
          if (__p[1])
          {
            if (__p[1] == 1)
            {
              v50 = __p[0];
LABEL_125:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, *v50);
LABEL_135:
              v42 = 1;
              v43 = v11;
              if (SHIBYTE(v60) < 0)
              {
                goto LABEL_109;
              }

              goto LABEL_136;
            }

            v50 = __p[0];
LABEL_134:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v8, *v50, v50[1]);
            goto LABEL_135;
          }

          operator delete(__p[0]);
        }

        else if (HIBYTE(v60))
        {
          v50 = __p;
          if (HIBYTE(v60) == 1)
          {
            goto LABEL_125;
          }

          goto LABEL_134;
        }

LABEL_14:
        v9 = v11;
LABEL_15:
        v10 = v9 == v7;
        v7 = v9;
        if (v10)
        {
          goto LABEL_163;
        }
      }

      do
      {
LABEL_44:
        if (!v26)
        {
          goto LABEL_170;
        }

        --v26;
        v27 = v28;
        v29 = *v28++;
      }

      while (v29 != 46);
      goto LABEL_46;
    }

    v9 = v7;
LABEL_163:
    if (v9 == a3)
    {
      goto LABEL_171;
    }

    if (*v9 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v9;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_171:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return (v9 + 1);
  }

  return a2;
}

void sub_24015F1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  *(v36 + 144) = v37;
  if (a30 < 0)
  {
    operator delete(__p);
    if (a36 < 0)
    {
LABEL_5:
      operator delete(a31);
      if (a23 < 0)
      {
LABEL_8:
        operator delete(a18);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (a36 < 0)
  {
    goto LABEL_5;
  }

  if (a23 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 12;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 10;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v18 = a2;
            v19 = 0;
            goto LABEL_80;
          }

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
          return a2 + 1;
        case 'c':
          if (a2 + 1 == a3)
          {
            goto LABEL_96;
          }

          v6 = a2[1];
          if (((v6 & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_96;
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
            return a2 + 2;
          }

          else
          {
            v20 = a2;
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
            return v20 + 2;
          }

        case '_':
          goto LABEL_96;
      }
    }

    goto LABEL_74;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 13;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 9;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_96;
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

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v18 = a2;
    v19 = v4;
LABEL_80:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
    return v18 + 1;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_96;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_96;
    }

    v10 = *a2;
    v11 = -48;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
    {
      v10 |= 0x20u;
      if ((v10 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v11 = -87;
    }

    v5 = 16 * (v11 + v10);
LABEL_46:
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v12 = a2[1];
    v13 = -48;
    if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
    {
      v12 |= 0x20u;
      if ((v12 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v13 = -87;
    }

    if (a2 + 2 != a3)
    {
      v14 = a2[2];
      v15 = -48;
      if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
      {
        goto LABEL_56;
      }

      v14 |= 0x20u;
      if ((v14 - 97) < 6)
      {
        v15 = -87;
LABEL_56:
        v16 = v14 + 16 * (v5 + v13 + v12) + v15;
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

          *a4 = v16;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v17 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
        return v17 + 3;
      }
    }

LABEL_96:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  if (!a4)
  {
    v18 = a2;
    v19 = 11;
    goto LABEL_80;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void sub_24015FA58(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_28521A2E8;
  }

  else
  {
    if ((flags & 8) == 0)
    {
      v5 = operator new(0x18uLL);
      end = this->__end_;
      first = end->__first_;
      v5->__vftable = &unk_28521A378;
      v5->__first_ = first;
      LODWORD(v5[1].__vftable) = __i;
      end->__first_ = v5;
      this->__end_ = v5;
      return;
    }

    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_28521A330;
  }

  v8->__locale_ = v10;
  std::locale::locale(v8 + 2, &this->__traits_.__loc_);
  *&v9[3].__locale_ = *&this->__traits_.__ct_;
  LODWORD(v9[5].__locale_) = __i;
  this->__end_->__first_ = v9;
  this->__end_ = v9;
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28521A210;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28521A210;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28521A258;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28521A258;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28521A2E8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28521A2E8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28521A330;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28521A330;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__back_ref<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 40);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 48) = v9 + 1;
    return;
  }

  v10 = *(a1 + 40);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 40) = v16;
  *(a1 + 48) = v6;
  *(a1 + 56) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 48) = v6;
    return;
  }

LABEL_28:
  *(a1 + 48) = v6;
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
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

void sub_240160950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  std::vector<std::string>::~vector[abi:ne200100]((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v1 = std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  operator delete(v1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  v2 = a2;
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v10 = 0;
    negate = this->__negate_;
    goto LABEL_67;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_42;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  __s.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[2] = 0x2AAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  std::__get_collation_name(&v118, &__s);
  __p = v118;
  size = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v118.__r_.__value_.__r.__words[2]);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v118.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v9 = __s.__r_.__value_.__r.__words[0];
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
LABEL_11:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_181;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 3)
  {
LABEL_181:
    (*(*this->__traits_.__col_ + 32))(&v118);
    if (v8 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v118;
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
      {
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v90 = __s.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>(&__p.__r_.__value_.__l.__data_, p_s, v90);
      }

      else
      {
        *__p.__r_.__value_.__l.__data_ = 0;
        __p.__r_.__value_.__l.__size_ = 0;
      }
    }

    else if (HIBYTE(v118.__r_.__value_.__r.__words[2]) == 1 || HIBYTE(v118.__r_.__value_.__r.__words[2]) == 12)
    {
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__assign_no_alias<true>(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __s;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
    }

LABEL_9:
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v9 = __s.__r_.__value_.__r.__words[0];
    goto LABEL_11;
  }

LABEL_15:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_42:
    negate = 0;
    v10 = 1;
    goto LABEL_43;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_42;
  }

LABEL_17:
  begin = this->__digraphs_.__begin_;
  v13 = this->__digraphs_.__end_ - begin;
  if (v13)
  {
    v14 = v13 >> 1;
    if ((v13 >> 1) <= 1)
    {
      v14 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v14)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_249;
  }

LABEL_26:
  if (!this->__collate_ || this->__ranges_.__begin_ == this->__ranges_.__end_)
  {
LABEL_204:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
      v91 = 0;
      goto LABEL_231;
    }

    memset(&__s, 170, sizeof(__s));
    v92 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v118);
    v93 = this->__equivalences_.__begin_;
    v94 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v95 = this->__equivalences_.__end_ - v93;
    if (v95)
    {
      v96 = v2;
      v97 = 0xAAAAAAAAAAAAAAABLL * (v95 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v92 = __s.__r_.__value_.__r.__words[0];
      }

      if (v97 <= 1)
      {
        v99 = 1;
      }

      else
      {
        v99 = 0xAAAAAAAAAAAAAAABLL * (v95 >> 3);
      }

      v100 = 1;
      v101 = 1;
      do
      {
        v102 = HIBYTE(v93->__r_.__value_.__r.__words[2]);
        v103 = v102;
        if ((v102 & 0x80u) != 0)
        {
          v102 = v93->__r_.__value_.__l.__size_;
        }

        if (v98 == v102)
        {
          v104 = v103 >= 0 ? v93 : v93->__r_.__value_.__r.__words[0];
          if (!memcmp(v92, v104, v98))
          {
            v91 = 1;
            v73 = 5;
            v2 = v96;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_228;
            }

            goto LABEL_227;
          }
        }

        v101 = v100++ < v97;
        ++v93;
        --v99;
      }

      while (v99);
      v73 = 0;
      v91 = 0;
      v2 = v96;
      if ((v94 & 0x80) == 0)
      {
        goto LABEL_228;
      }
    }

    else
    {
      v101 = 0;
      v73 = 0;
      v91 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_228:
        if (v101)
        {
          goto LABEL_229;
        }

LABEL_231:
        if (__src < 0)
        {
          neg_mask = this->__neg_mask_;
        }

        else
        {
          mask = this->__mask_;
          tab = this->__traits_.__ct_->__tab_;
          v107 = tab[__src];
          if (((v107 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
          {
            goto LABEL_249;
          }

          neg_mask = this->__neg_mask_;
          if ((neg_mask & v107) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
          {
LABEL_248:
            negate = v91;
LABEL_250:
            v10 = 2;
            goto LABEL_67;
          }
        }

        if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
        {
          if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
          {
            negate = 1;
            if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
            {
              goto LABEL_250;
            }
          }

          goto LABEL_248;
        }

LABEL_249:
        negate = 1;
        goto LABEL_250;
      }
    }

LABEL_227:
    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_228;
  }

  memset(&v118, 170, sizeof(v118));
  __s.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[2] = 0x2AAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  (*(*this->__traits_.__col_ + 32))(&v118);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v17 = this->__ranges_.__begin_;
  v18 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  v19 = this->__ranges_.__end_ - v17;
  if (!v19)
  {
    v27 = 0;
    v73 = 0;
    goto LABEL_200;
  }

  v111 = v2;
  v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v118;
  }

  else
  {
    v21 = v118.__r_.__value_.__r.__words[0];
  }

  v22 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v118.__r_.__value_.__l.__size_;
  }

  if (v20 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  }

  v25 = &v17->second.__r_.__value_.__r.__words[2] + 7;
  v26 = 1;
  v27 = 1;
  do
  {
    v63 = *(v25 - 24);
    if (v63 >= 0)
    {
      v64 = (v25 - 47);
    }

    else
    {
      v64 = *(v25 - 47);
    }

    if (v63 >= 0)
    {
      v65 = *(v25 - 24);
    }

    else
    {
      v65 = *(v25 - 39);
    }

    if (v23 >= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = v23;
    }

    v67 = memcmp(v64, v21, v66);
    if (v67)
    {
      if ((v67 & 0x80000000) == 0)
      {
        goto LABEL_117;
      }
    }

    else if (v65 > v23)
    {
      goto LABEL_117;
    }

    v68 = *v25;
    if (v68 >= 0)
    {
      v69 = (v25 - 23);
    }

    else
    {
      v69 = *(v25 - 23);
    }

    if (v68 >= 0)
    {
      v70 = *v25;
    }

    else
    {
      v70 = *(v25 - 15);
    }

    if (v70 >= v23)
    {
      v71 = v23;
    }

    else
    {
      v71 = v70;
    }

    v72 = memcmp(v21, v69, v71);
    if (v72)
    {
      if (v72 < 0)
      {
LABEL_142:
        v73 = 5;
        goto LABEL_198;
      }
    }

    else if (v23 <= v70)
    {
      goto LABEL_142;
    }

LABEL_117:
    v27 = v26++ < v20;
    v25 += 48;
    --v24;
  }

  while (v24);
  v73 = 0;
LABEL_198:
  v2 = v111;
  v18 = v22;
LABEL_200:
  if (v18 < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if (!v27)
  {
    goto LABEL_204;
  }

  v91 = 1;
LABEL_229:
  v10 = 2;
  negate = v91;
  if (v73)
  {
    goto LABEL_67;
  }

LABEL_43:
  v29 = *v2->__current_;
  __p.__r_.__value_.__s.__data_[0] = *v2->__current_;
  if (this->__icase_)
  {
    LODWORD(v29) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v29);
    __p.__r_.__value_.__s.__data_[0] = v29;
  }

  v30 = this->__chars_.__begin_;
  v31 = this->__chars_.__end_ - v30;
  if (v31)
  {
    if (v31 <= 1)
    {
      v31 = 1;
    }

    do
    {
      v32 = *v30++;
      if (v32 == v29)
      {
        goto LABEL_66;
      }

      --v31;
    }

    while (v31);
  }

  v33 = this->__neg_mask_;
  if (v33 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v29 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v29] & v33) == 0)
    {
      v35 = (v33 >> 7) & 1;
      v34 = v29 == 95 ? v35 : 0;
    }

    else
    {
      v34 = 1;
    }

    end = this->__neg_chars_.__end_;
    v37 = memchr(this->__neg_chars_.__begin_, v29, end - this->__neg_chars_.__begin_);
    v38 = !v37 || v37 == end;
    v39 = !v38;
    if ((v34 & 1) == 0 && !v39)
    {
      goto LABEL_66;
    }
  }

  v42 = this->__ranges_.__begin_;
  v43 = this->__ranges_.__end_;
  if (v42 == v43)
  {
    goto LABEL_147;
  }

  memset(&v118, 170, sizeof(v118));
  v114 = negate;
  if (this->__collate_)
  {
    __s.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    __s.__r_.__value_.__r.__words[2] = 0x1AAAAAAAAAAAAAALL;
    __s.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA00AALL;
    __s.__r_.__value_.__s.__data_[0] = v29;
    (*(*this->__traits_.__col_ + 32))(&v118);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v42 = this->__ranges_.__begin_;
    v44 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    v45 = this->__ranges_.__end_ - v42;
    if (!v45)
    {
LABEL_76:
      v46 = 0;
      if ((v44 & 0x80) != 0)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }
  }

  else
  {
    v44 = 1;
    *(&v118.__r_.__value_.__s + 23) = 1;
    LOWORD(v118.__r_.__value_.__l.__data_) = v29;
    v45 = v43 - v42;
    if (!v45)
    {
      goto LABEL_76;
    }
  }

  v110 = v10;
  v112 = v2;
  v47 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 4);
  v109 = v44;
  if ((v44 & 0x80u) == 0)
  {
    v48 = &v118;
  }

  else
  {
    v48 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v49 = v44;
  }

  else
  {
    v49 = v118.__r_.__value_.__l.__size_;
  }

  if (v47 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 4);
  }

  v51 = &v42->second.__r_.__value_.__r.__words[2] + 7;
  v52 = 1;
  v46 = 1;
  while (2)
  {
    v53 = *(v51 - 24);
    if (v53 >= 0)
    {
      v54 = (v51 - 47);
    }

    else
    {
      v54 = *(v51 - 47);
    }

    if (v53 >= 0)
    {
      v55 = *(v51 - 24);
    }

    else
    {
      v55 = *(v51 - 39);
    }

    if (v49 >= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = v49;
    }

    v57 = memcmp(v54, v48, v56);
    if (v57)
    {
      if (v57 < 0)
      {
        goto LABEL_104;
      }
    }

    else if (v55 <= v49)
    {
LABEL_104:
      v58 = *v51;
      if (v58 >= 0)
      {
        v59 = (v51 - 23);
      }

      else
      {
        v59 = *(v51 - 23);
      }

      if (v58 >= 0)
      {
        v60 = *v51;
      }

      else
      {
        v60 = *(v51 - 15);
      }

      if (v60 >= v49)
      {
        v61 = v49;
      }

      else
      {
        v61 = v60;
      }

      v62 = memcmp(v48, v59, v61);
      if (v62)
      {
        if (v62 < 0)
        {
LABEL_115:
          negate = 1;
          v2 = v112;
          goto LABEL_144;
        }
      }

      else if (v49 <= v60)
      {
        goto LABEL_115;
      }
    }

    v46 = v52++ < v47;
    v51 += 48;
    if (--v50)
    {
      continue;
    }

    break;
  }

  v2 = v112;
  negate = v114;
LABEL_144:
  v10 = v110;
  if (v109 < 0)
  {
LABEL_145:
    operator delete(v118.__r_.__value_.__l.__data_);
  }

LABEL_146:
  if (!v46)
  {
LABEL_147:
    if (this->__equivalences_.__begin_ != this->__equivalences_.__end_)
    {
      v74 = v10;
      memset(&__s, 170, sizeof(__s));
      v75 = &__s;
      std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__p, &__p.__r_.__value_.__s.__data_[1]);
      v76 = this->__equivalences_.__begin_;
      v77 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v78 = this->__equivalences_.__end_ - v76;
      if (v78)
      {
        v115 = negate;
        v113 = v2;
        v79 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = __s.__r_.__value_.__l.__size_;
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v75 = __s.__r_.__value_.__r.__words[0];
        }

        if (v79 <= 1)
        {
          v81 = 1;
        }

        else
        {
          v81 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
        }

        v82 = 1;
        v83 = 1;
        do
        {
          v84 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
          v85 = v84;
          if ((v84 & 0x80u) != 0)
          {
            v84 = v76->__r_.__value_.__l.__size_;
          }

          if (v80 == v84)
          {
            v86 = v85 >= 0 ? v76 : v76->__r_.__value_.__r.__words[0];
            if (!memcmp(v75, v86, v80))
            {
              negate = 1;
              v2 = v113;
              if ((v77 & 0x80) == 0)
              {
                goto LABEL_170;
              }

              goto LABEL_169;
            }
          }

          v83 = v82++ < v79;
          ++v76;
          --v81;
        }

        while (v81);
        v2 = v113;
        negate = v115;
        if ((v77 & 0x80) == 0)
        {
          goto LABEL_170;
        }

LABEL_169:
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      else
      {
        v83 = 0;
        if ((*(&__s.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_169;
        }
      }

LABEL_170:
      if (v83)
      {
        v10 = v74;
        goto LABEL_67;
      }

      LOBYTE(v29) = __p.__r_.__value_.__s.__data_[0];
      v10 = v74;
    }

    v87 = this->__mask_;
    if ((v29 & 0x80) != 0 || (this->__traits_.__ct_->__tab_[v29] & v87) == 0)
    {
      v88 = (v87 >> 7) & 1;
      if (v29 != 95)
      {
        LOBYTE(v88) = 0;
      }

      negate |= v88;
      goto LABEL_67;
    }

LABEL_66:
    negate = 1;
  }

LABEL_67:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v41 = -993;
  }

  else
  {
    v2->__current_ += v10;
    first = this->__first_;
    v41 = -995;
  }

  v2->__do_ = v41;
  v2->__node_ = first;
}

void sub_2401614E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if (a28 < 0)
    {
LABEL_5:
      operator delete(a23);
      _Unwind_Resume(a1);
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void ***std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void std::regex_traits<char>::__transform_primary<char *>(void *a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a4 - __src;
    v9 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v9, __src, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v4 | 7) + 1;
  }

  v9 = operator new(v10);
  __dst[1] = v4;
  __dst[2] = (v10 | 0x8000000000000000);
  __dst[0] = v9;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v9 + v4) = 0;
  memset(a1, 170, 24);
  v11 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v12 = __dst;
  }

  else
  {
    v12 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v11 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v12, &v11[v12]);
  v13 = *(a1 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = a1[1];
  }

  if (v13 == 1)
  {
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v13 == 12)
  {
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    v15[11] = v15[3];
    if (SHIBYTE(__dst[2]) < 0)
    {
      goto LABEL_27;
    }

    return;
  }

  if ((v14 & 0x80000000) == 0)
  {
    *a1 = 0;
    *(a1 + 23) = 0;
    goto LABEL_26;
  }

  **a1 = 0;
  a1[1] = 0;
  if (SHIBYTE(__dst[2]) < 0)
  {
LABEL_27:
    operator delete(__dst[0]);
  }
}

void sub_240161968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, char *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  v7 = __src + 1;
  if (*__src != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
    }

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

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
    }

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
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v4 != 34 && v4 != 47)
      {
        goto LABEL_48;
      }
    }

    else if (v4 != 92)
    {
      if (v4 == 97)
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

          *a4 = 7;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
          return a2 + 1;
        }
      }

      if (v4 == 98)
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

          *a4 = 8;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
          return a2 + 1;
        }
      }

      goto LABEL_48;
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

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (*a2 <= 0x71u)
  {
    if (v4 == 102)
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

        *a4 = 12;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
        return a2 + 1;
      }
    }

    if (v4 == 110)
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

        *a4 = 10;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
        return a2 + 1;
      }
    }
  }

  else
  {
    switch(v4)
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

          *a4 = 13;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
          return a2 + 1;
        }

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

          *a4 = 9;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
          return a2 + 1;
        }

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

          *a4 = 11;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
          return a2 + 1;
        }
    }
  }

LABEL_48:
  if ((v4 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
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

    result = v9;
    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v9;
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, void *__src, char *a3)
{
  v3 = a3;
  v4 = __src;
  if (*(a1 + 170) != 1)
  {
    v11 = *(__src + 23);
    if (v11 < 0)
    {
      if (__src[1] != 1)
      {
        goto LABEL_77;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_77;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_65:
      *v39 = *v4;
      v40 = v4[2];
      v4[1] = 0;
      v4[2] = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v40) & 0x80000000) == 0)
        {
          return;
        }
      }

      else if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        return;
      }

      operator delete(v39[0]);
      return;
    }

    v30 = __src;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *__src;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (*(v4 + 23) < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_62:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_65;
      }
    }

    v32 = *v3;
    goto LABEL_62;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = *(v4 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= v4[1])
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), *(v8 + i));
      v10 = v4;
      if (*(v4 + 23) < 0)
      {
        v10 = *v4;
      }

      *(v10 + i) = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = *(__src + 23);
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = __src;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *__src;
      v15 = *__src;
    }

    else
    {
      v15 = __src;
    }

    *(v15 + k) = *(v13 + k);
  }

  if (k < __src[1])
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = *(v4 + 23);
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = v26[1];
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v37, a1 + 16, v4, v4 + v25);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v35, a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  v37[1] = 0;
  v38 = 0;
  *__p = *v35;
  v42 = v36;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  v37[0] = 0;
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v39);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_69;
    }

LABEL_50:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_70:
    operator delete(v35[0]);
    if (SHIBYTE(v38) < 0)
    {
LABEL_71:
      operator delete(v37[0]);
    }
  }

  else
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_69:
    operator delete(v39[0]);
    if (SHIBYTE(v36) < 0)
    {
      goto LABEL_70;
    }

LABEL_51:
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_71;
    }
  }
}

void sub_2401625B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_2401625C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::pair<std::string,std::string>::~pair(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v6 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v8 < v7)
    {
      *v8 = v6;
      v9 = v8 + 2;
LABEL_41:
      *(a1 + 120) = v9;
      return;
    }

    v19 = *(a1 + 112);
    v20 = v8 - v19;
    v21 = (v8 - v19) >> 1;
    if (v21 > -2)
    {
      v22 = v7 - v19;
      if (v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        v25 = 0;
LABEL_39:
        v31 = &v25[2 * v21];
        *v31 = v6;
        v9 = v31 + 2;
        memcpy(v25, v19, v20);
        *(a1 + 112) = v25;
        *(a1 + 120) = v9;
        *(a1 + 128) = &v25[2 * v24];
        if (v19)
        {
          operator delete(v19);
        }

        goto LABEL_41;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = operator new(2 * v24);
        goto LABEL_39;
      }

LABEL_47:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_46:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v10 = a2 | (a3 << 8);
  v12 = *(a1 + 120);
  v11 = *(a1 + 128);
  if (*(a1 + 170) == 1)
  {
    if (v12 >= v11)
    {
      v13 = *(a1 + 112);
      v14 = v12 - v13;
      v15 = (v12 - v13) >> 1;
      if (v15 <= -2)
      {
        goto LABEL_46;
      }

      v16 = v11 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      goto LABEL_42;
    }
  }

  else if (v12 >= v11)
  {
    v13 = *(a1 + 112);
    v14 = v12 - v13;
    v15 = (v12 - v13) >> 1;
    if (v15 <= -2)
    {
      goto LABEL_46;
    }

    v27 = v11 - v13;
    if (v27 <= v15 + 1)
    {
      v28 = v15 + 1;
    }

    else
    {
      v28 = v27;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v28;
    }

    if (v18)
    {
      if (v18 < 0)
      {
        goto LABEL_47;
      }

LABEL_37:
      v29 = v10;
      v30 = operator new(2 * v18);
      v10 = v29;
      goto LABEL_43;
    }

LABEL_42:
    v30 = 0;
LABEL_43:
    v32 = &v30[2 * v15];
    *v32 = v10;
    v26 = v32 + 2;
    memcpy(v30, v13, v14);
    *(a1 + 112) = v30;
    *(a1 + 120) = v26;
    *(a1 + 128) = &v30[2 * v18];
    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_45;
  }

  *v12 = v10;
  v26 = v12 + 2;
LABEL_45:
  *(a1 + 120) = v26;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    __dst[23] = a4 - __src;
    v9 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v9, __src, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v4 | 7) + 1;
  }

  v9 = operator new(v10);
  *&__dst[8] = v4;
  *&__dst[16] = v10 | 0x8000000000000000;
  *__dst = v9;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9[v4] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v11 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v11 = __dst;
  }

  std::__get_collation_name(&v18, v11);
  *a1 = *&v18.__r_.__value_.__l.__data_;
  v12 = v18.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v18.__r_.__value_.__l + 2);
  v13 = HIBYTE(v12);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 8);
  }

  if (v13)
  {
    goto LABEL_17;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v11 = *__dst;
    if (*&__dst[8] < 3uLL)
    {
LABEL_25:
      (*(**(a2 + 16) + 32))(&v18);
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *a1 = v18;
      if (*(a1 + 23) < 0)
      {
        v15 = *(a1 + 8);
        if (v15 == 1 || v15 == 12)
        {
          if (__dst != a1)
          {
            if (__dst[23] >= 0)
            {
              v16 = __dst;
            }

            else
            {
              v16 = *__dst;
            }

            if (__dst[23] >= 0)
            {
              v17 = __dst[23];
            }

            else
            {
              v17 = *&__dst[8];
            }

            std::string::__assign_no_alias<false>(a1, v16, v17);
          }
        }

        else
        {
          **a1 = 0;
          *(a1 + 8) = 0;
        }
      }

      else
      {
        v14 = *(a1 + 23);
        if (v14 == 1 || v14 == 12)
        {
          if (__dst != a1)
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__assign_no_alias<true>(a1, *__dst, *&__dst[8]);
            }

            else
            {
              *a1 = *__dst;
              *(a1 + 16) = *&__dst[16];
            }
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 23) = 0;
        }
      }

LABEL_17:
      if ((__dst[23] & 0x80000000) == 0)
      {
        return;
      }

      v11 = *__dst;
    }

LABEL_19:
    operator delete(v11);
    return;
  }

  if (__dst[23] < 3)
  {
    goto LABEL_25;
  }
}

void sub_240162B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(void *a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a4 - __src;
    v9 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v9, __src, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v4 | 7) + 1;
  }

  v9 = operator new(v10);
  __dst[1] = v4;
  __dst[2] = (v10 | 0x8000000000000000);
  __dst[0] = v9;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v9 + v4) = 0;
  memset(a1, 170, 24);
  v11 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v12 = __dst;
  }

  else
  {
    v12 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v11 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v12, &v11[v12]);
  v13 = *(a1 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = a1[1];
  }

  if (v13 == 1)
  {
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v13 == 12)
  {
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    v15[11] = v15[3];
    if (SHIBYTE(__dst[2]) < 0)
    {
      goto LABEL_27;
    }

    return;
  }

  if ((v14 & 0x80000000) == 0)
  {
    *a1 = 0;
    *(a1 + 23) = 0;
    goto LABEL_26;
  }

  **a1 = 0;
  a1[1] = 0;
  if (SHIBYTE(__dst[2]) < 0)
  {
LABEL_27:
    operator delete(__dst[0]);
  }
}

void sub_240162CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 169) == 1)
  {
    v2 = (*(**(a1 + 24) + 40))(*(a1 + 24), 95);
    v4 = *(a1 + 72);
    v3 = *(a1 + 80);
    if (v4 < v3)
    {
      *v4 = v2;
      v5 = (v4 + 1);
      goto LABEL_32;
    }

    v8 = *(a1 + 64);
    v9 = v4 - v8;
    v11 = v4 - v8 + 1;
    if (v11 >= 0)
    {
      v12 = v3 - v8;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = v2;
        v15 = operator new(v13);
        v2 = v14;
      }

      else
      {
        v15 = 0;
      }

      v18 = &v15[v13];
      v15[v9] = v2;
      v5 = &v15[v9 + 1];
      goto LABEL_30;
    }

LABEL_33:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  if (*(a1 + 170) != 1)
  {
    if (v7 >= v6)
    {
      v8 = *(a1 + 64);
      v9 = v7 - v8;
      v10 = v7 - v8 + 1;
      if (v10 < 0)
      {
        goto LABEL_33;
      }

      goto LABEL_19;
    }

LABEL_17:
    *v7 = 95;
    *(a1 + 72) = v7 + 1;
    return;
  }

  if (v7 < v6)
  {
    goto LABEL_17;
  }

  v8 = *(a1 + 64);
  v9 = v7 - v8;
  v10 = v7 - v8 + 1;
  if (v10 < 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v16 = v6 - v8;
  if (2 * v16 > v10)
  {
    v10 = 2 * v16;
  }

  if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = v10;
  }

  if (v17)
  {
    v15 = operator new(v17);
  }

  else
  {
    v15 = 0;
  }

  v18 = &v15[v17];
  v15[v9] = 95;
  v5 = &v15[v9 + 1];
LABEL_30:
  memcpy(v15, v8, v9);
  *(a1 + 64) = v15;
  *(a1 + 72) = v5;
  *(a1 + 80) = v18;
  if (v8)
  {
    operator delete(v8);
    *(a1 + 72) = v5;
    return;
  }

LABEL_32:
  *(a1 + 72) = v5;
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
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
    v7 = v3 + 48;
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
    if (v11 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = a2;
    v13 = operator new(48 * v11);
    a2 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = &v13[48 * v8];
  *v14 = *a2;
  v15 = &v13[48 * v11];
  *(v14 + 2) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v14 + 5) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = v14 + 48;
  v17 = *a1;
  v18 = a1[1] - *a1;
  *(v14 + 24) = v16;
  v19 = &v14[-v18];
  memcpy(&v14[-v18], v17, v18);
  *a1 = v19;
  a1[1] = v7;
  a1[2] = v15;
  if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  a1[1] = v7;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a4 - __src;
    v8 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, __src, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v8 = operator new(v9);
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v8;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v10 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v10 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v11, &v10[v11]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_2401631CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_loop(std::basic_regex<char> *this, size_t __min, size_t __max, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end, BOOL __greedy)
{
  v7 = __mexp_end;
  v8 = __mexp_begin;
  v13 = operator new(0x10uLL);
  end = this->__end_;
  first = end->__first_;
  v13->__first_ = first;
  end->__first_ = 0;
  v16 = operator new(0x38uLL);
  loop_count = this->__loop_count_;
  v16[1].__vftable = __s->__first_;
  v16[2].__vftable = v13;
  v16->__vftable = &unk_28521A498;
  v16[3].__vftable = __min;
  v16[4].__vftable = __max;
  LODWORD(v16[5].__vftable) = loop_count;
  HIDWORD(v16[5].__vftable) = v8;
  LODWORD(v16[6].__vftable) = v7;
  BYTE4(v16[6].__vftable) = __greedy;
  __s->__first_ = 0;
  v18 = operator new(0x10uLL);
  v18->__vftable = &unk_28521A528;
  v18[1].__vftable = v16;
  end->__first_ = v18;
  this->__end_ = v13;
  __s->__first_ = v16;
  this->__loop_count_ = loop_count + 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_28521A4F8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__loop<char>::~__loop(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_28521A4F8;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__loop<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t std::__loop<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_28521A4F8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_28521A4F8;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_28521A4F8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_28521A4F8;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
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

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = a2 + 1;
    v7 = *a2;
    if (a2 + 1 != a3 || v7 != 36)
    {
      v15 = (v7 - 46) > 0x2E || ((1 << (v7 - 46)) & 0x600000000001) == 0;
      if (v15)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
        return a2 + 1;
      }

      if (v6 == a3 || v7 != 92)
      {
        if (v7 == 46)
        {
          v17 = operator new(0x10uLL);
          result = a2 + 1;
          v18 = *(a1 + 56);
          v19 = *(v18 + 8);
          *v17 = &unk_28521A600;
          v17[1] = v19;
LABEL_41:
          *(v18 + 8) = v17;
          *(a1 + 56) = v17;
          return result;
        }
      }

      else
      {
        v16 = *v6;
        if ((v16 - 36) <= 0x3A && ((1 << (v16 - 36)) & 0x580000000000441) != 0)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
          return a2 + 2;
        }
      }
    }
  }

  result = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v9 = result[1];
    if (v9 == 40)
    {
      v10 = (result + 2);
      if ((*(a1 + 24) & 2) != 0)
      {
        v12 = *(a1 + 28);
      }

      else
      {
        v11 = operator new(0x18uLL);
        v12 = *(a1 + 28) + 1;
        *(a1 + 28) = v12;
        v13 = *(a1 + 56);
        v14 = *(v13 + 8);
        *v11 = &unk_28521A408;
        v11[1] = v14;
        *(v11 + 4) = v12;
        *(v13 + 8) = v11;
        *(a1 + 56) = v11;
      }

      while (v10 != a3)
      {
        v21 = *(a1 + 56);
        v22 = *(a1 + 28);
        v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v10, a3);
        if (v23 == v10)
        {
          break;
        }

        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v23, a3, v21, (v22 + 1), (*(a1 + 28) + 1));
        v15 = v24 == v10;
        v10 = v24;
        if (v15)
        {
          goto LABEL_35;
        }
      }

      v24 = v10;
LABEL_35:
      if (v24 == a3 || (&v24->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v24->__traits_.__loc_.__locale_) != 92 || BYTE1(v24->__traits_.__loc_.__locale_) != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      result = v24 + 2 * (BYTE1(v24->__traits_.__loc_.__locale_) == 41);
      if ((*(a1 + 24) & 2) == 0)
      {
        v25 = result;
        v17 = operator new(0x18uLL);
        result = v25;
        v18 = *(a1 + 56);
        v26 = *(v18 + 8);
        *v17 = &unk_28521A450;
        v17[1] = v26;
        *(v17 + 4) = v12;
        goto LABEL_41;
      }
    }

    else if (((v9 & 0xF8) == 0x30 || (v9 & 0xFE) == 0x38) && (v9 - 49) <= 8)
    {
      if ((v9 - 48) > *(a1 + 28))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      v20 = result;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v9 - 48);
      return v20 + 2;
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = this;
  if (this == a3)
  {
    return v6;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (v6 + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92 || BYTE1(this->__traits_.__loc_.__locale_) != 123)
  {
    return v6;
  }

  v9 = (this + 2 * (BYTE1(this->__traits_.__loc_.__locale_) == 123));
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = (&v9->__traits_.__loc_.__locale_ + 1);
  if ((&v9->__traits_.__loc_.__locale_ + 1) != a3)
  {
    while (1)
    {
      v13 = LOBYTE(v12->__traits_.__loc_.__locale_);
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      v12 = (v12 + 1);
      if (v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = (&v12->__traits_.__loc_.__locale_ + 1);
  v15 = LOBYTE(v12->__traits_.__loc_.__locale_);
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && LOBYTE(v14->__traits_.__loc_.__locale_) == 125)
    {
      v19 = &v12->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v11, a4, __mexp_begin, __mexp_end, 1);
      return v19;
    }

LABEL_42:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v14 != a3 && ((v16 = LOBYTE(v14->__traits_.__loc_.__locale_), (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = (&v12->__traits_.__loc_.__locale_ + 2);
    if ((&v12->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v20 = LOBYTE(v14->__traits_.__loc_.__locale_);
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        v14 = (v14 + 1);
        if (v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || (&v14->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v14->__traits_.__loc_.__locale_) != 92 || BYTE1(v14->__traits_.__loc_.__locale_) != 125)
  {
    goto LABEL_42;
  }

  v18 = v14 + 2 * (BYTE1(v14->__traits_.__loc_.__locale_) == 125);
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v17, a4, __mexp_begin, __mexp_end, 1);
      return v18;
    }

LABEL_41:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
  return v18;
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
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

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (this == a3)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
    if (v11 != this)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v9 = (locale_low - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_22:
    if ((locale_low - 123) >= 2)
    {
LABEL_23:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
      v11 = &this->__traits_.__loc_.__locale_ + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
  v11 = v10;
  if (v10 == this)
  {
    if (LOBYTE(v10->__traits_.__loc_.__locale_) == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = &unk_28521A600;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
  }

LABEL_9:
  if (v11 == this && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_28521A0F0;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 28) + 1;
          *(a1 + 28) = v21;
          v22 = *(a1 + 56);
          v23 = *(v22 + 8);
          *v20 = &unk_28521A408;
          v20[1] = v23;
          *(v20 + 4) = v21;
          *(v22 + 8) = v20;
          *(a1 + 56) = v20;
        }

        ++*(a1 + 36);
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v11 + 1, a3);
        if (v24 == a3 || (v11 = v24, *v24 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v25 = operator new(0x18uLL);
          v26 = *(a1 + 56);
          v27 = *(v26 + 8);
          *v25 = &unk_28521A450;
          v25[1] = v27;
          *(v25 + 4) = v21;
          *(v26 + 8) = v25;
          *(a1 + 56) = v25;
        }

        --*(a1 + 36);
        goto LABEL_30;
      case '^':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_28521A0A8;
        break;
      default:
        goto LABEL_31;
    }

    *v16 = v19;
    *(v16 + 16) = v17;
    *(v18 + 8) = v16;
    *(a1 + 56) = v16;
LABEL_30:
    ++v11;
  }

LABEL_31:
  if (v11 == this)
  {
    return v11;
  }

LABEL_32:
  v28 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v28);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3 || (&this->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(this->__traits_.__loc_.__locale_) != 92)
  {
    return this;
  }

  v3 = BYTE1(this->__traits_.__loc_.__locale_);
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return &v5->__traits_.__loc_.__locale_ + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = &this->__traits_.__loc_.__locale_ + 1;

    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7, a3, 0);
  }

  else
  {
    v8 = this;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return v8 + v10;
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = &a2->first + 1; i != a3; ++i)
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
            {
              goto LABEL_28;
            }
          }

          else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
      }

      std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }
      }

      else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    this->__end_ = this->__begin_;
    return result;
  }

  if ((std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (this->__end_ == this->__begin_)
  {
    begin = v11;
  }

  else
  {
    begin = this->__begin_;
  }

  first = begin->first;
  this[2].__end_ = begin->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = begin->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(char **a1, uint64_t a2, char *a3, uint64_t *a4, char a5)
{
  v8 = a4[6];
  v9 = a4[1] - *a4;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 - *a1;
  v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
  v15 = v10 - v14;
  if (v10 <= v14)
  {
    if (v10 < v14)
    {
      v12 = &v11[v9];
      a1[1] = &v11[v9];
    }

    if (v12 == v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v16 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v12) >> 3) >= v15)
    {
      v21 = &v12[24 * v15];
      v34 = 24 * v10 - 8 * (v13 >> 3);
      do
      {
        *v12 = 0;
        *(v12 + 1) = 0;
        v12[16] = 0;
        v12 += 24;
        v34 -= 24;
      }

      while (v34);
      a1[1] = v21;
    }

    else
    {
      v36 = a2;
      v37 = a5;
      if (v10 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v38 = a4[6];
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v11) >> 3);
      v18 = 0x5555555555555556 * ((v16 - v11) >> 3);
      if (v18 <= v10)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      }

      if (v17 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v18;
      }

      if (v19 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v20 = operator new(24 * v19);
      v21 = &v20[24 * v15 + v13];
      v22 = 24 * v10 - 8 * (v13 >> 3);
      v23 = &v20[v13];
      do
      {
        *v23 = 0;
        *(v23 + 1) = 0;
        v23[16] = 0;
        v23 += 24;
        v22 -= 24;
      }

      while (v22);
      if (v11 != v12)
      {
        v24 = v11;
        v25 = v20;
        do
        {
          v26 = *v24;
          *(v25 + 2) = *(v24 + 2);
          *v25 = v26;
          v25 += 24;
          v24 += 24;
        }

        while (v24 != v12);
      }

      *a1 = v20;
      a1[1] = v21;
      a1[2] = &v20[24 * v19];
      a5 = v37;
      a2 = v36;
      v8 = v38;
      if (v11)
      {
        operator delete(v11);
        v8 = v38;
        a2 = v36;
        a5 = v37;
        v21 = a1[1];
      }
    }

    v11 = *a1;
    v12 = v21;
    if (v21 == *a1)
    {
LABEL_32:
      v31 = a2 - v8;
      goto LABEL_33;
    }
  }

  v27 = 0;
  v28 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3);
  v29 = *a4;
  v30 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
  v31 = a2 - v8;
  if (v28 <= 1)
  {
    v28 = 1;
  }

  v32 = v11 + 16;
  do
  {
    if (v30 <= v27)
    {
      v33 = a4 + 3;
    }

    else
    {
      v33 = v29;
    }

    *(v32 - 2) = v31 + *v33;
    *(v32 - 1) = v31 + v33[1];
    *v32 = *(v33 + 16);
    v32 += 24;
    ++v27;
    v29 += 3;
  }

  while (v28 != v27);
LABEL_33:
  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v35 = (v31 + a4[6]);
  a1[6] = v35;
  a1[7] = (v31 + a4[7]);
  *(a1 + 64) = *(a4 + 64);
  a1[9] = (v31 + a4[9]);
  a1[10] = (v31 + a4[10]);
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v35;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v158 = 0u;
  v159 = 0u;
  v157 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_167;
  }

  *v156 = 0;
  memset(&v156[8], 0, 85);
  std::deque<std::__state<char>>::__add_back_capacity(&v157);
  v10 = 0xC30C30C30C30C30DLL;
  v11 = *(*(&v157 + 1) + 8 * ((v159.i64[0] + v159.i64[1]) / 0x2AuLL)) + 96 * ((v159.i64[0] + v159.i64[1]) % 0x2AuLL);
  v12 = *&v156[16];
  *v11 = *v156;
  *(v11 + 16) = v12;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = 0;
  memset(&v156[32], 0, 24);
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  memset(&v156[56], 0, 24);
  v13 = *&v156[80];
  *(v11 + 85) = *&v156[85];
  *(v11 + 80) = v13;
  v15 = v159.i64[1];
  v14 = v159.i64[0];
  v16 = ++v159.i64[1];
  v17 = *(&v157 + 1);
  v18 = *(a1 + 32);
  v19 = *(*(&v157 + 1) + 8 * ((v159.i64[0] + v15) / 0x2AuLL)) + 96 * ((v159.i64[0] + v15) % 0x2AuLL);
  *v19 = 0;
  *(v19 + 8) = a2;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = *(v19 + 56);
  v21 = (*(v19 + 64) - v20) >> 4;
  v148 = a4;
  if (v18 <= v21)
  {
    if (v18 < v21)
    {
      *(v19 + 64) = v20 + 16 * v18;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v19 + 56), v18 - v21);
    v16 = v159.i64[1];
    v14 = v159.i64[0];
    v17 = *(&v157 + 1);
  }

  v149 = 0;
  v150 = 0;
  v22 = 0;
  v23 = *(v17 + 8 * ((v14 + v16 - 1) / 0x2AuLL)) + 96 * ((v14 + v16 - 1) % 0x2AuLL);
  *(v23 + 80) = v6;
  v155 = a3 - a2;
  *(v23 + 88) = a5;
  *(v23 + 92) = a6;
  do
  {
    if ((++v22 & 0xFFF) == 0 && (v22 >> 12) >= v155)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v25 = v16 + v159.i64[0] - 1;
    v26 = v10;
    v27 = (((v25 >> 1) * v10) >> 64) >> 4;
    v28 = *(*(&v157 + 1) + 8 * v27) + 96 * (v25 - 42 * v27);
    v29 = *(v28 + 80);
    if (v29)
    {
      (*(*v29 + 16))(v29, v28);
    }

    v30 = *v28;
    if (*v28 <= -995)
    {
      if (v30 != -1000)
      {
        if (v30 == -999)
        {
          goto LABEL_9;
        }

        if (v30 != -995)
        {
LABEL_181:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        v31 = v159.i64[0];
        v32 = *(&v157 + 1);
        v33 = v158;
        if (v159.i64[0])
        {
LABEL_129:
          v111 = (((v31 >> 1) * v10) >> 64) >> 4;
          v112 = &v32[8 * v111];
          v113 = *v112 + 96 * (v31 - 42 * v111);
          if (v33 == v32)
          {
            v113 = 0;
          }

          if (v113 == *v112)
          {
            v113 = *(v112 - 1) + 4032;
          }

          v114 = *(v28 + 16);
          *(v113 - 96) = *v28;
          *(v113 - 80) = v114;
          *(v113 - 56) = 0;
          *(v113 - 48) = 0;
          *(v113 - 64) = 0;
          *(v113 - 64) = *(v28 + 32);
          *(v113 - 48) = *(v28 + 48);
          *(v28 + 32) = 0;
          *(v28 + 40) = 0;
          *(v28 + 48) = 0;
          *(v113 - 40) = 0;
          *(v113 - 32) = 0;
          *(v113 - 24) = 0;
          *(v113 - 40) = *(v28 + 56);
          *(v113 - 24) = *(v28 + 72);
          *(v28 + 56) = 0;
          *(v28 + 64) = 0;
          *(v28 + 72) = 0;
          v115 = *(v28 + 80);
          *(v113 - 11) = *(v28 + 85);
          *(v113 - 16) = v115;
          v116 = vdupq_laneq_s64(v159, 1);
          v159 = vaddq_s64(v159, xmmword_24016B440);
          v116.i64[0] = vaddq_s64(v116, v159).u64[0];
          v117 = (((v116.i64[0] >> 1) * v10) >> 64) >> 4;
          v118 = (*(*(&v157 + 1) + 8 * v117) + 96 * (v116.i64[0] - 42 * v117));
          v119 = v118[7];
          if (v119)
          {
            v118[8] = v119;
            operator delete(v119);
          }

          v120 = v118[4];
          if (v120)
          {
            v118[5] = v120;
            operator delete(v120);
          }

          v40 = v158;
          v41 = v158 == *(&v157 + 1);
          v42 = 42 * ((v158 - *(&v157 + 1)) >> 3) - 1;
          goto LABEL_138;
        }

        v56 = v158 - *(&v157 + 1);
        v57 = 42 * ((v158 - *(&v157 + 1)) >> 3) - 1;
        if (v158 == *(&v157 + 1))
        {
          v57 = 0;
        }

        if ((v57 - v159.i64[1]) >= 0x2A)
        {
          v159.i64[0] = 42;
          v59 = (v158 - 8);
          v58 = *(v158 - 8);
          *&v158 = v158 - 8;
          v60 = v157;
          if (*(&v157 + 1) != v157)
          {
            v61 = *(&v157 + 1);
            v10 = v26;
            goto LABEL_121;
          }

          if (v59 < *(&v158 + 1))
          {
            v88 = (((*(&v158 + 1) - v59) >> 3) + 1) / 2;
            v61 = 8 * v88 + *(&v157 + 1);
            if (v59 != *(&v157 + 1))
            {
              memmove((8 * v88 + *(&v157 + 1)), *(&v157 + 1), &v59[-*(&v157 + 1)]);
              v59 = v158;
            }

            v10 = v26;
            *&v158 = &v59[8 * v88];
            goto LABEL_121;
          }

          if (*(&v158 + 1) == *(&v157 + 1))
          {
            v92 = 1;
          }

          else
          {
            v92 = (*(&v158 + 1) - *(&v157 + 1)) >> 2;
          }

          if (!(v92 >> 61))
          {
            v93 = operator new(8 * v92);
            v94 = v92;
            v95 = (v92 + 3) >> 2;
            v61 = &v93[8 * v95];
            v96 = v61;
            if (v59 != v32)
            {
              v96 = (v61 + v59 - v32);
              v97 = &v93[8 * v95];
              v98 = v32;
              if (v56 - 16 < 0x18)
              {
                goto LABEL_186;
              }

              v99 = 8 * v95;
              v97 = &v93[8 * v95];
              v98 = v32;
              if ((v97 - v32) < 0x20)
              {
                goto LABEL_186;
              }

              v100 = ((v56 - 16) >> 3) + 1;
              v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
              v97 = (v61 + v101);
              v98 = &v32[v101];
              v102 = (v32 + 16);
              v103 = &v93[v99 + 16];
              v104 = v100 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v105 = *v102;
                *(v103 - 1) = *(v102 - 1);
                *v103 = v105;
                v102 += 2;
                v103 += 32;
                v104 -= 4;
              }

              while (v104);
              if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_186:
                do
                {
                  v106 = *v98;
                  v98 += 8;
                  *v97 = v106;
                  v97 += 8;
                }

                while (v97 != v96);
              }
            }

            *&v157 = v93;
            *(&v157 + 1) = v61;
            *&v158 = v96;
            *(&v158 + 1) = &v93[8 * v94];
            v10 = v26;
            if (v32)
            {
              operator delete(v60);
              v61 = *(&v157 + 1);
            }

LABEL_121:
            *(v61 - 8) = v58;
            v82 = (v61 - 8);
            *(&v157 + 1) = v82;
LABEL_128:
            v31 = v159.i64[0];
            v33 = v158;
            v32 = v82;
            goto LABEL_129;
          }

          goto LABEL_183;
        }

        if (v56 < *(&v158 + 1) - v157)
        {
          if (*(&v157 + 1) == v157)
          {
            *v156 = operator new(0xFC0uLL);
            std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(&v157, v156);
            *v156 = *(v158 - 8);
            *&v158 = v158 - 8;
          }

          else
          {
            *v156 = operator new(0xFC0uLL);
          }

          std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(&v157, v156);
          v82 = *(&v157 + 1);
          v91 = 21;
          if (v158 - *(&v157 + 1) != 8)
          {
            v91 = v159.i64[0] + 42;
          }

          v159.i64[0] = v91;
          v10 = v26;
          goto LABEL_128;
        }

        if (*(&v158 + 1) == v157)
        {
          v81 = 1;
        }

        else
        {
          v81 = (*(&v158 + 1) - v157) >> 2;
        }

        if (v81 >> 61)
        {
LABEL_183:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v82 = operator new(8 * v81);
        v83 = operator new(0xFC0uLL);
        v84 = v83;
        if (v81)
        {
          v85 = &v82[8 * v81];
          *v82 = v83;
          v86 = v82 + 8;
          v41 = v32 == v33;
          v87 = v82;
          if (!v41)
          {
            goto LABEL_144;
          }

          goto LABEL_124;
        }

        v107 = operator new(8uLL);
        v85 = v107 + 8;
        operator delete(v82);
        v32 = *(&v157 + 1);
        v108 = v158;
        v82 = v107;
        *v107 = v84;
        v86 = v107 + 8;
        v41 = v32 == v108;
        v87 = v82;
        if (v41)
        {
LABEL_124:
          v109 = v157;
          *&v157 = v87;
          *(&v157 + 1) = v82;
          *&v158 = v86;
          *(&v158 + 1) = v85;
          v110 = v159.i64[0] + 42;
          if (v86 - v82 == 8)
          {
            v110 = 21;
          }

          v159.i64[0] = v110;
          v10 = v26;
          if (v109)
          {
            operator delete(v109);
            v82 = *(&v157 + 1);
          }

          goto LABEL_128;
        }

LABEL_144:
        while (2)
        {
          if (v86 != v85)
          {
            v122 = v82;
            goto LABEL_143;
          }

          v152 = v87;
          if (v82 > v87)
          {
            v124 = (((v82 - v87) >> 3) + 1 + ((((v82 - v87) >> 3) + 1) >> 63)) >> 1;
            v122 = &v82[-8 * v124];
            if (v86 != v82)
            {
              memmove(&v82[-8 * v124], v82, v86 - v82);
            }

            v86 = &v122[v86 - v82];
            goto LABEL_143;
          }

          if (v86 == v87)
          {
            v125 = 1;
          }

          else
          {
            v125 = (v86 - v87) >> 2;
          }

          if (v125 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v126 = operator new(8 * v125);
          v87 = v126;
          v127 = v125 >> 2;
          v122 = &v126[8 * (v125 >> 2)];
          v128 = v86 - v82;
          v41 = v86 == v82;
          v86 = v122;
          if (!v41)
          {
            v86 = &v122[v128];
            v129 = v128 - 8;
            if (v129 < 0x18 || (v130 = 8 * v127, (&v126[8 * v127] - v82) < 0x20))
            {
              v131 = &v126[8 * (v125 >> 2)];
              v132 = v82;
              goto LABEL_157;
            }

            v134 = (v129 >> 3) + 1;
            v135 = 8 * (v134 & 0x3FFFFFFFFFFFFFFCLL);
            v131 = &v122[v135];
            v132 = &v82[v135];
            v136 = (v82 + 16);
            v137 = &v126[v130 + 16];
            v138 = v134 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v139 = *v136;
              *(v137 - 1) = *(v136 - 1);
              *v137 = v139;
              v136 += 2;
              v137 += 32;
              v138 -= 4;
            }

            while (v138);
            if (v134 != (v134 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_157:
                v133 = *v132;
                v132 += 8;
                *v131 = v133;
                v131 += 8;
              }

              while (v131 != v86);
            }
          }

          v85 = &v126[8 * v125];
          if (v152)
          {
            operator delete(v152);
          }

LABEL_143:
          v123 = *v32;
          v32 += 8;
          *v86 = v123;
          v86 += 8;
          v82 = v122;
          if (v32 == v158)
          {
            goto LABEL_124;
          }

          continue;
        }
      }

      v34 = *(v28 + 16);
      if ((a5 & 0x20) != 0 && v34 == a2)
      {
        goto LABEL_29;
      }

      if ((a5 & 0x1000) != 0 && v34 != a3)
      {
        v51 = v159.i64[1] + v159.i64[0] - 1;
        v52 = (((v51 >> 1) * v10) >> 64) >> 4;
        v53 = (*(*(&v157 + 1) + 8 * v52) + 96 * (v51 - 42 * v52));
        v54 = v53[7];
        if (v54)
        {
          v53[8] = v54;
          operator delete(v54);
        }

        v55 = v53[4];
        if (v55)
        {
          v53[5] = v55;
          operator delete(v55);
        }

        v40 = v158;
        v41 = v158 == *(&v157 + 1);
        v42 = 42 * ((v158 - *(&v157 + 1)) >> 3) - 1;
        goto LABEL_138;
      }

      v62 = v34 - *(v28 + 8);
      v63 = v149;
      if (v149 <= v62)
      {
        v63 = v62;
      }

      if ((v150 & 1) == 0)
      {
        v63 = v62;
      }

      if (v63 == v155)
      {
        v64 = *(&v157 + 1);
        v65 = v158;
        if (v158 == *(&v157 + 1))
        {
          v159.i64[1] = 0;
          v89 = 0;
        }

        else
        {
          v66 = (((v159.i64[0] >> 1) * v10) >> 64) >> 4;
          v67 = (*(&v157 + 1) + 8 * v66);
          v68 = (*v67 + 96 * (v159.i64[0] - 42 * v66));
          v69 = ((((v159.i64[1] + v159.i64[0]) >> 1) * v10) >> 64) >> 4;
          v70 = *(*(&v157 + 1) + 8 * v69) + 96 * (v159.i64[1] + v159.i64[0] - 42 * v69);
          if (v68 != v70)
          {
            do
            {
              v71 = v68[7];
              if (v71)
              {
                v68[8] = v71;
                operator delete(v71);
              }

              v72 = v68[4];
              if (v72)
              {
                v68[5] = v72;
                operator delete(v72);
              }

              v68 += 12;
              if ((v68 - *v67) == 4032)
              {
                v73 = v67[1];
                ++v67;
                v68 = v73;
              }
            }

            while (v68 != v70);
            v64 = *(&v157 + 1);
            v65 = v158;
          }

          v159.i64[1] = 0;
          v89 = (v65 - v64) >> 3;
          if (v89 >= 3)
          {
            do
            {
              operator delete(*v64);
              v64 = (*(&v157 + 1) + 8);
              *(&v157 + 1) = v64;
              v89 = (v158 - v64) >> 3;
            }

            while (v89 > 2);
          }
        }

        if (v89 == 1)
        {
          v90 = 21;
LABEL_102:
          v159.i64[0] = v90;
        }

        else if (v89 == 2)
        {
          v90 = 42;
          goto LABEL_102;
        }

        v150 = 1;
        v149 = a3 - a2;
        goto LABEL_9;
      }

      v149 = v63;
      v74 = v159.i64[1] + v159.i64[0] - 1;
      v75 = (((v74 >> 1) * v10) >> 64) >> 4;
      v76 = (*(*(&v157 + 1) + 8 * v75) + 96 * (v74 - 42 * v75));
      v77 = v76[7];
      if (v77)
      {
        v76[8] = v77;
        operator delete(v77);
      }

      v78 = v76[4];
      if (v78)
      {
        v76[5] = v78;
        operator delete(v78);
      }

      v79 = 42 * ((v158 - *(&v157 + 1)) >> 3) - 1;
      v80 = v159;
      --v159.i64[1];
      if (v158 == *(&v157 + 1))
      {
        v79 = 0;
      }

      if ((v79 - (v80.i64[1] + v80.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v158 - 8));
        *&v158 = v158 - 8;
      }

      v150 = 1;
    }

    else
    {
      if (v30 <= -993)
      {
        if (v30 == -994)
        {
          goto LABEL_9;
        }

        if (v30 != -993)
        {
          goto LABEL_181;
        }

LABEL_29:
        v35 = v159.i64[1] + v159.i64[0] - 1;
        v36 = (((v35 >> 1) * v10) >> 64) >> 4;
        v37 = (*(*(&v157 + 1) + 8 * v36) + 96 * (v35 - 42 * v36));
        v38 = v37[7];
        if (v38)
        {
          v37[8] = v38;
          operator delete(v38);
        }

        v39 = v37[4];
        if (v39)
        {
          v37[5] = v39;
          operator delete(v39);
        }

        v40 = v158;
        v41 = v158 == *(&v157 + 1);
        v42 = 42 * ((v158 - *(&v157 + 1)) >> 3) - 1;
LABEL_138:
        v121 = v159;
        --v159.i64[1];
        if (v41)
        {
          v42 = 0;
        }

        if ((v42 - (v121.i64[1] + v121.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v40 - 8));
          *&v158 = v158 - 8;
        }

        goto LABEL_9;
      }

      if (v30 == -992)
      {
        *&v43 = 0xAAAAAAAAAAAAAAAALL;
        *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v156[64] = v43;
        *&v156[80] = v43;
        *&v156[32] = v43;
        *&v156[48] = v43;
        *v156 = v43;
        *&v156[16] = v43;
        std::__state<char>::__state(v156, v28);
        (*(**(v28 + 80) + 24))(*(v28 + 80), 1, v28);
        (*(**&v156[80] + 24))(*&v156[80], 0, v156);
        v44 = *(&v157 + 1);
        if (v158 == *(&v157 + 1))
        {
          v45 = 0;
        }

        else
        {
          v45 = 42 * ((v158 - *(&v157 + 1)) >> 3) - 1;
        }

        v46 = v159.i64[1] + v159.i64[0];
        if (v45 == v159.i64[1] + v159.i64[0])
        {
          std::deque<std::__state<char>>::__add_back_capacity(&v157);
          v44 = *(&v157 + 1);
          v46 = v159.i64[1] + v159.i64[0];
        }

        v47 = (((v46 >> 1) * v10) >> 64) >> 4;
        v48 = *(v44 + 8 * v47) + 96 * (v46 - 42 * v47);
        v49 = *&v156[16];
        *v48 = *v156;
        *(v48 + 16) = v49;
        *(v48 + 40) = 0;
        *(v48 + 48) = 0;
        *(v48 + 32) = 0;
        *(v48 + 32) = *&v156[32];
        *(v48 + 48) = *&v156[48];
        memset(&v156[32], 0, 24);
        *(v48 + 56) = 0;
        *(v48 + 64) = 0;
        *(v48 + 72) = 0;
        *(v48 + 56) = *&v156[56];
        *(v48 + 72) = *&v156[72];
        memset(&v156[56], 0, 24);
        v50 = *&v156[80];
        *(v48 + 85) = *&v156[85];
        *(v48 + 80) = v50;
        ++v159.i64[1];
        if (*&v156[56])
        {
          *&v156[64] = *&v156[56];
          operator delete(*&v156[56]);
        }

        if (*&v156[32])
        {
          *&v156[40] = *&v156[32];
          operator delete(*&v156[32]);
        }
      }

      else if (v30 != -991)
      {
        goto LABEL_181;
      }
    }

LABEL_9:
    v16 = v159.i64[1];
  }

  while (v159.i64[1]);
  if (v150)
  {
    v140 = *v148;
    *v140 = a2;
    *(v140 + 8) = a2 + v149;
    v141 = 1;
    *(v140 + 16) = 1;
    v142 = *(&v157 + 1);
    v143 = v158;
    v159.i64[1] = 0;
    v144 = (v158 - *(&v157 + 1)) >> 3;
    if (v144 < 3)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

LABEL_167:
  v141 = 0;
  v142 = *(&v157 + 1);
  v143 = v158;
  v159.i64[1] = 0;
  v144 = (v158 - *(&v157 + 1)) >> 3;
  if (v144 < 3)
  {
    goto LABEL_169;
  }

  do
  {
LABEL_168:
    operator delete(*v142);
    v143 = v158;
    v142 = (*(&v157 + 1) + 8);
    *(&v157 + 1) = v142;
    v144 = (v158 - v142) >> 3;
  }

  while (v144 > 2);
LABEL_169:
  if (v144 == 1)
  {
    v145 = 21;
    goto LABEL_173;
  }

  if (v144 == 2)
  {
    v145 = 42;
LABEL_173:
    v159.i64[0] = v145;
  }

  if (v142 != v143)
  {
    do
    {
      v146 = *v142++;
      operator delete(v146);
    }

    while (v142 != v143);
    if (v158 != *(&v157 + 1))
    {
      *&v158 = v158 + ((*(&v157 + 1) - v158 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v157)
  {
    operator delete(v157);
  }

  return v141;
}

void sub_240165D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  operator delete(v15);
  operator delete(v16);
  std::deque<std::__state<char>>::~deque[abi:ne200100](v17 - 144);
  _Unwind_Resume(a1);
}

void sub_240165D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  operator delete(v15);
  std::deque<std::__state<char>>::~deque[abi:ne200100](v16 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v120 = 0;
  v121 = 0;
  v122 = 0;
  *&v119[36] = -1431655766;
  *v117 = 0xAAAAAAAA00000000;
  memset(&v117[8], 0, 32);
  *v118 = 0u;
  memset(v119, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
    v11 = 0;
    v15 = 0;
    goto LABEL_153;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v115 = 0;
  memset(&v115[8], 0, 85);
  v11 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v120, v115);
  v121 = v11;
  if (*&v115[56])
  {
    operator delete(*&v115[56]);
  }

  if (*&v115[32])
  {
    operator delete(*&v115[32]);
  }

  v12 = *(v11 - 8);
  *(v11 - 24) = 0;
  *(v11 - 11) = a2;
  *(v11 - 10) = a2;
  *(v11 - 9) = a3;
  v13 = *(a1 + 28);
  v14 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 - 7) - v12) >> 3);
  if (v13 <= v14)
  {
    if (v13 < v14)
    {
      *(v11 - 7) = v12 + 24 * v13;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v11 - 64), v13 - v14, &__x);
  }

  v16 = *(v11 - 5);
  v17 = *(a1 + 32);
  v18 = (*(v11 - 4) - v16) >> 4;
  if (v17 <= v18)
  {
    if (v17 < v18)
    {
      *(v11 - 4) = v16 + 16 * v17;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v11 - 40), v17 - v18);
  }

  v111 = a4;
  v112 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = (a3 - a2);
  *(v11 - 2) = v6;
  *(v11 - 2) = a5;
  *(v11 - 4) = a6;
  do
  {
    v23 = (++v21 & 0xFFF) != 0 || (v21 >> 12) < v22;
    if (!v23)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v25 = v11 - 16;
    v24 = *(v11 - 2);
    v26 = v11 - 96;
    if (v24)
    {
      (*(*v24 + 16))(v24, v11 - 96);
    }

    v27 = *v26;
    if (*v26 <= -994)
    {
      if ((v27 + 995) < 2)
      {
        goto LABEL_17;
      }

      if (v27 != -1000)
      {
LABEL_167:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }

      v28 = *(v11 - 10);
      if ((a5 & 0x20) != 0 && v28 == a2 || (a5 & 0x1000) != 0 && v28 != v112)
      {
LABEL_35:
        v29 = v121;
        v30 = *(v121 - 5);
        if (v30)
        {
          *(v121 - 4) = v30;
          operator delete(v30);
        }

        v31 = *(v29 - 8);
        if (v31)
        {
          *(v29 - 7) = v31;
          operator delete(v31);
        }

        v121 = v29 - 96;
        goto LABEL_17;
      }

      v36 = &v28[-*(v11 - 11)];
      if ((v20 & (v19 >= v36)) == 0)
      {
        v37 = *(v11 - 5);
        *v117 = *v26;
        *&v117[16] = v37;
        if (v117 != v26)
        {
          v38 = *(v11 - 8);
          v39 = *(v11 - 7);
          v40 = v39 - v38;
          v41 = v118[1];
          v42 = *&v117[32];
          if (v118[1] - *&v117[32] >= (v39 - v38))
          {
            v47 = v118[0];
            if (v118[0] - *&v117[32] >= v40)
            {
              while (v38 != v39)
              {
                *v42 = *v38;
                v42[16] = v38[16];
                v38 += 24;
                v42 += 24;
              }
            }

            else
            {
              v48 = &v38[v118[0] - *&v117[32]];
              if (v118[0] != *&v117[32])
              {
                do
                {
                  *v42 = *v38;
                  v42[16] = v38[16];
                  v38 += 24;
                  v42 += 24;
                }

                while (v38 != v48);
              }

              if (v48 == v39)
              {
                v42 = v47;
              }

              else
              {
                v42 = v47;
                do
                {
                  v49 = *v48;
                  *(v47 + 2) = *(v48 + 2);
                  *v47 = v49;
                  v47 += 24;
                  v48 += 24;
                  v42 += 24;
                }

                while (v48 != v39);
              }
            }
          }

          else
          {
            v110 = v36;
            if (*&v117[32])
            {
              v118[0] = *&v117[32];
              operator delete(*&v117[32]);
              v41 = 0;
              *&v117[32] = 0;
              *v118 = 0uLL;
            }

            v43 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
            if (v43 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_169;
            }

            v44 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
            if (2 * v44 > v43)
            {
              v43 = 2 * v44;
            }

            v45 = v44 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v43;
            if (v45 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_169:
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v46 = operator new(24 * v45);
            v42 = v46;
            *&v117[32] = v46;
            v118[0] = v46;
            v118[1] = &v46[24 * v45];
            if (v38 != v39)
            {
              memcpy(v46, v38, 24 * ((v40 - 24) / 0x18uLL) + 24);
              v42 += 24 * ((v40 - 24) / 0x18uLL) + 24;
            }

            v36 = v110;
          }

          v118[0] = v42;
          v50 = *(v11 - 5);
          v51 = *(v11 - 4);
          v52 = v51 - v50;
          v53 = *&v119[16];
          v54 = *v119;
          if (*&v119[16] - *v119 >= (v51 - v50))
          {
            v60 = *&v119[8];
            if (*&v119[8] - *v119 >= v52)
            {
              if (v50 == v51)
              {
                v59 = *v119;
              }

              else
              {
                v64 = v52 - 16;
                if ((v52 - 16) < 0x50)
                {
                  goto LABEL_94;
                }

                v86 = *v119 + 8 >= &v50[(v64 & 0xFFFFFFFFFFFFFFF0) + 16] || (v50 + 8) >= *v119 + (v64 & 0xFFFFFFFFFFFFFFF0) + 16;
                v87 = !v86;
                if (v50 < *v119 + 8 + (v64 & 0xFFFFFFFFFFFFFFF0) && *v119 < &v50[(v64 & 0xFFFFFFFFFFFFFFF0) + 8])
                {
                  goto LABEL_94;
                }

                if (v87)
                {
                  goto LABEL_94;
                }

                v89 = (v64 >> 4) + 1;
                v90 = 16 * (v89 & 0x1FFFFFFFFFFFFFFCLL);
                v59 = (*v119 + v90);
                v91 = &v50[v90];
                v92 = (v50 + 32);
                v93 = (*v119 + 32);
                v94 = v89 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v96 = *(v92 - 2);
                  v95 = *(v92 - 1);
                  v98 = *v92;
                  v97 = v92[1];
                  v92 += 4;
                  *(v93 - 2) = v96;
                  *(v93 - 1) = v95;
                  *v93 = v98;
                  v93[1] = v97;
                  v93 += 4;
                  v94 -= 4;
                }

                while (v94);
                v54 = v59;
                v50 = v91;
                if (v89 != (v89 & 0x1FFFFFFFFFFFFFFCLL))
                {
LABEL_94:
                  v59 = v54;
                  do
                  {
                    *v59 = *v50;
                    v59[1] = *(v50 + 1);
                    v50 += 16;
                    v59 += 2;
                  }

                  while (v50 != v51);
                }
              }
            }

            else
            {
              v61 = &v50[*&v119[8] - *v119];
              if (*&v119[8] != *v119)
              {
                v62 = *&v119[8] - *v119 - 16;
                if (v62 < 0x50)
                {
                  goto LABEL_172;
                }

                v72 = *v119 + 8 >= &v50[(v62 & 0xFFFFFFFFFFFFFFF0) + 16] || (v50 + 8) >= *v119 + (v62 & 0xFFFFFFFFFFFFFFF0) + 16;
                v73 = !v72;
                if (v50 < *v119 + 8 + (v62 & 0xFFFFFFFFFFFFFFF0) && *v119 < &v50[(v62 & 0xFFFFFFFFFFFFFFF0) + 8])
                {
                  goto LABEL_172;
                }

                if (v73)
                {
                  goto LABEL_172;
                }

                v75 = (v62 >> 4) + 1;
                v76 = 16 * (v75 & 0x1FFFFFFFFFFFFFFCLL);
                v77 = (*v119 + v76);
                v78 = &v50[v76];
                v79 = (v50 + 32);
                v80 = (*v119 + 32);
                v81 = v75 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v83 = *(v79 - 2);
                  v82 = *(v79 - 1);
                  v85 = *v79;
                  v84 = v79[1];
                  v79 += 4;
                  *(v80 - 2) = v83;
                  *(v80 - 1) = v82;
                  *v80 = v85;
                  v80[1] = v84;
                  v80 += 4;
                  v81 -= 4;
                }

                while (v81);
                v54 = v77;
                v50 = v78;
                if (v75 != (v75 & 0x1FFFFFFFFFFFFFFCLL))
                {
LABEL_172:
                  do
                  {
                    *v54 = *v50;
                    v54[1] = *(v50 + 1);
                    v50 += 16;
                    v54 += 2;
                  }

                  while (v50 != v61);
                }
              }

              if (v61 == v51)
              {
                v59 = v60;
              }

              else
              {
                v59 = v60;
                do
                {
                  v63 = *v61;
                  v61 += 16;
                  *v60++ = v63;
                  v59 += 2;
                }

                while (v61 != v51);
              }
            }
          }

          else
          {
            v55 = v36;
            if (*v119)
            {
              *&v119[8] = *v119;
              operator delete(*v119);
              v53 = 0;
              memset(v119, 0, 24);
            }

            v56 = v52 >> 4;
            if ((v52 >> 4) >> 60)
            {
              goto LABEL_168;
            }

            if (v53 >> 3 > v56)
            {
              v56 = v53 >> 3;
            }

            v57 = v53 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v56;
            if (v57 >> 60)
            {
LABEL_168:
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v58 = operator new(16 * v57);
            v59 = v58;
            *v119 = v58;
            *&v119[8] = v58;
            *&v119[16] = &v58[2 * v57];
            if (v50 != v51)
            {
              memcpy(v58, v50, v52 & 0xFFFFFFFFFFFFFFF0);
              v59 = (v59 + (v52 & 0xFFFFFFFFFFFFFFF0));
            }

            v36 = v55;
          }

          *&v119[8] = v59;
        }

        v65 = *v25;
        *&v119[29] = *(v25 + 5);
        *&v119[24] = v65;
        v19 = v36;
      }

      v66 = v121;
      if (v19 == v22)
      {
        v67 = v120;
        while (v66 != v67)
        {
          v68 = *(v66 - 5);
          if (v68)
          {
            *(v66 - 4) = v68;
            operator delete(v68);
          }

          v69 = *(v66 - 8);
          if (v69)
          {
            *(v66 - 7) = v69;
            operator delete(v69);
          }

          v66 -= 96;
        }

        v121 = v67;
        v20 = 1;
        v19 = v22;
      }

      else
      {
        v70 = *(v121 - 5);
        if (v70)
        {
          *(v121 - 4) = v70;
          operator delete(v70);
        }

        v71 = *(v66 - 8);
        if (v71)
        {
          *(v66 - 7) = v71;
          operator delete(v71);
        }

        v121 = v66 - 96;
        v20 = 1;
      }
    }

    else
    {
      switch(v27)
      {
        case -993:
          goto LABEL_35;
        case -992:
          *&v32 = 0xAAAAAAAAAAAAAAAALL;
          *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v115[64] = v32;
          *&v115[80] = v32;
          *&v115[32] = v32;
          *&v115[48] = v32;
          *v115 = v32;
          *&v115[16] = v32;
          std::__state<char>::__state(v115, v11 - 6);
          (*(**v25 + 24))(*v25, 1, v11 - 96);
          (*(**&v115[80] + 24))(*&v115[80], 0, v115);
          v33 = v121;
          if (v121 >= v122)
          {
            v121 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v120, v115);
            if (*&v115[56])
            {
              *&v115[64] = *&v115[56];
              operator delete(*&v115[56]);
            }
          }

          else
          {
            v34 = *&v115[16];
            *v121 = *v115;
            *(v33 + 1) = v34;
            *(v33 + 6) = 0;
            *(v33 + 7) = 0;
            *(v33 + 4) = 0;
            *(v33 + 5) = 0;
            *(v33 + 2) = *&v115[32];
            *(v33 + 6) = *&v115[48];
            *&v115[32] = 0;
            *&v115[40] = 0;
            *(v33 + 8) = 0;
            *(v33 + 9) = 0;
            *(v33 + 56) = *&v115[56];
            *(v33 + 9) = *&v115[72];
            memset(&v115[48], 0, 32);
            v35 = *&v115[80];
            *(v33 + 85) = *&v115[85];
            *(v33 + 10) = v35;
            v121 = v33 + 96;
          }

          if (*&v115[32])
          {
            *&v115[40] = *&v115[32];
            operator delete(*&v115[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_167;
      }
    }

LABEL_17:
    v15 = v120;
    v11 = v121;
  }

  while (v120 != v121);
  if ((v20 & 1) == 0)
  {
LABEL_153:
    v105 = 0;
    v106 = *v119;
    if (!*v119)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

  v99 = *v111;
  *v99 = a2;
  *(v99 + 8) = &v19[a2];
  *(v99 + 16) = 1;
  if (v118[0] != *&v117[32])
  {
    v100 = 0xAAAAAAAAAAAAAAABLL * ((v118[0] - *&v117[32]) >> 3);
    v101 = (*&v117[32] + 16);
    v102 = 1;
    do
    {
      v103 = v99 + 24 * v102;
      *v103 = *(v101 - 1);
      v104 = *v101;
      v101 += 24;
      *(v103 + 16) = v104;
      v23 = v100 > v102++;
    }

    while (v23);
  }

  v105 = 1;
  v106 = *v119;
  if (*v119)
  {
LABEL_154:
    *&v119[8] = v106;
    operator delete(v106);
  }

LABEL_155:
  if (*&v117[32])
  {
    v118[0] = *&v117[32];
    operator delete(*&v117[32]);
  }

  if (v15)
  {
    while (v11 != v15)
    {
      v107 = *(v11 - 5);
      if (v107)
      {
        *(v11 - 4) = v107;
        operator delete(v107);
      }

      v108 = *(v11 - 8);
      if (v108)
      {
        *(v11 - 7) = v108;
        operator delete(v108);
      }

      v11 -= 96;
    }

    operator delete(v15);
  }

  return v105;
}

void sub_2401667B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__state<char>::~__state(&a31);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v31 - 120));
  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFC0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = *(a1 + 8);
    v7 = *(a1 + 16);
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 8);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_240166B20(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(*(a1 + 40) + v4) / 0x2A] + 96 * ((*(a1 + 40) + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 21;
    goto LABEL_19;
  }

  if (v11 == 2)
  {
    v12 = 42;
LABEL_19:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_285219F58;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_285219FB0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    switch(v11)
    {
      case 0x40u:
LABEL_20:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      case 0x80u:
        v15 = memchr(a2, 10, a3 - a2);
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = a3;
        }

        if (v16 == a2)
        {
          v17 = operator new(0x10uLL);
          v18 = *(v10 + 8);
          v17[1] = v18;
          *(v10 + 8) = v17;
          *(a1 + 56) = v17;
          if (v16 != a3)
          {
            ++v16;
          }

          if (v16 == a3)
          {
            return a3;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, v16);
          if (v16 != a3)
          {
            ++v16;
          }

          if (v16 == a3)
          {
            return a3;
          }
        }

        v19 = *(a1 + 56);
        do
        {
          v29 = memchr(v16, 10, a3 - v16);
          if (v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = a3;
          }

          if (v30 == v16)
          {
            v20 = operator new(0x10uLL);
            v21 = *(v19 + 8);
            v20[1] = v21;
            *(v19 + 8) = v20;
            *(a1 + 56) = v20;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v16, v30);
          }

          v22 = operator new(0x18uLL);
          v23 = *(v19 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_28521A570;
          *(v10 + 8) = v22;
          *(v19 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v19 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v19 + 8);
          *v27 = &unk_28521A5B8;
          v27[1] = v28;
          *(v25 + 8) = v27;
          v19 = *(v19 + 8);
          *(a1 + 56) = v19;
          if (v30 == a3)
          {
            v16 = v30;
          }

          else
          {
            v16 = v30 + 1;
          }
        }

        while (v16 != a3);
        break;
      case 0x100u:
        v12 = memchr(a2, 10, a3 - a2);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = a3;
        }

        if (v13 == a2)
        {
          v31 = operator new(0x10uLL);
          v32 = *(v10 + 8);
          v31[1] = v32;
          *(v10 + 8) = v31;
          *(a1 + 56) = v31;
          if (v13 != a3)
          {
            ++v13;
          }

          if (v13 == a3)
          {
            return a3;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, v13);
          if (v13 != a3)
          {
            ++v13;
          }

          if (v13 == a3)
          {
            return a3;
          }
        }

        v33 = *(a1 + 56);
        do
        {
          v43 = memchr(v13, 10, a3 - v13);
          if (v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = a3;
          }

          if (v44 == v13)
          {
            v34 = operator new(0x10uLL);
            v35 = *(v33 + 8);
            v34[1] = v35;
            *(v33 + 8) = v34;
            *(a1 + 56) = v34;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v13, v44);
          }

          v36 = operator new(0x18uLL);
          v37 = *(v33 + 8);
          v36[1] = *(v10 + 8);
          v36[2] = v37;
          *v36 = &unk_28521A570;
          *(v10 + 8) = v36;
          *(v33 + 8) = 0;
          v38 = operator new(0x10uLL);
          v39 = *(a1 + 56);
          v40 = *(v39 + 8);
          v38[1] = v40;
          *(v33 + 8) = v38;
          *(v39 + 8) = 0;
          v41 = operator new(0x10uLL);
          v42 = *(v33 + 8);
          *v41 = &unk_28521A5B8;
          v41[1] = v42;
          *(v39 + 8) = v41;
          v33 = *(v33 + 8);
          *(a1 + 56) = v33;
          if (v44 == a3)
          {
            v13 = v44;
          }

          else
          {
            v13 = v44 + 1;
          }
        }

        while (v13 != a3);
        break;
      default:
        goto LABEL_66;
    }

    return a3;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 != 16)
    {
      if (v11 != 32)
      {
LABEL_66:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
      }

      goto LABEL_20;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  else
  {

    return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }
}

void sub_240167548(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v11, a3, v9, (v10 + 1), (*(a1 + 28) + 1));
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (*v8 == 124)
    {
      v22 = *(a1 + 56);
      v23 = v8 + 1;
      v24 = v8 + 1;
      while (1)
      {
        v8 = v24;
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &unk_28521A570;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &unk_28521A5B8;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v27, a3, v25, (v26 + 1), (*(a1 + 28) + 1));
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = &unk_28521A0A8;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v14, a3, v12, (v13 + 1), (*(a1 + 28) + 1));
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = &unk_28521A0F0;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = a1->__end_;
    v10 = v8 + 1;
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    first = v9->__first_;
    v12[1].__vftable = end->__first_;
    v12[2].__vftable = first;
    v12->__vftable = &unk_28521A570;
    end->__first_ = v12;
    v9->__first_ = 0;
    v14 = operator new(0x10uLL);
    v15 = a1->__end_;
    v16 = v15->__first_;
    v14[1].__vftable = v16;
    v9->__first_ = v14;
    v15->__first_ = 0;
    v17 = operator new(0x10uLL);
    v18 = v9->__first_;
    v17->__vftable = &unk_28521A5B8;
    v17[1].__vftable = v18;
    v15->__first_ = v17;
    a1->__end_ = v9->__first_;
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, a2);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_28521A138;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_28521A0A8;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_28521A0F0;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v31.__loop_count_ = v25;
    *&v31.__start_.__cntrl_ = v25;
    *&v31.__traits_.__loc_.__locale_ = v25;
    *&v31.__traits_.__col_ = v25;
    v26 = a1;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
    v28 = v26;
    v31.__flags_ = v26->__flags_;
    v29 = v4 + 2;
    v30 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v29, a3);
    LODWORD(v26) = v31.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v28, &v31, 1, v28->__marked_count_);
    v28->__marked_count_ += v26;
    if (v12 == v30 || *v12 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.__loop_count_ = v6;
  *&v31.__start_.__cntrl_ = v6;
  *&v31.__traits_.__loc_.__locale_ = v6;
  *&v31.__traits_.__col_ = v6;
  v7 = a1;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
  v9 = v7;
  v31.__flags_ = v7->__flags_;
  v10 = v4 + 2;
  v11 = a3;
  v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v10, a3);
  LODWORD(v7) = v31.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v9, &v31, 0, v9->__marked_count_);
  v9->__marked_count_ += v7;
  if (v12 == v11 || *v12 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_27:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v31.__traits_.__loc_);
  return v12 + 1;
}