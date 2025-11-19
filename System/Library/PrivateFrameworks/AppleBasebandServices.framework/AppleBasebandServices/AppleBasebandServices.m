void Timestamp::Timestamp(Timestamp *this)
{
  v15 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v12 = 0uLL;
  if ((gettimeofday(&v12, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v10 = __error();
  v11 = strerror(*v10);
  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_240152000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v12;
  v9 = *MEMORY[0x277D85DE8];
}

void Timestamp::Timestamp(Timestamp *this, const Timestamp **a2)
{
  *(this + 1) = 0;
  v3 = this + 8;
  *(this + 2) = 0;
  *this = this + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    while (1)
    {
      v6 = *(v5 + 8);
      v8 = *this;
      v7 = *(this + 1);
      v9 = v3;
      if (*this != v3)
      {
        v10 = *(this + 1);
        v11 = v3;
        if (v7)
        {
          do
          {
            v9 = v10;
            v10 = *(v10 + 1);
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = *(v11 + 2);
            v12 = *v9 == v11;
            v11 = v9;
          }

          while (v12);
        }

        if (*(v9 + 8) >= v6)
        {
          break;
        }
      }

      if (v7)
      {
        v13 = v9;
      }

      else
      {
        v13 = v3;
      }

      if (v7)
      {
        v14 = v9 + 8;
      }

      else
      {
        v14 = v3;
      }

      if (!*v14)
      {
        goto LABEL_25;
      }

LABEL_28:
      v19 = *(v5 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v5 + 2);
          v12 = *v20 == v5;
          v5 = v20;
        }

        while (!v12);
      }

      v5 = v20;
      if (v20 == v4)
      {
        return;
      }
    }

    v14 = v3;
    v13 = v3;
    if (v7)
    {
      v15 = *(this + 1);
      while (1)
      {
        while (1)
        {
          v13 = v15;
          v16 = *(v15 + 32);
          if (v16 <= v6)
          {
            break;
          }

          v15 = *v13;
          v14 = v13;
          if (!*v13)
          {
            goto LABEL_25;
          }
        }

        if (v16 >= v6)
        {
          goto LABEL_28;
        }

        v15 = *(v13 + 1);
        if (!v15)
        {
          v14 = v13 + 8;
          break;
        }
      }
    }

LABEL_25:
    v17 = operator new(0x38uLL);
    v18 = *(v5 + 2);
    v17[6] = *(v5 + 6);
    *(v17 + 2) = v18;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v13;
    *v14 = v17;
    if (*v8)
    {
      *this = *v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v17);
    ++*(this + 2);
    goto LABEL_28;
  }
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t **a1, __n128 *a2, int a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = *(v8 + 1);
      if (!v6)
      {
        v7 = v8 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 40) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v29 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v24 + 1) = 0xAAAAAAAA00000000;
  memset(&v25, 0, sizeof(v25));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v25))
  {
    v25.tm_isdst = -1;
    *&v24 = mktime(&v25);
    if (v24 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 136315138;
      v28 = v21;
      _os_log_error_impl(&dword_240152000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v24 = 0uLL;
      if ((gettimeofday(&v24, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v24 = 0uLL;
      if ((gettimeofday(&v24, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v28 = v9;
    v10 = MEMORY[0x277D86220];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240152000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v24 = 0uLL;
  if (gettimeofday(&v24, 0) < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = __error();
    v23 = strerror(*v22);
    *buf = 136315138;
    v28 = v23;
    v10 = MEMORY[0x277D86220];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_240152000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  v14 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v14 = v12;
        v15 = *(v12 + 32);
        if (v15 <= a4)
        {
          break;
        }

        v12 = *v14;
        v13 = v14;
        if (!*v14)
        {
          goto LABEL_22;
        }
      }

      if (v15 >= a4)
      {
        break;
      }

      v12 = v14[1];
      if (!v12)
      {
        v13 = v14 + 1;
        goto LABEL_22;
      }
    }

    *(v14 + 5) = v24;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v16 = operator new(0x38uLL);
    *(v16 + 8) = a4;
    *(v16 + 5) = 0;
    *(v16 + 6) = 0;
    *v16 = 0;
    *(v16 + 1) = 0;
    *(v16 + 2) = v14;
    *v13 = v16;
    v17 = **a1;
    if (v17)
    {
      *a1 = v17;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v16);
    a1[2] = (a1[2] + 1);
    *(v16 + 40) = v24;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_240153500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(*v24);
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v6;
  v63 = v6;
  v62 = v6;
  v61 = v6;
  v60 = v6;
  v59 = v6;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v56 = v6;
  v55 = v6;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v52 = v6;
  *__p = v6;
  v50 = v6;
  v49 = v6;
  v48 = v6;
  v47 = v6;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v58 = 0;
  v7 = MEMORY[0x277D82890] + 104;
  v54 = MEMORY[0x277D82890] + 104;
  v8 = MEMORY[0x277D82890] + 64;
  v46 = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v44 = *(MEMORY[0x277D82818] + 16);
  *(&v44 + *(v44 - 24)) = v10;
  v45 = 0;
  v11 = (&v44 + *(v44 - 24));
  std::ios_base::init(v11, &v47);
  v12 = MEMORY[0x277D82890] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v9[5];
  v46 = v9[4];
  *(&v46 + *(v46 - 24)) = v13;
  v44 = v9[1];
  *(&v44 + *(v44 - 24)) = v9[6];
  v54 = v7;
  v44 = v12;
  v14 = MEMORY[0x277D82868] + 16;
  v46 = v8;
  *&v47 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CBACB0](&v47 + 8);
  v50 = 0uLL;
  __p[0] = 0;
  v15 = MEMORY[0x277D82878] + 16;
  __p[1] = 0;
  *&v52 = 0;
  LODWORD(v53) = 24;
  *&v47 = MEMORY[0x277D82878] + 16;
  *&v48 = __p;
  *(&v48 + 1) = __p;
  v49 = __p;
  *(&v52 + 1) = __p;
  v16 = v9;
  std::string::append(__p, 0x16uLL, 0);
  v17 = BYTE7(v52);
  if (SBYTE7(v52) < 0)
  {
    v17 = __p[1];
  }

  *(&v49 + 1) = __p;
  *&v50 = __p;
  *(&v50 + 1) = __p + v17;
  v20 = *(a1 + 8);
  v19 = a1 + 8;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = v19;
  do
  {
    if (*(v18 + 32) >= a2)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 32) < a2));
  }

  while (v18);
  if (v21 == v19)
  {
LABEL_12:
    v23 = 0;
    v24 = 0;
    v22 = a4;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = a4;
    if (*(v21 + 32) > a2)
    {
      v23 = 0;
      v24 = 0;
      if ((a3 & 0x11) == 0)
      {
        goto LABEL_21;
      }

LABEL_13:
      v42.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v43 = v24;
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v42.tm_mon = v25;
      *&v42.tm_isdst = v25;
      *&v42.tm_sec = v25;
      localtime_r(&v43, &v42);
      v68 = 0u;
      v69 = 0u;
      *__s = 0u;
      v67 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v26 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v26 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v26, &v42);
      v27 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, __s, v27);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "-", 1);
        v28 = v46;
        v29 = &v46 + *(v46 - 24);
        if (*(v29 + 36) == -1)
        {
          std::ios_base::getloc((&v46 + *(v46 - 24)));
          v30 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
          (v30->__vftable[2].~facet_0)(v30, 32);
          std::locale::~locale(&v65);
          v28 = v46;
        }

        *(v29 + 36) = 48;
        *(&v48 + *(v28 - 24)) = 3;
        MEMORY[0x245CBAC30](&v46, (v23 / 1000));
      }

      goto LABEL_26;
    }

    v24 = *(v21 + 40);
    v23 = *(v21 + 48);
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_21:
  MEMORY[0x245CBAC40](&v46, v24);
  if ((a3 & 4) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_26;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ".", 1);
    v23 = (v23 / 1000);
  }

  MEMORY[0x245CBAC30](&v46, v23);
LABEL_26:
  if ((v53 & 0x10) != 0)
  {
    v32 = &v49 + 1;
    v33 = *(&v52 + 1);
    if (*(&v52 + 1) < v50)
    {
      *(&v52 + 1) = v50;
      v33 = v50;
    }
  }

  else
  {
    if ((v53 & 8) == 0)
    {
      v31 = 0;
      v22[23] = 0;
      goto LABEL_41;
    }

    v32 = &v48;
    v33 = v49;
  }

  v34 = *v32;
  v31 = v33 - *v32;
  if (v31 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v31 | 7) + 1;
    }

    v36 = operator new(v35);
    *(v22 + 1) = v31;
    *(v22 + 2) = v35 | 0x8000000000000000;
    *v22 = v36;
    v22 = v36;
    goto LABEL_40;
  }

  v22[23] = v31;
  if (v31)
  {
LABEL_40:
    memmove(v22, v34, v31);
  }

LABEL_41:
  v22[v31] = 0;
  v44 = *v16;
  v37 = v16[9];
  *(&v44 + *(v44 - 24)) = v16[8];
  v46 = v37;
  *&v47 = v15;
  if (SBYTE7(v52) < 0)
  {
    operator delete(__p[0]);
  }

  *&v47 = v14;
  std::locale::~locale(&v47 + 1);
  std::iostream::~basic_iostream();
  result = MEMORY[0x245CBAD00](&v54);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240153CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  MEMORY[0x245CBAD00](a12);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
LABEL_14:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v1);
      return 0;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 == &v8[1] || *(v2 + 8) > 0)
  {
    goto LABEL_14;
  }

  v6 = v2[5];
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v1);
  return v6;
}

void sub_240153E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C9AC18, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(*a1);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x245CBAC10](v23, a1);
  if (LOBYTE(v23[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
      v9 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
      v10 = a2 + a3;
      if ((v8 & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = a2 + a3;
      if ((*(v6 + 2) & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v11 - a2 < 1 || (*(*v7 + 96))(v7, a2, v11 - a2) == v11 - a2)
    {
      if (v16 >= 1)
      {
        memset(__b, 170, sizeof(__b));
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 >= 0x17)
        {
          if ((v16 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v16 | 7) + 1;
          }

          v17 = operator new(v18);
          __b[1].__locale_ = v16;
          __b[2].__locale_ = (v18 | 0x8000000000000000);
          __b[0].__locale_ = v17;
        }

        else
        {
          HIBYTE(__b[2].__locale_) = v16;
          v17 = __b;
        }

        memset(v17, v9, v16);
        *(v17 + v16) = 0;
        if (SHIBYTE(__b[2].__locale_) >= 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v20 = (*(*v7 + 96))(v7, locale, v16);
        if (SHIBYTE(__b[2].__locale_) < 0)
        {
          v21 = v20;
          operator delete(__b[0].__locale_);
          if (v21 != v16)
          {
            goto LABEL_35;
          }
        }

        else if (v20 != v16)
        {
          goto LABEL_35;
        }
      }

      if (v10 - v11 < 1 || (*(*v7 + 96))(v7, v11, v10 - v11) == v10 - v11)
      {
        *(v6 + 3) = 0;
        goto LABEL_36;
      }
    }

LABEL_35:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
  }

LABEL_36:
  MEMORY[0x245CBAC20](v23);
  return a1;
}

void sub_24015473C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x245CBAC20](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x240154710);
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_280C065E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C065E0))
  {
    qword_280C065E8 = 0;
    unk_280C065F0 = 0;
    __cxa_guard_release(&qword_280C065E0);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
  }

  return &qword_280C065E8;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

const char *diag::config::toString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_278C9AC60[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278C9AC88[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278C9ACA0[a1];
  }
}

const char *diag::config::toStringCompact(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_278C9ACB8[a1];
  }
}

BOOL diag::config::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

uint64_t diag::config::asEnum(uint64_t a1, _DWORD *a2)
{
  v7 = 4;
  strcpy(v6, "none");
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (!strcasecmp(v3, v6))
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    v7 = 5;
    strcpy(v6, "reset");
    if (!strcasecmp(v3, v6))
    {
      *a2 = 1;
      return 1;
    }

    else
    {
      v7 = 11;
      strcpy(v6, "reconfigure");
      v4 = strcasecmp(v3, v6);
      result = 0;
      if (!v4)
      {
        *a2 = 2;
        return 1;
      }
    }
  }

  return result;
}

