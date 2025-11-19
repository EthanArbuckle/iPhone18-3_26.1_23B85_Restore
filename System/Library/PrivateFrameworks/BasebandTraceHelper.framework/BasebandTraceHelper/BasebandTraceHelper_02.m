void sub_241A30460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *(v29 + 8) = v30;
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getBasePath(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      return;
    }

LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    memset(&__p, 170, sizeof(__p));
    v3 = a1;
    support::fs::getFileName(&__p);
    v4 = *(v3 + 1);
    if ((v3[23] & 0x80u) == 0)
    {
      v5 = v3[23];
    }

    else
    {
      v3 = *v3;
      v5 = v4;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = &v3[v5];
    if (v5)
    {
      v10 = size == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v18 = &v3[v5];
    }

    else
    {
      v16 = p_p->__r_.__value_.__s.__data_[0];
      v14 = &p_p->__r_.__value_.__s.__data_[1];
      v15 = v16;
      v17 = v3;
      v18 = &v3[v5];
LABEL_36:
      while (2)
      {
        v19 = v17 + 1;
        while (*v17 != v15)
        {
          ++v17;
          ++v19;
          if (v17 == v9)
          {
            goto LABEL_20;
          }
        }

        v20 = size - 1;
        v21 = v14;
        while (v20)
        {
          if (v19 == v9)
          {
            goto LABEL_20;
          }

          v23 = *v19++;
          v22 = v23;
          v24 = *v21++;
          --v20;
          if (v22 != v24)
          {
            if (++v17 != v9)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          }
        }

        v18 = v17++;
        if (v17 != v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
    v11 = v18 != v9 || size == 0;
    if (!v11 || v18 - v3 == -1)
    {
      goto LABEL_34;
    }

    if (v5 >= v18 - v3)
    {
      v12 = v18 - v3;
    }

    else
    {
      v12 = v5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v12 | 7) + 1;
      }

      v13 = operator new(v25);
      *(&v27 + 1) = v12;
      v28 = v25 | 0x8000000000000000;
      *&v27 = v13;
    }

    else
    {
      HIBYTE(v28) = v12;
      v13 = &v27;
      if (!v12)
      {
        LOBYTE(v27) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_33:
          *a2 = v27;
          *(a2 + 16) = v28;
          v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_34:
          if (v7 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

LABEL_53:
        operator delete(*a2);
        goto LABEL_33;
      }
    }

    memmove(v13, v3, v12);
    *(v13 + v12) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (*(a1 + 8))
  {
    goto LABEL_6;
  }

  v26 = *a1;

  std::string::__init_copy_ctor_external(a2, v26, 0);
}

void sub_241A3096C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getLastNumberDir(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v66, 170, sizeof(v66));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, *a1, *(a1 + 8));
  }

  else
  {
    v66 = *a1;
  }

  size = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
  v5 = &v66;
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v66.__r_.__value_.__r.__words[0];
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v66.__r_.__value_.__l.__size_;
  }

  v6 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
  while (size)
  {
    v7 = v6[size--];
    if (v7 != 47)
    {
      if (size != -1)
      {
        std::string::erase(&v66, size + 1, 0xFFFFFFFFFFFFFFFFLL);
      }

      break;
    }
  }

  memset(&v65, 170, sizeof(v65));
  support::fs::getBasePath(&v66, &v65);
  v8 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v66.__r_.__value_.__l.__size_;
  }

  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v65.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
LABEL_28:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_123;
    }

    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    goto LABEL_117;
  }

  memset(&v64, 170, sizeof(v64));
  support::fs::getFileName(&v64);
  memset(v63, 170, sizeof(v63));
  v10 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v64.__r_.__value_.__l.__size_;
  }

  v12 = v11 + 13;
  if (v11 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 < 0x17)
  {
    memset(v63, 0, sizeof(v63));
    v14 = v63;
    HIBYTE(v63[2]) = v11 + 13;
    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if ((v12 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v12 | 7) + 1;
    }

    v14 = operator new(v13);
    v63[1] = (v11 + 13);
    v63[2] = (v13 | 0x8000000000000000);
    v63[0] = v14;
  }

  if (v10 >= 0)
  {
    v15 = &v64;
  }

  else
  {
    v15 = v64.__r_.__value_.__r.__words[0];
  }

  memmove(v14, v15, v11);
LABEL_37:
  strcpy(v14 + v11, "-[[:alnum:]]*");
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v61[32] = v16;
  v62 = v16;
  *v61 = v16;
  *&v61[16] = v16;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v61, v63, 0);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v57 = v65;
  }

  std::locale::locale(&v51, v61);
  v52 = *&v61[8];
  v53 = *&v61[24];
  v54 = *&v61[40];
  v55 = v62;
  if (v62)
  {
    atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
  }

  v56 = *(&v62 + 1);
  if (!support::fs::getFilteredFiles(&v57, &v51, &v58, 0))
  {
    v20 = v55;
    if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    std::locale::~locale(&v51);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    goto LABEL_77;
  }

  v17 = v58;
  v18 = v59;
  v19 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  std::locale::~locale(&v51);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
    if (v17 == v18)
    {
LABEL_77:
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        *&a2->__r_.__value_.__l.__data_ = *a1;
        a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
        v31 = v58;
        if (!v58)
        {
          goto LABEL_113;
        }

        goto LABEL_106;
      }

      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
LABEL_105:
      v31 = v58;
      if (!v58)
      {
        goto LABEL_113;
      }

      goto LABEL_106;
    }
  }

  else if (v17 == v18)
  {
    goto LABEL_77;
  }

  v21 = v58;
  v22 = v59;
  if (v58 != v59)
  {
    v23 = 0;
    while (1)
    {
      memset(&__p, 170, sizeof(__p));
      ctu::tokenize();
      memset(&v49, 170, sizeof(v49));
      if (*(__p.__r_.__value_.__l.__size_ - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v49, *(__p.__r_.__value_.__l.__size_ - 24), *(__p.__r_.__value_.__l.__size_ - 16));
      }

      else
      {
        v25 = *(__p.__r_.__value_.__l.__size_ - 24);
        v49.__r_.__value_.__r.__words[2] = *(__p.__r_.__value_.__l.__size_ - 8);
        *&v49.__r_.__value_.__l.__data_ = v25;
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v49;
      }

      else
      {
        v26 = v49.__r_.__value_.__r.__words[0];
      }

      v27 = strtol(v26, 0, 0);
      if (v23 <= v27)
      {
        v23 = v27;
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
        v28 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
LABEL_72:
          v29 = __p.__r_.__value_.__l.__size_;
          v24 = v28;
          if (__p.__r_.__value_.__l.__size_ != v28)
          {
            do
            {
              v30 = *(v29 - 1);
              v29 -= 3;
              if (v30 < 0)
              {
                operator delete(*v29);
              }
            }

            while (v29 != v28);
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          __p.__r_.__value_.__l.__size_ = v28;
          operator delete(v24);
        }
      }

      else
      {
        v28 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_72;
        }
      }

      v21 += 3;
      if (v21 == v22)
      {
        goto LABEL_82;
      }
    }
  }

  v23 = 0;
LABEL_82:
  v32 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v66.__r_.__value_.__l.__size_;
  }

  v34 = v33 + 1;
  if (v33 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v34 < 0x17)
  {
    memset(&v49, 0, sizeof(v49));
    v36 = &v49;
    *(&v49.__r_.__value_.__s + 23) = v33 + 1;
    if (!v33)
    {
      goto LABEL_96;
    }
  }

  else
  {
    if ((v34 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v34 | 7) + 1;
    }

    v36 = operator new(v35);
    v49.__r_.__value_.__l.__size_ = v33 + 1;
    v49.__r_.__value_.__r.__words[2] = v35 | 0x8000000000000000;
    v49.__r_.__value_.__r.__words[0] = v36;
  }

  if (v32 >= 0)
  {
    v37 = &v66;
  }

  else
  {
    v37 = v66.__r_.__value_.__r.__words[0];
  }

  memmove(v36, v37, v33);
LABEL_96:
  *&v36[v33] = 45;
  std::to_string(&v48, v23);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v48;
  }

  else
  {
    v38 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v48.__r_.__value_.__l.__size_;
  }

  v40 = std::string::append(&v49, v38, v39);
  v41 = *&v40->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  v42 = std::string::append(&__p, "/");
  v43 = *&v42->__r_.__value_.__l.__data_;
  a2->__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
  *&a2->__r_.__value_.__l.__data_ = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_104:
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_127;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_104;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_105;
  }

LABEL_127:
  operator delete(v49.__r_.__value_.__l.__data_);
  v31 = v58;
  if (!v58)
  {
    goto LABEL_113;
  }

LABEL_106:
  v44 = v59;
  v45 = v31;
  if (v59 != v31)
  {
    do
    {
      v46 = *(v44 - 1);
      v44 -= 3;
      if (v46 < 0)
      {
        operator delete(*v44);
      }
    }

    while (v44 != v31);
    v45 = v58;
  }

  v59 = v31;
  operator delete(v45);
LABEL_113:
  v47 = v62;
  if (v62 && !atomic_fetch_add((v62 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
    std::locale::~locale(v61);
    if ((SHIBYTE(v63[2]) & 0x80000000) == 0)
    {
LABEL_116:
      if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_122;
    }
  }

  else
  {
    std::locale::~locale(v61);
    if ((SHIBYTE(v63[2]) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }
  }

  operator delete(v63[0]);
  if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_117:
    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_123;
  }

LABEL_122:
  operator delete(v64.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_118:
    if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_124:
    operator delete(v66.__r_.__value_.__l.__data_);
    return;
  }

LABEL_123:
  operator delete(v65.__r_.__value_.__l.__data_);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_124;
  }
}

