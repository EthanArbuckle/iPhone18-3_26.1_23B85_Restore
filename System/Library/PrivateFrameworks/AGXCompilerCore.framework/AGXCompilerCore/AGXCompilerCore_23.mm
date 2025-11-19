void std::vector<char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
  std::string::__init_with_size[abi:nn200100]<char *,char *>(&__s, __src, a4, a4 - __src);
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

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_87;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_64;
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
  std::__get_collation_name(&v113, &__s);
  __p = v113;
  size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v113.__r_.__value_.__l.__size_;
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

  (*(*this->__traits_.__col_ + 32))(&v113);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v113;
  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v113.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v113.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_178;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_178:
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

LABEL_64:
    negate = 0;
    v9 = 1;
    goto LABEL_65;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_64;
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

    goto LABEL_231;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_s = &__s;
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v113);
    v17 = this->__ranges_.__begin_;
    v18 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v19 = this->__ranges_.__end_ - v17;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v108 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      v22 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v23 = &v17->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      while (1)
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v21)
        {
          v29 = v21;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(p_s, v28, v29);
        v31 = v21 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v21 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v21;
          }

          v36 = memcmp(v34, p_s, v35);
          v37 = v33 >= v21;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            break;
          }
        }

        v25 = v24++ < v20;
        v23 += 48;
        if (!--v22)
        {
          v38 = 0;
          goto LABEL_181;
        }
      }

      v38 = 5;
LABEL_181:
      v18 = v108;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v88 = 1;
      goto LABEL_211;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v88 = 0;
    goto LABEL_213;
  }

  v89 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v113);
  v90 = this->__equivalences_.__begin_;
  v91 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v92 = this->__equivalences_.__end_ - v90;
  if (v92)
  {
    v93 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v89 = __s.__r_.__value_.__r.__words[0];
    }

    if (v93 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    }

    v96 = 1;
    v97 = 1;
    while (1)
    {
      v98 = HIBYTE(v90->__r_.__value_.__r.__words[2]);
      v99 = v98;
      if ((v98 & 0x80u) != 0)
      {
        v98 = v90->__r_.__value_.__l.__size_;
      }

      if (v94 == v98)
      {
        v100 = v99 >= 0 ? v90 : v90->__r_.__value_.__r.__words[0];
        if (!memcmp(v89, v100, v94))
        {
          break;
        }
      }

      v97 = v96++ < v93;
      ++v90;
      if (!--v95)
      {
        goto LABEL_208;
      }
    }

    v88 = 1;
    v38 = 5;
    if (v91 < 0)
    {
LABEL_209:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v97 = 0;
LABEL_208:
    v38 = 0;
    v88 = 0;
    if (v91 < 0)
    {
      goto LABEL_209;
    }
  }

  if (!v97)
  {
LABEL_213:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v103 = tab[__src];
      if (((v103 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_231;
      }

      neg_mask = this->__neg_mask_;
      if ((v103 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_230:
        negate = v88;
LABEL_232:
        v9 = 2;
        goto LABEL_87;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_232;
        }
      }

      goto LABEL_230;
    }

LABEL_231:
    negate = 1;
    goto LABEL_232;
  }

LABEL_211:
  v9 = 2;
  negate = v88;
  if (v38)
  {
    goto LABEL_87;
  }

LABEL_65:
  v40 = *a2->__current_;
  v113.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    v113.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_86;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v45 = (v40 == 95) & (v44 >> 7);
    }

    else
    {
      LOBYTE(v45) = 1;
    }

    end = this->__neg_chars_.__end_;
    v47 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v48 = !v47 || v47 == end;
    v49 = !v48;
    if ((v45 & 1) == 0 && !v49)
    {
LABEL_86:
      negate = 1;
      goto LABEL_87;
    }
  }

  v52 = this->__ranges_.__begin_;
  v53 = this->__ranges_.__end_;
  if (v52 != v53)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
      v52 = this->__ranges_.__begin_;
      v53 = this->__ranges_.__end_;
      v54 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    }

    v55 = v53 - v52;
    if (v55)
    {
      v109 = v9;
      v105 = negate;
      v106 = v54;
      v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      if ((v54 & 0x80u) == 0)
      {
        v57 = v54;
      }

      else
      {
        v57 = __s.__r_.__value_.__l.__size_;
      }

      if ((v54 & 0x80u) == 0)
      {
        v58 = &__s;
      }

      else
      {
        v58 = __s.__r_.__value_.__r.__words[0];
      }

      if (v56 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      }

      v60 = &v52->second.__r_.__value_.__r.__words[2] + 7;
      v61 = 1;
      v62 = 1;
      while (1)
      {
        v63 = *(v60 - 24);
        if (v63 >= 0)
        {
          v64 = *(v60 - 24);
        }

        else
        {
          v64 = *(v60 - 39);
        }

        if (v63 >= 0)
        {
          v65 = (v60 - 47);
        }

        else
        {
          v65 = *(v60 - 47);
        }

        if (v64 >= v57)
        {
          v66 = v57;
        }

        else
        {
          v66 = v64;
        }

        v67 = memcmp(v58, v65, v66);
        v68 = v57 >= v64;
        if (v67)
        {
          v68 = v67 >= 0;
        }

        if (v68)
        {
          v69 = *v60;
          if (v69 >= 0)
          {
            v70 = *v60;
          }

          else
          {
            v70 = *(v60 - 15);
          }

          if (v69 >= 0)
          {
            v71 = (v60 - 23);
          }

          else
          {
            v71 = *(v60 - 23);
          }

          if (v57 >= v70)
          {
            v72 = v70;
          }

          else
          {
            v72 = v57;
          }

          v73 = memcmp(v71, v58, v72);
          v74 = v70 >= v57;
          if (v73)
          {
            v74 = v73 >= 0;
          }

          if (v74)
          {
            break;
          }
        }

        v62 = v61++ < v56;
        v60 += 48;
        if (!--v59)
        {
          negate = v105;
          goto LABEL_142;
        }
      }

      negate = 1;
LABEL_142:
      v9 = v109;
      if ((v106 & 0x80) == 0)
      {
LABEL_144:
        if (v62)
        {
          goto LABEL_87;
        }

        goto LABEL_145;
      }
    }

    else
    {
      v62 = 0;
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_144;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_144;
  }

LABEL_145:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_171;
  }

  v75 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
  v76 = this->__equivalences_.__begin_;
  v77 = this->__equivalences_.__end_ - v76;
  if (!v77)
  {
    v82 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_169;
  }

  v107 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v110 = v9;
  v78 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = __s.__r_.__value_.__l.__size_;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v75 = __s.__r_.__value_.__r.__words[0];
  }

  if (v78 <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  }

  v81 = 1;
  v82 = 1;
  while (1)
  {
    v83 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
    v84 = v83;
    if ((v83 & 0x80u) != 0)
    {
      v83 = v76->__r_.__value_.__l.__size_;
    }

    if (v79 == v83)
    {
      v85 = v84 >= 0 ? v76 : v76->__r_.__value_.__r.__words[0];
      if (!memcmp(v75, v85, v79))
      {
        break;
      }
    }

    v82 = v81++ < v78;
    ++v76;
    if (!--v80)
    {
      goto LABEL_168;
    }
  }

  negate = 1;
LABEL_168:
  v9 = v110;
  if (v107 < 0)
  {
LABEL_169:
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_170:
  if (v82)
  {
    goto LABEL_87;
  }

LABEL_171:
  v86 = this->__mask_;
  if ((v113.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v113.__r_.__value_.__s.__data_[0]] & v86) != 0)
  {
    goto LABEL_86;
  }

  v87 = (v86 >> 7) & 1;
  if (v113.__r_.__value_.__s.__data_[0] != 95)
  {
    LOBYTE(v87) = 0;
  }

  negate |= v87;
LABEL_87:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v51 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v51 = -995;
  }

  a2->__do_ = v51;
  a2->__node_ = first;
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
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

_BYTE *std::string::__init_with_size[abi:nn200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v10 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v10);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v3 = a1[11].__locale_;
  if (v3)
  {
    v4 = a1[12].__locale_;
    v5 = a1[11].__locale_;
    if (v4 != v3)
    {
      do
      {
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:nn200100](v4);
      }

      while (v4 != v3);
      v5 = a1[11].__locale_;
    }

    a1[12].__locale_ = v3;
    operator delete(v5);
  }

  v6 = a1[8].__locale_;
  if (v6)
  {
    a1[9].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[5].__locale_;
  if (v7)
  {
    a1[6].__locale_ = v7;
    operator delete(v7);
  }

  std::locale::~locale(a1 + 2);
  v8 = a1[1].__locale_;
  if (v8)
  {
    (*(*v8 + 8))(v8);
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

  JUMPOUT(0x20F331DC0);
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
    v3 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(v3, v4);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
    return 1;
  }

  return result;
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

void std::__back_ref<char>::__exec(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    v10 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::__back_ref<char>::~__back_ref(v10);
  }

  else
  {
    v5 = v3 + 24 * (v2 - 1);
    if (*(v5 + 16) == 1 && (v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && !memcmp(*v5, *(a2 + 16), v7))
    {
      *a2 = -994;
      *(a2 + 16) = v8 + v7;
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = 0;
      *a2 = -993;
    }

    *(a2 + 80) = v9;
  }
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
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
  a1->__locale_ = &unk_2825BEDA0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEDA0;
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
  a1->__locale_ = &unk_2825BED70;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2825BED70;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

std::string *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = (&a2->__r_.__value_.__l.__data_ + 1);
  v8 = a2->__r_.__value_.__s.__data_[0];
  if ((&a2->__r_.__value_.__l.__data_ + 1) == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(a1, a2, a3);
    v9 = v11;
    if (v11 == v3)
    {
      if (v11->__r_.__value_.__s.__data_[0] == 46)
      {
        operator new();
      }

      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, v3, a3);
    }

    if (v9 == v3 && v9 != a3 && (&v9->__r_.__value_.__l.__data_ + 1) != a3 && v9->__r_.__value_.__s.__data_[0] == 92)
    {
      v12 = v9->__r_.__value_.__s.__data_[1];
      if (v12 == 40)
      {
        v13 = &v9->__r_.__value_.__s.__data_[2];
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v14 = a1->__marked_count_;
        do
        {
          v15 = v13;
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || (&v16->__r_.__value_.__l.__data_ + 1) == a3 || v16->__r_.__value_.__s.__data_[0] != 92 || v16->__r_.__value_.__s.__data_[1] != 41)
        {
          std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
          goto LABEL_54;
        }

        v9 = &v16->__r_.__value_.__s.__data_[2];
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

        v9 = (v9 + v18);
      }
    }

    if (v9 == v3)
    {
      return v3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  if (v9 == a3)
  {
    return v9;
  }

  v19 = a1->__marked_count_ + 1;
  v20 = v9->__r_.__value_.__s.__data_[0];
  if (v20 == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
    return (&v9->__r_.__value_.__l.__data_ + 1);
  }

  if ((&v9->__r_.__value_.__l.__data_ + 1) == a3 || v20 != 92 || v9->__r_.__value_.__s.__data_[1] != 123)
  {
    return v9;
  }

  LODWORD(__max) = 0;
  v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(&v9->__r_.__value_.__s.__data_[2], a3, &__max);
  if (v21 == &v9->__r_.__value_.__s.__data_[2])
  {
    goto LABEL_55;
  }

  if (v21 == a3)
  {
    goto LABEL_54;
  }

  v22 = (v21 + 1);
  v23 = *v21;
  if (v23 != 44)
  {
    if (v22 != a3 && v23 == 92 && v22->__r_.__value_.__s.__data_[0] == 125)
    {
      v3 = (v21 + 2);
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v19, 1);
      return v3;
    }

    goto LABEL_54;
  }

  v34 = -1;
  v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v21 + 1, a3, &v34);
  if (v24 == a3 || (v25 = v24, v24 + 1 == a3) || *v24 != 92 || (v26 = v24[1], v27 = v26 == 125, v26 != 125))
  {
LABEL_54:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_55;
  }

  v28 = v34;
  if (v34 == -1)
  {
    v29 = a1;
    v28 = -1;
    goto LABEL_52;
  }

  if (v34 >= __max)
  {
    v29 = a1;
LABEL_52:
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, __max, v28, end, marked_count + 1, v19, 1);
    return &v25[2 * v27];
  }

LABEL_55:
  v31 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(v31, v32, v33);
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

void std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = a2->__r_.__value_.__s.__data_[0];
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
      {
        end = a1->__end_;
        marked_count = a1->__marked_count_;
        goto LABEL_36;
      }

      v13 = a2->__r_.__value_.__s.__data_[1];
      if (v13 == 66)
      {
        v14 = 1;
      }

      else
      {
        if (v13 != 98)
        {
          goto LABEL_27;
        }

        v14 = 0;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v14);
      return;
    }

    if (v6 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
      return;
    }
  }

  else
  {
    if (v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
      return;
    }

    if (v6 == 40)
    {
      if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
      {
        end = a1->__end_;
        marked_count = a1->__marked_count_;
LABEL_41:
        if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
        {
LABEL_96:
          std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_97:
          std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
          goto LABEL_98;
        }

        if (&a2->__r_.__value_.__s.__data_[2] != a3 && a2->__r_.__value_.__s.__data_[1] == 63 && a2->__r_.__value_.__s.__data_[2] == 58)
        {
          p_open_count = &a1->__open_count_;
          ++a1->__open_count_;
          v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, a2->__r_.__value_.__r.__words + 3, a3);
          if (v21 == a3)
          {
            goto LABEL_96;
          }

          v22 = v21;
          if (v21->__r_.__value_.__s.__data_[0] != 41)
          {
            goto LABEL_96;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
          v23 = a1->__marked_count_;
          p_open_count = &a1->__open_count_;
          ++a1->__open_count_;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, &a2->__r_.__value_.__l.__data_ + 1, a3);
          if (v24 == a3)
          {
            goto LABEL_96;
          }

          v22 = v24;
          if (v24->__r_.__value_.__s.__data_[0] != 41)
          {
            goto LABEL_96;
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v23);
        }

        --*p_open_count;
        v25 = (&v22->__r_.__value_.__l.__data_ + 1);
LABEL_53:
        if (v25 == a2)
        {
          return;
        }

        goto LABEL_93;
      }

      if (a2->__r_.__value_.__s.__data_[1] != 63 || &a2->__r_.__value_.__s.__data_[2] == a3)
      {
        goto LABEL_27;
      }

      v7 = a2->__r_.__value_.__s.__data_[2];
      if (v7 == 33)
      {
        std::regex_traits<char>::regex_traits(&v40.__traits_);
        memset(&v40.__flags_, 0, 40);
        v40.__flags_ = a1->__flags_;
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v40, a2->__r_.__value_.__r.__words + 3, a3);
        v9 = v40.__marked_count_;
        v10 = a1->__marked_count_;
        v11 = a1;
        v12 = 1;
LABEL_24:
        std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v11, &v40, v12, v10);
        a1->__marked_count_ += v9;
        if (v8 == a3 || v8->__r_.__value_.__s.__data_[0] != 41)
        {
          goto LABEL_96;
        }

        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
        if ((&v8->__r_.__value_.__l.__data_ + 1) != a2)
        {
          return;
        }

        goto LABEL_27;
      }

      if (v7 == 61)
      {
        std::regex_traits<char>::regex_traits(&v40.__traits_);
        memset(&v40.__flags_, 0, 40);
        v40.__flags_ = a1->__flags_;
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v40, a2->__r_.__value_.__r.__words + 3, a3);
        v9 = v40.__marked_count_;
        v10 = a1->__marked_count_;
        v11 = a1;
        v12 = 0;
        goto LABEL_24;
      }

LABEL_27:
      v6 = a2->__r_.__value_.__s.__data_[0];
    }
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (v6 <= 62)
  {
    if (v6 > 40)
    {
      if (v6 == 41)
      {
        return;
      }

      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
        goto LABEL_98;
      }

      goto LABEL_80;
    }

    if (v6 == 36)
    {
      return;
    }

    if (v6 != 40)
    {
      goto LABEL_80;
    }

    goto LABEL_41;
  }

  v17 = (v6 - 92);
  if (v17 <= 0x21)
  {
    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return;
    }

    if (v6 == 92)
    {
LABEL_36:
      v18 = (&a2->__r_.__value_.__l.__data_ + 1);
      if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
      {
LABEL_99:
        v39 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::__match_any_but_newline<char>::~__match_any_but_newline(v39);
        return;
      }

      v19 = v18->__r_.__value_.__s.__data_[0];
      if (v19 == 48)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
LABEL_92:
        v25 = &a2->__r_.__value_.__s.__data_[2];
        goto LABEL_93;
      }

      if ((v19 - 49) <= 8)
      {
        v26 = (v19 - 48);
        v25 = &a2->__r_.__value_.__s.__data_[2];
        if (&a2->__r_.__value_.__s.__data_[2] != a3)
        {
          while (1)
          {
            v27 = v25->__r_.__value_.__s.__data_[0];
            if ((v27 - 48) > 9)
            {
              break;
            }

            if (v26 >= 0x19999999)
            {
              goto LABEL_97;
            }

            v26 = v27 + 10 * v26 - 48;
            v25 = (v25 + 1);
            if (v25 == a3)
            {
              v25 = a3;
              break;
            }
          }

          if (!v26)
          {
            goto LABEL_97;
          }
        }

        if (v26 > marked_count)
        {
          goto LABEL_97;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v26);
        if (v25 != v18)
        {
          goto LABEL_53;
        }

        v19 = v18->__r_.__value_.__s.__data_[0];
      }

      if (v19 > 99)
      {
        if (v19 == 119)
        {
          v28 = a1;
          v29 = 0;
          goto LABEL_84;
        }

        if (v19 == 115)
        {
          v36 = a1;
          v37 = 0;
LABEL_90:
          started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v36, v37);
          v33 = started->__mask_ | 0x4000;
          goto LABEL_91;
        }

        if (v19 != 100)
        {
          goto LABEL_85;
        }

        v30 = a1;
        v31 = 0;
      }

      else
      {
        if (v19 != 68)
        {
          if (v19 != 83)
          {
            if (v19 == 87)
            {
              v28 = a1;
              v29 = 1;
LABEL_84:
              v34 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v28, v29);
              v34->__mask_ |= 0x500u;
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v34, 95);
              goto LABEL_92;
            }

LABEL_85:
            std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, &a2->__r_.__value_.__s.__data_[1], a3, 0);
            if (v35 == v18)
            {
              v25 = a2;
            }

            else
            {
              v25 = v35;
            }

            goto LABEL_53;
          }

          v36 = a1;
          v37 = 1;
          goto LABEL_90;
        }

        v30 = a1;
        v31 = 1;
      }

      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
      v33 = started->__mask_ | 0x400;