BOOL diag::config::getShouldAlwaysFilter(diag::config *this)
{
  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  return ((IsCarrierBuild | IsInternalBuild | TelephonyUtilIsVendorBuild()) & 1) == 0;
}

uint64_t support::fs::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "_wireless");
  }

  else if (result)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "mobile");
  }

  return result;
}

uint64_t support::fs::updateOwner(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        support::fs::readDir(v5, &v58);
        v20 = v58;
        v54 = v59;
        if (v58 == v59)
        {
          updated = 0;
          if (v58)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v58 + 24);
        while (1)
        {
          memset(&v57, 170, sizeof(v57));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v57, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v57.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v57.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = *(v5 + 23);
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          v29 = *v5;
          if (v24 >= 0)
          {
            v30 = v5;
          }

          else
          {
            v30 = *v5;
          }

          memmove(p_dst, v30, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v57;
          }

          else
          {
            v31 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__dst, v31, size);
          v34 = *&v33->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v35 == 1)
              {
                if (v57.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v35 == 2 && LOWORD(v57.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v57.__r_.__value_.__l.__size_ == 1)
          {
            if (*v57.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v57.__r_.__value_.__l.__size_ == 2 && *v57.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v36;
          *__dst.st_qspare = v36;
          __dst.st_birthtimespec = v36;
          *&__dst.st_size = v36;
          __dst.st_mtimespec = v36;
          __dst.st_ctimespec = v36;
          *&__dst.st_uid = v36;
          __dst.st_atimespec = v36;
          *&__dst.st_dev = v36;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v47 = &__p) : (v47 = __p.__r_.__value_.__r.__words[0]), (v48 = opendir(v47), (v49 = v48) == 0) || (v50 = readdir(v48), closedir(v49), !v50)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p.__r_.__value_.__r.__words[0];
            }

            v39 = strlen(v38);
            if (v39 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v40 = v39;
            if (v39 >= 0x17)
            {
              if ((v39 | 7) == 0x17)
              {
                v42 = 25;
              }

              else
              {
                v42 = (v39 | 7) + 1;
              }

              v41 = operator new(v42);
              __dst.st_ino = v40;
              *&__dst.st_uid = v42 | 0x8000000000000000;
              *&__dst.st_dev = v41;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v39;
              v41 = &__dst;
              if (!v39)
              {
LABEL_84:
                v41[v40] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v44 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v45 = &__dst;
                }

                else
                {
                  v45 = *&__dst.st_dev;
                }

                updated = chown(v45, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v46 = v44;
LABEL_89:
                  operator delete(v46);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v41, v38, v40);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = __p;
          }

          updated = support::fs::updateOwner(&v55, a2, a3);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            v46 = v55.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v57.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v54)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v58;
            if (!v58)
            {
              return updated;
            }

LABEL_108:
            v51 = v59;
            v15 = v20;
            if (v59 != v20)
            {
              do
              {
                v52 = *(v51 - 1);
                v51 -= 3;
                if (v52 < 0)
                {
                  operator delete(*v51);
                }
              }

              while (v51 != v20);
              v15 = v58;
            }

            v59 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::isDir(const char *a1)
{
  v1 = a1;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v2;
  *v7.st_qspare = v2;
  v7.st_birthtimespec = v2;
  *&v7.st_size = v2;
  v7.st_mtimespec = v2;
  v7.st_ctimespec = v2;
  *&v7.st_uid = v2;
  v7.st_atimespec = v2;
  *&v7.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v7))
  {
    return 0;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  result = opendir(v4);
  if (result)
  {
    v5 = result;
    v6 = readdir(result);
    closedir(v5);
    return (v6 != 0);
  }

  return result;
}

BOOL support::fs::chown(const char *a1, uid_t a2, gid_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chown(a1, a2, a3) == 0;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          v10 = __dst[23];
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            *&v9->__r_.__value_.__l.__data_ = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((v10 & 0x80) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        v12 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        v13 = __dst[23];
        *(a2 + 8) = v12;
        if (v13 < 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_240155378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_12;
  }

  HIBYTE(__p[2]) = 6;
  strcpy(__p, "mobile");
  v5 = getpwnam(__p);
  if (!v5)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_280C06600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C06600))
    {
      qword_280C06608 = 0;
      qword_280C06610 = 0;
      __cxa_guard_release(&qword_280C06600);
    }

    if (_MergedGlobals_0 != -1)
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
    }

    v7 = qword_280C06610;
    if (os_log_type_enabled(qword_280C06610, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_240152000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
LABEL_11:
      operator delete(__p[0]);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

LABEL_4:
  *a2 = v5->pw_uid;
  *a3 = v5->pw_gid;
  result = 1;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::fs::writeToCompletion(support::fs *this, char *__buf, size_t __nbyte)
{
  v4 = this;
  do
  {
    v5 = __nbyte;
    if (!__nbyte)
    {
      break;
    }

    v6 = write(v4, __buf, __nbyte);
    __nbyte = v5 - v6;
    __buf += v6;
  }

  while ((v6 & 0x8000000000000000) == 0);
  return v5 == 0;
}

BOOL support::fs::writeToCompletion(FILE *__stream, __sFILE *__ptr, size_t __nitems)
{
  while (1)
  {
    v5 = __nitems;
    if (!__nitems)
    {
      break;
    }

    v6 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __nitems = v5 - v6;
    __ptr = (__ptr + v6);
    if (!v6)
    {
      return v5 == 0;
    }
  }

  fflush(__stream);
  return 1;
}

uint64_t support::fs::openFile(const char *a1, int a2, uint64_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, a2, a3);
}

BOOL support::fs::closeFile(support::fs *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while (v2 && *__error() == 4);
  return v2 == 0;
}

BOOL support::fs::copyFile(const char *a1, const char *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = strlen(v6);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *&__dst[8] = v8;
    *&__dst[16] = v10 | 0x8000000000000000;
    *__dst = v9;
    goto LABEL_12;
  }

  __dst[23] = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_12:
    memmove(v9, v6, v8);
  }

  v9[v8] = 0;
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v12 = open(v11, 0, 420);
  v13 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    if ((atomic_load_explicit(&qword_280C06600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C06600))
    {
      qword_280C06608 = 0;
      qword_280C06610 = 0;
      __cxa_guard_release(&qword_280C06600);
    }

    if (_MergedGlobals_0 == -1)
    {
      v18 = qword_280C06610;
      if (!os_log_type_enabled(qword_280C06610, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v19 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v18 = qword_280C06610;
      if (!os_log_type_enabled(qword_280C06610, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }

    if (a1[23] >= 0)
    {
      v31 = a1;
    }

    else
    {
      v31 = *a1;
    }

    *__dst = 136315138;
    *&__dst[4] = v31;
    _os_log_error_impl(&dword_240152000, v18, OS_LOG_TYPE_ERROR, "Failed to open the source file %s", __dst, 0xCu);
    goto LABEL_29;
  }

  operator delete(*__dst);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&__dst[8] = v16;
    *&__dst[16] = v20 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_34;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_34:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  if (__dst[23] >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = *__dst;
  }

  v22 = open(v21, 1541, 420);
  v23 = v22;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_40:
    memset(__dst, 170, sizeof(__dst));
    v24 = read(v13, __dst, 0x400uLL);
    if (v24 < 1)
    {
LABEL_46:
      v19 = v24 == 0;
      if (!v24 && a3)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[112] = v27;
        *&__dst[128] = v27;
        *&__dst[80] = v27;
        *&__dst[96] = v27;
        *&__dst[48] = v27;
        *&__dst[64] = v27;
        *&__dst[16] = v27;
        *&__dst[32] = v27;
        *__dst = v27;
        if (fstat(v13, __dst))
        {
          v19 = 0;
        }

        else
        {
          v19 = fchmod(v23, *&__dst[4]) == 0;
        }
      }
    }

    else
    {
      v25 = __dst;
      do
      {
        while (!v24)
        {
          memset(__dst, 170, sizeof(__dst));
          v24 = read(v13, __dst, 0x400uLL);
          v25 = __dst;
          if (v24 <= 0)
          {
            goto LABEL_46;
          }
        }

        v26 = write(v23, v25, v24);
        v24 -= v26;
        v25 += v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
      v19 = 0;
    }

      ;
    }

    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_280C06600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C06600))
  {
    qword_280C06608 = 0;
    qword_280C06610 = 0;
    __cxa_guard_release(&qword_280C06600);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
    v28 = qword_280C06610;
    if (!os_log_type_enabled(qword_280C06610, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

LABEL_67:
    if (a2[23] >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    *__dst = 136315138;
    *&__dst[4] = v32;
    _os_log_error_impl(&dword_240152000, v28, OS_LOG_TYPE_ERROR, "Failed to open the destination file %s", __dst, 0xCu);
    goto LABEL_54;
  }

  v28 = qword_280C06610;
  if (os_log_type_enabled(qword_280C06610, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_67;
  }

LABEL_54:
  v19 = 0;
LABEL_58:
    ;
  }

LABEL_60:
  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_240155BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::loadFile(uint64_t *a1, char **a2)
{
  v19[89] = *MEMORY[0x277D85DE8];
  memset(v19, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v19, a1);
  if (v19[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v19[88], std::istream::seekg(), v4) && !*(&v19[4] + *(v19[0] - 24)))
  {
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v4 - v10;
    if (v4 <= v10)
    {
      if (v4 < v10)
      {
        a2[1] = &v9[v4];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v4 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v4)
        {
          v14 = v4;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v4 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v4];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    v18 = *a2;
    std::istream::read();
    v5 = v19[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v19[0] = *MEMORY[0x277D82808];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x245CBABA0](&v19[2]);
  std::istream::~istream();
  MEMORY[0x245CBAD00](&v19[53]);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x245CBAB90](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2401560A0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x245CBAD00](v1);
  _Unwind_Resume(a1);
}

BOOL support::fs::getFileSize(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v6;
    std::istream::seekg();
  }

  result = v2 != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v9[89] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    memset(v9, 170, 0x240uLL);
    std::ifstream::basic_ifstream(v9, a1);
    v5 = v9[17] != 0;
    if (v9[17])
    {
      std::istream::tellg();
      std::istream::seekg();
      std::istream::tellg();
      *a2 = v9[88];
      std::istream::seekg();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v9 + *(v9[0] - 24)), *(&v9[4] + *(v9[0] - 24)) | 4);
      }
    }

    v9[0] = *MEMORY[0x277D82808];
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x245CBABA0](&v9[2]);
    std::istream::~istream();
    MEMORY[0x245CBAD00](&v9[53]);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = 0;
    v8 = *MEMORY[0x277D85DE8];
  }

  return v5;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x245CBABA0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x245CBAD00](a1 + 53);
  return a1;
}

uint64_t support::fs::loadFile(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fseek(v3, 0, 2) || (v6 = MEMORY[0x245CBAF00](v4), v6 == -1))
  {
    v5 = 0;
  }

  else
  {
    v7 = v6;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v7 - v10;
    if (v7 <= v10)
    {
      if (v7 < v10)
      {
        a2[1] = &v9[v7];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v7 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = v7;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v7 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v7];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    rewind(v4);
    v18 = *a2;
    v5 = 1;
    fread(v18, v7, 1uLL, v4);
  }

  fclose(v4);
  return v5;
}

BOOL support::fs::fileExists(const char *a1)
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

  return stat(a1, &v3) == 0;
}