void sub_241A310B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void **a44, uint64_t a45, uint64_t a46, std::locale a47)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
LABEL_8:
        std::vector<std::string>::~vector[abi:ne200100](&a44);
        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a47);
        if (*(v47 - 161) < 0)
        {
          operator delete(*(v47 - 184));
          if ((*(v47 - 137) & 0x80000000) == 0)
          {
LABEL_10:
            if ((*(v47 - 113) & 0x80000000) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_15;
          }
        }

        else if ((*(v47 - 137) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v47 - 160));
        if ((*(v47 - 113) & 0x80000000) == 0)
        {
LABEL_11:
          if ((*(v47 - 89) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

LABEL_15:
        operator delete(*(v47 - 136));
        if ((*(v47 - 89) & 0x80000000) == 0)
        {
LABEL_12:
          _Unwind_Resume(a1);
        }

LABEL_16:
        operator delete(*(v47 - 112));
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a16);
      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL support::fs::getPartitionInfo(uint64_t a1, void *a2, void *a3, unint64_t *a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      memset(&v11, 0, sizeof(v11));
      v7 = statvfs(a1, &v11);
      result = v7 == 0;
      if (v7)
      {
        return result;
      }

LABEL_7:
      *a4 = v11.f_frsize;
      f_bavail = v11.f_bavail;
      *a2 = v11.f_blocks;
      *a3 = f_bavail;
      return result;
    }

    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  v9 = statvfs(*a1, &v11);
  result = v9 == 0;
  if (!v9)
  {
    goto LABEL_7;
  }

  return result;
}

void support::fs::readCurrentLine(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::istream::tellg();
  v4 = v14;
  if (v14 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(v13, MEMORY[0x277D82680]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v13);
  LOBYTE(v13[0].__locale_) = -86;
  MEMORY[0x245CF58B0](v13, a1, 1);
  if (LOBYTE(v13[0].__locale_) != 1)
  {
    goto LABEL_19;
  }

  v8 = 0;
  *a2 = 0;
  *(a2 + 23) = 0;
  while (1)
  {
    v9 = *(a1 + *(*a1 - 24) + 40);
    v10 = v9[3];
    if (v10 != v9[4])
    {
      v9[3] = v10 + 1;
      LOBYTE(v9) = *v10;
      goto LABEL_10;
    }

    LODWORD(v9) = (*(*v9 + 80))(v9);
    if (v9 == -1)
    {
      break;
    }

LABEL_10:
    if (v7 == v9)
    {
      v11 = 0;
      goto LABEL_18;
    }

    std::string::push_back(a2, v9);
    --v8;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v11 = 4;
      goto LABEL_18;
    }
  }

  if (v8)
  {
    v11 = 2;
  }

  else
  {
    v11 = 6;
  }

LABEL_18:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v11);
LABEL_19:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_241A31540(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= 1u;
    if ((*(v2 + *(v3 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x241A314D4);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

__darwin_time_t support::fs::getFileCreationTime(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v3))
  {
    return 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    return v3.st_birthtimespec.tv_sec;
  }
}

void ___ZN7support2fsL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

char *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(24 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * (v3 >> 3)];
  v16 = v9;
  v10 = &v8[24 * v7];
  v17 = v9;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 8));
    v9 = v16;
    v11 = v17;
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *a2;
    v9->__r_.__value_.__r.__words[2] = *(a2 + 16);
    v11 = &v8[8 * (v3 >> 3)];
  }

  v12 = &v11[1];
  v13 = v9 - v3;
  memcpy(v9 - v3, v2, v3);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v12;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2853A2830;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2853A2888;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
LABEL_4:
      if (!v11)
      {
        v17 = a2;
        while (1)
        {
          result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v17, a3);
          if (result == v17)
          {
            v19 = *(a1 + 56);
            v20 = *(a1 + 28);
            v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v17, a3);
            if (v21 == v17)
            {
              result = v17;
LABEL_72:
              if (result == a2)
              {
                v54 = result;
                v55 = operator new(0x10uLL);
                result = v54;
                v56 = *(a1 + 56);
                v57 = *(v56 + 8);
                v55[1] = v57;
                *(v56 + 8) = v55;
                *(a1 + 56) = v55;
              }

              if (result != a3)
              {
LABEL_77:
                if (*result != 124)
                {
                  return result;
                }

                v65 = *(a1 + 56);
                v66 = result + 1;
                v67 = result + 1;
                while (1)
                {
                  v68 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v67, a3);
                  if (v68 == v67)
                  {
                    v69 = *(a1 + 56);
                    v70 = *(a1 + 28);
                    v71 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v67, a3);
                    if (v71 == v67)
                    {
                      v68 = v67;
LABEL_84:
                      v72 = v68;
                      if (v68 == v66)
                      {
                        v73 = operator new(0x10uLL);
                        v74 = *(a1 + 56);
                        v75 = *(v74 + 8);
                        v73[1] = v75;
                        *(v74 + 8) = v73;
                        *(a1 + 56) = v73;
                      }

                      v58 = operator new(0x18uLL);
                      v59 = *(v65 + 8);
                      v58[1] = *(v10 + 8);
                      v58[2] = v59;
                      *v58 = &unk_2853A2E48;
                      *(v10 + 8) = v58;
                      *(v65 + 8) = 0;
                      v60 = operator new(0x10uLL);
                      v61 = *(a1 + 56);
                      v62 = *(v61 + 8);
                      v60[1] = v62;
                      *(v65 + 8) = v60;
                      *(v61 + 8) = 0;
                      v63 = operator new(0x10uLL);
                      v64 = *(v65 + 8);
                      *v63 = &unk_2853A2E90;
                      v63[1] = v64;
                      *(v61 + 8) = v63;
                      *(a1 + 56) = *(v65 + 8);
                      result = v72;
                      if (v72 == a3)
                      {
                        return result;
                      }

                      goto LABEL_77;
                    }

                    v68 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v71, a3, v69, (v70 + 1), (*(a1 + 28) + 1));
                  }

                  v18 = v68 == v67;
                  v67 = v68;
                  if (v18)
                  {
                    goto LABEL_84;
                  }
                }
              }

              return result;
            }

            result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v21, a3, v19, (v20 + 1), (*(a1 + 28) + 1));
          }

          v18 = result == v17;
          v17 = result;
          if (v18)
          {
            goto LABEL_72;
          }
        }
      }

      if (v11 == 16)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
      }

      if (v11 != 32)
      {
LABEL_86:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
      }

LABEL_21:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v11)
  {
    case 0x40u:
      goto LABEL_21;
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
        v22 = operator new(0x10uLL);
        v23 = *(v10 + 8);
        v22[1] = v23;
        *(v10 + 8) = v22;
        *(a1 + 56) = v22;
        if (v16 == a3)
        {
          result = v16;
        }

        else
        {
          result = v16 + 1;
        }

        if (result == a3)
        {
          return result;
        }
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, v16);
        if (v16 == a3)
        {
          result = v16;
        }

        else
        {
          result = v16 + 1;
        }

        if (result == a3)
        {
          return result;
        }
      }

      v24 = *(a1 + 56);
      do
      {
        v34 = result;
        v35 = memchr(result, 10, a3 - result);
        v36 = v34;
        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = a3;
        }

        if (v37 == v36)
        {
          v25 = operator new(0x10uLL);
          v26 = *(v24 + 8);
          v25[1] = v26;
          *(v24 + 8) = v25;
          *(a1 + 56) = v25;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v36, v37);
        }

        v27 = operator new(0x18uLL);
        v28 = *(v24 + 8);
        v27[1] = *(v10 + 8);
        v27[2] = v28;
        *v27 = &unk_2853A2E48;
        *(v10 + 8) = v27;
        *(v24 + 8) = 0;
        v29 = operator new(0x10uLL);
        v30 = *(a1 + 56);
        v31 = *(v30 + 8);
        v29[1] = v31;
        *(v24 + 8) = v29;
        *(v30 + 8) = 0;
        v32 = operator new(0x10uLL);
        v33 = *(v24 + 8);
        *v32 = &unk_2853A2E90;
        v32[1] = v33;
        *(v30 + 8) = v32;
        v24 = *(v24 + 8);
        *(a1 + 56) = v24;
        if (v37 == a3)
        {
          result = v37;
        }

        else
        {
          result = v37 + 1;
        }
      }

      while (result != a3);
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
        v38 = operator new(0x10uLL);
        v39 = *(v10 + 8);
        v38[1] = v39;
        *(v10 + 8) = v38;
        *(a1 + 56) = v38;
        if (v13 == a3)
        {
          result = v13;
        }

        else
        {
          result = v13 + 1;
        }

        if (result == a3)
        {
          return result;
        }
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, v13);
        if (v13 == a3)
        {
          result = v13;
        }

        else
        {
          result = v13 + 1;
        }

        if (result == a3)
        {
          return result;
        }
      }

      v40 = *(a1 + 56);
      do
      {
        v50 = result;
        v51 = memchr(result, 10, a3 - result);
        v52 = v50;
        if (v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = a3;
        }

        if (v53 == v52)
        {
          v41 = operator new(0x10uLL);
          v42 = *(v40 + 8);
          v41[1] = v42;
          *(v40 + 8) = v41;
          *(a1 + 56) = v41;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v52, v53);
        }

        v43 = operator new(0x18uLL);
        v44 = *(v40 + 8);
        v43[1] = *(v10 + 8);
        v43[2] = v44;
        *v43 = &unk_2853A2E48;
        *(v10 + 8) = v43;
        *(v40 + 8) = 0;
        v45 = operator new(0x10uLL);
        v46 = *(a1 + 56);
        v47 = *(v46 + 8);
        v45[1] = v47;
        *(v40 + 8) = v45;
        *(v46 + 8) = 0;
        v48 = operator new(0x10uLL);
        v49 = *(v40 + 8);
        *v48 = &unk_2853A2E90;
        v48[1] = v49;
        *(v46 + 8) = v48;
        v40 = *(v40 + 8);
        *(a1 + 56) = v40;
        if (v53 == a3)
        {
          result = v53;
        }

        else
        {
          result = v53 + 1;
        }
      }

      while (result != a3);
      break;
    default:
      goto LABEL_86;
  }

  return result;
}