LABEL_91:
      started->__mask_ = v33;
      goto LABEL_92;
    }

    if (v17 == 31)
    {
      goto LABEL_98;
    }
  }

  if (v6 == 91)
  {
    v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
    goto LABEL_53;
  }

  if (v6 == 63)
  {
LABEL_98:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_99;
  }

LABEL_80:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  v25 = (&a2->__r_.__value_.__l.__data_ + 1);
LABEL_93:
  v38 = a1->__marked_count_ + 1;

  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v25, a3, end, marked_count + 1, v38);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
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
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(this);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  memset(&v24, 0, 17);
  v25 = 0;
  v26 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v20.first = *(a2 + 24);
  v20.second = v20.first;
  v20.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v20);
  v21 = v5;
  v22 = v5;
  v23 = 0;
  v24 = v20;
  v26 = v5;
  v25 = 1;
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

  std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40, v8);
  if (*(a1 + 84) == v9)
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
    v17 = v13 + 24 * (v12 + v14 - 2);
    *v17 = v16->std::pair<const char *, const char *>;
    *(v17 + 16) = v16->matched;
    v15 = v14;
  }

  while (v11 > v14++);
LABEL_11:

  operator delete(begin);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEC80;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEC80;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
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
  a1->__locale_ = &unk_2825BEC50;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEC50;
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

  JUMPOUT(0x20F331DC0);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
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

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

void parseLoadStoreFunction(llvm::Function *a1, llvm::Value *a2)
{
  v12[6] = *MEMORY[0x277D85DE8];
  *(a1 + 24) = 0u;
  *(a1 + 11) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  Name = llvm::Value::getName(a2);
  v4 = 4;
  if (v3 < 4)
  {
    v4 = v3;
  }

  v5 = v4 + Name;
  v6 = v3 - v4;
  v10 = v12;
  v11 = 0x300000000;
  llvm::StringRef::split();
  v7 = &v9;
  v8 = 0x300000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void std::vector<llvm::Type *>::__insert_with_size[abi:nn200100]<llvm::Type * const*,llvm::Type * const*>(uint64_t *a1, char *__src, char *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return;
  }

  v5 = __src;
  v8 = a1[1];
  v7 = a1[2];
  if (a4 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a4 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v13 = -v9 >> 3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v12);
    }

    v25 = 8 * v13;
    v26 = (8 * v13 + 8 * a4);
    v27 = 8 * a4;
    v28 = v25;
    do
    {
      v29 = *v5++;
      *v28++ = v29;
      v27 -= 8;
    }

    while (v27);
    memcpy(v26, 0, a1[1]);
    v30 = *a1;
    v31 = &v26[a1[1]];
    a1[1] = 0;
    v32 = (v25 + v30);
    memcpy((v25 + v30), v30, -v30);
    v33 = *a1;
    *a1 = v32;
    a1[1] = v31;
    a1[2] = 0;
    if (v33)
    {

      operator delete(v33);
    }

    return;
  }

  if (v8 >> 3 >= a4)
  {
    v17 = v8 - 8 * a4;
    if (v17 >= v8)
    {
      v19 = a1[1];
    }

    else
    {
      v18 = (v8 - 8 * a4);
      v19 = a1[1];
      do
      {
        v20 = *v18++;
        *v19++ = v20;
      }

      while (v18 < v8);
    }

    a1[1] = v19;
    if (v8 != 8 * a4)
    {
      memmove((8 * a4), 0, v17);
    }

    v34 = v5;
    v35 = 8 * a4;
    goto LABEL_39;
  }

  v14 = &__src[v8];
  v15 = a1[1];
  while (v14 != a3)
  {
    v16 = *v14;
    v14 += 8;
    *v15++ = v16;
  }

  a1[1] = v15;
  if (v8 >> 3 >= 1)
  {
    v21 = &v15[-a4];
    if (v21 >= v8)
    {
      v23 = v15;
    }

    else
    {
      v22 = &v15[-a4];
      v23 = v15;
      do
      {
        v24 = *v22++;
        *v23++ = v24;
      }

      while (v22 < v8);
    }

    a1[1] = v23;
    if (v15 != (8 * a4))
    {
      memmove((8 * a4), 0, v21);
    }

    if (v8)
    {
      v34 = v5;
      v35 = v8;
LABEL_39:

      memmove(0, v34, v35);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(uint64_t a1, uint64_t *a2)
{
  v365 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 4);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != a2[9])
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v287 = v5;
  v277 = a1;
  {
    std::string::basic_string[abi:nn200100]<0>(v356, "_16x16_");
    if ((v356[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v316, *v356, *&v356[8]);
    }

    else
    {
      v316 = *v356;
    }

    v317 = 0x1000000010;
    v318 = 16;
    std::string::basic_string[abi:nn200100]<0>(&__src, "_16x16x16_");
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v319, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
    }

    else
    {
      v319 = __src;
    }

    v320 = 0x1000000010;
    v321 = 16;
    std::string::basic_string[abi:nn200100]<0>(&v337, "_16x8x16_");
    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v322, v337.__r_.__value_.__l.__data_, v337.__r_.__value_.__l.__size_);
    }

    else
    {
      v322 = v337;
    }

    v323 = 0x800000010;
    v324 = 16;
    std::string::basic_string[abi:nn200100]<0>(&v345, "_8x16x16_");
    if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v325, v345.__r_.__value_.__l.__data_, v345.__r_.__value_.__l.__size_);
    }

    else
    {
      v325 = v345;
    }

    v326 = 0x1000000008;
    v327 = 16;
    std::string::basic_string[abi:nn200100]<0>(v343, "_16x16x32_");
    if ((v343[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v328, *v343, *&v343[8]);
    }

    else
    {
      v328 = *v343;
    }

    v329 = 0x1000000010;
    v330 = 32;
    std::string::basic_string[abi:nn200100]<0>(&__sz, "_16x8x32_");
    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v331, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
    }

    else
    {
      v331 = __sz;
    }

    v332 = 0x800000010;
    v333 = 32;
    std::string::basic_string[abi:nn200100]<0>(&v302, "_8x16x32_");
    if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v334, v302.__r_.__value_.__l.__data_, v302.__r_.__value_.__l.__size_);
    }

    else
    {
      v334 = v302;
    }

    v260 = 0;
    v335 = 0x1000000008;
    v336 = 32;
    AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes = 0u;
    *&qword_27C8DB7F8 = 0u;
    dword_27C8DB808 = 1065353216;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::array<int,3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::array<int,3ul>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::array<int,3ul>> const&>(&v316 + v260 * 8);
      v260 += 5;
    }

    while (v260 != 35);
    do
    {
      if (v312[v260 * 8] < 0)
      {
        operator delete(v311.__r_.__value_.__r.__words[v260 + 1]);
      }

      v260 -= 5;
    }

    while (v260 * 8);
    if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v302.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__sz.__r_.__value_.__l.__data_);
    }

    if ((v343[23] & 0x80000000) != 0)
    {
      operator delete(*v343);
    }

    if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v345.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v337.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    if ((v356[23] & 0x80000000) != 0)
    {
      operator delete(*v356);
    }

    __cxa_atexit(std::unordered_map<std::string,std::array<int,3ul>>::~unordered_map[abi:nn200100], &AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes, &dword_20E4E1000);
  }

  v6 = &qword_27C8DB7F8;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = *(v6 + 39);
    if (v7 < 0)
    {
      v8 = v6[2];
    }

    v9 = v6[3];
    if (v7 >= 0)
    {
      v10 = *(v6 + 39);
    }

    else
    {
      v10 = v6[3];
    }

    if (llvm::StringRef::find() != -1)
    {
      v12 = *(v6 + 10);
      v11 = *(v6 + 11);
      v13 = *(v6 + 12);
      goto LABEL_16;
    }
  }

  v13 = 0;
  v11 = 0;
  v12 = 0;
LABEL_16:
  v316.__r_.__value_.__r.__words[0] = &v316.__r_.__value_.__r.__words[2];
  v316.__r_.__value_.__l.__size_ = 0xA00000000;
  llvm::StringRef::split();
  v14 = LODWORD(v316.__r_.__value_.__r.__words[1]);
  v15 = llvm::StringRef::find();
  v16 = v316.__r_.__value_.__r.__words[0] + 16 * v14;
  v285 = *(v16 - 16);
  if (v15 == -1)
  {
    v19 = *(v16 - 32);
    v283 = *(v16 - 48);
    v284 = v19;
    v18 = -4;
  }

  else
  {
    v17 = *(v16 - 48);
    v283 = *(v16 - 64);
    v284 = v17;
    v18 = -6;
  }

  v20 = v18 + v14;
  v282 = *(v316.__r_.__value_.__r.__words[0] + 16 * v20);
  if (llvm::StringRef::find() != -1)
  {
    v20 -= llvm::StringRef::find() != -1;
  }

  v21 = v316.__r_.__value_.__r.__words[0] + 16 * v20;
  v269 = **(v21 - 16);
  v266 = **(v21 - 32);
  v22 = llvm::StringRef::find();
  v23 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (v15 == -1)
  {
    v264 = 0;
    v265 = 0;
    v262 = 0;
    v263 = 0;
    ShuffleVector = *v23;
    v275 = v23[8];
    v273 = v23[16];
    v28 = v23[12];
    v267 = v28;
    v268 = v23[4];
    goto LABEL_45;
  }

  ShuffleVector = v23[12];
  v275 = v23[20];
  v273 = v23[40];
  v267 = v23[24];
  v268 = v23[16];
  v25 = v23[8];
  if (*(v25 + 16) != 16)
  {
    v25 = 0;
  }

  v26 = *(v25 + 32);
  if (v26 > 0x40)
  {
    v27 = llvm::APInt::countLeadingZerosSlowCase((v25 + 24)) == v26;
  }

  else
  {
    v27 = *(v25 + 24) == 0;
  }

  v29 = v27;
  v30 = v23[36];
  if (*(v30 + 16) != 16)
  {
    v30 = 0;
  }

  v31 = *(v30 + 32);
  if (v31 > 0x40)
  {
    v32 = llvm::APInt::countLeadingZerosSlowCase((v30 + 24)) == v31;
  }

  else
  {
    v32 = *(v30 + 24) == 0;
  }

  v33 = v32;
  if (v29)
  {
    v34 = 0;
    v35 = 0;
    if (v33)
    {
      v263 = 0;
      v264 = 0;
      v265 = 0;
      v262 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v35 = *v23;
    v34 = v23[4];
    if (v33)
    {
      v264 = *v23;
      v265 = v23[4];
      v262 = 0;
      v263 = 0;
      goto LABEL_45;
    }
  }

  v264 = v35;
  v265 = v34;
  v36 = v23[32];
  v262 = v36;
  v263 = v23[28];
LABEL_45:
  v270 = a2;
  v261 = *a2;
  llvm::StringRef::str(&v281, &v282);
  llvm::StringRef::str(&v280, &v283);
  llvm::StringRef::str(&v279, &v284);
  llvm::StringRef::str(&__p, &v285);
  v315 = v12;
  v314 = v11;
  v313 = v13;
  v272 = *(*(a1 + 464) + 1939);
  v37 = SHIBYTE(v281.__r_.__value_.__r.__words[2]);
  v38 = *&v281.__r_.__value_.__l.__data_;
  if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v281;
  }

  else
  {
    v39 = v281.__r_.__value_.__r.__words[0];
  }

  if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v281.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v281.__r_.__value_.__l.__size_;
  }

  v41 = v39 + size;
  if (size >= 4)
  {
    v42 = v39;
    v43 = size;
    v44 = v39;
    while (1)
    {
      v45 = memchr(v44, 118, v43 - 3);
      if (!v45)
      {
        goto LABEL_60;
      }

      if (*v45 == 942813558)
      {
        break;
      }

      v44 = (v45 + 1);
      v43 = v41 - v44;
      if (v41 - v44 < 4)
      {
        goto LABEL_60;
      }
    }

    if (v45 != v41 && v45 - v39 != -1)
    {
      v46 = 1;
      goto LABEL_70;
    }

    do
    {
LABEL_60:
      v47 = memchr(v42, 118, size - 3);
      if (!v47)
      {
        break;
      }

      if (*v47 == 909455990)
      {
        goto LABEL_64;
      }

      v42 = (v47 + 1);
      size = v41 - (v47 + 1);
    }

    while (size > 3);
  }

  v47 = v41;
LABEL_64:
  v46 = v47 != v41 && v47 - v39 != -1;