void support::fs::createUniqueFilename(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v241[32] = v3;
  *v241 = v3;
  *&v241[16] = v3;
  *&v240[0].__locale_ = v3;
  MEMORY[0x245CBACB0](v240);
  v240[1].__locale_ = std::locale::use_facet(v240, MEMORY[0x277D82680]);
  *v241 = std::locale::use_facet(v240, MEMORY[0x277D826A0]);
  memset(&v241[8], 0, 40);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(v240, "^([/_\\-[:alnum:]]*)(.*)", "") != "")
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  memset(&v239, 170, sizeof(v239));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, *a1, *(a1 + 8));
  }

  else
  {
    v239 = *a1;
  }

  v224 = 0;
  v223 = a1;
  v236 = &v244[24];
  while (1)
  {
    v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v242.st_blksize = v4;
    *v242.st_qspare = v4;
    v242.st_birthtimespec = v4;
    *&v242.st_size = v4;
    v242.st_mtimespec = v4;
    v242.st_ctimespec = v4;
    *&v242.st_uid = v4;
    v242.st_atimespec = v4;
    *&v242.st_dev = v4;
    if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v239;
    }

    else
    {
      v5 = v239.__r_.__value_.__r.__words[0];
    }

    if (stat(v5, &v242))
    {
      *a2 = v239;
      goto LABEL_400;
    }

    if (!std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a1, v240))
    {
      break;
    }

    memset(__p, 170, 24);
    std::to_string(&v243, ++v224);
    v6 = std::string::insert(&v243, 0, "$1-", 3uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    *&v242.st_uid = *(&v6->__r_.__value_.__l + 2);
    *&v242.st_dev = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    st_gid_high = SHIBYTE(v242.st_gid);
    if ((SHIBYTE(v242.st_gid) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v242.st_gid) - 21) >= 2)
      {
        v19 = &v242;
        *(&v242.st_dev + SHIBYTE(v242.st_gid)) = 12836;
        v20 = st_gid_high + 2;
        if (SHIBYTE(v242.st_gid) < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v9 = SHIBYTE(v242.st_gid) + 2;
      v10 = &v242;
      v11 = 22;
LABEL_17:
      v12 = 2 * v11;
      if (v9 > 2 * v11)
      {
        v12 = v9;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v14 = v13;
      }

      else
      {
        v14 = 23;
      }

      v15 = v11 == 22;
      goto LABEL_26;
    }

    st_gid_high = v242.st_ino;
    v11 = (*&v242.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - v242.st_ino >= 2)
    {
      v19 = *&v242.st_dev;
      *(*&v242.st_dev + v242.st_ino) = 12836;
      v20 = st_gid_high + 2;
      if (SHIBYTE(v242.st_gid) < 0)
      {
LABEL_34:
        v242.st_ino = v20;
        goto LABEL_35;
      }

LABEL_32:
      HIBYTE(v242.st_gid) = v20 & 0x7F;
LABEL_35:
      v18 = v19 + v20;
      goto LABEL_36;
    }

    v9 = v242.st_ino + 2;
    if (0x7FFFFFFFFFFFFFF7 - (*&v242.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v242.st_ino + 2 - v11)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = *&v242.st_dev;
    if (v11 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_17;
    }

    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFF7;
LABEL_26:
    v16 = operator new(v14);
    v17 = v16;
    if (st_gid_high)
    {
      memmove(v16, v10, st_gid_high);
    }

    *&v17[st_gid_high] = 12836;
    if (!v15)
    {
      operator delete(v10);
    }

    v242.st_ino = v9;
    *&v242.st_uid = v14 | 0x8000000000000000;
    *&v242.st_dev = v17;
    v18 = &v17[v9];
    a1 = v223;
LABEL_36:
    *v18 = 0;
    *__p = *&v242.st_dev;
    __p[2] = *&v242.st_uid;
    memset(&v242, 0, 24);
    if ((v244[7] & 0x80000000) != 0)
    {
      operator delete(v243);
    }

    memset(&v237, 0, sizeof(v237));
    v21 = *(a1 + 23);
    if (v21 >= 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = *a1;
    }

    if (v21 >= 0)
    {
      v23 = *(a1 + 23);
    }

    else
    {
      v23 = *(a1 + 8);
    }

    v24 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v24 = __p[0];
    }

    __s = v24;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v242.st_gen = v25;
    v242.st_size = 0xAAAAAAAAAAAAAAAALL;
    v242.st_ctimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *(&v242.st_rdev + 1) = -1431655766;
    *&v242.st_dev = v22;
    v242.st_ino = v22 + v23;
    *&v242.st_uid = v240;
    v242.st_rdev = 0;
    memset(&v242.st_birthtimespec, 0, 17);
    memset(&v242.st_blocks, 0, 17);
    LOBYTE(v242.st_qspare[0]) = 0;
    v242.st_qspare[1] = 0;
    memset(&v242.st_atimespec, 0, 40);
    v26 = v236;
    *(v236 + 2) = v25;
    v26[3] = v25;
    *v26 = v25;
    v26[1] = v25;
    v245 = 0uLL;
    v246 = 0;
    v247 = 0uLL;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v243 = 0u;
    memset(v244, 0, 25);
    std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v240, v22, (v22 + v23), &v243, 0);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v242.st_atimespec, v22, v22 + v23, &v243, 0);
    if (v243)
    {
      operator delete(v243);
    }

    tv_sec = v242.st_atimespec.tv_sec;
    if (v242.st_atimespec.tv_nsec != v242.st_atimespec.tv_sec)
    {
      v228 = strlen(__s);
      v28 = &__s[v228];
      while (1)
      {
        v29 = v242.st_birthtimespec.tv_sec;
        tv_nsec = v242.st_birthtimespec.tv_nsec;
        while (v29 != tv_nsec)
        {
          v34 = *v29;
          if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (HIBYTE(v237.__r_.__value_.__r.__words[2]) != 22)
            {
              size = HIBYTE(v237.__r_.__value_.__r.__words[2]);
              *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
              v32 = &v237;
              goto LABEL_54;
            }

            v35 = &v237;
            size = 22;
LABEL_62:
            if (size + 1 > 2 * size)
            {
              v36 = size + 1;
            }

            else
            {
              v36 = 2 * size;
            }

            if ((v36 | 7) == 0x17)
            {
              v37 = 25;
            }

            else
            {
              v37 = (v36 | 7) + 1;
            }

            if (v36 >= 0x17)
            {
              v38 = v37;
            }

            else
            {
              v38 = 23;
            }

            v39 = size == 22;
            goto LABEL_72;
          }

          size = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v237.__r_.__value_.__l.__size_ == size)
          {
            if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v35 = v237.__r_.__value_.__r.__words[0];
            if (size < 0x3FFFFFFFFFFFFFF3)
            {
              goto LABEL_62;
            }

            v39 = 0;
            v38 = 0x7FFFFFFFFFFFFFF7;
LABEL_72:
            v40 = operator new(v38);
            v32 = v40;
            if (size)
            {
              memmove(v40, v35, size);
            }

            if (!v39)
            {
              operator delete(v35);
            }

            v237.__r_.__value_.__r.__words[0] = v32;
            v237.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
            goto LABEL_78;
          }

          size = v237.__r_.__value_.__l.__size_;
          v32 = v237.__r_.__value_.__r.__words[0];
LABEL_78:
          v237.__r_.__value_.__l.__size_ = size + 1;
LABEL_54:
          v33 = v32 + size;
          *v33 = v34;
          v33[1] = 0;
          ++v29;
        }

        if (v228)
        {
          break;
        }

