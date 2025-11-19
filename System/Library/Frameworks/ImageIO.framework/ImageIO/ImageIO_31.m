void sub_18603369C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *__f, char *__l, std::match_results<const char *> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  std::match_results<char const*>::__init(this, *(a1 + 28) + 1, __f, __l, (v9 & 0x800) >> 11);
  std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, __f, __l, this, v9, (v9 & 0x800) == 0);
  if (v10)
  {
    if (this->__matches_.__end_ == this->__matches_.__begin_)
    {
      p_unmatched = &this->__unmatched_;
    }

    else
    {
      p_unmatched = this->__matches_.__begin_;
    }

LABEL_19:
    first = p_unmatched->first;
    this->__prefix_.second = p_unmatched->first;
    this->__prefix_.matched = this->__prefix_.first != first;
    second = p_unmatched->second;
    this->__suffix_.first = second;
    this->__suffix_.matched = second != this->__suffix_.second;
    return 1;
  }

  if (__f != __l && (v9 & 0x40) == 0)
  {
    v12 = __f + 1;
    if (v12 != __l)
    {
      v13 = &this->__unmatched_;
      do
      {
        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
        std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v12, __l, this, v9 | 0x80, 0);
        begin = this->__matches_.__begin_;
        end = this->__matches_.__end_;
        if (v16)
        {
          goto LABEL_16;
        }

        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), &this->__unmatched_);
      }

      while (++v12 != __l);
    }

    v13 = &this->__unmatched_;
    std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
    std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v12, __l, this, v9 | 0x80, 0);
    if (v17)
    {
      begin = this->__matches_.__begin_;
      end = this->__matches_.__end_;
LABEL_16:
      if (end == begin)
      {
        p_unmatched = v13;
      }

      else
      {
        p_unmatched = begin;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  this->__matches_.__end_ = this->__matches_.__begin_;
  return result;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  begin = a1->__begin_;
  if (a1->__end_ == a1->__begin_)
  {
    v14 = a2 - v10;
LABEL_17:
    a1[1].__begin_ = a3;
    a1[1].__end_ = a3;
    LOBYTE(a1[1].__end_cap_.__value_) = 0;
    v23 = (v14 + a4[6]);
    a1[2].__begin_ = v23;
    a1[2].__end_ = (v14 + a4[7]);
    LOBYTE(a1[2].__end_cap_.__value_) = *(a4 + 64);
    a1[3].__begin_ = (v14 + a4[9]);
    a1[3].__end_ = (v14 + a4[10]);
    LOBYTE(a1[3].__end_cap_.__value_) = *(a4 + 88);
    if ((a5 & 1) == 0)
    {
      a1[4].__end_ = v23;
    }

    LOBYTE(a1[4].__begin_) = *(a4 + 96);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    while (1)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12 * 24);
      v19 = v17 <= v13 ? a4 + 3 : v18;
      begin[v12].first.__i_ = (v14 + *v19);
      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_ - a1->__begin_) >> 3) <= v13)
      {
        break;
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13 ? (a4 + 3) : *a4 + v12 * 24;
      a1->__begin_[v12].second.__i_ = (v14 + *(v20 + 8));
      begin = a1->__begin_;
      v21 = 0xAAAAAAAAAAAAAAABLL * ((a1->__end_ - a1->__begin_) >> 3);
      if (v21 <= v13)
      {
        break;
      }

      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = (*a4 + v12 * 24);
      }

      begin[v12].matched = *(v22 + 16);
      ++v13;
      ++v12;
      if (v13 >= v21)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) != 0)
  {
    if (*(a1 + 28))
    {
      std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
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

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:fe200100](this, v9);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    __x.second = a3;
    *&__x.matched = 0;
    __x.first = a3;
    LODWORD(v37[0]) = 0;
    memset(v37 + 8, 0, 80);
    *(&v37[5] + 5) = 0;
    std::vector<std::__state<char>>::push_back[abi:fe200100](&v39, v37);
    if (*(&v37[3] + 1))
    {
      *&v37[4] = *(&v37[3] + 1);
      operator delete(*(&v37[3] + 1));
    }

    if (*&v37[2])
    {
      *(&v37[2] + 1) = *&v37[2];
      operator delete(*&v37[2]);
    }

    v13 = v40;
    if (v39 != v40)
    {
      *(v40 - 96) = 0;
      *(v13 - 88) = a2;
      *(v13 - 80) = a2;
      *(v13 - 72) = a3;
      std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
      if (v39 != v40)
      {
        std::vector<std::pair<unsigned long,char const*>>::resize((v40 - 40), *(a1 + 32));
        v14 = v39;
        v15 = v40;
        if (v39 != v40)
        {
          v36 = a4;
          *(v40 - 16) = v6;
          *(v15 - 8) = a5;
          v16 = 1;
          *(v15 - 4) = a6;
          while (1)
          {
            if ((v16 & 0xFFF) == 0 && (v16 >> 12) >= a3 - a2)
            {
              std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>();
            }

            if (v14 == v15)
            {
              break;
            }

            v18 = (v15 - 16);
            v17 = *(v15 - 16);
            v19 = (v15 - 96);
            if (v17)
            {
              (*(*v17 + 16))(v17, v15 - 96);
            }

            v20 = *v19;
            if (*v19 > -994)
            {
              switch(v20)
              {
                case -993:
                  goto LABEL_27;
                case -992:
                  memset(v37, 0, sizeof(v37));
                  v23 = *(v15 - 80);
                  v37[0] = *v19;
                  v37[1] = v23;
                  std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v37[2], *(v15 - 64), *(v15 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v15 - 56) - *(v15 - 64)) >> 3));
                  memset(&v37[3] + 8, 0, 24);
                  std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v37[3] + 8, *(v15 - 40), *(v15 - 32), (*(v15 - 32) - *(v15 - 40)) >> 4);
                  v24 = *v18;
                  *(&v37[5] + 5) = *(v15 - 11);
                  *&v37[5] = v24;
                  (*(**v18 + 24))(*v18, 1, v15 - 96);
                  (*(**&v37[5] + 24))(*&v37[5], 0, v37);
                  std::vector<std::__state<char>>::push_back[abi:fe200100](&v39, v37);
                  if (*(&v37[3] + 1))
                  {
                    *&v37[4] = *(&v37[3] + 1);
                    operator delete(*(&v37[3] + 1));
                  }

                  if (*&v37[2])
                  {
                    *(&v37[2] + 1) = *&v37[2];
                    operator delete(*&v37[2]);
                  }

                  break;
                case -991:
                  break;
                default:
LABEL_42:
                  std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>();
              }
            }

            else if ((v20 + 995) >= 2)
            {
              if (v20 != -1000)
              {
                goto LABEL_42;
              }

              v21 = *(v15 - 80);
              if (((a5 & 0x20) == 0 || v21 != a2) && ((a5 & 0x1000) == 0 || v21 == a3))
              {
                v25 = *v36;
                v26 = v36[1] - *v36;
                if (!v26)
                {
                  break;
                }

                *v25 = a2;
                *(v25 + 8) = v21;
                *(v25 + 16) = 1;
                v27 = *(v15 - 64);
                v28 = *(v15 - 56) - v27;
                if (v28)
                {
                  v29 = 0;
                  v30 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
                  v31 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
                  v32 = 1;
                  while (v30 > v32)
                  {
                    v33 = v27 + 24 * v29;
                    v34 = v32;
                    v35 = v25 + 24 * v32;
                    *v35 = *v33;
                    *(v35 + 16) = *(v33 + 16);
                    v32 = v34 + 1;
                    v29 = v34;
                    if (v31 <= v34)
                    {
                      goto LABEL_34;
                    }
                  }

                  break;
                }

                goto LABEL_34;
              }

LABEL_27:
              if (v39 == v40)
              {
                break;
              }

              v22 = v40 - 96;
              std::allocator<std::__state<char>>::destroy[abi:fe200100](&v39, (v40 - 96));
              v40 = v22;
            }

            v14 = v39;
            v15 = v40;
            ++v16;
            if (v39 == v40)
            {
              goto LABEL_34;
            }
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    *&v37[0] = &v39;
    std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](v37);
  }
}