void sub_241A31FC4(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CF5770](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  result = a2;
  while (1)
  {
    v8 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = a1->__end_;
  marked_count = a1->__marked_count_;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v8, a3);
  if (v11 != v8)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v9, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = a1->__end_;
    first = v14->__first_;
    v13->__first_ = first;
    v14->__first_ = v13;
    a1->__end_ = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = a1->__end_;
    v24 = result + 1;
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = a1->__end_;
        v28 = a1->__marked_count_;
        v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v26, a3);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = a1->__end_;
            v33 = v32->__first_;
            v31->__first_ = v33;
            v32->__first_ = v31;
            a1->__end_ = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = v23->__first_;
          v16[1].__vftable = end->__first_;
          v16[2].__vftable = v17;
          v16->__vftable = &unk_2853A2E48;
          end->__first_ = v16;
          v23->__first_ = 0;
          v18 = operator new(0x10uLL);
          v19 = a1->__end_;
          v20 = v19->__first_;
          v18[1].__vftable = v20;
          v23->__first_ = v18;
          v19->__first_ = 0;
          v21 = operator new(0x10uLL);
          v22 = v23->__first_;
          v21->__vftable = &unk_2853A2E90;
          v21[1].__vftable = v22;
          v19->__first_ = v21;
          a1->__end_ = v23->__first_;
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v29, a3, v27, v28 + 1, a1->__marked_count_ + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = &unk_2853A2980;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v12, a3, v10, (v11 + 1), (*(a1 + 28) + 1));
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = &v13->__traits_.__loc_.__locale_ + 1;
    if ((&v13->__traits_.__loc_.__locale_ + 1) != a3 || LOBYTE(v13->__traits_.__loc_.__locale_) != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2853A29C8;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 != a3)
  {
    while (*v8 == 124)
    {
      v9 = *(a1 + 56);
      v10 = v8 + 1;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v8 + 1, a3);
      if (v11 == v8 + 1)
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &unk_2853A2E48;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &unk_2853A2E90;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CF5770](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
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

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A659A1)
  {
    if (((v2 & 0x8000000241A659A1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A659A1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A659A1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
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

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
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

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(this->__first_);
  }
}

{
  first = this->__first_;
  if (first)
  {
    v3 = this;
    (first->~__node_0)(this->__first_);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
      if (a2 + 1 != a3)
      {
        v13 = a2[1];
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          first = v14->__end_->__first_;
          *v16 = &unk_2853A2A10;
          *(v16 + 1) = first;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = v14->__end_->__first_;
          *v16 = &unk_2853A2A10;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 0;
        }

        v14->__end_->__first_ = v16;
        v14->__end_ = v16;
        return v15 + 2;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_2853A2980;
LABEL_14:
    *v9 = v12;
    *(v9 + 16) = v10;
    end->__first_ = v9;
    v7->__end_ = v9;
    return v8 + 1;
  }

  if (v3 == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_2853A29C8;
    goto LABEL_14;
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v18 = a2 + 2;
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = *v18;
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.__loop_count_ = v29;
    *&v35.__start_.__cntrl_ = v29;
    *&v35.__traits_.__loc_.__locale_ = v29;
    *&v35.__traits_.__col_ = v29;
    v31 = a2;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
    v33 = a1;
    v35.__flags_ = a1->__flags_;
    v34 = a3;
    v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v31 + 3, a3);
    LODWORD(v31) = v35.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v33, &v35, 1, v33->__marked_count_);
    v33->__marked_count_ += v31;
    if (v27 == v34 || *v27 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v35.__loop_count_ = v21;
  *&v35.__start_.__cntrl_ = v21;
  *&v35.__traits_.__loc_.__locale_ = v21;
  *&v35.__traits_.__col_ = v21;
  v23 = a2;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
  v25 = a1;
  v35.__flags_ = a1->__flags_;
  v26 = a3;
  v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v23 + 3, a3);
  LODWORD(v23) = v35.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v25, &v35, 0, v25->__marked_count_);
  v25->__marked_count_ += v23;
  if (v27 == v26 || *v27 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_32:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v35.__traits_.__loc_);
  return v27 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (*a2 > 0x28u)
    {
      if (v3 != 41)
      {
        if (v3 == 46)
        {
          v4 = a1;
          v5 = a2;
          v6 = operator new(0x10uLL);
          v7 = *(v4 + 56);
          v8 = *(v7 + 8);
          *v6 = &unk_2853A2AA0;
          v6[1] = v8;
          *(v7 + 8) = v6;
          *(v4 + 56) = v6;
          return v5 + 1;
        }

        if (v3 - 42 < 2)
        {
LABEL_73:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
        }

LABEL_48:
        v37 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
        return v37 + 1;
      }

      return a2;
    }

    if (v3 == 36)
    {
      return a2;
    }

    if (v3 != 40)
    {
      goto LABEL_48;
    }

    v14 = a2 + 1;
    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && *v14 == 63 && a2[2] == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, a2 + 3, a3);
        if (v17 == v16)
        {
          goto LABEL_74;
        }

        v18 = v17;
        if (*v17 != 41)
        {
          goto LABEL_74;
        }

LABEL_31:
        --*v15;
        return v18 + 1;
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = &unk_2853A2CE0;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v26 = a1;
      v27 = a3;
      v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, v14, a3);
      if (v28 != v27)
      {
        v18 = v28;
        if (*v28 == 41)
        {
          if ((*(v26 + 24) & 2) == 0)
          {
            v29 = operator new(0x18uLL);
            v30 = *(v26 + 56);
            v31 = *(v30 + 8);
            *v29 = &unk_2853A2D28;
            v29[1] = v31;
            *(v29 + 4) = v23;
            *(v30 + 8) = v29;
            *(v26 + 56) = v29;
          }

          goto LABEL_31;
        }
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v10 = v3 - 92;
  if (v10 > 0x21)
  {
    goto LABEL_43;
  }

  if (((1 << (v3 - 92)) & 0x300000006) != 0)
  {
    return a2;
  }

  if (v3 != 92)
  {
    if (v10 == 31)
    {
      goto LABEL_73;
    }

LABEL_43:
    if (v3 != 91)
    {
      if (v3 == 63)
      {
        goto LABEL_73;
      }

      goto LABEL_48;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  }

  v11 = (a2 + 1);
  if (a2 + 1 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v12 = *v11;
  if (v12 == 48)
  {
    v13 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
    return v13 + 2;
  }

  if ((v12 - 49) > 8)
  {
LABEL_53:
    v39 = a2;
    if (v12 > 99)
    {
      if (v12 == 119)
      {
        v48 = a1;
        v41 = operator new(0xB0uLL);
        v42 = v48;
        std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v41, v48, *(*(v48 + 56) + 8), 0, *(v48 + 24) & 1, (*(v48 + 24) & 8) != 0);
        goto LABEL_65;
      }

      if (v12 == 115)
      {
        v51 = a1;
        v44 = operator new(0xB0uLL);
        v50 = v51;
        std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v51, *(*(v51 + 56) + 8), 0, *(v51 + 24) & 1, (*(v51 + 24) & 8) != 0);
LABEL_71:
        *(*(v50 + 56) + 8) = v44;
        *(v50 + 56) = v44;
        v47 = v44[40] | 0x4000;
        goto LABEL_72;
      }

      if (v12 != 100)
      {
LABEL_66:
        result = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v11, a3, 0);
        if (result == v11)
        {
          return v39;
        }

        return result;
      }

      v43 = a1;
      v44 = operator new(0xB0uLL);
      v45 = v43;
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v43, *(*(v43 + 56) + 8), 0, *(v43 + 24) & 1, (*(v43 + 24) & 8) != 0);
    }

    else
    {
      if (v12 != 68)
      {
        if (v12 != 83)
        {
          if (v12 == 87)
          {
            v40 = a1;
            v41 = operator new(0xB0uLL);
            v42 = v40;
            std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v41, v40, *(*(v40 + 56) + 8), 1, *(v40 + 24) & 1, (*(v40 + 24) & 8) != 0);
LABEL_65:
            *(*(v42 + 56) + 8) = v41;
            *(v42 + 56) = v41;
            v41[40] |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v41, 95);
            return v39 + 2;
          }

          goto LABEL_66;
        }

        v49 = a1;
        v44 = operator new(0xB0uLL);
        v50 = v49;
        std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v49, *(*(v49 + 56) + 8), 1, *(v49 + 24) & 1, (*(v49 + 24) & 8) != 0);
        goto LABEL_71;
      }

      v46 = a1;
      v44 = operator new(0xB0uLL);
      v45 = v46;
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v46, *(*(v46 + 56) + 8), 1, *(v46 + 24) & 1, (*(v46 + 24) & 8) != 0);
    }

    *(*(v45 + 56) + 8) = v44;
    *(v45 + 56) = v44;
    v47 = v44[40] | 0x400;
LABEL_72:
    v44[40] = v47;
    return v39 + 2;
  }

  v32 = (v12 - 48);
  v33 = a2 + 2;
  if (a2 + 2 == a3)
  {
    v35 = a3;
    v36 = a2;
  }

  else
  {
    while (1)
    {
      v34 = *v33;
      if ((v34 - 48) > 9)
      {
        break;
      }

      if (v32 >= 0x19999999)
      {
        goto LABEL_75;
      }

      v32 = v34 + 10 * v32 - 48;
      if (++v33 == a3)
      {
        v33 = a3;
        break;
      }
    }

    v35 = a3;
    v36 = a2;
    if (!v32)
    {
LABEL_75:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
    }
  }

  if (v32 > *(a1 + 28))
  {
    goto LABEL_75;
  }

  v38 = a1;
  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v32);
  result = v33;
  if (v33 == v11)
  {
    v12 = *v11;
    a1 = v38;
    a2 = v36;
    a3 = v35;
    goto LABEL_53;
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  v6 = *(a1 + 24) & 0x1F0;
  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low == 42)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 0;
        goto LABEL_34;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 0;
      goto LABEL_43;
    }

    if (locale_low == 43)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 1;