LABEL_241:
        st_blocks = v242.st_blocks;
        v229 = *&v242.st_blksize;
        st_rdev = v242.st_rdev;
        v120 = v242.st_rdev | 0x800;
        v242.st_rdev |= 0x800u;
        p_tv_nsec = &v242.st_mtimespec.tv_nsec;
        if (v242.st_atimespec.tv_nsec != v242.st_atimespec.tv_sec)
        {
          p_tv_nsec = v242.st_atimespec.tv_sec;
        }

        p_st_ctimespec = (v242.st_atimespec.tv_sec + 8);
        if (v242.st_atimespec.tv_nsec == v242.st_atimespec.tv_sec)
        {
          p_st_ctimespec = &v242.st_ctimespec;
        }

        v123 = p_st_ctimespec->tv_sec;
        st_ino = v242.st_ino;
        if (*p_tv_nsec != p_st_ctimespec->tv_sec)
        {
          v235 = p_st_ctimespec->tv_sec;
          v125 = v236;
          goto LABEL_247;
        }

        v150 = v236;
        if (v242.st_ino == v123)
        {
          if (v242.st_atimespec.tv_sec)
          {
            operator delete(v242.st_atimespec.tv_sec);
          }

          goto LABEL_312;
        }

        v151 = *&v242.st_uid;
        *&v152 = 0xAAAAAAAAAAAAAAAALL;
        *(&v152 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *(v236 + 2) = v152;
        v150[3] = v152;
        *v150 = v152;
        v150[1] = v152;
        v245 = 0uLL;
        v246 = 0;
        v247 = 0uLL;
        v248 = 0;
        v249 = 0;
        v250 = 0;
        v243 = 0u;
        memset(v244, 0, 25);
        v235 = v123;
        v153 = st_ino;
        v234 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v151, v123, st_ino, &v243, st_rdev | 0x860u);
        v154 = v245.i64[0];
        v155 = *(&v243 + 1) - v243;
        v156 = 0xAAAAAAAAAAAAAAABLL * ((*(&v243 + 1) - v243) >> 3);
        v157 = v242.st_atimespec.tv_sec;
        v158 = v242.st_atimespec.tv_nsec;
        v159 = v242.st_atimespec.tv_nsec - v242.st_atimespec.tv_sec;
        v160 = 0xAAAAAAAAAAAAAAABLL * ((v242.st_atimespec.tv_nsec - v242.st_atimespec.tv_sec) >> 3);
        v161 = v156 - v160;
        if (v156 <= v160)
        {
          if (v156 < v160)
          {
            v158 = v242.st_atimespec.tv_sec + v155;
            v242.st_atimespec.tv_nsec = v242.st_atimespec.tv_sec + v155;
          }

          v168 = v235;
          v125 = v236;
          if (v158 == v242.st_atimespec.tv_sec)
          {
            goto LABEL_283;
          }

          goto LABEL_316;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v242.st_mtimespec.tv_sec - v242.st_atimespec.tv_nsec) >> 3) < v161)
        {
          v232 = v245.i64[0];
          if (v156 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v162 = 0x5555555555555556 * ((v242.st_mtimespec.tv_sec - v242.st_atimespec.tv_sec) >> 3);
          if (v162 <= v156)
          {
            v162 = 0xAAAAAAAAAAAAAAABLL * ((*(&v243 + 1) - v243) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v242.st_mtimespec.tv_sec - v242.st_atimespec.tv_sec) >> 3) >= 0x555555555555555)
          {
            v163 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v163 = v162;
          }

          if (v163 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v164 = operator new(24 * v163);
          v165 = &v164[24 * v161 + v159];
          v166 = 24 * v156 - 24 * v160;
          v167 = &v164[v159];
          v168 = v235;
          v125 = v236;
          do
          {
            *v167 = 0;
            *(v167 + 1) = 0;
            v167[16] = 0;
            v167 += 24;
            v166 -= 24;
          }

          while (v166);
          if (v157 != v158)
          {
            v169 = v157;
            v170 = v164;
            do
            {
              v171 = *v169;
              *(v170 + 2) = *(v169 + 2);
              *v170 = v171;
              v170 += 24;
              v169 += 24;
            }

            while (v169 != v158);
          }

          v242.st_atimespec.tv_sec = v164;
          v242.st_atimespec.tv_nsec = &v164[24 * v161 + v159];
          v242.st_mtimespec.tv_sec = &v164[24 * v163];
          v154 = v232;
          if (v157)
          {
            operator delete(v157);
            v165 = v242.st_atimespec.tv_nsec;
          }

          v157 = v242.st_atimespec.tv_sec;
          v158 = v165;
          if (v165 == v242.st_atimespec.tv_sec)
          {
            goto LABEL_283;
          }

LABEL_316:
          v186 = 0;
          v187 = 0xAAAAAAAAAAAAAAABLL * ((v158 - v157) >> 3);
          v173 = v243;
          v188 = 0xAAAAAAAAAAAAAAABLL * ((*(&v243 + 1) - v243) >> 3);
          v172 = v168 - v154;
          if (v187 <= 1)
          {
            v187 = 1;
          }

          v189 = v157 + 16;
          v190 = v243;
          do
          {
            if (v188 <= v186)
            {
              v191 = &v244[8];
            }

            else
            {
              v191 = v190;
            }

            *(v189 - 2) = v172 + *v191;
            v192 = (v190 + 8);
            if (v188 <= v186)
            {
              v192 = &v244[16];
            }

            *(v189 - 1) = v172 + *v192;
            v193 = (v190 + 16);
            if (v188 <= v186)
            {
              v193 = v125;
            }

            *v189 = *v193;
            v189 += 24;
            ++v186;
            v190 += 24;
          }

          while (v187 != v186);
          goto LABEL_327;
        }

        v195 = v242.st_atimespec.tv_nsec + 24 * v161;
        v196 = 8 * ((*(&v243 + 1) - v243) >> 3) - 8 * ((v242.st_atimespec.tv_nsec - v242.st_atimespec.tv_sec) >> 3);
        do
        {
          *v158 = 0;
          *(v158 + 8) = 0;
          *(v158 + 16) = 0;
          v158 += 24;
          v196 -= 24;
        }

        while (v196);
        v242.st_atimespec.tv_nsec = v195;
        v168 = v235;
        v125 = v236;
        v157 = v242.st_atimespec.tv_sec;
        v158 = v195;
        if (v195 != v242.st_atimespec.tv_sec)
        {
          goto LABEL_316;
        }

LABEL_283:
        v172 = v168 - v154;
        v173 = v243;
LABEL_327:
        v242.st_mtimespec.tv_nsec = v153;
        v242.st_ctimespec.tv_sec = v153;
        LOBYTE(v242.st_ctimespec.tv_nsec) = 0;
        v194 = vdupq_n_s64(v172);
        v242.st_birthtimespec = vaddq_s64(v194, v245);
        LOBYTE(v242.st_size) = v246;
        *&v242.st_blocks = vaddq_s64(v194, v247);
        LOBYTE(v242.st_gen) = v248;
        LOBYTE(v242.st_qspare[0]) = v249;
        if (v173)
        {
          operator delete(v173);
        }

        if (v234)
        {
          goto LABEL_51;
        }

        v123 = (v168 + 1);
        v120 = v242.st_rdev;
        st_ino = v242.st_ino;
LABEL_247:
        v233 = v120;
        v242.st_rdev = v120 | 0x80;
        v126 = *&v242.st_uid;
        *&v127 = 0xAAAAAAAAAAAAAAAALL;
        *(&v127 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v125[2] = v127;
        v125[3] = v127;
        *v125 = v127;
        v125[1] = v127;
        v245 = 0uLL;
        v246 = 0;
        v247 = 0uLL;
        v248 = 0;
        v249 = 0;
        v250 = 0;
        v243 = 0u;
        memset(v244, 0, 25);
        v230 = v123;
        v128 = st_ino;
        v231 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v126, v123, st_ino, &v243, v120 | 0x80u);
        v129 = v245.i64[0];
        v130 = *(&v243 + 1) - v243;
        v131 = 0xAAAAAAAAAAAAAAABLL * ((*(&v243 + 1) - v243) >> 3);
        v132 = v242.st_atimespec.tv_sec;
        v133 = v242.st_atimespec.tv_nsec;
        v134 = v242.st_atimespec.tv_nsec - v242.st_atimespec.tv_sec;
        v135 = 0xAAAAAAAAAAAAAAABLL * ((v242.st_atimespec.tv_nsec - v242.st_atimespec.tv_sec) >> 3);
        v136 = v131 - v135;
        if (v131 <= v135)
        {
          if (v131 < v135)
          {
            v133 = v242.st_atimespec.tv_sec + v130;
            v242.st_atimespec.tv_nsec = v242.st_atimespec.tv_sec + v130;
          }

          v147 = v235;
          v146 = v236;
          v148 = v233;
          if (v133 == v242.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        else if (0xAAAAAAAAAAAAAAABLL * ((v242.st_mtimespec.tv_sec - v242.st_atimespec.tv_nsec) >> 3) >= v136)
        {
          v184 = v242.st_atimespec.tv_nsec + 24 * v136;
          v185 = 8 * ((*(&v243 + 1) - v243) >> 3) - 8 * ((v242.st_atimespec.tv_nsec - v242.st_atimespec.tv_sec) >> 3);
          do
          {
            *v133 = 0;
            *(v133 + 8) = 0;
            *(v133 + 16) = 0;
            v133 += 24;
            v185 -= 24;
          }

          while (v185);
          v242.st_atimespec.tv_nsec = v184;
          v147 = v235;
          v146 = v236;
          v148 = v233;
          v132 = v242.st_atimespec.tv_sec;
          v133 = v184;
          if (v184 == v242.st_atimespec.tv_sec)
          {
LABEL_264:
            v149 = v230 - v129;
            goto LABEL_298;
          }
        }

        else
        {
          if (v131 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v225 = v245.i64[0];
          v137 = 0x5555555555555556 * ((v242.st_mtimespec.tv_sec - v242.st_atimespec.tv_sec) >> 3);
          if (v137 <= v131)
          {
            v137 = 0xAAAAAAAAAAAAAAABLL * ((*(&v243 + 1) - v243) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v242.st_mtimespec.tv_sec - v242.st_atimespec.tv_sec) >> 3) >= 0x555555555555555)
          {
            v138 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v138 = v137;
          }

          if (v138 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v139 = operator new(24 * v138);
          v140 = &v139[24 * v136 + v134];
          v141 = 24 * v131 - 24 * v135;
          v142 = &v139[v134];
          do
          {
            *v142 = 0;
            *(v142 + 1) = 0;
            v142[16] = 0;
            v142 += 24;
            v141 -= 24;
          }

          while (v141);
          v129 = v225;
          if (v132 != v133)
          {
            v143 = v132;
            v144 = v139;
            do
            {
              v145 = *v143;
              *(v144 + 2) = *(v143 + 2);
              *v144 = v145;
              v144 += 24;
              v143 += 24;
            }

            while (v143 != v133);
          }

          v242.st_atimespec.tv_sec = v139;
          v242.st_atimespec.tv_nsec = &v139[24 * v136 + v134];
          v242.st_mtimespec.tv_sec = &v139[24 * v138];
          v147 = v235;
          v146 = v236;
          v148 = v233;
          if (v132)
          {
            operator delete(v132);
            v129 = v225;
            v140 = v242.st_atimespec.tv_nsec;
          }

          v132 = v242.st_atimespec.tv_sec;
          v133 = v140;
          if (v140 == v242.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        v174 = 0;
        v175 = 0xAAAAAAAAAAAAAAABLL * ((v133 - v132) >> 3);
        v176 = v243;
        v177 = 0xAAAAAAAAAAAAAAABLL * ((*(&v243 + 1) - v243) >> 3);
        v149 = v230 - v129;
        if (v175 <= 1)
        {
          v175 = 1;
        }

        v178 = v132 + 16;
        do
        {
          if (v177 <= v174)
          {
            v179 = &v244[8];
          }

          else
          {
            v179 = v176;
          }

          *(v178 - 2) = v149 + *v179;
          v180 = (v176 + 8);
          if (v177 <= v174)
          {
            v180 = &v244[16];
          }

          *(v178 - 1) = v149 + *v180;
          v181 = (v176 + 16);
          if (v177 <= v174)
          {
            v181 = v146;
          }

          *v178 = *v181;
          v178 += 24;
          ++v174;
          v176 += 24;
        }

        while (v175 != v174);
LABEL_298:
        v242.st_mtimespec.tv_nsec = v128;
        v242.st_ctimespec.tv_sec = v128;
        LOBYTE(v242.st_ctimespec.tv_nsec) = 0;
        v182 = vdupq_n_s64(v149);
        v183 = vaddq_s64(v182, v245);
        v242.st_birthtimespec = v183;
        LOBYTE(v242.st_size) = v246;
        *&v242.st_blocks = vaddq_s64(v182, v247);
        LOBYTE(v242.st_gen) = v248;
        if ((v148 & 0x800) == 0)
        {
          v242.st_qspare[1] = v183.tv_sec;
        }

        LOBYTE(v242.st_qspare[0]) = v249;
        if (v243)
        {
          operator delete(v243);
        }

        if ((v231 & 1) == 0)
        {
          if (v242.st_atimespec.tv_sec)
          {
            operator delete(v242.st_atimespec.tv_sec);
          }

LABEL_312:
          LOBYTE(v242.st_qspare[0]) = 0;
          memset(&v242.st_atimespec, 0, 41);
          memset(&v242.st_birthtimespec, 0, 17);
          memset(&v242.st_blocks, 0, 17);
          v242.st_qspare[1] = 0;
          goto LABEL_51;
        }

        v242.st_birthtimespec.tv_sec = v147;
        LOBYTE(v242.st_size) = v242.st_birthtimespec.tv_nsec != v147;
LABEL_51:
        tv_sec = v242.st_atimespec.tv_sec;
        if (v242.st_atimespec.tv_nsec == v242.st_atimespec.tv_sec)
        {
          v197 = st_blocks;
          v198 = v229;
          while (1)
          {
            if (v197 == v198)
            {
              goto LABEL_364;
            }

            v202 = *v197;
            if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              break;
            }

            v199 = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v237.__r_.__value_.__l.__size_ == v199)
            {
              if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v203 = v237.__r_.__value_.__r.__words[0];
              if (v199 < 0x3FFFFFFFFFFFFFF3)
              {
                goto LABEL_345;
              }

              v207 = 0;
              v206 = 0x7FFFFFFFFFFFFFF7;
LABEL_355:
              v208 = operator new(v206);
              v200 = v208;
              if (v199)
              {
                memmove(v208, v203, v199);
              }

              if (!v207)
              {
                operator delete(v203);
              }

              v237.__r_.__value_.__r.__words[0] = v200;
              v237.__r_.__value_.__r.__words[2] = v206 | 0x8000000000000000;
              v198 = v229;
              goto LABEL_361;
            }

            v199 = v237.__r_.__value_.__l.__size_;
            v200 = v237.__r_.__value_.__r.__words[0];
LABEL_361:
            v237.__r_.__value_.__l.__size_ = v199 + 1;
LABEL_337:
            v201 = v200 + v199;
            *v201 = v202;
            v201[1] = 0;
            ++v197;
          }

          if (HIBYTE(v237.__r_.__value_.__r.__words[2]) != 22)
          {
            v199 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
            *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
            v200 = &v237;
            goto LABEL_337;
          }

          v203 = &v237;
          v199 = 22;
LABEL_345:
          if (v199 + 1 > 2 * v199)
          {
            v204 = v199 + 1;
          }

          else
          {
            v204 = 2 * v199;
          }

          if ((v204 | 7) == 0x17)
          {
            v205 = 25;
          }

          else
          {
            v205 = (v204 | 7) + 1;
          }

          if (v204 >= 0x17)
          {
            v206 = v205;
          }

          else
          {
            v206 = 23;
          }

          v207 = v199 == 22;
          goto LABEL_355;
        }
      }

      v41 = __s;
      while (1)
      {
        while (1)
        {
          v45 = *v41;
          v46 = (v41 + 1);
          if (v45 != 36 || v46 == v28)
          {
            goto LABEL_89;
          }

          v49 = *v46;
          if (v49 <= 0x26)
          {
            if (v49 == 36)
            {
              ++v41;
              goto LABEL_89;
            }

            if (v49 == 38)
            {
              v50 = *v242.st_atimespec.tv_sec;
              v51 = *(v242.st_atimespec.tv_sec + 8);
              if (*v242.st_atimespec.tv_sec == v51)
              {
                goto LABEL_213;
              }

              while (1)
              {
                while (1)
                {
                  v53 = *v50;
                  v54 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
                  {
                    break;
                  }

                  if (HIBYTE(v237.__r_.__value_.__r.__words[2]) == 22)
                  {
                    v55 = &v237;
                    v56 = 22;
                    goto LABEL_104;
                  }

                  *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
                  v52 = &v237 + v54;
                  *v52 = v53;
                  v52[1] = 0;
                  if (++v50 == v51)
                  {
                    goto LABEL_213;
                  }
                }

                v56 = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v237.__r_.__value_.__l.__size_ == v56)
                {
                  if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    goto LABEL_404;
                  }

                  v55 = v237.__r_.__value_.__r.__words[0];
                  if (v56 >= 0x3FFFFFFFFFFFFFF3)
                  {
                    v60 = 0;
                    v59 = 0x7FFFFFFFFFFFFFF7;
                  }

                  else
                  {
LABEL_104:
                    if (v56 + 1 > 2 * v56)
                    {
                      v57 = v56 + 1;
                    }

                    else
                    {
                      v57 = 2 * v56;
                    }

                    if ((v57 | 7) == 0x17)
                    {
                      v58 = 25;
                    }

                    else
                    {
                      v58 = (v57 | 7) + 1;
                    }

                    if (v57 >= 0x17)
                    {
                      v59 = v58;
                    }

                    else
                    {
                      v59 = 23;
                    }

                    v60 = v56 == 22;
                  }

                  v61 = operator new(v59);
                  v62 = v61;
                  if (v56)
                  {
                    memmove(v61, v55, v56);
                  }

                  if (!v60)
                  {
                    operator delete(v55);
                  }

                  v237.__r_.__value_.__r.__words[0] = v62;
                  v237.__r_.__value_.__r.__words[2] = v59 | 0x8000000000000000;
                  goto LABEL_120;
                }

                v56 = v237.__r_.__value_.__l.__size_;
                v62 = v237.__r_.__value_.__r.__words[0];
LABEL_120:
                v237.__r_.__value_.__l.__size_ = v56 + 1;
                v63 = (v62 + v56);
                *v63 = v53;
                v63[1] = 0;
                if (++v50 == v51)
                {
                  goto LABEL_213;
                }
              }
            }

            goto LABEL_174;
          }

          if (v49 == 39)
          {
            break;
          }

          if (v49 == 96)
          {
            v69 = v242.st_birthtimespec.tv_sec;
            v70 = v242.st_birthtimespec.tv_nsec;
            if (v242.st_birthtimespec.tv_sec == v242.st_birthtimespec.tv_nsec)
            {
              goto LABEL_213;
            }

            while (1)
            {
              while (1)
              {
                v72 = *v69;
                v73 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(v237.__r_.__value_.__r.__words[2]) == 22)
                {
                  v74 = &v237;
                  v75 = 22;
                  goto LABEL_152;
                }

                *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
                v71 = &v237 + v73;
                *v71 = v72;
                v71[1] = 0;
                if (++v69 == v70)
                {
                  goto LABEL_213;
                }
              }

              v75 = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v237.__r_.__value_.__l.__size_ == v75)
              {
                if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  goto LABEL_404;
                }

                v74 = v237.__r_.__value_.__r.__words[0];
                if (v75 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v79 = 0;
                  v78 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_152:
                  if (v75 + 1 > 2 * v75)
                  {
                    v76 = v75 + 1;
                  }

                  else
                  {
                    v76 = 2 * v75;
                  }

                  if ((v76 | 7) == 0x17)
                  {
                    v77 = 25;
                  }

                  else
                  {
                    v77 = (v76 | 7) + 1;
                  }

                  if (v76 >= 0x17)
                  {
                    v78 = v77;
                  }

                  else
                  {
                    v78 = 23;
                  }

                  v79 = v75 == 22;
                }

                v80 = operator new(v78);
                v81 = v80;
                if (v75)
                {
                  memmove(v80, v74, v75);
                }

                if (!v79)
                {
                  operator delete(v74);
                }

                v237.__r_.__value_.__r.__words[0] = v81;
                v237.__r_.__value_.__r.__words[2] = v78 | 0x8000000000000000;
                goto LABEL_168;
              }

              v75 = v237.__r_.__value_.__l.__size_;
              v81 = v237.__r_.__value_.__r.__words[0];
LABEL_168:
              v237.__r_.__value_.__l.__size_ = v75 + 1;
              v82 = (v81 + v75);
              *v82 = v72;
              v82[1] = 0;
              if (++v69 == v70)
              {
                goto LABEL_213;
              }
            }
          }