LABEL_70:
  v49 = v277;
  if (v37 < 0)
  {
    std::string::__init_copy_ctor_external(&v311, v38, *(&v38 + 1));
  }

  else
  {
    v311 = v281;
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v280.__r_.__value_.__l.__data_, v280.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v280;
  }

  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v309, v279.__r_.__value_.__l.__data_, v279.__r_.__value_.__l.__size_);
  }

  else
  {
    v309 = v279;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v308, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v308 = __p;
  }

  if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = &v281;
  }

  else
  {
    v50 = v281.__r_.__value_.__r.__words[0];
  }

  if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = SHIBYTE(v281.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v51 = v281.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v277 + 488), v50, v51) + 48) & 1) == 0)
  {
    if (v46)
    {
      v52 = 0;
    }

    else
    {
      v52 = 5;
    }

    v53 = (v314 * v315) >> v52;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v337, v53);
    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v337;
    }

    else
    {
      v54 = v337.__r_.__value_.__r.__words[0];
    }

    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = HIBYTE(v337.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = v337.__r_.__value_.__l.__size_;
    }

    v56 = std::string::append(&__src, v54, v55);
    v57 = v56->__r_.__value_.__r.__words[2];
    *v356 = *&v56->__r_.__value_.__l.__data_;
    *&v356[16] = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    if (v272)
    {
      v58 = "f16";
    }

    else
    {
      v58 = "f32";
    }

    v59 = std::string::append(v356, v58);
    v60 = v59->__r_.__value_.__r.__words[0];
    v345.__r_.__value_.__r.__words[0] = v59->__r_.__value_.__l.__size_;
    *(v345.__r_.__value_.__r.__words + 7) = *(&v59->__r_.__value_.__r.__words[1] + 7);
    v61 = HIBYTE(v59->__r_.__value_.__r.__words[2]);
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v311.__r_.__value_.__l.__data_);
    }

    v311.__r_.__value_.__r.__words[0] = v60;
    v311.__r_.__value_.__l.__size_ = v345.__r_.__value_.__r.__words[0];
    *(&v311.__r_.__value_.__r.__words[1] + 7) = *(v345.__r_.__value_.__r.__words + 7);
    *(&v311.__r_.__value_.__s + 23) = v61;
    if ((v356[23] & 0x80000000) != 0)
    {
      operator delete(*v356);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v337.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &v280;
  }

  else
  {
    v62 = v280.__r_.__value_.__r.__words[0];
  }

  if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = SHIBYTE(v280.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v280.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v277 + 488), v62, v63) + 49) & 1) == 0)
  {
    if (v46)
    {
      v64 = 0;
    }

    else
    {
      v64 = 5;
    }

    v65 = (v313 * v315) >> v64;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v337, v65);
    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v337;
    }

    else
    {
      v66 = v337.__r_.__value_.__r.__words[0];
    }

    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v337.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v337.__r_.__value_.__l.__size_;
    }

    v68 = std::string::append(&__src, v66, v67);
    v69 = v68->__r_.__value_.__r.__words[2];
    *v356 = *&v68->__r_.__value_.__l.__data_;
    *&v356[16] = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    v70 = std::string::append(v356, "bf16");
    v71 = v70->__r_.__value_.__r.__words[0];
    v345.__r_.__value_.__r.__words[0] = v70->__r_.__value_.__l.__size_;
    *(v345.__r_.__value_.__r.__words + 7) = *(&v70->__r_.__value_.__r.__words[1] + 7);
    v72 = HIBYTE(v70->__r_.__value_.__r.__words[2]);
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v310.__r_.__value_.__l.__data_);
    }

    v310.__r_.__value_.__r.__words[0] = v71;
    v310.__r_.__value_.__l.__size_ = v345.__r_.__value_.__r.__words[0];
    *(&v310.__r_.__value_.__r.__words[1] + 7) = *(v345.__r_.__value_.__r.__words + 7);
    *(&v310.__r_.__value_.__s + 23) = v72;
    if ((v356[23] & 0x80000000) != 0)
    {
      operator delete(*v356);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v337.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v73 = *(v277 + 464);
    *&__sz.__r_.__value_.__l.__data_ = *(v277 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&__sz.__r_.__value_.__r.__words[2], (v277 + 8));
    v307 = *(v277 + 104);
    if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v305, v280.__r_.__value_.__l.__data_, v280.__r_.__value_.__l.__size_);
    }

    else
    {
      v305 = v280;
    }

    if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v304, v310.__r_.__value_.__l.__data_, v310.__r_.__value_.__l.__size_);
    }

    else
    {
      v304 = v310;
    }

    ShuffleVector = (*(*v73 + 776))(v73, &__sz, ShuffleVector, &v305, &v304, 0);
    if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v304.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v305.__r_.__value_.__l.__data_);
    }

    if (__sz.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if ((v279.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = &v279;
  }

  else
  {
    v74 = v279.__r_.__value_.__r.__words[0];
  }

  if ((v279.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = SHIBYTE(v279.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v75 = v279.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v277 + 488), v74, v75) + 49) & 1) == 0)
  {
    if (v46)
    {
      v76 = 0;
    }

    else
    {
      v76 = 5;
    }

    v77 = (v314 * v313) >> v76;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v337, v77);
    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v337;
    }

    else
    {
      v78 = v337.__r_.__value_.__r.__words[0];
    }

    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = HIBYTE(v337.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v337.__r_.__value_.__l.__size_;
    }

    v80 = std::string::append(&__src, v78, v79);
    v81 = v80->__r_.__value_.__r.__words[2];
    *v356 = *&v80->__r_.__value_.__l.__data_;
    *&v356[16] = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    v82 = std::string::append(v356, "bf16");
    v83 = v82->__r_.__value_.__r.__words[0];
    v345.__r_.__value_.__r.__words[0] = v82->__r_.__value_.__l.__size_;
    *(v345.__r_.__value_.__r.__words + 7) = *(&v82->__r_.__value_.__r.__words[1] + 7);
    v84 = HIBYTE(v82->__r_.__value_.__r.__words[2]);
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    v309.__r_.__value_.__r.__words[0] = v83;
    v309.__r_.__value_.__l.__size_ = v345.__r_.__value_.__r.__words[0];
    *(&v309.__r_.__value_.__r.__words[1] + 7) = *(v345.__r_.__value_.__r.__words + 7);
    *(&v309.__r_.__value_.__s + 23) = v84;
    if ((v356[23] & 0x80000000) != 0)
    {
      operator delete(*v356);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v337.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v85 = *(v277 + 464);
    *&v302.__r_.__value_.__l.__data_ = *(v277 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v302.__r_.__value_.__r.__words[2], (v277 + 8));
    v303 = *(v277 + 104);
    if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v301, v279.__r_.__value_.__l.__data_, v279.__r_.__value_.__l.__size_);
    }

    else
    {
      v301 = v279;
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v300, v309.__r_.__value_.__l.__data_, v309.__r_.__value_.__l.__size_);
    }

    else
    {
      v300 = v309;
    }

    v275 = (*(*v85 + 776))(v85, &v302, v275, &v301, &v300, 0);
    if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v300.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v301.__r_.__value_.__l.__data_);
    }

    if (v302.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::untrack();
    }
  }

  {
    *v356 = "v8f8e4m3fn";
    *&v356[8] = 10;
    std::string::basic_string[abi:nn200100]<0>(&v356[16], "pn8e4m3");
    *(&v357 + 1) = "v4f8e4m3fn";
    *&v358 = 10;
    std::string::basic_string[abi:nn200100]<0>(&v358 + 8, "pn4e4m3");
    v361 = "v8f8e5m2";
    v362 = 8;
    std::string::basic_string[abi:nn200100]<0>(v363, "pn8e5m2");
    v363[3] = "v4f8e5m2";
    v363[4] = 8;
    std::string::basic_string[abi:nn200100]<0>(v364, "pn4e5m2");
    llvm::StringMap<std::string,llvm::MallocAllocator>::StringMap(v356, 4);
    for (i = 0; i != -160; i -= 40)
    {
      if (v364[i + 23] < 0)
      {
        operator delete(*&v364[i]);
      }
    }

    __cxa_atexit(llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap, &AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8, &dword_20E4E1000);
    v49 = v277;
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
    v87 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v87 = __p.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v49 + 488), p_p, v87) + 48) & 1) == 0)
  {
    if (v46)
    {
      v88 = 0;
    }

    else
    {
      v88 = 5;
    }

    v89 = (v314 * v315) >> v88;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v337, v89);
    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = &v337;
    }

    else
    {
      v90 = v337.__r_.__value_.__r.__words[0];
    }

    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(v337.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = v337.__r_.__value_.__l.__size_;
    }

    v92 = std::string::append(&__src, v90, v91);
    v93 = v92->__r_.__value_.__r.__words[2];
    *v356 = *&v92->__r_.__value_.__l.__data_;
    *&v356[16] = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    if (v272)
    {
      v94 = "f16";
    }

    else
    {
      v94 = "f32";
    }

    v95 = std::string::append(v356, v94);
    v96 = v95->__r_.__value_.__r.__words[0];
    v345.__r_.__value_.__r.__words[0] = v95->__r_.__value_.__l.__size_;
    *(v345.__r_.__value_.__r.__words + 7) = *(&v95->__r_.__value_.__r.__words[1] + 7);
    v97 = HIBYTE(v95->__r_.__value_.__r.__words[2]);
    v95->__r_.__value_.__l.__size_ = 0;
    v95->__r_.__value_.__r.__words[2] = 0;
    v95->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v308.__r_.__value_.__l.__data_);
    }

    v308.__r_.__value_.__r.__words[0] = v96;
    v308.__r_.__value_.__l.__size_ = v345.__r_.__value_.__r.__words[0];
    *(&v308.__r_.__value_.__r.__words[1] + 7) = *(v345.__r_.__value_.__r.__words + 7);
    *(&v308.__r_.__value_.__s + 23) = v97;
    if ((v356[23] & 0x80000000) != 0)
    {
      operator delete(*v356);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v337.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    if (!v272 || (Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == dword_27C8DB820)
    {
      std::string::basic_string[abi:nn200100]<0>(&v345, "air.convert.f.");
      if ((v308.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v111 = &v308;
      }

      else
      {
        v111 = v308.__r_.__value_.__r.__words[0];
      }

      if ((v308.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = HIBYTE(v308.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v112 = v308.__r_.__value_.__l.__size_;
      }

      v113 = std::string::append(&v345, v111, v112);
      v114 = v113->__r_.__value_.__r.__words[2];
      *&v337.__r_.__value_.__l.__data_ = *&v113->__r_.__value_.__l.__data_;
      v337.__r_.__value_.__r.__words[2] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = std::string::append(&v337, ".f.");
      v116 = v115->__r_.__value_.__r.__words[2];
      *v356 = *&v115->__r_.__value_.__l.__data_;
      *&v356[16] = v116;
      v115->__r_.__value_.__l.__size_ = 0;
      v115->__r_.__value_.__r.__words[2] = 0;
      v115->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v109 = &__p;
      }

      else
      {
        v109 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v110 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v110 = __p.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(&v345, "air.dequantize_unpack.");
      if ((v308.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = &v308;
      }

      else
      {
        v99 = v308.__r_.__value_.__r.__words[0];
      }

      if ((v308.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = HIBYTE(v308.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v100 = v308.__r_.__value_.__l.__size_;
      }

      v101 = std::string::append(&v345, v99, v100);
      v102 = v101->__r_.__value_.__r.__words[2];
      *&v337.__r_.__value_.__l.__data_ = *&v101->__r_.__value_.__l.__data_;
      v337.__r_.__value_.__r.__words[2] = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      v103 = std::string::append(&v337, ".");
      v104 = v103->__r_.__value_.__r.__words[2];
      *v356 = *&v103->__r_.__value_.__l.__data_;
      *&v356[16] = v104;
      v103->__r_.__value_.__l.__size_ = 0;
      v103->__r_.__value_.__r.__words[2] = 0;
      v103->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &__p;
      }

      else
      {
        v105 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v106 = __p.__r_.__value_.__l.__size_;
      }

      v107 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8, v105, v106);
      v108 = *(*v107 + 31);
      if (v108 >= 0)
      {
        v109 = (*v107 + 8);
      }

      else
      {
        v109 = *(*v107 + 8);
      }

      if (v108 >= 0)
      {
        v110 = *(*v107 + 31);
      }

      else
      {
        v110 = *(*v107 + 16);
      }
    }

    v117 = std::string::append(v356, v109, v110);
    v118 = v117->__r_.__value_.__r.__words[2];
    *&__src.__r_.__value_.__l.__data_ = *&v117->__r_.__value_.__l.__data_;
    __src.__r_.__value_.__r.__words[2] = v118;
    v117->__r_.__value_.__l.__size_ = 0;
    v117->__r_.__value_.__r.__words[2] = 0;
    v117->__r_.__value_.__r.__words[0] = 0;
    if ((v356[23] & 0x80000000) != 0)
    {
      operator delete(*v356);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v337.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v345.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
      if (!__src.__r_.__value_.__r.__words[0])
      {
        goto LABEL_252;
      }
    }

    else
    {
      p_src = &__src;
    }

    strlen(p_src);
LABEL_252:
    v120 = 168;
    if (v272)
    {
      v120 = 152;
    }

    v121 = *(v49 + v120);
    llvm::FixedVectorType::get();
    *v356 = *v273;
    llvm::FunctionType::get();
    v122 = *(v49 + 432);
    llvm::Module::getOrInsertFunction();
    v337.__r_.__value_.__r.__words[0] = v273;
    LOWORD(v357) = 257;
    v273 = llvm::IRBuilderBase::CreateCall(v49 + 8, *(v123 + 24), v123, &v337, 1, v356);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  if ((v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v124 = &v311;
  }

  else
  {
    v124 = v311.__r_.__value_.__r.__words[0];
  }

  if ((v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v125 = SHIBYTE(v311.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v125 = v311.__r_.__value_.__l.__size_;
  }

  v126 = *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v49 + 488), v124, v125);
  if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v127 = &v310;
  }

  else
  {
    v127 = v310.__r_.__value_.__r.__words[0];
  }

  if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v128 = SHIBYTE(v310.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v128 = v310.__r_.__value_.__l.__size_;
  }

  v129 = *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v49 + 488), v127, v128);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = &v309;
  }

  else
  {
    v130 = v309.__r_.__value_.__r.__words[0];
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = SHIBYTE(v309.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v131 = v309.__r_.__value_.__l.__size_;
  }

  v132 = v49;
  v133 = *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v49 + 488), v130, v131);
  if ((v308.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v134 = &v308;
  }

  else
  {
    v134 = v308.__r_.__value_.__r.__words[0];
  }

  if ((v308.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v135 = SHIBYTE(v308.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v135 = v308.__r_.__value_.__l.__size_;
  }

  v136 = llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v49 + 488), v134, v135);
  v137 = *v136;
  v299 = *(**(*(*v136 + 8) + 16) + 8) < 7u;
  v271 = *(v126 + 8);
  memset(&v337, 0, sizeof(v337));
  std::string::reserve(&v337, 0x32uLL);
  std::string::append(&v337, "llvm.agx3");
  if (v299)
  {
    v138 = ".fgemm";
  }

  else
  {
    v138 = ".igemm";
  }

  std::string::append(&v337, v138);
  v139 = *(v126 + 39);
  if (v139 >= 0)
  {
    v140 = (v126 + 16);
  }

  else
  {
    v140 = *(v126 + 16);
  }

  if (v139 >= 0)
  {
    v141 = *(v126 + 39);
  }

  else
  {
    v141 = *(v126 + 24);
  }

  std::string::append(&v337, v140, v141);
  v142 = *(v129 + 39);
  if (v142 >= 0)
  {
    v143 = (v129 + 16);
  }

  else
  {
    v143 = *(v129 + 16);
  }

  if (v142 >= 0)
  {
    v144 = *(v129 + 39);
  }

  else
  {
    v144 = *(v129 + 24);
  }

  std::string::append(&v337, v143, v144);
  v145 = *(v133 + 39);
  if (v145 >= 0)
  {
    v146 = (v133 + 16);
  }

  else
  {
    v146 = *(v133 + 16);
  }

  if (v145 >= 0)
  {
    v147 = *(v133 + 39);
  }

  else
  {
    v147 = *(v133 + 24);
  }

  std::string::append(&v337, v146, v147);
  v148 = *(v137 + 39);
  if (v148 >= 0)
  {
    v149 = (v137 + 16);
  }

  else
  {
    v149 = *(v137 + 16);
  }

  if (v148 >= 0)
  {
    v150 = *(v137 + 39);
  }

  else
  {
    v150 = *(v137 + 24);
  }

  std::string::append(&v337, v149, v150);
  v151 = *(v132 + 192);
  __src.__r_.__value_.__r.__words[0] = *(v132 + 184);
  __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
  __src.__r_.__value_.__r.__words[2] = __src.__r_.__value_.__r.__words[0];
  v348 = v151;
  v349 = *(v129 + 8);
  v350 = v151;
  v351 = *(v133 + 8);
  v352 = v151;
  v353 = *(v137 + 8);
  v354 = v151;
  *v356 = &v356[16];
  *&v356[8] = 0xC00000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v356, &__src, v355);
  if (v299)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v356, *(v277 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v356, *(v277 + 192));
  }

  if ((SHIBYTE(v337.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v152 = &v337;
LABEL_312:
    strlen(v152);
    goto LABEL_313;
  }

  v152 = v337.__r_.__value_.__r.__words[0];
  if (v337.__r_.__value_.__r.__words[0])
  {
    goto LABEL_312;
  }

LABEL_313:
  llvm::FunctionType::get();
  v153 = *(v277 + 432);
  llvm::Module::getOrInsertFunction();
  v274 = v154;
  if (*v356 != &v356[16])
  {
    free(*v356);
  }

  if ((SHIBYTE(v337.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v46)
    {
      goto LABEL_317;
    }

LABEL_321:
    v156 = v277;
    goto LABEL_322;
  }

  operator delete(v337.__r_.__value_.__l.__data_);
  if (!v46)
  {
    goto LABEL_321;
  }

LABEL_317:
  v155 = 0;
  v358 = 0u;
  v357 = 0u;
  memset(v356, 0, sizeof(v356));
  v156 = v277;
  do
  {
    v157 = *(v277 + 200);
    *&v356[8 * v155++] = llvm::ConstantInt::get();
  }

  while (v155 != 8);
  v158 = llvm::ConstantVector::get();
  LOWORD(v349) = 257;
  ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v277 + 8), ShuffleVector, ShuffleVector, v158, &__src);
  v159 = llvm::ConstantVector::get();
  LOWORD(v349) = 257;
  v275 = llvm::IRBuilderBase::CreateShuffleVector((v277 + 8), v275, v275, v159, &__src);
  v160 = llvm::ConstantVector::get();
  LOWORD(v349) = 257;
  v273 = llvm::IRBuilderBase::CreateShuffleVector((v277 + 8), v273, v273, v160, &__src);
LABEL_322:
  v161 = *(v156 + 200);
  *v356 = llvm::ConstantInt::get();
  v162 = *(v156 + 200);
  *&v356[8] = llvm::ConstantInt::get();
  v163 = *(v156 + 200);
  *&v356[16] = llvm::ConstantInt::get();
  v164 = *(v156 + 200);
  *&v356[24] = llvm::ConstantInt::get();
  v165 = llvm::ConstantVector::get();
  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v310.__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_333;
    }

    v166 = v310.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) != 5)
    {
      goto LABEL_333;
    }

    v166 = &v310;
  }

  data = v166->__r_.__value_.__l.__data_;
  v168 = v166->__r_.__value_.__s.__data_[4];
  if (data == 1765305968 && v168 == 51)
  {
    v170 = *ShuffleVector;
    v171 = llvm::UndefValue::get();
    LOWORD(v357) = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v277 + 8), ShuffleVector, v171, v165, v356);
  }

LABEL_333:
  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v309.__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_344;
    }

    v172 = v309.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) != 5)
    {
      goto LABEL_344;
    }

    v172 = &v309;
  }

  v173 = v172->__r_.__value_.__l.__data_;
  v174 = v172->__r_.__value_.__s.__data_[4];
  if (v173 == 1765305968 && v174 == 51)
  {
    v176 = *v275;
    v177 = llvm::UndefValue::get();
    LOWORD(v357) = 257;
    v275 = llvm::IRBuilderBase::CreateShuffleVector((v277 + 8), v275, v177, v165, v356);
  }