LABEL_34:
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v10, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 0);
        return v9;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 1;
      goto LABEL_43;
    }

    return this;
  }

  if (locale_low == 63)
  {
    v20 = (&this->__traits_.__loc_.__locale_ + 1);
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || LOBYTE(v20->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 1);
      return v20;
    }

    else
    {
      v22 = &this->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 0);
      return v22;
    }
  }

  else
  {
    if (locale_low != 123)
    {
      return this;
    }

    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v11 = BYTE1(this->__traits_.__loc_.__locale_);
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = (&this->__traits_.__loc_.__locale_ + 2);
    if ((&this->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v14 = LOBYTE(v13->__traits_.__loc_.__locale_);
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        v13 = (v13 + 1);
        if (v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = LOBYTE(v13->__traits_.__loc_.__locale_);
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = (&v13->__traits_.__loc_.__locale_ + 1);
        if (v6 || v16 == a3 || LOBYTE(v16->__traits_.__loc_.__locale_) != 63)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 1);
          return v16;
        }

        else
        {
          v17 = &v13->__traits_.__loc_.__locale_ + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 0);
          return v17;
        }
      }

LABEL_69:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

    if ((&v13->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v24 = BYTE1(v13->__traits_.__loc_.__locale_);
    if (v24 == 125)
    {
      v8 = (&v13->__traits_.__loc_.__locale_ + 2);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v10 = v12;
        v9 = &v13->__traits_.__loc_.__locale_ + 3;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_34;
      }

      v23 = v12;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
LABEL_43:
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v23, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = (&v13->__traits_.__loc_.__locale_ + 2);
    if (v26 != a3)
    {
      while (1)
      {
        v27 = LOBYTE(v26->__traits_.__loc_.__locale_);
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        v26 = (v26 + 1);
        if (v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || LOBYTE(v26->__traits_.__loc_.__locale_) != 125)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = (&v26->__traits_.__loc_.__locale_ + 1);
    if (v6 || v28 == a3 || LOBYTE(v28->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 1);
      return v28;
    }

    else
    {
      v29 = &v26->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 0);
      return v29;
    }
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(std::basic_regex<char> *this, BOOL a2)
{
  v4 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v4 = &unk_2853A2A10;
  *(v4 + 1) = first;
  std::locale::locale(v4 + 2, &this->__traits_.__loc_);
  *(v4 + 24) = *&this->__traits_.__ct_;
  v4[40] = a2;
  this->__end_->__first_ = v4;
  this->__end_ = v4;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1)
{
  v2 = MEMORY[0x245CF5A90]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(std::basic_regex<char> *this, const std::basic_regex<char> *a2, BOOL a3, unsigned int a4)
{
  v8 = operator new(0x58uLL);
  first = this->__end_->__first_;
  *v8 = &unk_2853A2A58;
  *(v8 + 1) = first;
  std::locale::locale(v8 + 2, &a2->__traits_.__loc_);
  *(v8 + 24) = *&a2->__traits_.__ct_;
  *(v8 + 40) = *&a2->__flags_;
  cntrl = a2->__start_.__cntrl_;
  *(v8 + 7) = a2->__start_.__ptr_;
  *(v8 + 8) = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v8 + 9) = a2->__end_;
  *(v8 + 20) = a4;
  v8[84] = a3;
  this->__end_->__first_ = v8;
  this->__end_ = v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CF5770](exception, 6);
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
  a1->__locale_ = &unk_2853A2A10;
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
  a1->__locale_ = &unk_2853A2A10;
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
  a1->__locale_ = &unk_2853A2A58;
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
  a1->__locale_ = &unk_2853A2A58;
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
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_241A3418C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v48 = 0;
  memset(&v48[8], 0, 85);
  v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
  if (*&v48[56])
  {
    *&v48[64] = *&v48[56];
    operator delete(*&v48[56]);
  }

  if (*&v48[32])
  {
    *&v48[40] = *&v48[32];
    operator delete(*&v48[32]);
  }

  v13 = v51;
  *(v51 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
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
    std::vector<std::sub_match<char const*>>::__append((v13 - 4), v15 - v16, &__x);
    v13 = v51;
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
    v13 = v51;
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

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
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
          *&v48[64] = v30;
          *&v48[80] = v30;
          *&v48[32] = v30;
          *&v48[48] = v30;
          *v48 = v30;
          *&v48[16] = v30;
          std::__state<char>::__state(v48, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(**&v48[80] + 24))(*&v48[80], 0, v48);
          v31 = v51;
          if (v51 >= v52)
          {
            v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
            if (*&v48[56])
            {
              *&v48[64] = *&v48[56];
              operator delete(*&v48[56]);
            }
          }

          else
          {
            v32 = *&v48[16];
            *v51 = *v48;
            v31[1] = v32;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            v31[2] = *&v48[32];
            *(v31 + 6) = *&v48[48];
            *&v48[32] = 0;
            *&v48[40] = 0;
            *(v31 + 8) = 0;
            *(v31 + 9) = 0;
            *(v31 + 56) = *&v48[56];
            *(v31 + 9) = *&v48[72];
            memset(&v48[48], 0, 32);
            v33 = *&v48[80];
            *(v31 + 85) = *&v48[85];
            *(v31 + 10) = v33;
            v51 = v31 + 6;
          }

          if (*&v48[32])
          {
            *&v48[40] = *&v48[32];
            operator delete(*&v48[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
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
    v22 = v50;
    v13 = v51;
    ++v21;
    if (v50 == v51)
    {
      v17 = 0;
      if (!v50)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v51;
    v28 = *(v51 - 5);
    if (v28)
    {
      *(v51 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v51 = v27 - 6;
    goto LABEL_17;
  }

  v39 = *a4;
  *v39 = a2;
  *(v39 + 8) = v26;
  *(v39 + 16) = 1;
  v40 = *(v13 - 8);
  v41 = *(v13 - 7) - v40;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    v43 = (v40 + 16);
    v44 = 1;
    do
    {
      v45 = v39 + 24 * v44;
      *v45 = *(v43 - 1);
      v46 = *v43;
      v43 += 24;
      *(v45 + 16) = v46;
    }

    while (v42 > v44++);
  }

  v17 = 1;
  v22 = v50;
  if (v50)
  {
LABEL_44:
    v34 = v51;
    v35 = v22;
    if (v51 != v22)
    {
      do
      {
        v36 = *(v34 - 5);
        if (v36)
        {
          *(v34 - 4) = v36;
          operator delete(v36);
        }

        v37 = *(v34 - 8);
        if (v37)
        {
          *(v34 - 7) = v37;
          operator delete(v37);
        }

        v34 -= 6;
      }

      while (v34 != v22);
      v35 = v50;
    }

    v51 = v22;
    operator delete(v35);
  }

  return v17;
}

void sub_241A34614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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
  MEMORY[0x245CF5770](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CF5770](exception, 16);
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

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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

  v22 = a1;
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

  v8 = &v7[96 * v2];
  __p = v7;
  v19 = v8;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v8 + 56) = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 9) = v10;
  *(v8 + 10) = v11;
  v20 = v8 + 96;
  v21 = &v7[96 * v6];
  std::vector<std::__state<char>>::__swap_out_circular_buffer(a1, &__p);
  v12 = a1[1];
  v13 = v19;
  while (1)
  {
    v14 = v20;
    if (v20 == v13)
    {
      break;
    }

    v20 -= 96;
    v15 = *(v14 - 5);
    if (v15)
    {
      *(v14 - 4) = v15;
      operator delete(v15);
    }

    v16 = *(v14 - 8);
    if (v16)
    {
      *(v14 - 7) = v16;
      operator delete(v16);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_241A34B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::__swap_out_circular_buffer(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v5);
    do
    {
      v11 = v4[7];
      if (v11)
      {
        v4[8] = v11;
        operator delete(v11);
      }

      v12 = v4[4];
      if (v12)
      {
        v4[5] = v12;
        operator delete(v12);
      }

      v4 += 12;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
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
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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

void sub_241A35120(_Unwind_Exception *exception_object)
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
      goto LABEL_160;
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
      goto LABEL_160;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 != a3)
    {
      v51 = a3 - 4;
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

        v11 = v7 + 1;
        memset(&__p, 0, sizeof(__p));
        if (v7 + 1 != a3 && v12 == 91)
        {
          v13 = *v11;
          switch(v13)
          {
            case '.':
              v30 = v7 + 2;
              if (a3 - (v7 + 2) < 2)
              {
                goto LABEL_159;
              }

              v31 = v51 - v7;
              v32 = v7 + 2;
              v33 = v7 + 3;
              if (*v30 == 46)
              {
                goto LABEL_68;
              }

              while (1)
              {
                do
                {
                  if (!v31)
                  {
                    goto LABEL_159;
                  }

                  --v31;
                  v32 = v33;
                  v34 = *v33++;
                }

                while (v34 != 46);
LABEL_68:
                if (*v33 == 93)
                {
                  if (v32 == a3)
                  {
                    goto LABEL_159;
                  }

                  std::regex_traits<char>::__lookup_collatename<char const*>(&__dst, a1, v30, v32);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p = __dst;
                  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = __dst.__r_.__value_.__l.__size_;
                  }

                  if (size - 1 >= 2)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  v11 = v32 + 2;
                  v9 = *(a1 + 24) & 0x1F0;
                  if (v11 == a3)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_38;
                }
              }

            case ':':
              if (a3 - (v7 + 2) < 2)
              {
                goto LABEL_159;
              }

              v26 = 0;
              v27 = v7;
              if (v7[2] == 58)
              {
                goto LABEL_58;
              }

              do
              {
                do
                {
                  if (v51 - v7 == v26)
                  {
                    goto LABEL_159;
                  }

                  v27 = &v7[++v26];
                }

                while (v7[v26 + 2] != 58);
LABEL_58:
                ;
              }

              while (v27[3] != 93);
              if (&v7[v26 + 2] == a3)
              {
                goto LABEL_159;
              }

              v28 = *(a1 + 24);
              memset(&__dst, 170, sizeof(__dst));
              if (v26 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v26 >= 0x17)
              {
                if ((v26 | 7) == 0x17)
                {
                  v37 = 25;
                }

                else
                {
                  v37 = (v26 | 7) + 1;
                }

                p_dst = operator new(v37);
                __dst.__r_.__value_.__l.__size_ = v26;
                __dst.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
                __dst.__r_.__value_.__r.__words[0] = p_dst;
              }

              else
              {
                *(&__dst.__r_.__value_.__s + 23) = v26;
                p_dst = &__dst;
                if (!v26)
                {
LABEL_89:
                  p_dst->__r_.__value_.__s.__data_[v26] = 0;
                  v38 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v39 = &__dst;
                  }

                  else
                  {
                    v39 = __dst.__r_.__value_.__r.__words[0];
                  }

                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v38 = __dst.__r_.__value_.__l.__size_;
                  }

                  (*(**(a1 + 8) + 48))(*(a1 + 8), v39, v39 + v38);
                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v40 = &__dst;
                  }

                  else
                  {
                    v40 = __dst.__r_.__value_.__r.__words[0];
                  }

                  classname = std::__get_classname(v40, v28 & 1);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v42 = classname;
                    operator delete(__dst.__r_.__value_.__l.__data_);
                    classname = v42;
                  }

                  if (!classname)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
                  }

                  v36 = 0;
                  *(v8 + 40) |= classname;
                  v9 = &v7[v26 + 4];
                  v24 = v7;
                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_80:
                    v11 = v24;
                    if ((v36 & 1) == 0)
                    {
                      goto LABEL_15;
                    }

                    goto LABEL_14;
                  }

                  goto LABEL_125;
                }
              }

              memcpy(p_dst, v7 + 2, v26);
              goto LABEL_89;
            case '=':
              v14 = v7 + 2;
              if (a3 - (v7 + 2) < 2)
              {
                goto LABEL_159;
              }

              v15 = v51 - v7;
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
LABEL_159:
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
                goto LABEL_159;
              }

              memset(&__dst, 170, sizeof(__dst));
              std::regex_traits<char>::__lookup_collatename<char const*>(&__dst, a1, v14, v16);
              v19 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v19 = __dst.__r_.__value_.__l.__size_;
                if (!__dst.__r_.__value_.__l.__size_)
                {
LABEL_161:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                memset(__s, 170, sizeof(__s));
                v20 = __dst.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (!*(&__dst.__r_.__value_.__s + 23))
                {
                  goto LABEL_161;
                }

                v20 = &__dst;
                memset(__s, 170, sizeof(__s));
              }

              std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v20, v20 + v19, __s);
              v43 = HIBYTE(__s[2]);
              if (SHIBYTE(__s[2]) < 0)
              {
                v43 = __s[1];
              }

              if (v43)
              {
                v44 = *(v8 + 18);
                if (v44 >= *(v8 + 19))
                {
                  *(v8 + 18) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v8 + 136, __s);
                  if (SHIBYTE(__s[2]) < 0)
                  {
                    goto LABEL_128;
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
                    v45 = *__s;
                    *(v44 + 16) = __s[2];
                    *v44 = v45;
                  }

                  *(v8 + 18) = v44 + 24;
                  *(v8 + 18) = v44 + 24;
                  if (SHIBYTE(__s[2]) < 0)
                  {
                    goto LABEL_128;
                  }
                }

LABEL_123:
                if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_124;
                }
              }

              else
              {
                v46 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v46 = __dst.__r_.__value_.__l.__size_;
                }

                if (v46 == 2)
                {
                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v48 = &__dst;
                  }

                  else
                  {
                    v48 = __dst.__r_.__value_.__r.__words[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v8, v48->__r_.__value_.__s.__data_[0], v48->__r_.__value_.__s.__data_[1]);
                }

                else
                {
                  if (v46 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v47 = &__dst;
                  }

                  else
                  {
                    v47 = __dst.__r_.__value_.__r.__words[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, v47->__r_.__value_.__s.__data_[0]);
                }

                if ((SHIBYTE(__s[2]) & 0x80000000) == 0)
                {
                  goto LABEL_123;
                }

LABEL_128:
                operator delete(__s[0]);
                if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_124:
                  v36 = 0;
                  v9 = (v16 + 2);
                  v24 = v7;
                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_125;
                }
              }

              operator delete(__dst.__r_.__value_.__l.__data_);
              v36 = 0;
              v9 = (v16 + 2);
              v24 = v7;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_80;
              }

              goto LABEL_125;
          }
        }

        v9 = *(a1 + 24) & 0x1F0;
        if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40 && v12 == 92)
        {
          if ((*(a1 + 24) & 0x1F0) != 0)
          {
            v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7 + 1, a3, &__p);
            if (v11 == a3)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v7 + 1, a3, &__p, v8);
            v9 = 0;
            if (v11 == a3)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          std::string::operator=(&__p, v12);
          if (v11 == a3)
          {
            goto LABEL_39;
          }
        }