LABEL_174:
          LODWORD(v83) = v49 - 48;
          if (v83 <= 9)
          {
            v83 = v83;
            if (v41 + 2 != v28)
            {
              v84 = v41[2];
              v85 = v84 - 48;
              v86 = v84 + 10 * v83 - 48;
              if (v85 > 9)
              {
                v46 = (v41 + 1);
              }

              else
              {
                v83 = v86;
                v46 = (v41 + 2);
              }
            }

            v87 = v242.st_atimespec.tv_sec + 24 * v83;
            v88 = 0xAAAAAAAAAAAAAAABLL * ((v242.st_atimespec.tv_nsec - v242.st_atimespec.tv_sec) >> 3) > v83;
            v89 = &v242.st_mtimespec.tv_nsec;
            if (v88)
            {
              v89 = v87;
            }

            v90 = *v89;
            v91 = (v87 + 8);
            if (!v88)
            {
              v91 = &v242.st_ctimespec;
            }

            v92 = v91->tv_sec;
            if (v90 == v91->tv_sec)
            {
              goto LABEL_213;
            }

            while (1)
            {
              while (1)
              {
                v94 = *v90;
                v95 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(v237.__r_.__value_.__r.__words[2]) == 22)
                {
                  v96 = &v237;
                  v97 = 22;
                  goto LABEL_192;
                }

                *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
                v93 = &v237 + v95;
                *v93 = v94;
                v93[1] = 0;
                if (++v90 == v92)
                {
                  goto LABEL_213;
                }
              }

              v97 = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v237.__r_.__value_.__l.__size_ == v97)
              {
                if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  goto LABEL_404;
                }

                v96 = v237.__r_.__value_.__r.__words[0];
                if (v97 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v101 = 0;
                  v100 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_192:
                  if (v97 + 1 > 2 * v97)
                  {
                    v98 = v97 + 1;
                  }

                  else
                  {
                    v98 = 2 * v97;
                  }

                  if ((v98 | 7) == 0x17)
                  {
                    v99 = 25;
                  }

                  else
                  {
                    v99 = (v98 | 7) + 1;
                  }

                  if (v98 >= 0x17)
                  {
                    v100 = v99;
                  }

                  else
                  {
                    v100 = 23;
                  }

                  v101 = v97 == 22;
                }

                v102 = operator new(v100);
                v103 = v102;
                if (v97)
                {
                  memmove(v102, v96, v97);
                }

                if (!v101)
                {
                  operator delete(v96);
                }

                v237.__r_.__value_.__r.__words[0] = v103;
                v237.__r_.__value_.__r.__words[2] = v100 | 0x8000000000000000;
                goto LABEL_208;
              }

              v97 = v237.__r_.__value_.__l.__size_;
              v103 = v237.__r_.__value_.__r.__words[0];
LABEL_208:
              v237.__r_.__value_.__l.__size_ = v97 + 1;
              v104 = (v103 + v97);
              *v104 = v94;
              v104[1] = 0;
              if (++v90 == v92)
              {
                goto LABEL_213;
              }
            }
          }

LABEL_89:
          if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
          {
            v42 = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v237.__r_.__value_.__l.__size_ != v42)
            {
              v42 = v237.__r_.__value_.__l.__size_;
              v43 = v237.__r_.__value_.__r.__words[0];
LABEL_172:
              v237.__r_.__value_.__l.__size_ = v42 + 1;
              goto LABEL_83;
            }

            if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
LABEL_404:
              std::string::__throw_length_error[abi:ne200100]();
            }

            v48 = v237.__r_.__value_.__r.__words[0];
            if (v42 >= 0x3FFFFFFFFFFFFFF3)
            {
              v67 = 0;
              v66 = 0x7FFFFFFFFFFFFFF7;
LABEL_136:
              v68 = operator new(v66);
              v43 = v68;
              if (v42)
              {
                memmove(v68, v48, v42);
              }

              if (!v67)
              {
                operator delete(v48);
              }

              v237.__r_.__value_.__r.__words[0] = v43;
              v237.__r_.__value_.__r.__words[2] = v66 | 0x8000000000000000;
              goto LABEL_172;
            }

LABEL_126:
            if (v42 + 1 > 2 * v42)
            {
              v64 = v42 + 1;
            }

            else
            {
              v64 = 2 * v42;
            }

            if ((v64 | 7) == 0x17)
            {
              v65 = 25;
            }

            else
            {
              v65 = (v64 | 7) + 1;
            }

            if (v64 >= 0x17)
            {
              v66 = v65;
            }

            else
            {
              v66 = 23;
            }

            v67 = v42 == 22;
            goto LABEL_136;
          }

          if (HIBYTE(v237.__r_.__value_.__r.__words[2]) == 22)
          {
            v48 = &v237;
            v42 = 22;
            goto LABEL_126;
          }

          v42 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
          *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
          v43 = &v237;
LABEL_83:
          v44 = v43 + v42;
          *v44 = v45;
          v44[1] = 0;
          if (++v41 == v28)
          {
            goto LABEL_241;
          }
        }

        v105 = v242.st_blocks;
        v106 = *&v242.st_blksize;
        if (v242.st_blocks != *&v242.st_blksize)
        {
          break;
        }

LABEL_213:
        v41 = (v46 + 1);
        if (v46 + 1 == v28)
        {
          goto LABEL_241;
        }
      }

      while (1)
      {
        while (1)
        {
          v108 = *v105;
          v109 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (HIBYTE(v237.__r_.__value_.__r.__words[2]) == 22)
          {
            v110 = &v237;
            v111 = 22;
            goto LABEL_222;
          }

          *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
          v107 = &v237 + v109;
          *v107 = v108;
          v107[1] = 0;
          if (++v105 == v106)
          {
            goto LABEL_213;
          }
        }

        v111 = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v237.__r_.__value_.__l.__size_ == v111)
        {
          if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_404;
          }

          v110 = v237.__r_.__value_.__r.__words[0];
          if (v111 >= 0x3FFFFFFFFFFFFFF3)
          {
            v115 = 0;
            v114 = 0x7FFFFFFFFFFFFFF7;
          }

          else
          {
LABEL_222:
            if (v111 + 1 > 2 * v111)
            {
              v112 = v111 + 1;
            }

            else
            {
              v112 = 2 * v111;
            }

            if ((v112 | 7) == 0x17)
            {
              v113 = 25;
            }

            else
            {
              v113 = (v112 | 7) + 1;
            }

            if (v112 >= 0x17)
            {
              v114 = v113;
            }

            else
            {
              v114 = 23;
            }

            v115 = v111 == 22;
          }

          v116 = operator new(v114);
          v117 = v116;
          if (v111)
          {
            memmove(v116, v110, v111);
          }

          if (!v115)
          {
            operator delete(v110);
          }

          v237.__r_.__value_.__r.__words[0] = v117;
          v237.__r_.__value_.__r.__words[2] = v114 | 0x8000000000000000;
          goto LABEL_238;
        }

        v111 = v237.__r_.__value_.__l.__size_;
        v117 = v237.__r_.__value_.__r.__words[0];
LABEL_238:
        v237.__r_.__value_.__l.__size_ = v111 + 1;
        v118 = (v117 + v111);
        *v118 = v108;
        v118[1] = 0;
        if (++v105 == v106)
        {
          goto LABEL_213;
        }
      }
    }

    while (v23)
    {
      while (1)
      {
        first = v22->first;
        v211 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (HIBYTE(v237.__r_.__value_.__r.__words[2]) == 22)
        {
          v212 = &v237;
          v213 = 22;
          goto LABEL_377;
        }

        *(&v237.__r_.__value_.__s + 23) = (*(&v237.__r_.__value_.__s + 23) + 1) & 0x7F;
        v209 = &v237 + v211;
        *v209 = first;
        v209[1] = 0;
        v22 = (v22 + 1);
        if (!--v23)
        {
          goto LABEL_364;
        }
      }

      v213 = (v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v237.__r_.__value_.__l.__size_ == v213)
      {
        if ((v237.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v212 = v237.__r_.__value_.__r.__words[0];
        if (v213 >= 0x3FFFFFFFFFFFFFF3)
        {
          v217 = 0;
          v216 = 0x7FFFFFFFFFFFFFF7;
        }

        else
        {
LABEL_377:
          if (v213 + 1 > 2 * v213)
          {
            v214 = v213 + 1;
          }

          else
          {
            v214 = 2 * v213;
          }

          if ((v214 | 7) == 0x17)
          {
            v215 = 25;
          }

          else
          {
            v215 = (v214 | 7) + 1;
          }

          if (v214 >= 0x17)
          {
            v216 = v215;
          }

          else
          {
            v216 = 23;
          }

          v217 = v213 == 22;
        }

        v218 = operator new(v216);
        v219 = v218;
        if (v213)
        {
          memmove(v218, v212, v213);
        }

        if (!v217)
        {
          operator delete(v212);
        }

        v237.__r_.__value_.__r.__words[0] = v219;
        v237.__r_.__value_.__r.__words[2] = v216 | 0x8000000000000000;
        goto LABEL_393;
      }

      v213 = v237.__r_.__value_.__l.__size_;
      v219 = v237.__r_.__value_.__r.__words[0];
LABEL_393:
      v237.__r_.__value_.__l.__size_ = v213 + 1;
      v220 = (v219 + v213);
      *v220 = first;
      v220[1] = 0;
      v22 = (v22 + 1);
      --v23;
    }

LABEL_364:
    if (tv_sec)
    {
      operator delete(tv_sec);
    }

    if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v239.__r_.__value_.__l.__data_);
    }

    v239 = v237;
    a1 = v223;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