void sub_186033FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](&a11);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_73:
    std::deque<std::__state<char>>::~deque[abi:fe200100](&v52);
    return;
  }

  LODWORD(v51[0]) = 0;
  memset(v51 + 8, 0, 80);
  *(&v51[5] + 5) = 0;
  std::deque<std::__state<char>>::push_back(&v52, v51);
  if (*(&v51[3] + 1))
  {
    *&v51[4] = *(&v51[3] + 1);
    operator delete(*(&v51[3] + 1));
  }

  if (*&v51[2])
  {
    *(&v51[2] + 1) = *&v51[2];
    operator delete(*&v51[2]);
  }

  if (!*(&v54 + 1))
  {
    goto LABEL_75;
  }

  v11 = v52.i64[1];
  v12 = *(&v54 + 1) + v54 - 1;
  v13 = v12 / 0x2A;
  v14 = *(v52.i64[1] + 8 * (v12 / 0x2A));
  v15 = 3 * (v12 % 0x2A);
  v16 = v14 + 32 * v15;
  *v16 = 0;
  *(v16 + 8) = a2;
  *(*(v11 + 8 * v13) + 32 * v15 + 16) = a2;
  *(*(v11 + 8 * v13) + 32 * v15 + 24) = a3;
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v11 + 8 * v13) + 32 * v15 + 56), *(a1 + 32));
  v17 = *(&v54 + 1);
  if (!*(&v54 + 1))
  {
    goto LABEL_75;
  }

  v47 = a4;
  v18 = 0;
  v48 = 0;
  v19 = 0;
  v20 = v52.i64[1];
  v21 = *(&v54 + 1) + v54 - 1;
  v22 = v21 / 0x2A;
  v23 = 3 * (v21 % 0x2A);
  *(*(v52.i64[1] + 8 * v22) + 32 * v23 + 80) = v6;
  v24 = a3 - a2;
  v25 = *(v20 + 8 * v22) + 32 * v23;
  *(v25 + 88) = a5;
  *(v25 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v24)
    {
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>();
    }

    v27 = *(v52.i64[1] + 8 * ((v17 + v54 - 1) / 0x2AuLL)) + 96 * ((v17 + v54 - 1) % 0x2AuLL);
    v28 = *(v27 + 80);
    if (v28)
    {
      (*(*v28 + 16))(v28, v27);
    }

    v29 = *v27;
    if (*v27 <= -995)
    {
      if (v29 != -1000)
      {
        if (v29 == -999)
        {
          goto LABEL_54;
        }

        if (v29 != -995)
        {
          goto LABEL_74;
        }

        std::deque<std::__state<char>>::push_front(&v52, v27);
        goto LABEL_53;
      }

      v30 = *(v27 + 16);
      v32 = (a5 & 0x1000) == 0 || v30 == a3;
      v33 = v30 != a2 || (a5 & 0x20) == 0;
      if (!v33 || !v32)
      {
        goto LABEL_53;
      }

      v34 = v30 - *(v27 + 8);
      if (v18 <= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v18;
      }

      if (v48)
      {
        v18 = v35;
      }

      else
      {
        v18 = v34;
      }

      if (v18 != v24)
      {
        std::deque<std::__state<char>>::pop_back(&v52);
        v48 = 1;
        goto LABEL_54;
      }

      v36 = v52.i64[1];
      v37 = v53;
      if (v53 == v52.i64[1])
      {
        v37 = v52.i64[1];
      }

      else
      {
        v38 = (v52.i64[1] + 8 * (v54 / 0x2A));
        v39 = (*v38 + 96 * (v54 % 0x2A));
        v40 = *(v52.i64[1] + 8 * ((*(&v54 + 1) + v54) / 0x2AuLL)) + 96 * ((*(&v54 + 1) + v54) % 0x2AuLL);
        if (v39 != v40)
        {
          do
          {
            std::allocator<std::__state<char>>::destroy[abi:fe200100](&v52, v39);
            v39 += 12;
            if ((v39 - *v38) == 4032)
            {
              v41 = v38[1];
              ++v38;
              v39 = v41;
            }
          }

          while (v39 != v40);
          v36 = v52.i64[1];
          v37 = v53;
        }
      }

      *(&v54 + 1) = 0;
      v44 = (v37 - v36) >> 3;
      if (v44 >= 3)
      {
        do
        {
          operator delete(*v36);
          v36 = (v52.i64[1] + 8);
          v52.i64[1] = v36;
          v44 = (v53 - v36) >> 3;
        }

        while (v44 > 2);
      }

      if (v44 == 1)
      {
        v45 = 21;
      }

      else
      {
        if (v44 != 2)
        {
LABEL_69:
          v48 = 1;
          v18 = a3 - a2;
          goto LABEL_54;
        }

        v45 = 42;
      }

      *&v54 = v45;
      goto LABEL_69;
    }

    if (v29 <= -993)
    {
      if (v29 == -994)
      {
        goto LABEL_54;
      }

      if (v29 != -993)
      {
        goto LABEL_74;
      }

LABEL_53:
      std::deque<std::__state<char>>::pop_back(&v52);
      goto LABEL_54;
    }

    if (v29 == -992)
    {
      memset(v51, 0, sizeof(v51));
      v42 = *(v27 + 16);
      v51[0] = *v27;
      v51[1] = v42;
      std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v51[2], *(v27 + 32), *(v27 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v27 + 40) - *(v27 + 32)) >> 3));
      memset(&v51[3] + 8, 0, 24);
      std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v51[3] + 8, *(v27 + 56), *(v27 + 64), (*(v27 + 64) - *(v27 + 56)) >> 4);
      v43 = *(v27 + 80);
      *(&v51[5] + 5) = *(v27 + 85);
      *&v51[5] = v43;
      (*(**(v27 + 80) + 24))(*(v27 + 80), 1, v27);
      (*(**&v51[5] + 24))(*&v51[5], 0, v51);
      std::deque<std::__state<char>>::push_back(&v52, v51);
      if (*(&v51[3] + 1))
      {
        *&v51[4] = *(&v51[3] + 1);
        operator delete(*(&v51[3] + 1));
      }

      if (*&v51[2])
      {
        *(&v51[2] + 1) = *&v51[2];
        operator delete(*&v51[2]);
      }
    }

    else if (v29 != -991)
    {
LABEL_74:
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>();
    }

LABEL_54:
    v17 = *(&v54 + 1);
  }

  while (*(&v54 + 1));
  if ((v48 & 1) == 0)
  {
    goto LABEL_73;
  }

  v46 = *v47;
  if (v47[1] != *v47)
  {
    *v46 = a2;
    *(v46 + 8) = a2 + v18;
    *(v46 + 16) = 1;
    goto LABEL_73;
  }

LABEL_75:
  __break(1u);
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v54 = 0u;
  v55 = 0u;
  *v52 = 0u;
  *v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = *(a1 + 40);
  if (v6)
  {
    __x.second = a3;
    *&__x.matched = 0;
    __x.first = a3;
    LODWORD(v48[0]) = 0;
    *(v48 + 8) = 0uLL;
    *(&v48[1] + 8) = 0uLL;
    *(&v48[2] + 8) = 0uLL;
    *(&v48[3] + 8) = 0uLL;
    *(&v48[4] + 8) = 0uLL;
    *(&v48[5] + 5) = 0;
    std::vector<std::__state<char>>::push_back[abi:fe200100](&v56, v48);
    if (*(&v48[3] + 1))
    {
      *&v48[4] = *(&v48[3] + 1);
      operator delete(*(&v48[3] + 1));
    }

    if (*&v48[2])
    {
      *(&v48[2] + 1) = *&v48[2];
      operator delete(*&v48[2]);
    }

    v13 = v57;
    if (v56 != v57)
    {
      *(v57 - 24) = 0;
      *(v13 - 11) = a2;
      *(v13 - 10) = a2;
      *(v13 - 9) = a3;
      std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
      if (v56 != v57)
      {
        std::vector<std::pair<unsigned long,char const*>>::resize((v57 - 5), *(a1 + 32));
        v14 = v56;
        v15 = v57;
        if (v56 != v57)
        {
          v45 = a4;
          v46 = a3;
          v16 = 0;
          v47 = 0;
          v17 = 0;
          v18 = (a3 - a2);
          *(v57 - 2) = v6;
          *(v15 - 2) = a5;
          *(v15 - 4) = a6;
          while (1)
          {
            if ((++v17 & 0xFFF) == 0 && (v17 >> 12) >= v18)
            {
              std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>();
            }

            if (v14 == v15)
            {
              break;
            }

            v21 = v15 - 2;
            v20 = *(v15 - 2);
            v22 = (v15 - 12);
            if (v20)
            {
              (*(*v20 + 16))(v20, v15 - 12);
            }

            v23 = *v22;
            if (*v22 > -994)
            {
              switch(v23)
              {
                case -993:
                  goto LABEL_37;
                case -992:
                  memset(v48, 0, sizeof(v48));
                  v31 = *(v15 - 5);
                  v48[0] = *v22;
                  v48[1] = v31;
                  std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v48[2], *(v15 - 8), *(v15 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v15 - 7) - *(v15 - 8)) >> 3));
                  memset(&v48[3] + 8, 0, 24);
                  std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v48[3] + 8, *(v15 - 5), *(v15 - 4), (*(v15 - 4) - *(v15 - 5)) >> 4);
                  v32 = *v21;
                  *(&v48[5] + 5) = *(v15 - 11);
                  *&v48[5] = v32;
                  (*(**v21 + 24))(*v21, 1, v15 - 12);
                  (*(**&v48[5] + 24))(*&v48[5], 0, v48);
                  std::vector<std::__state<char>>::push_back[abi:fe200100](&v56, v48);
                  if (*(&v48[3] + 1))
                  {
                    *&v48[4] = *(&v48[3] + 1);
                    operator delete(*(&v48[3] + 1));
                  }

                  if (*&v48[2])
                  {
                    *(&v48[2] + 1) = *&v48[2];
                    operator delete(*&v48[2]);
                  }

                  break;
                case -991:
                  break;
                default:
LABEL_59:
                  std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>();
              }
            }

            else if ((v23 + 995) >= 2)
            {
              if (v23 != -1000)
              {
                goto LABEL_59;
              }

              v24 = *(v15 - 10);
              if (((a5 & 0x20) == 0 || v24 != a2) && ((a5 & 0x1000) == 0 || v24 == v46))
              {
                v25 = &v24[-*(v15 - 11)];
                if ((v47 & (v16 >= v25)) == 0)
                {
                  v26 = *(v15 - 5);
                  v50 = *v22;
                  v51 = v26;
                  if (&v50 != v22)
                  {
                    std::vector<std::sub_match<char const*>>::__assign_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(v52, *(v15 - 8), *(v15 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v15 - 7) - *(v15 - 8)) >> 3));
                    std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v53[1], *(v15 - 5), *(v15 - 4), (*(v15 - 4) - *(v15 - 5)) >> 4);
                  }

                  v27 = *v21;
                  *(&v55 + 5) = *(v15 - 11);
                  *&v55 = v27;
                  v16 = v25;
                }

                if (v16 == v18)
                {
                  v28 = v56;
                  for (i = v57; i != v28; std::allocator<std::__state<char>>::destroy[abi:fe200100](&v56, i))
                  {
                    i -= 12;
                  }

                  v57 = v28;
                  v47 = 1;
                  v16 = v18;
                }

                else
                {
                  if (v56 == v57)
                  {
                    break;
                  }

                  v33 = v57 - 12;
                  std::allocator<std::__state<char>>::destroy[abi:fe200100](&v56, v57 - 12);
                  v57 = v33;
                  v47 = 1;
                }

                goto LABEL_43;
              }

LABEL_37:
              if (v56 == v57)
              {
                break;
              }

              v30 = v57 - 12;
              std::allocator<std::__state<char>>::destroy[abi:fe200100](&v56, v57 - 12);
              v57 = v30;
            }