LABEL_38:
        v21 = *v11;
        if (v21 != 93)
        {
          v23 = v11 + 1;
          if (v11 + 1 != a3 && v21 == 45 && *v23 != 93)
          {
            memset(&__dst, 0, sizeof(__dst));
            v24 = v11 + 2;
            if (v11 + 2 != a3 && *v23 == 91 && *v24 == 46)
            {
              v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v11 + 3, a3, &__dst);
              goto LABEL_141;
            }

            if ((v9 | 0x40) == 0x40)
            {
              LODWORD(v23) = *v23;
              if (v23 == 92)
              {
                if (v9)
                {
                  v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v11 + 2, a3, &__dst);
                }

                else
                {
                  v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v11 + 2, a3, &__dst, v8);
                }

LABEL_141:
                v24 = v25;
LABEL_142:
                *__s = *&__p.__r_.__value_.__l.__data_;
                v49 = __p.__r_.__value_.__r.__words[2];
                memset(&__p, 0, sizeof(__p));
                v52 = __dst;
                __s[2] = v49;
                memset(&__dst, 0, sizeof(__dst));
                std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v8, __s, &v52);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__s[2]) < 0)
                  {
                    goto LABEL_148;
                  }

LABEL_144:
                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_145;
                  }

LABEL_149:
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  v36 = 1;
                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                  if ((SHIBYTE(__s[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_144;
                  }

LABEL_148:
                  operator delete(__s[0]);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_149;
                  }

LABEL_145:
                  v36 = 1;
                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_80;
                  }
                }

LABEL_125:
                operator delete(__p.__r_.__value_.__l.__data_);
                v11 = v24;
                if ((v36 & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_14;
              }
            }

            else
            {
              LOBYTE(v23) = *v23;
            }

            std::string::operator=(&__dst, v23);
            goto LABEL_142;
          }
        }

LABEL_39:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_)
          {
            if (__p.__r_.__value_.__l.__size_ == 1)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
LABEL_46:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, p_p->__r_.__value_.__s.__data_[0]);
LABEL_79:
              v36 = 1;
              v24 = v11;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_80;
              }

              goto LABEL_125;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
LABEL_78:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v8, p_p->__r_.__value_.__s.__data_[0], p_p->__r_.__value_.__s.__data_[1]);
            goto LABEL_79;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
        }

        else if (*(&__p.__r_.__value_.__s + 23))
        {
          p_p = &__p;
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
          {
            goto LABEL_46;
          }

          goto LABEL_78;
        }

LABEL_14:
        v9 = v11;
LABEL_15:
        v10 = v9 == v7;
        v7 = v9;
        if (v10)
        {
          goto LABEL_152;
        }
      }
    }

    v9 = v7;
LABEL_152:
    if (v9 == a3)
    {
      goto LABEL_160;
    }

    if (*v9 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v9;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_160:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return (v9 + 1);
  }

  return a2;
}

void sub_241A359D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
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
  MEMORY[0x245CF5770](exception, 11);
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
  MEMORY[0x245CF5770](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this)
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
        if (this)
        {
          std::string::operator=(this, 12);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
        }

        return (v4 + 1);
      }

      if (v5 == 110)
      {
        if (this)
        {
          std::string::operator=(this, 10);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
        }

        return (v4 + 1);
      }

LABEL_70:
      if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
      {
        goto LABEL_74;
      }

      v18 = *a2;
      if (this)
      {
        std::string::operator=(this, v5);
        return (v4 + 1);
      }

LABEL_62:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
      return (v4 + 1);
    }

    if (v5 == 48)
    {
      if (this)
      {
        std::string::operator=(this, 0);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      }

      return (v4 + 1);
    }

    if (v5 != 99)
    {
      if (v5 == 95)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    if (a2 + 1 == a3)
    {
      goto LABEL_74;
    }

    v7 = a2[1];
    if (((v7 & 0xDF) - 65) > 0x19u)
    {
      goto LABEL_74;
    }

    v8 = v7 & 0x1F;
    if (!this)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      return (v4 + 2);
    }

    std::string::operator=(this, v8);
    v4 += 2;
    return v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (this)
      {
        std::string::operator=(this, 13);
        return (v4 + 1);
      }

      v18 = 13;
      goto LABEL_62;
    }

    if (v5 == 116)
    {
      if (this)
      {
        std::string::operator=(this, 9);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
      }

      return (v4 + 1);
    }

    goto LABEL_70;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_74;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_74;
    }

    v4 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_74;
    }

    v11 = *v4;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_74;
      }

      v12 = -87;
    }

    v6 = 16 * (v12 + v11);