LABEL_344:
  v178 = v266 == 115;
  v179 = v269 == 115;
  v180 = *(v129 + 8);
  LOWORD(v357) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v277 + 8, 49, ShuffleVector, v180, v356);
  v181 = *(v133 + 8);
  LOWORD(v357) = 257;
  v297 = llvm::IRBuilderBase::CreateCast(v277 + 8, 49, v275, v181, v356);
  v182 = *(v137 + 8);
  LOWORD(v357) = 257;
  v296 = llvm::IRBuilderBase::CreateCast(v277 + 8, 49, v273, v182, v356);
  v294 = AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_0::operator()(v277, v264, v265, v315);
  v295 = v183;
  v293[0] = AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_0::operator()(v277, v263, v262, v314);
  v293[1] = v184;
  v185 = *(v129 + 40) & 0xF | (v178 << 6) & 0xFFFFE07F | ((*(v129 + 44) & 7) << 7) & 0xE3FF | ((BYTE2(v295) & 1) << 10) & 0xE7FF | ((v295 & 3) << 11);
  v292 = *(v129 + 40) & 0xF | (v178 << 6) & 0xE07F | ((*(v129 + 44) & 7) << 7) & 0xE3FF | ((BYTE2(v295) & 1) << 10) & 0xE7FF | ((v295 & 3) << 11);
  v186 = (v184 >> 6) & 0x400 | ((*(v133 + 44) & 7) << 7) & 0xE7FF | ((v184 & 3) << 11) | *(v133 + 40) & 0xF | (v179 << 6);
  v291 = (v184 >> 6) & 0x400 | ((*(v133 + 44) & 7) << 7) & 0xE7FF | ((v184 & 3) << 11) | *(v133 + 40) & 0xF | (v179 << 6);
  v290 = *(v137 + 40) & 0xF;
  v289 = *(v126 + 40) & 0xF | (32 * (v22 != -1));
  *v356 = &v294;
  *&v356[8] = v293;
  *&v356[16] = v277;
  *&v356[24] = &v315;
  *&v357 = &v314;
  *(&v357 + 1) = &v313;
  *&v358 = &v289;
  *(&v358 + 1) = &Cast;
  v359 = &v292;
  v360 = &v297;
  v361 = &v291;
  v362 = &v296;
  v363[0] = &v290;
  v363[1] = &v299;
  if (*(v268 + 16) != 16 || *(v267 + 16) != 16)
  {
    v191 = *(v277 + 56);
    v190 = *(v277 + 64);
    __src.__r_.__value_.__r.__words[0] = "gemm.switch.merge";
    LOWORD(v349) = 259;
    v192 = llvm::BasicBlock::splitBasicBlock();
    v276 = v191;
    v195 = *(v191 + 5);
    v194 = (v191 + 40);
    v193 = v195;
    if (v195 == v194)
    {
      v198 = 0;
    }

    else
    {
      v196 = (v193 - 3);
      if (v193)
      {
        v197 = v193 - 3;
      }

      else
      {
        v197 = 0;
      }

      if (*(v197 + 16) - 29 >= 0xB)
      {
        v198 = 0;
      }

      else
      {
        v198 = v196;
      }
    }

    llvm::Instruction::eraseFromParent(v198);
    *(v277 + 56) = v276;
    *(v277 + 64) = v194;
    v199 = *(v277 + 200);
    LOWORD(v349) = 257;
    v200 = llvm::IRBuilderBase::CreateCast(v277 + 8, 39, v267, v199, &__src);
    v201 = *(v277 + 200);
    v339 = 257;
    v202 = llvm::IRBuilderBase::CreateCast(v277 + 8, 39, v268, v201, &v337);
    v346 = 257;
    v203 = *v202;
    v204 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((v277 + 8), v202, v204, &v345);
    v344 = 257;
    v206 = llvm::IRBuilderBase::CreateOr((v277 + 8), v200, Shl, v343);
    llvm::IRBuilderBase::CreateSwitch((v277 + 8), v206, v192, 4);
    memset(v343, 0, sizeof(v343));
    memset(v342, 0, sizeof(v342));
    std::string::basic_string[abi:nn200100]<0>(&v337, "NN");
    std::string::basic_string[abi:nn200100]<0>(v338, "NT");
    std::string::basic_string[abi:nn200100]<0>(v340, "TN");
    std::string::basic_string[abi:nn200100]<0>(v341, "TT");
    v207 = *(v277 + 456);
    __src.__r_.__value_.__r.__words[0] = "gemm.switch";
    __src.__r_.__value_.__r.__words[2] = &v337;
    LOWORD(v349) = 1027;
    v208 = *(v276 + 7);
    operator new();
  }

  v187 = (v268 + 24);
  if (*(v268 + 32) >= 0x41u)
  {
    v187 = *v187;
  }

  v292 = (32 * (*v187 & 1)) | v185;
  v188 = (v267 + 24);
  if (*(v267 + 32) >= 0x41u)
  {
    v188 = *v188;
  }

  v291 = (32 * (*v188 & 1)) | v186;
  AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_2::operator()(&__src, v356);
  v339 = 257;
  v189 = llvm::IRBuilderBase::CreateCall(v277 + 8, *(v274 + 24), v274, __src.__r_.__value_.__l.__data_, LODWORD(__src.__r_.__value_.__r.__words[1]), &v337);
  if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
  {
    free(__src.__r_.__value_.__l.__data_);
  }

  if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v209 = HIBYTE(v281.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v209 = v281.__r_.__value_.__l.__size_;
  }

  v210 = HIBYTE(v311.__r_.__value_.__r.__words[2]);
  if ((v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v210 = v311.__r_.__value_.__l.__size_;
  }

  if (v209 != v210 || ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v211 = &v281) : (v211 = v281.__r_.__value_.__r.__words[0]), (v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v212 = &v311) : (v212 = v311.__r_.__value_.__r.__words[0]), memcmp(v211, v212, v209)))
  {
    if (v272)
    {
      v213 = llvm::StringMapImpl::FindKey();
      if (v213 != -1 && v213 != dword_27C8DB820)
      {
        if (v22 == -1)
        {
          v228 = &unk_20E75F419;
        }

        else
        {
          v228 = "_saturate";
        }

        std::string::basic_string[abi:nn200100]<0>(&v288, v228);
        v229 = std::string::insert(&v288, 0, "air.quantize");
        v230 = v229->__r_.__value_.__r.__words[2];
        *v342 = *&v229->__r_.__value_.__l.__data_;
        *&v342[16] = v230;
        v229->__r_.__value_.__l.__size_ = 0;
        v229->__r_.__value_.__r.__words[2] = 0;
        v229->__r_.__value_.__r.__words[0] = 0;
        v231 = std::string::append(v342, "_pack.");
        v232 = v231->__r_.__value_.__r.__words[2];
        *v343 = *&v231->__r_.__value_.__l.__data_;
        *&v343[16] = v232;
        v231->__r_.__value_.__l.__size_ = 0;
        v231->__r_.__value_.__r.__words[2] = 0;
        v231->__r_.__value_.__r.__words[0] = 0;
        if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v233 = &v281;
        }

        else
        {
          v233 = v281.__r_.__value_.__r.__words[0];
        }

        if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v234 = SHIBYTE(v281.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v234 = v281.__r_.__value_.__l.__size_;
        }

        v235 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8, v233, v234);
        v236 = *(*v235 + 31);
        if (v236 >= 0)
        {
          v237 = (*v235 + 8);
        }

        else
        {
          v237 = *(*v235 + 8);
        }

        if (v236 >= 0)
        {
          v238 = *(*v235 + 31);
        }

        else
        {
          v238 = *(*v235 + 16);
        }

        v239 = std::string::append(v343, v237, v238);
        v240 = v239->__r_.__value_.__r.__words[2];
        *&v345.__r_.__value_.__l.__data_ = *&v239->__r_.__value_.__l.__data_;
        v345.__r_.__value_.__r.__words[2] = v240;
        v239->__r_.__value_.__l.__size_ = 0;
        v239->__r_.__value_.__r.__words[2] = 0;
        v239->__r_.__value_.__r.__words[0] = 0;
        v241 = std::string::append(&v345, ".");
        v242 = v241->__r_.__value_.__r.__words[2];
        *&__src.__r_.__value_.__l.__data_ = *&v241->__r_.__value_.__l.__data_;
        __src.__r_.__value_.__r.__words[2] = v242;
        v241->__r_.__value_.__l.__size_ = 0;
        v241->__r_.__value_.__r.__words[2] = 0;
        v241->__r_.__value_.__r.__words[0] = 0;
        if ((v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v243 = &v311;
        }

        else
        {
          v243 = v311.__r_.__value_.__r.__words[0];
        }

        if ((v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v244 = HIBYTE(v311.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v244 = v311.__r_.__value_.__l.__size_;
        }

        v245 = std::string::append(&__src, v243, v244);
        v246 = v245->__r_.__value_.__r.__words[2];
        *&v337.__r_.__value_.__l.__data_ = *&v245->__r_.__value_.__l.__data_;
        v337.__r_.__value_.__r.__words[2] = v246;
        v245->__r_.__value_.__l.__size_ = 0;
        v245->__r_.__value_.__r.__words[2] = 0;
        v245->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v345.__r_.__value_.__l.__data_);
        }

        if ((v343[23] & 0x80000000) != 0)
        {
          operator delete(*v343);
        }

        if ((v342[23] & 0x80000000) != 0)
        {
          operator delete(*v342);
        }

        if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v288.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
        {
          v247 = v337.__r_.__value_.__r.__words[0];
          if (!v337.__r_.__value_.__r.__words[0])
          {
            goto LABEL_432;
          }
        }

        else
        {
          v247 = &v337;
        }

        strlen(v247);
LABEL_432:
        v248 = *(v277 + 200);
        __src.__r_.__value_.__r.__words[0] = *v189;
        __src.__r_.__value_.__l.__size_ = v248;
        llvm::FunctionType::get();
        v249 = *(v277 + 432);
        llvm::Module::getOrInsertFunction();
        v251 = v250;
        v345.__r_.__value_.__r.__words[0] = v189;
        v252 = *(v277 + 200);
        v345.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
        LOWORD(v349) = 257;
        v225 = *(v251 + 24);
        v226 = v277 + 8;
        v224 = v251;
        v227 = 2;
LABEL_433:
        v189 = llvm::IRBuilderBase::CreateCall(v226, v225, v224, &v345, v227, &__src);
        if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v337.__r_.__value_.__l.__data_);
        }

        goto LABEL_435;
      }
    }

    std::operator+<char>();
    v215 = std::string::append(&v345, ".f.");
    v216 = v215->__r_.__value_.__r.__words[2];
    *&__src.__r_.__value_.__l.__data_ = *&v215->__r_.__value_.__l.__data_;
    __src.__r_.__value_.__r.__words[2] = v216;
    v215->__r_.__value_.__l.__size_ = 0;
    v215->__r_.__value_.__r.__words[2] = 0;
    v215->__r_.__value_.__r.__words[0] = 0;
    if ((v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v217 = &v311;
    }

    else
    {
      v217 = v311.__r_.__value_.__r.__words[0];
    }

    if ((v311.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v218 = HIBYTE(v311.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v218 = v311.__r_.__value_.__l.__size_;
    }

    v219 = std::string::append(&__src, v217, v218);
    v220 = v219->__r_.__value_.__r.__words[2];
    *&v337.__r_.__value_.__l.__data_ = *&v219->__r_.__value_.__l.__data_;
    v337.__r_.__value_.__r.__words[2] = v220;
    v219->__r_.__value_.__l.__size_ = 0;
    v219->__r_.__value_.__r.__words[2] = 0;
    v219->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v345.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      v221 = v337.__r_.__value_.__r.__words[0];
      if (!v337.__r_.__value_.__r.__words[0])
      {
        goto LABEL_394;
      }
    }

    else
    {
      v221 = &v337;
    }

    strlen(v221);
LABEL_394:
    __src.__r_.__value_.__r.__words[0] = *v189;
    llvm::FunctionType::get();
    v222 = *(v277 + 432);
    llvm::Module::getOrInsertFunction();
    v224 = v223;
    v345.__r_.__value_.__r.__words[0] = v189;
    LOWORD(v349) = 257;
    v225 = *(v223 + 24);
    v226 = v277 + 8;
    v227 = 1;
    goto LABEL_433;
  }

LABEL_435:
  if (v46)
  {
    v253 = (v315 * v314);
    v254 = *(v277 + 200);
    llvm::UndefValue::get();
    if (v253)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v253);
    }

    if ((v314 * v315) >= 0x20)
    {
      v255 = 0;
      do
      {
        v256 = *(v277 + 200);
        *(8 * v255++) = llvm::ConstantInt::get();
      }

      while (v255 < (v314 * v315) >> 5);
    }

    v257 = llvm::ConstantVector::get();
    LOWORD(v349) = 257;
    llvm::IRBuilderBase::CreateShuffleVector((v277 + 8), v189, v189, v257, &__src);
  }

  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v309.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v311.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v270);
  if (v316.__r_.__value_.__l.__data_ != &v316.__r_.__value_.__r.__words[2])
  {
    free(v316.__r_.__value_.__l.__data_);
  }

  v258 = *MEMORY[0x277D85DE8];
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::array<int,3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::array<int,3ul>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::array<int,3ul>> const&>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = *(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1);
  if (!*(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1))
    {
      v9 = v4 % *(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1);
    }
  }

  else
  {
    v9 = (*(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1) - 1) & v4;
  }

  v10 = *(AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
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
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1);
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 57, 8);
  v11 = v10;
  v12 = v10 + 56;
  if (a3)
  {
    memcpy((v10 + 56), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::StringMap<std::string,llvm::MallocAllocator>::StringMap(uint64_t a1, uint64_t a2)
{
  v4 = llvm::StringMapImpl::StringMapImpl(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8);

  llvm::StringMap<std::string,llvm::MallocAllocator>::insert<std::pair<llvm::StringRef,std::string> const*>(v4, a1, a1 + 40 * a2);
}

uint64_t *llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_0::operator()(unsigned int **a1, llvm::Value *a2, llvm::Value *a3, int a4)
{
  if (a2)
  {
    v43 = 257;
    v8 = a1[25];
    v9 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v9, v42);
    v43 = 257;
    v11 = a1[25];
    v12 = llvm::ConstantInt::get();
    v13 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v12, v42);
    if (a4 == 16)
    {
      v43 = 257;
      v14 = *Element;
      v15 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateShl((a1 + 1), Element, v15, v42);
    }

    if (*(Element + 16) == 16)
    {
      v16 = Element;
    }

    else
    {
      v16 = 0;
    }

    v17 = (v16 + 24);
    if (*(v16 + 8) >= 0x41u)
    {
      v17 = *v17;
    }

    v18 = *v17;
    v19 = a1[25];
    v20 = llvm::ConstantInt::get();
    v43 = 257;
    URem = llvm::IRBuilderBase::CreateURem(a1 + 1, v13, v20, v42);
    if (*(URem + 16) == 16)
    {
      v22 = URem;
    }

    else
    {
      v22 = 0;
    }

    v23 = (v22 + 24);
    if (*(v22 + 32) >= 0x41u)
    {
      v23 = *v23;
    }

    v24 = *v23;
    if (*(*a2 + 32) > 1u)
    {
      v31 = a1[25];
      v32 = llvm::ConstantInt::get();
      v43 = 257;
      UDiv = llvm::IRBuilderBase::CreateUDiv((a1 + 1), v13, v32, v42);
      if (*(UDiv + 16) == 16)
      {
        v34 = UDiv;
      }

      else
      {
        v34 = 0;
      }

      v35 = (v34 + 24);
      if (*(v34 + 32) >= 0x41u)
      {
        v35 = *v35;
      }

      v36 = *v35;
      v37 = a1[24];
      v38 = llvm::VectorType::get();
      v43 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a2, v38, v42);
      v43 = 257;
      v40 = a1[25];
      v41 = llvm::ConstantInt::get();
      return llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v41, v42);
    }

    else
    {
      v43 = 257;
      v25 = a1[25];
      v26 = llvm::ConstantInt::get();
      v27 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a2, v26, v42);
      v28 = a1[24];
      v43 = 257;
      return llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v27, v28, v42);
    }
  }

  else
  {
    v30 = a1[24];
    return llvm::ConstantInt::get();
  }
}

uint64_t AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_2::operator()(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = **(a2 + 24);
  v6 = *(v4 + 184);
  __src[0] = llvm::ConstantInt::get();
  v7 = **(a2 + 32);
  v8 = *(v4 + 184);
  __src[1] = llvm::ConstantInt::get();
  v9 = **(a2 + 40);
  v10 = *(v4 + 184);
  __src[2] = llvm::ConstantInt::get();
  v11 = **(a2 + 48);
  v12 = *(v4 + 192);
  __src[3] = llvm::ConstantInt::get();
  v13 = *(a2 + 64);
  __src[4] = **(a2 + 56);
  v14 = *v13;
  v15 = *(v4 + 192);
  __src[5] = llvm::ConstantInt::get();
  v16 = *(a2 + 80);
  __src[6] = **(a2 + 72);
  v17 = *v16;
  v18 = *(v4 + 192);
  __src[7] = llvm::ConstantInt::get();
  v19 = *(a2 + 96);
  __src[8] = **(a2 + 88);
  v20 = *v19;
  v21 = *(v4 + 192);
  __src[9] = llvm::ConstantInt::get();
  *a1 = a1 + 16;
  *(a1 + 8) = 0xC00000000;
  result = llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(a1, __src, &v25);
  if (**(a2 + 104) == 1)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, **a2);
    result = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, **(a2 + 8));
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::StringMap<std::string,llvm::MallocAllocator>::insert<std::pair<llvm::StringRef,std::string> const*>(llvm::StringMapImpl *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v17 = v3;
    v18 = v4;
    v7 = a2 + 16;
    do
    {
      v15 = *(v7 - 16);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 8));
      }

      else
      {
        __p = *v7;
      }

      v8 = llvm::StringMapImpl::LookupBucketFor();
      v9 = *a1;
      v10 = *(*a1 + 8 * v8);
      if (v10)
      {
        if (v10 != -8)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_14;
        }

        --*(a1 + 4);
      }

      v11 = MEMORY[0x20F330650](*(&v15 + 1) + 33, 8);
      v12 = v11;
      v13 = v11 + 32;
      if (*(&v15 + 1))
      {
        memcpy((v11 + 32), v15, *(&v15 + 1));
      }

      *(v13 + *(&v15 + 1)) = 0;
      *v12 = *(&v15 + 1);
      *(v12 + 8) = __p;
      memset(&__p, 0, sizeof(__p));
      *(v9 + 8 * v8) = v12;
      ++*(a1 + 3);
      llvm::StringMapImpl::RehashTable(a1);