LABEL_43:
            v14 = v56;
            v15 = v57;
            if (v56 == v57)
            {
              if ((v47 & 1) == 0)
              {
                goto LABEL_54;
              }

              v34 = *v45;
              v35 = v45[1];
              v36 = v35 - *v45;
              if (v35 != *v45)
              {
                *v34 = a2;
                *(v34 + 8) = &v16[a2];
                *(v34 + 16) = 1;
                v37 = v52[0];
                if (v52[1] == v52[0])
                {
                  goto LABEL_54;
                }

                v38 = 0;
                v39 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3);
                v40 = 0xAAAAAAAAAAAAAAABLL * ((v52[1] - v52[0]) >> 3);
                v41 = 1;
                while (v39 > v41)
                {
                  v42 = &v37[24 * v38];
                  v43 = v41;
                  v44 = v34 + 24 * v41;
                  *v44 = *v42;
                  *(v44 + 16) = v42[16];
                  v41 = v43 + 1;
                  v38 = v43;
                  if (v40 <= v43)
                  {
                    goto LABEL_54;
                  }
                }
              }

              break;
            }
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    if (v53[1])
    {
      *&v54 = v53[1];
      operator delete(v53[1]);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    *&v50 = &v56;
    std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](&v50);
  }
}

void sub_186034A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::__state<char>::~__state(&a13);
  std::__state<char>::~__state(&a29);
  a29 = v29 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::__state<char>>::push_back[abi:fe200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
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

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
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
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::__state<char>>>(a1, v6);
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
  std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_186034E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
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
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      std::allocator<std::__state<char>>::destroy[abi:fe200100](a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:fe200100](v11);
}

void std::allocator<std::__state<char>>::destroy[abi:fe200100](uint64_t a1, void *a2)
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:fe200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:fe200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:fe200100](uint64_t *a1)
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
      std::allocator<std::__state<char>>::destroy[abi:fe200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::__state<char>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::__state<char>>::clear[abi:fe200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char>>::clear[abi:fe200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<std::__state<char>>::destroy[abi:fe200100](v4, (i - 96));
  }
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
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
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = value - this->__begin_;
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
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_1860354B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_186035578(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        std::allocator<std::__state<char>>::destroy[abi:fe200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++a1[5];
  return result;
}

void *std::deque<std::__state<char>>::pop_back(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result;
    std::allocator<std::__state<char>>::destroy[abi:fe200100](result, (*(result[1] + 8 * ((v1 + result[4] - 1) / 0x2AuLL)) + 96 * ((v1 + result[4] - 1) % 0x2AuLL)));
    --v2[5];

    return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:fe200100](v2, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64x2_t std::deque<std::__state<char>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<char>>::__add_front_capacity(a1);
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
  result = vaddq_s64(a1[2], xmmword_18620AF60);
  a1[2] = result;
  return result;
}

void *std::deque<std::__state<char>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v10);
}

void sub_186035A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(result, v11);
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

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(result, v9);
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

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(result[4], v11);
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

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_front<std::__state<char> *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(result[4], v9);
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

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:fe200100](void *a1, int a2)
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

const void **std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
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
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, v11);
}

void sub_18603615C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:fe200100](void *a1)
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
        std::allocator<std::__state<char>>::destroy[abi:fe200100](a1, v7);
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

  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(uint64_t a1)
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

_BYTE *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
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

      std::vector<std::sub_match<char const*>>::__vallocate[abi:fe200100](a1, v11);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
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

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:fe200100](a1, v10);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
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

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __sz)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v11 -= 24;
      }

      while (v11);
      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
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
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::sub_match<char const*>>>(this, v9);
    }

    v12 = 24 * __n;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    begin = this->__begin_;
    v15 = this->__end_;
    v16 = (24 * v6 + this->__begin_ - v15);
    if (v15 != this->__begin_)
    {
      v17 = (24 * v6 + this->__begin_ - v15);
      do
      {
        v18 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *(v17 + 2) = *&begin->matched;
        *v17 = v18;
        v17 += 24;
        ++begin;
      }

      while (begin != v15);
      begin = this->__begin_;
    }

    this->__begin_ = v16;
    this->__end_ = (24 * v6 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:fe200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
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

void sub_1860368E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
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

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void ___ZL46CGImageMetadataEnumerateTagsUsingBlockInternalPK15CGImageMetadataPK10__CFStringP13IIODictionaryU13block_pointerFbS4_P18CGImageMetadataTagE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@[%ld]", *(a1 + 40), a3);
  if (v6)
  {
    v7 = v6;
    CGImageMetadataGetTagWithPath(*(a1 + 48), 0, v6);
    if ((*(*(a1 + 32) + 16))())
    {
      if (*(a1 + 64) == 1)
      {
        CGImageMetadataEnumerateTagsUsingBlockInternal(*(a1 + 48), v7, *(a1 + 56), *(a1 + 32));
      }

      CFRelease(v7);
    }

    else
    {
      CFRelease(v7);
      *a4 = 1;
    }
  }
}

void ___ZL46CGImageMetadataEnumerateTagsUsingBlockInternalPK15CGImageMetadataPK10__CFStringP13IIODictionaryU13block_pointerFbS4_P18CGImageMetadataTagE_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  TagWithPath = CGImageMetadataGetTagWithPath(*(a1 + 40), a2, @"?xml:lang");
  Source = CGImageSourceGetSource(TagWithPath);
  if (TagWithPath)
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@[%@]", *(a1 + 48), *(Source + 48));
    if (v8)
    {
      v9 = v8;
      v10 = (*(*(a1 + 32) + 16))();
      CFRelease(v9);
      if ((v10 & 1) == 0)
      {
        *a4 = 1;
      }
    }
  }
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:fe200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_186036C1C(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x186602780]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
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

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
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

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1860375C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:fe200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
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

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
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

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x186602850);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            memset(&v18, 0, sizeof(v18));
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            memset(&v18, 0, sizeof(v18));
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

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
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    LODWORD(__max) = 0;
    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
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

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
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

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1EF4D9890;
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
  a1->__locale_ = &unk_1EF4D9890;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x186602850);
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

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:fe200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_1EF4D98D8;
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

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1EF4D98D8;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](locale);
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
  a1->__locale_ = &unk_1EF4D98D8;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x186602850);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v23 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v20, 0, sizeof(v20));
  *__p = 0u;
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  *(&v20[0] + 1) = *(a2 + 24);
  *&v20[1] = *(&v20[0] + 1);
  std::vector<std::sub_match<char const*>>::assign(__p, v4, (v20 + 8));
  *&v21 = v5;
  *(&v21 + 1) = v5;
  LOBYTE(v22[0]) = 0;
  *(v22 + 8) = *(v20 + 8);
  BYTE8(v22[1]) = BYTE8(v20[1]);
  *(&v23 + 1) = v5;
  LOBYTE(v23) = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), __p, *(a2 + 88) & 0xFBF | 0x40, v7);
  if (*(a1 + 84) == v8)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p[0];
    goto LABEL_11;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p[0];
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (v10 < 2)
  {
LABEL_11:
    if (v9)
    {
LABEL_12:
      __p[1] = v9;
      operator delete(v9);
    }

    return;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v12) >> 3);
  v14 = 2;
  v15 = 1;
  while (v13 > v11)
  {
    v16 = &v9[24 * v15];
    v17 = v12 + 24 * v11;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v11;
    if (v10 <= v14++)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_186038C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:fe200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:fe200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
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

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:fe200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          v10 = 13;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v10 = 9;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_72;
        }

        v11 = a2[1];
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
        {
          goto LABEL_72;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_72;
        }

        v12 = *v4;
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v13 = -87;
        }

        v6 = 16 * (v13 + v12);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_72;
        }

        v14 = v4[1];
        v15 = -48;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          v14 |= 0x20u;
          if ((v14 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v15 = -87;
        }

        if (v4 + 2 != a3)
        {
          v16 = v4[2];
          v17 = -48;
          if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
          {
LABEL_49:
            v18 = v17 + v16 + 16 * (v15 + v6 + v14);
            if (this)
            {
              std::string::operator=(this, v18);
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
            }

            v4 += 3;
            return v4;
          }

          v16 |= 0x20u;
          if ((v16 - 97) < 6)
          {
            v17 = -87;
            goto LABEL_49;
          }
        }

LABEL_72:
        std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v10 = *a2;
        if (this)
        {
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v10);
        return ++v4;
      }

      if (!this)
      {
        v10 = 11;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 11;
    }

