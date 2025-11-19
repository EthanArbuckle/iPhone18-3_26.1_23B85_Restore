void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
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

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
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
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
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
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, a2, a3, a3 - a2);
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

void sub_191B00B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
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

void sub_191B00CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
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

void sub_191B0113C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 64, &v7);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
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
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
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

void sub_191B013F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x193B034F0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v10);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
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
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x193B034F0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x193B035A0);
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
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

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x193B035A0);
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
  MEMORY[0x193B034F0](exception, 15);
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
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
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
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
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

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
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

  JUMPOUT(0x193B035A0);
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
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
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
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this == a3)
  {
    return v3;
  }

  v4 = &this->__traits_.__loc_.__locale_ + 1;
  if ((&v3->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v3->__traits_.__loc_.__locale_) != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    return v3 + 2;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    return v3 + v9;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
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
  std::deque<std::__state<char>>::push_back(&v59, v55);
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
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
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
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
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

        std::deque<std::__state<char>>::push_front(&v59, v29);
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
        std::deque<std::__state<char>>::pop_back(&v59);
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
            std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v41);
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
      std::deque<std::__state<char>>::pop_back(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      std::deque<std::__state<char>>::push_back(&v59, v55);
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
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
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
  std::deque<std::__state<char>>::~deque[abi:ne200100](&v59);
  return v49;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  *v49 = 0;
  memset(&v49[8], 0, 32);
  v50 = 0u;
  memset(v51, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
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
  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v53 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v53;
  *(v53 - 2) = v6;
  v18 = (a3 - a2);
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
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
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
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
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
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
        v31 = v53 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53 - 12);
        v53 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = &v24[-*(v17 - 11)];
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v49 = *v22;
        *&v49[16] = v27;
        if (v49 != v22)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v49[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v51, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v51[3] + 5) = *(v17 - 11);
        v51[3] = v28;
        v14 = v26;
      }

      v29 = v53;
      if (v14 == v18)
      {
        v30 = v52;
        while (v29 != v30)
        {
          v29 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = (a3 - a2);
      }

      else
      {
        v34 = v53 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53 - 12);
        v53 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v53;
  }

  while (v52 != v53);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = &v14[a2];
  *(v35 + 16) = 1;
  if (v50 != *&v49[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *&v49[32]) >> 3);
    v37 = (*&v49[32] + 16);
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
  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (*&v49[32])
  {
    *&v50 = *&v49[32];
    operator delete(*&v49[32]);
  }

  *v49 = &v52;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v49);
  return v41;
}

void sub_191B02DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
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
    std::deque<std::__state<char>>::__add_back_capacity(a1);
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

uint64_t std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
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
  result = vaddq_s64(a1[2], xmmword_191DCD1F0);
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<binarysample::ElectrocardiogramLead>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v10);
}

void sub_191B03260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<binarysample::ElectrocardiogramLead>>>(result, v11);
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<binarysample::ElectrocardiogramLead>>>(result, v9);
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<binarysample::ElectrocardiogramLead>>>(result[4], v11);
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<binarysample::ElectrocardiogramLead>>>(result[4], v9);
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

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<binarysample::ElectrocardiogramLead>>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, v11);
}

void sub_191B03950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](void *a1)
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
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
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

_BYTE *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
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

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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

id HKDeviceStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8198];
  v1 = [v0 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_fetchDevicesMatchingValues_forProperty_completion_ argumentIndex:0 ofReply:1];
  v2 = [v0 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_fetchDevicesMatchingValues_forProperty_completion_ argumentIndex:1 ofReply:0];
  v3 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchAllDevicesWithCompletion_ argumentIndex:0 ofReply:1];
  v4 = [v0 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_fetchGymkitAndBluetoothDevicesMatchingValues_forProperty_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id HKSourceStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F81F8];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchAllSourcesWithCompletion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v1 forSelector:sel_remote_fetchOrderedSourcesForObjectType_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v1 forSelector:sel_remote_updateOrderedSources_forObjectType_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

id OUTLINED_FUNCTION_1_10(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return [v1 setObject:a1 forKeyedSubscript:v2];
}

__CFString *HKAnalyticsPropertyValueForBiologicalSex(void *a1)
{
  v1 = [a1 biologicalSex];
  if (v1 > 3)
  {
    return @"male";
  }

  else
  {
    return off_1E7381690[v1];
  }
}

id HKAnalyticsDecadeBucketedAgeForAgeWithBoundsAndBucketRange(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v9)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v14 = [v9 integerValue];
  v15 = 10 * (v14 / 10);
  if (!v10)
  {
LABEL_8:
    if (v11)
    {
      v20 = [v11 integerValue];
      if (v14 > v20)
      {
        v17 = MEMORY[0x1E696AD98];
        v18 = v20 + 1;
        goto LABEL_11;
      }
    }

    if (v12)
    {
      v22 = [v12 integerValue];
      if (v13)
      {
LABEL_14:
        v23 = [v13 integerValue];
LABEL_17:
        if (v15 <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v15;
        }

        if (v24 >= v23)
        {
          v18 = v23;
        }

        else
        {
          v18 = v24;
        }

        v21 = MEMORY[0x1E696AD98];
        goto LABEL_24;
      }
    }

    else
    {
      v22 = 0xFFFFFFFF80000000;
      if (v13)
      {
        goto LABEL_14;
      }
    }

    v23 = 90;
    goto LABEL_17;
  }

  v16 = [v10 integerValue];
  if (v14 >= v16)
  {
    if (v14 / 10 == v16 / 10)
    {
      v15 = v16;
    }

    goto LABEL_8;
  }

  v17 = MEMORY[0x1E696AD98];
  v18 = v16 - 1;
LABEL_11:
  v21 = v17;
LABEL_24:
  v19 = [v21 numberWithInteger:v18];
LABEL_25:

  return v19;
}

__CFString *HKAnalyticsErrorCategoryForFeatureAvailabilityOnboardingEligibility(void *a1)
{
  if (a1)
  {
    v2 = HKAnalyticsErrorCategoryForFeatureAvailabilityOnboardingIneligibilityReasons([a1 ineligibilityReasons]);
  }

  else
  {
    v2 = @"-1";
  }

  return v2;
}

__CFString *HKAnalyticsErrorCategoryForFeatureAvailabilityOnboardingIneligibilityReasons(uint64_t a1)
{
  v1 = @"missingCountryCode";
  v2 = @"rescinded";
  v3 = @"unknown";
  if ((a1 & 0x80) != 0)
  {
    v3 = @"rescinded";
  }

  if ((a1 & 0x40) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 0x38) != 0)
  {
    v2 = @"regionUnavailable";
  }

  if ((a1 & 6) != 0)
  {
    v2 = @"incapable";
  }

  if ((a1 & 1) == 0)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"none";
  }
}

__CFString *HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingEligibility(void *a1)
{
  if (a1)
  {
    v2 = HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingIneligibilityReasons([a1 ineligibilityReasons]);
  }

  else
  {
    v2 = @"-1";
  }

  return v2;
}

__CFString *HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingIneligibilityReasons(uint64_t a1)
{
  if (!a1)
  {
    v4 = @"none";
    goto LABEL_15;
  }

  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (v1)
  {
    [v2 addObject:@"missingCountryCode"];
    if ((v1 & 2) == 0)
    {
LABEL_4:
      if ((v1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"missingActiveRemoteDevice"];
  if ((v1 & 4) == 0)
  {
LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"capabilityUnsupportedOnActiveRemoteDevice"];
  if ((v1 & 8) == 0)
  {
LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"countryUnsupportedOnLocalDevice"];
  if ((v1 & 0x10) == 0)
  {
LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"countryListMissingForActiveRemoteDevice"];
  if ((v1 & 0x20) == 0)
  {
LABEL_8:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    [v3 addObject:@"remotelyDisabled"];
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  [v3 addObject:@"countryUnsupportedOnActiveRemoteDevice"];
  if ((v1 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  if (v1 < 0)
  {
LABEL_10:
    [v3 addObject:@"seedExpired"];
  }

LABEL_11:
  if (![v3 count])
  {
    [v3 addObject:@"unknown"];
  }

  v4 = [v3 componentsJoinedByString:{@", "}];

LABEL_15:

  return v4;
}

id HKAnalyticsSigFigBinnedValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = [a1 integerValue];
    if (!v5 || v6 > [v5 integerValue])
    {
      v7 = log10(v6);
      v8 = __exp10((a2 - (floor(v7) + 1.0)));
      v6 = ((v8 * v6) / v8);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t HKSemanticVersionCompare(__int128 *a1, __int128 *a2)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v3 = *a2;
  v4 = *(a2 + 2);
  return HKNSOperatingSystemVersionCompare(&v5, &v3);
}

BOOL HKSemanticVersionsEqual(__int128 *a1, __int128 *a2)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v3 = *a2;
  v4 = *(a2 + 2);
  return HKNSOperatingSystemVersionCompare(&v5, &v3) == 0;
}

BOOL HKSemanticVersionIsUnknown(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  return HKNSOperatingSystemVersionIsUnknown(&v2);
}

uint64_t HKSemanticVersionByParsingString(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v6 = [MEMORY[0x1E696AE88] scannerWithString:v5];
      [v6 setCharactersToBeSkipped:0];
      v12 = 0;
      v13 = 0;
      v11 = 0;
      if ([v6 scanInteger:&v13])
      {
        if ([v6 scanString:@"." intoString:0])
        {
          if ([v6 scanInteger:&v12])
          {
            if ([v6 scanString:@"." intoString:0] && (objc_msgSend(v6, "scanInteger:", &v11) & 1) == 0)
            {
              [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"%@ is not a valid semantic version string, failed to parse patch version", v5}];
            }

            else
            {
              if ([v6 isAtEnd])
              {
                v7 = v12;
                v8 = v11;
                *a2 = v13;
                a2[1] = v7;
                a2[2] = v8;
                v9 = 1;
LABEL_19:

                goto LABEL_20;
              }

              [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"%@ is not a valid semantic version string, there are extra characters", v5}];
            }
          }

          else
          {
            [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"%@ is not a valid semantic version string, failed to parse minor version", v5}];
          }
        }

        else
        {
          [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"%@ is not a valid semantic version string, expecting a period after major version", v5}];
        }
      }

      else
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"%@ is not a valid semantic version string, failed to parse major version", v5}];
      }

      v9 = 0;
      goto LABEL_19;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"No HKSemanticVersion pointer provided, cannot return parsed version %@", v5}];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"%@ is not a valid semantic version string", v5}];
  }

  v9 = 0;
LABEL_20:

  return v9;
}