LABEL_44:
    if (v4 + 1 == a3)
    {
      goto LABEL_74;
    }

    v13 = v4[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_74;
      }

      v14 = -87;
    }

    if (v4 + 2 != a3)
    {
      v15 = v4[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
LABEL_54:
        v17 = v15 + 16 * (v6 + v14 + v13) + v16;
        if (this)
        {
          std::string::operator=(this, v17);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        }

        return (v4 + 3);
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
        goto LABEL_54;
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v5 != 118)
  {
    if (v5 == 120)
    {
      v6 = 0;
      goto LABEL_44;
    }

    goto LABEL_70;
  }

  if (this)
  {
    std::string::operator=(this, 11);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
  }

  return (v4 + 1);
}

void sub_241A3618C(_Unwind_Exception *a1)
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
  MEMORY[0x245CF5770](exception, 4);
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
    v10 = &unk_2853A2BC0;
  }

  else
  {
    if ((flags & 8) == 0)
    {
      v5 = operator new(0x18uLL);
      end = this->__end_;
      first = end->__first_;
      v5->__vftable = &unk_2853A2C50;
      v5->__first_ = first;
      LODWORD(v5[1].__vftable) = __i;
      end->__first_ = v5;
      this->__end_ = v5;
      return;
    }

    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2853A2C08;
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
  a1->__locale_ = &unk_2853A2AE8;
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
  a1->__locale_ = &unk_2853A2AE8;
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
  a1->__locale_ = &unk_2853A2B30;
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
  a1->__locale_ = &unk_2853A2B30;
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
  a1->__locale_ = &unk_2853A2BC0;
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
  a1->__locale_ = &unk_2853A2BC0;
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
  a1->__locale_ = &unk_2853A2C08;
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
  a1->__locale_ = &unk_2853A2C08;
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
    std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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

void sub_241A37084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
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
    v22 = 0;
    negate = this->__negate_;
    goto LABEL_85;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_60;
  }

  LOBYTE(v113) = *current;
  v6 = current[1];
  HIBYTE(v113) = current[1];
  if (this->__icase_)
  {
    LOBYTE(v113) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(v113) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v113, __p, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__p[2]))
    {
      goto LABEL_8;
    }

LABEL_60:
    negate = 0;
    v22 = 1;
    goto LABEL_61;
  }

  v37 = __p[1];
  operator delete(__p[0]);
  if (!v37)
  {
    goto LABEL_60;
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
    while (v113 != *(p_second - 1) || HIBYTE(v113) != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_223;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    memset(v112, 170, sizeof(v112));
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    __p[2] = 0x2AAAAAAAAAAAAAALL;
    __p[0] = 0xAAAAAAAAAA00AAAALL;
    LOWORD(__p[0]) = v113;
    (*(*this->__traits_.__col_ + 32))(v112);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = this->__ranges_.__begin_;
    v13 = HIBYTE(v112[2]);
    v14 = this->__ranges_.__end_ - v12;
    if (v14)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
      v109 = HIBYTE(v112[2]);
      v16 = SHIBYTE(v112[2]) >= 0 ? HIBYTE(v112[2]) : v112[1];
      v17 = SHIBYTE(v112[2]) >= 0 ? v112 : v112[0];
      v18 = v15 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
      v19 = &v12->second.__r_.__value_.__r.__words[2] + 7;
      v20 = 1;
      v21 = 1;
      do
      {
        v24 = *(v19 - 24);
        if (v24 >= 0)
        {
          v25 = *(v19 - 24);
        }

        else
        {
          v25 = *(v19 - 39);
        }

        if (v24 >= 0)
        {
          v26 = (v19 - 47);
        }

        else
        {
          v26 = *(v19 - 47);
        }

        if (v25 >= v16)
        {
          v27 = v16;
        }

        else
        {
          v27 = v25;
        }

        v28 = memcmp(v17, v26, v27);
        v29 = v16 >= v25;
        if (v28)
        {
          v29 = v28 >= 0;
        }

        if (v29)
        {
          v30 = *v19;
          if (v30 >= 0)
          {
            v31 = *v19;
          }

          else
          {
            v31 = *(v19 - 15);
          }

          if (v30 >= 0)
          {
            v32 = (v19 - 23);
          }

          else
          {
            v32 = *(v19 - 23);
          }

          if (v16 >= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = v16;
          }

          v34 = memcmp(v32, v17, v33);
          v35 = v31 >= v16;
          if (v34)
          {
            v35 = v34 >= 0;
          }

          if (v35)
          {
            v36 = 5;
            goto LABEL_170;
          }
        }

        v21 = v20++ < v15;
        v19 += 48;
        --v18;
      }

      while (v18);
      v36 = 0;
LABEL_170:
      v13 = v109;
    }

    else
    {
      v21 = 0;
      v36 = 0;
    }

    if (v13 < 0)
    {
      operator delete(v112[0]);
    }

    if (v21)
    {
      v88 = 1;
      goto LABEL_203;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v88 = 0;
    goto LABEL_205;
  }

  memset(__p, 170, sizeof(__p));
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v113, __p, __p);
  v89 = this->__equivalences_.__begin_;
  v90 = HIBYTE(__p[2]);
  v91 = this->__equivalences_.__end_ - v89;
  if (v91)
  {
    v92 = 0xAAAAAAAAAAAAAAABLL * (v91 >> 3);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v93 = HIBYTE(__p[2]);
    }

    else
    {
      v93 = __p[1];
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v94 = __p;
    }

    else
    {
      v94 = __p[0];
    }

    if (v92 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = 0xAAAAAAAAAAAAAAABLL * (v91 >> 3);
    }

    v96 = 1;
    v97 = 1;
    while (1)
    {
      size = HIBYTE(v89->__r_.__value_.__r.__words[2]);
      v99 = size;
      if ((size & 0x80u) != 0)
      {
        size = v89->__r_.__value_.__l.__size_;
      }

      if (v93 == size)
      {
        v100 = v99 >= 0 ? v89 : v89->__r_.__value_.__r.__words[0];
        if (!memcmp(v94, v100, v93))
        {
          break;
        }
      }

      v97 = v96++ < v92;
      ++v89;
      if (!--v95)
      {
        goto LABEL_199;
      }
    }

    v88 = 1;
    v36 = 5;
  }

  else
  {
    v97 = 0;
LABEL_199:
    v36 = 0;
    v88 = 0;
  }

  if (v90 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v97)
  {
LABEL_205:
    if (v113 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v103 = tab[v113];
      if (((v103 & mask) != 0 || v113 == 95 && (mask & 0x80) != 0) && (SHIBYTE(v113) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(v113)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(v113) == 95))
      {
        goto LABEL_223;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v103) != 0 || v113 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_222:
        negate = v88;
LABEL_224:
        v22 = 2;
        goto LABEL_85;
      }
    }

    if ((SHIBYTE(v113) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(v113)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(v113) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_224;
        }
      }

      goto LABEL_222;
    }

LABEL_223:
    negate = 1;
    goto LABEL_224;
  }

LABEL_203:
  v22 = 2;
  negate = v88;
  if (v36)
  {
    goto LABEL_85;
  }

LABEL_61:
  v38 = *v2->__current_;
  LOBYTE(v113) = *v2->__current_;
  if (this->__icase_)
  {
    LODWORD(v38) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    LOBYTE(v113) = v38;
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
        goto LABEL_84;
      }
    }

    while (--v40);
  }

  v42 = this->__neg_mask_;
  if (v42 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v38 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v38] & v42) == 0)
    {
      v44 = (v42 >> 7) & 1;
      v43 = v38 == 95 ? v44 : 0;
    }

    else
    {
      v43 = 1;
    }

    end = this->__neg_chars_.__end_;
    v46 = memchr(this->__neg_chars_.__begin_, v38, end - this->__neg_chars_.__begin_);
    v47 = !v46 || v46 == end;
    v48 = !v47;
    if ((v43 & 1) == 0 && !v48)
    {
LABEL_84:
      negate = 1;
      goto LABEL_85;
    }
  }

  v51 = this->__ranges_.__begin_;
  v52 = this->__ranges_.__end_;
  if (v51 != v52)
  {
    memset(v112, 170, sizeof(v112));
    v110 = negate;
    if (this->__collate_)
    {
      __p[1] = 0xAAAAAAAAAAAAAAAALL;
      __p[2] = 0x1AAAAAAAAAAAAAALL;
      __p[0] = 0xAAAAAAAAAAAAAAAALL;
      LOWORD(__p[0]) = v38;
      (*(*this->__traits_.__col_ + 32))(v112);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v51 = this->__ranges_.__begin_;
      v53 = HIBYTE(v112[2]);
      v54 = this->__ranges_.__end_ - v51;
      if (!v54)
      {
LABEL_94:
        v55 = 0;
        if ((v53 & 0x80) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_135;
      }
    }

    else
    {
      v53 = 1;
      HIBYTE(v112[2]) = 1;
      LOWORD(v112[0]) = v38;
      v54 = v52 - v51;
      if (!v54)
      {
        goto LABEL_94;
      }
    }

    v106 = v2;
    v107 = v22;
    v56 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4);
    v105 = v53;
    if ((v53 & 0x80u) == 0)
    {
      v57 = v53;
    }

    else
    {
      v57 = v112[1];
    }

    if ((v53 & 0x80u) == 0)
    {
      v58 = v112;
    }

    else
    {
      v58 = v112[0];
    }

    if (v56 <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4);
    }

    v60 = &v51->second.__r_.__value_.__r.__words[2] + 7;
    v61 = 1;
    v55 = 1;
    do
    {
      v62 = *(v60 - 24);
      if (v62 >= 0)
      {
        v63 = *(v60 - 24);
      }

      else
      {
        v63 = *(v60 - 39);
      }

      if (v62 >= 0)
      {
        v64 = (v60 - 47);
      }

      else
      {
        v64 = *(v60 - 47);
      }

      if (v63 >= v57)
      {
        v65 = v57;
      }

      else
      {
        v65 = v63;
      }

      v66 = memcmp(v58, v64, v65);
      v67 = v57 >= v63;
      if (v66)
      {
        v67 = v66 >= 0;
      }

      if (v67)
      {
        v68 = *v60;
        if (v68 >= 0)
        {
          v69 = *v60;
        }

        else
        {
          v69 = *(v60 - 15);
        }

        if (v68 >= 0)
        {
          v70 = (v60 - 23);
        }

        else
        {
          v70 = *(v60 - 23);
        }

        if (v57 >= v69)
        {
          v71 = v69;
        }

        else
        {
          v71 = v57;
        }

        v72 = memcmp(v70, v58, v71);
        v73 = v69 >= v57;
        if (v72)
        {
          v73 = v72 >= 0;
        }

        if (v73)
        {
          negate = 1;
          v2 = v106;
          goto LABEL_134;
        }
      }

      v55 = v61++ < v56;
      v60 += 48;
      --v59;
    }

    while (v59);
    v2 = v106;
    negate = v110;