LABEL_14:
      v14 = v7 - 16;
      v7 += 40;
    }

    while (v14 + 40 != a3);
  }
}

uint64_t std::unordered_map<std::string,std::array<int,3ul>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void AGCSimdMatrix::buildStore(unsigned int **a1, uint64_t a2)
{
  v4 = **(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v5 = *(a2 - 32);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 72))
  {
    v5 = 0;
  }

  Name = llvm::Value::getName(v5);
  v8 = v7;
  v9 = *(*(**(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 64) + 24) + 8) >> 8;
  Alignment = AGCSimdMatrix::getAlignment(Name, v7);
  AGCSimdMatrix::getLoadStoreSuffix(&__p, Name, v8, v9, Alignment);
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v4);
  llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF)), AllocaInEntryBlock, 0);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  AGCSimdMatrix::createLoadStoreReplacementCall(a1, a2, AllocaInEntryBlock, p_p, size, 1u);
  llvm::Instruction::eraseFromParent(a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t AGCSimdMatrix::getAlignment(uint64_t a1, unint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  __p = "i8";
  v39 = 2;
  v40[0] = 8;
  v42 = "i16";
  v43 = 3;
  v44 = 16;
  v45 = "i32";
  v46 = 3;
  v47 = 32;
  v48 = "i64";
  v49 = 3;
  v50 = 64;
  v51 = "f16";
  v52 = 3;
  v53 = 16;
  v54 = "bf16";
  v55 = 4;
  v56 = 16;
  v57 = "f32";
  v58 = 3;
  v59 = 32;
  v60 = "f8e4m3";
  v61 = 6;
  v62 = 8;
  v63 = "f8e4m3fn";
  v64 = 8;
  v65 = 8;
  v66 = "f8e5m2";
  v67 = 6;
  v68 = 8;
  llvm::StringMapImpl::StringMapImpl(&v69);
  for (i = 0; i != 120; i += 12)
  {
    v5 = *(&__p + i * 2);
    v4 = *(&__p + i * 2 + 8);
    v6 = v40[i];
    v7 = llvm::StringMapImpl::LookupBucketFor();
    v8 = v69;
    v9 = v69[v7];
    if (v9)
    {
      if (v9 != -8)
      {
        continue;
      }

      --v72;
    }

    v10 = MEMORY[0x20F330650](v4 + 17, 8);
    v11 = v10;
    v12 = v10 + 16;
    if (v4)
    {
      memcpy((v10 + 16), v5, v4);
    }

    *(v12 + v4) = 0;
    *v11 = v4;
    *(v11 + 8) = v6;
    v8[v7] = v11;
    ++v71;
    llvm::StringMapImpl::RehashTable(&v69);
  }

  v13 = a2;
  while (v13)
  {
    v14 = v13 - 1;
    v15 = *(a1 - 1 + v13--);
    if (v15 == 46)
    {
      goto LABEL_14;
    }
  }

  v14 = -1;
LABEL_14:
  v16 = v14 + 3;
  if (a2 < v14 + 3)
  {
    v16 = a2;
  }

  v37[0] = a1 + v16;
  v37[1] = a2 - v16;
  llvm::StringRef::str(&__p, v37);
  if (v41 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v41 >= 0)
  {
    v18 = v41;
  }

  else
  {
    v18 = v39;
  }

  v19 = llvm::StringMapImpl::LookupBucketFor();
  v20 = v69;
  v21 = v19;
  v22 = v69[v19];
  if (v22 == -8)
  {
    --v72;
  }

  else if (v22)
  {
    goto LABEL_35;
  }

  v23 = MEMORY[0x20F330650](v18 + 17, 8);
  v24 = v23;
  v25 = v23 + 16;
  if (v18)
  {
    memcpy((v23 + 16), p_p, v18);
  }

  *(v25 + v18) = 0;
  *v24 = v18;
  *(v24 + 8) = 0;
  v20[v21] = v24;
  ++v71;
  v26 = llvm::StringMapImpl::RehashTable(&v69);
  for (j = &v69[v26]; ; ++j)
  {
    v22 = *j;
    if (*j && v22 != -8)
    {
      break;
    }
  }

LABEL_35:
  v29 = *(v22 + 8);
  if (v41 < 0)
  {
    operator delete(__p);
  }

  if (v71 && v70)
  {
    v30 = 0;
    v31 = 8 * v70;
    do
    {
      v32 = v69[v30 / 8];
      if (v32 != -8 && v32 != 0)
      {
        llvm::deallocate_buffer(v32, (*v32 + 17));
      }

      v30 += 8;
    }

    while (v31 != v30);
  }

  free(v69);
  v34 = *MEMORY[0x277D85DE8];
  return v29;
}

void AGCSimdMatrix::getLoadStoreSuffix(std::string *a1, uint64_t a2, _BYTE *a3, unint64_t a4, int a5)
{
  v52 = *MEMORY[0x277D85DE8];
  if (a3 < 0x16)
  {
    v11 = 0;
LABEL_5:
    if (a3 <= v11)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = memchr((a2 + 21), 95, (a3 - 21));
  if (v10)
  {
    v11 = v10 - a2 + 1;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_8:
  v12 = memchr((a2 + v11), 46, &a3[-v11]);
  if (v12)
  {
    v13 = v12 - a2;
    goto LABEL_11;
  }

LABEL_10:
  v13 = -1;
LABEL_11:
  if (a3 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = a3;
  }

  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (a3 >= v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = a3;
  }

  v17 = &v14[a2];
  v18 = v16 - v14;
  v47.__r_.__value_.__r.__words[0] = &v14[a2];
  v47.__r_.__value_.__l.__size_ = v16 - v14;
  v48[0] = a2;
  v48[1] = a3;
  if (llvm::StringRef::find() != -1)
  {
    if (v18 >= v18 - 5)
    {
      v18 -= 5;
    }

    v47.__r_.__value_.__r.__words[0] = v17;
    v47.__r_.__value_.__l.__size_ = v18;
  }

  llvm::StringRef::str(&__p, &v47);
  if (v18 == 5)
  {
    if (*v17 != 1919906931 || *(v17 + 4) != 101)
    {
      goto LABEL_46;
    }
  }

  else if (v18 != 4 || *v17 != 1684107116)
  {
    goto LABEL_46;
  }

  v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v22 = v48;
  std::string::basic_string[abi:nn200100](v48, size + 20);
  if (v49[0] < 0)
  {
    v22 = v48[0];
  }

  if (size)
  {
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(v22, p_p, size);
  }

  strcpy(v22 + size, "_bounds_checked_none");
  if (v20 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&__p.__r_.__value_.__l.__data_ = *v48;
  __p.__r_.__value_.__r.__words[2] = v49[0];
LABEL_46:
  *a1 = __p;
  v48[0] = a2;
  v48[1] = a3;
  if (llvm::StringRef::find() == -1)
  {
    std::to_string(&__p, a5);
    v24 = std::string::insert(&__p, 0, "_sz");
    v25 = v24->__r_.__value_.__r.__words[2];
    *v48 = *&v24->__r_.__value_.__l.__data_;
    v49[0] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v49[0] >= 0)
    {
      v26 = v48;
    }

    else
    {
      v26 = v48[0];
    }

    if (v49[0] >= 0)
    {
      v27 = HIBYTE(v49[0]);
    }

    else
    {
      v27 = v48[1];
    }

    std::string::append(a1, v26, v27);
    if (SHIBYTE(v49[0]) < 0)
    {
      operator delete(v48[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::append(a1, "_bfloat");
  }

  v48[0] = "p1";
  v48[1] = 2;
  std::string::basic_string[abi:nn200100]<0>(v49, "device");
  v49[3] = "p3";
  v49[4] = 2;
  std::string::basic_string[abi:nn200100]<0>(v50, "threadgroup");
  llvm::StringMapImpl::StringMapImpl(&__p);
  llvm::StringMap<std::string,llvm::MallocAllocator>::insert<std::pair<llvm::StringRef,std::string> const*>(&__p, v48, &__p);
  for (i = 0; i != -80; i -= 40)
  {
    if (v50[i + 23] < 0)
    {
      operator delete(*&v50[i]);
    }
  }

  v29 = a3;
  do
  {
    v30 = v29;
    if (!v29)
    {
      break;
    }

    --v29;
  }

  while (v30[a2 - 1] != 46);
  if (a3 < v30)
  {
    v30 = a3;
  }

  v31 = &v30[a2];
  v32 = a3 - v30;
  if (v32 >= 2)
  {
    v32 = 2;
  }

  v47.__r_.__value_.__r.__words[0] = v31;
  v47.__r_.__value_.__l.__size_ = v32;
  llvm::StringRef::str(v48, &v47);
  if (v49[0] >= 0)
  {
    v33 = v48;
  }

  else
  {
    v33 = v48[0];
  }

  if (v49[0] >= 0)
  {
    v34 = SHIBYTE(v49[0]);
  }

  else
  {
    v34 = v48[1];
  }

  v35 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(&__p, v33, v34);
  v36 = *v35;
  if (*(*v35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(v36 + 8), *(v36 + 16));
  }

  else
  {
    v37 = *(v36 + 8);
    v47.__r_.__value_.__r.__words[2] = *(v36 + 24);
    *&v47.__r_.__value_.__l.__data_ = v37;
  }

  if (SHIBYTE(v49[0]) < 0)
  {
    operator delete(v48[0]);
  }

  llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(&__p);
  v38 = std::string::insert(&v47, 0, "_");
  v39 = v38->__r_.__value_.__r.__words[2];
  *v48 = *&v38->__r_.__value_.__l.__data_;
  v49[0] = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (v49[0] >= 0)
  {
    v40 = v48;
  }

  else
  {
    v40 = v48[0];
  }

  if (v49[0] >= 0)
  {
    v41 = HIBYTE(v49[0]);
  }

  else
  {
    v41 = v48[1];
  }

  std::string::append(a1, v40, v41);
  if (SHIBYTE(v49[0]) < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  std::to_string(&__p, a4);
  v42 = std::string::insert(&__p, 0, "_sz");
  v43 = v42->__r_.__value_.__r.__words[2];
  *v48 = *&v42->__r_.__value_.__l.__data_;
  v49[0] = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  if (v49[0] >= 0)
  {
    v44 = v48;
  }

  else
  {
    v44 = v48[0];
  }

  if (v49[0] >= 0)
  {
    v45 = HIBYTE(v49[0]);
  }

  else
  {
    v45 = v48[1];
  }

  std::string::append(a1, v44, v45);
  if (SHIBYTE(v49[0]) < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void AGCSimdMatrix::createLoadStoreReplacementCall(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  v11 = *(v10 + 32 * a6);
  v12 = (v10 + 32 * a6);
  v13 = v12[4];
  v14 = v12[8];
  v15 = v12[12];
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(**(**(*a3 + 2) + 16));
  LODWORD(v33) = v16;
  llvm::TypeSize::operator unsigned long long();
  v17 = *(a1 + 72);
  llvm::IntegerType::get();
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v18 = *(**(*a3 + 2) + 8);
  }

  v19 = llvm::PointerType::get();
  v35 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v19, &PrimitiveSizeInBits);
  v21 = *(a2 - 32);
  if (!v21 || *(v21 + 16) || *(v21 + 24) != *(a2 + 72))
  {
    v21 = 0;
  }

  PrimitiveSizeInBits = llvm::Value::getName(v21);
  v33 = v22;
  if (llvm::StringRef::find() != -1)
  {
    v23 = *(a1 + 168);
    if ((*(*a3 + 2) & 0xFE) == 0x12)
    {
      v24 = *(**(*a3 + 2) + 8);
    }

    v25 = llvm::PointerType::get();
    v35 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), PointerCast, v25, &PrimitiveSizeInBits);
  }

  v26 = *(a1 + 72);
  llvm::IntegerType::get();
  if ((*(*v11 + 2) & 0xFE) == 0x12)
  {
    v27 = *(**(*v11 + 2) + 8);
  }

  v28 = llvm::PointerType::get();
  v35 = 257;
  __src[0] = PointerCast;
  __src[1] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v11, v28, &PrimitiveSizeInBits);
  __src[2] = v13;
  __src[3] = v14;
  __src[4] = v15;
  PrimitiveSizeInBits = v34;
  v33 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&PrimitiveSizeInBits, __src, &PrimitiveSizeInBits);
  AGCSimdMatrix::CreateReplacementCall(a1, a2, a4, a5, *(a1 + 144), PrimitiveSizeInBits, v33);
  if (PrimitiveSizeInBits != v34)
  {
    free(PrimitiveSizeInBits);
  }

  v29 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCSimdMatrix::CreateReplacementCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54[6] = *MEMORY[0x277D85DE8];
  v52[0] = a3;
  v52[1] = a4;
  v53[0] = v54;
  v53[1] = 0x600000000;
  v10 = *(a2 - 32);
  if (!v10 || *(v10 + 16) || *(v10 + 24) != *(a2 + 72))
  {
    v10 = 0;
  }

  Name = llvm::Value::getName(v10);
  v13 = Name;
  v14 = v12;
  if (v12 >= 0x16 && (v15 = memchr((Name + 21), 95, v12 - 21)) != 0)
  {
    v16 = v15 - v13;
  }

  else
  {
    v16 = -1;
  }

  v17 = 21;
  if (v14 < 0x15)
  {
    v17 = v14;
  }

  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v14 >= v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v51[0] = v13 + v17;
  v51[1] = v19 - v17;
  std::string::basic_string[abi:nn200100]<0>(&v46, "agc.simdgroup_matrix");
  v20 = std::string::append(&v46, "_");
  v21 = v20->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  llvm::StringRef::str(v44, v51);
  if ((v45 & 0x80u) == 0)
  {
    v22 = v44;
  }

  else
  {
    v22 = v44[0];
  }

  if ((v45 & 0x80u) == 0)
  {
    v23 = v45;
  }

  else
  {
    v23 = v44[1];
  }

  v24 = std::string::append(&v47, v22, v23);
  v25 = v24->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v48, "_");
  v27 = v26->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  llvm::StringRef::str(__p, v52);
  if ((v43 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v29 = v43;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v40, v28, v29);
  v31 = v30->__r_.__value_.__r.__words[2];
  *v49 = *&v30->__r_.__value_.__l.__data_;
  v50 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (a7)
  {
    v32 = 8 * a7;
    v33 = a6;
    do
    {
      v34 = *v33++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, *v34);
      v32 -= 8;
    }

    while (v32);
  }

  llvm::FunctionType::get();
  v35 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v41 = 257;
  v37 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v36 + 24), v36, a6, a7, &v40);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  if (v53[0] != v54)
  {
    free(v53[0]);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

void AGCSimdMatrix::buildLoad(unsigned int **a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 - 32);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 72))
  {
    v5 = 0;
  }

  Name = llvm::Value::getName(v5);
  v8 = v7;
  v9 = *(*(**(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 64) + 24) + 8) >> 8;
  Alignment = AGCSimdMatrix::getAlignment(Name, v7);
  AGCSimdMatrix::getLoadStoreSuffix(&__p, Name, v8, v9, Alignment);
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v4);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  AGCSimdMatrix::createLoadStoreReplacementCall(a1, a2, AllocaInEntryBlock, p_p, size, 0);
  v14[16] = 257;
  llvm::Type::isOpaquePointerTy(*AllocaInEntryBlock);
  llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v4, AllocaInEntryBlock, 0, v14);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void AGCSimdMatrix::buildInit(uint64_t a1, uint64_t a2, const std::string::value_type *a3)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v33 = 0x600000000;
  v6 = *a2;
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(a1, *a2);
  v30.__r_.__value_.__r.__words[0] = llvm::Type::getPrimitiveSizeInBits(**(v6 + 2));
  LODWORD(v30.__r_.__value_.__r.__words[1]) = v8;
  v9 = llvm::TypeSize::operator unsigned long long();
  v10 = *(a1 + 72);
  v11 = llvm::IntegerType::get();
  if ((*(*AllocaInEntryBlock + 2) & 0xFE) == 0x12)
  {
    v12 = *(**(*AllocaInEntryBlock + 2) + 8);
  }

  v13 = llvm::PointerType::get();
  v31 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), AllocaInEntryBlock, v13, &v30);
  v15 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v31 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v15, v11, &v30);
  std::to_string(&v26, v9);
  v17 = std::string::insert(&v26, 0, "sz");
  v18 = v17->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v27, "_");
  v20 = v19->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v30, a3);
  v22 = v21->__r_.__value_.__r.__words[2];
  *__p = *&v21->__r_.__value_.__l.__data_;
  v29 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v32, PointerCast);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v32, Cast);
  if (v29 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if (v29 >= 0)
  {
    v24 = SHIBYTE(v29);
  }

  else
  {
    v24 = __p[1];
  }

  AGCSimdMatrix::CreateReplacementCall(a1, a2, v23, v24, *(a1 + 144), v32, v33);
  v31 = 257;
  llvm::Type::isOpaquePointerTy(*AllocaInEntryBlock);
  llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v6, AllocaInEntryBlock, 0, &v30);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t AGCSimdMatrix::buildGetNumElementsPerThread(uint64_t a1, uint64_t *a2)
{
  AGCSimdMatrix::CreateReplacementCall(a1, a2, "get_element_coordinates", 23, *a2, 0, 0);
  llvm::Value::replaceAllUsesWith();

  return llvm::Instruction::eraseFromParent(a2);
}