LABEL_400:
  v221 = *&v241[32];
  if (*&v241[32] && !atomic_fetch_add((*&v241[32] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v221->__on_zero_shared)(v221);
    std::__shared_weak_count::__release_weak(v221);
  }

  std::locale::~locale(v240);
}

void sub_240157B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v37 + 40);
  std::locale::~locale(&a37);
  _Unwind_Resume(a1);
}

void sub_240157B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, std::locale a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (*(v61 - 185) < 0)
  {
    operator delete(*(v61 - 208));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a46);
  _Unwind_Resume(a1);
}

uint64_t std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v10[24] = v5;
  if ((v2 & 0x80u) == 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v12 = 0xAAAAAAAAAAAAAA00;
  v14 = v5;
  *&v10[32] = 0;
  v11 = 0;
  v13 = 0uLL;
  LOBYTE(v14) = 0;
  BYTE8(v14) = 0;
  v15 = 0;
  *v9 = 0u;
  memset(v10, 0, 25);
  v17[6] = 0xAAAAAAAAAAAAAA00;
  v17[3] = v5;
  v18 = v5;
  v17[4] = 0;
  v17[5] = 0;
  v17[7] = 0;
  v17[8] = 0;
  LOBYTE(v18) = 0;
  BYTE8(v18) = 0;
  v19 = 0;
  *__p = 0u;
  memset(v17, 0, 25);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v4, (v4 + v6), __p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v9, v4, v4 + v6, __p, 0);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v7 && (v14 & 1) != 0)
  {
    v7 = 0;
  }

  if (v9[0])
  {
    operator delete(v9[0]);
  }

  return v7;
}

void sub_240157D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v24 = a9;
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v24 = a9;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

void support::fs::createUniquePath(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__src.st_blksize = v4;
  *__src.st_qspare = v4;
  __src.st_birthtimespec = v4;
  *&__src.st_size = v4;
  __src.st_mtimespec = v4;
  __src.st_ctimespec = v4;
  *&__src.st_uid = v4;
  __src.st_atimespec = v4;
  *&__src.st_dev = v4;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__src))
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v27 = v5;
    v28 = v5;
    v25 = v5;
    v26 = v5;
    v23 = v5;
    v24 = v5;
    *__src.st_qspare = v5;
    v22 = v5;
    *&__src.st_size = v5;
    *&__src.st_blksize = v5;
    __src.st_ctimespec = v5;
    __src.st_birthtimespec = v5;
    __src.st_atimespec = v5;
    __src.st_mtimespec = v5;
    *&__src.st_dev = v5;
    *&__src.st_uid = v5;
    snprintf(&__src, 0x100uLL, "-%u", 1);
    memset(a2, 170, sizeof(std::string));
    v6 = strlen(&__src);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    v8 = 2;
    while (v7 < 0x17)
    {
      HIBYTE(__dst.st_gid) = v7;
      p_dst = &__dst;
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_17:
      *(&p_dst->st_dev + v7) = 0;
      v12 = v2[23];
      if (v12 >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      if (v12 >= 0)
      {
        v14 = *(v2 + 23);
      }

      else
      {
        v14 = *(v2 + 1);
      }

      v15 = std::string::insert(&__dst, 0, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.st_gid) < 0)
      {
        operator delete(*&__dst.st_dev);
      }

      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__dst.st_blksize = v17;
      *__dst.st_qspare = v17;
      __dst.st_birthtimespec = v17;
      *&__dst.st_size = v17;
      __dst.st_mtimespec = v17;
      __dst.st_ctimespec = v17;
      *&__dst.st_uid = v17;
      __dst.st_atimespec = v17;
      *&__dst.st_dev = v17;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = a2->__r_.__value_.__r.__words[0];
      }

      if (stat(v18, &__dst))
      {
        goto LABEL_32;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(a2->__r_.__value_.__l.__data_);
      }

      v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v27 = v9;
      v28 = v9;
      v25 = v9;
      v26 = v9;
      v23 = v9;
      v24 = v9;
      *__src.st_qspare = v9;
      v22 = v9;
      *&__src.st_size = v9;
      *&__src.st_blksize = v9;
      __src.st_ctimespec = v9;
      __src.st_birthtimespec = v9;
      __src.st_atimespec = v9;
      __src.st_mtimespec = v9;
      *&__src.st_dev = v9;
      *&__src.st_uid = v9;
      snprintf(&__src, 0x100uLL, "-%u", v8);
      memset(a2, 170, sizeof(std::string));
      v7 = strlen(&__src);
      ++v8;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    p_dst = operator new(v11);
    __dst.st_ino = v7;
    *&__dst.st_uid = v11 | 0x8000000000000000;
    *&__dst.st_dev = p_dst;
LABEL_16:
    memcpy(p_dst, &__src, v7);
    goto LABEL_17;
  }

  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }

LABEL_32:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2401580C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::createDir(const char *a1, mode_t a2, int a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v6;
  *v30.st_qspare = v6;
  v30.st_birthtimespec = v6;
  *&v30.st_size = v6;
  v30.st_mtimespec = v6;
  v30.st_ctimespec = v6;
  *&v30.st_uid = v6;
  v30.st_atimespec = v6;
  *&v30.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v30))
  {
    return 1;
  }

  if (!a3)
  {
    if (v5[23] >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    return mkdir(v21, a2) == 0;
  }

  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0x1AAAAAAAAAAAAAALL;
  v28[0] = 0xAAAAAAAAAAAA002FLL;
  memset(&__p[32], 170, 24);
  ctu::tokenize();
  memset(__p, 0, 24);
  if (v5[23] >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (*v7 == 47)
  {
    *__p = *v28;
    *&__p[16] = v29;
  }

  v8 = *&__p[32];
  if (*&__p[40] != *&__p[32])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v10 != 1)
      {
        if (v29 >= 0)
        {
          v11 = v28;
        }

        else
        {
          v11 = v28[0];
        }

        if (v29 >= 0)
        {
          v12 = HIBYTE(v29);
        }

        else
        {
          v12 = v28[1];
        }

        std::string::append(__p, v11, v12);
        v8 = *&__p[32];
      }

      v13 = v8 + 24 * v9;
      v14 = *(v13 + 23);
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? *(v13 + 23) : *(v13 + 8);
      std::string::append(__p, v15, v16);
      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v30.st_blksize = v17;
      *v30.st_qspare = v17;
      v30.st_birthtimespec = v17;
      *&v30.st_size = v17;
      v30.st_mtimespec = v17;
      v30.st_ctimespec = v17;
      *&v30.st_uid = v17;
      v30.st_atimespec = v17;
      *&v30.st_dev = v17;
      v18 = __p[23] >= 0 ? __p : *__p;
      if (stat(v18, &v30))
      {
        v19 = __p[23] >= 0 ? __p : *__p;
        if (mkdir(v19, a2))
        {
          break;
        }
      }

      v9 = v10;
      v8 = *&__p[32];
      ++v10;
      if (0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3) <= v9)
      {
        goto LABEL_42;
      }
    }

    v20 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 1;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_43:
    operator delete(*__p);
  }

LABEL_44:
  v22 = *&__p[32];
  if (*&__p[32])
  {
    v23 = *&__p[40];
    v24 = *&__p[32];
    if (*&__p[40] != *&__p[32])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *&__p[32];
    }

    *&__p[40] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  return v20;
}

void sub_240158388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

BOOL support::fs::rename(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(a1, a2, a3);
  return v3 == 0;
}

BOOL support::fs::chmod(const char *a1, mode_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chmod(a1, a2) == 0;
}