LABEL_134:
    v22 = v107;
    if ((v105 & 0x80) == 0)
    {
LABEL_136:
      if (v55)
      {
        goto LABEL_85;
      }

      goto LABEL_137;
    }

LABEL_135:
    operator delete(v112[0]);
    goto LABEL_136;
  }

LABEL_137:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_162;
  }

  memset(__p, 170, sizeof(__p));
  v74 = __p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v113, &v113 + 1, __p);
  v75 = this->__equivalences_.__begin_;
  v76 = HIBYTE(__p[2]);
  v77 = this->__equivalences_.__end_ - v75;
  if (v77)
  {
    v108 = v22;
    v111 = negate;
    v78 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v79 = HIBYTE(__p[2]);
    }

    else
    {
      v79 = __p[1];
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      v74 = __p[0];
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
    do
    {
      v83 = HIBYTE(v75->__r_.__value_.__r.__words[2]);
      v84 = v83;
      if ((v83 & 0x80u) != 0)
      {
        v83 = v75->__r_.__value_.__l.__size_;
      }

      if (v79 == v83)
      {
        v85 = v84 >= 0 ? v75 : v75->__r_.__value_.__r.__words[0];
        if (!memcmp(v74, v85, v79))
        {
          negate = 1;
          v22 = v108;
          if ((v76 & 0x80) == 0)
          {
            goto LABEL_160;
          }

          goto LABEL_159;
        }
      }

      v82 = v81++ < v78;
      ++v75;
      --v80;
    }

    while (v80);
    negate = v111;
    v22 = v108;
    if ((v76 & 0x80) == 0)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v82 = 0;
    if ((HIBYTE(__p[2]) & 0x80) == 0)
    {
      goto LABEL_160;
    }
  }

LABEL_159:
  operator delete(__p[0]);
LABEL_160:
  if (v82)
  {
    goto LABEL_85;
  }

  LOBYTE(v38) = v113;
LABEL_162:
  v86 = this->__mask_;
  if ((v38 & 0x80) == 0 && (this->__traits_.__ct_->__tab_[v38] & v86) != 0)
  {
    goto LABEL_84;
  }

  v87 = (v86 >> 7) & 1;
  if (v38 != 95)
  {
    LOBYTE(v87) = 0;
  }

  negate |= v87;
LABEL_85:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v50 = -993;
  }

  else
  {
    v2->__current_ += v22;
    first = this->__first_;
    v50 = -995;
  }

  v2->__do_ = v50;
  v2->__node_ = first;
}

void sub_241A37AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(&__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    *(&__dst.__r_.__value_.__s + 23) = a3 - a2;
    p_dst = &__dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(p_dst, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  p_dst = v11;
  __dst.__r_.__value_.__l.__size_ = v5;
  __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = __dst.__r_.__value_.__r.__words[0];
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    v12 = &__dst;
  }

  std::__get_collation_name(&v17, v12);
  *a4 = *&v17.__r_.__value_.__l.__data_;
  v13 = v17.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v17.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v12 = __dst.__r_.__value_.__r.__words[0];
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v12 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_23;
    }

LABEL_25:
    (*(**(a1 + 16) + 32))(&v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 != 1 && v16 != 12)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 != 12 && v15 != 1)
      {
        *a4 = 0;
        *(a4 + 23) = 0;
        goto LABEL_17;
      }
    }

    std::string::operator=(a4, &__dst);
    goto LABEL_17;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 3)
  {
    goto LABEL_25;
  }
}

void sub_241A37F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  v16[11] = v16[3];
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_241A38138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x245CF5770](exception, 5);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return (a2 + 1);
      }

      if (v6 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return (a2 + 1);
      }
    }

    else
    {
      if (v6 == 98)
      {
        std::string::operator=(this, 8);
        return (a2 + 1);
      }

      if (v6 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return (a2 + 1);
      }
    }
  }

  else if (*a2 > 0x52u)
  {
    if (v6 == 83)
    {
      *(a5 + 164) |= 0x4000u;
      return (a2 + 1);
    }

    if (v6 == 87)
    {
      *(a5 + 164) |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
      return (a2 + 1);
    }
  }

  else
  {
    if (!*a2)
    {
      std::string::operator=(this, 0);
      return (a2 + 1);
    }

    if (v6 == 68)
    {
      *(a5 + 164) |= 0x400u;
      return (a2 + 1);
    }
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_40;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          std::string::operator=(this, 7);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
        }

        return a2 + 1;
      }

      if (v5 == 98)
      {
        if (this)
        {
          std::string::operator=(this, 8);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
        }

        return a2 + 1;
      }

      goto LABEL_40;
    }

    if (this)
    {
      std::string::operator=(this, v5);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    }

    return a2 + 1;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        std::string::operator=(this, 12);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
      }

      return a2 + 1;
    }

    if (v5 == 110)
    {
      if (this)
      {
        std::string::operator=(this, 10);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
      }

      return a2 + 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          std::string::operator=(this, 13);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
        }

        return a2 + 1;
      case 't':
        if (this)
        {
          std::string::operator=(this, 9);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
        }

        return a2 + 1;
      case 'v':
        if (this)
        {
          std::string::operator=(this, 11);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
        }

        return a2 + 1;
    }
  }

LABEL_40:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_57;
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

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
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
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
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

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
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
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_241A38B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_241A38B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
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
    std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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
  MEMORY[0x245CF5770](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(&__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    *(&__dst.__r_.__value_.__s + 23) = a4 - __src;
    p_dst = &__dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(p_dst, __src, v4);
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

  p_dst = operator new(v10);
  __dst.__r_.__value_.__l.__size_ = v4;
  __dst.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = p_dst;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  p_dst->__r_.__value_.__s.__data_[v4] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    v11 = &__dst;
  }

  std::__get_collation_name(&v16, v11);
  *a1 = *&v16.__r_.__value_.__l.__data_;
  v12 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v13 = HIBYTE(v12);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 8);
  }

  if (v13)
  {
    goto LABEL_17;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__size_ < 3)
    {
      goto LABEL_25;
    }

LABEL_19:
    operator delete(v11);
    return;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 3)
  {
LABEL_25:
    (*(**(a2 + 16) + 32))(&v16);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v16;
    if (*(a1 + 23) < 0)
    {
      v15 = *(a1 + 8);
      if (v15 != 1 && v15 != 12)
      {
        **a1 = 0;
        *(a1 + 8) = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v14 = *(a1 + 23);
      if (v14 != 12 && v14 != 1)
      {
        *a1 = 0;
        *(a1 + 23) = 0;
LABEL_17:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        v11 = __dst.__r_.__value_.__r.__words[0];
        goto LABEL_19;
      }
    }

    std::string::operator=(a1, &__dst);
    goto LABEL_17;
  }
}

void sub_241A39058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  v16[11] = v16[3];
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_241A39244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x245CF5770](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 64);
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
    std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 72) = v9 + 1;
    return;
  }

  v10 = *(a1 + 64);
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
  *(a1 + 64) = v16;
  *(a1 + 72) = v6;
  *(a1 + 80) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 72) = v6;
    return;
  }