void sub_191B0BEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B0C37C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_191B0C6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke_4(uint64_t a1)
{
  NanoRegistryLibrary_4();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1_4();
  }

  getNRPairedDeviceRegistryClass_softClass_4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary_4()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_5)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke_5;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7381788;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary_5;
  if (!NanoRegistryLibraryCore_frameworkLibrary_5)
  {
    NanoRegistryLibrary_cold_1_4(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_4();
  result = dlsym(v2, "NRPairedDeviceRegistryDeviceIsSetupNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_4();
  result = dlsym(v2, "NRPairedDeviceRegistryDeviceDidUnpairNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = NanoRegistryLibrary_4();
  result = dlsym(v2, "NRPairedDeviceRegistryDeviceDidBecomeActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id HKRollingBaselineConfigurationForQuantityType(void *a1)
{
  v1 = a1;
  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 isAppleInternalInstall];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.health.shared"];
    v5 = _HKRollingBaselineConfigurationKeyForQuantityType(v1);
    v6 = [v4 dataForKey:v5];
    if (v6)
    {
      v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [v1 _rollingBaselineConfiguration];
      }

      v10 = v9;
    }

    else
    {
      v10 = [v1 _rollingBaselineConfiguration];
    }
  }

  else
  {
    v10 = [v1 _rollingBaselineConfiguration];
  }

  return v10;
}

id _HKRollingBaselineConfigurationKeyForQuantityType(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 identifier];
  v3 = [v1 stringWithFormat:@"RollingBaselineConfiguration_%@", v2];

  return v3;
}

void _HKSetRollingBaselineConfigurationForQuantityType(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:0];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.health.shared"];
    v5 = _HKRollingBaselineConfigurationKeyForQuantityType(v6);
    [v4 setObject:v3 forKey:v5];
  }
}

void sub_191B0E464(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HKFitnessMachineConnectionServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8258];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AFE28];
  [v0 setInterface:v1 forSelector:sel_remote_registerClient_ argumentIndex:0 ofReply:0];

  return v0;
}

id _HKSleepSafeAverageDurationRoundedToNearestMinute(uint64_t a1, double a2)
{
  if (a1 < 1)
  {
    v9 = 0;
  }

  else
  {
    v11 = v4;
    v6 = a2 / a1;
    v7 = fmod(v6, 60.0);
    if (v7 >= 30.0)
    {
      v8 = 60.0 - v7;
    }

    else
    {
      v8 = -v7;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:{v6 + v8, v5, v11, v2}];
  }

  return v9;
}

void sub_191B2B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B2BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getASDAppQueryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppStoreDaemonLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73819D8;
    v6 = 0;
    AppStoreDaemonLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    __getASDAppQueryClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("ASDAppQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASDAppQueryClass_block_invoke_cold_1();
  }

  getASDAppQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppStoreDaemonLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppStoreDaemonLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *HKStringFromUserDomainConceptPropertyType(uint64_t a1)
{
  if (a1 > 159999)
  {
    switch(a1)
    {
      case 160000:
        v2 = @"User Specified Name";

        break;
      case 160001:
        v2 = @"User Specified Notes";

        break;
      case 160002:
        v2 = @"Free Text Brand Name";

        break;
      case 160003:
        v2 = @"Free Text Generic Name";

        break;
      case 160004:
        v2 = @"Free Text Manufactured Dose Form";

        break;
      case 160005:
        v2 = @"Free Text Medication Route";

        break;
      case 160006:
        v2 = @"[DEPRECATED] Free Text Medication Ingredient";

        break;
      case 160007:
        v2 = @"Ontology Brand Name";

        break;
      case 160008:
        v2 = @"User Specified Medication Visualization";

        break;
      case 160009:
        v2 = @"Ontology Generic Name";

        break;
      case 160010:
        v2 = @"Ontology Manufactured Dose Form";

        break;
      case 160011:
        v2 = @"Ontology Route";

        break;
      case 160012:
        v2 = @"Ontology Localized Preferred Name";

        break;
      case 160013:
        v2 = @"Unlocalized Quantified Strength";

        break;
      case 160014:
        v2 = @"Free Text Medication Form Code";

        break;
      case 160015:
        v2 = @"Free Text Quantified Strength";

        break;
      case 160016:
        v2 = @"Ontology Basic Dose Form";

        break;
      case 160017:
        v2 = @"Ontology Singular Unit";

        break;
      case 160018:
        v2 = @"Ontology Plural Unit";

        break;
      case 160019:
        v2 = @"Localized Ontology Education Content";

        break;
      case 160020:
        v2 = @"Free Text Medication Name";

        break;
      case 160021:
        v2 = @"Free Text Medication Named Strength Quantity";

        break;
      case 160022:
        v2 = @"Localized Ontology Component Name";

        break;
      default:
        if (a1 == 180000)
        {
          v2 = @"Localized Pregnancy Trimester / Lactation Ratings";
        }

        else
        {
          if (a1 != 184000)
          {
            goto LABEL_133;
          }

          v2 = @"Ontology provided RxNorm Code";
        }

        break;
    }

    return v2;
  }

  if (a1 <= 150002)
  {
    if (a1 > 149999)
    {
      if (a1 == 150000)
      {
        v2 = @"[DEPRECATED] Preferred Name";
      }

      else if (a1 == 150001)
      {
        v2 = @"[DEPRECATED] Preferred Name en_US";
      }

      else
      {
        v2 = @"[DEPRECATED] Preferred Name en_GB";
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        v2 = @"Prune Date";
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_133;
        }

        v2 = @"Is Hidden From Enumeration";
      }
    }

    else
    {
      v2 = @"None";
    }
  }

  else if (a1 <= 150005)
  {
    if (a1 == 150003)
    {
      v2 = @"[DEPRECATED] Preferred Name en_CA";
    }

    else if (a1 == 150004)
    {
      v2 = @"Charts Blood Pressure";
    }

    else
    {
      v2 = @"Hides Out of Range Filter";
    }
  }

  else
  {
    if (a1 <= 150007)
    {
      if (a1 == 150006)
      {
        v2 = @"[DEPRECATED] Education Title";
      }

      else
      {
        v2 = @"[DEPRECATED] Education Description";
      }

      return v2;
    }

    if (a1 != 150008)
    {
      if (a1 == 150009)
      {
        v2 = @"Low Utility";

        return v2;
      }

LABEL_133:
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];

      return v2;
    }

    v2 = @"[DEPRECATED] Education Abstract";
  }

  return v2;
}

int64_t MaximumVersionForListOfProperties(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    v5 = 0xFFFFFFFF80000000;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) version];
        if (v5 <= v7)
        {
          v5 = v7;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0xFFFFFFFF80000000;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

double MaximumTimestampForListOfProperties(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    v5 = -1.79769313e308;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v10 + 1) + 8 * i) timestamp];
        if (v5 < v7)
        {
          v5 = v7;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = -1.79769313e308;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

__CFString *HKStringFromUserDomainConceptPropertyMergeOptions(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Ignore Timestamps"];
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"(%@)", v5];
  }

  else
  {
    v6 = &stru_1F05FF230;
  }

  return v6;
}

__CFString *_HKStringForFitnessMachineType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7381A38[a1];
  }
}

void sub_191B30E3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_191B31F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B32378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191B32694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191B329B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191B32C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191B32F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191B33374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191B33654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191B33934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191B33C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_191B33E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B33F5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_191B3442C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_191B3BCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B3CF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_23(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void HKSynchronizeNanoPreferencesUserDefaults(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69B3590];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [v6 synchronizeUserDefaultsDomain:v5 keys:v4];
}

id HKObjectForNanoPreferencesUserDefaultsKey(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69B3588];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithDomain:v5];

  v7 = [v6 synchronize];
  v8 = [v6 objectForKey:v4];

  return v8;
}

uint64_t HKBoolValueForNanoPreferencesUserDefaultsKey(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69B3588];
  v6 = a2;
  v7 = a1;
  v8 = [[v5 alloc] initWithDomain:v7];

  v9 = [v8 synchronize];
  v10 = [v8 BOOLForKey:v6 keyExistsAndHasValidFormat:a3];

  return v10;
}

void sub_191B42464(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&unitForStringCacheLock);
  objc_exception_rethrow();
}

void sub_191B42CC0(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x191B42CACLL);
  }

  objc_end_catch();
  JUMPOUT(0x191B42CA8);
}

void sub_191B435CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B43D9C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&_uniquedRootUnitFromDefinition__lock);
  objc_exception_rethrow();
}

void sub_191B43EFC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&_uniquedUnitWithPrefix_conversionConstant_rootUnit__lock);
  objc_exception_rethrow();
}

id HKComparisonFilterRelationalOperatorTypes()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F0684A28, &unk_1F0684A40, &unk_1F0684A58, &unk_1F0684A70, &unk_1F0684A88, &unk_1F0684AA0, 0}];

  return v0;
}

uint64_t HKIsValueOrContainerValidForOperatorType(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a1 == 10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Expected value of class NSArray or NSSet, received %@", objc_opt_class(), v10}];
LABEL_8:
        v8 = 0;
        goto LABEL_9;
      }
    }
  }

  else if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Expected value of type %@, received %@", a3, objc_opt_class()}];
    goto LABEL_8;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

id HKComparisonFilterClasses()
{
  if (HKComparisonFilterClasses_onceToken != -1)
  {
    HKComparisonFilterClasses_cold_1();
  }

  v1 = HKComparisonFilterClasses_filterClasses;

  return v1;
}