LABEL_68:
    std::string::operator=(v9, v10);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v10 = 12;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v10 = 10;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 10;
    }

    goto LABEL_68;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v10 = 0;
      goto LABEL_69;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_68;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_72;
  }

  v8 = v7 & 0x1F;
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
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

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 4);
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

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:fe200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1EF4D9968;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_186039908(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:fe200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1EF4D9968;
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
  a1->__locale_ = &unk_1EF4D9968;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x186602850);
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

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1EF4D99B0;
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
  a1->__locale_ = &unk_1EF4D99B0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x186602850);
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

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
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

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1EF4D9A40;
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
  a1->__locale_ = &unk_1EF4D9A40;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x186602850);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = (*(result + 40) - 1);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) > v2)
  {
    v5 = v3 + 24 * v2;
    if (*(v5 + 16) == 1)
    {
      v6 = *(v5 + 8) - *v5;
      v7 = *(a2 + 16);
      if (*(a2 + 24) - v7 >= v6)
      {
        v9 = result;
        if (v6 < 1)
        {
LABEL_11:
          *a2 = -994;
          *(a2 + 16) = v7 + v6;
          v8 = *(v9 + 8);
          goto LABEL_5;
        }

        v10 = 0;
        while (1)
        {
          v11 = (*(**(v9 + 24) + 40))(*(v9 + 24), *(*v5 + v10));
          result = (*(**(v9 + 24) + 40))(*(v9 + 24), *(*(a2 + 16) + v10));
          if (v11 != result)
          {
            break;
          }

          if (v6 == ++v10)
          {
            v7 = *(a2 + 16);
            goto LABEL_11;
          }
        }
      }
    }

    v8 = 0;
    *a2 = -993;
LABEL_5:
    *(a2 + 80) = v8;
    return result;
  }

  __break(1u);
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1EF4D9A88;
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
  a1->__locale_ = &unk_1EF4D9A88;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x186602850);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = (*(result + 40) - 1);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) > v2)
  {
    v4 = (v3 + 24 * v2);
    if (*(v4 + 16) == 1)
    {
      v5 = *v4;
      v6 = v4[1] - *v4;
      v7 = *(a2 + 16);
      if (*(a2 + 24) - v7 >= v6)
      {
        if (v6 < 1)
        {
LABEL_10:
          *a2 = -994;
          *(a2 + 16) = v7 + v6;
          v8 = *(result + 8);
          goto LABEL_5;
        }

        v9 = *(a2 + 16);
        v10 = v6;
        while (1)
        {
          v12 = *v5++;
          v11 = v12;
          v13 = *v9++;
          if (v11 != v13)
          {
            break;
          }

          if (!--v10)
          {
            goto LABEL_10;
          }
        }
      }
    }

    v8 = 0;
    *a2 = -993;
LABEL_5:
    *(a2 + 80) = v8;
    return result;
  }

  __break(1u);
  return result;
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

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3);
  if (v4 < v2)
  {
LABEL_10:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)4>();
  }

  v5 = (v2 - 1);
  if (v4 <= v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v3 + 24 * v5;
  if (*(v7 + 16) == 1 && (v8 = result, result = *v7, v9 = *(v7 + 8) - *v7, v10 = *(a2 + 16), *(a2 + 24) - v10 >= v9) && (result = memcmp(result, *(a2 + 16), v9), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v10 + v9;
    v11 = *(v8 + 1);
  }

  else
  {
    v11 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v11;
  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:fe200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:fe200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:fe200100](a1 + 40, &v7);
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:fe200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
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

void sub_18603A65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:fe200100](&a10);
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

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x186602850);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v35 = 0;
    negate = this->__negate_;
    goto LABEL_80;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_57;
  }

  v111 = *current;
  v6 = current[1];
  v112 = current[1];
  if (this->__icase_)
  {
    v111 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v112 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v111, &v113, &__p);
  if ((SHIBYTE(v110) & 0x80000000) == 0)
  {
    if (HIBYTE(v110))
    {
      goto LABEL_8;
    }

LABEL_57:
    negate = 0;
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
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v111 != *(p_second - 1) || v112 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    __p = 0;
    v109 = 0;
    v110 = 0;
    p_p = &__p;
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v113);
    v13 = this->__ranges_.__begin_;
    v14 = HIBYTE(v110);
    v15 = this->__ranges_.__end_ - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = HIBYTE(v110);
      if (v110 >= 0)
      {
        v17 = HIBYTE(v110);
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
      v19 = &v13->second.__r_.__value_.__r.__words[2] + 7;
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

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v85 = 0;
    goto LABEL_197;
  }

  __p = 0;
  v109 = 0;
  v110 = 0;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v113, &__p);
  v86 = this->__equivalences_.__begin_;
  v87 = HIBYTE(v110);
  v88 = this->__equivalences_.__end_ - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = HIBYTE(v110);
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
      size = HIBYTE(v86->__r_.__value_.__r.__words[2]);
      v96 = size;
      if ((size & 0x80u) != 0)
      {
        size = v86->__r_.__value_.__l.__size_;
      }

      if (v90 == size)
      {
        v97 = v96 >= 0 ? v86 : v86->__r_.__value_.__r.__words[0];
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      ++v86;
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
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v100 = tab[v111];
      if (((v100 & mask) != 0 || v111 == 95 && (mask & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((tab[v112] & mask) != 0 || (mask & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      neg_mask = this->__neg_mask_;
      if ((v100 & neg_mask) != 0 || v111 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_214:
        negate = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v112] & neg_mask) == 0)
      {
        negate = 1;
        if (v112 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    negate = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  negate = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = *a2->__current_;
  v111 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v38) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    v111 = v38;
  }

  v39 = this->__chars_.__begin_;
  v40 = this->__chars_.__end_ - v39;
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

  v42 = this->__neg_mask_;
  if (v42 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v38 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v38] & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    end = this->__neg_chars_.__end_;
    v45 = memchr(this->__neg_chars_.__begin_, v38, end - this->__neg_chars_.__begin_);
    v46 = !v45 || v45 == end;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      negate = 1;
      goto LABEL_80;
    }
  }

  v50 = this->__ranges_.__begin_;
  v51 = this->__ranges_.__end_;
  if (v50 != v51)
  {
    __p = 0;
    v109 = 0;
    v110 = 0;
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v112);
      v50 = this->__ranges_.__begin_;
      v51 = this->__ranges_.__end_;
    }

    else
    {
      HIBYTE(v110) = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = HIBYTE(v110);
      v106 = v35;
      v102 = negate;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = HIBYTE(v110);
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

      v57 = &v50->second.__r_.__value_.__r.__words[2] + 7;
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
          negate = v102;
          goto LABEL_128;
        }
      }

      negate = 1;
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
      if ((v110 & 0x8000000000000000) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_157;
  }

  __p = 0;
  v109 = 0;
  v110 = 0;
  v72 = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v112, &__p);
  v73 = this->__equivalences_.__begin_;
  v74 = this->__equivalences_.__end_ - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x8000000000000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = HIBYTE(v110);
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = HIBYTE(v110);
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
    v80 = HIBYTE(v73->__r_.__value_.__r.__words[2]);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = v73->__r_.__value_.__l.__size_;
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : v73->__r_.__value_.__r.__words[0];
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    ++v73;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  negate = 1;
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
  v83 = this->__mask_;
  if ((v111 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v111] & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  negate |= v84;
LABEL_80:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v49 = -993;
  }

  else
  {
    a2->__current_ += v35;
    first = this->__first_;
    v49 = -995;
  }

  a2->__do_ = v49;
  a2->__node_ = first;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:fe200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:fe200100](uint64_t a1, uint64_t a2)
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

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:fe200100](&v7);
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

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a2, a3, a3 - a2);
  v4 = HIBYTE(v8);
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v8 < 0)
  {
    v4 = v7;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v4]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_18603B284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&__s, 0, sizeof(__s));
  std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__s, a2, a3, a3 - a2);
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

void sub_18603B420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a2, a3, a3 - a2);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = HIBYTE(v12);
  if (v12 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v12 < 0)
  {
    v6 = v11;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v6]);
  v8 = *(a4 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = a4[1];
  }

  if (v9 != 1)
  {
    if (v9 == 12)
    {
      if ((v8 & 0x80) != 0)
      {
        if (a4[1] <= 0xA)
        {
LABEL_23:
          __break(1u);
          return;
        }

        a4 = *a4;
      }

      else if (v8 <= 0xA)
      {
        goto LABEL_23;
      }

      *(a4 + 11) = *(a4 + 3);
    }

    else if ((v8 & 0x80) != 0)
    {
      **a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

void sub_18603B57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:fe200100](uint64_t a1, _BYTE *a2)
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
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
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

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
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
  memset(&v25, 0, sizeof(v25));
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
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
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
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:fe200100](v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:fe200100](v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  v4 = v13 + 2;
  memset(&v24, 0, sizeof(v24));
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:fe200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_18603BA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_35;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_35;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_35:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)5>();
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v7, &v18);
  v10 = SHIBYTE(v20);
  if ((SHIBYTE(v20) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v20))
    {
      __p = 0uLL;
      v11 = &v18;
      v17 = 0;
      goto LABEL_13;
    }

LABEL_36:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v19;
  if (!v19)
  {
    goto LABEL_36;
  }

  __p = 0uLL;
  v17 = 0;
  v11 = v18;
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, &v11[v10], &__p);
  v12 = HIBYTE(v17);
  if (v17 < 0)
  {
    v12 = *(&__p + 1);
  }

  if (!v12)
  {
    v13 = HIBYTE(v20);
    if (v20 < 0)
    {
      v13 = v19;
    }

    if (v13 != 2)
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v18;
      if (v20 < 0)
      {
        v14 = v18;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:fe200100](a4, *v14);
      goto LABEL_30;
    }

    if (SHIBYTE(v20) < 0)
    {
      if (v19)
      {
        v15 = v18;
        goto LABEL_29;
      }
    }

    else if (HIBYTE(v20))
    {
      v15 = &v18;
LABEL_29:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:fe200100](a4, *v15, v15[1]);
      goto LABEL_30;
    }

    __break(1u);
    return;
  }

  std::vector<std::string>::push_back[abi:fe200100](a4 + 136, &__p);
LABEL_30:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }
}