void AGCSimdMatrix::buildGetElementCoord(uint64_t a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v5, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF)));
  AGCSimdMatrix::CreateReplacementCall(a1, a2, "get_element_coordinates", 23, *a2, v5, v6);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v5 != v7)
  {
    free(v5);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::initEmpty(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 104 * v1;
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BF058;
      *(v4 + 3) = v9;
      v5 = v4 + 96;
      result = v4 + 104;
      v2 += 104;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::initEmpty(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 104 * v1;
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BF030;
      *(v4 + 3) = v9;
      v5 = v4 + 96;
      result = v4 + 104;
      v2 += 104;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMap<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BF058;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 72;
    *(v4 + 48) = v4 + 72;
    *(v4 + 56) = 4;
    *(v4 + 64) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::initEmpty(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BEFE0;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = v4 + 48;
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMap<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BF030;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 72;
    *(v4 + 48) = v4 + 72;
    *(v4 + 56) = 4;
    *(v4 + 64) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

void *SimplifyGenericIRAGPFragmentGen4Pass::collectDiscardBasicBlocksSurvivorSet(void *result, void *a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4)
{
  v4 = result[1];
  if (v4)
  {
    v8 = result;
    while (1)
    {
      v9 = *(v4 + 24);
      v10 = *(v9 + 16);
      v11 = v9 && v10 >= 0x1C;
      if (v11 && v10 - 29 < 0xB)
      {
        break;
      }

      v4 = *(v4 + 8);
      if (!v4)
      {
        return result;
      }
    }

LABEL_13:
    v13 = *(v9 + 40);
    v14 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(a2, v13);
    v15 = a2[1];
    if (v15 == *a2)
    {
      v16 = 20;
    }

    else
    {
      v16 = 16;
    }

    if ((v15 + 8 * *(a2 + v16)) == v14)
    {
      llvm::SmallPtrSetImpl<void *>::insert(v21, a3, v13);
      v17 = llvm::ValueMap<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::operator[](a4, v13);
      result = llvm::SmallPtrSetImpl<void *>::insert(v21, v17, v8);
    }

    else
    {
      result = SimplifyGenericIRAGPFragmentGen4Pass::collectDiscardBasicBlocksSurvivorSet(v13, a2, a3, a4);
    }

    while (1)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        break;
      }

      v9 = *(v4 + 24);
      v18 = *(v9 + 16);
      if (v9)
      {
        v19 = v18 >= 0x1C;
      }

      else
      {
        v19 = 0;
      }

      if (v19 && v18 - 29 < 0xB)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void *llvm::ValueMap<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BEFE0;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::destroyAll(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_2825BEFE0;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * a2;
    v3 = (result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v13 = 2;
    v14 = 0;
    v15 = -4096;
    v16 = 0;
    v11 = 0;
    v12 = &unk_2825BF030;
    v8 = 2;
    v9 = 0;
    v10 = -8192;
    v2 = 104 * a2;
    v3 = (a1 + 24);
    do
    {
      v4 = *v3;
      if (*v3 != v15 && v4 != v10)
      {
        v6 = v3[3];
        if (v6 != v3[2])
        {
          free(v6);
          v4 = *v3;
        }
      }

      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 13;
      v2 -= 104;
    }

    while (v2);
  }
}

void llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v15, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v17 = v4;
  v22 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v16, &v22))
  {
    v5 = v22;
  }

  else
  {
    v5 = (*v4 + 104 * v4[2].u32[0]);
  }

  if ((*v17 + 104 * v17[2].u32[0]) != v5)
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v6 = v17;
    v7 = v5[6];
    if (v7 != v5[5])
    {
      free(v7);
    }

    v23[0] = 2;
    v23[1] = 0;
    v24 = -8192;
    v25 = 0;
    v22 = &unk_2825BF058;
    llvm::ValueHandleBase::operator=((v5 + 1), v23);
    v8 = v24;
    v5[4] = v25;
    if (v8 != -8192 && v8 != -4096 && v8)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    v6[1] = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v9 = v17;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    llvm::CallbackVH::CallbackVH(&v18, a2);
    v18 = &unk_2825BF058;
    v21 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v23, (LODWORD(v19[0]) >> 1) & 3, v19);
    v22 = &unk_2825BF058;
    v25 = v21;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v28 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v9, *(v9 + 16), v24, &v28) & 1) == 0)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>>(v9, &v22, v28);
      llvm::ValueHandleBase::operator=((v10 + 8), v23);
      *(v10 + 32) = v25;
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    }

    if (v27 != v26)
    {
      free(v27);
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    if (v20 != -8192 && v20 != -4096 && v20)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v19);
    }

    if (v12 != v11)
    {
      free(v12);
    }

    if (v14 != v13)
    {
      free(v14);
    }
  }

  if (v16 != -8192 && v16 != -4096)
  {
    if (v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 104 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825BF058;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    if (v3)
    {
      v9 = (v4 + 24);
      v10 = 104 * v3;
      do
      {
        v11 = *v9;
        if (*v9 != v23 && v11 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v11, &v25);
          v13 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v9 - 2);
          *(v13 + 32) = v9[1];
          llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
          ++*(a1 + 8);
          v14 = v9[3];
          if (v14 != v9[2])
          {
            free(v14);
          }
        }

        v15 = *v9;
        if (*v9 != -8192 && v15 != -4096 && v15 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 2));
        }

        v9 += 13;
        v10 -= 104;
      }

      while (v10);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(v4, (104 * v3));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[6];
    if (v5 != v11[5])
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_2825BF058;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v15, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v17 = v4;
  v22 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v16, &v22))
  {
    v5 = v22;
  }

  else
  {
    v5 = (*v4 + 104 * v4[2].u32[0]);
  }

  if ((*v17 + 104 * v17[2].u32[0]) != v5)
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v6 = v17;
    v7 = v5[6];
    if (v7 != v5[5])
    {
      free(v7);
    }

    v23[0] = 2;
    v23[1] = 0;
    v24 = -8192;
    v25 = 0;
    v22 = &unk_2825BF030;
    llvm::ValueHandleBase::operator=((v5 + 1), v23);
    v8 = v24;
    v5[4] = v25;
    if (v8 != -8192 && v8 != -4096 && v8)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    v6[1] = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v9 = v17;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    llvm::CallbackVH::CallbackVH(&v18, a2);
    v18 = &unk_2825BF030;
    v21 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v23, (LODWORD(v19[0]) >> 1) & 3, v19);
    v22 = &unk_2825BF030;
    v25 = v21;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v28 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v9, *(v9 + 16), v24, &v28) & 1) == 0)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(v9, &v22, v28);
      llvm::ValueHandleBase::operator=((v10 + 8), v23);
      *(v10 + 32) = v25;
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    }

    if (v27 != v26)
    {
      free(v27);
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    if (v20 != -8192 && v20 != -4096 && v20)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v19);
    }

    if (v12 != v11)
    {
      free(v12);
    }

    if (v14 != v13)
    {
      free(v14);
    }
  }

  if (v16 != -8192 && v16 != -4096)
  {
    if (v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 104 * v5;
    v7 = *(v6 + 24);
    if (v7 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = a1 + 104 * (v13 & v4);
        v7 = *(v6 + 24);
        v8 = 1;
        if (v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 104 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825BF030;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    if (v3)
    {
      v9 = (v4 + 24);
      v10 = 104 * v3;
      do
      {
        v11 = *v9;
        if (*v9 != v23 && v11 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v11, &v25);
          v13 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v9 - 2);
          *(v13 + 32) = v9[1];
          llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
          ++*(a1 + 8);
          v14 = v9[3];
          if (v14 != v9[2])
          {
            free(v14);
          }
        }

        v15 = *v9;
        if (*v9 != -8192 && v15 != -4096 && v15 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 2));
        }

        v9 += 13;
        v10 -= 104;
      }

      while (v10);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(v4, (104 * v3));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[6];
    if (v5 != v11[5])
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_2825BF030;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v19);
  v6 = *v4;
  if (v5)
  {
    v7 = v19;
  }

  else
  {
    v7 = *v4 + 48 * v4[2].u32[0];
  }

  result = v14;
  if (*v14 + 48 * v14[2].u32[0] != v7)
  {
    v9 = *(v7 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::erase(v14, v7);
    v10 = v14;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_2825BEFE0;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_2825BEFE0;
    v22 = v18;
    v23 = v9;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, v10[2].i32[0], v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
      result = llvm::ValueHandleBase::operator=((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::erase(int32x2_t *a1, uint64_t a2)
{
  v7[0] = 2;
  v7[1] = 0;
  v8 = -8192;
  v9 = 0;
  llvm::ValueHandleBase::operator=((a2 + 8), v7);
  v4 = v8;
  *(a2 + 32) = v9;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::initEmpty(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_2825BEFE0;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          llvm::ValueHandleBase::operator=((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825BEFE0;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t llvm::po_iterator<llvm::BasicBlock *,llvm::SmallPtrSet<llvm::BasicBlock *,8u>,false,llvm::GraphTraits<llvm::BasicBlock *>>::traverseChild(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 96) + 24 * *(a1 + 104);
    v3 = *(v2 - 24);
    v4 = *(v3 + 40);
    if (v4 == v3 + 40 || ((v5 = (v4 - 24), v4) ? (v6 = v4 - 24) : (v6 = 0), *(v6 + 16) - 29 > 0xA))
    {
      result = 0;
    }

    else
    {
      result = llvm::Instruction::getNumSuccessors(v5);
    }

    if (*(v2 - 8) == result)
    {
      break;
    }

    v8 = *(a1 + 96) + 24 * *(a1 + 104);
    v9 = *(v8 - 16);
    ++*(v8 - 8);
    Successor = llvm::Instruction::getSuccessor(v9);
    llvm::SmallPtrSetImpl<void *>::insert(v18, a1, Successor);
    if (v19 == 1)
    {
      v11 = Successor[5];
      if (v11 == Successor + 5)
      {
        v14 = 0;
      }

      else
      {
        v12 = v11 - 3;
        if (v11)
        {
          v13 = v11 - 3;
        }

        else
        {
          v13 = 0;
        }

        if (*(v13 + 16) - 29 >= 0xB)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }
      }

      v18[0] = Successor;
      v18[1] = v14;
      v19 = 0;
      v15 = llvm::SmallVectorTemplateCommon<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,true>>(a1 + 96, v18);
      v16 = *(a1 + 96) + 24 * *(a1 + 104);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(a1 + 104);
    }
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,true>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 24 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t *llvm::SmallVectorImpl<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 2);
    v4 = *(a1 + 2);
    if (v4 >= v3)
    {
      if (v3)
      {
        v5 = *a2;
        v6 = *a2 + 24 * v3;
        v7 = *a1;
        do
        {
          *v7 = *v5;
          v8 = *(v5 + 8);
          *(v7 + 16) = *(v5 + 16);
          *(v7 + 8) = v8;
          v5 += 24;
          v7 += 24;
        }

        while (v5 != v6);
      }
    }

    else
    {
      if (*(a1 + 3) < v3)
      {
        *(a1 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v4)
      {
        v9 = *a2;
        v10 = *a2 + 24 * v4;
        v11 = *a1;
        do
        {
          *v11 = *v9;
          v12 = *(v9 + 8);
          *(v11 + 16) = *(v9 + 16);
          *(v11 + 8) = v12;
          v9 += 24;
          v11 += 24;
        }

        while (v9 != v10);
      }

      else
      {
        v4 = 0;
      }

      v13 = *(a2 + 2) - v4;
      if (v13)
      {
        memcpy((*a1 + 24 * v4), (*a2 + 24 * v4), 24 * v13);
      }
    }

    *(a1 + 2) = v3;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 2;
    v4 = *a2;
    if (*a2 == a2 + 2)
    {
      v7 = *(a2 + 2);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          v9 = *a1;
          v10 = v4 + 24 * v7;
          do
          {
            *v9 = *v4;
            v11 = *(v4 + 8);
            v9[4] = *(v4 + 16);
            *(v9 + 1) = v11;
            v4 += 24;
            v9 += 6;
          }

          while (v4 != v10);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          v12 = v4 + 24 * v8;
          v13 = *a1;
          do
          {
            *v13 = *v4;
            v14 = *(v4 + 8);
            v13[4] = *(v4 + 16);
            *(v13 + 1) = v14;
            v4 += 24;
            v13 += 6;
          }

          while (v4 != v12);
        }

        else
        {
          v8 = 0;
        }

        v15 = *(a2 + 2) - v8;
        if (v15)
        {
          memcpy((*a1 + 24 * v8), (*a2 + 24 * v8), 24 * v15);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = a2[1];
      *a2 = v5;
      *(a2 + 3) = 0;
    }

    *(a2 + 2) = 0;
  }

  return a1;
}

uint64_t SimplifyGenericIRCommonPass::AddCandidate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = *MEMORY[0x277D85DE8];
  if (!*(result + 8))
  {
    goto LABEL_3;
  }

  v11 = result;
  result = llvm::Type::isOpaquePointerTy(*result);
  if (result)
  {
    goto LABEL_3;
  }

  result = **(*v11 + 16);
  if ((*(result + 8) & 0xFE) != 0x10)
  {
    v36 = *(v11 + 8);
    if (v36)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v60 = (a4 + 8);
      v62 = a6;
      v40 = 1;
      v63 = a2;
      while (1)
      {
        v41 = *(v36 + 24);
        v42 = *(v41 + 16);
        if (!v41 || v42 < 0x1C)
        {
          goto LABEL_3;
        }

        if (v42 == 84)
        {
          v44 = a4;
          v45 = v60;
LABEL_63:
          v46 = *v45;
          if (!*v45)
          {
LABEL_67:
            operator new();
          }

          while (1)
          {
            v45 = v46;
            v47 = v46[4];
            if (v41 < v47)
            {
              goto LABEL_63;
            }

            if (v47 >= v41)
            {
              break;
            }

            v46 = v45[1];
            if (!v46)
            {
              goto LABEL_67;
            }
          }

          v39 = 1;
          a2 = v63;
          result = **(*v11 + 16);
          a4 = v44;
          a6 = v62;
        }

        else if (v42 == 61)
        {
          if (*(v41 - 32) != v11 || (*(v41 + 18) & 1) != 0)
          {
            goto LABEL_3;
          }
        }

        else
        {
          if (v42 != 60 || *(v41 - 32) != v11 || (*(v41 + 18) & 1) != 0)
          {
            goto LABEL_3;
          }

          ++v37;
        }

        if (v38)
        {
          v40 &= v38 == *(v41 + 40);
        }

        else
        {
          v38 = *(v41 + 40);
        }

        v36 = *(v36 + 8);
        if (!v36)
        {
          v48 = v39 ^ 1;
          goto LABEL_75;
        }
      }
    }

    v37 = 0;
    v48 = 1;
    v40 = 1;
LABEL_75:
    v49 = *(v11 + 16);
    if (v49 == 62)
    {
      v49 = *(*(v11 - 32 * (*(v11 + 20) & 0x7FFFFFF)) + 16);
    }

    v50 = v37;
    if (v49 == 59)
    {
      v51 = llvm::UndefValue::get();
      v52 = v48 & 1;
      v53 = v40 & 1;
    }

    else
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
    }

    *&v64[0] = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(*a2, *(a2 + 16), v11, v64);
    v54 = *&v64[0];
    if (result)
    {
LABEL_86:
      *(v54 + 8) = v51;
      *(v54 + 16) = 0;
      *(v54 + 20) = v52;
      *(v54 + 21) = v53;
      *(v54 + 24) = v50;
      *(v54 + 32) = a6;
      if (a6)
      {
        operator new();
      }

      goto LABEL_3;
    }

    v55 = *(a2 + 8);
    v56 = *(a2 + 16);
    if (4 * v55 + 4 >= 3 * v56)
    {
      v56 *= 2;
    }

    else if (v56 + ~v55 - *(a2 + 12) > v56 >> 3)
    {
LABEL_83:
      ++*(a2 + 8);
      if (*v54 != -4096)
      {
        --*(a2 + 12);
      }

      *(v54 + 24) = 0;
      *v54 = v11;
      *(v54 + 8) = 0;
      *(v54 + 14) = 0;
      goto LABEL_86;
    }

    llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::grow(a2, v56);
    *&v64[0] = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(*a2, *(a2 + 16), v11, v64);
    v54 = *&v64[0];
    goto LABEL_83;
  }

  if ((~*(result + 8) & 0x11) != 0)
  {
    goto LABEL_3;
  }

  if ((*(**(result + 16) + 8) & 0xFE) == 0x10)
  {
    goto LABEL_3;
  }

  v13 = *(result + 32);
  if (v13 > 4)
  {
    goto LABEL_3;
  }

  v61 = a4;
  memset(v64, 0, sizeof(v64));
  v14 = *(v11 + 8);
  if (v14)
  {
    v15 = result;
    while (1)
    {
      v16 = *(v14 + 24);
      if (!v16)
      {
        goto LABEL_3;
      }

      if (*(v16 + 16) != 62)
      {
        goto LABEL_3;
      }

      v14 = *(v14 + 8);
      result = llvm::GetElementPtrInst::hasAllConstantIndices(v16);
      if (!result || (*(v16 + 20) & 0x7FFFFFF) != 3)
      {
        goto LABEL_3;
      }

      v17 = *(v16 - 64);
      v18 = *(v17 + 32);
      if (v18 > 0x40)
      {
        result = llvm::APInt::countLeadingZerosSlowCase((v17 + 24));
        if (result != v18)
        {
          goto LABEL_3;
        }
      }

      else if (*(v17 + 24))
      {
        goto LABEL_3;
      }

      v19 = *(v16 - 32);
      v20 = (v19 + 24);
      if (*(v19 + 32) >= 0x41u)
      {
        v20 = *v20;
      }

      v21 = *v20;
      if (v21 >= *(v15 + 32))
      {
        goto LABEL_3;
      }

      if (!*(v64 + v21))
      {
        *(v64 + v21) = llvm::Instruction::clone(v16);
        --*(a5 + 16);
        v22 = *(v11 + 16);
        if (v22 == 21)
        {
          v28 = *(*(v11 + 24) + 80);
          if (v28)
          {
            v29 = (v28 - 24);
          }

          else
          {
            v29 = 0;
          }

          FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v29);
          v31 = FirstInsertionPt - 24;
          v32 = FirstInsertionPt == 0;
          while (1)
          {
            v33 = v32 ? 0 : v31;
            if (*(v33 + 16) != 59)
            {
              break;
            }

            v34 = *(v31 + 32);
            v35 = *(v31 + 40) + 40;
            v31 = v34 - 24;
            if (v34)
            {
              v32 = v34 == v35;
            }

            else
            {
              v32 = 1;
            }
          }

          goto LABEL_32;
        }

        if (v22 == 59)
        {
          v23 = v11;
          do
          {
            v24 = *(v23 + 32);
            v25 = *(v23 + 40) + 40;
            v23 = v24 - 24;
            if (v24)
            {
              v26 = v24 == v25;
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
              v27 = 0;
            }

            else
            {
              v27 = v24 - 24;
            }
          }

          while (*(v27 + 16) == 59);
LABEL_32:
          llvm::Instruction::insertBefore();
        }
      }

      ++*(a5 + 16);
      llvm::Value::replaceAllUsesWith();
      result = llvm::Instruction::eraseFromParent(v16);
      if (!v14)
      {
        v13 = *(v15 + 32);
        goto LABEL_89;
      }
    }
  }

  v15 = result;
LABEL_89:
  if (v13)
  {
    v57 = 0;
    v58 = 1;
    do
    {
      result = *(v64 + v57);
      if (result)
      {
        result = SimplifyGenericIRCommonPass::AddCandidate(result, a2, a3, v61, a5, v11);
        v13 = *(v15 + 32);
      }

      v57 = v58;
    }

    while (v13 > v58++);
  }

LABEL_3:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 40 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 40 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 40 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    v15 = 5 * v3;
    if (v3)
    {
      v16 = 40 * v3;
      v17 = v4;
      do
      {
        v18 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(*a1, *(a1 + 16), v18, &v26);
          v19 = v26;
          *v26 = *v17;
          v20 = *(v17 + 8);
          *(v19 + 3) = *(v17 + 24);
          *(v19 + 1) = v20;
          ++*(a1 + 8);
        }

        v17 = (v17 + 40);
        v16 -= 40;
      }

      while (v16);
    }

    return llvm::deallocate_buffer(v4, (8 * v15));
  }

  else
  {
    *(a1 + 8) = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = 40 * v21 - 40;
      v24 = vdupq_n_s64(v23 / 0x28);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_20E70C4F0)));
        if (v25.i8[0])
        {
          *result = -4096;
        }

        if (v25.i8[4])
        {
          result[5] = -4096;
        }

        v22 += 2;
        result += 10;
      }

      while (((v23 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v22);
    }
  }

  return result;
}