void __HKComparisonFilterClasses_block_invoke()
{
  v3[23] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v3[14] = objc_opt_class();
  v3[15] = objc_opt_class();
  v3[16] = objc_opt_class();
  v3[17] = objc_opt_class();
  v3[18] = objc_opt_class();
  v3[19] = objc_opt_class();
  v3[20] = objc_opt_class();
  v3[21] = objc_opt_class();
  v3[22] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:23];
  v1 = HKComparisonFilterClasses_filterClasses;
  HKComparisonFilterClasses_filterClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void sub_191B473EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  _Block_object_dispose((v28 - 128), 8);
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass_5;
  v7 = getNRPairedDeviceRegistryClass_softClass_5;
  if (!getNRPairedDeviceRegistryClass_softClass_5)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke_5;
    v3[3] = &unk_1E7378388;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke_5(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_191B475D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B4880C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191B48CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191B48FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t getNRRawVersionFromString(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getNRRawVersionFromStringSymbolLoc_ptr_1;
  v9 = getNRRawVersionFromStringSymbolLoc_ptr_1;
  if (!getNRRawVersionFromStringSymbolLoc_ptr_1)
  {
    v3 = NanoRegistryLibrary_5();
    v7[3] = dlsym(v3, "NRRawVersionFromString");
    getNRRawVersionFromStringSymbolLoc_ptr_1 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    getNRRawVersionFromString_cold_1();
  }

  v4 = v2(v1);

  return v4;
}

void sub_191B49600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B49FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191B4ACB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRDevicePropertyName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getNRDevicePropertyNameSymbolLoc_ptr;
  v7 = getNRDevicePropertyNameSymbolLoc_ptr;
  if (!getNRDevicePropertyNameSymbolLoc_ptr)
  {
    v1 = NanoRegistryLibrary_5();
    v5[3] = dlsym(v1, "NRDevicePropertyName");
    getNRDevicePropertyNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getNRDevicePropertyName_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_191B4ADC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRDevicePropertyIsAltAccount()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  v7 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  if (!getNRDevicePropertyIsAltAccountSymbolLoc_ptr)
  {
    v1 = NanoRegistryLibrary_5();
    v5[3] = dlsym(v1, "NRDevicePropertyIsAltAccount");
    getNRDevicePropertyIsAltAccountSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getNRDevicePropertyIsAltAccount_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_191B4AEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRDevicePropertySystemVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getNRDevicePropertySystemVersionSymbolLoc_ptr_1;
  v7 = getNRDevicePropertySystemVersionSymbolLoc_ptr_1;
  if (!getNRDevicePropertySystemVersionSymbolLoc_ptr_1)
  {
    v1 = NanoRegistryLibrary_5();
    v5[3] = dlsym(v1, "NRDevicePropertySystemVersion");
    getNRDevicePropertySystemVersionSymbolLoc_ptr_1 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getNRDevicePropertySystemVersion_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_191B4CE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getNRVersionIsGreaterThanOrEqual(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr;
  v8 = getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr;
  if (!getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr)
  {
    v3 = NanoRegistryLibrary_5();
    v6[3] = dlsym(v3, "NRVersionIsGreaterThanOrEqual");
    getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    getNRVersionIsGreaterThanOrEqual_cold_1();
  }

  return v2(a1, 786689);
}

void sub_191B4CF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B4DD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRPairedDeviceRegistryDeviceIsSetupNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary_5()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_6)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke_6;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7382E90;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_6 = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary_6;
  if (!NanoRegistryLibraryCore_frameworkLibrary_6)
  {
    NanoRegistryLibrary_cold_1_5(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_6 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getNRPairedDeviceRegistryClass_block_invoke_5(uint64_t a1)
{
  NanoRegistryLibrary_5();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1_5();
  }

  getNRPairedDeviceRegistryClass_softClass_5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRPairedDeviceRegistryDeviceDidUnpairNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRPairedDeviceRegistryDeviceDidBecomeActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRRawVersionFromStringSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRRawVersionFromString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRRawVersionFromStringSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRDevicePropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyIsAltAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyCurrentUserLocaleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRDevicePropertyCurrentUserLocale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySystemVersionSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRDevicePropertySystemVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemVersionSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary_5();
  result = dlsym(v2, "NRVersionIsGreaterThanOrEqual");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getASDSystemAppMetadataClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDSystemAppMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASDSystemAppMetadataClass_block_invoke_cold_1();
  }

  getASDSystemAppMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AppStoreDaemonLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppStoreDaemonLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppStoreDaemonLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7382EA8;
    v3 = 0;
    AppStoreDaemonLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!AppStoreDaemonLibraryCore_frameworkLibrary_0)
  {
    AppStoreDaemonLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __AppStoreDaemonLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppStoreDaemonLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getASDInstallAppsClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDInstallApps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASDInstallAppsClass_block_invoke_cold_1();
  }

  getASDInstallAppsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_4_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _HKFormattedMedicalIDNameForContact(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695CD80] stringFromContact:v1 style:0];
  [v1 linkedContacts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isPreferredForName])
        {
          v9 = [MEMORY[0x1E695CD80] stringFromContact:v8 style:0];

          v2 = v9;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

void _HKMedicalIDPhoneNumberForContact(void *a1, void *a2, void *a3)
{
  v16 = a1;
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 value];
    v8 = [v7 formattedStringValue];
    v9 = [v5 label];
    v10 = [v5 identifier];
  }

  else
  {
    v7 = [v16 linkedContacts];
    v11 = [v16 phoneNumbers];
    if ([v7 count])
    {
      v12 = [MEMORY[0x1E695CD58] unifyContacts:v7];
      v13 = [v12 phoneNumbers];

      v11 = v13;
    }

    v14 = [v11 firstObject];
    v15 = [v14 value];
    v8 = [v15 formattedStringValue];
    v9 = [v14 label];
    v10 = [v14 identifier];
  }

  v6[2](v6, v8, v9, v10);
}

id _HKMedicalIDSimNumberForContact(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E69650A0]);
  v3 = [v2 initWithQueue:MEMORY[0x1E69E96A0]];
  v43 = 0;
  v4 = [v3 getSubscriptionInfoWithError:&v43];
  v5 = v43;
  if (!v5)
  {
    v9 = [v4 subscriptionsInUse];
    v10 = [v9 firstObject];

    if (v10)
    {
      if (![v10 isSimDataOnly])
      {
        v13 = [v1 linkedContacts];
        v14 = [v1 phoneNumbers];
        if ([v13 count])
        {
          v15 = [MEMORY[0x1E695CD58] unifyContacts:v13];
          v16 = [v15 phoneNumbers];

          v14 = v16;
        }

        v41 = 0;
        v17 = [v3 getPhoneNumber:v10 error:&v41];
        v6 = v41;
        if (v6)
        {
          _HKInitializeLogging();
          v18 = HKLogMedicalID;
          if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
          {
            _HKMedicalIDSimNumberForContact_cold_2(v6, v18);
          }

          v8 = 0;
        }

        else
        {
          v35 = v13;
          v36 = v10;
          v19 = MEMORY[0x1E695CF50];
          v33 = v17;
          [v17 displayPhoneNumber];
          v21 = v20 = v14;
          v22 = [v19 phoneNumberWithStringValue:v21];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v34 = v20;
          v23 = v20;
          v24 = [v23 countByEnumeratingWithState:&v37 objects:v44 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v38;
LABEL_20:
            v27 = 0;
            while (1)
            {
              if (*v38 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [*(*(&v37 + 1) + 8 * v27) value];
              if ([v28 isLikePhoneNumber:v22])
              {
                break;
              }

              if (v25 == ++v27)
              {
                v25 = [v23 countByEnumeratingWithState:&v37 objects:v44 count:16];
                if (v25)
                {
                  goto LABEL_20;
                }

                goto LABEL_26;
              }
            }

            v29 = [v28 formattedStringValue];

            v13 = v35;
            v10 = v36;
            if (v29)
            {
              goto LABEL_31;
            }
          }

          else
          {
LABEL_26:

            v13 = v35;
            v10 = v36;
          }

          _HKInitializeLogging();
          v30 = HKLogMedicalID;
          if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19197B000, v30, OS_LOG_TYPE_DEFAULT, "The sim number did not match any phone number in ME contact.", buf, 2u);
          }

          v29 = 0;
LABEL_31:
          v8 = v29;

          v17 = v33;
          v14 = v34;
        }

        goto LABEL_33;
      }

      _HKInitializeLogging();
      v11 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "CTXPCServiceSubscriptionContext is a data only sim.", buf, 2u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        _HKMedicalIDSimNumberForContact_cold_3(v12);
      }
    }

    v6 = 0;
    v8 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v6 = v5;
  _HKInitializeLogging();
  v7 = HKLogMedicalID;
  if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
  {
    [(HKCoreTelephonyClient *)v6 isEmergencyServicePhoneNumber:v7];
  }

  v8 = 0;
LABEL_34:

  v31 = *MEMORY[0x1E69E9840];

  return v8;
}

__CFString *HKStringFromProfileType(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = @"Primary";
    }

    else
    {
      if (a1 != 2)
      {
LABEL_22:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];

        return v2;
      }

      v2 = @"Summary Sharing";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = @"Tinker";

        break;
      case 4:
        v2 = @"Deviceless";

        break;
      case 100:
        v2 = @"Testing";

        return v2;
      default:
        goto LABEL_22;
    }
  }

  return v2;
}

__CFString *HKBloodPressureClassificationGuidelinesIdentifierForGuidelines(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E73830E8[a1];
  }
}

id HKBloodPressureClassificationCategoryForGuidelines(uint64_t a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 2:
      v7[0] = @"FIGO.Normal";
      v7[1] = @"FIGO.MildlyElevated";
      v7[2] = @"FIGO.SeverelyElevated";
      v1 = MEMORY[0x1E695DEC8];
      v2 = v7;
      v3 = 3;
      goto LABEL_7;
    case 1:
      v8[0] = @"ESC.NonElevated";
      v8[1] = @"ESC.Elevated";
      v8[2] = @"ESC.Hypertension";
      v8[3] = @"ESC.HypertensiveEmergency";
      v1 = MEMORY[0x1E695DEC8];
      v2 = v8;
      v3 = 4;
      goto LABEL_7;
    case 0:
      v9[0] = @"AHA.Normal";
      v9[1] = @"AHA.Elevated";
      v9[2] = @"AHA.HypertensionStage1";
      v9[3] = @"AHA.HypertensionStage2";
      v9[4] = @"AHA.HypertensiveCrisis";
      v1 = MEMORY[0x1E695DEC8];
      v2 = v9;
      v3 = 5;
LABEL_7:
      v4 = [v1 arrayWithObjects:v2 count:v3];
      goto LABEL_9;
  }

  v4 = 0;
LABEL_9:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t HKHealthWrapCodablePayloadHeaderReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          a1[72] |= 1u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v34[0] & 0x7F) << v24;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v26;
          }

LABEL_60:
          v31 = 8;
          goto LABEL_65;
        }

        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (v13 == 7)
      {
        v14 = PBReaderReadData();
        v15 = 24;
        goto LABEL_54;
      }

      if (v13 != 8)
      {
        goto LABEL_55;
      }

      v23 = objc_alloc_init(HKHealthWrapCodableKeyValue);
      [a1 addKeyValuePairs:v23];
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !HKHealthWrapCodableKeyValueReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_66:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 64;
        goto LABEL_54;
      }

      if (v13 == 4)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        a1[72] |= 2u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34[0] & 0x7F) << v16;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_64;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_64:
        v31 = 16;
LABEL_65:
        *&a1[v31] = v22;
        goto LABEL_66;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_54;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 56;
LABEL_54:
        v30 = *&a1[v15];
        *&a1[v15] = v14;

        goto LABEL_66;
      }
    }