void sub_18603BC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v6, &v12);
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
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)3>();
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
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:fe200100](a5, 95);
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
        goto LABEL_25;
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

      goto LABEL_25;
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
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:fe200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
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
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_47;
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
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:fe200100](uint64_t a1, char *a2, char *a3)
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
        if ((v7 & 0x8000000000000000) != 0)
        {
          if (i >= *(v4 + 1))
          {
LABEL_30:
            for (j = 0; ; ++j)
            {
              v21 = v3[23];
              if ((v21 & 0x8000000000000000) != 0)
              {
                if (j >= *(v3 + 1))
                {
                  goto LABEL_55;
                }
              }

              else if (j >= v21)
              {
                goto LABEL_55;
              }

              v22 = v3;
              if ((v21 & 0x80000000) != 0)
              {
                v22 = *v3;
              }

              v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
              v24 = v3[23];
              v25 = v24 < 0 ? *(v3 + 1) : v3[23];
              if (v25 < j)
              {
                break;
              }

              v26 = v3;
              if ((v24 & 0x80000000) != 0)
              {
                v26 = *v3;
              }

              v26[j] = v23;
            }

LABEL_84:
            __break(1u);
LABEL_85:
            std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)9>();
          }
        }

        else if (i >= v7)
        {
          goto LABEL_30;
        }

        v8 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v8 = *v4;
        }

        v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
        v10 = v4[23];
        if (v10 < 0)
        {
          v11 = *(v4 + 1);
        }

        else
        {
          v11 = v4[23];
        }

        if (v11 < i)
        {
          goto LABEL_84;
        }

        v12 = v4;
        if ((v10 & 0x80000000) != 0)
        {
          v12 = *v4;
        }

        v12[i] = v9;
      }
    }

    for (k = 0; ; ++k)
    {
      v16 = a2[23];
      if ((v16 & 0x8000000000000000) != 0)
      {
        if (k >= *(a2 + 1))
        {
LABEL_44:
          for (m = 0; ; ++m)
          {
            v28 = a3[23];
            if ((v28 & 0x8000000000000000) != 0)
            {
              if (m >= *(a3 + 1))
              {
LABEL_55:
                v32 = v4[23];
                if (v32 < 0)
                {
                  v33 = v4;
                  v4 = *v4;
                  v32 = *(v33 + 1);
                }

                std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v32]);
                v34 = v3[23];
                if (v34 < 0)
                {
                  v35 = v3;
                  v3 = *v3;
                  v34 = *(v35 + 1);
                }

                std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v34]);
                *v47 = v45;
                v48 = v46;
                *__p = *v43;
                v50 = v44;
                std::vector<std::pair<std::string,std::string>>::push_back[abi:fe200100](a1 + 88, v47);
                if (SHIBYTE(v50) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v48) < 0)
                {
                  operator delete(v47[0]);
                }

                return;
              }
            }

            else if (m >= v28)
            {
              goto LABEL_55;
            }

            v29 = a3;
            v30 = a3[23];
            if ((v28 & 0x80000000) != 0)
            {
              v29 = *a3;
              v30 = *(a3 + 1);
            }

            if (v30 < m)
            {
              goto LABEL_84;
            }

            v31 = a3;
            if ((v28 & 0x80000000) != 0)
            {
              v31 = *a3;
            }

            v31[m] = v29[m];
          }
        }
      }

      else if (k >= v16)
      {
        goto LABEL_44;
      }

      v17 = a2;
      v18 = a2[23];
      if ((v16 & 0x80000000) != 0)
      {
        v17 = *a2;
        v18 = *(a2 + 1);
      }

      if (v18 < k)
      {
        goto LABEL_84;
      }

      v19 = a2;
      if ((v16 & 0x80000000) != 0)
      {
        v19 = *a2;
      }

      v19[k] = v17[k];
    }
  }

  v13 = a2[23];
  if (v13 < 0)
  {
    v14 = *(a2 + 1);
  }

  else
  {
    v14 = a2[23];
  }

  if (v14 != 1)
  {
    goto LABEL_85;
  }

  v36 = a3[23];
  if (v36 < 0)
  {
    v36 = *(a3 + 1);
  }

  if (v36 != 1)
  {
    goto LABEL_85;
  }

  if (*(a1 + 169) == 1)
  {
    v37 = a2;
    if ((v13 & 0x80000000) != 0)
    {
      v37 = *a2;
    }

    v38 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v37);
    v39 = v4;
    if (v4[23] < 0)
    {
      v39 = *v4;
    }

    *v39 = v38;
    v40 = v3;
    if (v3[23] < 0)
    {
      v40 = *v3;
    }

    v41 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v40);
    v42 = v3;
    if (v3[23] < 0)
    {
      v42 = *v3;
    }

    *v42 = v41;
  }

  *v47 = *v4;
  v48 = *(v4 + 2);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  *__p = *v3;
  v50 = *(v3 + 2);
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  std::vector<std::pair<std::string,std::string>>::push_back[abi:fe200100](a1 + 88, v47);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }
}

void sub_18603C4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
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

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:fe200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
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

  std::vector<std::pair<char,char>>::push_back[abi:fe200100](v6, v7);
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&__s, 0, sizeof(__s));
  std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__s, a2, a3, a3 - a2);
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

void sub_18603C7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a2, a3, a3 - a2);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = HIBYTE(v12);
  if (v12 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v12 < 0)
  {
    v6 = v11;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v6]);
  v8 = *(a4 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = a4[1];
  }

  if (v9 != 1)
  {
    if (v9 == 12)
    {
      if ((v8 & 0x80) != 0)
      {
        if (a4[1] <= 0xA)
        {
LABEL_23:
          __break(1u);
          return;
        }

        a4 = *a4;
      }

      else if (v8 <= 0xA)
      {
        goto LABEL_23;
      }

      *(a4 + 11) = *(a4 + 3);
    }

    else if ((v8 & 0x80) != 0)
    {
      **a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

void sub_18603C94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a2, a3, a3 - a2);
  v6 = HIBYTE(v13);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 < 0)
  {
    v6 = v12;
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), p_p, &p_p[v6]);
  if (v13 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  classname = std::__get_classname(v8, a4);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  return classname;
}

void sub_18603CA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:fe200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:fe200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:fe200100](a1 + 64, &v7);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
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

    v20.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
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
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  std::string::__init_with_size[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a2, a3, a3 - a2);
  v4 = HIBYTE(v8);
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v8 < 0)
  {
    v4 = v7;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v4]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_18603CD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:fe200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:fe200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:fe200100](v4, i - 48);
  }
}

void std::vector<std::pair<char,char>>::push_back[abi:fe200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
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
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<char,char>>>(a1, v10);
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

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<char,char>>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = (*(result + 16) - 1);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) <= v2)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24 * v2) = *(a2 + 16);
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = (*(result + 16) - 1);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) <= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 + 24 * v2;
    *(v4 + 8) = *(a2 + 16);
    *(v4 + 16) = 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)8>();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x186602850);
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = result[10];
  v3 = a2[7];
  v4 = (a2[8] - v3) >> 4;
  if (*a2 == -991)
  {
    if (v4 > v2)
    {
      v5 = (v3 + 16 * v2);
      v6 = *v5 + 1;
      *v5 = v6;
      v7 = *(result + 3);
      v8 = *(result + 4);
      v9 = v6 < v8;
      if (v6 < v8 && v6 >= v7)
      {
        v9 = v6 < v8 && v5[1] != a2[2];
      }

      if (!v9 || v6 < v7)
      {
        *a2 = -994;
        if (!v9)
        {
          goto LABEL_27;
        }

LABEL_24:
        a2[10] = *(result + 1);
        return std::__loop<char>::__init_repeat[abi:fe200100](result, a2);
      }

      goto LABEL_25;
    }
  }

  else if (v4 > v2)
  {
    *(v3 + 16 * v2) = 0;
    if (!*(result + 4))
    {
      *a2 = -994;
LABEL_27:
      a2[10] = *(result + 2);
      return result;
    }

    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_24;
    }

LABEL_25:
    *a2 = -992;
    return result;
  }

  __break(1u);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:fe200100](result, a3);
  }

  return result;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x186602850);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1EF4D9C50;
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

unsigned int *std::__loop<char>::__init_repeat[abi:fe200100](unsigned int *result, void *a2)
{
  v2 = result[10];
  v3 = a2[7];
  if (v2 >= (a2[8] - v3) >> 4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(v3 + 16 * v2 + 8) = a2[2];
  v4 = result[11];
  v5 = result[12];
  if (v4 != v5)
  {
    v6 = v5 - 1;
    v7 = v4 - 1;
    v8 = a2[4];
    v9 = a2[3];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2[5] - v8) >> 3);
    v11 = v10 >= v7;
    v12 = v10 - v7;
    if (!v11)
    {
      v12 = 0;
    }

    v13 = v6 - v7;
    v14 = (v8 + 24 * v7 + 16);
    while (v12)
    {
      *(v14 - 2) = v9;
      *(v14 - 1) = v9;
      --v12;
      *v14 = 0;
      v14 += 24;
      if (!--v13)
      {
        return result;
      }
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x186602850);
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

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
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

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x186602850);
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

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3)
  {
    locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
    v5 = (locale_low - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
    {
      return v3;
    }

    if (v5 == 5)
    {
      if (a1->__open_count_)
      {
        return v3;
      }

      locale = 41;
    }

    else
    {
LABEL_8:
      if ((locale_low - 123) < 2)
      {
        return v3;
      }

      locale = this->__traits_.__loc_.__locale_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale);
    return (v3 + 1);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

uint64_t TIFFInitDumpMode(void *a1)
{
  a1[119] = DumpFixupTags;
  a1[126] = DumpModeDecode;
  a1[128] = DumpModeDecode;
  a1[130] = DumpModeDecode;
  a1[127] = DumpModeEncode;
  a1[129] = DumpModeEncode;
  a1[131] = DumpModeEncode;
  a1[133] = DumpModeSeek;
  return 1;
}

uint64_t DumpModeDecode(uint64_t a1, char *__dst, int64_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 1160);
  if (v10 >= __n)
  {
    v13 = *(a1 + 1152);
    if (v13 != __dst)
    {
      _TIFFmemcpy(__dst, v13, __n);
      v13 = *(a1 + 1152);
      v10 = *(a1 + 1160);
    }

    *(a1 + 1152) = &v13[__n];
    *(a1 + 1160) = v10 - __n;
    return 1;
  }

  else
  {
    TIFFErrorExtR(a1, "DumpModeDecode", "Not enough data for scanline %u, expected a request for at most %lld bytes, got a request for %lld bytes", a4, a5, a6, a7, a8, *(a1 + 876));
    return 0;
  }
}

uint64_t DumpModeEncode(void *a1, uint64_t __src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 1)
  {
    return 1;
  }

  v8 = a3;
  v9 = __src;
  while (1)
  {
    v11 = a1[145];
    v12 = a1[141];
    if (v11 + v8 <= v12)
    {
      v13 = v8;
    }

    else
    {
      v13 = v12 - v11;
    }

    if (v13 <= 0)
    {
      DumpModeEncode_cold_1();
    }

    v14 = a1[144];
    if (v14 != v9)
    {
      _TIFFmemcpy(v14, v9, v13);
      v14 = a1[144];
      v11 = a1[145];
      v12 = a1[141];
    }

    a1[144] = &v14[v13];
    v15 = v11 + v13;
    a1[145] = v15;
    if (v15 >= v12)
    {
      result = TIFFFlushData1(a1, __src, a3, a4, a5, a6, a7, a8);
      if (!result)
      {
        break;
      }
    }

    v9 += v13;
    v17 = v8 <= v13;
    v8 -= v13;
    if (v17)
    {
      return 1;
    }
  }

  return result;
}

uint64_t DumpModeSeek(void *a1, unsigned int a2)
{
  v2 = a1[138] * a2;
  a1[144] += v2;
  a1[145] -= v2;
  return 1;
}

void releaseGlobalInfoJP2(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t GlobalJP2Info::GlobalJP2Info(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 4);
  *(a1 + 4) = v3;
  *(a1 + 8) = 0;
  if (*(a2 + 8))
  {
    v4 = v3 >> 30 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = 4 * v3;
    v7 = malloc_type_malloc(4 * v3, 0x100004052888210uLL);
    *(a1 + 8) = v7;
    memcpy(v7, *(a2 + 8), v6);
  }

  return a1;
}