AGX::SpecializableRenderPipelineState *AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(AGX::SpecializableRenderPipelineState *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *(this + 8) = 3;
  *(this + 68) = 0x706050403020100;
  *(this + 75) = 0;
  *(this + 152) = 255;
  *(this + 306) = 0;
  *(this + 308) = 0;
  *(this + 312) = 0;
  memset_pattern16(this, &unk_20E70CB00, 0x20uLL);
  memset_pattern16(this + 36, &unk_20E70CB00, 0x20uLL);
  *&v7[3] = 0;
  *&v7[11] = 0;
  v2 = 9;
  v3 = 76;
  do
  {
    v4 = this + v3;
    *v4 = 2;
    *(v4 + 1) = *v7;
    *(v4 + 12) = 0uLL;
    v3 += 28;
    --v2;
  }

  while (v2 > 1);
  v5 = *MEMORY[0x277D85DE8];
  return this;
}

void AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = (a2 - *a2);
  if (*v4 < 0x17u)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[11];
    if (v5)
    {
      v5 = (v5 + a2 + *(v5 + a2));
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = (a1 + 100);
  do
  {
    if (v5 && *v5 > v7)
    {
      v9 = (&v5[v6 + 1] + v5[v6 + 1]);
    }

    else
    {
      v9 = 0;
    }

    if (*(a1 + v6 * 4) == 263)
    {
      if (v9 && (v10 = (v9 - *v9), *v10 >= 5u))
      {
        v11 = v10[2];
        if (v11)
        {
          LODWORD(v11) = *(v9 + v11);
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

      *(a1 + v6 * 4) = v11;
    }

    v12 = *(v8 - 24);
    if (v12 == 2)
    {
      if (v9 && (v13 = (v9 - *v9), *v13 >= 9u) && (v14 = v13[4]) != 0)
      {
        v15 = *(v9 + v14);
        v12 = v15 == 1;
        if (v15 == 2)
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 0;
      }

      *(v8 - 24) = v12;
    }

    v16 = 1 << v7;
    if (v12 == 1)
    {
      if (!v9)
      {
        v21 = *(a1 + 304);
        if ((v16 & v21) == 0)
        {
          goto LABEL_80;
        }

        LODWORD(v9) = 0;
        goto LABEL_79;
      }

      if (!*(v8 - 5))
      {
        v17 = (v9 - *v9);
        if (*v17 >= 0x15u && (v18 = v17[10]) != 0)
        {
          v19 = *(v9 + v18);
          if (v19 > 0x13)
          {
            v20 = 0;
          }

          else
          {
            v20 = dword_20E745D40[v19];
          }
        }

        else
        {
          v20 = 2;
        }

        *(v8 - 5) = v20;
      }

      if (!*(v8 - 4))
      {
        v22 = (v9 - *v9);
        if (*v22 >= 0x11u && (v23 = v22[8]) != 0)
        {
          v24 = *(v9 + v23);
          if (v24 > 0x13)
          {
            v25 = 0;
          }

          else
          {
            v25 = dword_20E745D40[v24];
          }
        }

        else
        {
          v25 = 1;
        }

        *(v8 - 4) = v25;
      }

      if (!*(v8 - 3))
      {
        v26 = (v9 - *v9);
        if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
        {
          v28 = *(v9 + v27);
          if (v28 > 0x13)
          {
            v29 = 0;
          }

          else
          {
            v29 = dword_20E745D40[v28];
          }
        }

        else
        {
          v29 = 2;
        }

        *(v8 - 3) = v29;
      }

      if (!*(v8 - 2))
      {
        v30 = (v9 - *v9);
        if (*v30 >= 0xFu && (v31 = v30[7]) != 0)
        {
          v32 = *(v9 + v31);
          if (v32 > 0x13)
          {
            v33 = 0;
          }

          else
          {
            v33 = dword_20E745D40[v32];
          }
        }

        else
        {
          v33 = 1;
        }

        *(v8 - 2) = v33;
      }

      if (!*(v8 - 1))
      {
        v34 = (v9 - *v9);
        if (*v34 >= 0xDu && (v35 = v34[6]) != 0)
        {
          v36 = *(v9 + v35);
          if (v36 > 5)
          {
            v37 = 0;
          }

          else
          {
            v37 = dword_20E745D90[v36];
          }
        }

        else
        {
          v37 = 3;
        }

        *(v8 - 1) = v37;
      }

      if (!*v8)
      {
        v38 = (v9 - *v9);
        if (*v38 >= 0xBu && (v39 = v38[5]) != 0)
        {
          v40 = *(v9 + v39);
          if (v40 > 5)
          {
            v41 = 0;
          }

          else
          {
            v41 = dword_20E745D90[v40];
          }
        }

        else
        {
          v41 = 3;
        }

        *v8 = v41;
      }
    }

    v21 = *(a1 + 304);
    if ((v16 & v21) == 0)
    {
      goto LABEL_80;
    }

    if (v9)
    {
      v42 = (v9 - *v9);
      if (*v42 >= 7u && (v43 = v42[3]) != 0)
      {
        v44 = *(v9 + v43);
        if ((v44 & 0x10) != 0)
        {
          goto LABEL_80;
        }

        LODWORD(v9) = __rbit32(v44) >> 28;
      }

      else
      {
        LODWORD(v9) = 15;
      }
    }

LABEL_79:
    *(a1 + 300) = *(a1 + 300) & ~(15 << (v6 * 4)) | (v9 << (v6 * 4));
    *(a1 + 304) = v21 & ~v16;
LABEL_80:
    ++v7;
    ++v6;
    v8 += 7;
  }

  while (v6 != 8);
  v45 = *a2;
  v46 = -v45;
  v47 = (a2 - v45);
  v48 = *(a2 - v45);
  if (*(a1 + 32) == 3)
  {
    if (v48 >= 0x39 && v47[28] && *(a2 + v47[28]))
    {
      v49 = *(a2 + v47[28]);
      v50 = v49 == 1;
      if (v49 == 1)
      {
        v51 = 2;
      }

      else
      {
        v51 = 3;
      }

      *(a1 + 32) = v51;
      if (!v50)
      {
        memset_pattern16((a1 + 36), &unk_20E70CB00, 0x20uLL);
      }

LABEL_99:
      if (v47[18] && *(a2 + v47[18]))
      {
        v52 = 1;
        if (v48 >= 0x27)
        {
          if (v47[19])
          {
            v53 = *(a2 + v47[19]);
            if (v53 > 0xF)
            {
              v52 = 0;
            }

            else
            {
              v52 = dword_20E745CE0[v53];
            }
          }

          else
          {
            v52 = 1;
          }
        }

        *(a1 + 308) = v52;
        *(a1 + 312) = 1;
        v45 = *a2;
        v46 = -v45;
        v48 = *(a2 - v45);
        goto LABEL_108;
      }

      goto LABEL_109;
    }

    *(a1 + 32) = 0;
  }

  if (v48 >= 0x25)
  {
    goto LABEL_99;
  }

LABEL_108:
  if (v48 >= 0xD)
  {
LABEL_109:
    if (*(a2 + v46 + 12))
    {
      v54 = *(a2 + *(a2 + v46 + 12));
      goto LABEL_112;
    }
  }

  v54 = 1;
LABEL_112:
  *(a1 + 305) = v54;
  v55 = (a2 - v45);
  v56 = *v55;
  if (v56 < 0xF)
  {
    if (v56 >= 0xD)
    {
      goto LABEL_117;
    }

    goto LABEL_119;
  }

  if (!v55[7] || (v57 = *(a2 + v55[7])) == 0)
  {
LABEL_117:
    v58 = v55[6];
    if (v58)
    {
      v57 = *(a2 + v58);
      goto LABEL_120;
    }

LABEL_119:
    LOBYTE(v57) = 1;
  }

LABEL_120:
  *(a1 + 306) = v57;
}

uint64_t std::vector<AGCTargetArch>::~vector[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t (***AGCTarget::Get(unsigned __int16 a1))()
{
  v2 = a1;
  result = &AGCTarget::Get(AGCTargetArch)::target;
  if (v2 > 24)
  {
    if (v2 > 31)
    {
      if (v2 > 34)
      {
        if (v2 == 35 || v2 == 38)
        {
          return &AGCTargetHAL300::Get(void)::target;
        }
      }

      else if (v2 == 32 || v2 == 34)
      {
        return AGCTargetHAL200::Get(void)::target;
      }
    }

    else
    {
      if ((v2 - 25) < 3)
      {
        return AGCTargetG13::Get(void)::target;
      }

      if (v2 == 31)
      {
        return AGCTargetG16::Get(void)::target;
      }
    }
  }

  else
  {
    if (v2 > 18)
    {
      if (a1 == 22)
      {
        v4 = AGCTargetG15::Get(AGCTargetArch)::target;
      }

      else
      {
        v4 = AGCTargetG15::Get(AGCTargetArch)::target;
      }

      if (v2 != 24)
      {
        v4 = &AGCTarget::Get(AGCTargetArch)::target;
      }

      if (v2 == 22)
      {
        v4 = AGCTargetG15_AGX2::Get(void)::target;
      }

      if ((v2 - 19) >= 3)
      {
        return v4;
      }

      else
      {
        return AGCTargetG14X::Get(void)::target;
      }
    }

    if ((v2 - 17) < 2)
    {
      return AGCTargetG14::Get(void)::target;
    }

    if (v2 == 14 || v2 == 16)
    {
      return AGCTargetG13::Get(void)::target;
    }
  }

  return result;
}

uint64_t AGCTarget::CPUSubtypeToTargetArch(AGCTarget *this, unsigned int a2, const char *a3)
{
  v3 = this;
  if (this > 321)
  {
    if (this <= 433)
    {
      if (this <= 369)
      {
        switch(this)
        {
          case 0x142:
            return 196624;
          case 0x143:
            return 65570;
          case 0x153:
            return 65571;
        }
      }

      else if (this > 401)
      {
        if (this == 402)
        {
          return 196626;
        }

        if (this == 403)
        {
          return 196640;
        }
      }

      else
      {
        if (this == 370)
        {
          return 196625;
        }

        if (this == 371)
        {
          return 65574;
        }
      }

      return 0;
    }

    if (this <= 529)
    {
      switch(this)
      {
        case 0x1B2:
          return 196627;
        case 0x1B3:
          return 262175;
        case 0x1F2:
          return 196629;
      }

      return 0;
    }

    if (this > 593)
    {
      if (this != 594)
      {
        if (this == 610)
        {
          return 196630;
        }

        return 0;
      }

      v5 = 19;
    }

    else if (this == 530)
    {
      v5 = 17;
    }

    else
    {
      if (this != 562)
      {
        return 0;
      }

      v5 = 18;
    }

    goto LABEL_59;
  }

  result = 327684;
  if (v3 > 113)
  {
    if (v3 <= 242)
    {
      if (v3 == 114)
      {
        v7 = 196616;
        return v7 | 1u;
      }

      if (v3 == 210)
      {
        return 196620;
      }

      if (v3 != 227)
      {
        return 0;
      }

      v5 = 25;
      v6 = 65542;
      return v6 | v5;
    }

    if (v3 > 274)
    {
      if (v3 == 275)
      {
        return 327704;
      }

      if (v3 == 290)
      {
        return 196622;
      }

      return 0;
    }

    if (v3 != 243)
    {
      if (v3 == 259)
      {
        return 65568;
      }

      return 0;
    }

    v5 = 23;
LABEL_59:
    v6 = 196616;
    return v6 | v5;
  }

  if (v3 <= 80)
  {
    switch(v3)
    {
      case '""':
        return 196616;
      case 'A':
        return result;
      case 'C':
        return 65560;
    }

    return 0;
  }

  if (v3 > 82)
  {
    if (v3 == 83)
    {
      return 196632;
    }

    if (v3 == 97)
    {
      v7 = 65542;
      return v7 | 1u;
    }

    return 0;
  }

  if (v3 == 81)
  {
    return 65542;
  }

  else
  {
    return 196618;
  }
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v5 = *a2;
    v6 = a2 - v5;
    v7 = *(a2 - v5);
    if (v7 < 5)
    {
      goto LABEL_68;
    }

    v8 = -v5;
    v9 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v10 = *(a2 + v9);
      v52 = a2 + v9;
      v11 = *(a2 + v9 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v9 + v10;
        v51 = *(a2 + v9);
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_52;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_52;
          }

          v19 = a2 + v14 + v15 + v18;
          if (!*(v19 + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 8 * v13 + 112) = AGX::G13::TextureFormatTable::chooseTextureFormatCPP(*(v19 + 2), v4);
          v20 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v21 = v15 - *(v16 + 1);
          v22 = *(a2 + v14 + v21 + 4);
          if (v22 < 0x19)
          {
            v24 = 0;
            v23 = 0;
            if (v22 < 0xF)
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (*(a2 + v14 + v21 + 28))
            {
              v23 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 28) + 4);
            }

            else
            {
              v23 = 0;
            }

            if (v22 >= 0x1B && *(a2 + v14 + v21 + 30))
            {
              v24 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 30) + 4);
            }

            else
            {
              v24 = 0;
            }
          }

          v25 = *(a2 + v14 + v21 + 18);
          if (v25 && *(a2 + v14 + v15 + v25 + 4))
          {
            *(a1 + 48) |= v20;
            if ((v24 & 0xFE) == 2)
            {
              v26 = 1 << v13;
            }

            else
            {
              v26 = 0;
            }

            *(a1 + 68) |= v26;
            v27 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v27 + 2) >= 0x11u && (v28 = *(v27 + 10)) != 0)
            {
              v29 = *(a2 + v14 + v15 + v28 + 4);
            }

            else
            {
              v29 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v29);
          }

          v30 = 0;
          if (v23 == 2)
          {
            v31 = 1 << v13;
          }

          else
          {
            v31 = 0;
          }

          *(a1 + 56) |= v31;
          if (!v24)
          {
LABEL_33:
            v24 = 0;
            v30 = 1 << v13;
          }

          *(a1 + 52) |= v30;
          if (v23 == 1)
          {
            v32 = 1 << v13;
          }

          else
          {
            v32 = 0;
          }

          v33 = *(a1 + 64);
          v34 = *(a1 + 60) | v32;
          if ((v24 & 0xFFFFFFFD) == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          *(a1 + 60) = v34;
          *(a1 + 64) = v35 | v33;
          if (v24 == 4)
          {
            v36 = 1 << v13;
          }

          else
          {
            v36 = 0;
          }

          *(a1 + 72) |= v36;
          v37 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v37 + 2) < 7u || (v38 = *(v37 + 5)) == 0)
          {
            *(a1 + v12 + 176) = 2;
            goto LABEL_49;
          }

          v39 = *(a2 + v14 + v15 + v38 + 4);
          AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v39);
          if (v39 <= 8)
          {
            if (((1 << v39) & 0x168) != 0)
            {
              *(a1 + 78) |= v20;
LABEL_49:
              v40 = v51;
              goto LABEL_50;
            }

            if (v39 == 1)
            {
              *(a1 + 78) |= v20;
              v41 = 1;
              goto LABEL_61;
            }

            if (v39 == 7)
            {
              v41 = 3;
LABEL_61:
              v40 = v51;
              goto LABEL_51;
            }
          }

          v40 = v51;
          if (!v39)
          {
            v41 = 1;
            goto LABEL_51;
          }