LABEL_55:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_66;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKLogDefaultCategory()
{
  if (HKLogDefaultCategory_onceToken != -1)
  {
    HKLogDefaultCategory_cold_1();
  }

  return HKLogDefaultCategory_category;
}

os_log_t __HKLogDefaultCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "default");
  HKLogDefaultCategory_category = result;
  return result;
}

uint64_t HKLogActivityCategory()
{
  if (HKLogActivityCategory_onceToken != -1)
  {
    HKLogActivityCategory_cold_1();
  }

  return HKLogActivityCategory_category;
}

os_log_t __HKLogActivityCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "activity");
  HKLogActivityCategory_category = result;
  return result;
}

uint64_t HKLogActivityCacheCategory()
{
  if (HKLogActivityCacheCategory_onceToken != -1)
  {
    HKLogActivityCacheCategory_cold_1();
  }

  return HKLogActivityCacheCategory_category;
}

os_log_t __HKLogActivityCacheCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "activitycache");
  HKLogActivityCacheCategory_category = result;
  return result;
}

uint64_t HKLogAnalytics()
{
  if (HKLogAnalytics_onceToken != -1)
  {
    HKLogAnalytics_cold_1();
  }

  return HKLogAnalytics_category;
}

os_log_t __HKLogAnalytics_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "analytics");
  HKLogAnalytics_category = result;
  return result;
}

uint64_t HKLogAssertions()
{
  if (HKLogAssertions_onceToken != -1)
  {
    HKLogAssertions_cold_1();
  }

  return HKLogAssertions_category;
}

os_log_t __HKLogAssertions_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "assertions");
  HKLogAssertions_category = result;
  return result;
}

uint64_t HKLogAttachmentCategory()
{
  if (HKLogAttachmentCategory_onceToken != -1)
  {
    HKLogAttachmentCategory_cold_1();
  }

  return HKLogAttachmentCategory_category;
}

os_log_t __HKLogAttachmentCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "attachment");
  HKLogAttachmentCategory_category = result;
  return result;
}

uint64_t HKLogAuthorization()
{
  if (HKLogAuthorization_onceToken != -1)
  {
    HKLogAuthorization_cold_1();
  }

  return HKLogAuthorization_category;
}

os_log_t __HKLogAuthorization_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "auth");
  HKLogAuthorization_category = result;
  return result;
}

uint64_t HKLogBackgroundUpdatesCategory()
{
  if (HKLogBackgroundUpdatesCategory_onceToken != -1)
  {
    HKLogBackgroundUpdatesCategory_cold_1();
  }

  return HKLogBackgroundUpdatesCategory_category;
}

os_log_t __HKLogBackgroundUpdatesCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "background");
  HKLogBackgroundUpdatesCategory_category = result;
  return result;
}

uint64_t HKLogBloodPressureJournal()
{
  if (HKLogBloodPressureJournal_onceToken != -1)
  {
    HKLogBloodPressureJournal_cold_1();
  }

  return HKLogBloodPressureJournal_category;
}

os_log_t __HKLogBloodPressureJournal_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "HKLogBloodPressureJournal");
  HKLogBloodPressureJournal_category = result;
  return result;
}

uint64_t HKLogCoachingCategory()
{
  if (HKLogCoachingCategory_onceToken != -1)
  {
    HKLogCoachingCategory_cold_1();
  }

  return HKLogCoachingCategory_category;
}

os_log_t __HKLogCoachingCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "coaching");
  HKLogCoachingCategory_category = result;
  return result;
}

uint64_t HKLogConceptIndex()
{
  if (HKLogConceptIndex_onceToken != -1)
  {
    HKLogConceptIndex_cold_1();
  }

  return HKLogConceptIndex_category;
}

os_log_t __HKLogConceptIndex_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "concept_index");
  HKLogConceptIndex_category = result;
  return result;
}

uint64_t HKLogCondenser()
{
  if (HKLogCondenser_onceToken != -1)
  {
    HKLogCondenser_cold_1();
  }

  return HKLogCondenser_category;
}

os_log_t __HKLogCondenser_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "condenser");
  HKLogCondenser_category = result;
  return result;
}

uint64_t HKLogDaemonInitialization()
{
  if (HKLogDaemonInitialization_onceToken != -1)
  {
    HKLogDaemonInitialization_cold_1();
  }

  return HKLogDaemonInitialization_category;
}

os_log_t __HKLogDaemonInitialization_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "daemon_initialization");
  HKLogDaemonInitialization_category = result;
  return result;
}

uint64_t HKLogDatabaseCategory()
{
  if (HKLogDatabaseCategory_onceToken != -1)
  {
    HKLogDatabaseCategory_cold_1();
  }

  return HKLogDatabaseCategory_category;
}

os_log_t __HKLogDatabaseCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "database");
  HKLogDatabaseCategory_category = result;
  return result;
}

uint64_t HKLogDatabaseSQLCategory()
{
  if (HKLogDatabaseSQLCategory_onceToken != -1)
  {
    HKLogDatabaseSQLCategory_cold_1();
  }

  return HKLogDatabaseSQLCategory_category;
}

os_log_t __HKLogDatabaseSQLCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "database_sql");
  HKLogDatabaseSQLCategory_category = result;
  return result;
}

uint64_t HKLogDataCollectionCategory()
{
  if (HKLogDataCollectionCategory_onceToken != -1)
  {
    HKLogDataCollectionCategory_cold_1();
  }

  return HKLogDataCollectionCategory_category;
}

os_log_t __HKLogDataCollectionCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "data_collection");
  HKLogDataCollectionCategory_category = result;
  return result;
}

uint64_t HKLogDeepBreathingCategory()
{
  if (HKLogDeepBreathingCategory_onceToken != -1)
  {
    HKLogDeepBreathingCategory_cold_1();
  }

  return HKLogDeepBreathingCategory_category;
}

os_log_t __HKLogDeepBreathingCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "deep_breathing");
  HKLogDeepBreathingCategory_category = result;
  return result;
}

uint64_t HKLogDemoDataCategory()
{
  if (HKLogDemoDataCategory_onceToken != -1)
  {
    HKLogDemoDataCategory_cold_1();
  }

  return HKLogDemoDataCategory_category;
}

os_log_t __HKLogDemoDataCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "demodata");
  HKLogDemoDataCategory_category = result;
  return result;
}

uint64_t HKLogGuestMode()
{
  if (HKLogGuestMode_onceToken != -1)
  {
    HKLogGuestMode_cold_1();
  }

  return HKLogGuestMode_category;
}

os_log_t __HKLogGuestMode_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "guest_mode");
  HKLogGuestMode_category = result;
  return result;
}

uint64_t HKLogGymKit()
{
  if (HKLogGymKit_onceToken != -1)
  {
    HKLogGymKit_cold_1();
  }

  return HKLogGymKit_category;
}

os_log_t __HKLogGymKit_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "gymkit");
  HKLogGymKit_category = result;
  return result;
}

uint64_t HKLogHealthOntology()
{
  if (HKLogHealthOntology_onceToken != -1)
  {
    HKLogHealthOntology_cold_1();
  }

  return HKLogHealthOntology_category;
}

os_log_t __HKLogHealthOntology_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "ontology");
  HKLogHealthOntology_category = result;
  return result;
}

uint64_t HKLogHealthRecordsCategory()
{
  if (HKLogHealthRecordsCategory_onceToken != -1)
  {
    HKLogHealthRecordsCategory_cold_1();
  }

  return HKLogHealthRecordsCategory_category;
}

os_log_t __HKLogHealthRecordsCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "health_records");
  HKLogHealthRecordsCategory_category = result;
  return result;
}

uint64_t HKLogHearingCategory()
{
  if (HKLogHearingCategory_onceToken != -1)
  {
    HKLogHearingCategory_cold_1();
  }

  return HKLogHearingCategory_category;
}

os_log_t __HKLogHearingCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "hearing");
  HKLogHearingCategory_category = result;
  return result;
}

uint64_t HKLogHeartRateCategory()
{
  if (HKLogHeartRateCategory_onceToken != -1)
  {
    HKLogHeartRateCategory_cold_1();
  }

  return HKLogHeartRateCategory_category;
}

os_log_t __HKLogHeartRateCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "heart_rate");
  HKLogHeartRateCategory_category = result;
  return result;
}

uint64_t HKLogHeartRhythmCategory()
{
  if (HKLogHeartRhythmCategory_onceToken != -1)
  {
    HKLogHeartRhythmCategory_cold_1();
  }

  return HKLogHeartRhythmCategory_category;
}

os_log_t __HKLogHeartRhythmCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "cinnamon");
  HKLogHeartRhythmCategory_category = result;
  return result;
}

uint64_t HKLogHLEHeartRate()
{
  if (HKLogHLEHeartRate_onceToken != -1)
  {
    HKLogHLEHeartRate_cold_1();
  }

  return HKLogHLEHeartRate_category;
}

os_log_t __HKLogHLEHeartRate_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "hle_heartrate");
  HKLogHLEHeartRate_category = result;
  return result;
}

uint64_t HKLogInfrastructure()
{
  if (HKLogInfrastructure_onceToken != -1)
  {
    HKLogInfrastructure_cold_1();
  }

  return HKLogInfrastructure_category;
}

os_log_t __HKLogInfrastructure_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "infrastructure");
  HKLogInfrastructure_category = result;
  return result;
}

uint64_t HKLogMedicalIDCategory()
{
  if (HKLogMedicalIDCategory_onceToken != -1)
  {
    HKLogMedicalIDCategory_cold_1();
  }

  return HKLogMedicalIDCategory_category;
}

os_log_t __HKLogMedicalIDCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "medical_id");
  HKLogMedicalIDCategory_category = result;
  return result;
}

uint64_t HKLogMedication()
{
  if (HKLogMedication_onceToken != -1)
  {
    HKLogMedication_cold_1();
  }

  return HKLogMedication_category;
}

os_log_t __HKLogMedication_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "medications");
  HKLogMedication_category = result;
  return result;
}

uint64_t HKLogMenstrualCyclesCategory()
{
  if (HKLogMenstrualCyclesCategory_onceToken != -1)
  {
    HKLogMenstrualCyclesCategory_cold_1();
  }

  return HKLogMenstrualCyclesCategory_category;
}

os_log_t __HKLogMenstrualCyclesCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "menstrual_cycles");
  HKLogMenstrualCyclesCategory_category = result;
  return result;
}

uint64_t HKLogMentalHealthCategory()
{
  if (HKLogMentalHealthCategory_onceToken != -1)
  {
    HKLogMentalHealthCategory_cold_1();
  }

  return HKLogMentalHealthCategory_category;
}