double JP2ReadPlugin::JP2ReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4D9DA0;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  *(v5 + 544) = 0u;
  *(v5 + 560) = 0u;
  *(v5 + 576) = 0u;
  *(v5 + 592) = 0u;
  *(v5 + 608) = 0u;
  *(v5 + 624) = 0u;
  *(v5 + 640) = 0u;
  *(v5 + 656) = 0;
  return result;
}

void JP2ReadPlugin::~JP2ReadPlugin(JP2ReadPlugin *this)
{
  *this = &unk_1EF4D9DA0;
  _cg_JP2TearDownDecompressor(this + 58);
  v2 = *(this + 70);
  if (v2)
  {
    CFRelease(v2);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  JP2ReadPlugin::~JP2ReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t JP2ReadPlugin::loadDataFromXPCObject(JP2ReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_jp2", &length);
    v6 = length;
    if (length < 0xC8)
    {
      return 4294967246;
    }

    else
    {
      v7 = data;
      result = 0;
      *(this + 29) = *v7;
      v8 = *(v7 + 1);
      v9 = *(v7 + 2);
      v10 = *(v7 + 4);
      *(this + 32) = *(v7 + 3);
      *(this + 33) = v10;
      *(this + 30) = v8;
      *(this + 31) = v9;
      v11 = *(v7 + 5);
      v12 = *(v7 + 6);
      v13 = *(v7 + 8);
      *(this + 36) = *(v7 + 7);
      *(this + 37) = v13;
      *(this + 34) = v11;
      *(this + 35) = v12;
      v14 = *(v7 + 9);
      v15 = *(v7 + 10);
      v16 = *(v7 + 11);
      *(this + 82) = *(v7 + 24);
      *(this + 39) = v15;
      *(this + 40) = v16;
      *(this + 38) = v14;
      *(this + 58) = *(this + 3);
      *(this + 61) = MyRead;
      *(this + 62) = MySeek;
      *(this + 63) = 0;
      *(this + 60) = *(this + 26);
      *(this + 128) = 0;
      *(this + 65) = 0;
      *(this + 70) = 0;
      *(this + 38) = 0u;
      if (v6 != 200)
      {
        v17 = CFDataCreate(*MEMORY[0x1E695E480], v7 + 200, v6 - 200);
        result = 0;
        *(this + 70) = v17;
      }
    }
  }

  return result;
}

uint64_t JP2ReadPlugin::saveDataToXPCObject(JP2ReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    v5 = *(this + 40);
    v25 = *(this + 39);
    v26 = v5;
    v27 = *(this + 82);
    v6 = *(this + 36);
    *theData = *(this + 35);
    v22 = v6;
    v7 = *(this + 38);
    v23 = *(this + 37);
    v24 = v7;
    v8 = *(this + 32);
    v17 = *(this + 31);
    v18 = v8;
    v9 = *(this + 34);
    v19 = *(this + 33);
    v20 = v9;
    v10 = theData[0];
    theData[0] = 0;
    memset(v16, 0, sizeof(v16));
    v17 = 0u;
    v18 = 0u;
    v24 = 0uLL;
    if (v10)
    {
      v11 = CFDataGetLength(v10) + 200;
    }

    else
    {
      v11 = 200;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v11);
    CFDataAppendBytes(Mutable, v16, 200);
    if (v10)
    {
      BytePtr = CFDataGetBytePtr(v10);
      Length = CFDataGetLength(v10);
      CFDataAppendBytes(Mutable, BytePtr, Length);
    }

    iio_xpc_dictionary_add_CFData(a2, "iio_xpc_plugin_data_jp2", Mutable);
    CFRelease(Mutable);
  }

  return v4;
}

CGColorSpaceRef JP2ReadPlugin::createColorSpaceForJP2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = *(a2 + 80);
  if (v6 <= 17)
  {
    if (v6 == 12)
    {
      v9 = MEMORY[0x1E695F118];
      goto LABEL_19;
    }

    if (v6 != 16)
    {
      if (v6 != 17)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v7 = *(a2 + 96);
  if (v6 > 100)
  {
    if (v6 == 101)
    {
      v8 = CGColorSpaceCreateWithICCData(v7);
      if (v8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v6 != 102)
      {
        goto LABEL_20;
      }

      v10 = *(a2 + 88);
      v8 = CGColorSpaceCreateWithICCData(v7);
      if (v8)
      {
LABEL_25:
        v5 = v8;
        goto LABEL_26;
      }

      if ((v10 - 1) <= 3)
      {
        v9 = qword_1E6F099F0[v10 - 1];
        goto LABEL_19;
      }
    }

LABEL_18:
    v9 = MEMORY[0x1E695F1C0];
    goto LABEL_19;
  }

  if (v6 == 18)
  {
    goto LABEL_18;
  }

  if (v6 != 100)
  {
    goto LABEL_20;
  }

  v8 = CGColorSpaceCreateWithICCData(v7);
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_10:
  v9 = MEMORY[0x1E695F128];
LABEL_19:
  v5 = CGColorSpaceCreateWithName(*v9);
LABEL_20:
  if (v5)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3 == 0;
  }

  if (!v11)
  {
    v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    goto LABEL_25;
  }

LABEL_26:
  if (*(a2 + 179) != 1)
  {
    return v5;
  }

  v12 = 1380401696;
  v23 = 0;
  v13 = *(a2 + 80);
  if (v13 > 99)
  {
    if (v13 == 100)
    {
      goto LABEL_38;
    }

    if (v13 != 102)
    {
      goto LABEL_39;
    }

    if (*(a2 + 88) == 1)
    {
      v12 = 1196573017;
    }

    else
    {
      v12 = 1380401696;
    }

    if (!v5)
    {
LABEL_43:
      if (v12 == 1129142603)
      {
        v15 = MEMORY[0x1E695F118];
      }

      else if (v12 == 1196573017)
      {
        v15 = MEMORY[0x1E695F128];
      }

      else
      {
        v15 = MEMORY[0x1E695F1C0];
      }

      v14 = CGColorSpaceCreateWithName(*v15);
      if (!v14)
      {
        return v5;
      }

      goto LABEL_49;
    }
  }

  else
  {
    if (v13 != 12)
    {
      if (v13 != 17)
      {
LABEL_39:
        if (!v5)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

LABEL_38:
      v12 = 1196573017;
      goto LABEL_39;
    }

    v12 = 1129142603;
    if (!v5)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  v14 = CFRetain(v5);
  if (!v14)
  {
    goto LABEL_43;
  }

LABEL_49:
  v16 = v14;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v14);
  Palette = _cg_JP2GetPalette(a2, NumberOfComponents, &v23 + 1, &v23);
  if (Palette)
  {
    v19 = Palette;
    v20 = v23;
    if (CGColorSpaceGetNumberOfComponents(v16) <= v20)
    {
      Indexed = CGColorSpaceCreateIndexed(v16, SHIDWORD(v23) - 1, v19);
      if (v5)
      {
        CGColorSpaceRelease(v5);
      }
    }

    else
    {
      Indexed = v5;
    }

    free(v19);
    v5 = Indexed;
  }

  CFRelease(v16);
  return v5;
}

uint64_t JP2ReadPlugin::validateJ2K(JP2ReadPlugin *this, IIOScanner *a2, unint64_t a3, BOOL *a4)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 3);
  if (a4)
  {
    *a4 = 0;
  }

  v8 = v7 + a3;
  if (v7 < v7 + a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v22 = a3 + 10;
    v23 = 0;
    while (1)
    {
      Val16 = IIOScanner::getVal16(a2);
      v14 = Val16;
      if (!Val16)
      {
        goto LABEL_46;
      }

      if (JP2ReadPlugin::hasNoLength(Val16, Val16))
      {
        if (v14 == 65427)
        {
          if (v9 + 1 < 0xF)
          {
            goto LABEL_50;
          }

          v15 = v9 - 14;
LABEL_34:
          v12 = 1;
          goto LABEL_41;
        }

        v15 = 0;
      }

      else
      {
        v16 = IIOScanner::getVal16(a2);
        if (v16 < 2)
        {
          goto LABEL_50;
        }

        v15 = v16 - 2;
        switch(v14)
        {
          case 65424:
            __dst[0] = 0;
            if (IIOScanner::copyBytes(a2, __dst, 8uLL) != 8 || BYTE6(__dst[0]) == 255)
            {
LABEL_50:
              v20 = 0;
              return v20 & 1;
            }

            v19 = *(a2 + 3);
            if (*(__dst + 2))
            {
              v9 = bswap32(*(__dst + 2));
            }

            else
            {
              if (v19 + 10 > a3)
              {
                goto LABEL_50;
              }

              v9 = v22 - v19;
            }

            IIOScanner::seek(a2, v19 - 8);
            goto LABEL_41;
          case 65362:
            v18 = *(a2 + 3);
            if (!JP2ReadPlugin::checkCodingStyleDefaultBox(v16, a2))
            {
              goto LABEL_50;
            }

            IIOScanner::seek(a2, v18);
LABEL_30:
            v11 = 1;
            goto LABEL_41;
          case 65361:
            v17 = *(a2 + 3);
            if (!JP2ReadPlugin::checkImageTileSizeBox(v16, a2))
            {
              goto LABEL_50;
            }

            IIOScanner::seek(a2, v17);
LABEL_31:
            v10 = 1;
            goto LABEL_41;
        }

        if (v9)
        {
          if (v9 < 5)
          {
            goto LABEL_50;
          }

          v9 = v9 - v16 - 2;
        }
      }

      if (v14 > 65371)
      {
        switch(v14)
        {
          case 65372:
            BYTE4(v23) = 1;
            break;
          case 65427:
            goto LABEL_34;
          case 65497:
            if (a4)
            {
              *a4 = 1;
            }

            goto LABEL_46;
        }
      }

      else
      {
        switch(v14)
        {
          case 65359:
            LOBYTE(v23) = 1;
            break;
          case 65361:
            goto LABEL_31;
          case 65362:
            goto LABEL_30;
        }
      }

LABEL_41:
      if (v15)
      {
        IIOScanner::skip(a2, v15);
      }

      if (*(a2 + 3) >= v8)
      {
        goto LABEL_46;
      }
    }
  }

  v12 = 0;
  v23 = 0;
  v11 = 0;
  v10 = 0;