LABEL_28:
  *(a1 + 72) = v6;
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
    std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
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

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v6 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v6, a2, v3);
    goto LABEL_10;
  }

  if ((v3 | 7) == 0x17)
  {
    v7 = 25;
  }

  else
  {
    v7 = (v3 | 7) + 1;
  }

  v8 = a2;
  v9 = operator new(v7);
  a2 = v8;
  v6 = v9;
  __dst[1] = v3;
  __dst[2] = (v7 | 0x8000000000000000);
  __dst[0] = v9;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v6 + v3) = 0;
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v11, &v10[v11]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_241A39710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x245CF5770](exception, 9);
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
  v16->__vftable = &unk_2853A2D70;
  v16[3].__vftable = __min;
  v16[4].__vftable = __max;
  LODWORD(v16[5].__vftable) = loop_count;
  HIDWORD(v16[5].__vftable) = v8;
  LODWORD(v16[6].__vftable) = v7;
  BYTE4(v16[6].__vftable) = __greedy;
  __s->__first_ = 0;
  v18 = operator new(0x10uLL);
  v18->__vftable = &unk_2853A2E00;
  v18[1].__vftable = v16;
  end->__first_ = v18;
  this->__end_ = v13;
  __s->__first_ = v16;
  this->__loop_count_ = loop_count + 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CF5770](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CF5770](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2853A2DD0;
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
  *__p = &unk_2853A2DD0;
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
  *a1 = &unk_2853A2DD0;
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
  *__p = &unk_2853A2DD0;
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
  *a1 = &unk_2853A2DD0;
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
  *__p = &unk_2853A2DD0;
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
  MEMORY[0x245CF5770](exception, 15);
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
          *v17 = &unk_2853A2ED8;
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
        *v11 = &unk_2853A2CE0;
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
        *v17 = &unk_2853A2D28;
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

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
    if (v11 != a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
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
    if ((v8 - 123) >= 2)
    {
LABEL_23:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      v11 = a2 + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v11 = v10;
  if (v10 == a2)
  {
    if (*v10 == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = &unk_2853A2ED8;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  }

LABEL_9:
  if (v11 == a2 && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_2853A29C8;
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
          *v20 = &unk_2853A2CE0;
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
          *v25 = &unk_2853A2D28;
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
        v19 = &unk_2853A2980;
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
  if (v11 == a2)
  {
    return v11;
  }

LABEL_32:
  v28 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v28);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v5 + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = a2 + 1;

    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7, a3, 0);
  }

  else
  {
    v8 = a2;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return &v8[v10];
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

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *this, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  v11 = a4[1] - *a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  begin = this->__begin_;
  end = this->__end_;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      end = (begin + v11);
      this->__end_ = (begin + v11);
    }
  }

  else
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v12 - v15);
    begin = this->__begin_;
    end = this->__end_;
  }

  if (end == begin)
  {
    v20 = a2 - v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v18 = *a4;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    v20 = a2 - v10;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    p_matched = &begin->matched;
    do
    {
      if (v19 <= v16)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = v18;
      }

      *(p_matched - 2) = v20 + *v22;
      *(p_matched - 1) = v20 + v22[1];
      *p_matched = *(v22 + 16);
      p_matched += 24;
      ++v16;
      v18 += 3;
    }

    while (v17 != v16);
  }

  this[1].__begin_ = a3;
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  v23 = (v20 + a4[6]);
  this[2].__begin_ = v23;
  this[2].__end_ = (v20 + a4[7]);
  LOBYTE(this[2].__end_cap_.__value_) = *(a4 + 64);
  this[3].__begin_ = (v20 + a4[9]);
  this[3].__end_ = (v20 + a4[10]);
  LOBYTE(this[3].__end_cap_.__value_) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    this[4].__end_ = v23;
  }

  LOBYTE(this[4].__begin_) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_91;
  }

  *v79 = 0;
  memset(&v79[8], 0, 85);
  std::deque<std::__state<char>>::__add_back_capacity(&v80);
  v12 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v82.i64[1]) / 0x2AuLL)) + 96 * ((v82.i64[0] + v82.i64[1]) % 0x2AuLL);
  v13 = *&v79[16];
  *v12 = *v79;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v79[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  memset(&v79[56], 0, 24);
  v14 = *&v79[80];
  *(v12 + 85) = *&v79[85];
  *(v12 + 80) = v14;
  v16 = v82.i64[1];
  v15 = v82.i64[0];
  v17 = ++v82.i64[1];
  v18 = *(&v80 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v16) / 0x2AuLL)) + 96 * ((v82.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v20 + 56), v19 - v22);
    v17 = v82.i64[1];
    v15 = v82.i64[0];
    v18 = *(&v80 + 1);
  }

  v75 = a3;
  v76 = 0;
  v77 = 0;
  v23 = 0;
  v24 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v24 + 80) = v6;
  *(v24 + 92) = a6;
  v25 = a3 - a2;
  *(v24 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v25)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v27 = *(*(&v80 + 1) + 8 * ((v17 + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v82.i64[0] - 1) % 0x2AuLL);
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
          goto LABEL_9;
        }

        if (v29 != -995)
        {
LABEL_105:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        v30 = v82.i64[0];
        if (!v82.i64[0])
        {
          std::deque<std::__state<char>>::__add_front_capacity(&v80);
          v30 = v82.i64[0];
        }

        v31 = (*(&v80 + 1) + 8 * (v30 / 0x2A));
        v32 = *v31 + 96 * (v30 % 0x2A);
        if (v81 == *(&v80 + 1))
        {
          v32 = 0;
        }

        if (v32 == *v31)
        {
          v32 = *(v31 - 1) + 4032;
        }

        v33 = *(v27 + 16);
        *(v32 - 96) = *v27;
        *(v32 - 80) = v33;
        *(v32 - 56) = 0;
        *(v32 - 48) = 0;
        *(v32 - 64) = 0;
        *(v32 - 64) = *(v27 + 32);
        *(v32 - 48) = *(v27 + 48);
        *(v27 + 32) = 0;
        *(v27 + 40) = 0;
        *(v27 + 48) = 0;
        *(v32 - 40) = 0;
        *(v32 - 32) = 0;
        *(v32 - 24) = 0;
        *(v32 - 40) = *(v27 + 56);
        *(v32 - 24) = *(v27 + 72);
        *(v27 + 56) = 0;
        *(v27 + 64) = 0;
        *(v27 + 72) = 0;
        v34 = *(v27 + 80);
        *(v32 - 11) = *(v27 + 85);
        *(v32 - 16) = v34;
        v35 = vdupq_laneq_s64(v82, 1);
        v82 = vaddq_s64(v82, xmmword_241A658E0);
        v35.i64[0] = vaddq_s64(v35, v82).u64[0];
        v36 = (*(*(&v80 + 1) + 8 * (v35.i64[0] / 0x2AuLL)) + 96 * (v35.i64[0] % 0x2AuLL));
        v37 = v36[7];
        if (!v37)
        {
          goto LABEL_39;
        }

LABEL_38:
        v36[8] = v37;
        operator delete(v37);
LABEL_39:
        v39 = v36[4];
        if (v39)
        {
          v36[5] = v39;
          operator delete(v39);
        }

        v40 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        v41 = v82;
        --v82.i64[1];
        if (v81 == *(&v80 + 1))
        {
          v40 = 0;
        }

        if ((v40 - (v41.i64[1] + v41.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v81 - 8));
          *&v81 = v81 - 8;
        }

        goto LABEL_9;
      }

      v38 = *(v27 + 16);
      if ((a5 & 0x20) != 0 && v38 == a2 || (a5 & 0x1000) != 0 && v38 != v75)
      {
        goto LABEL_37;
      }

      v49 = v38 - *(v27 + 8);
      v50 = v76;
      if (v76 <= v49)
      {
        v50 = v49;
      }

      if (v77)
      {
        v49 = v50;
      }

      if (v49 == v25)
      {
        v51 = *(&v80 + 1);
        v52 = v81;
        if (v81 == *(&v80 + 1))
        {
          v82.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v80 + 1) + 8 * (v82.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v82.i64[0] % 0x2AuLL));
          v55 = *(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0]) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v80 + 1);
            v52 = v81;
          }

          v82.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v80 + 1) + 8);
              *(&v80 + 1) = v51;
              v64 = (v81 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_86:
          v82.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_86;
        }

        v77 = 1;
        v76 = v25;
        goto LABEL_9;
      }

      v76 = v49;
      v59 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
      v63 = v82;
      --v82.i64[1];
      if (v81 == *(&v80 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v81 - 8));
        *&v81 = v81 - 8;
      }

      v77 = 1;
    }

    else
    {
      if (v29 <= -993)
      {
        if (v29 == -994)
        {
          goto LABEL_9;
        }

        if (v29 != -993)
        {
          goto LABEL_105;
        }

LABEL_37:
        v36 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
        v37 = v36[7];
        if (v37)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v29 == -992)
      {
        *&v42 = 0xAAAAAAAAAAAAAAAALL;
        *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v79[64] = v42;
        *&v79[80] = v42;
        *&v79[32] = v42;
        *&v79[48] = v42;
        *v79 = v42;
        *&v79[16] = v42;
        std::__state<char>::__state(v79, v27);
        (*(**(v27 + 80) + 24))(*(v27 + 80), 1, v27);
        (*(**&v79[80] + 24))(*&v79[80], 0, v79);
        v43 = *(&v80 + 1);
        if (v81 == *(&v80 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        }

        v45 = v82.i64[1] + v82.i64[0];
        if (v44 == v82.i64[1] + v82.i64[0])
        {
          std::deque<std::__state<char>>::__add_back_capacity(&v80);
          v43 = *(&v80 + 1);
          v45 = v82.i64[1] + v82.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v79[16];
        *v46 = *v79;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v79[32];
        *(v46 + 48) = *&v79[48];
        memset(&v79[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *&v79[56];
        *(v46 + 72) = *&v79[72];
        memset(&v79[56], 0, 24);
        v48 = *&v79[80];
        *(v46 + 85) = *&v79[85];
        *(v46 + 80) = v48;
        ++v82.i64[1];
        if (*&v79[56])
        {
          *&v79[64] = *&v79[56];
          operator delete(*&v79[56]);
        }

        if (*&v79[32])
        {
          *&v79[40] = *&v79[32];
          operator delete(*&v79[32]);
        }
      }

      else if (v29 != -991)
      {
        goto LABEL_105;
      }
    }

LABEL_9:
    v17 = v82.i64[1];
  }

  while (v82.i64[1]);
  if (v77)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v76;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v80 + 1);
    v69 = v81;
    v82.i64[1] = 0;
    v70 = (v81 - *(&v80 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_91:
  v67 = 0;
  v68 = *(&v80 + 1);
  v69 = v81;
  v82.i64[1] = 0;
  v70 = (v81 - *(&v80 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_93;
  }

  do
  {
LABEL_92:
    operator delete(*v68);
    v69 = v81;
    v68 = (*(&v80 + 1) + 8);
    *(&v80 + 1) = v68;
    v70 = (v81 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_93:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_97:
    v82.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_97;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v81 != *(&v80 + 1))
    {
      *&v81 = v81 + ((*(&v80 + 1) - v81 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v80)
  {
    operator delete(v80);
  }

  return v67;
}