os_log_t __HKLogMentalHealthCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "mental_health");
  HKLogMentalHealthCategory_category = result;
  return result;
}

uint64_t HKLogMobileAssetCategory()
{
  if (HKLogMobileAssetCategory_onceToken != -1)
  {
    HKLogMobileAssetCategory_cold_1();
  }

  return HKLogMobileAssetCategory_category;
}

os_log_t __HKLogMobileAssetCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "mobile_asset");
  HKLogMobileAssetCategory_category = result;
  return result;
}

uint64_t HKLogMobilityCategory()
{
  if (HKLogMobilityCategory_onceToken != -1)
  {
    HKLogMobilityCategory_cold_1();
  }

  return HKLogMobilityCategory_category;
}

os_log_t __HKLogMobilityCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "mobility");
  HKLogMobilityCategory_category = result;
  return result;
}

uint64_t HKLogNotificationsCategory()
{
  if (HKLogNotificationsCategory_onceToken != -1)
  {
    HKLogNotificationsCategory_cold_1();
  }

  return HKLogNotificationsCategory_category;
}

os_log_t __HKLogNotificationsCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "notifications");
  HKLogNotificationsCategory_category = result;
  return result;
}

uint64_t HKLogPerfCriticalCategory()
{
  if (HKLogPerfCriticalCategory_onceToken != -1)
  {
    HKLogPerfCriticalCategory_cold_1();
  }

  return HKLogPerfCriticalCategory_category;
}

os_log_t __HKLogPerfCriticalCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "perf_critical");
  HKLogPerfCriticalCategory_category = result;
  return result;
}

uint64_t HKLogProcessState()
{
  if (HKLogProcessState_onceToken != -1)
  {
    HKLogProcessState_cold_1();
  }

  return HKLogProcessState_category;
}

os_log_t __HKLogProcessState_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "process_state");
  HKLogProcessState_category = result;
  return result;
}

uint64_t HKLogQueryCategory()
{
  if (HKLogQueryCategory_onceToken != -1)
  {
    HKLogQueryCategory_cold_1();
  }

  return HKLogQueryCategory_category;
}

os_log_t __HKLogQueryCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "query");
  HKLogQueryCategory_category = result;
  return result;
}

uint64_t HKLogRespiratoryCategory()
{
  if (HKLogRespiratoryCategory_onceToken != -1)
  {
    HKLogRespiratoryCategory_cold_1();
  }

  return HKLogRespiratoryCategory_category;
}

os_log_t __HKLogRespiratoryCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "respiratory");
  HKLogRespiratoryCategory_category = result;
  return result;
}

uint64_t HKLogServicesCategory()
{
  if (HKLogServicesCategory_onceToken != -1)
  {
    HKLogServicesCategory_cold_1();
  }

  return HKLogServicesCategory_category;
}

os_log_t __HKLogServicesCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "services");
  HKLogServicesCategory_category = result;
  return result;
}

uint64_t HKLogSharing()
{
  if (HKLogSharing_onceToken != -1)
  {
    HKLogSharing_cold_1();
  }

  return HKLogSharing_category;
}

os_log_t __HKLogSharing_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "sharing");
  HKLogSharing_category = result;
  return result;
}

uint64_t HKLogSleepCategory()
{
  if (HKLogSleepCategory_onceToken != -1)
  {
    HKLogSleepCategory_cold_1();
  }

  return HKLogSleepCategory_category;
}

os_log_t __HKLogSleepCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "sleep");
  HKLogSleepCategory_category = result;
  return result;
}

uint64_t HKLogSummarySharing()
{
  if (HKLogSummarySharing_onceToken != -1)
  {
    HKLogSummarySharing_cold_1();
  }

  return HKLogSummarySharing_category;
}

os_log_t __HKLogSummarySharing_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "summary_sharing");
  HKLogSummarySharing_category = result;
  return result;
}

uint64_t HKLogSyncCategory()
{
  if (HKLogSyncCategory_onceToken != -1)
  {
    HKLogSyncCategory_cold_1();
  }

  return HKLogSyncCategory_category;
}

os_log_t __HKLogSyncCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "sync");
  HKLogSyncCategory_category = result;
  return result;
}

uint64_t HKLogTesting()
{
  if (HKLogTesting_onceToken != -1)
  {
    HKLogTesting_cold_1();
  }

  return HKLogTesting_category;
}

os_log_t __HKLogTesting_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "testing");
  HKLogTesting_category = result;
  return result;
}

uint64_t HKLogWellnessDashboard()
{
  if (HKLogWellnessDashboard_onceToken != -1)
  {
    HKLogWellnessDashboard_cold_1();
  }

  return HKLogWellnessDashboard_category;
}

os_log_t __HKLogWellnessDashboard_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "wellness_dashboard");
  HKLogWellnessDashboard_category = result;
  return result;
}

uint64_t HKLogWorkoutsCategory()
{
  if (HKLogWorkoutsCategory_onceToken != -1)
  {
    HKLogWorkoutsCategory_cold_1();
  }

  return HKLogWorkoutsCategory_category;
}

os_log_t __HKLogWorkoutsCategory_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "workouts");
  HKLogWorkoutsCategory_category = result;
  return result;
}

uint64_t _HKLogPersistedSignposts()
{
  if (_HKLogPersistedSignposts_onceToken != -1)
  {
    _HKLogPersistedSignposts_cold_1();
  }

  return _HKLogPersistedSignposts_category;
}

os_signpost_id_t _HKLogSignpostIDGenerate(os_log_t log)
{
  if (_HKInitializeLogging_onceToken != -1)
  {
    _HKInitializeLogging_cold_1();
  }

  return os_signpost_id_generate(log);
}

void sub_191B59C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_191B5A404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B5CB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B5CEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t HKHeartbeatSeriesAppendDatum(uint64_t a1, char a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = a1;
  if (a2)
  {
    LOBYTE(v6) = 1;
  }

  result = [a3 appendBytes:&v5 length:16];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HKHeartbeatSeriesDatumAtIndex(void *a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  [a1 getBytes:v4 range:{16 * a2, 16}];
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_191B60D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HKCodableCondensedWorkoutReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v55) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 80) |= 4u;
          v55 = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v48 = v55;
          v49 = 24;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_72;
          }

          *(a1 + 80) |= 0x40u;
          v55 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v48 = v55;
          v49 = 56;
        }

        goto LABEL_97;
      }

      if (v13 == 1)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 80) |= 0x20u;
        while (1)
        {
          LOBYTE(v55) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v55 & 0x7F) << v27;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v29;
        }

LABEL_81:
        v46 = 48;
LABEL_86:
        *(a1 + v46) = v26;
        goto LABEL_98;
      }

      if (v13 != 2)
      {
        goto LABEL_72;
      }

      v16 = PBReaderReadData();
      v17 = *(a1 + 72);
      *(a1 + 72) = v16;

LABEL_98:
      v54 = [a2 position];
      if (v54 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        *(a1 + 80) |= 0x10u;
        v55 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v48 = v55;
        v49 = 40;
        goto LABEL_97;
      }

      if (v13 != 6)
      {
LABEL_72:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_98;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(a1 + 80) |= 0x80u;
      while (1)
      {
        LOBYTE(v55) = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v55 & 0x7F) << v20;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v26 = 0;
      }

      else
      {
        v26 = v22;
      }

LABEL_77:
      v46 = 64;
    }

    else
    {
      if (v13 == 7)
      {
        *(a1 + 80) |= 8u;
        v55 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v48 = v55;
        v49 = 32;
LABEL_97:
        *(a1 + v49) = v48;
        goto LABEL_98;
      }

      if (v13 != 8)
      {
        if (v13 != 9)
        {
          goto LABEL_72;
        }

        *(a1 + 80) |= 1u;
        v55 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v48 = v55;
        v49 = 8;
        goto LABEL_97;
      }

      v39 = 0;
      v40 = 0;
      v41 = 0;
      *(a1 + 80) |= 2u;
      while (1)
      {
        LOBYTE(v55) = 0;
        v42 = [a2 position] + 1;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
        {
          v44 = [a2 data];
          [v44 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v41 |= (v55 & 0x7F) << v39;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v39 += 7;
        v11 = v40++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_85;
        }
      }

      if ([a2 hasError])
      {
        v26 = 0;
      }

      else
      {
        v26 = v41;
      }

LABEL_85:
      v46 = 16;
    }

    goto LABEL_86;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKHealthWrapCodableKeyValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HKHealthWrapCodableValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HKHealthWrapCodableValueReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_191B69A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_27(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

__CFString *NSStringFromHKNotificationInstructionAction(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"unknown:%@", v3];
  }

  else
  {
    v1 = off_1E7383B78[a1 - 1];
  }

  return v1;
}