LABEL_46:
  v20 = v23 & v10 & v11 & BYTE4(v23) & v12;
  return v20 & 1;
}

BOOL JP2ReadPlugin::checkImageTileSizeBox(JP2ReadPlugin *this, IIOScanner *a2)
{
  IIOScanner::getVal16(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal32(a2);
  IIOScanner::getVal16(a2);
  return (IIOScanner::getVal8(a2) & 0x7F) - 1 < 0x26;
}

uint64_t JP2ReadPlugin::checkCodingStyleDefaultBox(JP2ReadPlugin *this, IIOScanner *a2)
{
  IIOScanner::getVal8(a2);
  Val8 = IIOScanner::getVal8(a2);
  Val16 = IIOScanner::getVal16(a2);
  IIOScanner::getVal8(a2);
  v5 = IIOScanner::getVal8(a2);
  v6 = IIOScanner::getVal8(a2);
  v7 = IIOScanner::getVal8(a2);
  IIOScanner::getVal8(a2);
  if (Val8 >= 5)
  {
    *&v8 = _cg_jpeg_mem_term("checkCodingStyleDefaultBox", 1206, "*** ERROR: unexpected 'Progression order for the SGcod, SPcoc, and Ppoc parameters' (%d)\n", Val8).n128_u64[0];
  }

  if (Val16)
  {
    if (v5 >= 0x21)
    {
      JP2ReadPlugin::checkCodingStyleDefaultBox(v5);
    }

    else if (v6 >= 9)
    {
      _cg_jpeg_mem_term("checkCodingStyleDefaultBox", 1216, "*** ERROR: invalid xcb - failing 'COD xcb' check:  2 <= %d <= 10\n", v8);
    }

    else if (v7 >= 9)
    {
      _cg_jpeg_mem_term("checkCodingStyleDefaultBox", 1219, "*** ERROR: invalid ycb - failing 'COD ycb' check:  2 <= %d <= 10\n", v8);
    }

    else
    {
      if ((v7 + 2) + (v6 + 2) < 0xD)
      {
        return 1;
      }

      _cg_jpeg_mem_term("checkCodingStyleDefaultBox", 1222, "*** ERROR: bad 'COD ycb/ycb' (%d+%d)>12\n", v8);
    }
  }

  else
  {
    JP2ReadPlugin::checkCodingStyleDefaultBox();
  }

  return 0;
}

uint64_t JP2ReadPlugin::checkFileTypeBox(JP2ReadPlugin *this, IIOScanner *a2, int a3)
{
  if ((a3 & 3) != 0)
  {
    _cg_jpeg_mem_term("checkFileTypeBox", 928, "*** ERROR: bad JP2 FileBox size [%lld]\n");
    return 0;
  }

  Val32 = IIOScanner::getVal32(a2);
  if (Val32 != 1785737760)
  {
    v6 = Val32;
    if (Val32 != 1785755680)
    {
      if ((Val32 >> 24) > 0x7F)
      {
        __maskrune(Val32 >> 24, 0x40000uLL);
      }

      if ((v6 << 8 >> 24) > 0x7F)
      {
        __maskrune(v6 << 8 >> 24, 0x40000uLL);
      }

      if ((v6 >> 8) > 0x7F)
      {
        __maskrune(v6 >> 8, 0x40000uLL);
      }

      if (v6 > 0x7F)
      {
        __maskrune(v6, 0x40000uLL);
      }

      _cg_jpeg_mem_term("checkFileTypeBox", 932, "*** ERROR: bad majorBrand '%c%c%c%c' [%08X]\n");
      return 0;
    }
  }

  v7 = IIOScanner::getVal32(a2);
  if (v7)
  {
    v8 = v7;
    if (v7 != 1785737760)
    {
      v9 = v7 >> 24;
      if ((v7 >> 24) <= 0x7F)
      {
        v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
      }

      else
      {
        v10 = __maskrune(v7 >> 24, 0x40000uLL);
      }

      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 46;
      }

      v12 = v8 << 8 >> 24;
      if (v12 <= 0x7F)
      {
        v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
      }

      else
      {
        v13 = __maskrune(v8 << 8 >> 24, 0x40000uLL);
      }

      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 46;
      }

      v15 = v8 >> 8;
      if (v15 <= 0x7F)
      {
        v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
      }

      else
      {
        v16 = __maskrune(v8 >> 8, 0x40000uLL);
      }

      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 46;
      }

      if (v8 <= 0x7F)
      {
        v18 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
      }

      else
      {
        v18 = __maskrune(v8, 0x40000uLL);
      }

      if (v18)
      {
        v19 = v8;
      }

      else
      {
        v19 = 46;
      }

      LogWarning("checkFileTypeBox", 940, "*** NOTE: JPEG2000 - bad minorVersion? [0x%08X] '%c%c%c%c'\n", v8, v11, v14, v17, v19);
    }
  }

  if (a3 == 8)
  {
LABEL_46:
    _cg_jpeg_mem_term("checkFileTypeBox", 957, "*** ERROR: CompatibleBrands does not contain 'jp2 '\n");
    return 0;
  }

  if ((a3 - 8) >> 2 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (a3 - 8) >> 2;
  }

  while (IIOScanner::getVal32(a2) != 1785737760)
  {
    if (!--v20)
    {
      goto LABEL_46;
    }
  }

  return 1;
}

uint64_t JP2ReadPlugin::checkImageHeaderBox(JP2ReadPlugin *this, IIOScanner *a2)
{
  Val32 = IIOScanner::getVal32(a2);
  v4 = IIOScanner::getVal32(a2);
  Val16 = IIOScanner::getVal16(a2);
  Val8 = IIOScanner::getVal8(a2);
  v7 = IIOScanner::getVal8(a2);
  v8 = IIOScanner::getVal8(a2);
  v9 = IIOScanner::getVal8(a2);
  if (Val32)
  {
    if (v4)
    {
      if ((Val16 - 16385) <= 0xFFFFBFFF)
      {
        _cg_jpeg_mem_term("checkImageHeaderBox", 1048, "*** ERROR: invalid JP2: numberOfComponents == %d\n");
      }

      else if ((Val8 - 39) > 0xFFFFFFD9 || Val16 == 255)
      {
        if (v7 == 7)
        {
          if (v9 < 2)
          {
            return 1;
          }

          JP2ReadPlugin::checkImageHeaderBox(v8);
        }

        else
        {
          JP2ReadPlugin::checkImageHeaderBox(v7);
        }
      }

      else
      {
        _cg_jpeg_mem_term("checkImageHeaderBox", 1049, "*** ERROR: invalid JP2: numberOfComponents == %d\n");
      }
    }

    else
    {
      JP2ReadPlugin::checkImageHeaderBox();
    }
  }

  else
  {
    JP2ReadPlugin::checkImageHeaderBox();
  }

  return 0;
}

uint64_t JP2ReadPlugin::checkColorSpecificationBox(JP2ReadPlugin *this, IIOScanner *a2, uint64_t a3, unsigned int *a4)
{
  Val8 = IIOScanner::getVal8(a2);
  if (a3 == 15 && (Val8 - 3) <= 0xFDu)
  {
    JP2ReadPlugin::checkColorSpecificationBox(Val8);
  }

  else
  {
    if (Val8 != 1)
    {
      v11 = 0;
      if (!a4)
      {
        return 1;
      }

LABEL_9:
      *a4 = v11;
      return 1;
    }

    IIOScanner::skip(a2, 2uLL);
    Val32 = IIOScanner::getVal32(a2);
    v9 = Val32;
    v10 = Val32 - 1;
    if (Val32 - 1) < 0x18 && ((0xFFFD0Du >> v10))
    {
      v11 = dword_18620B420[v10];
      if (!a4)
      {
        return 1;
      }

      goto LABEL_9;
    }

    _cg_jpeg_mem_term("checkColorSpecificationBox", 1105, "*** ERROR: unsupported colorSpace (%d)\n", Val32);
    _cg_jpeg_mem_term("checkColorSpecificationBox", 1108, "*** ERROR: invalid JP2 colorSpace: %d\n", v9);
  }

  return 0;
}

uint64_t JP2ReadPlugin::checkPaletteBox(JP2ReadPlugin *this, IIOScanner *a2, unint64_t a3, unsigned int a4)
{
  IIOScanner::getVal16(a2);
  IIOScanner::getVal8(a2);
  if (a4 < 0x15 && ((0x130001u >> a4) & 1) != 0)
  {
    return 1;
  }

  _cg_jpeg_mem_term("checkPaletteBox", 1137, "*** ERROR: invalid JP2: PaletteBox for non-RGB/non-Grayscale image (cs: %d)\n", a4);
  return 0;
}