BOOL support::fs::removeDir(const char *a1)
{
  v1 = a1;
  v58[2] = *MEMORY[0x277D85DE8];
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v57.st_blksize = v2;
  *v57.st_qspare = v2;
  v57.st_birthtimespec = v2;
  *&v57.st_size = v2;
  v57.st_mtimespec = v2;
  v57.st_ctimespec = v2;
  *&v57.st_uid = v2;
  v57.st_atimespec = v2;
  *&v57.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v57))
  {
    v3 = 1;
    goto LABEL_112;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  support::fs::readDir(v1, &v54);
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3);
    v3 = v7 <= v5;
    if (v7 <= v5)
    {
      break;
    }

    v8 = v54 + 24 * v5;
    memset(&__p, 170, sizeof(__p));
    if (v8[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        if (*__p.__r_.__value_.__l.__data_ == 46)
        {
          goto LABEL_61;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 11822)
      {
        goto LABEL_61;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_61;
    }

    v11 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      size = HIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v1->__pn_.__r_.__value_.__l.__size_;
    }

    v13 = size + 1;
    if (size + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 < 0x17)
    {
      memset(&v57, 0, 24);
      v15 = &v57;
      HIBYTE(v57.st_gid) = size + 1;
      if (!size)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      v15 = operator new(v14);
      v57.st_ino = size + 1;
      *&v57.st_uid = v14 | 0x8000000000000000;
      *&v57.st_dev = v15;
    }

    v16 = v1->__pn_.__r_.__value_.__r.__words[0];
    if (v11 >= 0)
    {
      v17 = v1;
    }

    else
    {
      v17 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v17, size);
LABEL_38:
    *&v15[size] = 47;
    if ((v10 & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x80000000) == 0)
    {
      v19 = v10;
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v57, p_p, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v58[0] = v20->__r_.__value_.__l.__size_;
    *(v58 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v21;
    __p.__r_.__value_.__l.__size_ = v58[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v58 + 7);
    *(&__p.__r_.__value_.__s + 23) = v22;
    if (SHIBYTE(v57.st_gid) < 0)
    {
      operator delete(*&v57.st_dev);
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v57.st_blksize = v23;
    *v57.st_qspare = v23;
    v57.st_birthtimespec = v23;
    *&v57.st_size = v23;
    v57.st_mtimespec = v23;
    v57.st_ctimespec = v23;
    *&v57.st_uid = v23;
    v57.st_atimespec = v23;
    if (v22 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = v21;
    }

    *&v57.st_dev = v23;
    if (!stat(v24, &v57))
    {
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v30 = opendir(v29);
      v31 = v30;
      if (v30)
      {
        v32 = readdir(v30);
        closedir(v31);
        if (v32)
        {
          v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v33 = __p.__r_.__value_.__l.__size_;
            v35 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
            v36 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v36 != __p.__r_.__value_.__l.__size_)
            {
              v34 = __p.__r_.__value_.__r.__words[0];
              goto LABEL_89;
            }

            if (v35 == 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v34 = __p.__r_.__value_.__r.__words[0];
            if (v36 > 0x3FFFFFFFFFFFFFF2)
            {
              v40 = 0;
              v39 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_74:
              v37 = 2 * v36;
              if (v35 > 2 * v36)
              {
                v37 = v35;
              }

              if ((v37 | 7) == 0x17)
              {
                v38 = 25;
              }

              else
              {
                v38 = (v37 | 7) + 1;
              }

              if (v37 >= 0x17)
              {
                v39 = v38;
              }

              else
              {
                v39 = 23;
              }

              v40 = v36 == 22;
            }

            v41 = operator new(v39);
            v42 = v41;
            if (v36)
            {
              memmove(v41, v34, v36);
            }

            *(v42 + v36) = 47;
            if (!v40)
            {
              operator delete(v34);
            }

            __p.__r_.__value_.__l.__size_ = v35;
            __p.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v42;
            v43 = (v42 + v35);
          }

          else
          {
            v34 = &__p;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
            {
              v35 = 23;
              v36 = 22;
              goto LABEL_74;
            }

LABEL_89:
            v34->__r_.__value_.__s.__data_[v33] = 47;
            v44 = v33 + 1;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              __p.__r_.__value_.__l.__size_ = v44;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = v44 & 0x7F;
            }

            v43 = v34 + v44;
          }

          *v43 = 0;
          v28 = support::fs::removeDir(&__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (!remove(v26, v25))
    {
LABEL_61:
      v28 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    v28 = unlink(v27) == 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_7:
    v5 = v6 + 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = v1;
  }

  else
  {
    v45 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(v45, v4))
  {
    if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = v1;
    }

    else
    {
      v46 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    unlink(v46);
  }

LABEL_104:
  v47 = v54;
  if (v54)
  {
    v48 = v55;
    v49 = v54;
    if (v55 != v54)
    {
      do
      {
        v50 = *(v48 - 1);
        v48 -= 3;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v47);
      v49 = v54;
    }

    v55 = v47;
    operator delete(v49);
  }

LABEL_112:
  v51 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_240158974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL support::fs::removeFile(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!remove(a1, a2))
  {
    return 1;
  }

  if ((v2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  return unlink(v3) == 0;
}

uint64_t support::fs::removeDirContents(const char *a1, unint64_t a2)
{
  v3 = a1;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  support::fs::readDir(a1, &v59);
  v54 = time(0);
  v5 = v59;
  v4 = v60;
  if (v59 == v60)
  {
    v49 = 1;
    if (v59)
    {
      goto LABEL_108;
    }

    return v49 & 1;
  }

  v6 = a2;
  v55 = 1;
  while (1)
  {
    memset(&v58, 170, sizeof(v58));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      v58.__r_.__value_.__r.__words[2] = v5[2];
      *&v58.__r_.__value_.__l.__data_ = v7;
    }

    v8 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) == 1)
    {
      if (v58.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_98;
      }
    }

    else if (HIBYTE(v58.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v58.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_98;
    }

LABEL_19:
    memset(__p, 170, 24);
    v9 = v3[23];
    if (v9 >= 0)
    {
      v10 = *(v3 + 23);
    }

    else
    {
      v10 = *(v3 + 1);
    }

    v11 = v10 + 1;
    if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 < 0x17)
    {
      memset(&v62, 0, 24);
      v16 = &v62;
      HIBYTE(v62.st_gid) = v10 + 1;
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v14 = a2;
      if ((v11 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v11 | 7) + 1;
      }

      v16 = operator new(v15);
      v62.st_ino = v10 + 1;
      *&v62.st_uid = v15 | 0x8000000000000000;
      *&v62.st_dev = v16;
      a2 = v14;
      v4 = v13;
      v3 = v12;
    }

    v17 = *v3;
    if (v9 >= 0)
    {
      v18 = v3;
    }

    else
    {
      v18 = *v3;
    }

    memmove(v16, v18, v10);
LABEL_33:
    *&v16[v10] = 47;
    if ((v8 & 0x80000000) == 0)
    {
      v19 = &v58;
    }

    else
    {
      v19 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x80000000) == 0)
    {
      size = v8;
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v62, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p[2] = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v62.st_gid) < 0)
    {
      operator delete(*&v62.st_dev);
      if (!a2)
      {
        goto LABEL_50;
      }
    }

    else if (!a2)
    {
      goto LABEL_50;
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v62.st_blksize = v23;
    *v62.st_qspare = v23;
    v62.st_birthtimespec = v23;
    *&v62.st_size = v23;
    v62.st_mtimespec = v23;
    v62.st_ctimespec = v23;
    v62.st_atimespec = v23;
    *&v62.st_dev = v23;
    *&v62.st_uid = v23;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (!stat(v24, &v62) && difftime(v54, v62.st_ctimespec.tv_sec) >= v6)
    {
LABEL_50:
      v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v62.st_blksize = v27;
      *v62.st_qspare = v27;
      v62.st_birthtimespec = v27;
      *&v62.st_size = v27;
      v62.st_mtimespec = v27;
      v62.st_ctimespec = v27;
      v62.st_atimespec = v27;
      *&v62.st_dev = v27;
      *&v62.st_uid = v27;
      if (SHIBYTE(__p[2]) >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      if (stat(v28, &v62) || (SHIBYTE(__p[2]) >= 0 ? (v32 = __p) : (v32 = __p[0]), (v33 = opendir(v32), (v34 = v33) == 0) || (v35 = readdir(v33), closedir(v34), !v35)))
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (!remove(v30, v29) || (SHIBYTE(__p[2]) >= 0 ? (v31 = __p) : (v31 = __p[0]), !unlink(v31)))
        {
LABEL_92:
          v26 = 0;
          v55 = 1;
          v25 = 1;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        goto LABEL_62;
      }

      v36 = v3[23];
      if (v36 >= 0)
      {
        v37 = *(v3 + 23);
      }

      else
      {
        v37 = *(v3 + 1);
      }

      v38 = v37 + 1;
      if (v37 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 < 0x17)
      {
        memset(&v56, 0, sizeof(v56));
        v41 = &v56;
        *(&v56.__r_.__value_.__s + 23) = v37 + 1;
        if (v37)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = a2;
        if ((v38 | 7) == 0x17)
        {
          v40 = 25;
        }

        else
        {
          v40 = (v38 | 7) + 1;
        }

        v41 = operator new(v40);
        v56.__r_.__value_.__l.__size_ = v37 + 1;
        v56.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
        v56.__r_.__value_.__r.__words[0] = v41;
        a2 = v39;
LABEL_79:
        v42 = *v3;
        if (v36 >= 0)
        {
          v43 = v3;
        }

        else
        {
          v43 = *v3;
        }

        memmove(v41, v43, v37);
      }

      *&v41[v37] = 47;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v58;
      }

      else
      {
        v44 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v58.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v56, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      *&v62.st_uid = *(&v46->__r_.__value_.__l + 2);
      *&v62.st_dev = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = support::fs::removeDir(&v62);
      if (SHIBYTE(v62.st_gid) < 0)
      {
        operator delete(*&v62.st_dev);
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_91:
        if (v48)
        {
          goto LABEL_92;
        }

LABEL_62:
        v55 = 0;
        v25 = 0;
        v26 = 2;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      operator delete(v56.__r_.__value_.__l.__data_);
      if (v48)
      {
        goto LABEL_92;
      }

      goto LABEL_62;
    }

    v25 = 0;
    v26 = 3;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_93:
    operator delete(__p[0]);
LABEL_94:
    if (v25)
    {
      goto LABEL_98;
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    operator delete(v58.__r_.__value_.__l.__data_);
    if (v26 != 3)
    {
      goto LABEL_100;
    }

LABEL_3:
    v5 += 3;
    if (v5 == v4)
    {
      goto LABEL_105;
    }
  }

  if (v58.__r_.__value_.__l.__size_ == 1)
  {
    if (*v58.__r_.__value_.__l.__data_ == 46)
    {
      goto LABEL_98;
    }

    goto LABEL_19;
  }

  if (v58.__r_.__value_.__l.__size_ != 2 || *v58.__r_.__value_.__l.__data_ != 11822)
  {
    goto LABEL_19;
  }

LABEL_98:
  v26 = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (v26 == 3)
  {
    goto LABEL_3;
  }

LABEL_100:
  if (!v26)
  {
    goto LABEL_3;
  }

LABEL_105:
  v5 = v59;
  v49 = v55;
  if (!v59)
  {
    return v49 & 1;
  }

LABEL_108:
  v50 = v60;
  v51 = v5;
  if (v60 != v5)
  {
    do
    {
      v52 = *(v50 - 1);
      v50 -= 3;
      if (v52 < 0)
      {
        operator delete(*v50);
      }
    }

    while (v50 != v5);
    v51 = v59;
  }

  v60 = v5;
  operator delete(v51);
  return v49 & 1;
}

void sub_240158FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void **a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void support::fs::moveDirUnique(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v6;
  *v16.st_qspare = v6;
  v16.st_birthtimespec = v6;
  *&v16.st_size = v6;
  v16.st_mtimespec = v6;
  v16.st_ctimespec = v6;
  *&v16.st_uid = v6;
  v16.st_atimespec = v6;
  *&v16.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v16))
  {
    goto LABEL_4;
  }

  v7 = (v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v4 : v4->__pn_.__r_.__value_.__r.__words[0];
  v8 = opendir(v7);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = readdir(v8);
  closedir(v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  memset(a3, 170, 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  support::fs::createUniquePath(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  if (*(a3 + 23) >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  rename(v12, v13, v11);
  if (v14)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

LABEL_4:
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void sub_2401591D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getFileName(std::string *a1@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  if (*(__p[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(__p[1] - 3), *(__p[1] - 2));
  }

  else
  {
    v2 = *(__p[1] - 24);
    a1->__r_.__value_.__r.__words[2] = *(__p[1] - 1);
    *&a1->__r_.__value_.__l.__data_ = v2;
  }

  if (__p[0])
  {
    v3 = __p[1];
    v4 = __p[0];
    if (__p[1] != __p[0])
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

      while (v3 != __p[0]);
      v4 = __p[0];
    }

    operator delete(v4);
  }
}

void sub_2401592A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t support::fs::lockDir(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = open(a1, 0);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v5 = 1;
  v3[0] = 0;
  v3[1] = 0;
  v4 = getpid();
  if ((fcntl(v1, 9, v3) & 0x80000000) == 0)
  {
    return v1;
  }

  close(v1);
  return 0xFFFFFFFFLL;
}

BOOL support::fs::unlockDir(support::fs *this)
{
  v1 = this;
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  v2 = fcntl(v1, 9, v4) == 0;
  close(v1);
  return v2;
}

uint64_t support::fs::getFilteredFiles(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_69:
    if ((atomic_load_explicit(&qword_280C06600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C06600))
    {
      qword_280C06608 = 0;
      qword_280C06610 = 0;
      __cxa_guard_release(&qword_280C06600);
    }

    if (_MergedGlobals_0 == -1)
    {
      v36 = qword_280C06610;
      if (!os_log_type_enabled(qword_280C06610, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v37 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v36 = qword_280C06610;
      if (!os_log_type_enabled(qword_280C06610, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v40 = __error();
    v41 = strerror(*v40);
    v48.st_dev = 136315394;
    *&v48.st_mode = a1;
    WORD2(v48.st_ino) = 2080;
    *(&v48.st_ino + 6) = v41;
    _os_log_error_impl(&dword_240152000, v36, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v48, 0x16u);
    goto LABEL_72;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v42 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v11 | 7) + 1;
        }

        v13 = operator new(v15);
        *&__dst[8] = v12;
        *&__dst[16] = v15 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          if ((__dst[23] & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      if ((__dst[23] & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v14 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_64;
          }
        }

        else if (v14 == 2 && *__dst == 11822)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_64;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_64;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_55;
      }

      v16 = v8;
      v17 = a3;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v48.st_blksize = v19;
      *v48.st_qspare = v19;
      v48.st_birthtimespec = v19;
      *&v48.st_size = v19;
      v48.st_ctimespec = v19;
      v48.st_atimespec = v19;
      v48.st_mtimespec = v19;
      *&v48.st_dev = v19;
      *&v48.st_uid = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 < 0x17)
      {
        memset(&v44, 0, sizeof(v44));
        v25 = &v44;
        *(&v44.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a4 = v18;
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v44.__r_.__value_.__l.__size_ = v22 + 1;
        v44.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v44.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
      a4 = v18;
LABEL_40:
      *&v25[v22] = 47;
      if ((v14 & 0x80000000) == 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if ((v14 & 0x80000000) == 0)
      {
        v29 = v14;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v44, v28, v29);
      a3 = v17;
      v31 = *&v30->__r_.__value_.__l.__data_;
      v46 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v46 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      lstat(v32, &v48);
      v8 = v16;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v48.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v48.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        if (std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(__dst, a2))
        {
          v33 = *(a3 + 8);
          if (v33 >= *(a3 + 16))
          {
            v35 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(*(a3 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v34 = *__dst;
              *(v33 + 16) = *&__dst[16];
              *v33 = v34;
            }

            v35 = (v33 + 24);
            *(a3 + 8) = v33 + 24;
          }

          *(a3 + 8) = v35;
          v42 = 1;
        }
      }

LABEL_64:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_74;
      }
    }
  }

  v42 = 0;
LABEL_74:
  closedir(v8);
  v37 = v42;
LABEL_75:
  v38 = *MEMORY[0x277D85DE8];
  return v37 & 1;
}

void sub_24015988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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

void sub_240159D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getLastNumberDir(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v81, 170, sizeof(v81));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, *a1, *(a1 + 8));
  }

  else
  {
    v81 = *a1;
  }

  v4 = v81.__r_.__value_.__r.__words[0];
  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v81;
  }

  else
  {
    v5 = v81.__r_.__value_.__r.__words[0];
  }

  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v81.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v81.__r_.__value_.__l.__size_;
  }

  v7 = size + 1;
  do
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      goto LABEL_20;
    }

    v9 = v5->__r_.__value_.__s.__data_[v7-- - 2];
  }

  while (v9 == 47);
  if (v8)
  {
    v10 = v8 - 1;
    if ((*(&v81.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v81.__r_.__value_.__l.__size_ > v10)
      {
        v81.__r_.__value_.__l.__size_ = v8;
        goto LABEL_19;
      }
    }

    else if (v10 < HIBYTE(v81.__r_.__value_.__r.__words[2]))
    {
      *(&v81.__r_.__value_.__s + 23) = v8;
      v4 = &v81;
LABEL_19:
      v4->__r_.__value_.__s.__data_[v8] = 0;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_20:
  memset(&v80, 170, sizeof(v80));
  support::fs::getBasePath(&v81, &v80);
  v11 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v81.__r_.__value_.__l.__size_;
  }

  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v80.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
LABEL_35:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_37;
    }

    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    goto LABEL_156;
  }

  memset(&v79, 170, sizeof(v79));
  support::fs::getFileName(&v79);
  v13 = 0x7FFFFFFFFFFFFFF7;
  memset(v78, 170, sizeof(v78));
  v14 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v79.__r_.__value_.__l.__size_;
  }

  v16 = v15 + 13;
  if (v15 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(v78, 0, sizeof(v78));
    v18 = v78;
    HIBYTE(v78[2]) = v15 + 13;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    v78[1] = (v15 + 13);
    v78[2] = (v17 | 0x8000000000000000);
    v78[0] = v18;
  }

  if (v14 >= 0)
  {
    v19 = &v79;
  }

  else
  {
    v19 = v79.__r_.__value_.__r.__words[0];
  }

  memmove(v18, v19, v15);
LABEL_45:
  strcpy(v18 + v15, "-[[:alnum:]]*");
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v77[4].__locale_ = v20;
  *&v77[6].__locale_ = v20;
  *&v77[0].__locale_ = v20;
  *&v77[2].__locale_ = v20;
  MEMORY[0x245CBACB0](v77);
  v77[1].__locale_ = std::locale::use_facet(v77, MEMORY[0x277D82680]);
  v21 = std::locale::use_facet(v77, MEMORY[0x277D826A0]);
  memset(&v77[3], 0, 40);
  v77[2].__locale_ = v21;
  v22 = HIBYTE(v78[2]);
  if (SHIBYTE(v78[2]) >= 0)
  {
    v23 = v78;
  }

  else
  {
    v23 = v78[0];
  }

  if (SHIBYTE(v78[2]) < 0)
  {
    v22 = v78[1];
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(v77, v23, &v22[v23]) != &v22[v23])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v73 = v80;
  }

  std::locale::locale(&v67, v77);
  v68 = *&v77[1].__locale_;
  v69 = *&v77[3].__locale_;
  locale = v77[5].__locale_;
  v71 = v77[6].__locale_;
  if (v77[6].__locale_)
  {
    atomic_fetch_add_explicit(v77[6].__locale_ + 1, 1uLL, memory_order_relaxed);
  }

  v72 = v77[7].__locale_;
  if (!support::fs::getFilteredFiles(&v73, &v67, &v74, 0))
  {
    v27 = v71;
    if (v71 && !atomic_fetch_add(v71 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    std::locale::~locale(&v67);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    goto LABEL_91;
  }

  v24 = v74;
  v25 = v75;
  v26 = v71;
  if (v71 && !atomic_fetch_add(v71 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  std::locale::~locale(&v67);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    if (v24 == v25)
    {
      goto LABEL_91;
    }
  }

  else if (v24 == v25)
  {
LABEL_91:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    goto LABEL_144;
  }

  v28 = v74;
  v29 = v75;
  if (v74 != v75)
  {
    v30 = 0;
    while (1)
    {
      memset(__p, 170, 24);
      ctu::tokenize();
      memset(&v65, 170, sizeof(v65));
      if (*(__p[1] - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v65, *(__p[1] - 3), *(__p[1] - 2));
      }

      else
      {
        v32 = *(__p[1] - 24);
        v65.__r_.__value_.__r.__words[2] = *(__p[1] - 1);
        *&v65.__r_.__value_.__l.__data_ = v32;
      }

      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v65;
      }

      else
      {
        v33 = v65.__r_.__value_.__r.__words[0];
      }

      v34 = strtol(v33, 0, 0);
      if (v30 <= v34)
      {
        v30 = v34;
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
        v35 = __p[0];
        if (__p[0])
        {
LABEL_86:
          v36 = __p[1];
          v31 = v35;
          if (__p[1] != v35)
          {
            do
            {
              v37 = *(v36 - 1);
              v36 -= 3;
              if (v37 < 0)
              {
                operator delete(*v36);
              }
            }

            while (v36 != v35);
            v31 = __p[0];
          }

          __p[1] = v35;
          operator delete(v31);
        }
      }

      else
      {
        v35 = __p[0];
        if (__p[0])
        {
          goto LABEL_86;
        }
      }

      v28 += 3;
      if (v28 == v29)
      {
        goto LABEL_95;
      }
    }
  }

  v30 = 0;
LABEL_95:
  v38 = SHIBYTE(v81.__r_.__value_.__r.__words[2]);
  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v81.__r_.__value_.__l.__size_;
  }

  v40 = v39 + 1;
  if (v39 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v40 < 0x17)
  {
    memset(&v65, 0, sizeof(v65));
    v42 = &v65;
    *(&v65.__r_.__value_.__s + 23) = v39 + 1;
    if (!v39)
    {
      goto LABEL_109;
    }
  }

  else
  {
    if ((v40 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v40 | 7) + 1;
    }

    v42 = operator new(v41);
    v65.__r_.__value_.__l.__size_ = v39 + 1;
    v65.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
    v65.__r_.__value_.__r.__words[0] = v42;
  }

  if (v38 >= 0)
  {
    v43 = &v81;
  }

  else
  {
    v43 = v81.__r_.__value_.__r.__words[0];
  }

  memmove(v42, v43, v39);
LABEL_109:
  *&v42[v39] = 45;
  std::to_string(&v64, v30);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v64;
  }

  else
  {
    v44 = v64.__r_.__value_.__r.__words[0];
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v64.__r_.__value_.__l.__size_;
  }

  v46 = std::string::append(&v65, v44, v45);
  v47 = *&v46->__r_.__value_.__l.__data_;
  __p[2] = v46->__r_.__value_.__r.__words[2];
  *__p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  v48 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v48 = __p[1];
    v51 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
    v50 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v50 == __p[1])
    {
      if (v51 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v49 = __p[0];
      if (v50 > 0x3FFFFFFFFFFFFFF2)
      {
        v54 = 0;
LABEL_130:
        v55 = operator new(v13);
        v56 = v55;
        if (v50)
        {
          memmove(v55, v49, v50);
        }

        v56[v50] = 47;
        if (!v54)
        {
          operator delete(v49);
        }

        __p[1] = v51;
        __p[2] = (v13 | 0x8000000000000000);
        __p[0] = v56;
        v57 = &v56[v51];
        goto LABEL_140;
      }

LABEL_121:
      v52 = 2 * v50;
      if (v51 > 2 * v50)
      {
        v52 = v51;
      }

      if ((v52 | 7) == 0x17)
      {
        v53 = 25;
      }

      else
      {
        v53 = (v52 | 7) + 1;
      }

      if (v52 >= 0x17)
      {
        v13 = v53;
      }

      else
      {
        v13 = 23;
      }

      v54 = v50 == 22;
      goto LABEL_130;
    }

    v49 = __p[0];
  }

  else
  {
    v49 = __p;
    if (SHIBYTE(__p[2]) == 22)
    {
      v50 = 22;
      v51 = 23;
      goto LABEL_121;
    }
  }

  *(v48 + v49) = 47;
  v58 = v48 + 1;
  if (SHIBYTE(__p[2]) < 0)
  {
    __p[1] = v58;
  }

  else
  {
    HIBYTE(__p[2]) = v58 & 0x7F;
  }

  v57 = &v58[v49];
LABEL_140:
  *v57 = 0;
  *&a2->__r_.__value_.__l.__data_ = *__p;
  a2->__r_.__value_.__r.__words[2] = __p[2];
  memset(__p, 0, 24);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

LABEL_144:
  v59 = v74;
  if (v74)
  {
    v60 = v75;
    v61 = v74;
    if (v75 != v74)
    {
      do
      {
        v62 = *(v60 - 1);
        v60 -= 3;
        if (v62 < 0)
        {
          operator delete(*v60);
        }
      }

      while (v60 != v59);
      v61 = v74;
    }

    v75 = v59;
    operator delete(v61);
  }

  v63 = v77[6].__locale_;
  if (!v77[6].__locale_ || atomic_fetch_add(v77[6].__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(v77);
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_160;
  }

  (v63->__on_zero_shared)(v63);
  std::__shared_weak_count::__release_weak(v63);
  std::locale::~locale(v77);
  if (SHIBYTE(v78[2]) < 0)
  {
LABEL_160:
    operator delete(v78[0]);
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_161;
    }

LABEL_156:
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

LABEL_37:
    operator delete(v80.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_38:
    operator delete(v81.__r_.__value_.__l.__data_);
    return;
  }

LABEL_155:
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

LABEL_161:
  operator delete(v79.__r_.__value_.__l.__data_);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_157:
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }
}

void sub_24015A648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, std::locale a44)
{
  if (v44 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        std::vector<std::string>::~vector[abi:ne200100](&a41);
        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a44);
        if (*(v45 - 161) < 0)
        {
          operator delete(*(v45 - 184));
          if ((*(v45 - 137) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((*(v45 - 137) & 0x80000000) == 0)
        {
LABEL_11:
          if (*(v45 - 113) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

        operator delete(*(v45 - 160));
        if (*(v45 - 113) < 0)
        {
LABEL_12:
          operator delete(*(v45 - 136));
          if ((*(v45 - 89) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }

LABEL_16:
        if ((*(v45 - 89) & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_17:
        operator delete(*(v45 - 112));
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a16);
      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
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
  MEMORY[0x245CBABF0](v13, a1, 1);
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

void sub_24015AAEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= 1u;
    if ((*(v2 + *(v3 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x24015AA80);
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception);
  __cxa_throw(exception, off_278C9AC20, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
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
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

uint64_t std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
                      *v58 = &unk_28521A570;
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
                      *v63 = &unk_28521A5B8;
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
        *v27 = &unk_28521A570;
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
        *v32 = &unk_28521A5B8;
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
          result = &v13->__traits_.__loc_.__locale_ + 1;
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
          result = &v13->__traits_.__loc_.__locale_ + 1;
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
        *v43 = &unk_28521A570;
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
        *v48 = &unk_28521A5B8;
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
          result = &v53->__traits_.__loc_.__locale_ + 1;
        }
      }

      while (result != a3);
      break;
    default:
      goto LABEL_86;
  }

  return result;
}

void sub_24015B8AC(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CBAB20](exception, 17);
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
          v16->__vftable = &unk_28521A570;
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
          v21->__vftable = &unk_28521A5B8;
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
    *v6 = &unk_28521A0A8;
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
    *v15 = &unk_28521A0F0;
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

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
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
    while (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v9 = *(a1 + 56);
      v10 = (&v8->__traits_.__loc_.__locale_ + 1);
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, (&v8->__traits_.__loc_.__locale_ + 1), a3);
      if (v11 == (&v8->__traits_.__loc_.__locale_ + 1))
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
      *v12 = &unk_28521A570;
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
      *v17 = &unk_28521A5B8;
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
  MEMORY[0x245CBAB20](exception, 14);
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
  if (v2 != 0x800000024016B501)
  {
    if (((v2 & 0x800000024016B501 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024016B501))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024016B501 & 0x7FFFFFFFFFFFFFFFLL));
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
          *v16 = &unk_28521A138;
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
          *v16 = &unk_28521A138;
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
    v12 = &unk_28521A0A8;
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
    v12 = &unk_28521A0F0;
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
          *v6 = &unk_28521A1C8;
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
        *v22 = &unk_28521A408;
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
            *v29 = &unk_28521A450;
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

  v11 = a2 + 1;
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
  v3 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v3 = &unk_28521A138;
  *(v3 + 1) = first;
  std::locale::locale(v3 + 2, &this->__traits_.__loc_);
  *(v3 + 24) = *&this->__traits_.__ct_;
  v3[40] = 1;
  this->__end_->__first_ = v3;
  this->__end_ = v3;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1)
{
  v2 = MEMORY[0x245CBACB0]();
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
  *v8 = &unk_28521A180;
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