void sub_191B6B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__48(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id hk_HKUnitForMapping(uint64_t a1)
{
  v1 = 0;
  switch(a1)
  {
    case 2:
      v2 = @"m/s^2";
      goto LABEL_121;
    case 5:
      v4 = +[HKUnit degreeAngleUnit];
      goto LABEL_122;
    case 7:
      v4 = +[HKUnit radianAngleUnit];
      goto LABEL_122;
    case 12:
      v2 = @"cm^2";
      goto LABEL_121;
    case 13:
      v2 = @"ft^2";
      goto LABEL_121;
    case 14:
      v2 = @"in^2";
      goto LABEL_121;
    case 15:
      v2 = @"km^2";
      goto LABEL_121;
    case 16:
      v2 = @"Mm^2";
      goto LABEL_121;
    case 17:
      v2 = @"m^2";
      goto LABEL_121;
    case 18:
      v12 = [HKUnit meterUnitWithMetricPrefix:3];
      v1 = [v12 unitRaisedToPower:2];
      goto LABEL_84;
    case 19:
      v2 = @"mi^2";
      goto LABEL_121;
    case 20:
      v2 = @"mm^2";
      goto LABEL_121;
    case 21:
      v2 = @"nm^2";
      goto LABEL_121;
    case 22:
      v2 = @"yd^2";
      goto LABEL_121;
    case 23:
      v12 = +[HKUnit gramUnit];
      v13 = +[HKUnit literUnit];
      goto LABEL_83;
    case 24:
      v12 = [HKUnit gramUnitWithMetricPrefix:4];
      v13 = [HKUnit literUnitWithMetricPrefix:6];
LABEL_83:
      v14 = v13;
      v1 = [v12 unitDividedByUnit:v13];

LABEL_84:
      break;
    case 25:
      v2 = @"1/count^6";
      goto LABEL_121;
    case 26:
      v4 = +[HKUnit hourUnit];
      goto LABEL_122;
    case 27:
      v11 = 3;
      goto LABEL_68;
    case 28:
      v11 = 4;
      goto LABEL_68;
    case 29:
      v4 = +[HKUnit minuteUnit];
      goto LABEL_122;
    case 30:
      v11 = 2;
      goto LABEL_68;
    case 31:
      v11 = 1;
LABEL_68:
      v4 = [HKUnit secondUnitWithMetricPrefix:v11];
      goto LABEL_122;
    case 32:
      v4 = +[HKUnit secondUnit];
      goto LABEL_122;
    case 33:
      v10 = 9;
      goto LABEL_79;
    case 34:
      v10 = 10;
      goto LABEL_79;
    case 35:
      v10 = 3;
      goto LABEL_79;
    case 36:
      v10 = 4;
LABEL_79:
      v4 = [HKUnit voltUnitWithMetricPrefix:v10];
      goto LABEL_122;
    case 37:
      v4 = +[HKUnit voltUnit];
      goto LABEL_122;
    case 42:
      v2 = @"1/S";
      goto LABEL_121;
    case 43:
      v4 = +[HKUnit smallCalorieUnit];
      goto LABEL_122;
    case 44:
      v4 = +[HKUnit jouleUnit];
      goto LABEL_122;
    case 45:
      v4 = +[HKUnit kilocalorieUnit];
      goto LABEL_122;
    case 46:
      v4 = [HKUnit jouleUnitWithMetricPrefix:9];
      goto LABEL_122;
    case 49:
      v9 = 11;
      goto LABEL_86;
    case 50:
      v4 = +[HKUnit hertzUnit];
      goto LABEL_122;
    case 51:
      v9 = 9;
      goto LABEL_86;
    case 52:
      v9 = 10;
      goto LABEL_86;
    case 53:
      v9 = 3;
      goto LABEL_86;
    case 54:
      v9 = 4;
      goto LABEL_86;
    case 55:
      v9 = 2;
      goto LABEL_86;
    case 56:
      v9 = 12;
LABEL_86:
      v4 = [HKUnit hertzUnitWithMetricPrefix:v9];
      goto LABEL_122;
    case 57:
      v4 = +[HKUnit luxUnit];
      goto LABEL_122;
    case 59:
      v8 = 5;
      goto LABEL_104;
    case 60:
      v8 = 7;
      goto LABEL_104;
    case 61:
      v8 = 6;
      goto LABEL_104;
    case 63:
      v4 = +[HKUnit footUnit];
      goto LABEL_122;
    case 65:
      v8 = 8;
      goto LABEL_104;
    case 66:
      v4 = +[HKUnit inchUnit];
      goto LABEL_122;
    case 67:
      v8 = 9;
      goto LABEL_104;
    case 69:
      v8 = 10;
      goto LABEL_104;
    case 70:
      v4 = +[HKUnit meterUnit];
      goto LABEL_122;
    case 71:
      v8 = 3;
      goto LABEL_104;
    case 72:
      v4 = +[HKUnit mileUnit];
      goto LABEL_122;
    case 73:
      v8 = 4;
      goto LABEL_104;
    case 74:
      v8 = 2;
      goto LABEL_104;
    case 77:
      v8 = 1;
LABEL_104:
      v4 = [HKUnit meterUnitWithMetricPrefix:v8];
      goto LABEL_122;
    case 79:
      v4 = +[HKUnit yardUnit];
      goto LABEL_122;
    case 81:
      v7 = 5;
      goto LABEL_111;
    case 82:
      v7 = 6;
      goto LABEL_111;
    case 83:
      v4 = +[HKUnit gramUnit];
      goto LABEL_122;
    case 84:
      v7 = 9;
      goto LABEL_111;
    case 86:
      v7 = 3;
      goto LABEL_111;
    case 87:
      v7 = 4;
      goto LABEL_111;
    case 88:
      v7 = 2;
      goto LABEL_111;
    case 89:
      v4 = +[HKUnit ounceUnit];
      goto LABEL_122;
    case 91:
      v7 = 1;
LABEL_111:
      v4 = [HKUnit gramUnitWithMetricPrefix:v7];
      goto LABEL_122;
    case 92:
      v4 = +[HKUnit poundUnit];
      goto LABEL_122;
    case 95:
      v4 = +[HKUnit stoneUnit];
      goto LABEL_122;
    case 96:
      v6 = 13;
      goto LABEL_117;
    case 97:
      v6 = 11;
      goto LABEL_117;
    case 99:
      v6 = 9;
      goto LABEL_117;
    case 100:
      v6 = 10;
      goto LABEL_117;
    case 101:
      v6 = 3;
      goto LABEL_117;
    case 102:
      v6 = 4;
      goto LABEL_117;
    case 103:
      v6 = 2;
      goto LABEL_117;
    case 104:
      v6 = 1;
      goto LABEL_117;
    case 105:
      v6 = 12;
LABEL_117:
      v4 = [HKUnit wattUnitWithMetricPrefix:v6];
      goto LABEL_122;
    case 106:
      v4 = +[HKUnit wattUnit];
      goto LABEL_122;
    case 108:
      v5 = 11;
      goto LABEL_74;
    case 109:
      v5 = 8;
      goto LABEL_74;
    case 110:
      v4 = +[HKUnit inchesOfMercuryUnit];
      goto LABEL_122;
    case 111:
      v5 = 9;
      goto LABEL_74;
    case 112:
      v5 = 10;
LABEL_74:
      v4 = [HKUnit pascalUnitWithMetricPrefix:v5];
      goto LABEL_122;
    case 114:
      v4 = +[HKUnit millimeterOfMercuryUnit];
      goto LABEL_122;
    case 115:
      v4 = +[HKUnit pascalUnit];
      goto LABEL_122;
    case 117:
      v2 = @"km/hr";
      goto LABEL_121;
    case 119:
      v2 = @"m/s";
      goto LABEL_121;
    case 120:
      v2 = @"mi/hr";
      goto LABEL_121;
    case 121:
      v4 = +[HKUnit degreeCelsiusUnit];
      goto LABEL_122;
    case 122:
      v4 = +[HKUnit degreeFahrenheitUnit];
      goto LABEL_122;
    case 123:
      v4 = +[HKUnit kelvinUnit];
      goto LABEL_122;
    case 126:
      v3 = 5;
      goto LABEL_60;
    case 127:
      v2 = @"cm^3";
      goto LABEL_121;
    case 129:
      v2 = @"ft^3";
      goto LABEL_121;
    case 130:
      v2 = @"in^3";
      goto LABEL_121;
    case 132:
      v2 = @"m^3";
      goto LABEL_121;
    case 135:
      v2 = @"yd^3";
LABEL_121:
      v4 = [HKUnit unitFromString:v2];
      goto LABEL_122;
    case 136:
      v4 = +[HKUnit cupUSUnit];
      goto LABEL_122;
    case 137:
      v3 = 6;
      goto LABEL_60;
    case 138:
      v4 = +[HKUnit fluidOunceUSUnit];
      goto LABEL_122;
    case 140:
      v4 = +[HKUnit fluidOunceImperialUnit];
      goto LABEL_122;
    case 142:
      v4 = +[HKUnit pintImperialUnit];
      goto LABEL_122;
    case 146:
      v3 = 9;
      goto LABEL_60;
    case 147:
      v4 = +[HKUnit literUnit];
      goto LABEL_122;
    case 148:
      v3 = 10;
      goto LABEL_60;
    case 149:
      v4 = +[HKUnit cupImperialUnit];
      goto LABEL_122;
    case 150:
      v3 = 4;
LABEL_60:
      v4 = [HKUnit literUnitWithMetricPrefix:v3];
      goto LABEL_122;
    case 151:
      v4 = +[HKUnit pintUSUnit];
LABEL_122:
      v1 = v4;
      break;
    default:
      break;
  }

  return v1;
}

__CFString *HKStringForSharingType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Request";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
    }
  }

  else
  {
    v2 = @"Invite";
  }

  return v2;
}

__CFString *HKStringForSharingStatus(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E7383BB8[a1];
  }

  return v2;
}

__CFString *HKStringForNotificationStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E7383BE0[a1];
  }

  return v2;
}

__CFString *HKStringForMessageDirection(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Incoming";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
    }
  }

  else
  {
    v2 = @"Outgoing";
  }

  return v2;
}

void sub_191B6F830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

id getGEOLocationShifterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGEOLocationShifterClass_softClass;
  v7 = getGEOLocationShifterClass_softClass;
  if (!getGEOLocationShifterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGEOLocationShifterClass_block_invoke;
    v3[3] = &unk_1E7378388;
    v3[4] = &v4;
    __getGEOLocationShifterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_191B72FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGEOLocationShifterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __GeoServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7383CE8;
    v6 = 0;
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    __getGEOLocationShifterClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("GEOLocationShifter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGEOLocationShifterClass_block_invoke_cold_1();
  }

  getGEOLocationShifterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GeoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id HKSafeConcept(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    HKSafeConcept_cold_1();
  }

  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v7 = +[HKConceptIdentifier inMemoryConceptIdentifier];
    v6 = [HKConceptSynthesizer synthesizeConceptWithIdentifier:v7 forCodingCollection:v5];
  }

  return v6;
}

void sub_191B7550C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void HKIntegerSetEnumerateEntry(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, a1);
}

void sub_191B75FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B76114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CopySet(void *a1, void *a2)
{
  v3 = a1[1];
  v9 = a2;
  v4 = a1;
  Count = CFSetGetCount(v3);
  v6 = *MEMORY[0x1E695E480];
  v7 = a1[1];

  MutableCopy = CFSetCreateMutableCopy(v6, Count, v7);
  CFRelease(v9[1]);
  v9[1] = MutableCopy;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B7AC98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_191B7C0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKIsValidUserDomainConceptPropertyValueType(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((a1 - 1) > 6)
  {
    v4 = 0x1E695DFB0;
  }

  else
  {
    v4 = qword_1E73840C0[a1 - 1];
  }

  v5 = *v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

__CFString *HKStringFromUserDomainConceptPropertyValueType(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E73840F8[a1];
  }

  return v2;
}

uint64_t HKIsBasicUserDomainConceptPropertyType(uint64_t a1)
{
  result = 0;
  if (a1 <= 159999)
  {
    if (a1 >= 3)
    {
      v3 = a1 - 150004;
      if (v3 > 5 || ((1 << v3) & 0x23) == 0)
      {
        return result;
      }
    }

    return 1;
  }

  if ((a1 - 160000) <= 0x14 && ((1 << a1) & 0x10E13F) != 0 || a1 == 184000)
  {
    return 1;
  }

  return result;
}

void sub_191B821E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191B82AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B82C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 39);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B82DB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B82F24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 11);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 13);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B834D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 15);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B8363C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 17);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B837AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 19);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B8391C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 21);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 23);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83BFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 27);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 29);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 31);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B83FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 33);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 35);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 37);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B843B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 45);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 43);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B846A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 49);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 51);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 53);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 61);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 59);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 63);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B84F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 65);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 69);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B851D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 71);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 41);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B854B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 73);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 75);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 77);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 79);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 81);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 85);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 83);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 87);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B85FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 89);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B8610C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 91);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 93);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B863A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 95);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 91);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 25);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 99);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B8687C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 101);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 103);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 109);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86D40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 111);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B86EB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 113);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B87020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 115);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B87190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 105);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B87300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 107);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191B87470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 117);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<BOOL({block_pointer} {__strong})(void),std::allocator<BOOL({block_pointer} {__strong})(void)>,BOOL ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x193B035A0);
}