BOOL JP2ReadPlugin::checkContinousCodestreamBox(JP2ReadPlugin *this, IIOScanner *a2)
{
  if (IIOScanner::getVal16(a2) == 65359)
  {
    while (1)
    {
      Val16 = IIOScanner::getVal16(a2);
      v4 = *(a2 + 3);
      v5 = IIOScanner::getVal16(a2);
      v6 = v5;
      if (Val16 <= 65361)
      {
        if (Val16 == 65361)
        {
          result = JP2ReadPlugin::checkImageTileSizeBox(v5, a2);
          if (!result)
          {
            return result;
          }
        }
      }

      else if (Val16 == 65362)
      {
        if ((JP2ReadPlugin::checkCodingStyleDefaultBox(v5, a2) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 1;
        if (Val16 == 65427 || Val16 == 65497)
        {
          return result;
        }
      }

      IIOScanner::seek(a2, v4 + v6);
    }
  }

  JP2ReadPlugin::checkContinousCodestreamBox();
  return 0;
}

uint64_t JP2ReadPlugin::validateJP2(JP2ReadPlugin *this, IIOScanner *a2)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  Val32 = IIOScanner::getVal32(a2);
  if (v5 + 3 >= v4)
  {
LABEL_57:
    _cg_jpeg_mem_term("validateJP2", 1382, "*** ERROR: missing or invalid SignatureBox count (%u)\n");
  }

  else
  {
    LODWORD(v7) = Val32;
    v23 = this;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 1001;
    do
    {
      if (!--v8)
      {
        _cg_jpeg_mem_term("validateJP2", 1298, "*** ERROR: too many boxes (%u)\n");
        return 0;
      }

      Val64 = IIOScanner::getVal32(a2);
      v10 = Val64;
      if (v7 == 1)
      {
        Val64 = IIOScanner::getVal64(a2);
        v7 = Val64;
      }

      else
      {
        v7 = v7;
      }

      if (v10 > 1785737826)
      {
        if (v10 == 1785737827)
        {
          if (++v25 >= 2)
          {
            _cg_jpeg_mem_term("validateJP2", 1346, "*** ERROR: duplicate JP2C Continuous Codestream Box (count: %u)\n");
            return 0;
          }

          if (!JP2ReadPlugin::checkContinousCodestreamBox(Val64, a2))
          {
            return 0;
          }
        }

        else if (v10 == 1785737832)
        {
          if ((v24 + 1) >= 2)
          {
            _cg_jpeg_mem_term("validateJP2", 1336, "*** ERROR: duplicate JP2H Header Box (count: %u)\n");
            return 0;
          }

          ++v24;
          if ((JP2ReadPlugin::checkJP2HeaderBox(v23, a2, v7) & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10 == 1718909296)
      {
        if (++v27 >= 2)
        {
          _cg_jpeg_mem_term("validateJP2", 1326, "*** ERROR: duplicate FTYP File Type Box (count: %u)\n");
          return 0;
        }

        if ((JP2ReadPlugin::checkFileTypeBox(Val64, a2, v7) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10 == 1783636000)
      {
        if (++v26 >= 2)
        {
          _cg_jpeg_mem_term("validateJP2", 1316, "*** ERROR: duplicate JP Signature Box (count: %u)\n");
          return 0;
        }

        if (IIOScanner::getVal32(a2) != 218793738)
        {
          return 0;
        }
      }

      if (v7 + v5 == v4)
      {
        break;
      }

      if (v7 + v5 > v4)
      {
        v11 = v10 >> 24;
        v12 = (v10 >> 24) <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000 : __maskrune(v10 >> 24, 0x40000uLL);
        v13 = v12 ? v11 : 46;
        v28 = v13;
        v14 = v10 << 8 >> 24;
        v15 = v14 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000 : __maskrune(v10 << 8 >> 24, 0x40000uLL);
        v16 = v15 ? v14 : 46;
        v17 = v10 >> 8;
        v18 = v17 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000 : __maskrune(v10 >> 8, 0x40000uLL);
        v19 = v18 ? v17 : 46;
        v20 = v10 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000 : __maskrune(v10, 0x40000uLL);
        v21 = v20 ? v10 : 46;
        _cg_jpeg_mem_term("validateJP2", 1368, "*** ERROR: marker '%c%c%c%c' length (%llu) at offset (%llu [0x%llX]) larger than fileSize(%llu)\n", v28, v16, v19, v21, v7, v5, v5, v4);
        if (v10 != 1785737827)
        {
          break;
        }
      }

      IIOScanner::seek(a2, v7 + v5);
      if (!v7)
      {
        break;
      }

      v5 = *(a2 + 3);
      LODWORD(v7) = IIOScanner::getVal32(a2);
    }

    while (v5 + 3 < v4);
    if (v26 != 1)
    {
      goto LABEL_57;
    }

    if (v27 == 1)
    {
      if (v24 == 1)
      {
        if (v25 == 1)
        {
          return 1;
        }

        _cg_jpeg_mem_term("validateJP2", 1385, "*** ERROR: missing or invalid ContinuousCodestreamBox count (%u)\n");
      }

      else
      {
        _cg_jpeg_mem_term("validateJP2", 1384, "*** ERROR: missing or invalid JP2HeaderBox count (%u)\n");
      }
    }

    else
    {
      _cg_jpeg_mem_term("validateJP2", 1383, "*** ERROR: missing or invalid FileTypeBox count (%u)\n");
    }
  }

  return 0;
}

uint64_t JP2ReadPlugin::isValidJP2000(JP2ReadPlugin *this)
{
  v8 = 0;
  Size = IIOImageReadSession::getSize(*(this + 3));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  IIOScanner::IIOScanner(v6, *(this + 3));
  IIOScanner::setEndianness(v6, 0);
  IIOScanner::seek(v6, *(this + 26));
  Val16 = IIOScanner::getVal16(v6);
  IIOScanner::seek(v6, *(this + 26));
  if (Val16 == 65359)
  {
    if (JP2ReadPlugin::validateJ2K(this, v6, Size, &v8))
    {
      if (v8 || !IIOImageReadSession::isFinal(*(this + 3)))
      {
        v4 = 1;
        goto LABEL_9;
      }

      _cg_jpeg_mem_term("isValidJP2000", 1414, "*** ERROR: missing EOC maker for final JPEG2000\n");
    }

    v4 = 0;
  }

  else
  {
    v4 = JP2ReadPlugin::validateJP2(this, v6);
  }

LABEL_9:
  IIOScanner::~IIOScanner(v6);
  return v4;
}

void sub_18603FD24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18603FCE4);
}

uint64_t JP2ReadPlugin::initialize(JP2ReadPlugin *this, IIODictionary *a2)
{
  v4 = *(this + 6);
  IIODictionary::getUint32ForKey(a2, @"NEW_PLUGIN_expectedWidth");
  IIODictionary::getUint32ForKey(a2, @"NEW_PLUGIN_expectedHeight");
  if (JP2ReadPlugin::isValidJP2000(this))
  {
    v5 = *(this + 26);
    if (v5)
    {
      IIOImageReadSession::seek(*(this + 3), v5, 0);
      v6 = *(this + 26);
    }

    else
    {
      v6 = 0;
    }

    *(this + 472) = 0u;
    *(this + 488) = 0u;
    *(this + 81) = 0;
    *(this + 616) = 0u;
    *(this + 632) = 0u;
    *(this + 584) = 0u;
    *(this + 600) = 0u;
    *(this + 552) = 0u;
    *(this + 568) = 0u;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 504) = 0u;
    v7 = *(this + 3);
    *(this + 58) = v7;
    *(this + 60) = v6;
    *(this + 61) = MyRead;
    *(this + 62) = MySeek;
    if (!IIOImageReadSession::globalInfoForType(v7, 1246769696))
    {
      v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040449DF08BuLL);
      v8[1] = 0;
      IIOImageReadSession::setGlobalInfo(*(this + 3), 1246769696, v8, releaseGlobalInfoJP2);
    }

    *(this + 641) = 0;
    if (IIODictionary::containsKey(v4, @"kCGImageSourceSubsampleFactor"))
    {
      *(this + 79) = IIODictionary::getUint32ForKey(v4, @"kCGImageSourceSubsampleFactor");
    }

    *(this + 78) = *(this + 57);
    _cg_JP2SetupDecompressor(this + 464, this + 464);
  }

  JP2ReadPlugin::initialize();
  kdebug_trace();
  return 4294967246;
}

void sub_1860402F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t JP2ReadPlugin::decodeJP2Block(JP2ReadPlugin *this, void *a2, CGRect a3)
{
  *(this + 77) = a2;
  *(this + 128) = 0;
  if (*(this + 642) == 1)
  {
    IIOImageReadSession::rewind(*(this + 3));
    _cg_JP2ResetSource(this + 58);
  }

  return _cg_JP2DecompressBlock(this + 464, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
}

void sub_186040394(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186040380);
}

uint64_t JP2ReadPlugin::decodeJP2Prog(JP2ReadPlugin *this, void *a2, CGRect a3)
{
  if (IIOImageReadSession::globalInfoForType(*(this + 3), 1246769696))
  {
    IIOImageReadSession::rewind(*(this + 3));
    _cg_JP2ResetSource(this + 58);
  }

  LogError("decodeJP2Prog", 1771, "globalInfo is NULL\n");
  return 2;
}

void *std::vector<IIODecodeFrameParams>::push_back[abi:fe200100](void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v11 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *result) >> 3);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *result) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x1745D1745D1745DLL)
    {
      v14 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v14 = v12;
    }

    v20[4] = result;
    if (v14)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeFrameParams>>(result, v14);
    }

    v15 = 88 * v11;
    v20[0] = 0;
    v20[1] = v15;
    v20[3] = 0;
    v16 = *(a2 + 16);
    *v15 = *a2;
    *(v15 + 16) = v16;
    v18 = *(a2 + 48);
    v17 = *(a2 + 64);
    v19 = *(a2 + 32);
    *(v15 + 80) = *(a2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v17;
    *(v15 + 32) = v19;
    v20[2] = 88 * v11 + 88;
    std::vector<IIODecodeFrameParams>::__swap_out_circular_buffer(result, v20);
    v10 = v3[1];
    result = std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(v20);
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v8;
    *(v4 + 64) = v9;
    *(v4 + 32) = v7;
    v10 = v4 + 88;
    result[1] = v4 + 88;
  }

  v3[1] = v10;
  return result;
}

{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v11 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *result) >> 3);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *result) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x1745D1745D1745DLL)
    {
      v14 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v14 = v12;
    }

    v20[4] = result;
    if (v14)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeFrameParams>>(result, v14);
    }

    v15 = 88 * v11;
    v20[0] = 0;
    v20[1] = v15;
    v20[3] = 0;
    v16 = *(a2 + 16);
    *v15 = *a2;
    *(v15 + 16) = v16;
    v18 = *(a2 + 48);
    v17 = *(a2 + 64);
    v19 = *(a2 + 32);
    *(v15 + 80) = *(a2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v17;
    *(v15 + 32) = v19;
    v20[2] = 88 * v11 + 88;
    std::vector<IIODecodeFrameParams>::__swap_out_circular_buffer(result, v20);
    v10 = v3[1];
    result = std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(v20);
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v8;
    *(v4 + 64) = v9;
    *(v4 + 32) = v7;
    v10 = v4 + 88;
    result[1] = v4 + 88;
  }

  v3[1] = v10;
  return result;
}