LABEL_50:
          v41 = 2;
LABEL_51:
          *(a1 + 76) |= v41 << v12;
          v11 = *&v52[v40];
LABEL_52:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v42 = *a2;
          v8 = -v42;
          v7 = *(a2 - v42);
          break;
        }
      }
    }

    if (v7 >= 7 && *(a2 + v8 + 6) && (v43 = *(a2 + *(a2 + v8 + 6)), (v43 & 0xFFFFFFFE) != 0))
    {
      v44 = (a1 + 92);
      if (v43 > 0x7FF)
      {
        LODWORD(v43) = 2048;
      }
    }

    else
    {
LABEL_68:
      v44 = (a1 + 92);
      LODWORD(v43) = 1;
    }

    *v44 = v43;
    v45 = (a2 - *a2);
    v46 = *v45;
    if (v46 < 0xB)
    {
      v48 = 1;
      *(a1 + 96) = 1;
      if (v46 < 9)
      {
LABEL_79:
        *(a1 + 97) = v48;
        return a1;
      }
    }

    else
    {
      if (v45[5])
      {
        v47 = *(a2 + v45[5]);
      }

      else
      {
        v47 = 1;
      }

      *(a1 + 96) = v47;
    }

    v49 = v45[4];
    if (v49)
    {
      v48 = *(a2 + v49);
    }

    else
    {
      v48 = 1;
    }

    goto LABEL_79;
  }

  return a1;
}

char *AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo(char *result, int a2)
{
  v2 = 0;
  v3 = 2;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      v2 = a2 != 5;
      v3 = 4;
      goto LABEL_23;
    }

    v4 = 3;
    if (a2 == 8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v3 = 2;
    v6 = a2 == 7;
    if (a2 == 7)
    {
      v2 = 0;
    }

    else
    {
      v2 = v7;
    }

    goto LABEL_21;
  }

  if (a2 > 2)
  {
    v4 = 2;
    if (a2 == 4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v3 = 2;
    v6 = a2 == 3;
    if (a2 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = v5;
    }

LABEL_21:
    if (v6)
    {
      v3 = v4;
    }

    goto LABEL_23;
  }

  if (!a2)
  {
LABEL_6:
    v3 = 1;
    goto LABEL_23;
  }

  if (a2 == 1)
  {
    v2 = 1;
    goto LABEL_6;
  }

LABEL_23:
  *result = v3;
  result[1] = v2;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::calculateWorstCaseAlignment(uint64_t a1, int a2)
{
  if (*(a1 + 79) != 255)
  {
    return 4;
  }

  v3 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 1;
  }

  v4 = a1 + 112;
  result = 1;
  do
  {
    v5 = __clz(__rbit32(v3));
    v6 = *(*(v4 + 8 * v5) + 32);
    if (v6 == 18)
    {
      v7 = a2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v6 - 2;
    if (!v7)
    {
      v8 = 7;
    }

    if (v8 <= 0x14)
    {
      v9 = dword_20E716468[v8];
      v10 = result > v9;
      if (result <= v9)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (!v10 && v8 <= 0x14)
      {
        result = dword_20E716468[v8];
      }
    }

    v12 = 1 << v5;
    v13 = v12 == v3;
    v3 ^= v12;
  }

  while (!v13);
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x16)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0x41F3C0) != 0)
  {
    return 2 * a2;
  }

  if (((1 << a1) & 0x3C0000) != 0)
  {
    return 4;
  }

  if (((1 << a1) & 0x20C00) != 0)
  {
    return 4 * a2;
  }

LABEL_8:
  if (a1 - 2 >= 4)
  {
    return 0;
  }

  return a2;
}

uint64_t AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(uint64_t result)
{
  v1 = result;
  if (*(result + 208))
  {
    v2 = 128;
  }

  else
  {
    v2 = 64;
  }

  v82 = v2;
  v3 = *(result + 88) & 0xFFFFFFFE;
  v4 = v3 == 2;
  v81 = *(result + 79);
  v71 = result;
  if (*(result + 208))
  {
    v76 = 0;
  }

  else
  {
    if (v3 == 2)
    {
      result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::calculateWorstCaseAlignment(result, 0);
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    v6 = v1;
    v7 = *(v1 + 40);
    if (v7)
    {
      v8 = v3;
      v9 = 0;
      v10 = v6 + 112;
      do
      {
        v11 = __clz(__rbit32(v7 | 0x100));
        v12 = 1 << v11;
        if (((1 << v11) & v81) != 0)
        {
          v13 = *(v10 + 8 * v11);
          if (*(v13 + 32) == 18)
          {
            v14 = 9;
          }

          else
          {
            v14 = *(v13 + 32);
          }

          result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v14, *(v13 + 28));
          v15 = v5;
          if (v8 != 2)
          {
            if (v14 - 2 > 0x14)
            {
              v15 = 0;
            }

            else
            {
              v15 = dword_20E716468[v14 - 2];
            }
          }

          v9 = ((v9 + v15 - 1) & -v15) + result;
        }

        else
        {
          v9 = ((v9 + 3) & 0xFFFFFFFC) + 16;
        }

        v7 &= ~v12;
      }

      while (v7);
      v76 = v9 > 0x40;
      v1 = v71;
      v3 = v8;
    }

    else
    {
      v76 = 0;
      v1 = v6;
    }
  }

  if (v81 == 255)
  {
    v16 = 0;
    v17 = v1;
    v18 = *(v1 + 40);
    v19 = v17 + 112;
    do
    {
      v20 = v18 != 0;
      if (!v18)
      {
        break;
      }

      v21 = __clz(__rbit32(v18));
      v22 = *(v19 + 8 * v21);
      v23 = *(v22 + 32) == 18 ? 9 : *(v22 + 32);
      v24 = v23 - 2 > 0x14 ? 0 : dword_20E716468[v23 - 2];
      v25 = (v16 + v24 - 1) & -v24;
      result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v23, *(v22 + 28));
      v16 = v25 + result;
      v20 = 1;
      v18 ^= 1 << v21;
    }

    while (v16 <= v82);
    v1 = v71;
  }

  else
  {
    v20 = 0;
  }

  if (v3 == 2)
  {
    result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::calculateWorstCaseAlignment(v1, v20);
    v72 = result;
    v75 = result;
  }

  else
  {
    v75 = 0;
    v72 = 4;
  }

  memset(v90, 0, sizeof(v90));
  v26 = v1;
  v27 = *(v1 + 40);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v74 = v26 + 112;
    v73 = (v81 != 255) | v4 | v20;
    v79 = v3;
    do
    {
      v32 = __clz(__rbit32(v27));
      v33 = v90 + v32;
      v34 = 1 << v32;
      v83 = v28;
      v84 = v30;
      if (((1 << v32) & v81) != 0)
      {
        v77 = v29;
        v78 = v31;
        v80 = v4;
        v35 = *(v74 + 8 * v32);
        v37 = v35[7];
        v36 = v35[8];
        if (v36 == 18)
        {
          v38 = 9;
        }

        else
        {
          v38 = v35[8];
        }

        if (v73 & 1 | (v36 != 18))
        {
          v39 = v35[8];
        }

        else
        {
          v39 = 9;
        }

        v40 = v39 != v38;
        if (v39 == 3)
        {
          v41 = v35[21] != 0;
          if (v38 == 3)
          {
            v42 = 0;
          }

          else
          {
            v42 = 1 << v32;
          }

          v43 = v35[7];
        }

        else
        {
          if (v39 == v38)
          {
            v42 = 0;
          }

          else
          {
            v42 = 1 << v32;
          }

          v45 = v39 != v38;
          v46 = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v39, v35[7]);
          v40 = v45;
          v43 = v46;
          v41 = 0;
        }

        v44 = v75;
        if (v79 != 2)
        {
          if (v39 - 2 > 0x14)
          {
            v44 = 0;
          }

          else
          {
            v44 = dword_20E716468[v39 - 2];
          }
        }

        v31 = v42 | v78;
        v47 = v35[19];
        v85[0] = v39;
        v85[1] = v37;
        v86 = v41;
        v87 = v47;
        v88 = v40;
        v89 = 1;
        result = AGCDrawBuffer::setTextureFormat(v90 + v32, v85);
        v3 = v79;
        v4 = v80;
        v29 = v77;
      }

      else
      {
        LOBYTE(v85[0]) = 0;
        v89 = 0;
        result = AGCDrawBuffer::setTextureFormat(v90 + v32, v85);
        v43 = 16;
        v44 = v72;
      }

      v28 = v83;
      v48 = (v44 - 1 + v83) & -v44;
      v30 = v84 | (v48 + v43 > v82);
      v49 = (v44 - 1 + v29) & -v44;
      if (v84 & 1 | (v48 + v43 > v82))
      {
        v29 = v49 + v43;
      }

      else
      {
        v28 = v48 + v43;
      }

      v4 |= ((1 << v32) & v81) == 0;
      if (v32)
      {
        v50 = 1;
      }

      else
      {
        v50 = v3 == 2;
      }

      v51 = v50;
      if (v4 & 1) != 0 && (v51)
      {
        v52 = *v33 | 0xFF000;
      }

      else
      {
        v53 = v49 + v82;
        if (!(v84 & 1 | (v48 + v43 > v82)))
        {
          v53 = (v44 - 1 + v83) & -v44;
        }

        v52 = *v33 & 0xFFF00FFF | (v53 << 12);
      }

      if (((v3 == 2) | v30) & v76)
      {
        v54 = 0;
      }

      else
      {
        v54 = 0x100000;
      }

      *v33 = v52 & 0xFE0FFFFF | v54;
      v50 = v34 == v27;
      v27 ^= v34;
    }

    while (!v50);
  }

  else
  {
    v31 = 0;
    LOBYTE(v30) = 0;
    v29 = 0;
    v28 = 0;
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v57 = *(v71 + v55 + 80);
    if (v57 != -1)
    {
      v58 = *(v90 + v57);
      if ((v58 & 0x1F) != 0)
      {
        *(v71 + 4 * v55) = v58;
        v56 |= 1 << v55;
      }
    }

    ++v55;
  }

  while (v55 != 8);
  v59 = v30 & 1;
  if (v30)
  {
    v60 = v82;
  }

  else
  {
    v60 = v28;
  }

  v61 = (v60 + 7) & 0x1FFFFFFF8;
  if (v61 >= v82)
  {
    v61 = v82;
  }

  if (v61 <= 8)
  {
    LODWORD(v61) = 8;
  }

  if (v30)
  {
    v62 = *(v71 + 208);
    v59 = v62;
  }

  else
  {
    v62 = 1;
  }

  if (((*(v71 + 79) == 255) & (v4 ^ 1) & v62) != 0)
  {
    v63 = v61 | 0x10000;
  }

  else
  {
    v63 = 0;
  }

  v64 = *(v71 + 32);
  v65 = v64 | 0x1FF000;
  v66 = v64 & 0xFFE00FFF | ((v63 & 0x1FF) << 12);
  if ((v63 & 0x10000) != 0)
  {
    v67 = v66;
  }

  else
  {
    v67 = v65;
  }

  v68 = v67 & 0xFFFFF000 | (((27 - __clz(*(v71 + 96))) & 3) << 8) & 0xF300 | (((27 - __clz(*(v71 + 97))) & 3) << 10) | v56;
  if (v30)
  {
    v69 = 6291456;
  }

  else
  {
    v69 = 0x400000;
  }

  if (v59 & 1 | ((v30 & 1) == 0))
  {
    v70 = v68 & 0xE09FFFFF | v69;
  }

  else
  {
    v70 = v68;
  }

  *(v71 + 32) = v70 & 0xE0FFFFFF;
  *(v71 + 100) = v61;
  *(v71 + 104) = v29;
  *(v71 + 44) = v31;
  return result;
}

uint64_t AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(int a1, char a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (a2)
  {
    if ((a2 & 2) != 0)
    {
      v4 = 8;
    }

    else
    {
      v4 = v3;
    }

    if (a1 != 4)
    {
      return v4;
    }
  }

  else
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 2;
      }

      if (a1 == 2)
      {
        if ((a2 & 2) != 0)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }

      return -1;
    }

    if (a1 == 3)
    {
      return 5;
    }

    if (a1 != 4)
    {
      return -1;
    }
  }

  return v3;
}

void *AGCTargetImpl<AGX::G13::Classes,AGX::G13::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = "air-degenerate-vertex-amplification-emulation";
  v10 = 0;
  v11 = "air-raytracing-emulation,indirect-acceleration-structures";
  v12 = (*(*a1 + 24))(a1);
  v13 = "mtl-fetch-all-unaligned";
  v14 = 1;
  v15 = "air-bfloat-emulation";
  v16 = 1;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v9)[v6 + 1]) == 1)
    {
      result[v7++] = (&v9)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateBVHBuilderProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 24;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF830;
  *(a2 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a2, a1);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v40 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::FramebufferCompilerConfig(v43, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v43);
  v41[0] = v43[0];
  v41[1] = v43[1];
  v4 = v44;
  v42 = v44;
  v39 = v51;
  v5 = v45;
  v36 = v46;
  v32 = (v44 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v32 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v30 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v35 = (v7 >> 12) & 0x1FF;
    v34 = v50;
    v33 = v49 & ~v48 | v47;
    v31 = v48 & ~v49 | v47;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v41 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v35;
      v15 = *(v40 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v40 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v52[v12]), HIBYTE(v52[v12]), v39);
      *(v40 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v33 | v17;
      v20 = v34 & (1 << v12);
      v11 |= v20;
      if ((v36 & (1 << v12)) != 0)
      {
        v38 = v9;
        v37 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v32 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v40 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v52[v12 + 8]), HIBYTE(v52[v12 + 8]), v39);
        v26 = v25;
        *(v40 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v37 | v14;
        v9 = v38 | (256 << v12);
        v10 = v26 | (((v31 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v30;
    v8 = *(v30 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::FramebufferCompilerConfig(v6, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v6);
  result = *v6;
  v4 = v6[1];
  *(a2 + 40) = v6[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v7;
  *(a2 + 80) = v10 | (v11 << 16) | (v8 << 24);
  *(a2 + 84) = v9;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

void *AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateTileProgramKey@<X0>(AGX *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v37 = 67305985;
  v38 = 1541;
  v39 = 7;
  v40 = 0x100000000;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  bzero(&v31, 0x28uLL);
  if (!a1)
  {
    goto LABEL_23;
  }

  v10 = (a1 - *a1);
  v11 = *v10;
  if (v11 < 0xF)
  {
    goto LABEL_13;
  }

  v12 = v10[7];
  if (v10[7])
  {
    v13 = *(a1 + v12);
    v14 = (a1 + v12 + v13);
    v15 = *v14;
    if (v15)
    {
      v29 = a2;
      v30 = a3;
      v16 = 0;
      v17 = DWORD2(v33);
      v18 = a1 + v12 + v13;
      do
      {
        v19 = &v18[4 * v16];
        v20 = *(v19 + 1);
        v21 = v14 + v20 - *&v19[v20 + 4];
        if (*(v21 + 2) >= 5u)
        {
          v22 = *(v21 + 4);
          if (v22)
          {
            v23 = v14 + v20 + v22;
            if (*(v23 + 2))
            {
              *(v44 + v16) = AGX::G13::TextureFormatTable::chooseTextureFormatCPP(*(v23 + 2), v9);
              v17 |= 1 << v16;
            }
          }
        }

        if (v16 > 6)
        {
          break;
        }

        ++v16;
        ++v14;
      }

      while (v16 < v15);
      DWORD2(v33) = v17;
      a2 = v29;
      a3 = v30;
LABEL_13:
      HIBYTE(v35) = -1;
      if (v11 <= 0xA)
      {
        v24 = 1;
        LOBYTE(v41) = 1;
LABEL_22:
        HIBYTE(v41) = v24;
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  HIBYTE(v35) = -1;
LABEL_16:
  if (v10[5])
  {
    v25 = *(a1 + v10[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v41) = v25;
  HIBYTE(v41) = v25;
  if (v11 >= 0xD)
  {
    if (v10[6])
    {
      v24 = *(a1 + v10[6]);
      if (v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v31);
  v26 = v32;
  *v8 = v31;
  *(v8 + 16) = v26;
  *(v8 + 32) = v33;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) = *(a4 + 100) & 0x8BFFFEFF | 0x100;
  *(a4 + 108) &= 0xFFFFC7F7;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}