void *std::__function::__func<BOOL({block_pointer} {__strong})(void),std::allocator<BOOL({block_pointer} {__strong})(void)>,BOOL ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F05F5708;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<BOOL({block_pointer} {__strong})(void),std::allocator<BOOL({block_pointer} {__strong})(void)>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::__function::__func<BOOL({block_pointer} {__strong})(void),std::allocator<BOOL({block_pointer} {__strong})(void)>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_191B878B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B87E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOSManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SOSLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7384258;
    v6 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary)
  {
    __getSOSManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SOSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSManagerClass_block_invoke_cold_1();
  }

  getSOSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SOSLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_191B88F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191B8A3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191B8AE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_191B8B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_191B92A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_191B92D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_191B930A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_191B9A73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191B9AF78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

uint64_t _HDValidatePositiveQuantityValue(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 isCompatibleWithUnit:v9])
  {
    [v8 doubleValueForUnit:v9];
    if (v10 >= 0.0)
    {
      v19 = 1;
      goto LABEL_11;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = objc_opt_class();
    v13 = [v7 identifier];
    [v11 hk_errorForInvalidArgument:@"value" class:v12 selector:sel__validateCharacteristic_error_ format:{@"Invalid value %@ for %@: must be >= 0", v8, v13, v21}];
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = objc_opt_class();
    v13 = [v7 identifier];
    [v14 hk_errorForInvalidArgument:@"value" class:v15 selector:sel__validateCharacteristic_error_ format:{@"Invalid value %@ for %@: expected parameter of class %@", v8, v13, objc_opt_class()}];
  }
  v16 = ;
  v17 = v16;
  if (v16)
  {
    if (a4)
    {
      v18 = v16;
      *a4 = v17;
    }

    else
    {
      _HKLogDroppedError(v16);
    }
  }

  v19 = 0;
LABEL_11:

  return v19;
}

uint64_t _ClassSupportsConceptIndexableKeyPath(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 conformsToProtocol:&unk_1F068C570])
  {
    v4 = [a1 indexableConceptKeyPaths];
    if ([v4 containsObject:v3])
    {
      v5 = 1;
    }

    else
    {
      v6 = [a1 cachedConceptRelationshipKeyPaths];
      v5 = [v6 containsObject:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_191B9D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191B9D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HKStatistics *_HKStatisticsForTotal(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [[HKStatistics alloc] initWithDataType:v10 startDate:v8 endDate:v7];

  [(HKStatistics *)v11 setSumQuantity:v9];

  return v11;
}

double _HKCalculateWorkoutDuration(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___HKCalculateWorkoutDuration_block_invoke;
  v10[3] = &unk_1E7384688;
  v10[4] = &v11;
  _HKEnumerateActiveWorkoutIntervalsStartingPaused(v5, v6, v7, 0, v10);
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_191BA1D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HKWorkoutConfiguration *_HKWorkoutConfigurationWithActivityTypeAndMetadata(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKWorkoutConfiguration);
  [(HKWorkoutConfiguration *)v4 setActivityType:a1];
  v5 = [v3 objectForKeyedSubscript:@"HKIndoorWorkout"];
  if ([v5 BOOLValue])
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [(HKWorkoutConfiguration *)v4 setLocationType:v6];

  if (a1 == 46)
  {
    v7 = [v3 objectForKeyedSubscript:@"HKSwimmingLocationType"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [HKMetadataValidationUtilities hk_validateSwimmingLocationTypeMetadataValue:v7 error:0])
    {
      v8 = [v7 integerValue];
    }

    else
    {
      v8 = 2;
    }

    [(HKWorkoutConfiguration *)v4 setSwimmingLocationType:v8];
  }

  v9 = [v3 objectForKeyedSubscript:@"HKLapLength"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[HKUnit meterUnit];
    v11 = [v9 isCompatibleWithUnit:v10];

    if (v11)
    {
      [(HKWorkoutConfiguration *)v4 setLapLength:v9];
    }
  }

  return v4;
}

void sub_191BA2F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191BA3394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _HKWorkoutCanonicalUnitForGoalType(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = [HKUnit meterUnitWithMetricPrefix:9];
      break;
    case 2:
      v1 = +[HKUnit secondUnit];
      break;
    case 3:
      v1 = +[HKUnit kilocalorieUnit];
      break;
    default:
      v1 = 0;
      break;
  }

  return v1;
}

void _HKEnumerateActiveWorkoutIntervalsStartingPaused(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v28 = a5;
  if (!v28)
  {
    _HKEnumerateActiveWorkoutIntervalsStartingPaused_cold_1();
  }

  v12 = v9;
  v13 = a4 ^ 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  v27 = v12;
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    v18 = v12;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        if ([v20 type] == 1 || objc_msgSend(v20, "type") == 2)
        {
          v21 = [v20 dateInterval];
          v22 = [v21 startDate];

          if ([v22 compare:v18] != -1 && objc_msgSend(v22, "compare:", v10) != 1)
          {
            if ((v13 & 1) != 0 && [v22 compare:v18] == 1)
            {
              v28[2](v28, v18, v22);
            }

            v23 = v22;

            v24 = [v20 type];
            if (v24 == 1)
            {
              v25 = 0;
            }

            else
            {
              v25 = v13;
            }

            if (v24 == 2)
            {
              v13 = 1;
            }

            else
            {
              v13 = v25;
            }

            v18 = v23;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = v12;
  }

  if ((v13 & 1) != 0 && [v10 compare:v18] == 1)
  {
    v28[2](v28, v18, v10);
  }

  v26 = *MEMORY[0x1E69E9840];
}

__CFString *_HKWorkoutEventTypeName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_1E73846A8[a1 - 1];
  }
}

id _HKWorkoutSpeedTypeForActivityType(uint64_t a1)
{
  v4 = 0;
  if (a1 <= 34)
  {
    if (a1 == 13)
    {
      v5 = &HKQuantityTypeIdentifierCyclingSpeed;
    }

    else
    {
      if (a1 != 31)
      {
        goto LABEL_13;
      }

      v5 = HKQuantityTypeIdentifierPaddleSportsSpeed;
    }
  }

  else
  {
    switch(a1)
    {
      case '#':
        v5 = HKQuantityTypeIdentifierRowingSpeed;
        break;
      case '%':
        v5 = &HKQuantityTypeIdentifierRunningSpeed;
        break;
      case '<':
        v5 = HKQuantityTypeIdentifierCrossCountrySkiingSpeed;
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = [HKObjectType quantityTypeForIdentifier:*v5, v1];
LABEL_13:

  return v4;
}

uint64_t _HKWorkoutLapLengthIsValid(void *a1)
{
  v1 = a1;
  v2 = +[HKUnit meterUnit];
  v3 = [v1 isCompatibleWithUnit:v2];

  return v3;
}

uint64_t _HKWorkoutValidGoalQuantity(void *a1)
{
  v1 = a1;
  if (!v1)
  {
LABEL_4:
    v2 = 1;
    goto LABEL_6;
  }

  v2 = 1;
  if ((_HKWorkoutGoalTypeAcceptsQuantity(1, v1) & 1) == 0)
  {
    if ((_HKWorkoutGoalTypeAcceptsQuantity(3, v1) & 1) == 0)
    {
      v2 = _HKWorkoutGoalTypeAcceptsQuantity(2, v1);
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v2;
}

__CFString *_HKSwimmingStrokeStyleName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7384700[a1];
  }
}

__CFString *_HKStringForWorkoutMetric(uint64_t a1)
{
  if ((a1 - 1) >= 0x15)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Workout Metric (%tu)", a1];
  }

  else
  {
    v2 = off_1E7384738[a1 - 1];
  }

  return v2;
}

id _HKStringRepresentationsForWorkoutMetrics(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v13}];
        v10 = _HKStringForWorkoutMetric([v8 integerValue]);
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

__CFString *HKFHIRReleaseFromNSString(void *a1)
{
  v1 = a1;
  v2 = @"DSTU2";
  if (([v1 isEqualToString:@"DSTU2"] & 1) == 0)
  {
    v2 = @"R4";
    if (![v1 isEqualToString:@"R4"])
    {
      v2 = @"unknown";
    }
  }

  return v2;
}

__CFString *NSStringFromHKFeatureAvailabilityRescindedStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7384820[a1];
  }
}

uint64_t HKFeatureAvailabilityRescindedStatusFromHKFeatureAvailabilityOnboardedCountrySupportedState(uint64_t a1)
{
  if (a1 == 5)
  {
    return 2;
  }

  else
  {
    return a1 == 4;
  }
}

id OUTLINED_FUNCTION_2_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return a2;
}

id _HKBarometricPressureUnit()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x1E695DA08]];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    [HKUnit pascalUnitWithMetricPrefix:8];
  }

  else
  {
    +[HKUnit inchesOfMercuryUnit];
  }
  v3 = ;

  return v3;
}

id _HKBloodGlucoseMillimolesPerLiterUnit()
{
  if (_HKBloodGlucoseMillimolesPerLiterUnit_onceToken != -1)
  {
    _HKBloodGlucoseMillimolesPerLiterUnit_cold_1();
  }

  v1 = _HKBloodGlucoseMillimolesPerLiterUnit_glucoseUnit;

  return v1;
}

id _HKWeatherTemperatureUnit()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x1E695D9F0]];

  if ([v1 isEqualToString:*MEMORY[0x1E695DA00]])
  {
    +[HKUnit degreeFahrenheitUnit];
  }

  else
  {
    +[HKUnit degreeCelsiusUnit];
  }
  v2 = ;

  return v2;
}

id _HKEnergyUnitForLocale(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[HKUnit kilocalorieUnit];
  v3 = [v1 localeIdentifier];

  v4 = [v3 cStringUsingEncoding:4];
  UnitsForUsage = uameasfmt_getUnitsForUsage();
  if (UnitsForUsage != 1)
  {
    v6 = UnitsForUsage;
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = v4;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = 0;
      _os_log_error_impl(&dword_19197B000, v7, OS_LOG_TYPE_ERROR, "Failed to retrieve preferred energy unit for locale %{public}s (%d, error: %d)", buf, 0x18u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

id _HKBloodGlucoseUnitForLocale(void *a1)
{
  v1 = [a1 regionCode];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  if (_BloodGlucoseMilligramsPerDeciliterCountryCodes_onceToken != -1)
  {
    _HKBloodGlucoseUnitForLocale_cold_1();
  }

  v3 = [_BloodGlucoseMilligramsPerDeciliterCountryCodes_milligramsPerDeciliterCountryCodes containsObject:v2];

  if (v3)
  {
    v4 = [HKUnit unitFromString:@"mg/dL"];
  }

  else
  {
LABEL_6:
    v4 = _HKBloodGlucoseMillimolesPerLiterUnit();
  }

  return v4;
}

id _HKGenerateDefaultUnitForQuantityType(void *a1)
{
  v1 = a1;
  v2 = HKSupportedUnitPreferencesVersion();
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v1 defaultUnitForLocale:v3 version:v2];

  return v4;
}

id _HKUnitPreferencesVersionToUnitDictionaryForQuantityType(void *a1, void *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (([v3 code] - 9) > 1)
    {
      v14 = &unk_1F06859B8;
      v15 = v4;
      v9 = MEMORY[0x1E695DF20];
      v10 = &v15;
      v11 = &v14;
    }

    else
    {
      v5 = +[HKUnit largeCalorieUnit];
      v6 = [v4 isEqual:v5];

      if (v6)
      {
        v18[0] = &unk_1F06859A0;
        v18[1] = &unk_1F06859B8;
        v19[0] = v4;
        v7 = +[HKUnit kilocalorieUnit];
        v19[1] = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

        goto LABEL_9;
      }

      v16 = &unk_1F06859B8;
      v17 = v4;
      v9 = MEMORY[0x1E695DF20];
      v10 = &v17;
      v11 = &v16;
    }

    v8 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

LABEL_9:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_191BAFB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_191BB0158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191BB0E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_191BB2DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HKRaceRouteClusterStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8738];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchRaceRouteClustersForActivityType_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

BOOL HKCharacteristicTypeAcceptsValue(uint64_t a1, unint64_t a2)
{
  v2 = a2 < 7;
  v3 = a2 < 3;
  v4 = a2 - 1 < 2;
  if (a1 != 177)
  {
    v4 = 0;
  }

  if (a1 != 103)
  {
    v3 = v4;
  }

  if (a1 != 88)
  {
    v2 = v3;
  }

  v5 = a2 < 4;
  v6 = a2 < 9;
  if (a1 != 66)
  {
    v6 = 0;
  }

  if (a1 != 64)
  {
    v5 = v6;
  }

  if (a1 <= 87)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t __HKHealthStoreClientInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0691948];
  v1 = HKHealthStoreClientInterface_interface;
  HKHealthStoreClientInterface_interface = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *HKAuthorizationStatusToString(uint64_t a1)
{
  if ((a1 - 100) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7384E18[a1 - 100];
  }
}

__CFString *HKSelectedAuthorizationModeToString(uint64_t a1)
{
  v1 = @"anchor-limited";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"unlimited";
  }
}

uint64_t HKInternalAuthorizationStatusMake(int a1, int a2)
{
  v2 = 103;
  if (!a2)
  {
    v2 = 104;
  }

  v3 = 101;
  if (!a2)
  {
    v3 = 102;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t HKCodableLocationCoordinateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___HKCodableLocationCoordinate__latitude;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 2u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___HKCodableLocationCoordinate__longitude;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

id getNRPairedDeviceRegistryClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass(void)::softClass;
  v7 = getNRPairedDeviceRegistryClass(void)::softClass;
  if (!getNRPairedDeviceRegistryClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL30getNRPairedDeviceRegistryClassv_block_invoke;
    v3[3] = &unk_1E7384ED0;
    v3[4] = &v4;
    ___ZL30getNRPairedDeviceRegistryClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_191BB6FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getNRWatchOSVersionForRemoteDevice(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getNRWatchOSVersionForRemoteDeviceSymbolLoc(void)::ptr;
  v9 = getNRWatchOSVersionForRemoteDeviceSymbolLoc(void)::ptr;
  if (!getNRWatchOSVersionForRemoteDeviceSymbolLoc(void)::ptr)
  {
    v3 = NanoRegistryLibrary();
    v7[3] = dlsym(v3, "NRWatchOSVersionForRemoteDevice");
    getNRWatchOSVersionForRemoteDeviceSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NRProductVersion getNRWatchOSVersionForRemoteDevice(NRDevice *__strong)"];
    [v4 handleFailureInFunction:v5 file:@"_HKBehavior.mm" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_191BB7524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void getNRVersionIsGreaterThanOrEqual(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getNRVersionIsGreaterThanOrEqualSymbolLoc(void)::ptr;
  v9 = getNRVersionIsGreaterThanOrEqualSymbolLoc(void)::ptr;
  if (!getNRVersionIsGreaterThanOrEqualSymbolLoc(void)::ptr)
  {
    v3 = NanoRegistryLibrary();
    v7[3] = dlsym(v3, "NRVersionIsGreaterThanOrEqual");
    getNRVersionIsGreaterThanOrEqualSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1, 327680);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL getNRVersionIsGreaterThanOrEqual(NRProductVersion, NRProductVersion)"}];
    [v4 handleFailureInFunction:v5 file:@"_HKBehavior.mm" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_191BB76B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191BB7CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 55);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BB7E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 57);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BB86C0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_191BB8EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 23);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BB8FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 25);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BB91A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v6 + 41);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _HKLazyLoader<NSString * {__strong}>::set(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 12));
  *(a1 + 8) = 1;
  v4 = *a1;
  *a1 = v3;

  os_unfair_lock_unlock((a1 + 12));
}

void sub_191BB9FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 37);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BBA140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 39);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BBA308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 43);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BBA4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v6 + 45);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BBA698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v6 + 47);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BBA884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v6 + 49);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BBAA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v6 + 51);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_191BBAC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v6 + 53);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZL30getNRPairedDeviceRegistryClassv_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NRPairedDeviceRegistry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNRPairedDeviceRegistryClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_HKBehavior.mm" lineNumber:46 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

    __break(1u);
  }
}

void *NanoRegistryLibrary(void)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!NanoRegistryLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL23NanoRegistryLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7384EF0;
    v7 = 0;
    NanoRegistryLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore(char **)::frameworkLibrary;
  if (!NanoRegistryLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary()"];
    [v0 handleFailureInFunction:v4 file:@"_HKBehavior.mm" lineNumber:45 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL23NanoRegistryLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *___ZL43getNRWatchOSVersionForRemoteDeviceSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRWatchOSVersionForRemoteDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRWatchOSVersionForRemoteDeviceSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getNRVersionIsGreaterThanOrEqualSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRVersionIsGreaterThanOrEqual");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRVersionIsGreaterThanOrEqualSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::__function::__func<_HKFeatureFlags *({block_pointer} {__strong})(void),std::allocator<_HKFeatureFlags *({block_pointer} {__strong})(void)>,_HKFeatureFlags * ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x193B035A0);
}

void *std::__function::__func<_HKFeatureFlags *({block_pointer} {__strong})(void),std::allocator<_HKFeatureFlags *({block_pointer} {__strong})(void)>,_HKFeatureFlags * ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F05F5CB8;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<_HKFeatureFlags *({block_pointer} {__strong})(void),std::allocator<_HKFeatureFlags *({block_pointer} {__strong})(void)>,_HKFeatureFlags * ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::__function::__func<_HKFeatureFlags *({block_pointer} {__strong})(void),std::allocator<_HKFeatureFlags *({block_pointer} {__strong})(void)>,_HKFeatureFlags * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<_HKFeatureFlags * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

CFIndex ___ZZ41___HKBehavior_runningInStoreDemoModeF201_ENK3__3clEv_block_invoke()
{
  v0 = 0x7FFFFFFFFFFFFFFFLL;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0))
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"FProgramNumber", @"com.apple.demo-settings", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      return AppIntegerValue;
    }
  }

  return v0;
}

void std::__function::__func<NSString *({block_pointer} {__strong})(void),std::allocator<NSString *({block_pointer} {__strong})(void)>,NSString * ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x193B035A0);
}

void *std::__function::__func<NSString *({block_pointer} {__strong})(void),std::allocator<NSString *({block_pointer} {__strong})(void)>,NSString * ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F05F5F48;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<NSString *({block_pointer} {__strong})(void),std::allocator<NSString *({block_pointer} {__strong})(void)>,NSString * ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::__function::__func<NSString *({block_pointer} {__strong})(void),std::allocator<NSString *({block_pointer} {__strong})(void)>,NSString * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<NSString * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t HKLogCameraAccess()
{
  ct_green_tea_logger_create();
  v0 = getCTGreenTeaOsLogHandle();
  v1 = v0;
  if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_19197B000, v1, OS_LOG_TYPE_INFO, "Accessing camera", v3, 2u);
  }

  return ct_green_tea_logger_destroy();
}

uint64_t HKLogPhotoAccess()
{
  ct_green_tea_logger_create();
  v0 = getCTGreenTeaOsLogHandle();
  v1 = v0;
  if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_19197B000, v1, OS_LOG_TYPE_INFO, "Accessing photos", v3, 2u);
  }

  return ct_green_tea_logger_destroy();
}

uint64_t HKLogPhotoTransmitted()
{
  ct_green_tea_logger_create();
  v0 = getCTGreenTeaOsLogHandle();
  v1 = v0;
  if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_19197B000, v1, OS_LOG_TYPE_INFO, "Transmitting photos", v3, 2u);
  }

  return ct_green_tea_logger_destroy();
}

void sub_191BC18BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191BC1A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKHealthWrapCodableValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_44:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_53;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v35 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v35 & 0x7F) << v16;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_48;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_48:
      *(a1 + 8) = v22;
LABEL_53:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v34 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v34 & 0x7F) << v24;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_52;
        }
      }

      if ([a2 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v26;
      }

LABEL_52:
      *(a1 + 32) = v30;
      goto LABEL_53;
    }

    if (v13 != 2)
    {
      goto LABEL_32;
    }

    v14 = PBReaderReadData();
    v15 = 16;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

__CFString *HKStringFromListUserDomainType(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E73851B8[a1];
  }

  return v2;
}